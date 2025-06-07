(defvar *rulecounter* 0)

(print ( time
					( omcs::pmc
						( quote
							(
								( 1 2 3 4 5 6 7 8 9 10 11 12 )
								( 1 2 3 4 5 6 7 8 9 10 11 12 )
								( 1 2 3 4 5 6 7 8 9 10 11 12 )
								( 1 2 3 4 5 6 7 8 9 10 11 12 )
								( 1 2 3 4 5 6 7 8 9 10 11 12 )
								( 1 2 3 4 5 6 7 8 9 10 11 12 )
								( 1 2 3 4 5 6 7 8 9 10 11 12 )
								( 1 2 3 4 5 6 7 8 9 10 11 12 )
								( 1 2 3 4 5 6 7 8 9 10 11 12 )
								( 1 2 3 4 5 6 7 8 9 10 11 12 )
								( 1 2 3 4 5 6 7 8 9 10 11 12 )
								( 1 2 3 4 5 6 7 8 9 10 11 12 )
							)
						)
						( pw::backquote
							(
								( i6
									( omcs::?if
										(progn (incf *rulecounter*) (print *rulecounter*) t)
									)
								)
								( i2 i6
									( omcs::?if
										( =
											( - i2 i6 )
										6 )
									)
								)
								( omcs::* ?1 ?2 ?3
									( omcs::?if
										( >
											( - ?1 ?3 )
										0 )
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