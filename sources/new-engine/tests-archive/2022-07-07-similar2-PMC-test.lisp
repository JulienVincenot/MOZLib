(defvar *rulecounter* 0)

(print ( time
					( omcs::pmc
						( quote
							(
								( 1 2 3 4 5 6 7 8 9 10 11 12 )
								( 1 2 3 4 5 6 7 8 9 10 11 12 )
							)
						)
						( pw::backquote
							(
								( i1
									( omcs::?if
										(progn (incf *rulecounter*) (print (list '1st_rule *rulecounter* i1)) t)
									)
								)
								( i1
									( omcs::?if
										( >
											i1
										6 )
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