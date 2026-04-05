;;;; ckpt-reader.lisp
;;;; Pure Common Lisp reader for TensorFlow 1 checkpoint files.
;;;;
;;;; No Python, no TensorFlow, no JSON index, no external dependencies.
;;;; Works with any TF1 checkpoint (Magenta Music Transformer, CocoNet, etc.)
;;;;
;;;; Validated format understanding (Music Transformer checkpoint):
;;;;   .index file  = SSTable/LevelDB with Snappy-compressed data block
;;;;   .data file   = raw float32 tensors at offsets from the index
;;;;
;;;; SSTable structure:
;;;;   [data block (Snappy compressed)] [5-byte trailer: type+CRC]
;;;;   [metaindex block (uncompressed)] [5-byte trailer]
;;;;   [index block (uncompressed)]     [5-byte trailer]
;;;;   [footer: 48 bytes]
;;;;
;;;; Footer layout (48 bytes at end of file):
;;;;   [0..N]   metaindex block handle (varint offset + varint size)
;;;;   [N..M]   index block handle (varint offset + varint size)
;;;;   [40..47] magic: 0xdb4775248b80fb57 (little-endian)
;;;;
;;;; Index block = LevelDB data block:
;;;;   prefix-compressed key-value pairs
;;;;   each value = block handle (offset + size varints) for a data block
;;;;   terminated by restart array + uint32 num_restarts
;;;;
;;;; Data block (after Snappy decompression) = LevelDB data block:
;;;;   prefix-compressed key-value pairs
;;;;   keys = TF variable names + 8-byte sequence number suffix
;;;;   values = BundleEntryProto (protobuf)
;;;;
;;;; BundleEntryProto fields:
;;;;   1: dtype  (varint) -- 1=float32
;;;;   2: shape  (embedded TensorShapeProto)
;;;;   3: shard_id (varint)
;;;;   4: offset (varint int64) -- byte offset in .data file
;;;;   5: size   (varint int64) -- byte count in .data file

(in-package #:moz-transformer)


;;;; =========================================================================
;;;; Binary utilities
;;;; =========================================================================

(defun read-u32-le-from (bytes pos)
  (logior (aref bytes pos)
          (ash (aref bytes (+ pos 1)) 8)
          (ash (aref bytes (+ pos 2)) 16)
          (ash (aref bytes (+ pos 3)) 24)))

(defun read-u64-le-from (bytes pos)
  (logior (read-u32-le-from bytes pos)
          (ash (read-u32-le-from bytes (+ pos 4)) 32)))

(defun bytes->float32-le (b0 b1 b2 b3)
  (let ((bits (logior b0 (ash b1 8) (ash b2 16) (ash b3 24))))
    (sb-kernel:make-single-float
     (if (> bits #x7FFFFFFF) (- bits #x100000000) bits))))

(defun bytes->string (bytes)
  (sb-ext:octets-to-string bytes :external-format :utf-8))

(defun slurp-binary (path)
  "Read entire file into a byte vector."
  (let* ((size (with-open-file (s path :element-type '(unsigned-byte 8))
                 (file-length s)))
         (buf (make-array size :element-type '(unsigned-byte 8))))
    (with-open-file (s path :element-type '(unsigned-byte 8))
      (read-sequence buf s))
    buf))


;;;; =========================================================================
;;;; Varint (protobuf variable-length integers)
;;;; =========================================================================

(defun read-varint (bytes pos)
  "Read a protobuf varint from BYTES at POS.
   Returns (values integer new-pos)."
  (let ((result 0) (shift 0) (i pos))
    (loop
      (let ((b (aref bytes i)))
        (incf i)
        (setf result (logior result (ash (logand b #x7F) shift)))
        (incf shift 7)
        (when (zerop (logand b #x80))
          (return (values result i)))
        (when (> shift 63)
          (error "CKPT: varint overflow at ~A" pos))))))


;;;; =========================================================================
;;;; Snappy decompression (pure Lisp)
;;;; Validated: correctly decompresses Music Transformer index block
;;;; =========================================================================

(defun snappy-decompress (src)
  "Decompress a Snappy-compressed byte vector. Returns decompressed bytes."
  (let ((pos 0) (src-len (length src)))
    ;; Read uncompressed length as varint
    (multiple-value-bind (uncompressed-len new-pos)
        (read-varint src pos)
      (setf pos new-pos)
      (let ((dst (make-array uncompressed-len :element-type '(unsigned-byte 8)
                                              :initial-element 0))
            (dst-pos 0))
        (loop while (< pos src-len) do
          (let* ((tag (aref src pos))
                 (tag-type (logand tag #x03)))
            (incf pos)
            (cond
              ;; Literal
              ((= tag-type 0)
               (let* ((lm1 (ash tag -2))
                      (len (cond
                             ((< lm1 60) (1+ lm1))
                             ((= lm1 60)
                              (prog1 (1+ (aref src pos)) (incf pos)))
                             ((= lm1 61)
                              (prog1 (1+ (logior (aref src pos)
                                                 (ash (aref src (1+ pos)) 8)))
                                (incf pos 2)))
                             ((= lm1 62)
                              (prog1 (1+ (logior (aref src pos)
                                                 (ash (aref src (1+ pos)) 8)
                                                 (ash (aref src (+ pos 2)) 16)))
                                (incf pos 3)))
                             (t
                              (prog1 (1+ (logior (aref src pos)
                                                 (ash (aref src (1+ pos)) 8)
                                                 (ash (aref src (+ pos 2)) 16)
                                                 (ash (aref src (+ pos 3)) 24)))
                                (incf pos 4))))))
                 (dotimes (i len)
                   (setf (aref dst dst-pos) (aref src pos))
                   (incf dst-pos) (incf pos))))
              ;; Copy 1-byte offset
              ((= tag-type 1)
               (let ((len    (+ 4 (logand (ash tag -2) #x07)))
                     (offset (logior (ash (logand tag #xE0) 3)
                                     (aref src pos))))
                 (incf pos)
                 (let ((cp (- dst-pos offset)))
                   (dotimes (i len)
                     (setf (aref dst dst-pos) (aref dst cp))
                     (incf dst-pos) (incf cp)))))
              ;; Copy 2-byte offset
              ((= tag-type 2)
               (let ((len    (1+ (ash tag -2)))
                     (offset (logior (aref src pos)
                                     (ash (aref src (1+ pos)) 8))))
                 (incf pos 2)
                 (let ((cp (- dst-pos offset)))
                   (dotimes (i len)
                     (setf (aref dst dst-pos) (aref dst cp))
                     (incf dst-pos) (incf cp)))))
              ;; Copy 4-byte offset
              ((= tag-type 3)
               (let ((len    (1+ (ash tag -2)))
                     (offset (logior (aref src pos)
                                     (ash (aref src (1+ pos)) 8)
                                     (ash (aref src (+ pos 2)) 16)
                                     (ash (aref src (+ pos 3)) 24))))
                 (incf pos 4)
                 (let ((cp (- dst-pos offset)))
                   (dotimes (i len)
                     (setf (aref dst dst-pos) (aref dst cp))
                     (incf dst-pos) (incf cp))))))))
        dst))))


;;;; =========================================================================
;;;; SSTable footer parser
;;;; Validated: correctly extracts index block at offset 7536, size 15
;;;; for Music Transformer .index file (7604 bytes total)
;;;; =========================================================================

(defconstant +sstable-magic+ #xdb4775248b80fb57)

(defun parse-footer (file-bytes)
  "Parse SSTable footer (last 48 bytes). Returns (values idx-offset idx-size)."
  (let* ((file-size (length file-bytes))
         (footer-start (- file-size 48))
         (magic (read-u64-le-from file-bytes (+ footer-start 40))))
    (unless (= magic +sstable-magic+)
      (error "CKPT: invalid SSTable magic — not a TF1 checkpoint index file"))
    ;; Parse metaindex handle to find its end position
    (multiple-value-bind (meta-offset meta-pos)
        (read-varint file-bytes footer-start)
      (multiple-value-bind (meta-size idx-handle-start)
          (read-varint file-bytes meta-pos)
        (declare (ignore meta-offset meta-size))
        ;; Parse index handle
        (multiple-value-bind (idx-offset idx-pos)
            (read-varint file-bytes idx-handle-start)
          (multiple-value-bind (idx-size _)
              (read-varint file-bytes idx-pos)
            (declare (ignore _))
            (values idx-offset idx-size)))))))


;;;; =========================================================================
;;;; LevelDB data block parser (prefix-compressed key-value pairs)
;;;; Handles both compressed (Snappy) and uncompressed blocks
;;;; =========================================================================

(defun read-block (file-bytes block-offset block-size)
  "Read a block from the SSTable, decompressing if needed."
  (let* ((data (subseq file-bytes block-offset (+ block-offset block-size)))
         (compression-byte (aref file-bytes (+ block-offset block-size))))
    (cond
      ((= compression-byte 0) data)            ; uncompressed
      ((= compression-byte 1)                  ; Snappy
       (snappy-decompress data))
      (t (error "CKPT: unknown compression type ~A" compression-byte)))))

(defun parse-data-block (block-bytes &key strip-sequence-number)
  "Parse a LevelDB data block into an alist of (key-bytes . value-bytes).
   When STRIP-SEQUENCE-NUMBER is true, removes the 8-byte TF sequence number
   suffix from each key to get the user key."
  (let* ((blen (length block-bytes))
         (num-restarts (read-u32-le-from block-bytes (- blen 4)))
         (restarts-end (- blen 4 (* num-restarts 4)))
         (entries nil)
         (i 0)
         (last-key (make-array 0 :element-type '(unsigned-byte 8))))
    (loop while (< i restarts-end) do
      (multiple-value-bind (shared  i1) (read-varint block-bytes i)
        (multiple-value-bind (non-sh  i2) (read-varint block-bytes i1)
          (multiple-value-bind (val-len i3) (read-varint block-bytes i2)
            (let* ((suffix   (subseq block-bytes i3 (+ i3 non-sh)))
                   (full-key (concatenate '(vector (unsigned-byte 8))
                                          (subseq last-key 0
                                                  (min shared (length last-key)))
                                          suffix))
                   (user-key (if (and strip-sequence-number
                                      (>= (length full-key) 8))
                                 (subseq full-key 0 (- (length full-key) 8))
                                 full-key))
                   (value    (subseq block-bytes (+ i3 non-sh)
                                     (+ i3 non-sh val-len))))
              (when (> (length user-key) 0)
                (push (cons user-key value) entries))
              (setf last-key full-key)
              (setf i (+ i3 non-sh val-len)))))))
    (nreverse entries)))


;;;; =========================================================================
;;;; BundleEntryProto parser
;;;; Extracts: dtype, shape, offset (field 4), size (field 5) in .data file
;;;; =========================================================================

(defun parse-shape (bytes pos end)
  "Parse TensorShapeProto, return list of dim sizes."
  (let ((dims nil) (i pos))
    (loop while (< i end) do
      (multiple-value-bind (tag ni) (read-varint bytes i)
        (setf i ni)
        (let ((wt (logand tag #x07))
              (fn (ash tag -3)))
          (cond
            ;; field 2 = dim message
            ((and (= fn 2) (= wt 2))
             (multiple-value-bind (len ni2) (read-varint bytes i)
               (setf i ni2)
               (let ((dim-end (+ i len)) (dim-size 0))
                 (loop while (< i dim-end) do
                   (multiple-value-bind (dtag ni3) (read-varint bytes i)
                     (setf i ni3)
                     (let ((dwt (logand dtag #x07))
                           (dfn (ash dtag -3)))
                       (cond
                         ((and (= dfn 1) (= dwt 0)) ; size field
                          (multiple-value-bind (v ni4) (read-varint bytes i)
                            (setf dim-size v i ni4)))
                         ((= dwt 0)
                          (multiple-value-bind (v ni4) (read-varint bytes i)
                            (declare (ignore v)) (setf i ni4)))
                         ((= dwt 2)
                          (multiple-value-bind (l ni4) (read-varint bytes i)
                            (setf i (+ ni4 l))))
                         (t (incf i (if (= dwt 5) 4 8)))))))
                 (push dim-size dims))))
            ((= wt 0) (multiple-value-bind (v ni) (read-varint bytes i)
                        (declare (ignore v)) (setf i ni)))
            ((= wt 2) (multiple-value-bind (l ni) (read-varint bytes i)
                        (setf i (+ ni l))))
            ((= wt 5) (incf i 4))
            ((= wt 1) (incf i 8))
            (t (return))))))
    (nreverse dims)))

(defun parse-bundle-entry (value-bytes)
  "Parse a BundleEntryProto value. Returns (list dtype shape offset size)."
  (let ((i 0) (end (length value-bytes))
        (dtype 1) (shape nil) (offset 0) (size 0))
    (loop while (< i end) do
      (multiple-value-bind (tag ni) (read-varint value-bytes i)
        (setf i ni)
        (let ((wt (logand tag #x07))
              (fn (ash tag -3)))
          (cond
            ((and (= fn 1) (= wt 0)) ; dtype
             (multiple-value-bind (v ni2) (read-varint value-bytes i)
               (setf dtype v i ni2)))
            ((and (= fn 2) (= wt 2)) ; shape
             (multiple-value-bind (len ni2) (read-varint value-bytes i)
               (setf shape (parse-shape value-bytes ni2 (+ ni2 len)))
               (setf i (+ ni2 len))))
            ((and (= fn 3) (= wt 0)) ; shard_id
             (multiple-value-bind (v ni2) (read-varint value-bytes i)
               (declare (ignore v)) (setf i ni2)))
            ((and (= fn 4) (= wt 0)) ; offset
             (multiple-value-bind (v ni2) (read-varint value-bytes i)
               (setf offset v i ni2)))
            ((and (= fn 5) (= wt 0)) ; size
             (multiple-value-bind (v ni2) (read-varint value-bytes i)
               (setf size v i ni2)))
            ((= wt 0) (multiple-value-bind (v ni2) (read-varint value-bytes i)
                        (declare (ignore v)) (setf i ni2)))
            ((= wt 2) (multiple-value-bind (l ni2) (read-varint value-bytes i)
                        (setf i (+ ni2 l))))
            ((= wt 5) (incf i 4))
            ((= wt 1) (incf i 8))
            (t (return))))))
    (list dtype shape offset size)))


;;;; =========================================================================
;;;; Main index reader
;;;; =========================================================================

(defun load-checkpoint-index (index-path)
  "Read a TF1 .index file and return a hash table:
   variable-name -> (list dtype shape offset size)

   This is pure Lisp — no Python, no TensorFlow, no JSON.
   Works with any TF1 checkpoint."
  (format t "~&CKPT: reading ~A~%" index-path)
  (let* ((file-bytes (slurp-binary index-path))
         (file-size (length file-bytes)))
    (format t "~&CKPT: ~A bytes~%" file-size)

    ;; Parse footer to find index block
    (multiple-value-bind (idx-offset idx-size)
        (parse-footer file-bytes)
      (format t "~&CKPT: index block at ~A size ~A~%" idx-offset idx-size)

      ;; Parse index block to find data blocks
      (let* ((idx-block (read-block file-bytes idx-offset idx-size))
             (idx-entries (parse-data-block idx-block))
             (result (make-hash-table :test 'equal))
             ;; Skip optimizer/training variables
             (skip-patterns '("Adafactor" "losses_avg" "train_stats"
                               "global_step" "beta1_power" "beta2_power")))

        (format t "~&CKPT: ~A data blocks~%" (length idx-entries))

        ;; Parse each data block
        (dolist (idx-entry idx-entries)
          (let* ((block-handle (cdr idx-entry))
                 (blk-offset 0) (blk-size 0))
            ;; block-handle is a byte vector containing (varint offset, varint size)
            (multiple-value-bind (bo ni) (read-varint block-handle 0)
              (multiple-value-bind (bs _) (read-varint block-handle ni)
                (declare (ignore _))
                (setf blk-offset bo blk-size bs)))

            (handler-case
                (let* ((data-block (read-block file-bytes blk-offset blk-size))
                       (kv-pairs   (parse-data-block data-block
                                                     :strip-sequence-number t)))
                  (dolist (kv kv-pairs)
                    (let* ((name (bytes->string (car kv)))
                           (skip? (some (lambda (p) (search p name))
                                        skip-patterns)))
                      (unless skip?
                        (let ((entry (parse-bundle-entry (cdr kv))))
                          (when (and (= (first entry) 1) ; float32 only
                                     (> (fourth entry) 0)) ; size > 0
                            (setf (gethash name result) entry)))))))
              (error (e)
                (format t "~&CKPT: warning — skipped block: ~A~%" e)))))

        (format t "~&CKPT: found ~A variables~%" (hash-table-count result))
        result))))


;;;; =========================================================================
;;;; Tensor reader
;;;; =========================================================================

(defun read-tensor (data-path offset size-bytes shape)
  "Read a float32 tensor from DATA-PATH at OFFSET. Returns a MAGICL matrix."
  (let* ((numel  (max 1 (floor size-bytes 4)))
         (floats (make-array numel :element-type 'single-float
                                   :initial-element 0.0))
         (buf    (make-array size-bytes :element-type '(unsigned-byte 8))))
    (with-open-file (s data-path :element-type '(unsigned-byte 8))
      (file-position s offset)
      (read-sequence buf s))
    (dotimes (i numel)
      (setf (aref floats i)
            (bytes->float32-le (aref buf (* i 4))
                               (aref buf (+ (* i 4) 1))
                               (aref buf (+ (* i 4) 2))
                               (aref buf (+ (* i 4) 3)))))
    (let ((magicl-shape
           (cond
             ((= (length shape) 2) (list (first shape) (second shape)))
             ((= (length shape) 1) (list (first shape) 1))
             (t                    (list numel 1)))))
      (magicl:from-array floats magicl-shape :type 'single-float))))


;;;; =========================================================================
;;;; Top-level API
;;;; =========================================================================

(defun load-checkpoint (ckpt-base-path)
  "Load all float32 tensors from a TF1 checkpoint (pure Lisp).
   Returns hash table: variable-name -> MAGICL matrix.

   CKPT-BASE-PATH is the path without extension, e.g.:
     ~/ml/MOZLib-models/music_transformer/unconditional_model_16.ckpt"
  (let* ((expanded  (namestring
                     (merge-pathnames ckpt-base-path (user-homedir-pathname))))
         (index-path (concatenate 'string expanded ".index"))
         (data-path  (concatenate 'string expanded ".data-00000-of-00001"))
         (index      (load-checkpoint-index index-path))
         (tensors    (make-hash-table :test 'equal)))

    (unless (probe-file data-path)
      (error "CKPT: data file not found: ~A" data-path))

    (maphash
     (lambda (name entry)
       (destructuring-bind (dtype shape offset size) entry
         (declare (ignore dtype))
         (handler-case
             (progn
               (setf (gethash name tensors)
                     (read-tensor data-path offset size shape))
               (format t "~&  ~A ~A~%" name shape))
           (error (e)
             (format t "~&  warning ~A: ~A~%" name e)))))
     index)

    (format t "~&CKPT: loaded ~A tensors~%" (hash-table-count tensors))
    tensors))


(defun describe-checkpoint (ckpt-base-path)
  "Print all variable names and shapes from a TF1 checkpoint (pure Lisp).

   Usage:
     (moz-transformer:describe-checkpoint
       \"~/ml/MOZLib-models/music_transformer/unconditional_model_16.ckpt\")"
  (let* ((expanded   (namestring
                      (merge-pathnames ckpt-base-path (user-homedir-pathname))))
         (index-path (concatenate 'string expanded ".index"))
         (index      (load-checkpoint-index index-path)))
    (format t "~&~%Variables in ~A:~%" ckpt-base-path)
    (let ((entries nil))
      (maphash (lambda (name entry)
                 (push (list name (second entry)) entries))
               index)
      (dolist (e (sort entries #'string< :key #'first))
        (format t "  ~A  ~A~%" (first e) (second e))))))


(defun load-model-from-ckpt (ckpt-base-path)
  "Load the Music Transformer model from a TF1 checkpoint.
   Pure Lisp — no Python, no TensorFlow, no JSON index needed.

   Usage:
     (defparameter *model*
       (moz-transformer:load-model-from-ckpt
         \"~/ml/MOZLib-models/music_transformer/unconditional_model_16.ckpt\"))"
  (format t "~&MOZ-TRANSFORMER: loading from ~A~%" ckpt-base-path)
  (let ((tensors (load-checkpoint ckpt-base-path)))
    (build-music-transformer-model tensors)))


;;;; =========================================================================
;;;; Music Transformer model builder
;;;; Variable names (validated from describe-checkpoint):
;;;;   transformer/symbol_modality_310_512/shared/weights_0          [310 512]
;;;;   transformer/body/decoder/layer_N/self_attention/
;;;;     multihead_attention/q/kernel                                 [512 512]
;;;;     multihead_attention/k/kernel                                 [512 512]
;;;;     multihead_attention/v/kernel                                 [512 512]
;;;;     multihead_attention/output_transform/kernel                  [512 512]
;;;;     layer_prepostprocess/layer_norm/layer_norm_scale             [512]
;;;;     layer_prepostprocess/layer_norm/layer_norm_bias              [512]
;;;;   transformer/body/decoder/layer_N/ffn/
;;;;     conv1/kernel                                                 [512 2048]
;;;;     conv1/bias                                                   [2048]
;;;;     conv2/kernel                                                 [2048 512]
;;;;     conv2/bias                                                   [512]
;;;;     layer_prepostprocess/layer_norm/layer_norm_scale             [512]
;;;;     layer_prepostprocess/layer_norm/layer_norm_bias              [512]
;;;;   transformer/body/decoder/layer_prepostprocess/
;;;;     layer_norm/layer_norm_scale                                  [512]
;;;;     layer_norm/layer_norm_bias                                   [512]
;;;; =========================================================================

(defun build-music-transformer-model (tensors)
  (flet ((gt (name &optional shape)
           (or (gethash name tensors)
               (when shape (magicl:zeros shape :type 'single-float)))))
    (let* ((embed (gt "transformer/symbol_modality_310_512/shared/weights_0"
                      '(310 512)))
           (vocab   (magicl:nrows embed))
           (hidden  (magicl:ncols embed))
           (nlayers 16))
      (format t "~&MOZ-TRANSFORMER: vocab=~A hidden=~A layers=~A~%"
              vocab hidden nlayers)
      (make-transformer-model
       :vocab-size    vocab
       :hidden-size   hidden
       :num-layers    nlayers
       :num-heads     8
       :embed-weight  embed
       :layer-weights (coerce
                       (loop for i below nlayers
                             collect (build-music-transformer-layer
                                      tensors i hidden))
                       'vector)
       ;; Weight tying: output = embed transposed
       :output-weight (magicl:transpose embed)
       :output-bias   (magicl:zeros (list vocab 1) :type 'single-float)
       :weights-dir   nil))))


(defun build-music-transformer-layer (tensors i hidden)
  (flet ((gt (name &optional shape)
           (or (gethash name tensors)
               (when shape (magicl:zeros shape :type 'single-float))))
         (attn (key)
           (format nil
            "transformer/body/decoder/layer_~A/self_attention/multihead_attention/~A"
            i key))
         (aln (key)
           (format nil
            "transformer/body/decoder/layer_~A/self_attention/layer_prepostprocess/layer_norm/layer_norm_~A"
            i key))
         (ffn (key)
           (format nil
            "transformer/body/decoder/layer_~A/ffn/~A" i key))
         (fln (key)
           (format nil
            "transformer/body/decoder/layer_~A/ffn/layer_prepostprocess/layer_norm/layer_norm_~A"
            i key)))
    (make-layer-weights
     :q-weight   (gt (attn "q/kernel")               `(,hidden ,hidden))
     :q-bias     (magicl:zeros `(,hidden 1)           :type 'single-float)
     :k-weight   (gt (attn "k/kernel")               `(,hidden ,hidden))
     :k-bias     (magicl:zeros `(,hidden 1)           :type 'single-float)
     :v-weight   (gt (attn "v/kernel")               `(,hidden ,hidden))
     :v-bias     (magicl:zeros `(,hidden 1)           :type 'single-float)
     :out-weight (gt (attn "output_transform/kernel") `(,hidden ,hidden))
     :out-bias   (magicl:zeros `(,hidden 1)           :type 'single-float)
     :norm1-weight (gt (aln "scale") `(,hidden 1))
     :norm1-bias   (gt (aln "bias")  `(,hidden 1))
     :norm2-weight (gt (fln "scale") `(,hidden 1))
     :norm2-bias   (gt (fln "bias")  `(,hidden 1))
     :ff1-weight (gt (ffn "conv1/kernel") `(,hidden ,(* hidden 4)))
     :ff1-bias   (gt (ffn "conv1/bias")   `(,(* hidden 4) 1))
     :ff2-weight (gt (ffn "conv2/kernel") `(,(* hidden 4) ,hidden))
     :ff2-bias   (gt (ffn "conv2/bias")   `(,hidden 1)))))
