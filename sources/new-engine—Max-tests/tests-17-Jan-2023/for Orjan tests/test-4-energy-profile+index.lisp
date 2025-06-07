( iter ( for j from 1 to 100 by 1 ) 
       ( collect ( cl-user::engine_v3.14 12 
                                         ( quote ( 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 ) ) 
                                         'integer 
                                         ( list ( cl-user::format-RL-rule 
                                                 #' ( lambda ( &rest x ) ( IF ( EQUALP ( MORPHOLOGIE::CONTRASTS-LEV.1 ( reverse x ) ) 
                                                                                       ( JBS-CMI::FIRST-N ( MORPHOLOGIE::CONTRASTS-LEV.1 ' ( A B C B A B C D E D C B ) ) ( length x ) ) ) T ) ) 0 ) 
                                                ( cl-user::format-indexrule #' ( lambda ( x ) ( = x 7 ) ) ' ( 9 ) ) ) 
                                         'nil 2 t ) ) )