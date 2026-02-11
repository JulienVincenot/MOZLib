;;;;=========================================================
;;;;
;;;;  PATCH-WORK
;;;;  By Mikael Laurson, Jacques Duthen, Camilo Rueda.
;;;;  (c) 1986-1992 IRCAM 
;;;;
;;;;  revision finale -  dŽcembre 92 -  Tristan Murail
;;;;  PWGL revision -  February 07 -  Mikael Laurson
;;;;=========================================================

;; =============================================================================-======
;; [jack] 18.01.91               EPW-Menus.Lisp
;; =============================================================================-======

;; Esquisse menus 

(in-package :ccl)

(ccl::add-PWGL-user-menu 
 '(:menu-component
   ("Esquisse"
    ("Intervals" 
     ("Generation" (pw::inter->chord pw::chord->inter pw::all-series combinatorial-interv::find-intervals))
     ("Treatment" (pw::remove-int pw::transpoct pw::mul-chord pw::all-inversions pw::auto-transp 
                                  pw::best-transp pw::best-inv))
     ("Analysis" (pw::exist-note? pw::midi-center pw::sort-mod)))
    ("Freq harmony"
     ("Harm Series" (pw::harm-series pw::nth-harm pw::nth-overtones))
     ("Modulations" (pw::fm-spec pw::freq-mod pw::fm-ratio pw::ring-mod pw::ring-harm))
     ("Treatment" (pw::fshift pw::fshift-proc pw::fdistor pw::fdistor-proc pw::distor-ext))
     ("Analysis" (pw::harm-dist pw::closest-harm  pw::best-freq)
                 (:menu-component (pw::virt-fund))))
    ("Utilities" (pw::l-distor/2 pw::l-distor/3 pw::l*line pw::l*curb/2 pw::l*curb/3 pw::densifier) 
                 (:menu-component (pw::min->sec pw::sec->min))
                 (:menu-component (pw::special-char pw::text-format pw::insert-special))
                 ))))

#|
(ccl::construct-PWGL-library-reference
  "Esquisse"
  ' (("Intervals" 
     ("Generation" (pw::inter->chord pw::chord->inter pw::all-series combinatorial-interv::find-intervals))
     ("Treatment" (pw::remove-int pw::transpoct pw::mul-chord pw::all-inversions pw::auto-transp 
                                  pw::best-transp pw::best-inv))
     ("Analysis" (pw::exist-note? pw::midi-center pw::sort-mod)))
    ("Freq harmony"
     ("Harm Series" (pw::harm-series pw::nth-harm pw::nth-overtones))
     ("Modulations" (pw::fm-spec pw::freq-mod pw::fm-ratio pw::ring-mod pw::ring-harm))
     ("Treatment" (pw::fshift pw::fshift-proc pw::fdistor pw::fdistor-proc pw::distor-ext))
     ("Analysis" (pw::harm-dist pw::closest-harm  pw::best-freq)
                 (:menu-component (pw::virt-fund))))
    ("Utilities" (pw::l-distor/2 pw::l-distor/3 pw::l*line pw::l*curb/2 pw::l*curb/3 pw::densifier) 
                 (:menu-component (pw::min->sec pw::sec->min))
                 (:menu-component (pw::special-char pw::text-format pw::insert-special))
                 )))
|#