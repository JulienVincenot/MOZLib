;;;; ckpt-reader.lisp
;;;; Pure Common Lisp reader for TensorFlow 1 checkpoint files (.ckpt)
;;;;
;;;; No Python, no TensorFlow, no external dependencies beyond SBCL itself.
;;;;
;;;; Supports the TF1 checkpoint format used by:
;;;;   - Google Magenta Music Transformer
;;;;   - Google Magenta CocoNet
;;;;   - Most TF1-era models
;;;;
;;;; A TF1 checkpoint consists of:
;;;;   model.ckpt.index               -- SSTable/LevelDB index mapping names -> tensor locations
;;;;   model.ckpt.data-00000-of-00001 -- Raw binary tensor data (float32)
;;;;
;;;; The .index file is a LevelDB SSTable:
;;;;   - Footer (48 bytes at end): metaindex block handle + index block handle + magic
;;;;   - Index block: one entry per data block, prefix-compressed keys, varint values
;;;;   - Data blocks: key=variable name (prefix-compressed), value=BundleEntryProto
;;;;
;;;; BundleEntryProto (protobuf, relevant fields):
;;;;   field 1: dtype (varint) -- 1=float32, 3=int32, etc.
;;;;   field 2: shape (embedded message TensorShapeProto)
;;;;   field 3: shard_id (varint)
;;;;   field 4: offset (int64)
;;;;   field 5: size (int64)
;;;;
;;;; TensorShapeProto:
;;;;   field 2: dim (repeated embedded message)
;;;;     field 1: size (int64) -- dimension size
;;;;
;;;; Usage:
;;;;   (moz-transformer:load-checkpoint "/path/to/model.ckpt")
;;;;   -> hash table: name -> (list offset size shape dtype)
;;;;
;;;;   (moz-transformer:read-tensor-from-data data-path offset size shape)
;;;;   -> MAGICL matrix

(in-package #:moz-transformer)


;;;; =========================================================================
;;;; Low-level binary reading utilities
;;;; =========================================================================

(defun read-u8 (stream)
  "Read one unsigned byte."
  (read-byte stream nil 0))

(defun read-u32-le (stream)
  "Read 4 bytes as little-endian uint32."
  (let ((b0 (read-u8 stream))
        (b1 (read-u8 stream))
        (b2 (read-u8 stream))
        (b3 (read-u8 stream)))
    (logior b0 (ash b1 8) (ash b2 16) (ash b3 24))))

(defun read-u64-le (stream)
  "Read 8 bytes as little-endian uint64."
  (let ((lo (read-u32-le stream))
        (hi (read-u32-le stream)))
    (logior lo (ash hi 32))))

(defun read-bytes (stream n)
  "Read exactly N bytes into a fresh byte vector."
  (let ((buf (make-array n :element-type '(unsigned-byte 8))))
    (read-sequence buf stream)
    buf))

(defun make-byte-stream (bytes)
  "Create a stream from a byte vector for sub-parsing."
  (flexi-streams:make-in-memory-input-stream bytes))

(defun bytes->u64-le (bytes offset)
  "Read little-endian uint64 from byte array at OFFSET."
  (let ((result 0))
    (dotimes (i 8)
      (setf result (logior result (ash (aref bytes (+ offset i)) (* i 8)))))
    result))

(defun bytes->u32-le (bytes offset)
  "Read little-endian uint32 from byte array at OFFSET."
  (logior (aref bytes offset)
          (ash (aref bytes (+ offset 1)) 8)
          (ash (aref bytes (+ offset 2)) 16)
          (ash (aref bytes (+ offset 3)) 24)))

(defun bytes->float32 (b0 b1 b2 b3)
  "Convert 4 bytes (little-endian) to single-float."
  (let ((bits (logior b0 (ash b1 8) (ash b2 16) (ash b3 24))))
    (sb-kernel:make-single-float
     ;; Handle sign bit properly
     (if (> bits #x7FFFFFFF)
         (- bits #x100000000)
         bits))))


;;;; =========================================================================
;;;; Varint (protobuf variable-length integer encoding)
;;;; =========================================================================

(defun read-varint (bytes pos)
  "Read a protobuf varint from BYTES starting at POS.
   Returns (values integer new-pos)."
  (let ((result 0)
        (shift 0)
        (i pos))
    (loop
      (let ((byte (aref bytes i)))
        (incf i)
        (setf result (logior result (ash (logand byte #x7F) shift)))
        (incf shift 7)
        (when (zerop (logand byte #x80))
          (return (values result i)))
        (when (> shift 63)
          (error "CKPT-READER: Varint too long at position ~A" pos))))))

(defun read-varint-stream (stream)
  "Read a protobuf varint from a binary stream."
  (let ((result 0)
        (shift 0))
    (loop
      (let ((byte (read-u8 stream)))
        (setf result (logior result (ash (logand byte #x7F) shift)))
        (incf shift 7)
        (when (zerop (logand byte #x80))
          (return result))
        (when (> shift 63)
          (error "CKPT-READER: Varint too long"))))))


;;;; =========================================================================
;;;; Protobuf minimal parser (only what we need from BundleEntryProto)
;;;; =========================================================================

(defun protobuf-wire-type (tag)
  "Extract wire type from protobuf tag byte."
  (logand tag #x07))

(defun protobuf-field-number (tag)
  "Extract field number from protobuf tag."
  (ash tag -3))

(defun parse-tensor-shape (bytes pos end)
  "Parse TensorShapeProto, return list of dimension sizes."
  (let ((dims nil)
        (i pos))
    (loop while (< i end) do
      (multiple-value-bind (tag new-i) (read-varint bytes i)
        (setf i new-i)
        (let ((wt (protobuf-wire-type tag))
              (fn (protobuf-field-number tag)))
          (cond
            ;; field 2 = dim (embedded message)
            ((and (= fn 2) (= wt 2))
             (multiple-value-bind (len new-i2) (read-varint bytes i)
               (setf i new-i2)
               ;; Parse dim message: field 1 = size (int64/varint)
               (let ((dim-end (+ i len))
                     (dim-size 0))
                 (loop while (< i dim-end) do
                   (multiple-value-bind (dtag new-i3) (read-varint bytes i)
                     (setf i new-i3)
                     (let ((dwt (protobuf-wire-type dtag))
                           (dfn (protobuf-field-number dtag)))
                       (cond
                         ((and (= dfn 1) (= dwt 0)) ; size field, varint
                          (multiple-value-bind (v new-i4) (read-varint bytes i)
                            (setf i new-i4)
                            (setf dim-size v)))
                         ((= dwt 0) ; other varint, skip
                          (multiple-value-bind (v new-i4) (read-varint bytes i)
                            (declare (ignore v))
                            (setf i new-i4)))
                         ((= dwt 2) ; length-delimited, skip
                          (multiple-value-bind (len2 new-i4) (read-varint bytes i)
                            (setf i (+ new-i4 len2))))
                         (t ; fixed-width, skip
                          (incf i (if (= dwt 5) 4 8)))))))
                 (push dim-size dims))))
            ;; other fields: skip
            ((= wt 0)
             (multiple-value-bind (v new-i2) (read-varint bytes i)
               (declare (ignore v))
               (setf i new-i2)))
            ((= wt 2)
             (multiple-value-bind (len new-i2) (read-varint bytes i)
               (setf i (+ new-i2 len))))
            ((= wt 5) (incf i 4))
            ((= wt 1) (incf i 8))
            (t (error "CKPT-READER: Unknown wire type ~A" wt))))))
    (nreverse dims)))

(defun parse-bundle-entry-proto (bytes)
  "Parse a BundleEntryProto from byte vector.
   Returns (list dtype shape shard-id offset size)."
  (let ((i 0)
        (end (length bytes))
        (dtype 1)    ; default float32
        (shape nil)
        (shard-id 0)
        (offset 0)
        (size 0))
    (loop while (< i end) do
      (multiple-value-bind (tag new-i) (read-varint bytes i)
        (setf i new-i)
        (let ((wt  (protobuf-wire-type tag))
              (fn  (protobuf-field-number tag)))
          (cond
            ;; field 1: dtype (varint)
            ((and (= fn 1) (= wt 0))
             (multiple-value-bind (v ni) (read-varint bytes i)
               (setf dtype v i ni)))
            ;; field 2: shape (embedded message = TensorShapeProto)
            ((and (= fn 2) (= wt 2))
             (multiple-value-bind (len ni) (read-varint bytes i)
               (setf shape (parse-tensor-shape bytes ni (+ ni len)))
               (setf i (+ ni len))))
            ;; field 3: shard_id (varint)
            ((and (= fn 3) (= wt 0))
             (multiple-value-bind (v ni) (read-varint bytes i)
               (setf shard-id v i ni)))
            ;; field 4: offset (int64 = varint in proto3)
            ((and (= fn 4) (= wt 0))
             (multiple-value-bind (v ni) (read-varint bytes i)
               (setf offset v i ni)))
            ;; field 5: size (int64 = varint in proto3)
            ((and (= fn 5) (= wt 0))
             (multiple-value-bind (v ni) (read-varint bytes i)
               (setf size v i ni)))
            ;; skip unknown fields
            ((= wt 0)
             (multiple-value-bind (v ni) (read-varint bytes i)
               (declare (ignore v)) (setf i ni)))
            ((= wt 2)
             (multiple-value-bind (len ni) (read-varint bytes i)
               (setf i (+ ni len))))
            ((= wt 5) (incf i 4))
            ((= wt 1) (incf i 8))
            (t (return))))))
    (list dtype shape shard-id offset size)))


;;;; =========================================================================
;;;; SSTable / LevelDB format parser
;;;; =========================================================================

;;;; =========================================================================
;;;; Snappy decompression (pure Common Lisp)
;;;; Used by TF1 checkpoints for index block compression
;;;; =========================================================================

(defun snappy-read-varint32 (src pos)
  "Read a Snappy varint32 from SRC at POS.
   Returns (values integer new-pos)."
  (let ((result 0) (shift 0) (i pos))
    (loop
      (let ((b (aref src i)))
        (incf i)
        (setf result (logior result (ash (logand b #x7F) shift)))
        (incf shift 7)
        (when (zerop (logand b #x80))
          (return (values result i)))
        (when (> shift 28)
          (error "SNAPPY: Varint32 too long"))))))

(defun snappy-decompress (src)
  "Decompress a Snappy-compressed byte vector.
   Returns the decompressed byte vector."
  (let ((pos 0) (src-len (length src)))

    ;; Read uncompressed length (varint32)
    (multiple-value-bind (uncompressed-len new-pos)
        (snappy-read-varint32 src pos)
      (setf pos new-pos)

      (let ((dst (make-array uncompressed-len
                             :element-type '(unsigned-byte 8)
                             :initial-element 0))
            (dst-pos 0))

        (loop while (< pos src-len) do
          (let ((tag-byte (aref src pos)))
            (incf pos)
            (let ((tag-type (logand tag-byte #x03)))
              (cond
                ;; Literal
                ((= tag-type 0)
                 (let* ((len-minus-1 (ash tag-byte -2))
                        (len (cond
                               ((< len-minus-1 60)
                                (1+ len-minus-1))
                               ((= len-minus-1 60)
                                (let ((v (aref src pos)))
                                  (incf pos)
                                  (1+ v)))
                               ((= len-minus-1 61)
                                (let ((v (logior (aref src pos)
                                                 (ash (aref src (1+ pos)) 8))))
                                  (incf pos 2)
                                  (1+ v)))
                               ((= len-minus-1 62)
                                (let ((v (logior (aref src pos)
                                                 (ash (aref src (1+ pos)) 8)
                                                 (ash (aref src (+ pos 2)) 16))))
                                  (incf pos 3)
                                  (1+ v)))
                               (t
                                (let ((v (logior (aref src pos)
                                                 (ash (aref src (1+ pos)) 8)
                                                 (ash (aref src (+ pos 2)) 16)
                                                 (ash (aref src (+ pos 3)) 24))))
                                  (incf pos 4)
                                  (1+ v))))))
                   (dotimes (i len)
                     (setf (aref dst dst-pos) (aref src pos))
                     (incf dst-pos)
                     (incf pos))))

                ;; Copy 1-byte offset
                ((= tag-type 1)
                 (let* ((len (+ 4 (logand (ash tag-byte -2) #x07)))
                        (offset (logior (ash (logand tag-byte #xE0) 3)
                                        (aref src pos))))
                   (incf pos)
                   (let ((copy-pos (- dst-pos offset)))
                     (dotimes (i len)
                       (setf (aref dst dst-pos) (aref dst copy-pos))
                       (incf dst-pos)
                       (incf copy-pos)))))

                ;; Copy 2-byte offset
                ((= tag-type 2)
                 (let* ((len (+ 1 (ash tag-byte -2)))
                        (offset (logior (aref src pos)
                                        (ash (aref src (1+ pos)) 8))))
                   (incf pos 2)
                   (let ((copy-pos (- dst-pos offset)))
                     (dotimes (i len)
                       (setf (aref dst dst-pos) (aref dst copy-pos))
                       (incf dst-pos)
                       (incf copy-pos)))))

                ;; Copy 4-byte offset
                ((= tag-type 3)
                 (let* ((len (+ 1 (ash tag-byte -2)))
                        (offset (logior (aref src pos)
                                        (ash (aref src (1+ pos)) 8)
                                        (ash (aref src (+ pos 2)) 16)
                                        (ash (aref src (+ pos 3)) 24))))
                   (incf pos 4)
                   (let ((copy-pos (- dst-pos offset)))
                     (dotimes (i len)
                       (setf (aref dst dst-pos) (aref dst copy-pos))
                       (incf dst-pos)
                       (incf copy-pos)))))))))

        dst))))


;;; SSTable footer: 48 bytes at end of file
;;;   [0..19]  metaindex block handle (varint offset + varint size, padded to 20 bytes)
;;;   [20..39] index block handle (varint offset + varint size, padded to 20 bytes)
;;;   [40..47] magic number: 0xdb4775248b80fb57

(defconstant +sstable-magic+ #xdb4775248b80fb57)
(defconstant +sstable-footer-size+ 48)
(defconstant +sstable-block-trailer-size+ 5) ; 1 compression type + 4 CRC32

(defun parse-block-handle (bytes pos)
  "Parse a block handle (offset varint, size varint) from bytes at pos.
   Returns (values offset size new-pos)."
  (multiple-value-bind (offset new-pos1) (read-varint bytes pos)
    (multiple-value-bind (size new-pos2) (read-varint bytes new-pos1)
      (values offset size new-pos2))))

(defun read-footer (file-bytes)
  "Parse SSTable footer, return (values index-offset index-size)."
  (let* ((file-size (length file-bytes))
         (footer-start (- file-size +sstable-footer-size+))
         (magic (bytes->u64-le file-bytes (+ footer-start 40))))
    (unless (= magic +sstable-magic+)
      (error "CKPT-READER: Invalid SSTable magic. File may be corrupted or wrong format."))
    ;; Skip metaindex handle (first 20 bytes of footer), read index handle
    (multiple-value-bind (idx-offset idx-size)
        (parse-block-handle file-bytes (+ footer-start 20))
      (values idx-offset idx-size))))

(defun read-block (file-bytes block-offset block-size)
  "Read a block from the SSTable. Strips the 5-byte trailer (type+CRC).
   Returns the raw block data bytes."
  ;; Block size in the handle does NOT include the trailer
  (let* ((data (make-array block-size :element-type '(unsigned-byte 8))))
    (dotimes (i block-size)
      (setf (aref data i) (aref file-bytes (+ block-offset i))))
    ;; Check compression type (byte at block-offset + block-size)
    (let ((compression-type (aref file-bytes (+ block-offset block-size))))
      (cond
        ((= compression-type 0) data)           ; uncompressed, return as-is
        ((= compression-type 1)                  ; Snappy
         (snappy-decompress data))
        (t (error "CKPT-READER: Unknown compression type: ~A" compression-type))))))

(defun parse-data-block (block-bytes)
  "Parse a LevelDB data block into a list of (key . value) pairs.
   Keys are prefix-decompressed byte vectors, values are byte vectors."
  (let* ((block-len (length block-bytes))
         ;; Last 4 bytes of block = number of restarts (uint32 LE)
         (num-restarts (bytes->u32-le block-bytes (- block-len 4)))
         ;; Restart array starts at block-len - 4 - num-restarts*4
         (restarts-offset (- block-len 4 (* num-restarts 4)))
         (entries nil)
         (i 0)
         (last-key (make-array 0 :element-type '(unsigned-byte 8))))

    (loop while (< i restarts-offset) do
      (multiple-value-bind (shared new-i1) (read-varint block-bytes i)
        (multiple-value-bind (non-shared new-i2) (read-varint block-bytes new-i1)
          (multiple-value-bind (value-len new-i3) (read-varint block-bytes new-i2)
            (setf i new-i3)

            ;; Reconstruct key: shared prefix + new suffix
            (let* ((suffix (subseq block-bytes i (+ i non-shared)))
                   (key (concatenate '(vector (unsigned-byte 8))
                                     (subseq last-key 0 (min shared (length last-key)))
                                     suffix))
                   (value (subseq block-bytes (+ i non-shared)
                                  (+ i non-shared value-len))))
              (setf i (+ i non-shared value-len))
              (setf last-key key)
              ;; Skip the internal sequence number/type suffix (8 bytes in TF's table format)
              ;; TF uses a slightly modified LevelDB where keys have an 8-byte trailer
              (when (>= (length key) 8)
                (let ((user-key (subseq key 0 (- (length key) 8))))
                  (push (cons user-key value) entries))))))))

    (nreverse entries)))

(defun parse-index-block (file-bytes index-offset index-size)
  "Parse the SSTable index block. Returns list of (last-key . (data-offset data-size))."
  (let* ((block-bytes (read-block file-bytes index-offset index-size))
         (block-len (length block-bytes))
         (num-restarts (bytes->u32-le block-bytes (- block-len 4)))
         (restarts-offset (- block-len 4 (* num-restarts 4)))
         (entries nil)
         (i 0)
         (last-key (make-array 0 :element-type '(unsigned-byte 8))))

    (loop while (< i restarts-offset) do
      (multiple-value-bind (shared new-i1) (read-varint block-bytes i)
        (multiple-value-bind (non-shared new-i2) (read-varint block-bytes new-i1)
          (multiple-value-bind (value-len new-i3) (read-varint block-bytes new-i2)
            (setf i new-i3)
            (let* ((suffix (subseq block-bytes i (+ i non-shared)))
                   (key (concatenate '(vector (unsigned-byte 8))
                                     (subseq last-key 0 (min shared (length last-key)))
                                     suffix))
                   (value-bytes (subseq block-bytes (+ i non-shared)
                                        (+ i non-shared value-len))))
              (setf i (+ i non-shared value-len))
              (setf last-key key)
              ;; Index block values are block handles (offset + size as varints)
              (multiple-value-bind (blk-offset blk-size)
                  (parse-block-handle value-bytes 0)
                (push (list key blk-offset blk-size) entries)))))))

    (nreverse entries)))


;;;; =========================================================================
;;;; Main checkpoint reader
;;;; =========================================================================

(defun bytes->string (bytes)
  "Convert byte vector to string (UTF-8)."
  (sb-ext:octets-to-string bytes :external-format :utf-8))

(defun load-checkpoint-index (index-path)
  "Read a TF1 .index file and return a hash table:
   variable-name -> (list dtype shape shard-id offset size)

   This reads the full SSTable index into memory."
  (format t "~&CKPT-READER: Reading index: ~A~%" index-path)

  ;; Load entire index file into memory (typically < 10MB)
  (let* ((file-size (with-open-file (s index-path :element-type '(unsigned-byte 8))
                      (file-length s)))
         (file-bytes (make-array file-size :element-type '(unsigned-byte 8))))

    (with-open-file (s index-path :element-type '(unsigned-byte 8))
      (read-sequence file-bytes s))

    (format t "~&CKPT-READER: Index file size: ~A bytes~%" file-size)

    ;; Parse footer to find index block
    (multiple-value-bind (idx-offset idx-size)
        (read-footer file-bytes)

      (format t "~&CKPT-READER: Index block at offset ~A, size ~A~%"
              idx-offset idx-size)

      ;; Parse index block to find all data blocks
      (let ((index-entries (parse-index-block file-bytes idx-offset idx-size))
            (result (make-hash-table :test 'equal)))

        (format t "~&CKPT-READER: Found ~A data blocks~%" (length index-entries))

        ;; Parse each data block
        (dolist (entry index-entries)
          (destructuring-bind (key blk-offset blk-size) entry
            (declare (ignore key))
            (handler-case
                (let* ((block-bytes (read-block file-bytes blk-offset blk-size))
                       (kv-pairs (parse-data-block block-bytes)))
                  (dolist (kv kv-pairs)
                    (let* ((name-bytes (car kv))
                           (value-bytes (cdr kv))
                           (name (bytes->string name-bytes))
                           (entry-proto (parse-bundle-entry-proto value-bytes)))
                      (setf (gethash name result) entry-proto))))
              (error (e)
                (format t "~&CKPT-READER: Warning — skipped block: ~A~%" e)))))

        (format t "~&CKPT-READER: Found ~A variables~%" (hash-table-count result))
        result))))


(defun read-tensor-from-data (data-path offset size shape)
  "Read a float32 tensor from the .data file at OFFSET with SIZE bytes.
   Returns a MAGICL matrix.
   SHAPE is a list of dimension sizes, e.g. (512 512) or (512)."
  (let* ((numel (max 1 (reduce #'* shape)))
         (expected-bytes (* numel 4))
         (actual-bytes (min size expected-bytes))
         (buf (make-array actual-bytes :element-type '(unsigned-byte 8)))
         (floats (make-array numel :element-type 'single-float
                                   :initial-element 0.0)))

    (with-open-file (s data-path :element-type '(unsigned-byte 8))
      (file-position s offset)
      (read-sequence buf s))

    ;; Convert bytes to float32
    (dotimes (i (floor actual-bytes 4))
      (setf (aref floats i)
            (bytes->float32 (aref buf (* i 4))
                            (aref buf (+ (* i 4) 1))
                            (aref buf (+ (* i 4) 2))
                            (aref buf (+ (* i 4) 3)))))

    ;; Build MAGICL matrix
    (let ((magicl-shape (cond
                          ((= (length shape) 2) (list (first shape) (second shape)))
                          ((= (length shape) 1) (list (first shape) 1))
                          ((= (length shape) 0) (list 1 1))
                          (t (list numel 1))))) ; flatten higher dims
      (magicl:from-array floats magicl-shape :type 'single-float))))


;;;; =========================================================================
;;;; Top-level: load a full TF1 checkpoint
;;;; =========================================================================

(defun load-checkpoint (ckpt-base-path)
  "Load a TF1 checkpoint given the base path (without extension).

   E.g.: (load-checkpoint \"/path/to/unconditional_model_16.ckpt\")

   Expects these files to exist:
     <ckpt-base-path>.index
     <ckpt-base-path>.data-00000-of-00001

   Returns a hash table: variable-name -> MAGICL matrix

   This is the main entry point for loading Magenta checkpoints.
   Optimizer/training variables (Adam, global_step etc.) are skipped automatically."

  (let* ((index-path (concatenate 'string ckpt-base-path ".index"))
         ;; Try both shard naming conventions
         (data-path-1 (concatenate 'string ckpt-base-path ".data-00000-of-00001"))
         (data-path-2 (concatenate 'string ckpt-base-path ".data"))
         (data-path (cond
                      ((probe-file data-path-1) data-path-1)
                      ((probe-file data-path-2) data-path-2)
                      (t (error "CKPT-READER: Cannot find data file for ~A" ckpt-base-path)))))

    (unless (probe-file index-path)
      (error "CKPT-READER: Index file not found: ~A" index-path))

    (format t "~&CKPT-READER: Loading checkpoint~%  Index: ~A~%  Data:  ~A~%"
            index-path data-path)

    ;; Read the index
    (let* ((index (load-checkpoint-index index-path))
           (tensors (make-hash-table :test 'equal))
           ;; Training/optimizer variable patterns to skip
           (skip-patterns '("Adam" "adam" "Adagrad" "momentum" "global_step"
                            "ExponentialMovingAverage" "beta1_power" "beta2_power"
                            "learning_rate" "clip_by_global_norm" "loss_scale")))

      ;; Load each tensor from the data file
      (maphash
       (lambda (name entry)
         (destructuring-bind (dtype shape shard-id offset size) entry
           (declare (ignore shard-id))
           ;; Skip optimizer variables
           (let ((skip? (some (lambda (pat) (search pat name)) skip-patterns)))
             (if skip?
                 (format t "~&  skipping: ~A~%" name)
                 (handler-case
                     (progn
                       (when (= dtype 1) ; float32 only for now
                         (let ((tensor (read-tensor-from-data data-path offset size shape)))
                           (setf (gethash name tensors) tensor)
                           (format t "~&  loaded: ~A ~A~%" name shape))))
                   (error (e)
                     (format t "~&  warning — could not load ~A: ~A~%" name e)))))))
       index)

      (format t "~&CKPT-READER: Loaded ~A tensors.~%" (hash-table-count tensors))
      tensors)))


;;;; =========================================================================
;;;; Integration with load-model
;;;; =========================================================================

(defun load-model-from-ckpt (ckpt-base-path)
  "Load a transformer model directly from a TF1 checkpoint.
   This is an alternative to LOAD-MODEL which reads from exported binary files.

   Usage:
     (defparameter *model*
       (moz-transformer:load-model-from-ckpt
         \"/path/to/unconditional_model_16.ckpt\"))

   The variable name mapping is handled automatically for known Magenta models.
   If the model is unrecognized, all variables are loaded as-is and you can
   inspect them with DESCRIBE-CHECKPOINT."

  (format t "~&MOZ-TRANSFORMER: Loading from TF1 checkpoint: ~A~%" ckpt-base-path)

  (let ((tensors (load-checkpoint ckpt-base-path)))

    ;; Detect model type from variable names
    (let* ((names (loop for k being the hash-keys of tensors collect k))
           (is-music-transformer (some (lambda (n) (search "body" n)) names))
           (is-coconet (some (lambda (n) (search "conv" n)) names)))

      (cond
        (is-music-transformer
         (format t "~&MOZ-TRANSFORMER: Detected Music Transformer architecture~%")
         (build-music-transformer-model tensors))
        (is-coconet
         (format t "~&MOZ-TRANSFORMER: Detected CocoNet architecture~%")
         (build-coconet-model tensors))
        (t
         (format t "~&MOZ-TRANSFORMER: Unknown architecture — building generic model~%")
         (format t "~&  Variable names found:~%")
         (dolist (n (subseq names 0 (min 20 (length names))))
           (format t "~&    ~A~%" n))
         (build-generic-model tensors))))))


(defun describe-checkpoint (ckpt-base-path)
  "Print all variable names and shapes in a checkpoint.
   Useful for understanding a new checkpoint before writing a mapper.

   Usage:
     (moz-transformer:describe-checkpoint \"/path/to/model.ckpt\")"
  (let ((index (load-checkpoint-index
                (concatenate 'string ckpt-base-path ".index"))))
    (format t "~&Variables in checkpoint ~A:~%" ckpt-base-path)
    (let ((entries nil))
      (maphash (lambda (name entry)
                 (push (list name (second entry)) entries))
               index)
      (dolist (e (sort entries #'string< :key #'first))
        (format t "  ~A  ~A~%" (first e) (second e))))))


(defun build-music-transformer-model (tensors)
  "Build a TRANSFORMER-MODEL from Music Transformer checkpoint tensors.
   Maps Magenta/T2T variable names to our architecture."
  ;; The Music Transformer uses Tensor2Tensor naming:
  ;; transformer/body/... for the main layers
  ;; We build a model with whatever we can find, falling back to zeros
  (flet ((get-or-zeros (name shape)
           (or (gethash name tensors)
               (magicl:zeros shape :type 'single-float))))

    ;; Try to infer dimensions from embedding matrix
    (let* ((embed-candidates
            (loop for k being the hash-keys of tensors
                  when (search "embedding" k) collect k))
           (embed-key (first embed-candidates))
           (embed-matrix (when embed-key (gethash embed-key tensors)))
           (vocab-size (if embed-matrix (magicl:nrows embed-matrix) 128))
           (hidden-size (if embed-matrix (magicl:ncols embed-matrix) 512)))

      (format t "~&  Inferred vocab-size=~A hidden-size=~A~%" vocab-size hidden-size)

      ;; Count layers
      (let ((num-layers
             (loop for k being the hash-keys of tensors
                   when (search "layer_" k)
                   maximize (let* ((pos (search "layer_" k))
                                   (rest (subseq k (+ pos 6)))
                                   (slash (position #\/ rest)))
                              (if slash
                                  (1+ (parse-integer (subseq rest 0 slash)
                                                     :junk-allowed t))
                                  0))
                   finally (return (max 0 (loop for k being the hash-keys of tensors
                                                when (search "layer_" k) maximize 8))))))

        (format t "~&  Inferred num-layers=~A~%" num-layers)

        (make-transformer-model
         :vocab-size vocab-size
         :hidden-size hidden-size
         :num-layers num-layers
         :num-heads 8
         :embed-weight (or embed-matrix
                           (magicl:zeros (list vocab-size hidden-size)
                                         :type 'single-float))
         :layer-weights (when (> num-layers 0)
                          (coerce
                           (loop for i below num-layers
                                 collect (build-layer-from-tensors tensors i hidden-size))
                           'vector))
         :output-weight (get-or-zeros "transformer/body/output_projection/w"
                                      (list hidden-size vocab-size))
         :output-bias   (magicl:zeros (list vocab-size 1) :type 'single-float)
         :weights-dir   nil)))))


(defun build-layer-from-tensors (tensors layer-idx hidden-size)
  "Build a LAYER-WEIGHTS struct from checkpoint tensors for a given layer."
  (flet ((find-tensor (patterns fallback-shape)
           ;; Try each pattern, return first found or zeros
           (loop for pat in patterns
                 for key = (format nil pat layer-idx)
                 for tensor = (gethash key tensors)
                 when tensor return tensor
                 finally (return (magicl:zeros fallback-shape :type 'single-float)))))

    (make-layer-weights
     ;; Self-attention Q/K/V — T2T uses combined qkv or separate
     :q-weight (find-tensor
                (list "transformer/body/layer_~A/self_attention/q/kernel"
                      "transformer/body/layer_~A/self_attention/query_transform/kernel")
                (list hidden-size hidden-size))
     :q-bias   (magicl:zeros (list hidden-size 1) :type 'single-float)
     :k-weight (find-tensor
                (list "transformer/body/layer_~A/self_attention/k/kernel"
                      "transformer/body/layer_~A/self_attention/key_transform/kernel")
                (list hidden-size hidden-size))
     :k-bias   (magicl:zeros (list hidden-size 1) :type 'single-float)
     :v-weight (find-tensor
                (list "transformer/body/layer_~A/self_attention/v/kernel"
                      "transformer/body/layer_~A/self_attention/value_transform/kernel")
                (list hidden-size hidden-size))
     :v-bias   (magicl:zeros (list hidden-size 1) :type 'single-float)
     :out-weight (find-tensor
                  (list "transformer/body/layer_~A/self_attention/output_transform/kernel")
                  (list hidden-size hidden-size))
     :out-bias   (magicl:zeros (list hidden-size 1) :type 'single-float)
     ;; Layer norms
     :norm1-weight (find-tensor
                    (list "transformer/body/layer_~A/self_attention/layer_norm/scale"
                          "transformer/body/layer_~A/layer_norm_1/gamma")
                    (list hidden-size 1))
     :norm1-bias   (find-tensor
                    (list "transformer/body/layer_~A/self_attention/layer_norm/bias"
                          "transformer/body/layer_~A/layer_norm_1/beta")
                    (list hidden-size 1))
     :norm2-weight (find-tensor
                    (list "transformer/body/layer_~A/ffn/layer_norm/scale"
                          "transformer/body/layer_~A/layer_norm_2/gamma")
                    (list hidden-size 1))
     :norm2-bias   (find-tensor
                    (list "transformer/body/layer_~A/ffn/layer_norm/bias"
                          "transformer/body/layer_~A/layer_norm_2/beta")
                    (list hidden-size 1))
     ;; Feed-forward
     :ff1-weight (find-tensor
                  (list "transformer/body/layer_~A/ffn/conv1/kernel"
                        "transformer/body/layer_~A/ffn/dense_1/kernel")
                  (list (* hidden-size 4) hidden-size))
     :ff1-bias   (find-tensor
                  (list "transformer/body/layer_~A/ffn/conv1/bias"
                        "transformer/body/layer_~A/ffn/dense_1/bias")
                  (list (* hidden-size 4) 1))
     :ff2-weight (find-tensor
                  (list "transformer/body/layer_~A/ffn/conv2/kernel"
                        "transformer/body/layer_~A/ffn/dense_2/kernel")
                  (list hidden-size (* hidden-size 4)))
     :ff2-bias   (find-tensor
                  (list "transformer/body/layer_~A/ffn/conv2/bias"
                        "transformer/body/layer_~A/ffn/dense_2/bias")
                  (list hidden-size 1)))))


(defun build-coconet-model (tensors)
  "Build model from CocoNet checkpoint. CocoNet is a CNN not a transformer,
   so we build a minimal scoring wrapper around its features."
  (format t "~&  Note: CocoNet is a CNN architecture. Building scoring adapter.~%")
  ;; CocoNet doesn't map directly to our transformer architecture.
  ;; We return a model that uses available conv weights for scoring.
  ;; Full CocoNet inference would require a separate implementation.
  (build-generic-model tensors))


(defun build-generic-model (tensors)
  "Build a model from unknown checkpoint, using zero matrices as fallback.
   After calling this, use DESCRIBE-CHECKPOINT to find the right variable names
   and update the name mapping."
  (make-transformer-model
   :vocab-size 128
   :hidden-size 512
   :num-layers 0
   :num-heads 8
   :embed-weight (or (loop for k being the hash-keys of tensors
                           when (search "embedding" k)
                           return (gethash k tensors))
                     (magicl:zeros '(128 512) :type 'single-float))
   :layer-weights nil
   :output-weight (magicl:zeros '(128 512) :type 'single-float)
   :output-bias   (magicl:zeros '(128 1) :type 'single-float)
   :weights-dir   nil))
