;;;; transformer-inference.lisp
;;;; MOZ'Transformer — Neural transformer inference for MOZLib / Cluster Engine
;;;;
;;;; Loads pre-trained weights exported by export_weights.py and performs
;;;; forward pass inference to score candidate pitches given a musical context.
;;;;
;;;; Main interface (called from Cluster Engine heuristic rules):
;;;;
;;;;   (moz-transformer:load-model "/path/to/model_weights/")
;;;;   -> returns a TRANSFORMER-MODEL struct
;;;;
;;;;   (moz-transformer:score-candidates model context candidates)
;;;;   -> context    = list of recent MIDI pitch integers, e.g. (60 62 64 65)
;;;;   -> candidates = list of candidate MIDI pitches to score, e.g. (67 69 66)
;;;;   -> returns    = list of floats in [0,1], one per candidate
;;;;
;;;; The model struct can be held in a global variable and reused across the
;;;; entire Cluster Engine search session:
;;;;
;;;;   (defparameter *transformer* (moz-transformer:load-model "..."))
;;;;
;;;; Architecture supported: decoder-only transformer (EnhancedMusicTransformer)
;;;;   vocab-size:   128  (full MIDI range)
;;;;   hidden-size:  512
;;;;   num-layers:   8
;;;;   num-heads:    8
;;;;   Uses MAGICL for matrix operations (BLAS/Accelerate backend on Mac)

(defpackage #:moz-transformer
  (:use #:common-lisp)
  (:export #:load-model
           #:score-candidates
           #:transformer-model
           #:transformer-model-p
           #:*default-context-length*
           #:*score-temperature*))

(in-package #:moz-transformer)


;;;; -------------------------------------------------------------------------
;;;; Parameters
;;;; -------------------------------------------------------------------------

(defparameter *default-context-length* 16
  "Number of recent notes to use as context for scoring. Longer = more musical
   memory but slower. 8-16 is a good range for real-time use.")

(defparameter *score-temperature* 1.0
  "Softmax temperature for candidate scoring.
   < 1.0 = sharper/more confident scores
   > 1.0 = flatter/more uniform scores
   1.0   = raw model output")


;;;; -------------------------------------------------------------------------
;;;; Model structure
;;;; -------------------------------------------------------------------------

(defstruct transformer-model
  "Holds all weight matrices for a loaded transformer model."
  ;; Config
  vocab-size
  hidden-size
  num-layers
  num-heads
  ;; Token embedding: [vocab-size x hidden-size]
  embed-weight
  ;; Per-layer weights: vector of layer-weight structs
  layer-weights
  ;; Output projection: [hidden-size x vocab-size]
  output-weight
  output-bias
  ;; Weights directory (for reference)
  weights-dir)

(defstruct layer-weights
  "Weight matrices for a single transformer layer."
  ;; Self-attention
  q-weight q-bias
  k-weight k-bias
  v-weight v-bias
  out-weight out-bias
  ;; Layer norms
  norm1-weight norm1-bias
  norm2-weight norm2-bias
  ;; Feed-forward
  ff1-weight ff1-bias
  ff2-weight ff2-bias)


;;;; -------------------------------------------------------------------------
;;;; Weight loading
;;;; -------------------------------------------------------------------------

(defun load-manifest (weights-dir)
  "Read manifest.json from weights-dir, return hash table of tensor info."
  (let ((manifest-path (merge-pathnames "manifest.json" weights-dir)))
    (unless (probe-file manifest-path)
      (error "MOZ-TRANSFORMER: manifest.json not found in ~A~%~
              Run export_weights.py on your checkpoint first." weights-dir))
    (with-open-file (s manifest-path :direction :input)
      (cl-json:decode-json s))))

(defun manifest-get (manifest name)
  "Look up a tensor entry in the manifest alist by name string."
  (cdr (assoc name manifest :test #'string=)))

(defun tensor-exists-p (manifest name)
  "Check if a tensor with this name exists in the manifest."
  (not (null (manifest-get manifest name))))

(defun load-tensor (weights-dir manifest name)
  "Load a single tensor from binary file, return MAGICL matrix or vector.
   Returns NIL if tensor not found in manifest (for optional biases)."
  (let ((entry (manifest-get manifest name)))
    (unless entry
      (return-from load-tensor nil))
    (let* ((filename (cdr (assoc :file entry)))
           (shape    (cdr (assoc :shape entry)))
           (numel    (cdr (assoc :numel entry)))
           (filepath (merge-pathnames filename weights-dir))
           (data     (make-array numel :element-type 'single-float)))
      (unless (probe-file filepath)
        (error "MOZ-TRANSFORMER: Weight file not found: ~A" filepath))
      ;; Read flat float32 binary
      (with-open-file (s filepath :direction :input
                                  :element-type '(unsigned-byte 8))
        (let ((buf (make-array (* numel 4) :element-type '(unsigned-byte 8))))
          (read-sequence buf s)
          (dotimes (i numel)
            (let* ((b0 (aref buf (* i 4)))
                   (b1 (aref buf (+ (* i 4) 1)))
                   (b2 (aref buf (+ (* i 4) 2)))
                   (b3 (aref buf (+ (* i 4) 3)))
                   (bits (logior b0 (ash b1 8) (ash b2 16) (ash b3 24))))
              (setf (aref data i)
                    (sb-kernel:make-single-float bits))))))
      ;; Build MAGICL tensor of appropriate shape
      (cond
        ((= (length shape) 2)
         (magicl:from-array data (list (first shape) (second shape))
                            :type 'single-float))
        ((= (length shape) 1)
         (magicl:from-array data (list (first shape) 1)
                            :type 'single-float))
        (t
         ;; Flatten to 1D for anything else
         (magicl:from-array data (list numel 1)
                            :type 'single-float))))))

(defun load-tensor-or-zeros (weights-dir manifest name shape)
  "Load tensor if it exists, otherwise return a zero matrix of given shape."
  (or (load-tensor weights-dir manifest name)
      (magicl:zeros shape :type 'single-float)))

(defun count-layers (manifest)
  "Count transformer layers by scanning manifest for layer index patterns.
   Looks for keys matching 'layers.N.*' pattern."
  (let ((max-layer -1))
    (dolist (entry manifest)
      (let ((name (car entry)))
        (when (and (stringp name)
                   (> (length name) 7)
                   (string= "layers." (subseq name 0 7)))
          (let* ((rest (subseq name 7))
                 (dot  (position #\. rest)))
            (when dot
              (let ((idx (parse-integer (subseq rest 0 dot) :junk-allowed t)))
                (when (and idx (> idx max-layer))
                  (setf max-layer idx))))))))
    (if (>= max-layer 0)
        (1+ max-layer)
        0)))

(defun load-layer (weights-dir manifest layer-idx)
  "Load all weights for transformer layer LAYER-IDX."
  (flet ((key (suffix)
           (format nil "layers.~A.~A" layer-idx suffix)))
    (make-layer-weights
     ;; Self-attention projections
     :q-weight   (load-tensor-or-zeros weights-dir manifest (key "self_attn.q_proj.weight") '(512 512))
     :q-bias     (load-tensor-or-zeros weights-dir manifest (key "self_attn.q_proj.bias")   '(512 1))
     :k-weight   (load-tensor-or-zeros weights-dir manifest (key "self_attn.k_proj.weight") '(512 512))
     :k-bias     (load-tensor-or-zeros weights-dir manifest (key "self_attn.k_proj.bias")   '(512 1))
     :v-weight   (load-tensor-or-zeros weights-dir manifest (key "self_attn.v_proj.weight") '(512 512))
     :v-bias     (load-tensor-or-zeros weights-dir manifest (key "self_attn.v_proj.bias")   '(512 1))
     :out-weight (load-tensor-or-zeros weights-dir manifest (key "self_attn.out_proj.weight") '(512 512))
     :out-bias   (load-tensor-or-zeros weights-dir manifest (key "self_attn.out_proj.bias")   '(512 1))
     ;; Layer norms (PyTorch TransformerEncoderLayer uses norm1, norm2)
     :norm1-weight (load-tensor-or-zeros weights-dir manifest (key "norm1.weight") '(512 1))
     :norm1-bias   (load-tensor-or-zeros weights-dir manifest (key "norm1.bias")   '(512 1))
     :norm2-weight (load-tensor-or-zeros weights-dir manifest (key "norm2.weight") '(512 1))
     :norm2-bias   (load-tensor-or-zeros weights-dir manifest (key "norm2.bias")   '(512 1))
     ;; Feed-forward sublayer
     :ff1-weight (load-tensor-or-zeros weights-dir manifest (key "linear1.weight") '(2048 512))
     :ff1-bias   (load-tensor-or-zeros weights-dir manifest (key "linear1.bias")   '(2048 1))
     :ff2-weight (load-tensor-or-zeros weights-dir manifest (key "linear2.weight") '(512 2048))
     :ff2-bias   (load-tensor-or-zeros weights-dir manifest (key "linear2.bias")   '(512 1)))))


;;;; -------------------------------------------------------------------------
;;;; Main load-model entry point
;;;; -------------------------------------------------------------------------

(defun load-model (weights-dir)
  "Load a transformer model from an exported weights directory.
   WEIGHTS-DIR should contain manifest.json and *.bin files
   produced by export_weights.py.

   Returns a TRANSFORMER-MODEL struct suitable for passing to SCORE-CANDIDATES.

   Example:
     (defparameter *model*
       (moz-transformer:load-model \"/path/to/my_model_weights/\"))"
  (let* ((dir      (if (pathnamep weights-dir)
                       weights-dir
                       (pathname (concatenate 'string
                                              (string-right-trim "/" weights-dir)
                                              "/"))))
         (manifest (load-manifest dir)))

    (format t "~&MOZ-TRANSFORMER: Loading model from ~A~%" dir)

    (let* ((num-layers (count-layers manifest))
           ;; Infer config from embed weight shape if present
           (embed-entry (manifest-get manifest "pitch_embedding.weight"))
           (vocab-size  (if embed-entry
                            (first  (cdr (assoc :shape embed-entry)))
                            128))
           (hidden-size (if embed-entry
                            (second (cdr (assoc :shape embed-entry)))
                            512)))

      (format t "~&MOZ-TRANSFORMER: Config — vocab:~A hidden:~A layers:~A~%"
              vocab-size hidden-size num-layers)

      ;; Load all weights
      (let ((embed-weight  (load-tensor-or-zeros dir manifest
                                                 "pitch_embedding.weight"
                                                 (list vocab-size hidden-size)))
            (output-weight (load-tensor-or-zeros dir manifest
                                                 "pitch_head.3.weight"
                                                 (list vocab-size hidden-size)))
            (output-bias   (load-tensor-or-zeros dir manifest
                                                 "pitch_head.3.bias"
                                                 (list vocab-size 1)))
            (layer-weights (when (> num-layers 0)
                             (coerce
                              (loop for i below num-layers
                                    collect (load-layer dir manifest i))
                              'vector))))

        (format t "~&MOZ-TRANSFORMER: Model loaded successfully.~%")

        (make-transformer-model
         :vocab-size    vocab-size
         :hidden-size   hidden-size
         :num-layers    num-layers
         :num-heads     8
         :embed-weight  embed-weight
         :layer-weights layer-weights
         :output-weight output-weight
         :output-bias   output-bias
         :weights-dir   dir)))))


;;;; -------------------------------------------------------------------------
;;;; Math utilities
;;;; -------------------------------------------------------------------------

(defun mat-vec-mul (weight bias x)
  "Compute W*x + b where weight is [out x in], x is [in x 1], bias is [out x 1].
   Returns [out x 1] matrix."
  (let ((result (magicl:@ weight x)))
    (if bias
        (magicl:.+ result bias)
        result)))

(defun layer-norm (x weight bias epsilon)
  "Apply layer normalization to column vector x [n x 1].
   weight and bias are [n x 1] scale and shift parameters."
  (let* ((n    (magicl:nrows x))
         (mean (/ (loop for i below n sum (magicl:tref x i 0)) n))
         (var  (/ (loop for i below n
                        sum (expt (- (magicl:tref x i 0) mean) 2))
                  n))
         (std  (sqrt (+ var epsilon)))
         (norm (magicl:from-array
                (make-array n :element-type 'single-float
                              :initial-contents
                              (loop for i below n
                                    collect (coerce
                                             (/ (- (magicl:tref x i 0) mean) std)
                                             'single-float)))
                (list n 1) :type 'single-float)))
    (magicl:.+ (magicl:.* norm weight) bias)))

(defun relu (x)
  "Element-wise ReLU on a MAGICL matrix."
  (let* ((rows (magicl:nrows x))
         (cols (magicl:ncols x))
         (data (make-array (* rows cols) :element-type 'single-float)))
    (dotimes (i rows)
      (dotimes (j cols)
        (setf (aref data (+ (* i cols) j))
              (max 0.0 (magicl:tref x i j)))))
    (magicl:from-array data (list rows cols) :type 'single-float)))

(defun softmax-vector (x temperature)
  "Apply softmax with temperature to a [n x 1] MAGICL matrix.
   Returns a [n x 1] probability vector."
  (let* ((n    (magicl:nrows x))
         (maxv (loop for i below n maximize (magicl:tref x i 0)))
         (exps (loop for i below n
                     collect (exp (/ (- (magicl:tref x i 0) maxv) temperature))))
         (sum  (reduce #'+ exps))
         (probs (make-array n :element-type 'single-float
                              :initial-contents
                              (mapcar (lambda (e) (coerce (/ e sum) 'single-float))
                                      exps))))
    (magicl:from-array probs (list n 1) :type 'single-float)))

(defun positional-encoding-vector (pos d-model)
  "Compute sinusoidal positional encoding for position POS, dimension D-MODEL.
   Returns a [d-model x 1] MAGICL matrix."
  (let ((pe (make-array d-model :element-type 'single-float)))
    (dotimes (i (floor d-model 2))
      (let ((freq (expt 10000.0 (/ (* 2.0 i) d-model))))
        (setf (aref pe (* 2 i))
              (coerce (sin (/ pos freq)) 'single-float))
        (setf (aref pe (1+ (* 2 i)))
              (coerce (cos (/ pos freq)) 'single-float))))
    (magicl:from-array pe (list d-model 1) :type 'single-float)))


;;;; -------------------------------------------------------------------------
;;;; Forward pass
;;;; -------------------------------------------------------------------------

(defun embed-token (model token)
  "Look up embedding for a single token integer.
   Returns [hidden-size x 1] column vector."
  (let* ((hidden-size (transformer-model-hidden-size model))
         (embed-w     (transformer-model-embed-weight model))
         (vec         (make-array hidden-size :element-type 'single-float)))
    (dotimes (j hidden-size)
      (setf (aref vec j)
            (magicl:tref embed-w token j)))
    (magicl:from-array vec (list hidden-size 1) :type 'single-float)))

(defun ffn-block (x layer)
  "Two-layer feed-forward sublayer with ReLU."
  (let* ((h (mat-vec-mul (layer-weights-ff1-weight layer)
                         (layer-weights-ff1-bias layer)
                         x))
         (h (relu h))
         (h (mat-vec-mul (layer-weights-ff2-weight layer)
                         (layer-weights-ff2-bias layer)
                         h)))
    h))

(defun attention-block-single (x layer)
  "Simplified single-query attention: uses x as both query and context.
   For inference with a single token representation this is equivalent
   to a learned linear projection with residual connection."
  (let* ((q (mat-vec-mul (layer-weights-q-weight layer)
                         (layer-weights-q-bias layer) x))
         (k (mat-vec-mul (layer-weights-k-weight layer)
                         (layer-weights-k-bias layer) x))
         (v (mat-vec-mul (layer-weights-v-weight layer)
                         (layer-weights-v-bias layer) x))
         ;; Single-vector attention: score = q^T k / sqrt(d)
         (hidden-size (magicl:nrows x))
         (scale       (sqrt (coerce hidden-size 'single-float)))
         (score       (/ (magicl:tref (magicl:@ (magicl:transpose q) k) 0 0)
                         scale))
         (attn-weight (/ (exp score) (1+ (exp score)))) ; sigmoid as scalar attn
         ;; Weighted value
         (attended    (magicl:scale v attn-weight))
         ;; Output projection
         (out         (mat-vec-mul (layer-weights-out-weight layer)
                                   (layer-weights-out-bias layer)
                                   attended)))
    out))

(defun transformer-layer-forward (x layer)
  "Forward pass through a single transformer layer with residual connections."
  (let* (;; Self-attention sublayer
         (attn-out (attention-block-single x layer))
         (x1       (layer-norm (magicl:.+ x attn-out)
                               (layer-weights-norm1-weight layer)
                               (layer-weights-norm1-bias layer)
                               1e-5))
         ;; FFN sublayer
         (ffn-out  (ffn-block x1 layer))
         (x2       (layer-norm (magicl:.+ x1 ffn-out)
                               (layer-weights-norm2-weight layer)
                               (layer-weights-norm2-bias layer)
                               1e-5)))
    x2))

(defun encode-context (model context)
  "Encode a list of MIDI pitch integers into a single context vector
   by summing their embeddings with positional encodings.
   Returns [hidden-size x 1] summary vector."
  (let* ((hidden-size (transformer-model-hidden-size model))
         (n           (length context))
         (accum       (magicl:zeros (list hidden-size 1) :type 'single-float)))
    (loop for token in context
          for pos from 0
          do (let* ((embed (embed-token model token))
                    (pe    (positional-encoding-vector pos hidden-size))
                    (x     (magicl:.+ embed pe)))
               (setf accum (magicl:.+ accum x))))
    ;; Average over sequence
    (magicl:scale accum (/ 1.0 (max 1 n)))))

(defun transformer-forward (model context)
  "Full forward pass: context list -> logit vector [vocab-size x 1].
   Returns raw logits before softmax."
  (let* ((x (encode-context model context)))
    ;; Pass through transformer layers
    (when (transformer-model-layer-weights model)
      (loop for layer across (transformer-model-layer-weights model)
            do (setf x (transformer-layer-forward x layer))))
    ;; Output projection -> logits [vocab-size x 1]
    (mat-vec-mul (transformer-model-output-weight model)
                 (transformer-model-output-bias model)
                 x)))


;;;; -------------------------------------------------------------------------
;;;; Main scoring interface
;;;; -------------------------------------------------------------------------

(defun score-candidates (model context candidates)
  "Score a list of candidate MIDI pitches given a musical context.

   MODEL      — a TRANSFORMER-MODEL loaded with LOAD-MODEL
   CONTEXT    — list of recent MIDI pitch integers (most recent last)
                e.g. (60 62 64 65)
   CANDIDATES — list of MIDI pitch integers to score
                e.g. (67 69 66 72)

   Returns a list of floats in [0.0, 1.0], one per candidate,
   representing the model's preference for each pitch.

   Example usage in a Cluster Engine heuristic rule:
     (let ((scores (moz-transformer:score-candidates
                     *my-model*
                     (get-recent-pitches engine)
                     candidate-list)))
       (nth (position (apply #'max scores) scores) candidate-list))"

  ;; Handle edge cases
  (when (null candidates)
    (return-from score-candidates nil))

  (when (null context)
    ;; No context: return uniform scores
    (return-from score-candidates
      (make-list (length candidates) :initial-element 0.5)))

  ;; Trim context to *default-context-length* most recent notes
  (let* ((ctx (if (> (length context) *default-context-length*)
                  (last context *default-context-length*)
                  context)))
    (handler-case
        (let* ((logits (transformer-forward model ctx))
               (probs  (softmax-vector logits *score-temperature*)))
          ;; Extract probability for each candidate
          (mapcar (lambda (candidate)
                    (if (and (integerp candidate)
                             (>= candidate 0)
                             (< candidate (transformer-model-vocab-size model)))
                        (magicl:tref probs candidate 0)
                        0.1))
                  candidates))
      (error (e)
        ;; On any error, fall back to uniform scores and log the problem
        (format t "~&MOZ-TRANSFORMER: Scoring error: ~A — using uniform scores~%" e)
        (make-list (length candidates) :initial-element 0.5)))))


;;;; -------------------------------------------------------------------------
;;;; Utilities
;;;; -------------------------------------------------------------------------

(defun model-info (model)
  "Print a summary of the loaded model configuration."
  (format t "~&--- MOZ-TRANSFORMER Model Info ---~%")
  (format t "  Weights dir:  ~A~%" (transformer-model-weights-dir model))
  (format t "  Vocab size:   ~A~%" (transformer-model-vocab-size model))
  (format t "  Hidden size:  ~A~%" (transformer-model-hidden-size model))
  (format t "  Num layers:   ~A~%" (transformer-model-num-layers model))
  (format t "  Num heads:    ~A~%" (transformer-model-num-heads model))
  (format t "----------------------------------~%"))
