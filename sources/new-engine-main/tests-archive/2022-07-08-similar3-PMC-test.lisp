(defvar *rulecounter* 0)

(print ( time
					( omcs::pmc
						( quote
							(
								( 1 2 3 4 5 6 7 8 9 10 11 12 13 ) ( 1 2 3 4 5 6 7 8 9 10 11 12 13 )
								( 1 2 3 4 5 6 7 8 9 10 11 12 13 ) ( 1 2 3 4 5 6 7 8 9 10 11 12 13 )
								( 1 2 3 4 5 6 7 8 9 10 11 12 13 ) ( 1 2 3 4 5 6 7 8 9 10 11 12 13 )
								( 1 2 3 4 5 6 7 8 9 10 11 12 13 ) ( 1 2 3 4 5 6 7 8 9 10 11 12 13 )
								( 1 2 3 4 5 6 7 8 9 10 11 12 13 ) ( 1 2 3 4 5 6 7 8 9 10 11 12 13 )
								( 1 2 3 4 5 6 7 8 9 10 11 12 13 ) ( 1 2 3 4 5 6 7 8 9 10 11 12 13 )
								( 1 2 3 4 5 6 7 8 9 10 11 12 13 ) ( 1 2 3 4 5 6 7 8 9 10 11 12 13 )
								( 1 2 3 4 5 6 7 8 9 10 11 12 13 ) ( 1 2 3 4 5 6 7 8 9 10 11 12 13 )
							)
						)
						( pw::backquote
							(
								( i1
									( omcs::?if
										(progn (incf *rulecounter*) (print (list '1st_rule *rulecounter* i1)) t)
									)
								)
								( omcs::* ?1 ?2 ?3
									( omcs::?if
										( >
											(- ?1 ?3)
										0 )
									)
								)
								( omcs::* ?1 ?2 ?3 ?4 ?5 ?6
									( omcs::?if
										( =
											(- ?1 ?6)
										4 )
									)
								)
								( i1
									( omcs::?if
										(progn (incf *rulecounter*) (print (list '2nd_rule *rulecounter* i1)) t)
									)
								)

							)
						)
					:heuristic-rules
						( )
					:rnd?
						( )
					:sols-mode 1 )
				))