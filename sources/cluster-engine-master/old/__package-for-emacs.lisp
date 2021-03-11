(defpackage cluster-engine (:use :common-lisp :sb-ext))

(in-package :cluster-engine)

;;;  :pw  ;;;;;
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/01.domain.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/02.engine.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/03.Fwd-rules.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/04.Backtrack-rules.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/05.rules-interface.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/05a.rules-interface-1engine.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/05b.rules-interface-2engines.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/05c.rules-interface-2engines.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/05d.rules-interface-2engines.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/05e.rules-interface-2engines.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/05f.rules-interface-3engines.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/05g.rules-interface-any-n-engines.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/05h.rules-higher-level.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/05i.rules-stop-search.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/05n.rules-interface-nn-engines.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/06.heuristic-rules-interface.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/06a.heuristic-rules-interface-1engine.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/06b.heuristic-rules-interface-2engines.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/06c.heuristic-rules-interface-2engines.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/06d.heuristic-rules-interface-2engines.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/06e.heuristic-rules-interface-2engines.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/06f.heuristic-rules-interface-3engines.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/06g.heuristic-rules-interface-any-n-engines.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/07.backjumping.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/08.decode.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/09.utilities.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/09b.markov-tools.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/09c.cluster-energy-profile.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/12.debug-tools.lisp")
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/13.convert-pmc-rules.lisp")

(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/_000.main-interface.lisp")

;;;;;; PW and Co.
(load "/Users/julienvincenot/Max-PW-Bach-User/pure-lisp-libs/adaptations-pure-lisp/iter.lisp")
(load "/Users/julienvincenot/Max-PW-Bach-User/pure-lisp-libs/adaptations-pure-lisp/pw-common-language.lisp")
(load "/Users/julienvincenot/Max-PW-Bach-User/pure-lisp-libs/adaptations-pure-lisp/pw_profile_functions.lisp")

;;;;;; gen-domains
(load "/Users/julienvincenot/Dropbox/cluster-to-Max-new/cluster-engine_PURELISP_sources new-version test/_001.gen_domains.lisp")


(save-lisp-and-die "/Volumes/Data/Desktop/cluster13.core")

; (print (ClusterEngine  10 t nil nil '((4 4)) '((1/4)(1/8)) '((50) (51)) '((1/4)(1/8)) '((50) (51))))