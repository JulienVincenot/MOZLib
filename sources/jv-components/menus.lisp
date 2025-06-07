(in-package :jv-components)

;; define a user menu
(ccl::add-PWGL-user-menu 
 '(:menu-component
   ("JV-Components"
	
    ("Exploration"
            ((test)))
    ("Development"
            ("Int-Profiles"
             ((groupings))
             ((metamorpher))
             ((morphogenetic-schemes)))
            ("Symbolic-Sequences"
             ((s-interp-naive))
             ((s-interp-forms))
             ))
    ("Musical Contents"
            ((test3)))
    ("Tools"
            ("BPFs"
             ((bpf-cropping))
             ((bpf-explicit-process))
             ((bpf-norma-sizes))
             ((bpf-short-filter))
             ((bpf-reduce-structure)))
            ((symbolic-resampler))
            ((pwgl-unpack))
            ((pwgl-urn))
            ((scale-list))
            
            ("Morphological Predicates"
             ((category-p))
             ((dist-euclid-p))
             ((close-p))
             ((contrast-close-p)))
            ("Time-sign/Tempo/Duration"
             ((duration2tempo))
             ((timesig2duration))
             ((duration2timesig)))
            ((change-staff-keys))
            ((group-equals))
            ((coll2lisp)))
     


)))

