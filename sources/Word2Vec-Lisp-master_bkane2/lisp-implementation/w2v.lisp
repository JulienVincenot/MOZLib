;; Word2Vec LISP Implementation
;; ----------------------------
;; Ben Kane
;; bkane2@u.rochester.edu

;; (ql:quickload "split-sequence")
;; (load "matrix.lisp")

;; Tokenize string to list of symbols
(defun tokenize (str)
  (mapcar (lambda (x) (intern (string-downcase x))) (split-sequence:SPLIT-SEQUENCE #\Space str)))

;; Creates vocabulary of unique symbols from list of symbols
;; NOTE: in future, can be modified to pick out most common words if we want a
;; vocabulary size smaller than the number of unique words in a sentence/corpus.
(defun create-vocabulary (tokens)
  (remove-duplicates tokens))

;; Creates one-hot encoding in the form of a hash map from words to one-hot vectors
;; (prepended by vocabulary length)
(defun create-one-hot (tokens)
  (let*
    ((vocabulary (create-vocabulary tokens))
    (v (length vocabulary))
    (encoding (make-hash-table :test #'equalp)))
  (labels ((one-hot-rec (words i)
    (if (null words) nil
    (let ((li (make-list v :initial-element 0))) (setf (nth i li) 1)
      (setf (gethash (car words) encoding) li)
      ;; (setf (gethash li encoding) (car words))
      (one-hot-rec (cdr words) (+ i 1))))))
  (one-hot-rec vocabulary 0)
  (list v encoding))))

;; Converts input to training data, given an encoding and skip-gram window
(defun get-training (tokens encoding window-dim)
  (let* ((len (length tokens)))
    (loop for i from 0 to (- len 1)
      collect (list (mat-t (list (gethash (nth i tokens) encoding)))
              (remove nil (loop for j from (- i window-dim) to (+ i window-dim)
              collect (if (or (< j 0) (>= j len) (= j i)) nil (mat-t (list (gethash (nth j tokens) encoding))))))))))

;; Initializes random model
(defun init-model (vocab-dim embedding-dim)
  (let
  ((w1 (mat-init-random vocab-dim embedding-dim))
  (w2 (mat-init-random embedding-dim vocab-dim)))
  (list w1 w2)))

;; Forward pass through network
(defun forward-pass (model x)
  (let*
    ((w1 (first model))
    (w2 (second model))
    (h (mat-dot (mat-t w1) x))
    (u (mat-dot (mat-t w2) h))
    (yp (softmax u)))
  (list h u yp)))

;; Backprop and update weights
(defun backprop (model lr e h x)
  (let*
    ((w1 (first model))
    (w2 (second model))
    (dl_dw2 (mat-outer h e))
    (dl_dw1 (mat-outer x (mat-dot w2 (mat-t e)))))
  (setf w1 (mat-pairwise #'- w1 (mat-unary (lambda (x) (* lr x)) dl_dw1)))
  (setf w2 (mat-pairwise #'- w2 (mat-unary (lambda (x) (* lr x)) dl_dw2)))
  (list w1 w2)))


;; Trains the word2vec embedding
(defun train (n-iterations vocab-dim embedding-dim window-dim learn-rate training-data)
  (let* ((loss 0) (model (init-model vocab-dim embedding-dim)))
    ;; Loop through each iteration
    (loop
      for i from 0 to n-iterations
      do (progn
          ;; Reset loss
          (setf loss 0)
          ;; Loop for each data point in the training set (i.e. a word and its context)
          (mapcar (lambda (x)
            (let* ((xn (first x)) (yn (second x))
              ;; Complete forward pass and get updated parameters
              (fp (forward-pass model xn))
              (h (first fp)) (u (second fp)) (yp (third fp))
              ;; Calculate error
              (err (mat-sum (flatten (mapcar (lambda (yc) (mat-pairwise #'- (mat-t yp) (mat-t yc))) yn)) 0)))
            ;; Backprop error and update model
            (setf model (backprop model learn-rate err h xn))
            ;; Update loss
            (setf loss (+
                loss
                (- 0 (reduce #'+ (mapcar (lambda (x) (car (nth (position 1 (flatten x)) u))) yn)))
                (* (length yn) (log (reduce #'+ (first (mat-unary (lambda (x) (exp x)) (mat-t u))))))))))
          training-data)
          ;; Print loss when iteration is done
          (format t "Iteration: ~a, Loss: ~a~%" i loss)))
    model))

;; Train word2vec model, return trained model as well as word encoding hash table
(defun word2vec (input n-iterations embedding-dim window-dim learn-rate)
  (let*
    ((tokens (tokenize input))
    (one-hot (create-one-hot tokens)) (vocab-dim (first one-hot)) (encoding (second one-hot))
    (training-data (get-training tokens encoding window-dim))
    (model (train n-iterations vocab-dim embedding-dim window-dim learn-rate training-data)))
  (list encoding model)))

;; Get vector representation of given word
(defun get-vec (word w2v)
  (let ((encoding (gethash (intern (string-downcase word)) (first w2v))))
    (if encoding (list (nth (position 1 encoding) (first (second w2v)))) (error "word does not exist in encoding"))))

;; Get n most similar words to given vector
(defun vec-sim (vec n w2v)
  (subseq (sort (mapcar (lambda (w)
    (let*
      ((v (get-vec w w2v))
      (cos-num (car (car (mat-dot vec (mat-t v)))))
      (cos-den (* (vec-norm vec) (vec-norm v)))
      (cos-dist (/ (* cos-num 1.0) cos-den)))
    (list w cos-dist)))
  (loop for key being the hash-keys of (first w2v) collect key)) #'>= :key #'second) 0 n))

;; Get n most similar words to given word
(defun word-sim (word n w2v)
  (vec-sim (get-vec word w2v) n w2v))




;; (----------------- EXAMPLE USEAGE ----------------------------)

;; For best results, preproccess input to remove punctuation and special characters (and optionally, stopwords)
; (setq example "babies do not start intellectually as tabulae rasae they rapidly build abstract knowledge and
; concepts and learn language with relatively little input at the symbolic ie linguistic level to build
; machines with such abilities we need to equip them with the symbolic machinery that can represent the kinds
; of abstract knowledge to be learned ways of using that knowledge for inference of various sorts and ways
; of deriving useful abstract patterns of behavior events and relationships from linguistic input")

(setq example "The scepter must be held in the right hand erect you must never never put it downand for that matter you would have no place to put it there are no tables beside the throne or shelves or stands to hold say a glass an ashtray a telephone High at the top of steep and narrow steps the throne is isolated if you drop anything it rolls down and can never be found afterwards God help you if the scepter slips from your grasp you would have to rise get down from the throne to pick it up no one but the king may touch it And it would hardly be a pretty sight to see a king stretched out on the floor to reach the scepter fetched up under some piece of furniture or when it comes to that the crown which could easily fall off your head if you bend over You can rest your forearm on the arm of the chair so it will not tire I am still speaking of your right arm the one holding the scepter As for the left it remains free you can scratch yourself if you like At times the ermine cloak makes your neck itch and the itch then spreads down your back and over your whole body The velvet of the cushion too as it grows warm produces an irritating sensation in the buttocks the thighs Feel no compunction about digging your fingers in where you itch unfastening the gilt buckle of your big belt shifting your collar your medals the fringed epaulettes You are the king nobody can utter a word of censure The very idea
The head must be held immobile always remember that the crown is balanced on your pate you cannot pull it over your ears like a cap on a windy day The crown rises in a dome more voluminous than the base that supports it which means that its equilibrium is unstable if you happen to doze off to let your chin sink to your chest the crown will then go rolling down and smash to bits because it is fragile especially the gold filagree studded with diamonds When you feel it is about to slip you have to be clever enough to adjust its position with little twitches of the head but you must take care not to straighten up too brusquely or you will strike the crown against the baldaquin whose draperies just graze it In other words you must maintain the regal composure that is supposed to be innate in your person
For that matter what need would you have to take all this trouble You are the king everything you desire is already yours You have only to lift a finger and you are brought food drink chewing gum toothpicks cigarettes of every brand all on a silver tray When you feel sleepy the throne is comfortable overstuffed you have only to close your eyes and relax against the back while apparently maintaining your usual position Whether you are asleep or awake it is all the same nobody notices As for your corporal needs it is no secret to anyone that the throne has an opening like any self respecting throne twice a day they come to change the pot More frequently if it stinks
In short everything is foreordained to spare you any movement whatsoever You would have nothing to gain by moving and everything to lose If you rise if you take even a few steps if you lose sight of the throne for an instant who can guarantee that when you return you will not find someone else sitting on it Perhaps someone who resembles you identical to you Go ahead then and try to prove you are the king not he A king is denoted by the fact that he is sitting on the throne wearing the crown holding the scepter Now that these attributes are yours you had better not be separated from them even for a moment
There is the problem of stretching the legs avoiding numbness stiffened joints to be sure this is a serious inconvenience But you can always kick raise your knees huddle up on the throne sit there Turkish fashion naturally for brief periods when matters of State permit Every evening those charged with the washing of the feet arrive and take off your boots for a quarter hour in the morning the deodorizing squad rubs your armpits with tufts of scented cotton
The eventuality of your being seized with carnal desires has also been foreseen Carefully chosen and trained court ladies from the sturdiest to the most slender are at your disposal in turn to ascend the steps of the throne and approach your timorous knees with their full skirts gauzy and fluttering The things that can be done while you remain on the throne and they offer themselves frontally or from behind or at an angle are various and you can perform them in a few instants or if the duties of the Realm grant you enough free time you can linger a bit longer say even three quarters of an hour In this case it is a good idea to have the curtains of the baldaquin drawn to remove the kings intimacy from outside gazes as the musicians play caressing melodies
In sum the throne once you have been crowned is where you had best remain seated without moving day and night All your previous life has been only a waiting to become king now you are king you have only to reign And what is reigning if not this long wait Waiting for the moment when you will be deposed when you will have to take leave of the throne the scepter the crown and your head
The hours are slow to pass in the throne room the lamplight is always the same You listen to time flowing by a buzz like a wind the wind blows along the corridors of the palace or in the depths of your ear Kings do not have watches it is assumed that they are the ones who govern the flow of time submission to the rules of a mechanical device would be incompatible with regal majesty The minutes uniform expanse threatens to bury you like an avalanche of sand but you know how to elude it You have only to prick up your ears in order to recognize the sounds of the palace which change from hour to hour in the morning the trumpet blares for the flag raising on the tower the trucks of the royal household unload hampers and casks in the courtyard of the stores the maidservants beat the carpets on the railing of the loggia at evening the gates creak as they are closed a clatter rises from the kitchens from the stables an occasional whinny indicates that it is currying time
The palace is a clock its ciphered sounds follow the course of the sun invisible arrows point to the change of the guard on the ramparts with a scuffle of hobnailed boots a slamming of rifle butts answered by the crunch of gravel under the tanks kept ready on the forecourt If the sounds are repeated in the customary order at the proper intervals you can be reassured your reign is in no danger for the moment for this hour for this day still
Sunk on your throne you raise your hand to your ear you shift the draperies of the baldaquin so that they will not muffle the slightest murmur the faintest echo For you the days are a succession of sounds some distinct some almost imperceptible you have learned to distinguish them to evaluate their provenance and their distance you know their order you know how long the pauses last you are already awaiting every resonance or creak or clink that is about to reach your tympanum you anticipate it in your imagination if it is late in being produced you grow impatient Your anxiety is not allayed until the thread of hearing is knotted again until the weft of thoroughly familiar sounds is mended at the place where a gap seemed to have opened Vestibules stairways loggias corridors of the palace have high vaulted ceilings every footstep every click of a lock every sneeze echoes rebounds is propagated horizontally along a suite of communicating rooms halls colonnades service entries and also vertically through stairwells cavities skylights conduits flues the shafts of dumbwaiters and all the acoustical routes converge on the throne room Into the great lake of silence where you are floating rivers of air empty stirred by intermittent vibrations Alert intent you intercept them and decipher them The palace is all whorls lobes it is a great ear whose anatomy and architecture trade names and functions pavilions ducts shells labyrinths You are crouched at the bottom in the innermost zone of the palace ear of your own ear the palace is the ear of the king
Here the walls have ears Spies are stationed behind every drapery curtain arras Your spies the agents of your secret service their assignment is to draft detailed reports on the palace conspiracies The court teems with enemies to such an extent that it is increasingly difficult to tell them from friends it is known for sure that the conspiracy that will dethrone you will be made up of your ministers and officials And you know that every secret service has been infiltrated by agents of the opposing secret service Perhaps all the agents in your pay work also for the conspirators are themselves conspirators and thus you are obliged to continue paying them to keep them quiet as long as possible
Voluminous bundles of secret reports are turned out daily by electronic machines and laid at your feet on the steps of the throne It is pointless for you to read them your spies can only confirm the existence of the conspiracies justifying the necessity of your espionage and at the same time they must deny any immediate danger to prove that their spying is effective No one for that matter thinks you must read the reports delivered to you the light in the throne room is inadequate for reading and the assumption is that a king need not read anything the king already knows what he has to know To be reassured you have only to hear the clicking of the electronic machines coming from the secret services offices during the eight hours established by the schedule A swarm of operators feeds new data into the memory banks follows complicated tabulations on the screens pulls from the printers new reports which are always the same report repeated day after day with minimal variations regarding rain or fair weather With minimal variations the same printers turn out the secret bulletins of the conspirators the order of the day for the mutinies the detailed plans for your deposition and execution
You can read them if you wish Or pretend to have read them What the spies eavesdropping records whether at your command or your enemies is the maximum that can be translated into the code formulas inserted into programs specifically devised to produce secret reports conforming to the official models Threatening or comforting as it may be the future that unfolds on those pages no longer belongs to you it does not resolve your uncertainty What you want revealed is something quite different the fear and the hope that keep you awake holding your breath in the night what your ears try to learn about yourself about your fate
This palace when you ascended the throne at the very moment when it became your palace became alien to you Advancing at the head of the coronation procession you walked through it for the last time amid torches and flabella before retiring to this hall which it is neither prudent nor in accord with royal protocol for you to leave What would a king do roaming through corridors offices kitchens There is no longer any place for you in the palace save this hall
The recollection of the other rooms as you saw them the last time quickly faded in your memory and for that matter bedecked as they were for the festivity they were unrecognizable places you would have got lost in them
Sharper in your memory are certain glimpses remaining from the battle when you moved to attack the palace at the head of your then loyal followers (who are now surely preparing to betray you balustrades shattered by mortar explosions breaches in the walls singed by fires pocked by volleys of bullets You can no longer think of it as the same palace in which you are seated on the throne if you were to find yourself in it again that would be a sign that the cycle has completed its course and your ruin is dragging you off in your turn
Still earlier in the years you spent plotting at the court of your predecessor you saw yet another palace because certain apartments and not others were assigned to staff of your rank and because your ambitions focused on the transformations you would bring about in the appearance of those places once you became king The first order every new king issues the moment he is installed on the throne is to alter the arrangement and purpose of every room the furniture the wall hangings the plaster decoration You did this too and you thought you would thus mark your real possession On the contrary you simply cast more memories in the grinder of oblivion from which nothing is ever recovered
To be sure the palace contains some so called historic chambers which you would like to see again even though they have been redone from top to bottom to give them back the antique aspect lost with the passing years But those rooms have recently been opened to tourists You must stay well away from them curled up on your throne you recognize in your calendar of sounds the visiting days by the noise of the buses that stop in the plaza the blathering of the guides the chorus of amazed exclamations in various languages Even on the days when the rooms are closed you are formally advised against venturing there you would stumble over the cleaning squads brooms the buckets the drums of detergent At night you would be lost blocked by the reddening eyes of the alarm signals that bar your path and in the morning you would find yourself trapped by parties armed with video cameras regiments of old ladies with false teeth wearing blue veils over their permanents and obese gentlemen with flowered shirts hanging outside their trousers and with broad brimmed straw hats on their heads
While your palace remains unknown to you and unknowable you can try to reconstruct it bit by bit locating every shuffle every cough at a point in space imagining walls around each acoustical sign ceilings pavements giving form to the void in which the sounds spread and to the obstacles they encounter allowing the sounds themselves to prompt the images A silvery tinkle is not simply a spoon that has fallen from the saucer where it was balanced but is also a corner of a table covered with a linen cloth with lace fringe in the light from a high window over which boughs of wistaria hang a soft thud is not only a cat that has leaped upon a mouse but is also a damp moldy space beneath some steps closed off by planks bristling with nails
The palace is a construction of sounds that expands one moment and contracts the next tightens like a tangle of chains You can move through it guided by the echoes localizing creaks clangs curses pursuing breaths rustles grumbles gurgles
The palace is the body of the king Your body sends you mysterious messages which you receive with fear with anxiety In an unknown part of this body a menace is lurking your death is already stationed there the signals that reach you warn you perhaps of a danger buried in your own interior The body seated askew on the throne is no longer yours you have been deprived of its use ever since the crown encircled your head now your person is spread out through this dark alien residence that speaks to you in riddles But has anything really changed Even before you knew little or nothing about what you were And you were afraid of it as you are now
The palace is a weft of regular sounds always the same like the hearts beat from which other sounds stand out discordant unexpected A door slams Where Someone runs down steps a stifled cry is heard Long tense minutes pass A prolonged shrill whistle resounds perhaps from a window in the tower Another whistle replies from below Then silence
")


(setq embed-size 10) ;; Size of embedding
(setq window-size 2) ;; Size of skip-gram window
(setq lr 0.02) ;; Learning rate
(setq num-iterations 200) ;; Number of iterations

;; Create and train word2vec model
;; Returns pair (encoding, model), where encoding is a hash table mapping words to one-hot encodings,
;; and model is the pair of weights in the trained model, (w1, w2).
(setq w2v (word2vec example num-iterations embed-size window-size lr))

;; Print 5 most similar words to "tabulae"
(format t "~a~%" (word-sim "king" 10 w2v))




