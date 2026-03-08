( iter ( for j from 1 to 10000 by 1 ) 
       ( collect 
        ( cl-user::engine_v3.14 12 
                                ( quote ( 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 ) ) 
                                'integer 
                                ( list ( cl-user::format-RL-rule 
                                        #'( lambda ( &rest x ) ( NOT ( MEMBER ( first x ) ( rest x ) :TEST 'EQUALP ) ) ) 0 ) ) 
                                'nil 2 t ) ) )