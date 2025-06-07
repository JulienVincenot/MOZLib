{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 6,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 79.0, 948.0, 669.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-7",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 151.0, 268.0, 661.0, 45.0 ],
					"text" : "PMC is 'monophonic' by nature, so we need a little help from Iterate ! Let's consider the score\nvoice by voice for now, and for each of them generate a new melodic profile that follows \nthe original as much as possible, BUT restraining the maximum size of intervals."
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-1",
					"linecount" : 10,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 50.403301239013672, 104.508007049560547, 781.0, 135.0 ],
					"presentation_linecount" : 11,
					"text" : "The idea is the following : first take a polyphonic bach.score containing some music already.\nNot just pitch and rhythm, but other details in slots like dynamics, annotations, etc.\n\nWhether the score was written by hand or generated, it is already there and we like it, but we realized\nsome parts are incorrect or not easy to perform for musicians. A simple case : some interval jumps are too big,\nbut we want to keep the chain of pitch classes from the original untouched.\n\nWe can use constraints to turn this score into a 'model' to follow in order to generate, perhaps, \na better version of itself. This could be done easily with Örjan Sandred's CLUSTERengine,\nwhich is more capable with polyphonic scores, but let's stick to the venerable PMC for now. "
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 292.0, 347.0, 426.0, 19.0 ],
					"text" : "This example patch is bigger than usual, double click to open !"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 25.100000000000001,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 6,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 37.0, 79.0, 1263.0, 758.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Arial",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 0,
						"enablevscroll" : 0,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 6,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 104.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-28",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 183.0, 100.0, 157.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80900
													}
,
													"text" : "bach.keys domain @keep 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 183.0, 145.0, 93.0, 22.0 ],
													"text" : "s score_domain"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-30",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 183.0, 40.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 1152.0, 733.0, 101.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p update_domain"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 6,
									"outlettype" : [ "", "", "", "", "", "" ],
									"patching_rect" : [ 81.0, 277.0, 100.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80900
									}
,
									"text" : "bach.beatunbox"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 9.19999672472477, 75.537220080440306, 54.0, 22.0 ],
									"text" : "deferlow"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "moz_four.png" ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-26",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "moz_helpnum.maxpat",
									"numinlets" : 0,
									"numoutlets" : 0,
									"offset" : [ 2.0, 3.0 ],
									"patching_rect" : [ 565.766680955886841, 3.724012494087219, 33.0, 33.71795654296875 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-22",
									"linecount" : 8,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 746.966680705547333, 183.78619153081911, 467.0, 109.0 ],
									"text" : "Once again, you may search in the bach.reg how many occurrences of \nthe 'melody' variable have replaced previously fixed values.\n\nFinally, click the top bang to see the result. The scores might be\na bit difficult to read with that many voices... but you can observe both the final score on the right and a pile of all the 'rhythmless'\nprofiles on the left. You can also click the toggle on an off repeatedly to see better which notes have been modified."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-15",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 738.400010824203491, 57.537220080440306, 492.0, 58.0 ],
									"text" : "This second part is pretty straightforward compared with example (a).\nHere a single list is traversed, represented by the 'melody' variable :\nthe list of pitch profiles (one for each voice) from the original score, \nis now taken one by one as model for the PMC to re-generate new versions."
								}

							}
, 							{
								"box" : 								{
									"args" : [ "moz_three.png" ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-9",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "moz_helpnum.maxpat",
									"numinlets" : 0,
									"numoutlets" : 0,
									"offset" : [ 2.0, 3.0 ],
									"patching_rect" : [ 738.400010824203491, 34.800000488758087, 33.0, 33.71795654296875 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-7",
									"linecount" : 8,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 168.621343299746513, 608.0, 371.0, 109.0 ],
									"text" : "Now click the button on the top left, \nto make sure everything works as expected. \nYou can compare with the first part of the original \nand observe which notes have been transposed and why.\n\nCopy the content of the bach.reg (the Lisp code part)\ninto the one in the second part. We need to do some Lisp hacking again..."
								}

							}
, 							{
								"box" : 								{
									"args" : [ "moz_two.png" ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-1",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "moz_helpnum.maxpat",
									"numinlets" : 0,
									"numoutlets" : 0,
									"offset" : [ 2.0, 3.0 ],
									"patching_rect" : [ 36.69999672472477, 3.724012494087219, 33.0, 33.71795654296875 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"args" : [ "moz_one.png" ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-2",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "moz_helpnum.maxpat",
									"numinlets" : 0,
									"numoutlets" : 0,
									"offset" : [ 2.0, 3.0 ],
									"patching_rect" : [ 220.621343299746513, 315.189694294887317, 33.0, 33.71795654296875 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-6",
									"linecount" : 17,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 220.621343299746513, 341.5, 333.0, 224.0 ],
									"text" : "The left part of the patch only has one job: \nsetting up an 'example' for our PMC loop  \nto follow :\n\na) Extracting pitches of a single voice \n  (the first one) from our example score.\n\nb) Using JBSrules to turn this melodic profile \n   into a faithful 'model' : mk-fix-profile &    \n   mk-profile-pitch-modulo will make sure both\n   the shape AND structure of pitch classes\n   will be preserved.\n\nc) Adding one more rule that forbids intervals\n   bigger than the octave. You may try with   \n   other combinations of rules you think \n   might be appropriate to improve the model."
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 6,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 104.0, 348.0, 203.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-32",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 167.80000327527523, 40.533346056938171, 117.0, 22.0 ],
													"text" : "loadmess collapse 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 12.0, 14.533346056938171, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-42",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 12.0, 40.533346056938171, 132.0, 22.0 ],
													"text" : "to_chord tonedivision 8"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-36",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 72.899994275275219, 122.533322839344009, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"source" : [ "obj-42", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 102.199996999999996, 576.800011217594147, 34.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 6,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 0.0, 0.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-28",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 126.0, 93.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80005
													}
,
													"text" : "bach.flat @out t"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 66.0, 22.0 ],
													"text" : "bach.* 100"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-22",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.000000275275234, 40.000015485488916, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-30",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.000000275275234, 208.000015485488916, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-28", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 9.19999672472477, 576.800011217594147, 86.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p to_midicents"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 6,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 79.0, 379.0, 379.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 19.600001289648048, 56.0, 65.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80104
													}
,
													"text" : "bach.nth 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-62",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 19.599999710917473, 247.802203426792005, 88.16666841506958, 22.0 ],
													"text" : "t l l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-32",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 19.599999710917473, 81.600734475597335, 54.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80104
													}
,
													"text" : "bach.flat"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-31",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 19.599999710917473, 137.401101713396002, 55.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 0,
														"versionnumber" : 80104
													}
,
													"text" : "bach.reg"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 163.500013113021851, 81.603935056947876, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 163.500013113021851, 110.270598584436584, 193.0, 22.0 ],
													"text" : "to_chord tonedivision 8, collapse 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-40",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 19.599999710917473, 284.602570664590644, 71.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80104
													}
,
													"text" : "bach.length"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-39",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 19.599999710917473, 174.20146895119467, 85.0, 22.0 ],
													"text" : "bach.approx 8"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-37",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 19.599999710917473, 211.001836188993337, 65.0, 22.0 ],
													"text" : "bach./ 100"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-1",
													"lockeddragscroll" : 0,
													"lockedsize" : 0,
													"maxclass" : "bpatcher",
													"name" : "moz.chord_view.maxpat",
													"numinlets" : 2,
													"numoutlets" : 2,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 147.0, 149.0, 151.0, 202.0 ],
													"varname" : "bp393203478651",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-9",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 19.600001289648048, 19.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-14",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 88.766668125987053, 321.40293790238934, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-15",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 19.766665836339001, 321.40293790238934, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"midpoints" : [ 29.099999710917473, 129.59379655122757, 156.5, 129.59379655122757 ],
													"order" : 1,
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"order" : 0,
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 0 ],
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-40", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-62", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 0 ],
													"source" : [ "obj-62", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 97.19999672472477, 341.5, 115.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p get_length&profile"
								}

							}
, 							{
								"box" : 								{
									"bwcompatibility" : 80100,
									"clefs" : [ "G", "G", "G", "G", "Tenor", "Tenor", "G", "Tenor", "G", "G8va", "G" ],
									"defaultnoteslots" : [ "null" ],
									"enharmonictable" : [ "default", "default", "default", "default", "default", "default", "default", "default", "default", "default", "default" ],
									"fontface" : 1,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidevoices" : [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ],
									"id" : "obj-138",
									"keys" : [ "C", "C", "C", "C", "C", "C", "C", "C", "C", "C", "C" ],
									"loop" : [ "[", 1, 1, 0, "]", "[", 1, 1, "1/4", "]" ],
									"maxclass" : "bach.score",
									"midichannels" : [ 1, 3, 4, 5, 7, 8, 9, 13, 16, 17, 20 ],
									"notationstyles" : [ "et", "et", "et", "et", "et", "et", "et", "et", "et", "et", "et" ],
									"numinlets" : 7,
									"numoutlets" : 9,
									"numparts" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ],
									"numvoices" : 11,
									"out" : "nnnnnnnnn",
									"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 127.162010133266449, 71.342628002166748, 248.951929152011871, 185.457375466823578 ],
									"pitcheditrange" : [ "null" ],
									"presentation" : 1,
									"presentation_rect" : [ 2.0, 3.0, 1600.0, 892.0 ],
									"showmarkers" : 0,
									"showmeasurenumbers" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ],
									"stafflines" : [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"tonedivision" : 4,
									"versionnumber" : 80900,
									"voicenames" : [ "Fl", "Ob", "Ob", "ClBb", "Bn", "Bn", "TpC", "Tbn", "Vn", "Vn", "Va" ],
									"voicespacing" : [ 0.0, 26.0, 26.0, 26.0, 26.0, 26.0, 26.0, 26.0, 26.0, 26.0, 26.0, 26.0 ],
									"vzoom" : 30.0,
									"whole_score_data_0000000000" : [ "score", "[", "slotinfo", "[", 1, "[", "name", "velocity envelope", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 2, "[", "name", "slot function", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 3, "[", "name", "slot intlist", "]", "[", "type", "intlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 4, "[", "name", "slot floatlist", "]", "[", "type", "floatlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 5, "[", "name", "slot int", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 6, "[", "name", "slot float", "]", "[", "type", "float", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 7, "[", "name", "detune", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 3227058176, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "mc", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 8, "[", "name", "relpath", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080213504, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 9, "[", "name", "abspath", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080213504, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 10, "[", "name", "slot llll", "]", "[", "type", "llll", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 11, "[", "name", "slot 11", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 12, "[", "name", "slot 12", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 13, "[", "name", "slot 13", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 14, "[", "name", "slot 14", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 15, "[", "name", "slot 15", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 16, "[", "name", "slot 16", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 17, "[", "name", "slot 17", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 18, "[", "name", "slot 18", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 19, "[", "name", "slot 19", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 20, "[", "name", "dynamics", "]", "[", "type", "dynamics", "]", "[", "key", "d", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 21, "[", "name", "lyrics", "]", "[", "type", "text", "]", "[", "key", "l", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 22, "[", "name", "articulations", "]", "[", "type", "articulations", "]", "[", "key", "a", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 23, "[", "name", "notehead", "]", "[", "type", "notehead", "]", "[", "key", "h", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 24, "[", "name", "annotation", "]", "[", "type", "text", "]", "[", "key", "t", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 25, "[", "name", "slot 25", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 26, "[", "name", "slot 26", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 27, "[", "name", "slot 27", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 28, "[", "name", "slot 28", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 29, "[", "name", "slot 29", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 30, "[", "name", "slot 30", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "]", "[", "commands", "[", 1, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 2, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 3, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 4, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 5, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "]", "[", "markers", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 866784783, 1087388767, "seg1.sol1", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 545392673, 1087406600, "seg2.sol17", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3905401101, 1087430375, "seg3.sol1", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1957570128, 1087498735, "seg4.sol3", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3944357721, 1087507651, "seg5.sol21", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3321051810, 1087581955, "seg6.sol4", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1344003372, 1087680038, "seg7.sol5", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1733569566, 1087709758, "seg8.sol19", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2726963363, 1087801896, "seg9.sol19", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4100184198, 1087816755, "seg10.sol1", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 97391548, 1087828646, "seg11.sol71", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 808349854, 1087840533, "seg12.sol70", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1460873230, 1087911866, "seg13.sol47", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3973575185, 1088220968, "seg14.sol1", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3652183074, 1088238801, "seg15.sol1", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3282095190, 1088247719, "seg16.sol50", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1636178018, 1088259608, "seg17.sol41", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3301573499, 1088286357, "seg18.sol48", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 97391548, 1088505702, "seg19.sol19", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1908874354, 1088538396, "seg20.sol48", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3243138570, 1088563659, "seg21.sol13", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2444527871, 1088574061, "seg22.sol27", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3437921667, 1088578519, "seg23.sol62", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3467139133, 1088636476, "seg24.sol7", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 311652956, 1088646880, "seg25.sol12", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4148879973, 1088678086, "seg26.sol26", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1840700270, 1088687003, "seg27.sol52", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3983314340, 1088721183, "seg28.sol1", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2356875477, 1088771710, "seg29.sol1", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3213921106, 1088789542, "seg30.sol28", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3691139695, 1088796973, "seg31.sol22", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1246611823, 1088819264, "seg32.sol82", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4090445043, 1088933692, "seg33.sol77", "none", "]", "]", "[", "midichannels", 1, 3, 4, 5, 7, 8, 9, 13, 16, 17, 20, "]", "[", "articulationinfo", "]", "[", "noteheadinfo", "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085876992, 100, 1, "[", "slots", "[", 7, 43, "]", "[", 8, "/Winds/Flute/sforzato/Fl-sfz-E4-fp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/sforzato/Fl-sfz-E4-fp-N-N.wav", "]", "[", 20, "[", "auto", "fp", "=", "]", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085876992, 100, 0, "[", "slots", "[", 8, "/Winds/Flute/sforzato/Fl-sfz-E4-fp-N-N.wav", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312704, 100, 1, "[", "slots", "[", 7, 45, "]", "[", 8, "/Winds/Flute/flatterzunge_to_ordinario/Fl-flatt_ord-A5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/flatterzunge_to_ordinario/Fl-flatt_ord-A5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt_ord", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312704, 100, 1, "[", "slots", "[", 8, "/Winds/Flute/flatterzunge_to_ordinario/Fl-flatt_ord-A5-mf-N-N.wav", "]", "[", 24, "flatt_ord", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312704, 100, 0, "[", "slots", "[", 8, "/Winds/Flute/flatterzunge_to_ordinario/Fl-flatt_ord-A5-mf-N-N.wav", "]", "[", 24, "flatt_ord", "]", "]", 0, "]", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086339200, 100, 0, "[", "slots", "[", 7, 5, "]", "[", 8, "/Winds/Flute/aeolian_and_ordinario/Fl-aeol_and_ord-B5-ff-N-T27d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/aeolian_and_ordinario/Fl-aeol_and_ord-B5-ff-N-T27d.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "]", "[", "-1/16", 0, "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086108928, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Flute/aeolian_and_ordinario/Fl-aeol_and_ord-C#5-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/aeolian_and_ordinario/Fl-aeol_and_ord-C#5-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 2, "]", "[", "-3/8", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086308096, 100, 0, "[", "slots", "[", 7, 27, "]", "[", 8, "/Winds/Flute/aeolian_and_ordinario/Fl-aeol_and_ord-A5-ff-N-T21d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/aeolian_and_ordinario/Fl-aeol_and_ord-A5-ff-N-T21d.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086082560, 100, 1, "[", "slots", "[", 7, 46, "]", "[", 8, "/Winds/Flute/ordinario/Fl-ord-C5-ff-N-T19d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/ordinario/Fl-ord-C5-ff-N-T19d.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 2, "]", "[", "3/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086082560, 100, 0, "[", "slots", "[", 8, "/Winds/Flute/ordinario/Fl-ord-C5-ff-N-T19d.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086311936, 100, 1, "[", "slots", "[", 7, 42, "]", "[", 8, "/Winds/Flute/flatterzunge/Fl-flatt-A5-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/flatterzunge/Fl-flatt-A5-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086311936, 100, 0, "[", "slots", "[", 8, "/Winds/Flute/flatterzunge/Fl-flatt-A5-ff-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086128384, 100, 1, "[", "slots", "[", 7, 25, "]", "[", 8, "/Winds/Flute/trill_major_second_up/Fl-trill_maj_second-D5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/trill_major_second_up/Fl-trill_maj_second-D5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086128384, 100, 0, "[", "slots", "[", 8, "/Winds/Flute/trill_major_second_up/Fl-trill_maj_second-D5-mf-N-N.wav", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 1, "[", "slots", "[", 7, 30, "]", "[", 8, "/Winds/Flute/ordinario/Fl-ord-A#5-ff-N-T21d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/ordinario/Fl-ord-A#5-ff-N-T21d.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 1, "[", "slots", "[", 8, "/Winds/Flute/ordinario/Fl-ord-A#5-ff-N-T21d.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 0, "[", "slots", "[", 8, "/Winds/Flute/ordinario/Fl-ord-A#5-ff-N-T21d.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085927680, 100, 0, "[", "slots", "[", 7, 41, "]", "[", 8, "/Winds/Oboe/double_trill_minor_second_up/Ob-dbl_trill_min_second-F#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/double_trill_minor_second_up/Ob-dbl_trill_min_second-F#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "dbl_trill_min_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086327040, 100, 1, "[", "slots", "[", 7, 10, "]", "[", 8, "/Winds/Oboe/trill_major_second_up/Ob-trill_maj_second-A#5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/trill_major_second_up/Ob-trill_maj_second-A#5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086327040, 100, 0, "[", "slots", "[", 8, "/Winds/Oboe/trill_major_second_up/Ob-trill_maj_second-A#5-mf-N-N.wav", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-3/4", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086114816, 100, 0, "[", "slots", "[", 7, -28, "]", "[", 8, "/Winds/Oboe/sforzato/Ob-sfz-D5-f-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/sforzato/Ob-sfz-D5-f-N-N.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/20", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086082560, 100, 0, "[", "slots", "[", 7, 46, "]", "[", 8, "/Winds/Oboe/lip_glissando/Ob-lip_gl_asc_slow-C5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/lip_glissando/Ob-lip_gl_asc_slow-C5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "lip_gl_asc_slow", "]", "]", 0, "]", 0, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086108928, 100, 1, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 20, "[", "auto", "ffpp", "=", "]", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 2, "]", "[", "3/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086108928, 100, 0, "[", "slots", "[", 8, "/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-3/16", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086331392, 100, 0, "[", "slots", "[", 7, 44, "]", "[", 8, "/Winds/Oboe/trill_minor_second_up/Ob-trill_min_second-A#5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/trill_minor_second_up/Ob-trill_min_second-A#5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_min_second", "]", "]", 0, "]", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086108928, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 20, "[", "auto", "ffpp", "=", "]", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 1, "[", "slots", "[", 7, 30, "]", "[", 8, "/Winds/Oboe/flatterzunge/Ob-flatt-A#5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/flatterzunge/Ob-flatt-A#5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 1, "[", "slots", "[", 8, "/Winds/Oboe/flatterzunge/Ob-flatt-A#5-mf-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 0, "[", "slots", "[", 8, "/Winds/Oboe/flatterzunge/Ob-flatt-A#5-mf-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086104576, 100, 1, "[", "slots", "[", 7, 32, "]", "[", 8, "/Winds/Oboe/sforzato/Ob-sfz-C#5-f-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/sforzato/Ob-sfz-C#5-f-N-R100d.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086104576, 100, 0, "[", "slots", "[", 8, "/Winds/Oboe/sforzato/Ob-sfz-C#5-f-N-R100d.wav", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-3/4", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086108928, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 20, "[", "auto", "ffpp", "=", "]", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "-1/6", 0, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086337408, 100, 1, "[", "slots", "[", 7, -9, "]", "[", 8, "/Winds/Oboe/trill_major_second_up/Ob-trill_maj_second-B5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/trill_major_second_up/Ob-trill_maj_second-B5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086337408, 100, 0, "[", "slots", "[", 8, "/Winds/Oboe/trill_major_second_up/Ob-trill_maj_second-B5-mf-N-N.wav", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086108928, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 20, "[", "auto", "ffpp", "=", "]", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086342400, 100, 0, "[", "slots", "[", 7, 30, "]", "[", 8, "/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-B5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-B5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[" ],
									"whole_score_data_0000000001" : [ 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-3/4", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086114816, 100, 1, "[", "slots", "[", 7, -28, "]", "[", 8, "/Winds/Clarinet_Bb/aeolian_and_ordinario/ClBb-aeol_and_ord-D5-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/aeolian_and_ordinario/ClBb-aeol_and_ord-D5-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086114816, 100, 0, "[", "slots", "[", 8, "/Winds/Clarinet_Bb/aeolian_and_ordinario/ClBb-aeol_and_ord-D5-pp-N-N.wav", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/12", 0, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085825024, 100, 1, "[", "slots", "[", 7, 40, "]", "[", 8, "/Winds/Clarinet_Bb/aeolian_and_ordinario/ClBb-aeol_and_ord-D4-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/aeolian_and_ordinario/ClBb-aeol_and_ord-D4-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/20", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085825024, 100, 0, "[", "slots", "[", 8, "/Winds/Clarinet_Bb/aeolian_and_ordinario/ClBb-aeol_and_ord-D4-pp-N-N.wav", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "[", "-1/10", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086343040, 100, 0, "[", "slots", "[", 7, 35, "]", "[", 8, "/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-B5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-B5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086306560, 100, 1, "[", "slots", "[", 7, 21, "]", "[", 8, "/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-A5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-A5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 2, "]", "[", "3/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086306560, 100, 0, "[", "slots", "[", 8, "/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-A5-mf-N-N.wav", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086343424, 100, 0, "[", "slots", "[", 7, 38, "]", "[", 8, "/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-B5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-B5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312448, 100, 1, "[", "slots", "[", 7, 44, "]", "[", 8, "/Winds/Clarinet_Bb/flatterzunge/ClBb-flatt-A5-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/flatterzunge/ClBb-flatt-A5-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312448, 100, 1, "[", "slots", "[", 8, "/Winds/Clarinet_Bb/flatterzunge/ClBb-flatt-A5-ff-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312448, 100, 0, "[", "slots", "[", 8, "/Winds/Clarinet_Bb/flatterzunge/ClBb-flatt-A5-ff-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085927680, 100, 0, "[", "slots", "[", 7, 41, "]", "[", 8, "/Winds/Bassoon/sforzato/Bn-sfz-F#4-fp-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/sforzato/Bn-sfz-F#4-fp-N-R100d.wav", "]", "[", 20, "[", "auto", "fp", "=", "]", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085956864, 100, 1, "[", "slots", "[", 7, -45, "]", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-G#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-G#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085956864, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-G#4-mf-N-N.wav", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085876480, 100, 0, "[", "slots", "[", 7, 41, "]", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897728, 100, 1, "[", "slots", "[", 7, 24, "]", "[", 8, "/Winds/Bassoon/note_lasting/Bn-lasting_one_sec-F4-mf-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/note_lasting/Bn-lasting_one_sec-F4-mf-N-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "lasting_one_sec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897728, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/note_lasting/Bn-lasting_one_sec-F4-mf-N-R100u.wav", "]", "[", 24, "lasting_one_sec", "]", "]", 0, "]", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085952512, 100, 1, "[", "slots", "[", 7, 38, "]", "[", 8, "/Winds/Bassoon/crescendo_to_decrescendo/Bn-cre_dec-G4-ppmfpp-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/crescendo_to_decrescendo/Bn-cre_dec-G4-ppmfpp-N-R100u.wav", "]", "[", 20, "[", "auto", "ppmfpp", "=", "]", "]", "[", 24, "cre_dec", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085952512, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/crescendo_to_decrescendo/Bn-cre_dec-G4-ppmfpp-N-R100u.wav", "]", "[", 24, "cre_dec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085952512, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/crescendo_to_decrescendo/Bn-cre_dec-G4-ppmfpp-N-R100u.wav", "]", "[", 24, "cre_dec", "]", "]", 0, "]", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085934592, 100, 0, "[", "slots", "[", 7, -32, "]", "[", 8, "/Winds/Bassoon/flatterzunge/Bn-flatt-G4-mf-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/flatterzunge/Bn-flatt-G4-mf-N-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085876992, 100, 1, "[", "slots", "[", 7, 43, "]", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085876992, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/10", 0, "]", "[", "[", "leveltype", 2, "]", "[", "[", "leveltype", 2, "]", "[", "1/20", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878528, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086108928, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-C#5-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-C#5-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "]", "[", "-1/10", 0, "]", "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-3/16", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085843456, 100, 1, "[", "slots", "[", 7, 12, "]", "[", 8, "/Winds/Bassoon/staccato/Bn-stacc-D#4-mf-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/staccato/Bn-stacc-D#4-mf-N-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085843456, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/staccato/Bn-stacc-D#4-mf-N-R100u.wav", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085843456, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/staccato/Bn-stacc-D#4-mf-N-R100u.wav", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085843456, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/staccato/Bn-stacc-D#4-mf-N-R100u.wav", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085933312, 100, 0, "[", "slots", "[", 7, -37, "]", "[", 8, "/Winds/Bassoon/flatterzunge/Bn-flatt-G4-mf-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/flatterzunge/Bn-flatt-G4-mf-N-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/20", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929216, 100, 0, "[", "slots", "[", 7, 47, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085874432, 100, 1, "[", "slots", "[", 7, 33, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-E4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-E4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085874432, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-E4-ff-N-N.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085874432, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-E4-ff-N-N.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085874432, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-E4-ff-N-N.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085851136, 100, 1, "[", "slots", "[", 7, 42, "]", "[", 8, "/Winds/Bassoon/trill_minor_second_up/Bn-trill_min_second-D#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/trill_minor_second_up/Bn-trill_min_second-D#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_min_second", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085851136, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/trill_minor_second_up/Bn-trill_min_second-D#4-mf-N-N.wav", "]", "[", 24, "trill_min_second", "]", "]", 0, "]", 0, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085801728, 100, 1, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Bassoon/flatterzunge/Bn-flatt-C#4-mf-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/flatterzunge/Bn-flatt-C#4-mf-N-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085801728, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/flatterzunge/Bn-flatt-C#4-mf-N-R100u.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085973248, 100, 0, "[", "slots", "[", 7, 19, "]", "[", 8, "/Winds/Bassoon/flatterzunge/Bn-flatt-G#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/flatterzunge/Bn-flatt-G#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "-1/8", 0, "]", "]", "[", "[", "leveltype", 2, "]", "[", "-3/8", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085922304, 100, 0, "[", "slots", "[", 7, 20, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-3/16", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085952768, 100, 0, "[", "slots", "[", 7, 39, "]", "[", 8, "/Winds/Bassoon/vibrato/Bn-vib-G4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/vibrato/Bn-vib-G4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "vib", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085882624, 100, 0, "[", "slots", "[", 7, -35, "]", "[", 8, "/Winds/Bassoon/harmonic_fingering/Bn-harm_fngr-F4-f-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/harmonic_fingering/Bn-harm_fngr-F4-f-N-N.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "harm_fngr", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897216, 100, 1, "[", "slots", "[", 7, 22, "]", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-F4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-F4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897216, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-F4-mf-N-N.wav", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085907712, 100, 1, "[", "slots", "[", 7, -37, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085907712, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085947904, 100, 1, "[", "slots", "[", 7, 20, "]", "[", 8, "/Winds/Bassoon/vibrato/Bn-vib-G4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/vibrato/Bn-vib-G4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "vib", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085947904, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/vibrato/Bn-vib-G4-mf-N-N.wav", "]", "[", 24, "vib", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085947904, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/vibrato/Bn-vib-G4-mf-N-N.wav", "]", "[", 24, "vib", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086093312, 100, 1, "[", "slots", "[", 7, -12, "]", "[", 8, "/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 20, "[", "auto", "ffpp", "=", "]", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086093312, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", 1, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086093312, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086093312, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086093312, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085876992, 100, 1, "[", "slots", "[", 7, 43, "]", "[", 8, "/Winds/Bassoon/glissando_with_throat/Bn-throat_gl_dsc_slw-E4-N-E4-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/glissando_with_throat/Bn-throat_gl_dsc_slw-E4-N-E4-N.wav", "]", "[", 20, "[", "auto", "N", "=", "]", "]", "[", 24, "throat_gl_dsc_slw", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085876992, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/glissando_with_throat/Bn-throat_gl_dsc_slw-E4-N-E4-N.wav", "]", "[", 24, "throat_gl_dsc_slw", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-3/4", 0, "]", "[", "[", "leveltype", 24, "]", "[", "-1/12", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085907968, 100, 0, "[", "slots", "[", 7, -36, "]", "[", 8, "/Winds/Bassoon/flatterzunge/Bn-flatt-F#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/flatterzunge/Bn-flatt-F#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 18, "]", "[", "-1/6", 0, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897728, 100, 1, "[", "slots", "[", 7, 24, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-F4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897728, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F4-mf-N-N.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897728, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F4-mf-N-N.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-3/4", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085873664, 100, 0, "[", "slots", "[", 7, 30, "]", "[", 8, "/Winds/Bassoon/note_lasting/Bn-lasting_one_sec-E4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/note_lasting/Bn-lasting_one_sec-E4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "lasting_one_sec", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085874176, 100, 0, "[", "slots", "[", 7, 32, "]", "[", 8, "/Winds/Bassoon/crescendo_to_decrescendo/Bn-cre_dec-E4-ppmfpp-N-R200u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/crescendo_to_decrescendo/Bn-cre_dec-E4-ppmfpp-N-R200u.wav", "]", "[", 20, "[", "auto", "ppmfpp", "=", "]", "]", "[", 24, "cre_dec", "]", "]", 0, "]", 0, "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-3/4", 0, "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312704, 100, 1, "[", "slots", "[", 7, 45, "]", "[", 8, "/Brass/Trumpet_C/note_lasting/TpC-lasting_half_sec-A5-mf-N-T20d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trumpet_C/note_lasting/TpC-lasting_half_sec-A5-mf-N-T20d.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "lasting_half_sec", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312704, 100, 1, "[", "slots", "[", 8, "/Brass/Trumpet_C/note_lasting/TpC-lasting_half_sec-A5-mf-N-T20d.wav", "]", "[", 24, "lasting_half_sec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312704, 100, 0, "[", "slots", "[", 8, "/Brass/Trumpet_C/note_lasting/TpC-lasting_half_sec-A5-mf-N-T20d.wav", "]", "[", 24, "lasting_half_sec", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086103040, 100, 0, "[", "slots", "[", 7, 26, "]", "[", 8, "/Brass/Trumpet_C/flatterzunge/TpC-flatt-C#5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trumpet_C/flatterzunge/TpC-flatt-C#5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929472, 100, 1, "[", "slots", "[", 7, 48, "]", "[", 8, "/Brass/Trumpet_C/ordinario/TpC-ord-F#4-pp-N-T12u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trumpet_C/ordinario/TpC-ord-F#4-pp-N-T12u.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929472, 100, 1, "[", "slots", "[", 8, "/Brass/Trumpet_C/ordinario/TpC-ord-F#4-pp-N-T12u.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929472, 100, 1, "[", "slots", "[", 8, "/Brass/Trumpet_C/ordinario/TpC-ord-F#4-pp-N-T12u.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929472, 100, 0, "[", "slots", "[", 8, "/Brass/Trumpet_C/ordinario/TpC-ord-F#4-pp-N-T12u.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/12", 0, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085825024, 100, 1, "[", "slots", "[", 7, 40, "]", "[", 8, "/Brass/Trumpet_C/sforzato/TpC-sfz-D4-f-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trumpet_C/sforzato/TpC-sfz-D4-f-N-R100d.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085825024, 100, 0, "[", "slots", "[", 8, "/Brass/Trumpet_C/sforzato/TpC-sfz-D4-f-N-R100d.wav", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 1, "[", "slots", "[", 7, 30, "]", "[", 8, "/Brass/Trumpet_C/staccato/TpC-stacc-A#5-mf-N-R200d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trumpet_C/staccato/TpC-stacc-A#5-mf-N-R200d.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 1, "[", "slots", "[", 8, "/Brass/Trumpet_C/staccato/TpC-stacc-A#5-mf-N-R200d.wav", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 0, "[", "slots", "[", 8, "/Brass/Trumpet_C/staccato/TpC-stacc-A#5-mf-N-R200d.wav", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085969408, 100, 0, "[", "slots", "[", 7, 4, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086115072, 100, 0, "[", "slots", "[", 7, -27, "]", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-f-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-f-N-N.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085899776, 100, 0, "[", "slots", "[", 7, 32, "]", "[", 8, "/Brass/Trombone/ordinario_to_flatterzunge/Tbn-ord_flatt-F4-f-N-R200u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/ordinario_to_flatterzunge/Tbn-ord_flatt-F4-f-N-R200u.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "ord_flatt", "]", "]", 0, "]", 0, "]", "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "-1/6", 0, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085979136, 100, 1, "[", "slots", "[", 7, 42, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085979136, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-pp-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086114816, 100, 0, "[", "slots", "[", 7, -28, "]", "[", 8, "/Brass/Trombone/ordinario_no_mouthpiece/Tbn-ord_no_mthpc-D5-p-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/ordinario_no_mouthpiece/Tbn-ord_no_mthpc-D5-p-N-N.wav", "]", "[", 20, "[", "auto", "p", "=", "]", "]", "[", 24, "ord_no_mthpc", "]", "]", 0, "]", 0, "]", "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085885952, 100, 1, "[", "slots", "[", 7, -22, "]", "[", 8, "/Brass/Trombone/staccato/Tbn-stacc-F4-mf-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/staccato/Tbn-stacc-F4-mf-N-R100d.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085885952, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/staccato/Tbn-stacc-F4-mf-N-R100d.wav", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085948672, 100, 1, "[", "slots", "[", 7, 23, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[" ],
									"whole_score_data_0000000002" : [ "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085948672, 100, 1, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-ff-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085948672, 100, 1, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-ff-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085948672, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-ff-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/20", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086108928, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-C#5-f-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-C#5-f-N-N.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085979392, 100, 0, "[", "slots", "[", 7, 43, "]", "[", 8, "/Brass/Trombone/staccato/Tbn-stacc-G#4-mf-N-R200d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/staccato/Tbn-stacc-G#4-mf-N-R200d.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085952512, 100, 1, "[", "slots", "[", 7, 38, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085952512, 100, 1, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085952512, 100, 1, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085952512, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/12", 0, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085801728, 100, 1, "[", "slots", "[", 7, 49, "]", "[", 8, "/Brass/Trombone/ordinario/Tbn-ord-C#4-mf-N-T13d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/ordinario/Tbn-ord-C#4-mf-N-T13d.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "[", "leveltype", 2, "]", "[", "1/20", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085801728, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/ordinario/Tbn-ord-C#4-mf-N-T13d.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085973248, 100, 0, "[", "slots", "[", 7, 19, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085948416, 100, 0, "[", "slots", "[", 7, 22, "]", "[", 8, "/Brass/Trombone/flatterzunge_to_ordinario/Tbn-flatt_ord-G4-f-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge_to_ordinario/Tbn-flatt_ord-G4-f-N-R100u.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "flatt_ord", "]", "]", 0, "]", 0, "]", "]", "]", "[", "-1/10", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-3/16", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085978880, 100, 1, "[", "slots", "[", 7, 41, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085978880, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-mf-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085939200, 100, 1, "[", "slots", "[", 7, -14, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085939200, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085953536, 100, 1, "[", "slots", "[", 7, 42, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G4-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085953536, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-pp-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085953280, 100, 1, "[", "slots", "[", 7, 41, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085953280, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085880832, 100, 1, "[", "slots", "[", 7, -42, "]", "[", 8, "/Brass/Trombone/crescendo/Tbn-cresc-F4-ppff-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/crescendo/Tbn-cresc-F4-ppff-N-R100u.wav", "]", "[", 20, "[", "auto", "ppff", "=", "]", "]", "[", 24, "cresc", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085880832, 100, 1, "[", "slots", "[", 8, "/Brass/Trombone/crescendo/Tbn-cresc-F4-ppff-N-R100u.wav", "]", "[", 24, "cresc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085880832, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/crescendo/Tbn-cresc-F4-ppff-N-R100u.wav", "]", "[", 24, "cresc", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086129408, 100, 1, "[", "slots", "[", 7, 29, "]", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 20, "[", "auto", "p", "=", "]", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086129408, 100, 1, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", 1, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086129408, 100, 1, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086129408, 100, 1, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086129408, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085969408, 100, 0, "[", "slots", "[", 7, 4, "]", "[", 8, "/Strings/Violin/col_legno_battuto/Vn-legno_batt-G#4-mf-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/col_legno_battuto/Vn-legno_batt-G#4-mf-3c-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "legno_batt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086342400, 100, 0, "[", "slots", "[", 7, 30, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-B5-ff-2c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-B5-ff-2c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086311424, 100, 1, "[", "slots", "[", 7, 40, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-pp-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-pp-1c-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086311424, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-pp-1c-N.wav", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312704, 100, 1, "[", "slots", "[", 7, 45, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312704, 100, 1, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312704, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086331648, 100, 0, "[", "slots", "[", 7, 46, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A#5-mf-2c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A#5-mf-2c-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312704, 100, 1, "[", "slots", "[", 7, 45, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312704, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085935360, 100, 0, "[", "slots", "[", 7, -29, "]", "[", 8, "/Strings/Violin/pizzicato_bartok/Vn-pizz_bartok-G4-ff-4c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_bartok/Vn-pizz_bartok-G4-ff-4c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_bartok", "]", "]", 0, "]", 0, "]", "[", "-1/20", 0, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086321152, 100, 1, "[", "slots", "[", 7, -22, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086321152, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086311680, 100, 1, "[", "slots", "[", 7, 41, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086311680, 100, 1, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086311680, 100, 1, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086311680, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313216, 100, 0, "[", "slots", "[", 7, 47, "]", "[", 8, "/Strings/Violin/tremolo/Vn-trem-A5-mf-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/tremolo/Vn-trem-A5-mf-1c-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trem", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086292480, 100, 1, "[", "slots", "[", 7, -34, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086292480, 100, 1, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086292480, 100, 1, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086292480, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/20", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086310400, 100, 0, "[", "slots", "[", 7, 36, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086324992, 100, 0, "[", "slots", "[", 7, -6, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "]", "[", "-1/10", 0, "]", "]", "[", "[", "leveltype", 2, "]", "[", "-3/8", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086294784, 100, 0, "[", "slots", "[", 7, -25, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086297088, 100, 1, "[", "slots", "[", 7, -16, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086297088, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-ff-3c-N.wav", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086308608, 100, 0, "[", "slots", "[", 7, 29, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086311936, 100, 1, "[", "slots", "[", 7, 42, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086311936, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086129408, 100, 1, "[", "slots", "[", 7, 29, "]", "[", 8, "/Strings/Violin/crescendo/Vn-cresc-D5-ppff-2c-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/crescendo/Vn-cresc-D5-ppff-2c-R100d.wav", "]", "[", 20, "[", "auto", "ppff", "=", "]", "]", "[", 24, "cresc", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086129408, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/crescendo/Vn-cresc-D5-ppff-2c-R100d.wav", "]", "[", 24, "cresc", "]", "]", 0, "]", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 1, "[", "slots", "[", 7, 30, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 1, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086342400, 100, 0, "[", "slots", "[", 7, 30, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-B5-ff-2c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-B5-ff-2c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086310912, 100, 1, "[", "slots", "[", 7, 38, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086310912, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-ff-1c-N.wav", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 18, "]", "[", "-1/6", 0, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086292480, 100, 1, "[", "slots", "[", 7, -34, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086292480, 100, 1, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086292480, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086310400, 100, 0, "[", "slots", "[", 7, 36, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086311936, 100, 1, "[", "slots", "[", 7, 42, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086311936, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 1, "[", "slots", "[", 7, 30, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 1, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085946112, 100, 0, "[", "slots", "[", 7, 13, "]", "[", 8, "/Strings/Viola/pizzicato_secco/Va-pizz_sec-G4-ff-2c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/pizzicato_secco/Va-pizz_sec-G4-ff-2c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086310912, 100, 0, "[", "slots", "[", 7, 38, "]", "[", 8, "/Strings/Viola/pizzicato_secco/Va-pizz_sec-A5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/pizzicato_secco/Va-pizz_sec-A5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085885952, 100, 1, "[", "slots", "[", 7, -22, "]", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-F4-mf-2c-R200u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/ordinario_to_crushed/Va-ord_crush-F4-mf-2c-R200u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085885952, 100, 0, "[", "slots", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-F4-mf-2c-R200u.wav", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085925632, 100, 1, "[", "slots", "[", 7, 33, "]", "[", 8, "/Strings/Viola/sul_tasto_tremolo/Va-tasto_trem-F#4-mf-3c-T11u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/sul_tasto_tremolo/Va-tasto_trem-F#4-mf-3c-T11u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "tasto_trem", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085925632, 100, 1, "[", "slots", "[", 8, "/Strings/Viola/sul_tasto_tremolo/Va-tasto_trem-F#4-mf-3c-T11u.wav", "]", "[", 24, "tasto_trem", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085925632, 100, 1, "[", "slots", "[", 8, "/Strings/Viola/sul_tasto_tremolo/Va-tasto_trem-F#4-mf-3c-T11u.wav", "]", "[", 24, "tasto_trem", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085925632, 100, 0, "[", "slots", "[", 8, "/Strings/Viola/sul_tasto_tremolo/Va-tasto_trem-F#4-mf-3c-T11u.wav", "]", "[", 24, "tasto_trem", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086108928, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Strings/Viola/tremolo/Va-trem-C#5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/tremolo/Va-trem-C#5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "trem", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 2, "]", "[", "-3/8", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086081536, 100, 0, "[", "slots", "[", 7, 42, "]", "[", 8, "/Strings/Viola/pizzicato_l_vib/Va-pizz_lv-C5-pp-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/pizzicato_l_vib/Va-pizz_lv-C5-pp-1c-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086082560, 100, 0, "[", "slots", "[", 7, 46, "]", "[", 8, "/Strings/Viola/pizzicato_secco/Va-pizz_sec-C5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/pizzicato_secco/Va-pizz_sec-C5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085962240, 100, 1, "[", "slots", "[", 7, -24, "]", "[", 8, "/Strings/Viola/sul_ponticello_tremolo/Va-pont_trem-G#4-mf-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/sul_ponticello_tremolo/Va-pont_trem-G#4-mf-3c-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "pont_trem", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085962240, 100, 0, "[", "slots", "[", 8, "/Strings/Viola/sul_ponticello_tremolo/Va-pont_trem-G#4-mf-3c-N.wav", "]", "[", 24, "pont_trem", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4 ],
									"whole_score_data_0000000003" : [ "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-3/16", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086335616, 100, 1, "[", "slots", "[", 7, -23, "]", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086335616, 100, 1, "[", "slots", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", 1, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086335616, 100, 1, "[", "slots", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086335616, 100, 1, "[", "slots", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086335616, 100, 0, "[", "slots", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", 0, "]" ],
									"whole_score_data_count" : [ 4 ],
									"zoom" : 146.76953125
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 6,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 79.0, 863.0, 787.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 654.0, 686.0, 100.0, 22.0 ],
													"text" : "bach.filternull"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 654.0, 654.0, 55.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 0,
														"versionnumber" : 80900
													}
,
													"text" : "bach.reg"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 690.0, 626.0, 91.0, 22.0 ],
													"text" : "r score_domain"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 110.0, 52.0, 89.0, 22.0 ],
													"text" : "loadmess clear"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 28.0, 523.0, 807.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80900
													}
,
													"text" : "bach.beatbox"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 6,
													"outlettype" : [ "", "", "", "", "", "" ],
													"patching_rect" : [ 28.0, 224.0, 807.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80900
													}
,
													"text" : "bach.beatunbox"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 28.0, 25.0, 55.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 0,
														"versionnumber" : 80105
													}
,
													"text" : "bach.reg"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 90.0, 552.0, 89.0, 22.0 ],
													"text" : "loadmess clear"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "dump", "" ],
													"patching_rect" : [ 28.0, 552.0, 51.0, 22.0 ],
													"text" : "t dump l"
												}

											}
, 											{
												"box" : 												{
													"bwcompatibility" : 80104,
													"clefs" : [ "G", "G", "G", "G", "Tenor", "Tenor", "G", "Tenor", "G", "G8va", "G" ],
													"defaultnoteslots" : [ "null" ],
													"enharmonictable" : [ "default", "default", "default", "default", "default", "default", "default", "default", "default", "default", "default" ],
													"fontface" : 0,
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"hidevoices" : [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ],
													"id" : "obj-55",
													"keys" : [ "C", "C", "C", "C", "C", "C", "C", "C", "C", "C", "C" ],
													"legend" : 0,
													"loop" : [ "[", 1, 1, 0, "]", "[", 1, 1, "1/4", "]" ],
													"maxclass" : "bach.score",
													"maxundosteps" : 0,
													"midichannels" : [ 1, 3, 4, 5, 7, 8, 9, 13, 16, 17, 20 ],
													"notationstyles" : [ "et", "et", "et", "et", "et", "et", "et", "et", "et", "et", "et" ],
													"numinlets" : 7,
													"numoutlets" : 9,
													"numparts" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ],
													"numvoices" : 11,
													"out" : "nnnnnnnnn",
													"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
													"patching_rect" : [ 28.0, 589.0, 610.0, 122.666666666666629 ],
													"pitcheditrange" : [ "null" ],
													"playmarkers" : 0,
													"showmarkers" : 0,
													"showmeasurenumbers" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ],
													"stafflines" : [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ],
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"versionnumber" : 80900,
													"voicenames" : [ "Fl", "Ob", "Ob", "ClBb", "Bn", "Bn", "TpC", "Tbn", "Vn", "Vn", "Va" ],
													"voicespacing" : [ 0.0, 26.0, 26.0, 26.0, 26.0, 26.0, 26.0, 26.0, 26.0, 26.0, 26.0, 26.0 ],
													"whole_score_data_0000000000" : [ "score", "[", "slotinfo", "[", 1, "[", "name", "velocity envelope", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 2, "[", "name", "slot function", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 3, "[", "name", "slot intlist", "]", "[", "type", "intlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 4, "[", "name", "slot floatlist", "]", "[", "type", "floatlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 5, "[", "name", "slot int", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 6, "[", "name", "slot float", "]", "[", "type", "float", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 7, "[", "name", "detune", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 3227058176, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "mc", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 8, "[", "name", "relpath", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080213504, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 9, "[", "name", "abspath", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080213504, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 10, "[", "name", "slot llll", "]", "[", "type", "llll", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 11, "[", "name", "slot 11", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 12, "[", "name", "slot 12", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 13, "[", "name", "slot 13", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 14, "[", "name", "slot 14", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 15, "[", "name", "slot 15", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 16, "[", "name", "slot 16", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 17, "[", "name", "slot 17", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 18, "[", "name", "slot 18", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 19, "[", "name", "slot 19", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 20, "[", "name", "dynamics", "]", "[", "type", "dynamics", "]", "[", "key", "d", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 21, "[", "name", "lyrics", "]", "[", "type", "text", "]", "[", "key", "l", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 22, "[", "name", "articulations", "]", "[", "type", "articulations", "]", "[", "key", "a", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 23, "[", "name", "notehead", "]", "[", "type", "notehead", "]", "[", "key", "h", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 24, "[", "name", "annotation", "]", "[", "type", "text", "]", "[", "key", "t", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 25, "[", "name", "slot 25", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 26, "[", "name", "slot 26", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 27, "[", "name", "slot 27", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 28, "[", "name", "slot 28", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 29, "[", "name", "slot 29", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 30, "[", "name", "slot 30", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "]", "[", "commands", "[", 1, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 2, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 3, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 4, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 5, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "]", "[", "markers", "]", "[", "midichannels", 1, 3, 4, 5, 7, 8, 9, 13, 16, 17, 20, "]", "[", "articulationinfo", "]", "[", "noteheadinfo", "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, 100, 1, "[", "slots", "[", 7, 43, "]", "[", 8, "/Winds/Flute/sforzato/Fl-sfz-E4-fp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/sforzato/Fl-sfz-E4-fp-N-N.wav", "]", "[", 20, "[", "auto", "fp", "=", "]", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, 100, 0, "[", "slots", "[", 8, "/Winds/Flute/sforzato/Fl-sfz-E4-fp-N-N.wav", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086006784, 100, 1, "[", "slots", "[", 7, 45, "]", "[", 8, "/Winds/Flute/flatterzunge_to_ordinario/Fl-flatt_ord-A5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/flatterzunge_to_ordinario/Fl-flatt_ord-A5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt_ord", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086006784, 100, 1, "[", "slots", "[", 7, 45, "]", "[", 8, "/Winds/Flute/flatterzunge_to_ordinario/Fl-flatt_ord-A5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/flatterzunge_to_ordinario/Fl-flatt_ord-A5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt_ord", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086006784, 100, 0, "[", "slots", "[", 8, "/Winds/Flute/flatterzunge_to_ordinario/Fl-flatt_ord-A5-mf-N-N.wav", "]", "[", 24, "flatt_ord", "]", "]", 0, "]", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086045184, 100, 0, "[", "slots", "[", 7, 5, "]", "[", 8, "/Winds/Flute/aeolian_and_ordinario/Fl-aeol_and_ord-B5-ff-N-T27d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/aeolian_and_ordinario/Fl-aeol_and_ord-B5-ff-N-T27d.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "]", "[", "-1/16", 0, "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086109184, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Flute/aeolian_and_ordinario/Fl-aeol_and_ord-C#5-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/aeolian_and_ordinario/Fl-aeol_and_ord-C#5-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 2, "]", "[", "-3/8", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086307584, 100, 0, "[", "slots", "[", 7, 27, "]", "[", 8, "/Winds/Flute/aeolian_and_ordinario/Fl-aeol_and_ord-A5-ff-N-T21d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/aeolian_and_ordinario/Fl-aeol_and_ord-A5-ff-N-T21d.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086083584, 100, 1, "[", "slots", "[", 7, 46, "]", "[", 8, "/Winds/Flute/ordinario/Fl-ord-C5-ff-N-T19d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/ordinario/Fl-ord-C5-ff-N-T19d.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 2, "]", "[", "3/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086083584, 100, 0, "[", "slots", "[", 8, "/Winds/Flute/ordinario/Fl-ord-C5-ff-N-T19d.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 7, 42, "]", "[", 8, "/Winds/Flute/flatterzunge/Fl-flatt-A5-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/flatterzunge/Fl-flatt-A5-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 0, "[", "slots", "[", 8, "/Winds/Flute/flatterzunge/Fl-flatt-A5-ff-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086128384, 100, 1, "[", "slots", "[", 7, 25, "]", "[", 8, "/Winds/Flute/trill_major_second_up/Fl-trill_maj_second-D5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/trill_major_second_up/Fl-trill_maj_second-D5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086128384, 100, 0, "[", "slots", "[", 7, 25, "]", "[", 8, "/Winds/Flute/trill_major_second_up/Fl-trill_maj_second-D5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/trill_major_second_up/Fl-trill_maj_second-D5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, 100, 1, "[", "slots", "[", 7, 30, "]", "[", 8, "/Winds/Flute/ordinario/Fl-ord-A#5-ff-N-T21d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/ordinario/Fl-ord-A#5-ff-N-T21d.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, 100, 1, "[", "slots", "[", 8, "/Winds/Flute/ordinario/Fl-ord-A#5-ff-N-T21d.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, 100, 0, "[", "slots", "[", 7, 30, "]", "[", 8, "/Winds/Flute/ordinario/Fl-ord-A#5-ff-N-T21d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/ordinario/Fl-ord-A#5-ff-N-T21d.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929984, 100, 0, "[", "slots", "[", 7, 41, "]", "[", 8, "/Winds/Oboe/double_trill_minor_second_up/Ob-dbl_trill_min_second-F#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/double_trill_minor_second_up/Ob-dbl_trill_min_second-F#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "dbl_trill_min_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086019584, 100, 1, "[", "slots", "[", 7, 10, "]", "[", 8, "/Winds/Oboe/trill_major_second_up/Ob-trill_maj_second-A#5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/trill_major_second_up/Ob-trill_maj_second-A#5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086019584, 100, 0, "[", "slots", "[", 8, "/Winds/Oboe/trill_major_second_up/Ob-trill_maj_second-A#5-mf-N-N.wav", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-3/4", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086115584, 100, 0, "[", "slots", "[", 7, -28, "]", "[", 8, "/Winds/Oboe/sforzato/Ob-sfz-D5-f-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/sforzato/Ob-sfz-D5-f-N-N.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/20", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086083584, 100, 0, "[", "slots", "[", 7, 46, "]", "[", 8, "/Winds/Oboe/lip_glissando/Ob-lip_gl_asc_slow-C5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/lip_glissando/Ob-lip_gl_asc_slow-C5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "lip_gl_asc_slow", "]", "]", 0, "]", 0, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086109184, 100, 1, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 20, "[", "auto", "ffpp", "=", "]", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 2, "]", "[", "3/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086109184, 100, 0, "[", "slots", "[", 8, "/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-3/16", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086332160, 100, 0, "[", "slots", "[", 7, 44, "]", "[", 8, "/Winds/Oboe/trill_minor_second_up/Ob-trill_min_second-A#5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/trill_minor_second_up/Ob-trill_min_second-A#5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_min_second", "]", "]", 0, "]", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086109184, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 20, "[", "auto", "ffpp", "=", "]", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, 100, 1, "[", "slots", "[", 7, 30, "]", "[", 8, "/Winds/Oboe/flatterzunge/Ob-flatt-A#5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/flatterzunge/Ob-flatt-A#5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, 100, 1, "[", "slots", "[", 8, "/Winds/Oboe/flatterzunge/Ob-flatt-A#5-mf-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, 100, 0, "[", "slots", "[", 7, 30, "]", "[", 8, "/Winds/Oboe/flatterzunge/Ob-flatt-A#5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/flatterzunge/Ob-flatt-A#5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086102784, 100, 1, "[", "slots", "[", 7, 32, "]", "[", 8, "/Winds/Oboe/sforzato/Ob-sfz-C#5-f-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/sforzato/Ob-sfz-C#5-f-N-R100d.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086102784, 100, 0, "[", "slots", "[", 8, "/Winds/Oboe/sforzato/Ob-sfz-C#5-f-N-R100d.wav", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-3/4", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086109184, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 20, "[", "auto", "ffpp", "=", "]", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "-1/6", 0, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086338560, 100, 1, "[", "slots", "[", 7, -9, "]", "[", 8, "/Winds/Oboe/trill_major_second_up/Ob-trill_maj_second-B5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/trill_major_second_up/Ob-trill_maj_second-B5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086338560, 100, 0, "[", "slots", "[", 8, "/Winds/Oboe/trill_major_second_up/Ob-trill_maj_second-B5-mf-N-N.wav", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086109184, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 20, "[", "auto", "ffpp", "=", "]", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086341760, 100, 0, "[", "slots", "[", 7, 30, "]", "[", 8, "/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-B5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-B5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-3/4", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086115584, 100, 1, "[", "slots", "[", 7, -28, "]", "[", 8, "/Winds/Clarinet_Bb/aeolian_and_ordinario/ClBb-aeol_and_ord-D5-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/aeolian_and_ordinario/ClBb-aeol_and_ord-D5-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086115584, 100, 0, "[", "slots", "[", 7, -28, "]", "[", 8, "/Winds/Clarinet_Bb/aeolian_and_ordinario/ClBb-aeol_and_ord-D5-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/aeolian_and_ordinario/ClBb-aeol_and_ord-D5-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]" ],
													"whole_score_data_0000000001" : [ "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/12", 0, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085827584, 100, 1, "[", "slots", "[", 7, 40, "]", "[", 8, "/Winds/Clarinet_Bb/aeolian_and_ordinario/ClBb-aeol_and_ord-D4-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/aeolian_and_ordinario/ClBb-aeol_and_ord-D4-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/20", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085827584, 100, 0, "[", "slots", "[", 8, "/Winds/Clarinet_Bb/aeolian_and_ordinario/ClBb-aeol_and_ord-D4-pp-N-N.wav", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "[", "-1/10", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086051584, 100, 0, "[", "slots", "[", 7, 35, "]", "[", 8, "/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-B5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-B5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086307584, 100, 1, "[", "slots", "[", 7, 21, "]", "[", 8, "/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-A5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-A5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 2, "]", "[", "3/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086307584, 100, 0, "[", "slots", "[", 8, "/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-A5-mf-N-N.wav", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086344960, 100, 0, "[", "slots", "[", 7, 38, "]", "[", 8, "/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-B5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-B5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 7, 44, "]", "[", 8, "/Winds/Clarinet_Bb/flatterzunge/ClBb-flatt-A5-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/flatterzunge/ClBb-flatt-A5-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 8, "/Winds/Clarinet_Bb/flatterzunge/ClBb-flatt-A5-ff-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 0, "[", "slots", "[", 7, 44, "]", "[", 8, "/Winds/Clarinet_Bb/flatterzunge/ClBb-flatt-A5-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/flatterzunge/ClBb-flatt-A5-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929984, 100, 0, "[", "slots", "[", 7, 41, "]", "[", 8, "/Winds/Bassoon/sforzato/Bn-sfz-F#4-fp-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/sforzato/Bn-sfz-F#4-fp-N-R100d.wav", "]", "[", 20, "[", "auto", "fp", "=", "]", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 1, "[", "slots", "[", 7, -45, "]", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-G#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-G#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-G#4-mf-N-N.wav", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, 100, 0, "[", "slots", "[", 7, 41, "]", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897984, 100, 1, "[", "slots", "[", 7, 24, "]", "[", 8, "/Winds/Bassoon/note_lasting/Bn-lasting_one_sec-F4-mf-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/note_lasting/Bn-lasting_one_sec-F4-mf-N-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "lasting_one_sec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897984, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/note_lasting/Bn-lasting_one_sec-F4-mf-N-R100u.wav", "]", "[", 24, "lasting_one_sec", "]", "]", 0, "]", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 1, "[", "slots", "[", 7, 38, "]", "[", 8, "/Winds/Bassoon/crescendo_to_decrescendo/Bn-cre_dec-G4-ppmfpp-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/crescendo_to_decrescendo/Bn-cre_dec-G4-ppmfpp-N-R100u.wav", "]", "[", 20, "[", "auto", "ppmfpp", "=", "]", "]", "[", 24, "cre_dec", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 1, "[", "slots", "[", 7, 38, "]", "[", 8, "/Winds/Bassoon/crescendo_to_decrescendo/Bn-cre_dec-G4-ppmfpp-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/crescendo_to_decrescendo/Bn-cre_dec-G4-ppmfpp-N-R100u.wav", "]", "[", 20, "[", "auto", "ppmfpp", "=", "]", "]", "[", 24, "cre_dec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/crescendo_to_decrescendo/Bn-cre_dec-G4-ppmfpp-N-R100u.wav", "]", "[", 24, "cre_dec", "]", "]", 0, "]", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085936384, 100, 0, "[", "slots", "[", 7, -32, "]", "[", 8, "/Winds/Bassoon/flatterzunge/Bn-flatt-G4-mf-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/flatterzunge/Bn-flatt-G4-mf-N-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, 100, 1, "[", "slots", "[", 7, 43, "]", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/10", 0, "]", "[", "[", "leveltype", 2, "]", "[", "[", "leveltype", 2, "]", "[", "1/20", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086109184, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-C#5-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-C#5-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "]", "[", "-1/10", 0, "]", "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-3/16", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085840384, 100, 1, "[", "slots", "[", 7, 12, "]", "[", 8, "/Winds/Bassoon/staccato/Bn-stacc-D#4-mf-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/staccato/Bn-stacc-D#4-mf-N-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085840384, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/staccato/Bn-stacc-D#4-mf-N-R100u.wav", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085840384, 100, 1, "[", "slots", "[", 7, 12, "]", "[", 8, "/Winds/Bassoon/staccato/Bn-stacc-D#4-mf-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/staccato/Bn-stacc-D#4-mf-N-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085840384, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/staccato/Bn-stacc-D#4-mf-N-R100u.wav", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085936384, 100, 0, "[", "slots", "[", 7, -37, "]", "[", 8, "/Winds/Bassoon/flatterzunge/Bn-flatt-G4-mf-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/flatterzunge/Bn-flatt-G4-mf-N-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/20", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929984, 100, 0, "[", "slots", "[", 7, 47, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085872384, 100, 1, "[", "slots", "[", 7, 33, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-E4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-E4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085872384, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-E4-ff-N-N.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085872384, 100, 1, "[", "slots", "[", 7, 33, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-E4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-E4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085872384, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-E4-ff-N-N.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085853184, 100, 1, "[", "slots", "[", 7, 42, "]", "[", 8, "/Winds/Bassoon/trill_minor_second_up/Bn-trill_min_second-D#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/trill_minor_second_up/Bn-trill_min_second-D#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_min_second", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085853184, 100, 0, "[", "slots", "[", 7, 42, "]", "[", 8, "/Winds/Bassoon/trill_minor_second_up/Bn-trill_min_second-D#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/trill_minor_second_up/Bn-trill_min_second-D#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_min_second", "]", "]", 0, "]", 0, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085801984, 100, 1, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Bassoon/flatterzunge/Bn-flatt-C#4-mf-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/flatterzunge/Bn-flatt-C#4-mf-N-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085801984, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/flatterzunge/Bn-flatt-C#4-mf-N-R100u.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085974784, 100, 0, "[", "slots", "[", 7, 19, "]", "[", 8, "/Winds/Bassoon/flatterzunge/Bn-flatt-G#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/flatterzunge/Bn-flatt-G#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "-1/8", 0, "]", "]", "[", "[", "leveltype", 2, "]", "[", "-3/8", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085923584, 100, 0, "[", "slots", "[", 7, 20, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-3/16", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 0, "[", "slots", "[", 7, 39, "]", "[", 8, "/Winds/Bassoon/vibrato/Bn-vib-G4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/vibrato/Bn-vib-G4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "vib", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085885184, 100, 0, "[", "slots", "[", 7, -35, "]", "[", 8, "/Winds/Bassoon/harmonic_fingering/Bn-harm_fngr-F4-f-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/harmonic_fingering/Bn-harm_fngr-F4-f-N-N.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "harm_fngr", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897984, 100, 1, "[", "slots", "[", 7, 22, "]", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-F4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-F4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897984, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-F4-mf-N-N.wav", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085910784, 100, 1, "[", "slots", "[", 7, -37, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085910784, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085949184, 100, 1, "[", "slots", "[", 7, 20, "]", "[", 8, "/Winds/Bassoon/vibrato/Bn-vib-G4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/vibrato/Bn-vib-G4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "vib", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085949184, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/vibrato/Bn-vib-G4-mf-N-N.wav", "]", "[", 24, "vib", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085949184, 100, 0, "[", "slots", "[", 7, 20, "]", "[", 8, "/Winds/Bassoon/vibrato/Bn-vib-G4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/vibrato/Bn-vib-G4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "vib", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086096384, 100, 1, "[", "slots", "[", 7, -12, "]", "[", 8, "/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 20, "[", "auto", "ffpp", "=", "]", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086096384, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", 1, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086096384, 100, 1, "[", "slots", "[", 7, -12, "]", "[", 8, "/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 20, "[", "auto", "ffpp", "=", "]", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086096384, 100, 1, "[", "slots", "[", 7, -12, "]", "[", 8, "/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 20, "[", "auto", "ffpp", "=", "]", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086096384, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, 100, 1, "[", "slots", "[", 7, 43, "]", "[", 8, "/Winds/Bassoon/glissando_with_throat/Bn-throat_gl_dsc_slw-E4-N-E4-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/glissando_with_throat/Bn-throat_gl_dsc_slw-E4-N-E4-N.wav", "]", "[", 20, "[", "auto", "N", "=", "]", "]", "[", 24, "throat_gl_dsc_slw", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/glissando_with_throat/Bn-throat_gl_dsc_slw-E4-N-E4-N.wav", "]", "[", 24, "throat_gl_dsc_slw", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-3/4", 0, "]", "[", "[", "leveltype", 24, "]", "[", "-1/12", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085910784, 100, 0, "[", "slots", "[", 7, -36, "]", "[", 8, "/Winds/Bassoon/flatterzunge/Bn-flatt-F#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/flatterzunge/Bn-flatt-F#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 18, "]", "[", "-1/6", 0, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897984, 100, 1, "[", "slots", "[", 7, 24, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-F4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897984, 100, 1, "[", "slots", "[", 7, 24, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-F4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897984, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F4-mf-N-N.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-3/4", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085872384, 100, 0, "[", "slots", "[", 7, 30, "]", "[", 8, "/Winds/Bassoon/note_lasting/Bn-lasting_one_sec-E4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/note_lasting/Bn-lasting_one_sec-E4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "lasting_one_sec", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085872384, 100, 0, "[", "slots", "[", 7, 32, "]", "[", 8, "/Winds/Bassoon/crescendo_to_decrescendo/Bn-cre_dec-E4-ppmfpp-N-R200u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/crescendo_to_decrescendo/Bn-cre_dec-E4-ppmfpp-N-R200u.wav", "]", "[", 20, "[", "auto", "ppmfpp", "=", "]", "]", "[", 24, "cre_dec", "]", "]", 0, "]", 0, "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-3/4", 0, "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 7, 45, "]", "[", 8, "/Brass/Trumpet_C/note_lasting/TpC-lasting_half_sec-A5-mf-N-T20d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trumpet_C/note_lasting/TpC-lasting_half_sec-A5-mf-N-T20d.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "lasting_half_sec", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 7, 45, "]", "[", 8, "/Brass/Trumpet_C/note_lasting/TpC-lasting_half_sec-A5-mf-N-T20d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trumpet_C/note_lasting/TpC-lasting_half_sec-A5-mf-N-T20d.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "lasting_half_sec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 0, "[", "slots", "[", 8, "/Brass/Trumpet_C/note_lasting/TpC-lasting_half_sec-A5-mf-N-T20d.wav", "]", "[", 24, "lasting_half_sec", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086102784, 100, 0, "[", "slots", "[", 7, 26, "]", "[", 8, "/Brass/Trumpet_C/flatterzunge/TpC-flatt-C#5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trumpet_C/flatterzunge/TpC-flatt-C#5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929984, 100, 1, "[", "slots", "[", 7, 48, "]", "[", 8, "/Brass/Trumpet_C/ordinario/TpC-ord-F#4-pp-N-T12u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trumpet_C/ordinario/TpC-ord-F#4-pp-N-T12u.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929984, 100, 1, "[", "slots", "[", 8, "/Brass/Trumpet_C/ordinario/TpC-ord-F#4-pp-N-T12u.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929984, 100, 1, "[", "slots", "[", 7, 48, "]", "[", 8, "/Brass/Trumpet_C/ordinario/TpC-ord-F#4-pp-N-T12u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trumpet_C/ordinario/TpC-ord-F#4-pp-N-T12u.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929984, 100, 0, "[", "slots", "[", 8, "/Brass/Trumpet_C/ordinario/TpC-ord-F#4-pp-N-T12u.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/12", 0, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085827584, 100, 1, "[", "slots", "[", 7, 40, "]", "[", 8, "/Brass/Trumpet_C/sforzato/TpC-sfz-D4-f-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trumpet_C/sforzato/TpC-sfz-D4-f-N-R100d.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085827584, 100, 0, "[", "slots", "[", 8, "/Brass/Trumpet_C/sforzato/TpC-sfz-D4-f-N-R100d.wav", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086025984, 100, 1, "[", "slots", "[", 7, 30, "]", "[", 8, "/Brass/Trumpet_C/staccato/TpC-stacc-A#5-mf-N-R200d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trumpet_C/staccato/TpC-stacc-A#5-mf-N-R200d.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086025984, 100, 1, "[", "slots", "[", 8, "/Brass/Trumpet_C/staccato/TpC-stacc-A#5-mf-N-R200d.wav", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086025984, 100, 0, "[", "slots", "[", 7, 30, "]", "[", 8, "/Brass/Trumpet_C/staccato/TpC-stacc-A#5-mf-N-R200d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trumpet_C/staccato/TpC-stacc-A#5-mf-N-R200d.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085968384, 100, 0, "[", "slots", "[", 7, 4, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086115584, 100, 0, "[", "slots", "[", 7, -27, "]", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-f-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-f-N-N.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897984, 100, 0, "[", "slots", "[", 7, 32, "]", "[", 8, "/Brass/Trombone/ordinario_to_flatterzunge/Tbn-ord_flatt-F4-f-N-R200u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/ordinario_to_flatterzunge/Tbn-ord_flatt-F4-f-N-R200u.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "ord_flatt", "]", "]", 0, "]", 0, "]", "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "-1/6", 0, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085981184, 100, 1, "[", "slots", "[", 7, 42, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085981184, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-pp-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086115584, 100, 0, "[", "slots", "[", 7, -28, "]", "[", 8, "/Brass/Trombone/ordinario_no_mouthpiece/Tbn-ord_no_mthpc-D5-p-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/ordinario_no_mouthpiece/Tbn-ord_no_mthpc-D5-p-N-N.wav", "]", "[", 20, "[", "auto", "p", "=", "]", "]", "[", 24, "ord_no_mthpc", "]", "]", 0, "]", 0, "]", "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085885184, 100, 1, "[", "slots", "[", 7, -22, "]", "[", 8, "/Brass/Trombone/staccato/Tbn-stacc-F4-mf-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/staccato/Tbn-stacc-F4-mf-N-R100d.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085885184, 100, 0, "[", "slots", "[", 7, -22, "]", "[", 8, "/Brass/Trombone/staccato/Tbn-stacc-F4-mf-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/staccato/Tbn-stacc-F4-mf-N-R100d.wav", "]", "[", 20, "[" ],
													"whole_score_data_0000000002" : [ "auto", "mf", "=", "]", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085949184, 100, 1, "[", "slots", "[", 7, 23, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085949184, 100, 1, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-ff-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085949184, 100, 1, "[", "slots", "[", 7, 23, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085949184, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-ff-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/20", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086109184, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-C#5-f-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-C#5-f-N-N.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085981184, 100, 0, "[", "slots", "[", 7, 43, "]", "[", 8, "/Brass/Trombone/staccato/Tbn-stacc-G#4-mf-N-R200d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/staccato/Tbn-stacc-G#4-mf-N-R200d.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 1, "[", "slots", "[", 7, 38, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 1, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 1, "[", "slots", "[", 7, 38, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/12", 0, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085801984, 100, 1, "[", "slots", "[", 7, 49, "]", "[", 8, "/Brass/Trombone/ordinario/Tbn-ord-C#4-mf-N-T13d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/ordinario/Tbn-ord-C#4-mf-N-T13d.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "[", "leveltype", 2, "]", "[", "1/20", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085801984, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/ordinario/Tbn-ord-C#4-mf-N-T13d.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085974784, 100, 0, "[", "slots", "[", 7, 19, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085949184, 100, 0, "[", "slots", "[", 7, 22, "]", "[", 8, "/Brass/Trombone/flatterzunge_to_ordinario/Tbn-flatt_ord-G4-f-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge_to_ordinario/Tbn-flatt_ord-G4-f-N-R100u.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "flatt_ord", "]", "]", 0, "]", 0, "]", "]", "]", "[", "-1/10", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-3/16", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085981184, 100, 1, "[", "slots", "[", 7, 41, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085981184, 100, 0, "[", "slots", "[", 7, 41, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085936384, 100, 1, "[", "slots", "[", 7, -14, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085936384, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 1, "[", "slots", "[", 7, 42, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G4-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 0, "[", "slots", "[", 7, 42, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G4-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 1, "[", "slots", "[", 7, 41, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, 100, 1, "[", "slots", "[", 7, -42, "]", "[", 8, "/Brass/Trombone/crescendo/Tbn-cresc-F4-ppff-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/crescendo/Tbn-cresc-F4-ppff-N-R100u.wav", "]", "[", 20, "[", "auto", "ppff", "=", "]", "]", "[", 24, "cresc", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, 100, 1, "[", "slots", "[", 8, "/Brass/Trombone/crescendo/Tbn-cresc-F4-ppff-N-R100u.wav", "]", "[", 24, "cresc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, 100, 0, "[", "slots", "[", 7, -42, "]", "[", 8, "/Brass/Trombone/crescendo/Tbn-cresc-F4-ppff-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/crescendo/Tbn-cresc-F4-ppff-N-R100u.wav", "]", "[", 20, "[", "auto", "ppff", "=", "]", "]", "[", 24, "cresc", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086128384, 100, 1, "[", "slots", "[", 7, 29, "]", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 20, "[", "auto", "p", "=", "]", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086128384, 100, 1, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", 1, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086128384, 100, 1, "[", "slots", "[", 7, 29, "]", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 20, "[", "auto", "p", "=", "]", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086128384, 100, 1, "[", "slots", "[", 7, 29, "]", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 20, "[", "auto", "p", "=", "]", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086128384, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085968384, 100, 0, "[", "slots", "[", 7, 4, "]", "[", 8, "/Strings/Violin/col_legno_battuto/Vn-legno_batt-G#4-mf-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/col_legno_battuto/Vn-legno_batt-G#4-mf-3c-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "legno_batt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086051584, 100, 0, "[", "slots", "[", 7, 30, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-B5-ff-2c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-B5-ff-2c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 7, 40, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-pp-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-pp-1c-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-pp-1c-N.wav", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 7, 45, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 7, 45, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086332160, 100, 0, "[", "slots", "[", 7, 46, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A#5-mf-2c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A#5-mf-2c-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 7, 45, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086243584, 100, 0, "[", "slots", "[", 7, -29, "]", "[", 8, "/Strings/Violin/pizzicato_bartok/Vn-pizz_bartok-G4-ff-4c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_bartok/Vn-pizz_bartok-G4-ff-4c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_bartok", "]", "]", 0, "]", 0, "]", "[", "-1/20", 0, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086320384, 100, 1, "[", "slots", "[", 7, -22, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086320384, 100, 0, "[", "slots", "[", 7, -22, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 7, 41, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 7, 41, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 0, "[", "slots", "[", 7, 47, "]", "[", 8, "/Strings/Violin/tremolo/Vn-trem-A5-mf-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/tremolo/Vn-trem-A5-mf-1c-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trem", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086294784, 100, 1, "[", "slots", "[", 7, -34, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086294784, 100, 1, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086294784, 100, 1, "[", "slots", "[", 7, -34, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086294784, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/20", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086307584, 100, 0, "[", "slots", "[", 7, 36, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086325760, 100, 0, "[", "slots", "[", 7, -6, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "]", "[", "-1/10", 0, "]", "]", "[", "[", "leveltype", 2, "]", "[", "-3/8", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086294784, 100, 0, "[", "slots", "[", 7, -25, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086294784, 100, 1, "[", "slots", "[", 7, -16, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086294784, 100, 0, "[", "slots", "[", 7, -16, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086307584, 100, 0, "[", "slots", "[", 7, 29, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 7, 42, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086128384, 100, 1, "[", "slots", "[", 7, 29, "]", "[", 8, "/Strings/Violin/crescendo/Vn-cresc-D5-ppff-2c-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/crescendo/Vn-cresc-D5-ppff-2c-R100d.wav", "]", "[", 20, "[", "auto", "ppff", "=", "]", "]", "[", 24, "cresc", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086128384, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/crescendo/Vn-cresc-D5-ppff-2c-R100d.wav", "]", "[", 24, "cresc", "]", "]", 0, "]", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, 100, 1, "[", "slots", "[", 7, 30, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, 100, 1, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, 100, 0, "[", "slots", "[", 7, 30, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086341760, 100, 0, "[", "slots", "[", 7, 30, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-B5-ff-2c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-B5-ff-2c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 7, 38, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-ff-1c-N.wav", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 18, "]", "[", "-1/6", 0, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086294784, 100, 1, "[", "slots", "[", 7, -34, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086294784, 100, 1, "[", "slots", "[", 7, -34, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086294784, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086307584, 100, 0, "[", "slots", "[", 7, 36, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 7, 42, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, 100, 1, "[", "slots", "[", 7, 30, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, 100, 1, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, 100, 0, "[", "slots", "[", 7, 30, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085949184, 100, 0, "[", "slots", "[", 7, 13, "]", "[", 8, "/Strings/Viola/pizzicato_secco/Va-pizz_sec-G4-ff-2c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/pizzicato_secco/Va-pizz_sec-G4-ff-2c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086006784, 100, 0, "[", "slots", "[", 7, 38, "]", "[", 8, "/Strings/Viola/pizzicato_secco/Va-pizz_sec-A5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/pizzicato_secco/Va-pizz_sec-A5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085885184, 100, 1, "[", "slots", "[", 7, -22, "]", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-F4-mf-2c-R200u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/ordinario_to_crushed/Va-ord_crush-F4-mf-2c-R200u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085885184, 100, 0, "[", "slots", "[", 7, -22, "]", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-F4-mf-2c-R200u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/ordinario_to_crushed/Va-ord_crush-F4-mf-2c-R200u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085923584, 100, 1, "[", "slots", "[", 7, 33, "]", "[", 8, "/Strings/Viola/sul_tasto_tremolo/Va-tasto_trem-F#4-mf-3c-T11u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/sul_tasto_tremolo/Va-tasto_trem-F#4-mf-3c-T11u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "tasto_trem", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085923584, 100, 1, "[", "slots", "[", 8, "/Strings/Viola/sul_tasto_tremolo/Va-tasto_trem-F#4-mf-3c-T11u.wav", "]", "[", 24, "tasto_trem", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085923584, 100, 1, "[", "slots", "[", 7, 33, "]", "[", 8, "/Strings/Viola/sul_tasto_tremolo/Va-tasto_trem-F#4-mf-3c-T11u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/sul_tasto_tremolo/Va-tasto_trem-F#4-mf-3c-T11u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "tasto_trem", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085923584, 100, 0, "[", "slots", "[", 8, "/Strings/Viola/sul_tasto_tremolo/Va-tasto_trem-F#4-mf-3c-T11u.wav", "]", "[", 24, "tasto_trem", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", "[", "[", "leveltype", 8, "]" ],
													"whole_score_data_0000000003" : [ "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086109184, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Strings/Viola/tremolo/Va-trem-C#5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/tremolo/Va-trem-C#5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "trem", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 2, "]", "[", "-3/8", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086083584, 100, 0, "[", "slots", "[", 7, 42, "]", "[", 8, "/Strings/Viola/pizzicato_l_vib/Va-pizz_lv-C5-pp-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/pizzicato_l_vib/Va-pizz_lv-C5-pp-1c-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086083584, 100, 0, "[", "slots", "[", 7, 46, "]", "[", 8, "/Strings/Viola/pizzicato_secco/Va-pizz_sec-C5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/pizzicato_secco/Va-pizz_sec-C5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085961984, 100, 1, "[", "slots", "[", 7, -24, "]", "[", 8, "/Strings/Viola/sul_ponticello_tremolo/Va-pont_trem-G#4-mf-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/sul_ponticello_tremolo/Va-pont_trem-G#4-mf-3c-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "pont_trem", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085961984, 100, 0, "[", "slots", "[", 7, -24, "]", "[", 8, "/Strings/Viola/sul_ponticello_tremolo/Va-pont_trem-G#4-mf-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/sul_ponticello_tremolo/Va-pont_trem-G#4-mf-3c-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "pont_trem", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-3/16", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086038784, 100, 1, "[", "slots", "[", 7, -23, "]", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086038784, 100, 1, "[", "slots", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", 1, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086038784, 100, 1, "[", "slots", "[", 7, -23, "]", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086038784, 100, 1, "[", "slots", "[", 7, -23, "]", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086038784, 100, 0, "[", "slots", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", 0, "]" ],
													"whole_score_data_count" : [ 4 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-35",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 186.0, 495.0, 114.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80104
													}
,
													"text" : "bach.subs @multi 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-28",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "bang", "" ],
													"patching_rect" : [ 185.599999999999994, 259.0, 60.5, 22.0 ],
													"text" : "t l b l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-27",
													"linecount" : 2,
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 205.599999999999994, 334.0, 75.75, 35.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80104
													}
,
													"text" : "bach.collect @inwrap 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 447.0, 373.0, 54.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80104
													}
,
													"text" : "bach.flat"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 226.599999999999994, 297.0, 55.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80104
													}
,
													"text" : "bach.iter"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "dump", "" ],
													"patching_rect" : [ 28.0, 52.0, 51.0, 22.0 ],
													"text" : "t dump l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1025.0, 205.0, 55.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 0,
														"versionnumber" : 80104
													}
,
													"text" : "bach.reg"
												}

											}
, 											{
												"box" : 												{
													"bwcompatibility" : 80104,
													"clefs" : [ "G", "G", "G", "G", "Tenor", "Tenor", "G", "Tenor", "G", "G8va", "G" ],
													"defaultnoteslots" : [ "null" ],
													"enharmonictable" : [ "default", "default", "default", "default", "default", "default", "default", "default", "default", "default", "default" ],
													"fontface" : 0,
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"hidevoices" : [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ],
													"id" : "obj-1",
													"keys" : [ "C", "C", "C", "C", "C", "C", "C", "C", "C", "C", "C" ],
													"legend" : 0,
													"loop" : [ "[", 1, 1, 0, "]", "[", 1, 1, "1/4", "]" ],
													"maxclass" : "bach.score",
													"maxundosteps" : 0,
													"midichannels" : [ 1, 3, 4, 5, 7, 8, 9, 13, 16, 17, 20 ],
													"notationstyles" : [ "et", "et", "et", "et", "et", "et", "et", "et", "et", "et", "et" ],
													"numinlets" : 7,
													"numoutlets" : 9,
													"numparts" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ],
													"numvoices" : 11,
													"out" : "nnnnnnnnn",
													"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
													"patching_rect" : [ 28.0, 88.0, 807.0, 131.666666666666657 ],
													"pitcheditrange" : [ "null" ],
													"playmarkers" : 0,
													"showmarkers" : 0,
													"showmeasurenumbers" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ],
													"stafflines" : [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ],
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"versionnumber" : 80900,
													"voicenames" : [ "Fl", "Ob", "Ob", "ClBb", "Bn", "Bn", "TpC", "Tbn", "Vn", "Vn", "Va" ],
													"voicespacing" : [ 0.0, 26.0, 26.0, 26.0, 26.0, 26.0, 26.0, 26.0, 26.0, 26.0, 26.0, 26.0 ],
													"whole_score_data_0000000000" : [ "score", "[", "slotinfo", "[", 1, "[", "name", "velocity envelope", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 2, "[", "name", "slot function", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 3, "[", "name", "slot intlist", "]", "[", "type", "intlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 4, "[", "name", "slot floatlist", "]", "[", "type", "floatlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 5, "[", "name", "slot int", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 6, "[", "name", "slot float", "]", "[", "type", "float", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 7, "[", "name", "detune", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 3227058176, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "mc", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 8, "[", "name", "relpath", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080213504, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 9, "[", "name", "abspath", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080213504, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 10, "[", "name", "slot llll", "]", "[", "type", "llll", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 11, "[", "name", "slot 11", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 12, "[", "name", "slot 12", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 13, "[", "name", "slot 13", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 14, "[", "name", "slot 14", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 15, "[", "name", "slot 15", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 16, "[", "name", "slot 16", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 17, "[", "name", "slot 17", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 18, "[", "name", "slot 18", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 19, "[", "name", "slot 19", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 20, "[", "name", "dynamics", "]", "[", "type", "dynamics", "]", "[", "key", "d", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 21, "[", "name", "lyrics", "]", "[", "type", "text", "]", "[", "key", "l", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 22, "[", "name", "articulations", "]", "[", "type", "articulations", "]", "[", "key", "a", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 23, "[", "name", "notehead", "]", "[", "type", "notehead", "]", "[", "key", "h", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 24, "[", "name", "annotation", "]", "[", "type", "text", "]", "[", "key", "t", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 25, "[", "name", "slot 25", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 26, "[", "name", "slot 26", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 27, "[", "name", "slot 27", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 28, "[", "name", "slot 28", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 29, "[", "name", "slot 29", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 30, "[", "name", "slot 30", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "]", "[", "commands", "[", 1, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 2, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 3, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 4, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 5, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "]", "[", "markers", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 866784783, 1087388767, "seg1.sol1", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 545392673, 1087406600, "seg2.sol17", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3905401101, 1087430375, "seg3.sol1", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1957570128, 1087498735, "seg4.sol3", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3944357721, 1087507651, "seg5.sol21", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3321051810, 1087581955, "seg6.sol4", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1344003372, 1087680038, "seg7.sol5", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1733569566, 1087709758, "seg8.sol19", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2726963363, 1087801896, "seg9.sol19", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4100184198, 1087816755, "seg10.sol1", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 97391548, 1087828646, "seg11.sol71", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 808349854, 1087840533, "seg12.sol70", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1460873230, 1087911866, "seg13.sol47", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3973575185, 1088220968, "seg14.sol1", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3652183074, 1088238801, "seg15.sol1", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3282095190, 1088247719, "seg16.sol50", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1636178018, 1088259608, "seg17.sol41", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3301573499, 1088286357, "seg18.sol48", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 97391548, 1088505702, "seg19.sol19", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1908874354, 1088538396, "seg20.sol48", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3243138570, 1088563659, "seg21.sol13", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2444527871, 1088574061, "seg22.sol27", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3437921667, 1088578519, "seg23.sol62", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3467139133, 1088636476, "seg24.sol7", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 311652956, 1088646880, "seg25.sol12", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4148879973, 1088678086, "seg26.sol26", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1840700270, 1088687003, "seg27.sol52", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3983314340, 1088721183, "seg28.sol1", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2356875477, 1088771710, "seg29.sol1", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3213921106, 1088789542, "seg30.sol28", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3691139695, 1088796973, "seg31.sol22", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1246611823, 1088819264, "seg32.sol82", "none", "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4090445043, 1088933692, "seg33.sol77", "none", "]", "]", "[", "midichannels", 1, 3, 4, 5, 7, 8, 9, 13, 16, 17, 20, "]", "[", "articulationinfo", "]", "[", "noteheadinfo", "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085876992, 100, 1, "[", "slots", "[", 7, 43, "]", "[", 8, "/Winds/Flute/sforzato/Fl-sfz-E4-fp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/sforzato/Fl-sfz-E4-fp-N-N.wav", "]", "[", 20, "[", "auto", "fp", "=", "]", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085876992, 100, 0, "[", "slots", "[", 8, "/Winds/Flute/sforzato/Fl-sfz-E4-fp-N-N.wav", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312704, 100, 1, "[", "slots", "[", 7, 45, "]", "[", 8, "/Winds/Flute/flatterzunge_to_ordinario/Fl-flatt_ord-A5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/flatterzunge_to_ordinario/Fl-flatt_ord-A5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt_ord", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312704, 100, 1, "[", "slots", "[", 8, "/Winds/Flute/flatterzunge_to_ordinario/Fl-flatt_ord-A5-mf-N-N.wav", "]", "[", 24, "flatt_ord", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312704, 100, 0, "[", "slots", "[", 8, "/Winds/Flute/flatterzunge_to_ordinario/Fl-flatt_ord-A5-mf-N-N.wav", "]", "[", 24, "flatt_ord", "]", "]", 0, "]", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086339200, 100, 0, "[", "slots", "[", 7, 5, "]", "[", 8, "/Winds/Flute/aeolian_and_ordinario/Fl-aeol_and_ord-B5-ff-N-T27d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/aeolian_and_ordinario/Fl-aeol_and_ord-B5-ff-N-T27d.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "]", "[", "-1/16", 0, "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086108928, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Flute/aeolian_and_ordinario/Fl-aeol_and_ord-C#5-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/aeolian_and_ordinario/Fl-aeol_and_ord-C#5-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 2, "]", "[", "-3/8", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086308096, 100, 0, "[", "slots", "[", 7, 27, "]", "[", 8, "/Winds/Flute/aeolian_and_ordinario/Fl-aeol_and_ord-A5-ff-N-T21d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/aeolian_and_ordinario/Fl-aeol_and_ord-A5-ff-N-T21d.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086082560, 100, 1, "[", "slots", "[", 7, 46, "]", "[", 8, "/Winds/Flute/ordinario/Fl-ord-C5-ff-N-T19d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/ordinario/Fl-ord-C5-ff-N-T19d.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 2, "]", "[", "3/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086082560, 100, 0, "[", "slots", "[", 8, "/Winds/Flute/ordinario/Fl-ord-C5-ff-N-T19d.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086311936, 100, 1, "[", "slots", "[", 7, 42, "]", "[", 8, "/Winds/Flute/flatterzunge/Fl-flatt-A5-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/flatterzunge/Fl-flatt-A5-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086311936, 100, 0, "[", "slots", "[", 8, "/Winds/Flute/flatterzunge/Fl-flatt-A5-ff-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086128384, 100, 1, "[", "slots", "[", 7, 25, "]", "[", 8, "/Winds/Flute/trill_major_second_up/Fl-trill_maj_second-D5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/trill_major_second_up/Fl-trill_maj_second-D5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086128384, 100, 0, "[", "slots", "[", 8, "/Winds/Flute/trill_major_second_up/Fl-trill_maj_second-D5-mf-N-N.wav", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 1, "[", "slots", "[", 7, 30, "]", "[", 8, "/Winds/Flute/ordinario/Fl-ord-A#5-ff-N-T21d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/ordinario/Fl-ord-A#5-ff-N-T21d.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 1, "[", "slots", "[", 8, "/Winds/Flute/ordinario/Fl-ord-A#5-ff-N-T21d.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 0, "[", "slots", "[", 8, "/Winds/Flute/ordinario/Fl-ord-A#5-ff-N-T21d.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085927680, 100, 0, "[", "slots", "[", 7, 41, "]", "[", 8, "/Winds/Oboe/double_trill_minor_second_up/Ob-dbl_trill_min_second-F#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/double_trill_minor_second_up/Ob-dbl_trill_min_second-F#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "dbl_trill_min_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086327040, 100, 1, "[", "slots", "[", 7, 10, "]", "[", 8, "/Winds/Oboe/trill_major_second_up/Ob-trill_maj_second-A#5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/trill_major_second_up/Ob-trill_maj_second-A#5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086327040, 100, 0, "[", "slots", "[", 8, "/Winds/Oboe/trill_major_second_up/Ob-trill_maj_second-A#5-mf-N-N.wav", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-3/4", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086114816, 100, 0, "[", "slots", "[", 7, -28, "]", "[", 8, "/Winds/Oboe/sforzato/Ob-sfz-D5-f-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/sforzato/Ob-sfz-D5-f-N-N.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/20", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086082560, 100, 0, "[", "slots", "[", 7, 46, "]", "[", 8, "/Winds/Oboe/lip_glissando/Ob-lip_gl_asc_slow-C5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/lip_glissando/Ob-lip_gl_asc_slow-C5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "lip_gl_asc_slow", "]", "]", 0, "]", 0, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086108928, 100, 1, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 20, "[", "auto", "ffpp", "=", "]", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 2, "]", "[", "3/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086108928, 100, 0, "[", "slots", "[", 8, "/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-3/16", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086331392, 100, 0, "[", "slots", "[", 7, 44, "]", "[", 8, "/Winds/Oboe/trill_minor_second_up/Ob-trill_min_second-A#5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/trill_minor_second_up/Ob-trill_min_second-A#5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_min_second", "]", "]", 0, "]", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086108928, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 20, "[", "auto", "ffpp", "=", "]", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 1, "[", "slots", "[", 7, 30, "]", "[", 8, "/Winds/Oboe/flatterzunge/Ob-flatt-A#5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/flatterzunge/Ob-flatt-A#5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 1, "[", "slots", "[", 8, "/Winds/Oboe/flatterzunge/Ob-flatt-A#5-mf-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 0, "[", "slots", "[", 8, "/Winds/Oboe/flatterzunge/Ob-flatt-A#5-mf-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086104576, 100, 1, "[", "slots", "[", 7, 32, "]", "[", 8, "/Winds/Oboe/sforzato/Ob-sfz-C#5-f-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/sforzato/Ob-sfz-C#5-f-N-R100d.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086104576, 100, 0, "[", "slots", "[", 8, "/Winds/Oboe/sforzato/Ob-sfz-C#5-f-N-R100d.wav", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-3/4", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086108928, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 20, "[", "auto", "ffpp", "=", "]", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "-1/6", 0, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086337408, 100, 1, "[", "slots", "[", 7, -9, "]", "[", 8, "/Winds/Oboe/trill_major_second_up/Ob-trill_maj_second-B5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/trill_major_second_up/Ob-trill_maj_second-B5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086337408, 100, 0, "[", "slots", "[", 8, "/Winds/Oboe/trill_major_second_up/Ob-trill_maj_second-B5-mf-N-N.wav", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086108928, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 20, "[", "auto", "ffpp", "=", "]", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086342400, 100, 0, "[", "slots", "[", 7, 30, "]", "[", 8, "/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-B5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-B5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[" ],
													"whole_score_data_0000000001" : [ 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-3/4", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086114816, 100, 1, "[", "slots", "[", 7, -28, "]", "[", 8, "/Winds/Clarinet_Bb/aeolian_and_ordinario/ClBb-aeol_and_ord-D5-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/aeolian_and_ordinario/ClBb-aeol_and_ord-D5-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086114816, 100, 0, "[", "slots", "[", 8, "/Winds/Clarinet_Bb/aeolian_and_ordinario/ClBb-aeol_and_ord-D5-pp-N-N.wav", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/12", 0, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085825024, 100, 1, "[", "slots", "[", 7, 40, "]", "[", 8, "/Winds/Clarinet_Bb/aeolian_and_ordinario/ClBb-aeol_and_ord-D4-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/aeolian_and_ordinario/ClBb-aeol_and_ord-D4-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/20", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085825024, 100, 0, "[", "slots", "[", 8, "/Winds/Clarinet_Bb/aeolian_and_ordinario/ClBb-aeol_and_ord-D4-pp-N-N.wav", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "[", "-1/10", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086343040, 100, 0, "[", "slots", "[", 7, 35, "]", "[", 8, "/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-B5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-B5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086306560, 100, 1, "[", "slots", "[", 7, 21, "]", "[", 8, "/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-A5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-A5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 2, "]", "[", "3/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086306560, 100, 0, "[", "slots", "[", 8, "/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-A5-mf-N-N.wav", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086343424, 100, 0, "[", "slots", "[", 7, 38, "]", "[", 8, "/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-B5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-B5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312448, 100, 1, "[", "slots", "[", 7, 44, "]", "[", 8, "/Winds/Clarinet_Bb/flatterzunge/ClBb-flatt-A5-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/flatterzunge/ClBb-flatt-A5-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312448, 100, 1, "[", "slots", "[", 8, "/Winds/Clarinet_Bb/flatterzunge/ClBb-flatt-A5-ff-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312448, 100, 0, "[", "slots", "[", 8, "/Winds/Clarinet_Bb/flatterzunge/ClBb-flatt-A5-ff-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085927680, 100, 0, "[", "slots", "[", 7, 41, "]", "[", 8, "/Winds/Bassoon/sforzato/Bn-sfz-F#4-fp-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/sforzato/Bn-sfz-F#4-fp-N-R100d.wav", "]", "[", 20, "[", "auto", "fp", "=", "]", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085956864, 100, 1, "[", "slots", "[", 7, -45, "]", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-G#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-G#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085956864, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-G#4-mf-N-N.wav", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085876480, 100, 0, "[", "slots", "[", 7, 41, "]", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897728, 100, 1, "[", "slots", "[", 7, 24, "]", "[", 8, "/Winds/Bassoon/note_lasting/Bn-lasting_one_sec-F4-mf-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/note_lasting/Bn-lasting_one_sec-F4-mf-N-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "lasting_one_sec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897728, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/note_lasting/Bn-lasting_one_sec-F4-mf-N-R100u.wav", "]", "[", 24, "lasting_one_sec", "]", "]", 0, "]", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085952512, 100, 1, "[", "slots", "[", 7, 38, "]", "[", 8, "/Winds/Bassoon/crescendo_to_decrescendo/Bn-cre_dec-G4-ppmfpp-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/crescendo_to_decrescendo/Bn-cre_dec-G4-ppmfpp-N-R100u.wav", "]", "[", 20, "[", "auto", "ppmfpp", "=", "]", "]", "[", 24, "cre_dec", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085952512, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/crescendo_to_decrescendo/Bn-cre_dec-G4-ppmfpp-N-R100u.wav", "]", "[", 24, "cre_dec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085952512, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/crescendo_to_decrescendo/Bn-cre_dec-G4-ppmfpp-N-R100u.wav", "]", "[", 24, "cre_dec", "]", "]", 0, "]", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085934592, 100, 0, "[", "slots", "[", 7, -32, "]", "[", 8, "/Winds/Bassoon/flatterzunge/Bn-flatt-G4-mf-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/flatterzunge/Bn-flatt-G4-mf-N-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085876992, 100, 1, "[", "slots", "[", 7, 43, "]", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085876992, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/10", 0, "]", "[", "[", "leveltype", 2, "]", "[", "[", "leveltype", 2, "]", "[", "1/20", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878528, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086108928, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-C#5-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-C#5-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "]", "[", "-1/10", 0, "]", "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-3/16", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085843456, 100, 1, "[", "slots", "[", 7, 12, "]", "[", 8, "/Winds/Bassoon/staccato/Bn-stacc-D#4-mf-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/staccato/Bn-stacc-D#4-mf-N-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085843456, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/staccato/Bn-stacc-D#4-mf-N-R100u.wav", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085843456, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/staccato/Bn-stacc-D#4-mf-N-R100u.wav", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085843456, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/staccato/Bn-stacc-D#4-mf-N-R100u.wav", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085933312, 100, 0, "[", "slots", "[", 7, -37, "]", "[", 8, "/Winds/Bassoon/flatterzunge/Bn-flatt-G4-mf-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/flatterzunge/Bn-flatt-G4-mf-N-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/20", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929216, 100, 0, "[", "slots", "[", 7, 47, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085874432, 100, 1, "[", "slots", "[", 7, 33, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-E4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-E4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085874432, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-E4-ff-N-N.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085874432, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-E4-ff-N-N.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085874432, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-E4-ff-N-N.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085851136, 100, 1, "[", "slots", "[", 7, 42, "]", "[", 8, "/Winds/Bassoon/trill_minor_second_up/Bn-trill_min_second-D#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/trill_minor_second_up/Bn-trill_min_second-D#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_min_second", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085851136, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/trill_minor_second_up/Bn-trill_min_second-D#4-mf-N-N.wav", "]", "[", 24, "trill_min_second", "]", "]", 0, "]", 0, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085801728, 100, 1, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Bassoon/flatterzunge/Bn-flatt-C#4-mf-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/flatterzunge/Bn-flatt-C#4-mf-N-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085801728, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/flatterzunge/Bn-flatt-C#4-mf-N-R100u.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085973248, 100, 0, "[", "slots", "[", 7, 19, "]", "[", 8, "/Winds/Bassoon/flatterzunge/Bn-flatt-G#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/flatterzunge/Bn-flatt-G#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "-1/8", 0, "]", "]", "[", "[", "leveltype", 2, "]", "[", "-3/8", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085922304, 100, 0, "[", "slots", "[", 7, 20, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-3/16", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085952768, 100, 0, "[", "slots", "[", 7, 39, "]", "[", 8, "/Winds/Bassoon/vibrato/Bn-vib-G4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/vibrato/Bn-vib-G4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "vib", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085882624, 100, 0, "[", "slots", "[", 7, -35, "]", "[", 8, "/Winds/Bassoon/harmonic_fingering/Bn-harm_fngr-F4-f-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/harmonic_fingering/Bn-harm_fngr-F4-f-N-N.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "harm_fngr", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897216, 100, 1, "[", "slots", "[", 7, 22, "]", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-F4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-F4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897216, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-F4-mf-N-N.wav", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085907712, 100, 1, "[", "slots", "[", 7, -37, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085907712, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085947904, 100, 1, "[", "slots", "[", 7, 20, "]", "[", 8, "/Winds/Bassoon/vibrato/Bn-vib-G4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/vibrato/Bn-vib-G4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "vib", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085947904, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/vibrato/Bn-vib-G4-mf-N-N.wav", "]", "[", 24, "vib", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085947904, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/vibrato/Bn-vib-G4-mf-N-N.wav", "]", "[", 24, "vib", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086093312, 100, 1, "[", "slots", "[", 7, -12, "]", "[", 8, "/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 20, "[", "auto", "ffpp", "=", "]", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086093312, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", 1, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086093312, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086093312, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086093312, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085876992, 100, 1, "[", "slots", "[", 7, 43, "]", "[", 8, "/Winds/Bassoon/glissando_with_throat/Bn-throat_gl_dsc_slw-E4-N-E4-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/glissando_with_throat/Bn-throat_gl_dsc_slw-E4-N-E4-N.wav", "]", "[", 20, "[", "auto", "N", "=", "]", "]", "[", 24, "throat_gl_dsc_slw", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085876992, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/glissando_with_throat/Bn-throat_gl_dsc_slw-E4-N-E4-N.wav", "]", "[", 24, "throat_gl_dsc_slw", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-3/4", 0, "]", "[", "[", "leveltype", 24, "]", "[", "-1/12", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085907968, 100, 0, "[", "slots", "[", 7, -36, "]", "[", 8, "/Winds/Bassoon/flatterzunge/Bn-flatt-F#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/flatterzunge/Bn-flatt-F#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 18, "]", "[", "-1/6", 0, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897728, 100, 1, "[", "slots", "[", 7, 24, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-F4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897728, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F4-mf-N-N.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897728, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F4-mf-N-N.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-3/4", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085873664, 100, 0, "[", "slots", "[", 7, 30, "]", "[", 8, "/Winds/Bassoon/note_lasting/Bn-lasting_one_sec-E4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/note_lasting/Bn-lasting_one_sec-E4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "lasting_one_sec", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085874176, 100, 0, "[", "slots", "[", 7, 32, "]", "[", 8, "/Winds/Bassoon/crescendo_to_decrescendo/Bn-cre_dec-E4-ppmfpp-N-R200u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/crescendo_to_decrescendo/Bn-cre_dec-E4-ppmfpp-N-R200u.wav", "]", "[", 20, "[", "auto", "ppmfpp", "=", "]", "]", "[", 24, "cre_dec", "]", "]", 0, "]", 0, "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-3/4", 0, "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312704, 100, 1, "[", "slots", "[", 7, 45, "]", "[", 8, "/Brass/Trumpet_C/note_lasting/TpC-lasting_half_sec-A5-mf-N-T20d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trumpet_C/note_lasting/TpC-lasting_half_sec-A5-mf-N-T20d.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "lasting_half_sec", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312704, 100, 1, "[", "slots", "[", 8, "/Brass/Trumpet_C/note_lasting/TpC-lasting_half_sec-A5-mf-N-T20d.wav", "]", "[", 24, "lasting_half_sec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312704, 100, 0, "[", "slots", "[", 8, "/Brass/Trumpet_C/note_lasting/TpC-lasting_half_sec-A5-mf-N-T20d.wav", "]", "[", 24, "lasting_half_sec", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086103040, 100, 0, "[", "slots", "[", 7, 26, "]", "[", 8, "/Brass/Trumpet_C/flatterzunge/TpC-flatt-C#5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trumpet_C/flatterzunge/TpC-flatt-C#5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929472, 100, 1, "[", "slots", "[", 7, 48, "]", "[", 8, "/Brass/Trumpet_C/ordinario/TpC-ord-F#4-pp-N-T12u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trumpet_C/ordinario/TpC-ord-F#4-pp-N-T12u.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929472, 100, 1, "[", "slots", "[", 8, "/Brass/Trumpet_C/ordinario/TpC-ord-F#4-pp-N-T12u.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929472, 100, 1, "[", "slots", "[", 8, "/Brass/Trumpet_C/ordinario/TpC-ord-F#4-pp-N-T12u.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929472, 100, 0, "[", "slots", "[", 8, "/Brass/Trumpet_C/ordinario/TpC-ord-F#4-pp-N-T12u.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/12", 0, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085825024, 100, 1, "[", "slots", "[", 7, 40, "]", "[", 8, "/Brass/Trumpet_C/sforzato/TpC-sfz-D4-f-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trumpet_C/sforzato/TpC-sfz-D4-f-N-R100d.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085825024, 100, 0, "[", "slots", "[", 8, "/Brass/Trumpet_C/sforzato/TpC-sfz-D4-f-N-R100d.wav", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 1, "[", "slots", "[", 7, 30, "]", "[", 8, "/Brass/Trumpet_C/staccato/TpC-stacc-A#5-mf-N-R200d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trumpet_C/staccato/TpC-stacc-A#5-mf-N-R200d.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 1, "[", "slots", "[", 8, "/Brass/Trumpet_C/staccato/TpC-stacc-A#5-mf-N-R200d.wav", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 0, "[", "slots", "[", 8, "/Brass/Trumpet_C/staccato/TpC-stacc-A#5-mf-N-R200d.wav", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085969408, 100, 0, "[", "slots", "[", 7, 4, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086115072, 100, 0, "[", "slots", "[", 7, -27, "]", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-f-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-f-N-N.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085899776, 100, 0, "[", "slots", "[", 7, 32, "]", "[", 8, "/Brass/Trombone/ordinario_to_flatterzunge/Tbn-ord_flatt-F4-f-N-R200u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/ordinario_to_flatterzunge/Tbn-ord_flatt-F4-f-N-R200u.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "ord_flatt", "]", "]", 0, "]", 0, "]", "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "-1/6", 0, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085979136, 100, 1, "[", "slots", "[", 7, 42, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085979136, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-pp-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086114816, 100, 0, "[", "slots", "[", 7, -28, "]", "[", 8, "/Brass/Trombone/ordinario_no_mouthpiece/Tbn-ord_no_mthpc-D5-p-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/ordinario_no_mouthpiece/Tbn-ord_no_mthpc-D5-p-N-N.wav", "]", "[", 20, "[", "auto", "p", "=", "]", "]", "[", 24, "ord_no_mthpc", "]", "]", 0, "]", 0, "]", "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085885952, 100, 1, "[", "slots", "[", 7, -22, "]", "[", 8, "/Brass/Trombone/staccato/Tbn-stacc-F4-mf-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/staccato/Tbn-stacc-F4-mf-N-R100d.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085885952, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/staccato/Tbn-stacc-F4-mf-N-R100d.wav", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085948672, 100, 1, "[", "slots", "[", 7, 23, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[" ],
													"whole_score_data_0000000002" : [ "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085948672, 100, 1, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-ff-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085948672, 100, 1, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-ff-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085948672, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-ff-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/20", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086108928, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-C#5-f-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-C#5-f-N-N.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085979392, 100, 0, "[", "slots", "[", 7, 43, "]", "[", 8, "/Brass/Trombone/staccato/Tbn-stacc-G#4-mf-N-R200d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/staccato/Tbn-stacc-G#4-mf-N-R200d.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085952512, 100, 1, "[", "slots", "[", 7, 38, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085952512, 100, 1, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085952512, 100, 1, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085952512, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/12", 0, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085801728, 100, 1, "[", "slots", "[", 7, 49, "]", "[", 8, "/Brass/Trombone/ordinario/Tbn-ord-C#4-mf-N-T13d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/ordinario/Tbn-ord-C#4-mf-N-T13d.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "[", "leveltype", 2, "]", "[", "1/20", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085801728, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/ordinario/Tbn-ord-C#4-mf-N-T13d.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085973248, 100, 0, "[", "slots", "[", 7, 19, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085948416, 100, 0, "[", "slots", "[", 7, 22, "]", "[", 8, "/Brass/Trombone/flatterzunge_to_ordinario/Tbn-flatt_ord-G4-f-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge_to_ordinario/Tbn-flatt_ord-G4-f-N-R100u.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "flatt_ord", "]", "]", 0, "]", 0, "]", "]", "]", "[", "-1/10", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-3/16", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085978880, 100, 1, "[", "slots", "[", 7, 41, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085978880, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-mf-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085939200, 100, 1, "[", "slots", "[", 7, -14, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085939200, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085953536, 100, 1, "[", "slots", "[", 7, 42, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G4-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085953536, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-pp-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085953280, 100, 1, "[", "slots", "[", 7, 41, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085953280, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085880832, 100, 1, "[", "slots", "[", 7, -42, "]", "[", 8, "/Brass/Trombone/crescendo/Tbn-cresc-F4-ppff-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/crescendo/Tbn-cresc-F4-ppff-N-R100u.wav", "]", "[", 20, "[", "auto", "ppff", "=", "]", "]", "[", 24, "cresc", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085880832, 100, 1, "[", "slots", "[", 8, "/Brass/Trombone/crescendo/Tbn-cresc-F4-ppff-N-R100u.wav", "]", "[", 24, "cresc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085880832, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/crescendo/Tbn-cresc-F4-ppff-N-R100u.wav", "]", "[", 24, "cresc", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086129408, 100, 1, "[", "slots", "[", 7, 29, "]", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 20, "[", "auto", "p", "=", "]", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086129408, 100, 1, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", 1, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086129408, 100, 1, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086129408, 100, 1, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086129408, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085969408, 100, 0, "[", "slots", "[", 7, 4, "]", "[", 8, "/Strings/Violin/col_legno_battuto/Vn-legno_batt-G#4-mf-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/col_legno_battuto/Vn-legno_batt-G#4-mf-3c-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "legno_batt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086342400, 100, 0, "[", "slots", "[", 7, 30, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-B5-ff-2c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-B5-ff-2c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086311424, 100, 1, "[", "slots", "[", 7, 40, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-pp-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-pp-1c-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086311424, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-pp-1c-N.wav", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312704, 100, 1, "[", "slots", "[", 7, 45, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312704, 100, 1, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312704, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086331648, 100, 0, "[", "slots", "[", 7, 46, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A#5-mf-2c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A#5-mf-2c-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312704, 100, 1, "[", "slots", "[", 7, 45, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086312704, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085935360, 100, 0, "[", "slots", "[", 7, -29, "]", "[", 8, "/Strings/Violin/pizzicato_bartok/Vn-pizz_bartok-G4-ff-4c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_bartok/Vn-pizz_bartok-G4-ff-4c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_bartok", "]", "]", 0, "]", 0, "]", "[", "-1/20", 0, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086321152, 100, 1, "[", "slots", "[", 7, -22, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086321152, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086311680, 100, 1, "[", "slots", "[", 7, 41, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086311680, 100, 1, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086311680, 100, 1, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086311680, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313216, 100, 0, "[", "slots", "[", 7, 47, "]", "[", 8, "/Strings/Violin/tremolo/Vn-trem-A5-mf-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/tremolo/Vn-trem-A5-mf-1c-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trem", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086292480, 100, 1, "[", "slots", "[", 7, -34, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086292480, 100, 1, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086292480, 100, 1, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086292480, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/20", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086310400, 100, 0, "[", "slots", "[", 7, 36, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086324992, 100, 0, "[", "slots", "[", 7, -6, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "]", "[", "-1/10", 0, "]", "]", "[", "[", "leveltype", 2, "]", "[", "-3/8", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086294784, 100, 0, "[", "slots", "[", 7, -25, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086297088, 100, 1, "[", "slots", "[", 7, -16, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086297088, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-ff-3c-N.wav", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086308608, 100, 0, "[", "slots", "[", 7, 29, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086311936, 100, 1, "[", "slots", "[", 7, 42, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086311936, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086129408, 100, 1, "[", "slots", "[", 7, 29, "]", "[", 8, "/Strings/Violin/crescendo/Vn-cresc-D5-ppff-2c-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/crescendo/Vn-cresc-D5-ppff-2c-R100d.wav", "]", "[", 20, "[", "auto", "ppff", "=", "]", "]", "[", 24, "cresc", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086129408, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/crescendo/Vn-cresc-D5-ppff-2c-R100d.wav", "]", "[", 24, "cresc", "]", "]", 0, "]", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 1, "[", "slots", "[", 7, 30, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 1, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086342400, 100, 0, "[", "slots", "[", 7, 30, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-B5-ff-2c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-B5-ff-2c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086310912, 100, 1, "[", "slots", "[", 7, 38, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086310912, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-ff-1c-N.wav", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 18, "]", "[", "-1/6", 0, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086292480, 100, 1, "[", "slots", "[", 7, -34, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086292480, 100, 1, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086292480, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086310400, 100, 0, "[", "slots", "[", 7, 36, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086311936, 100, 1, "[", "slots", "[", 7, 42, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086311936, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 1, "[", "slots", "[", 7, 30, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 1, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086329600, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085946112, 100, 0, "[", "slots", "[", 7, 13, "]", "[", 8, "/Strings/Viola/pizzicato_secco/Va-pizz_sec-G4-ff-2c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/pizzicato_secco/Va-pizz_sec-G4-ff-2c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086310912, 100, 0, "[", "slots", "[", 7, 38, "]", "[", 8, "/Strings/Viola/pizzicato_secco/Va-pizz_sec-A5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/pizzicato_secco/Va-pizz_sec-A5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085885952, 100, 1, "[", "slots", "[", 7, -22, "]", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-F4-mf-2c-R200u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/ordinario_to_crushed/Va-ord_crush-F4-mf-2c-R200u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085885952, 100, 0, "[", "slots", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-F4-mf-2c-R200u.wav", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085925632, 100, 1, "[", "slots", "[", 7, 33, "]", "[", 8, "/Strings/Viola/sul_tasto_tremolo/Va-tasto_trem-F#4-mf-3c-T11u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/sul_tasto_tremolo/Va-tasto_trem-F#4-mf-3c-T11u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "tasto_trem", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085925632, 100, 1, "[", "slots", "[", 8, "/Strings/Viola/sul_tasto_tremolo/Va-tasto_trem-F#4-mf-3c-T11u.wav", "]", "[", 24, "tasto_trem", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085925632, 100, 1, "[", "slots", "[", 8, "/Strings/Viola/sul_tasto_tremolo/Va-tasto_trem-F#4-mf-3c-T11u.wav", "]", "[", 24, "tasto_trem", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085925632, 100, 0, "[", "slots", "[", 8, "/Strings/Viola/sul_tasto_tremolo/Va-tasto_trem-F#4-mf-3c-T11u.wav", "]", "[", 24, "tasto_trem", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086108928, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Strings/Viola/tremolo/Va-trem-C#5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/tremolo/Va-trem-C#5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "trem", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 2, "]", "[", "-3/8", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086081536, 100, 0, "[", "slots", "[", 7, 42, "]", "[", 8, "/Strings/Viola/pizzicato_l_vib/Va-pizz_lv-C5-pp-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/pizzicato_l_vib/Va-pizz_lv-C5-pp-1c-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086082560, 100, 0, "[", "slots", "[", 7, 46, "]", "[", 8, "/Strings/Viola/pizzicato_secco/Va-pizz_sec-C5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/pizzicato_secco/Va-pizz_sec-C5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085962240, 100, 1, "[", "slots", "[", 7, -24, "]", "[", 8, "/Strings/Viola/sul_ponticello_tremolo/Va-pont_trem-G#4-mf-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/sul_ponticello_tremolo/Va-pont_trem-G#4-mf-3c-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "pont_trem", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085962240, 100, 0, "[", "slots", "[", 8, "/Strings/Viola/sul_ponticello_tremolo/Va-pont_trem-G#4-mf-3c-N.wav", "]", "[", 24, "pont_trem", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4 ],
													"whole_score_data_0000000003" : [ "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-3/16", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086335616, 100, 1, "[", "slots", "[", 7, -23, "]", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086335616, 100, 1, "[", "slots", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", 1, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086335616, 100, 1, "[", "slots", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086335616, 100, 1, "[", "slots", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086335616, 100, 0, "[", "slots", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", 0, "]" ],
													"whole_score_data_count" : [ 4 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-47",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 417.333333333333371, 399.0, 48.0, 22.0 ],
													"text" : "s dump"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-45",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "bang", "bang", "bang", "" ],
													"patching_rect" : [ 358.0, 340.5, 108.0, 22.0 ],
													"text" : "t b b b l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-43",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 64.0, 0.0, 45.0, 22.0 ],
													"text" : "r score"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-52",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 358.0, 308.5, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-53",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 28.0, 733.0, 24.0, 24.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 1 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-53", 0 ],
													"midpoints" : [ 663.5, 721.833333333333258, 37.5, 721.833333333333258 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-53", 0 ],
													"order" : 0,
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 1,
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-20", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 1 ],
													"source" : [ "obj-23", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 2 ],
													"midpoints" : [ 456.5, 482.0, 290.5, 482.0 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 1 ],
													"midpoints" : [ 215.099999999999994, 473.0, 243.0, 473.0 ],
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-28", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"source" : [ "obj-28", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 1 ],
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-4", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 5 ],
													"source" : [ "obj-4", 5 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 4 ],
													"source" : [ "obj-4", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 3 ],
													"source" : [ "obj-4", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 2 ],
													"source" : [ "obj-4", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 1 ],
													"source" : [ "obj-43", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"midpoints" : [ 367.5, 428.5, 663.5, 428.5 ],
													"source" : [ "obj-45", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-45", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"midpoints" : [ 397.166666666666686, 442.0, 13.0, 442.0, 13.0, 7.0, 37.5, 7.0 ],
													"source" : [ "obj-45", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 0 ],
													"source" : [ "obj-45", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-45", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-53", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"source" : [ "obj-56", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 792.266680690055864, 306.586181625733957, 65.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p to_score"
								}

							}
, 							{
								"box" : 								{
									"bwcompatibility" : 80100,
									"clefs" : [ "G", "G", "G", "G", "Tenor", "Tenor", "G", "Tenor", "G", "G8va", "G" ],
									"defaultnoteslots" : [ "null" ],
									"enharmonictable" : [ "default", "default", "default", "default", "default", "default", "default", "default", "default", "default", "default" ],
									"fontface" : 1,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidevoices" : [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ],
									"id" : "obj-50",
									"keys" : [ "C", "C", "C", "C", "C", "C", "C", "C", "C", "C", "C" ],
									"loop" : [ "[", 1, 1, 0, "]", "[", 1, 1, "1/4", "]" ],
									"maxclass" : "bach.score",
									"midichannels" : [ 1, 3, 4, 5, 7, 8, 9, 13, 16, 17, 20 ],
									"notationstyles" : [ "et", "et", "et", "et", "et", "et", "et", "et", "et", "et", "et" ],
									"numinlets" : 7,
									"numoutlets" : 9,
									"numparts" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ],
									"numvoices" : 11,
									"out" : "nnnnnnnnn",
									"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 792.266680690055864, 332.766665160655975, 429.951929152011871, 395.0 ],
									"pitcheditrange" : [ "null" ],
									"presentation" : 1,
									"presentation_rect" : [ 398.162010133266449, 540.524013459682465, 1600.0, 395.0 ],
									"showmarkers" : 0,
									"showmeasurenumbers" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ],
									"stafflines" : [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"tonedivision" : 4,
									"versionnumber" : 80900,
									"voicenames" : [ "Fl", "Ob", "Ob", "ClBb", "Bn", "Bn", "TpC", "Tbn", "Vn", "Vn", "Va" ],
									"voicespacing" : [ 0.0, 26.0, 26.0, 26.0, 26.0, 26.0, 26.0, 26.0, 26.0, 26.0, 26.0, 26.0 ],
									"whole_score_data_0000000000" : [ "score", "[", "slotinfo", "[", 1, "[", "name", "velocity envelope", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 2, "[", "name", "slot function", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 3, "[", "name", "slot intlist", "]", "[", "type", "intlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 4, "[", "name", "slot floatlist", "]", "[", "type", "floatlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 5, "[", "name", "slot int", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 6, "[", "name", "slot float", "]", "[", "type", "float", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 7, "[", "name", "detune", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 3227058176, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "mc", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 8, "[", "name", "relpath", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080213504, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 9, "[", "name", "abspath", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080213504, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 10, "[", "name", "slot llll", "]", "[", "type", "llll", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 11, "[", "name", "slot 11", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 12, "[", "name", "slot 12", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 13, "[", "name", "slot 13", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 14, "[", "name", "slot 14", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 15, "[", "name", "slot 15", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 16, "[", "name", "slot 16", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 17, "[", "name", "slot 17", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 18, "[", "name", "slot 18", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 19, "[", "name", "slot 19", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 20, "[", "name", "dynamics", "]", "[", "type", "dynamics", "]", "[", "key", "d", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 21, "[", "name", "lyrics", "]", "[", "type", "text", "]", "[", "key", "l", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 22, "[", "name", "articulations", "]", "[", "type", "articulations", "]", "[", "key", "a", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 23, "[", "name", "notehead", "]", "[", "type", "notehead", "]", "[", "key", "h", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 24, "[", "name", "annotation", "]", "[", "type", "text", "]", "[", "key", "t", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 25, "[", "name", "slot 25", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 26, "[", "name", "slot 26", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 27, "[", "name", "slot 27", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 28, "[", "name", "slot 28", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 29, "[", "name", "slot 29", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 30, "[", "name", "slot 30", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "]", "[", "commands", "[", 1, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 2, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 3, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 4, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 5, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "]", "[", "markers", "]", "[", "midichannels", 1, 3, 4, 5, 7, 8, 9, 13, 16, 17, 20, "]", "[", "articulationinfo", "]", "[", "noteheadinfo", "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, 100, 1, "[", "slots", "[", 7, 43, "]", "[", 8, "/Winds/Flute/sforzato/Fl-sfz-E4-fp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/sforzato/Fl-sfz-E4-fp-N-N.wav", "]", "[", 20, "[", "auto", "fp", "=", "]", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, 100, 0, "[", "slots", "[", 8, "/Winds/Flute/sforzato/Fl-sfz-E4-fp-N-N.wav", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086006784, 100, 1, "[", "slots", "[", 7, 45, "]", "[", 8, "/Winds/Flute/flatterzunge_to_ordinario/Fl-flatt_ord-A5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/flatterzunge_to_ordinario/Fl-flatt_ord-A5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt_ord", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086006784, 100, 1, "[", "slots", "[", 7, 45, "]", "[", 8, "/Winds/Flute/flatterzunge_to_ordinario/Fl-flatt_ord-A5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/flatterzunge_to_ordinario/Fl-flatt_ord-A5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt_ord", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086006784, 100, 0, "[", "slots", "[", 8, "/Winds/Flute/flatterzunge_to_ordinario/Fl-flatt_ord-A5-mf-N-N.wav", "]", "[", 24, "flatt_ord", "]", "]", 0, "]", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086045184, 100, 0, "[", "slots", "[", 7, 5, "]", "[", 8, "/Winds/Flute/aeolian_and_ordinario/Fl-aeol_and_ord-B5-ff-N-T27d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/aeolian_and_ordinario/Fl-aeol_and_ord-B5-ff-N-T27d.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "]", "[", "-1/16", 0, "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086109184, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Flute/aeolian_and_ordinario/Fl-aeol_and_ord-C#5-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/aeolian_and_ordinario/Fl-aeol_and_ord-C#5-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 2, "]", "[", "-3/8", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086307584, 100, 0, "[", "slots", "[", 7, 27, "]", "[", 8, "/Winds/Flute/aeolian_and_ordinario/Fl-aeol_and_ord-A5-ff-N-T21d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/aeolian_and_ordinario/Fl-aeol_and_ord-A5-ff-N-T21d.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086083584, 100, 1, "[", "slots", "[", 7, 46, "]", "[", 8, "/Winds/Flute/ordinario/Fl-ord-C5-ff-N-T19d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/ordinario/Fl-ord-C5-ff-N-T19d.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 2, "]", "[", "3/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086083584, 100, 0, "[", "slots", "[", 8, "/Winds/Flute/ordinario/Fl-ord-C5-ff-N-T19d.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 7, 42, "]", "[", 8, "/Winds/Flute/flatterzunge/Fl-flatt-A5-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/flatterzunge/Fl-flatt-A5-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 0, "[", "slots", "[", 8, "/Winds/Flute/flatterzunge/Fl-flatt-A5-ff-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086128384, 100, 1, "[", "slots", "[", 7, 25, "]", "[", 8, "/Winds/Flute/trill_major_second_up/Fl-trill_maj_second-D5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/trill_major_second_up/Fl-trill_maj_second-D5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086128384, 100, 0, "[", "slots", "[", 7, 25, "]", "[", 8, "/Winds/Flute/trill_major_second_up/Fl-trill_maj_second-D5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/trill_major_second_up/Fl-trill_maj_second-D5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, 100, 1, "[", "slots", "[", 7, 30, "]", "[", 8, "/Winds/Flute/ordinario/Fl-ord-A#5-ff-N-T21d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/ordinario/Fl-ord-A#5-ff-N-T21d.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, 100, 1, "[", "slots", "[", 8, "/Winds/Flute/ordinario/Fl-ord-A#5-ff-N-T21d.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, 100, 0, "[", "slots", "[", 7, 30, "]", "[", 8, "/Winds/Flute/ordinario/Fl-ord-A#5-ff-N-T21d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Flute/ordinario/Fl-ord-A#5-ff-N-T21d.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929984, 100, 0, "[", "slots", "[", 7, 41, "]", "[", 8, "/Winds/Oboe/double_trill_minor_second_up/Ob-dbl_trill_min_second-F#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/double_trill_minor_second_up/Ob-dbl_trill_min_second-F#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "dbl_trill_min_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086019584, 100, 1, "[", "slots", "[", 7, 10, "]", "[", 8, "/Winds/Oboe/trill_major_second_up/Ob-trill_maj_second-A#5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/trill_major_second_up/Ob-trill_maj_second-A#5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086019584, 100, 0, "[", "slots", "[", 8, "/Winds/Oboe/trill_major_second_up/Ob-trill_maj_second-A#5-mf-N-N.wav", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-3/4", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086115584, 100, 0, "[", "slots", "[", 7, -28, "]", "[", 8, "/Winds/Oboe/sforzato/Ob-sfz-D5-f-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/sforzato/Ob-sfz-D5-f-N-N.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/20", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086083584, 100, 0, "[", "slots", "[", 7, 46, "]", "[", 8, "/Winds/Oboe/lip_glissando/Ob-lip_gl_asc_slow-C5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/lip_glissando/Ob-lip_gl_asc_slow-C5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "lip_gl_asc_slow", "]", "]", 0, "]", 0, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086109184, 100, 1, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 20, "[", "auto", "ffpp", "=", "]", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 2, "]", "[", "3/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086109184, 100, 0, "[", "slots", "[", 8, "/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-3/16", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086332160, 100, 0, "[", "slots", "[", 7, 44, "]", "[", 8, "/Winds/Oboe/trill_minor_second_up/Ob-trill_min_second-A#5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/trill_minor_second_up/Ob-trill_min_second-A#5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_min_second", "]", "]", 0, "]", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086109184, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 20, "[", "auto", "ffpp", "=", "]", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, 100, 1, "[", "slots", "[", 7, 30, "]", "[", 8, "/Winds/Oboe/flatterzunge/Ob-flatt-A#5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/flatterzunge/Ob-flatt-A#5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, 100, 1, "[", "slots", "[", 8, "/Winds/Oboe/flatterzunge/Ob-flatt-A#5-mf-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, 100, 0, "[", "slots", "[", 7, 30, "]", "[", 8, "/Winds/Oboe/flatterzunge/Ob-flatt-A#5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/flatterzunge/Ob-flatt-A#5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086102784, 100, 1, "[", "slots", "[", 7, 32, "]", "[", 8, "/Winds/Oboe/sforzato/Ob-sfz-C#5-f-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/sforzato/Ob-sfz-C#5-f-N-R100d.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086102784, 100, 0, "[", "slots", "[", 8, "/Winds/Oboe/sforzato/Ob-sfz-C#5-f-N-R100d.wav", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-3/4", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086109184, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 20, "[", "auto", "ffpp", "=", "]", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "-1/6", 0, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086338560, 100, 1, "[", "slots", "[", 7, -9, "]", "[", 8, "/Winds/Oboe/trill_major_second_up/Ob-trill_maj_second-B5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/trill_major_second_up/Ob-trill_maj_second-B5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086338560, 100, 0, "[", "slots", "[", 8, "/Winds/Oboe/trill_major_second_up/Ob-trill_maj_second-B5-mf-N-N.wav", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086109184, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Oboe/decrescendo/Ob-decresc-C#5-ffpp-N-R100d.wav", "]", "[", 20, "[", "auto", "ffpp", "=", "]", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086341760, 100, 0, "[", "slots", "[", 7, 30, "]", "[", 8, "/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-B5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-B5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-3/4", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086115584, 100, 1, "[", "slots", "[", 7, -28, "]", "[", 8, "/Winds/Clarinet_Bb/aeolian_and_ordinario/ClBb-aeol_and_ord-D5-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/aeolian_and_ordinario/ClBb-aeol_and_ord-D5-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086115584, 100, 0, "[", "slots", "[", 7, -28, "]", "[", 8, "/Winds/Clarinet_Bb/aeolian_and_ordinario/ClBb-aeol_and_ord-D5-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/aeolian_and_ordinario/ClBb-aeol_and_ord-D5-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]" ],
									"whole_score_data_0000000001" : [ "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/12", 0, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085827584, 100, 1, "[", "slots", "[", 7, 40, "]", "[", 8, "/Winds/Clarinet_Bb/aeolian_and_ordinario/ClBb-aeol_and_ord-D4-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/aeolian_and_ordinario/ClBb-aeol_and_ord-D4-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/20", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085827584, 100, 0, "[", "slots", "[", 8, "/Winds/Clarinet_Bb/aeolian_and_ordinario/ClBb-aeol_and_ord-D4-pp-N-N.wav", "]", "[", 24, "aeol_and_ord", "]", "]", 0, "]", 0, "]", "[", "-1/10", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086051584, 100, 0, "[", "slots", "[", 7, 35, "]", "[", 8, "/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-B5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-B5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086307584, 100, 1, "[", "slots", "[", 7, 21, "]", "[", 8, "/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-A5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-A5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 2, "]", "[", "3/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086307584, 100, 0, "[", "slots", "[", 8, "/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-A5-mf-N-N.wav", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086344960, 100, 0, "[", "slots", "[", 7, 38, "]", "[", 8, "/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-B5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/trill_major_second_up/ClBb-trill_maj_second-B5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 7, 44, "]", "[", 8, "/Winds/Clarinet_Bb/flatterzunge/ClBb-flatt-A5-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/flatterzunge/ClBb-flatt-A5-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 8, "/Winds/Clarinet_Bb/flatterzunge/ClBb-flatt-A5-ff-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 0, "[", "slots", "[", 7, 44, "]", "[", 8, "/Winds/Clarinet_Bb/flatterzunge/ClBb-flatt-A5-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Clarinet_Bb/flatterzunge/ClBb-flatt-A5-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929984, 100, 0, "[", "slots", "[", 7, 41, "]", "[", 8, "/Winds/Bassoon/sforzato/Bn-sfz-F#4-fp-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/sforzato/Bn-sfz-F#4-fp-N-R100d.wav", "]", "[", 20, "[", "auto", "fp", "=", "]", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 1, "[", "slots", "[", 7, -45, "]", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-G#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-G#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-G#4-mf-N-N.wav", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, 100, 0, "[", "slots", "[", 7, 41, "]", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897984, 100, 1, "[", "slots", "[", 7, 24, "]", "[", 8, "/Winds/Bassoon/note_lasting/Bn-lasting_one_sec-F4-mf-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/note_lasting/Bn-lasting_one_sec-F4-mf-N-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "lasting_one_sec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897984, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/note_lasting/Bn-lasting_one_sec-F4-mf-N-R100u.wav", "]", "[", 24, "lasting_one_sec", "]", "]", 0, "]", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 1, "[", "slots", "[", 7, 38, "]", "[", 8, "/Winds/Bassoon/crescendo_to_decrescendo/Bn-cre_dec-G4-ppmfpp-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/crescendo_to_decrescendo/Bn-cre_dec-G4-ppmfpp-N-R100u.wav", "]", "[", 20, "[", "auto", "ppmfpp", "=", "]", "]", "[", 24, "cre_dec", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 1, "[", "slots", "[", 7, 38, "]", "[", 8, "/Winds/Bassoon/crescendo_to_decrescendo/Bn-cre_dec-G4-ppmfpp-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/crescendo_to_decrescendo/Bn-cre_dec-G4-ppmfpp-N-R100u.wav", "]", "[", 20, "[", "auto", "ppmfpp", "=", "]", "]", "[", 24, "cre_dec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/crescendo_to_decrescendo/Bn-cre_dec-G4-ppmfpp-N-R100u.wav", "]", "[", 24, "cre_dec", "]", "]", 0, "]", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085936384, 100, 0, "[", "slots", "[", 7, -32, "]", "[", 8, "/Winds/Bassoon/flatterzunge/Bn-flatt-G4-mf-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/flatterzunge/Bn-flatt-G4-mf-N-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, 100, 1, "[", "slots", "[", 7, 43, "]", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/10", 0, "]", "[", "[", "leveltype", 2, "]", "[", "[", "leveltype", 2, "]", "[", "1/20", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-E4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086109184, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-C#5-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-C#5-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "]", "[", "-1/10", 0, "]", "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-3/16", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085840384, 100, 1, "[", "slots", "[", 7, 12, "]", "[", 8, "/Winds/Bassoon/staccato/Bn-stacc-D#4-mf-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/staccato/Bn-stacc-D#4-mf-N-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085840384, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/staccato/Bn-stacc-D#4-mf-N-R100u.wav", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085840384, 100, 1, "[", "slots", "[", 7, 12, "]", "[", 8, "/Winds/Bassoon/staccato/Bn-stacc-D#4-mf-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/staccato/Bn-stacc-D#4-mf-N-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085840384, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/staccato/Bn-stacc-D#4-mf-N-R100u.wav", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085936384, 100, 0, "[", "slots", "[", 7, -37, "]", "[", 8, "/Winds/Bassoon/flatterzunge/Bn-flatt-G4-mf-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/flatterzunge/Bn-flatt-G4-mf-N-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/20", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929984, 100, 0, "[", "slots", "[", 7, 47, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085872384, 100, 1, "[", "slots", "[", 7, 33, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-E4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-E4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085872384, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-E4-ff-N-N.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085872384, 100, 1, "[", "slots", "[", 7, 33, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-E4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-E4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085872384, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-E4-ff-N-N.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085853184, 100, 1, "[", "slots", "[", 7, 42, "]", "[", 8, "/Winds/Bassoon/trill_minor_second_up/Bn-trill_min_second-D#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/trill_minor_second_up/Bn-trill_min_second-D#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_min_second", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085853184, 100, 0, "[", "slots", "[", 7, 42, "]", "[", 8, "/Winds/Bassoon/trill_minor_second_up/Bn-trill_min_second-D#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/trill_minor_second_up/Bn-trill_min_second-D#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_min_second", "]", "]", 0, "]", 0, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085801984, 100, 1, "[", "slots", "[", 7, 49, "]", "[", 8, "/Winds/Bassoon/flatterzunge/Bn-flatt-C#4-mf-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/flatterzunge/Bn-flatt-C#4-mf-N-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085801984, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/flatterzunge/Bn-flatt-C#4-mf-N-R100u.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085974784, 100, 0, "[", "slots", "[", 7, 19, "]", "[", 8, "/Winds/Bassoon/flatterzunge/Bn-flatt-G#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/flatterzunge/Bn-flatt-G#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "-1/8", 0, "]", "]", "[", "[", "leveltype", 2, "]", "[", "-3/8", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085923584, 100, 0, "[", "slots", "[", 7, 20, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-3/16", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 0, "[", "slots", "[", 7, 39, "]", "[", 8, "/Winds/Bassoon/vibrato/Bn-vib-G4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/vibrato/Bn-vib-G4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "vib", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085885184, 100, 0, "[", "slots", "[", 7, -35, "]", "[", 8, "/Winds/Bassoon/harmonic_fingering/Bn-harm_fngr-F4-f-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/harmonic_fingering/Bn-harm_fngr-F4-f-N-N.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "harm_fngr", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897984, 100, 1, "[", "slots", "[", 7, 22, "]", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-F4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-F4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897984, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/trill_major_second_up/Bn-trill_maj_second-F4-mf-N-N.wav", "]", "[", 24, "trill_maj_second", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085910784, 100, 1, "[", "slots", "[", 7, -37, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085910784, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F#4-ff-N-N.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085949184, 100, 1, "[", "slots", "[", 7, 20, "]", "[", 8, "/Winds/Bassoon/vibrato/Bn-vib-G4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/vibrato/Bn-vib-G4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "vib", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085949184, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/vibrato/Bn-vib-G4-mf-N-N.wav", "]", "[", 24, "vib", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085949184, 100, 0, "[", "slots", "[", 7, 20, "]", "[", 8, "/Winds/Bassoon/vibrato/Bn-vib-G4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/vibrato/Bn-vib-G4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "vib", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086096384, 100, 1, "[", "slots", "[", 7, -12, "]", "[", 8, "/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 20, "[", "auto", "ffpp", "=", "]", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086096384, 100, 1, "[", "slots", "[", 8, "/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", 1, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086096384, 100, 1, "[", "slots", "[", 7, -12, "]", "[", 8, "/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 20, "[", "auto", "ffpp", "=", "]", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086096384, 100, 1, "[", "slots", "[", 7, -12, "]", "[", 8, "/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 20, "[", "auto", "ffpp", "=", "]", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086096384, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/decrescendo/Bn-decresc-C#5-ffpp-N-N.wav", "]", "[", 24, "decresc", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, 100, 1, "[", "slots", "[", 7, 43, "]", "[", 8, "/Winds/Bassoon/glissando_with_throat/Bn-throat_gl_dsc_slw-E4-N-E4-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/glissando_with_throat/Bn-throat_gl_dsc_slw-E4-N-E4-N.wav", "]", "[", 20, "[", "auto", "N", "=", "]", "]", "[", 24, "throat_gl_dsc_slw", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/glissando_with_throat/Bn-throat_gl_dsc_slw-E4-N-E4-N.wav", "]", "[", 24, "throat_gl_dsc_slw", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-3/4", 0, "]", "[", "[", "leveltype", 24, "]", "[", "-1/12", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085910784, 100, 0, "[", "slots", "[", 7, -36, "]", "[", 8, "/Winds/Bassoon/flatterzunge/Bn-flatt-F#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/flatterzunge/Bn-flatt-F#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 18, "]", "[", "-1/6", 0, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897984, 100, 1, "[", "slots", "[", 7, 24, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-F4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897984, 100, 1, "[", "slots", "[", 7, 24, "]", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/ordinario/Bn-ord-F4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897984, 100, 0, "[", "slots", "[", 8, "/Winds/Bassoon/ordinario/Bn-ord-F4-mf-N-N.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-3/4", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085872384, 100, 0, "[", "slots", "[", 7, 30, "]", "[", 8, "/Winds/Bassoon/note_lasting/Bn-lasting_one_sec-E4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/note_lasting/Bn-lasting_one_sec-E4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "lasting_one_sec", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085872384, 100, 0, "[", "slots", "[", 7, 32, "]", "[", 8, "/Winds/Bassoon/crescendo_to_decrescendo/Bn-cre_dec-E4-ppmfpp-N-R200u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Winds/Bassoon/crescendo_to_decrescendo/Bn-cre_dec-E4-ppmfpp-N-R200u.wav", "]", "[", 20, "[", "auto", "ppmfpp", "=", "]", "]", "[", 24, "cre_dec", "]", "]", 0, "]", 0, "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-3/4", 0, "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 7, 45, "]", "[", 8, "/Brass/Trumpet_C/note_lasting/TpC-lasting_half_sec-A5-mf-N-T20d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trumpet_C/note_lasting/TpC-lasting_half_sec-A5-mf-N-T20d.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "lasting_half_sec", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 7, 45, "]", "[", 8, "/Brass/Trumpet_C/note_lasting/TpC-lasting_half_sec-A5-mf-N-T20d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trumpet_C/note_lasting/TpC-lasting_half_sec-A5-mf-N-T20d.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "lasting_half_sec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 0, "[", "slots", "[", 8, "/Brass/Trumpet_C/note_lasting/TpC-lasting_half_sec-A5-mf-N-T20d.wav", "]", "[", 24, "lasting_half_sec", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086102784, 100, 0, "[", "slots", "[", 7, 26, "]", "[", 8, "/Brass/Trumpet_C/flatterzunge/TpC-flatt-C#5-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trumpet_C/flatterzunge/TpC-flatt-C#5-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929984, 100, 1, "[", "slots", "[", 7, 48, "]", "[", 8, "/Brass/Trumpet_C/ordinario/TpC-ord-F#4-pp-N-T12u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trumpet_C/ordinario/TpC-ord-F#4-pp-N-T12u.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929984, 100, 1, "[", "slots", "[", 8, "/Brass/Trumpet_C/ordinario/TpC-ord-F#4-pp-N-T12u.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929984, 100, 1, "[", "slots", "[", 7, 48, "]", "[", 8, "/Brass/Trumpet_C/ordinario/TpC-ord-F#4-pp-N-T12u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trumpet_C/ordinario/TpC-ord-F#4-pp-N-T12u.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929984, 100, 0, "[", "slots", "[", 8, "/Brass/Trumpet_C/ordinario/TpC-ord-F#4-pp-N-T12u.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/12", 0, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085827584, 100, 1, "[", "slots", "[", 7, 40, "]", "[", 8, "/Brass/Trumpet_C/sforzato/TpC-sfz-D4-f-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trumpet_C/sforzato/TpC-sfz-D4-f-N-R100d.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085827584, 100, 0, "[", "slots", "[", 8, "/Brass/Trumpet_C/sforzato/TpC-sfz-D4-f-N-R100d.wav", "]", "[", 24, "sfz", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086025984, 100, 1, "[", "slots", "[", 7, 30, "]", "[", 8, "/Brass/Trumpet_C/staccato/TpC-stacc-A#5-mf-N-R200d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trumpet_C/staccato/TpC-stacc-A#5-mf-N-R200d.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086025984, 100, 1, "[", "slots", "[", 8, "/Brass/Trumpet_C/staccato/TpC-stacc-A#5-mf-N-R200d.wav", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086025984, 100, 0, "[", "slots", "[", 7, 30, "]", "[", 8, "/Brass/Trumpet_C/staccato/TpC-stacc-A#5-mf-N-R200d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trumpet_C/staccato/TpC-stacc-A#5-mf-N-R200d.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085968384, 100, 0, "[", "slots", "[", 7, 4, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086115584, 100, 0, "[", "slots", "[", 7, -27, "]", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-f-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-f-N-N.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897984, 100, 0, "[", "slots", "[", 7, 32, "]", "[", 8, "/Brass/Trombone/ordinario_to_flatterzunge/Tbn-ord_flatt-F4-f-N-R200u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/ordinario_to_flatterzunge/Tbn-ord_flatt-F4-f-N-R200u.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "ord_flatt", "]", "]", 0, "]", 0, "]", "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "-1/6", 0, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085981184, 100, 1, "[", "slots", "[", 7, 42, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085981184, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-pp-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086115584, 100, 0, "[", "slots", "[", 7, -28, "]", "[", 8, "/Brass/Trombone/ordinario_no_mouthpiece/Tbn-ord_no_mthpc-D5-p-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/ordinario_no_mouthpiece/Tbn-ord_no_mthpc-D5-p-N-N.wav", "]", "[", 20, "[", "auto", "p", "=", "]", "]", "[", 24, "ord_no_mthpc", "]", "]", 0, "]", 0, "]", "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085885184, 100, 1, "[", "slots", "[", 7, -22, "]", "[", 8, "/Brass/Trombone/staccato/Tbn-stacc-F4-mf-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/staccato/Tbn-stacc-F4-mf-N-R100d.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085885184, 100, 0, "[", "slots", "[", 7, -22, "]", "[", 8, "/Brass/Trombone/staccato/Tbn-stacc-F4-mf-N-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/staccato/Tbn-stacc-F4-mf-N-R100d.wav", "]", "[", 20, "[" ],
									"whole_score_data_0000000002" : [ "auto", "mf", "=", "]", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085949184, 100, 1, "[", "slots", "[", 7, 23, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085949184, 100, 1, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-ff-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085949184, 100, 1, "[", "slots", "[", 7, 23, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-ff-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G4-ff-N-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085949184, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-ff-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/20", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086109184, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-C#5-f-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-C#5-f-N-N.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085981184, 100, 0, "[", "slots", "[", 7, 43, "]", "[", 8, "/Brass/Trombone/staccato/Tbn-stacc-G#4-mf-N-R200d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/staccato/Tbn-stacc-G#4-mf-N-R200d.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "stacc", "]", "]", 0, "]", 0, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 1, "[", "slots", "[", 7, 38, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 1, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 1, "[", "slots", "[", 7, 38, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/12", 0, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085801984, 100, 1, "[", "slots", "[", 7, 49, "]", "[", 8, "/Brass/Trombone/ordinario/Tbn-ord-C#4-mf-N-T13d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/ordinario/Tbn-ord-C#4-mf-N-T13d.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "[", "leveltype", 2, "]", "[", "1/20", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085801984, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/ordinario/Tbn-ord-C#4-mf-N-T13d.wav", "]", "[", 24, "ord", "]", "]", 0, "]", 0, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085974784, 100, 0, "[", "slots", "[", 7, 19, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085949184, 100, 0, "[", "slots", "[", 7, 22, "]", "[", 8, "/Brass/Trombone/flatterzunge_to_ordinario/Tbn-flatt_ord-G4-f-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge_to_ordinario/Tbn-flatt_ord-G4-f-N-R100u.wav", "]", "[", 20, "[", "auto", "f", "=", "]", "]", "[", 24, "flatt_ord", "]", "]", 0, "]", 0, "]", "]", "]", "[", "-1/10", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-3/16", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085981184, 100, 1, "[", "slots", "[", 7, 41, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085981184, 100, 0, "[", "slots", "[", 7, 41, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G#4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085936384, 100, 1, "[", "slots", "[", 7, -14, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085936384, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 1, "[", "slots", "[", 7, 42, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G4-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 0, "[", "slots", "[", 7, 42, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-pp-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G4-pp-N-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 1, "[", "slots", "[", 7, 41, "]", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge/Tbn-flatt-G4-mf-N-N.wav", "]", "[", 24, "flatt", "]", "]", 0, "]", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, 100, 1, "[", "slots", "[", 7, -42, "]", "[", 8, "/Brass/Trombone/crescendo/Tbn-cresc-F4-ppff-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/crescendo/Tbn-cresc-F4-ppff-N-R100u.wav", "]", "[", 20, "[", "auto", "ppff", "=", "]", "]", "[", 24, "cresc", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, 100, 1, "[", "slots", "[", 8, "/Brass/Trombone/crescendo/Tbn-cresc-F4-ppff-N-R100u.wav", "]", "[", 24, "cresc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, 100, 0, "[", "slots", "[", 7, -42, "]", "[", 8, "/Brass/Trombone/crescendo/Tbn-cresc-F4-ppff-N-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/crescendo/Tbn-cresc-F4-ppff-N-R100u.wav", "]", "[", 20, "[", "auto", "ppff", "=", "]", "]", "[", 24, "cresc", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086128384, 100, 1, "[", "slots", "[", 7, 29, "]", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 20, "[", "auto", "p", "=", "]", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086128384, 100, 1, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", 1, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086128384, 100, 1, "[", "slots", "[", 7, 29, "]", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 20, "[", "auto", "p", "=", "]", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086128384, 100, 1, "[", "slots", "[", 7, 29, "]", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 20, "[", "auto", "p", "=", "]", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086128384, 100, 0, "[", "slots", "[", 8, "/Brass/Trombone/flatterzunge_no_mouthpiece/Tbn-flatt_no_mthpc-D5-p-N-N.wav", "]", "[", 24, "flatt_no_mthpc", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085968384, 100, 0, "[", "slots", "[", 7, 4, "]", "[", 8, "/Strings/Violin/col_legno_battuto/Vn-legno_batt-G#4-mf-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/col_legno_battuto/Vn-legno_batt-G#4-mf-3c-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "legno_batt", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086051584, 100, 0, "[", "slots", "[", 7, 30, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-B5-ff-2c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-B5-ff-2c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 7, 40, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-pp-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-pp-1c-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-pp-1c-N.wav", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 7, 45, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 7, 45, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086332160, 100, 0, "[", "slots", "[", 7, 46, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A#5-mf-2c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A#5-mf-2c-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 7, 45, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086243584, 100, 0, "[", "slots", "[", 7, -29, "]", "[", 8, "/Strings/Violin/pizzicato_bartok/Vn-pizz_bartok-G4-ff-4c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_bartok/Vn-pizz_bartok-G4-ff-4c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_bartok", "]", "]", 0, "]", 0, "]", "[", "-1/20", 0, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086320384, 100, 1, "[", "slots", "[", 7, -22, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086320384, 100, 0, "[", "slots", "[", 7, -22, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 7, 41, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 7, 41, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 0, "[", "slots", "[", 7, 47, "]", "[", 8, "/Strings/Violin/tremolo/Vn-trem-A5-mf-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/tremolo/Vn-trem-A5-mf-1c-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "trem", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086294784, 100, 1, "[", "slots", "[", 7, -34, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086294784, 100, 1, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086294784, 100, 1, "[", "slots", "[", 7, -34, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086294784, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/20", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/10", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086307584, 100, 0, "[", "slots", "[", 7, 36, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 32, "]", "g", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086325760, 100, 0, "[", "slots", "[", 7, -6, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "]", "[", "-1/10", 0, "]", "]", "[", "[", "leveltype", 2, "]", "[", "-3/8", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086294784, 100, 0, "[", "slots", "[", 7, -25, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086294784, 100, 1, "[", "slots", "[", 7, -16, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086294784, 100, 0, "[", "slots", "[", 7, -16, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086307584, 100, 0, "[", "slots", "[", 7, 29, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 7, 42, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/8", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086128384, 100, 1, "[", "slots", "[", 7, 29, "]", "[", 8, "/Strings/Violin/crescendo/Vn-cresc-D5-ppff-2c-R100d.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/crescendo/Vn-cresc-D5-ppff-2c-R100d.wav", "]", "[", 20, "[", "auto", "ppff", "=", "]", "]", "[", 24, "cresc", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086128384, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/crescendo/Vn-cresc-D5-ppff-2c-R100d.wav", "]", "[", 24, "cresc", "]", "]", 0, "]", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, 100, 1, "[", "slots", "[", 7, 30, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, 100, 1, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, 100, 0, "[", "slots", "[", 7, 30, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086341760, 100, 0, "[", "slots", "[", 7, 30, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-B5-ff-2c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-B5-ff-2c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 7, 38, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A5-ff-1c-N.wav", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 18, "]", "[", "-1/6", 0, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086294784, 100, 1, "[", "slots", "[", 7, -34, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086294784, 100, 1, "[", "slots", "[", 7, -34, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086294784, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 2, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086307584, 100, 0, "[", "slots", "[", 7, 36, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/8", 0, "]", "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 1, "[", "slots", "[", 7, 42, "]", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, 100, 0, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_l_vib/Vn-pizz_lv-A5-ff-3c-N.wav", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, 100, 1, "[", "slots", "[", 7, 30, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "1/2", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, 100, 1, "[", "slots", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, 100, 0, "[", "slots", "[", 7, 30, "]", "[", 8, "/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Violin/pizzicato_secco/Vn-pizz_sec-A#5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085949184, 100, 0, "[", "slots", "[", 7, 13, "]", "[", 8, "/Strings/Viola/pizzicato_secco/Va-pizz_sec-G4-ff-2c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/pizzicato_secco/Va-pizz_sec-G4-ff-2c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "1/8", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086006784, 100, 0, "[", "slots", "[", 7, 38, "]", "[", 8, "/Strings/Viola/pizzicato_secco/Va-pizz_sec-A5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/pizzicato_secco/Va-pizz_sec-A5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085885184, 100, 1, "[", "slots", "[", 7, -22, "]", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-F4-mf-2c-R200u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/ordinario_to_crushed/Va-ord_crush-F4-mf-2c-R200u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "3/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085885184, 100, 0, "[", "slots", "[", 7, -22, "]", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-F4-mf-2c-R200u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/ordinario_to_crushed/Va-ord_crush-F4-mf-2c-R200u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085923584, 100, 1, "[", "slots", "[", 7, 33, "]", "[", 8, "/Strings/Viola/sul_tasto_tremolo/Va-tasto_trem-F#4-mf-3c-T11u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/sul_tasto_tremolo/Va-tasto_trem-F#4-mf-3c-T11u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "tasto_trem", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085923584, 100, 1, "[", "slots", "[", 8, "/Strings/Viola/sul_tasto_tremolo/Va-tasto_trem-F#4-mf-3c-T11u.wav", "]", "[", 24, "tasto_trem", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085923584, 100, 1, "[", "slots", "[", 7, 33, "]", "[", 8, "/Strings/Viola/sul_tasto_tremolo/Va-tasto_trem-F#4-mf-3c-T11u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/sul_tasto_tremolo/Va-tasto_trem-F#4-mf-3c-T11u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "tasto_trem", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "1/6", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085923584, 100, 0, "[", "slots", "[", 8, "/Strings/Viola/sul_tasto_tremolo/Va-tasto_trem-F#4-mf-3c-T11u.wav", "]", "[", 24, "tasto_trem", "]", "]", 0, "]", 0, "]", "[", "-1/12", 0, "]", "]", "[", "[", "leveltype", 8, "]" ],
									"whole_score_data_0000000003" : [ "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086109184, 100, 0, "[", "slots", "[", 7, 49, "]", "[", 8, "/Strings/Viola/tremolo/Va-trem-C#5-ff-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/tremolo/Va-trem-C#5-ff-3c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "trem", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 2, "]", "[", "-3/8", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086083584, 100, 0, "[", "slots", "[", 7, 42, "]", "[", 8, "/Strings/Viola/pizzicato_l_vib/Va-pizz_lv-C5-pp-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/pizzicato_l_vib/Va-pizz_lv-C5-pp-1c-N.wav", "]", "[", 20, "[", "auto", "pp", "=", "]", "]", "[", 24, "pizz_lv", "]", "]", 0, "]", 0, "]", "[", "-1/16", 0, "]", "]", "[", "-1/2", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086083584, 100, 0, "[", "slots", "[", 7, 46, "]", "[", 8, "/Strings/Viola/pizzicato_secco/Va-pizz_sec-C5-ff-1c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/pizzicato_secco/Va-pizz_sec-C5-ff-1c-N.wav", "]", "[", 20, "[", "auto", "ff", "=", "]", "]", "[", 24, "pizz_sec", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 24, "]", "[", "-1/6", 0, "]", "[", "1/12", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085961984, 100, 1, "[", "slots", "[", 7, -24, "]", "[", 8, "/Strings/Viola/sul_ponticello_tremolo/Va-pont_trem-G#4-mf-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/sul_ponticello_tremolo/Va-pont_trem-G#4-mf-3c-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "pont_trem", "]", "]", 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085961984, 100, 0, "[", "slots", "[", 7, -24, "]", "[", 8, "/Strings/Viola/sul_ponticello_tremolo/Va-pont_trem-G#4-mf-3c-N.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/sul_ponticello_tremolo/Va-pont_trem-G#4-mf-3c-N.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "pont_trem", "]", "]", 0, "]", 0, "]", "[", "-3/16", 0, "]", "]", "[", "-3/4", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-3/16", 0, "]", "[", "1/16", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086038784, 100, 1, "[", "slots", "[", 7, -23, "]", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", "]", "[", "3/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086038784, 100, 1, "[", "slots", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", 1, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086038784, 100, 1, "[", "slots", "[", 7, -23, "]", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086038784, 100, 1, "[", "slots", "[", 7, -23, "]", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 9, "/Volumes/T08/_FullSOL2020_release/FullSOL2020/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 20, "[", "auto", "mf", "=", "]", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", "]", "[", "[", "leveltype", 18, "]", "[", "1/3", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086038784, 100, 0, "[", "slots", "[", 8, "/Strings/Viola/ordinario_to_crushed/Va-ord_crush-B5-mf-1c-R100u.wav", "]", "[", 24, "ord_crush", "]", "]", 0, "]", 0, "]", "[", "-1/6", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", 0, "]", 0, "]" ],
									"whole_score_data_count" : [ 4 ],
									"zoom" : 153.504170078753162
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 185.0, 277.0, 47.0, 22.0 ],
									"text" : "s score"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 9.19999672472477, 4.724012494087219, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-107",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 769.400010824203491, 138.186190099251007, 194.0, 19.0 ],
									"text" : "<------ PMC code generalized"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-103",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 631.266680690055864, 208.386185094724283, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-101",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 6,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 79.0, 482.0, 544.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-105",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 65.000008165836334, 421.400002002716064, 89.0, 22.0 ],
													"text" : "loadmess clear"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-68",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 39.0, 348.700986246908656, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-69",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 39.0, 374.700986246908656, 82.0, 22.0 ],
													"text" : "tonedivision 8"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 187.000029734169061, 98.799986247422538, 29.5, 22.0 ],
													"text" : "+ 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-92",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 94.0, 98.799986247422538, 64.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80104
													}
,
													"text" : "bach.wrap"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-90",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 15.0, 98.799986247422538, 64.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80104
													}
,
													"text" : "bach.wrap"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-88",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 15.0, 62.399986052714027, 64.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80104
													}
,
													"text" : "bach.flat 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-84",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 94.0, 62.399986052714027, 81.0, 22.0 ],
													"text" : "r orig_pitches"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-77",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 15.0, 135.199986442131035, 98.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80104
													}
,
													"text" : "bach.join"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-76",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 15.0, 202.800002098083496, 201.500029734169061, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80104
													}
,
													"text" : "bach.nth 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-95",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 15.000029734169061, 17.999985858005516, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-96",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 187.000029734169061, 134.999985858005516, 29.5, 22.0 ],
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-97",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 187.000029734169061, 17.999985858005516, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-99",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 417.0, 482.40193285800558, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-100",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 15.0, 494.40193285800558, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 15.0, 266.401957538735587, 64.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80104
													}
,
													"text" : "bach.flat 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-43",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 15.0, 235.401957538735587, 66.0, 22.0 ],
													"text" : "bach.* 100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-36",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "", "" ],
													"patching_rect" : [ 15.0, 298.401957538735587, 421.0, 22.0 ],
													"text" : "t b l l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-57",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 216.0, 355.700986246908656, 111.0, 22.0 ],
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 216.0, 382.700986246908656, 29.5, 22.0 ],
													"text" : "FG"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-54",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 216.0, 412.700986246908656, 111.0, 22.0 ],
													"text" : "bach.repeat @out t"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-53",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 216.0, 438.700986246908656, 81.0, 22.0 ],
													"text" : "prepend clefs"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-50",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 216.0, 326.700986246908656, 71.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80104
													}
,
													"text" : "bach.length"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-96", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-100", 0 ],
													"midpoints" : [ 74.500008165836334, 466.900967430360822, 24.5, 466.900967430360822 ],
													"source" : [ "obj-105", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-100", 0 ],
													"midpoints" : [ 24.5, 406.901945198370584, 24.5, 406.901945198370584 ],
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-50", 0 ],
													"source" : [ "obj-36", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-99", 0 ],
													"source" : [ "obj-36", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-43", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-50", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-100", 0 ],
													"midpoints" : [ 225.5, 477.051459552457118, 24.5, 477.051459552457118 ],
													"source" : [ "obj-53", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-53", 0 ],
													"source" : [ "obj-54", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 0 ],
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 1 ],
													"source" : [ "obj-57", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 0 ],
													"source" : [ "obj-57", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-69", 0 ],
													"source" : [ "obj-68", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-100", 0 ],
													"midpoints" : [ 48.5, 445.051459552457118, 24.5, 445.051459552457118 ],
													"source" : [ "obj-69", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 0 ],
													"source" : [ "obj-76", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-76", 0 ],
													"source" : [ "obj-77", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-92", 0 ],
													"source" : [ "obj-84", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-90", 0 ],
													"source" : [ "obj-88", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-77", 0 ],
													"source" : [ "obj-90", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-77", 1 ],
													"source" : [ "obj-92", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-88", 0 ],
													"source" : [ "obj-95", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-76", 1 ],
													"source" : [ "obj-96", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-76", 0 ],
													"source" : [ "obj-96", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-97", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "MOZ-numint",
												"default" : 												{
													"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
													"fontname" : [ "Menlo Regular" ],
													"fontsize" : [ 16.95833875454338 ],
													"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-param",
												"default" : 												{
													"fontname" : [ "Menlo Regular" ],
													"fontsize" : [ 16.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-title",
												"default" : 												{
													"fontname" : [ "Andale Mono" ],
													"fontsize" : [ 22.062094355029235 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-umenu",
												"default" : 												{
													"bgfillcolor" : 													{
														"angle" : 270.0,
														"autogradient" : 0.0,
														"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
														"color1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
														"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
														"proportion" : 0.5,
														"type" : "color"
													}
,
													"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
													"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
													"fontface" : [ 2 ],
													"fontname" : [ "Menlo Regular" ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "SPLIM",
												"parentstyle" : "comment001",
												"multi" : 0
											}
, 											{
												"name" : "comment001",
												"default" : 												{
													"fontname" : [ "Herculanum" ],
													"fontsize" : [ 18.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "ksliderWhite",
												"default" : 												{
													"color" : [ 1, 1, 1, 1 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "message001",
												"default" : 												{
													"fontname" : [ "Arial" ],
													"fontsize" : [ 13.0 ],
													"textcolor_inverse" : [ 0.92549, 0.364706, 0.341176, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjBlue-1",
												"default" : 												{
													"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjGreen-1",
												"default" : 												{
													"accentcolor" : [ 0, 0.533333, 0.168627, 1 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "numberGold-1",
												"default" : 												{
													"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "orjan style",
												"default" : 												{
													"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
													"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ],
													"bgfillcolor" : 													{
														"angle" : 270.0,
														"autogradient" : 0,
														"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
														"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
														"proportion" : 0.39,
														"type" : "gradient"
													}
,
													"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
													"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ]
									}
,
									"patching_rect" : [ 541.266680690055864, 243.78619153081911, 109.0, 49.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p display_result_or_original"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-94",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 657.266680690055864, 203.886185094724283, 69.0, 33.0 ],
									"text" : "0 corrected\n1 original"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 127.162010133266449, 32.800000488758087, 39.0, 22.0 ],
									"text" : "dump"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 127.162010133266449, 4.724012494087219, 46.0, 22.0 ],
									"text" : "r dump"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 594.766680690055864, 65.786190421116089, 48.0, 22.0 ],
									"text" : "s dump"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 666.066682040691376, 4.724012494087219, 73.0, 22.0 ],
									"text" : "r all_pitches"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 117.0, 311.0, 75.0, 22.0 ],
									"text" : "s all_pitches"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 541.266680955886841, 35.233492851984238, 72.499999734169023, 22.0 ],
									"text" : "t b b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 541.266680955886841, 4.724012494087219, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 6,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 104.0, 403.0, 305.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-83",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 114.300003230571747, 225.166504406250056, 83.0, 22.0 ],
													"text" : "s orig_pitches"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-74",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 138.0, 85.0, 22.0 ],
													"text" : "bach.approx 8"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-75",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 165.899023129178318, 65.0, 22.0 ],
													"text" : "bach./ 100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-48",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 266.800003230571747, 132.730568408966064, 64.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80104
													}
,
													"text" : "bach.wrap"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-43",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 266.800003230571747, 107.330575585365295, 54.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80104
													}
,
													"text" : "bach.flat"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 50.0, 107.330575585365295, 165.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80104
													}
,
													"text" : "bach.mapelem @maxdepth 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-49",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.000006707107559, 40.000000406250024, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-50",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.000006707107559, 221.166504406250056, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 0 ],
													"source" : [ "obj-38", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-74", 0 ],
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-48", 0 ],
													"source" : [ "obj-43", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 1 ],
													"source" : [ "obj-48", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-75", 0 ],
													"source" : [ "obj-74", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-50", 0 ],
													"order" : 1,
													"source" : [ "obj-75", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-83", 0 ],
													"order" : 0,
													"source" : [ "obj-75", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "MOZ-numint",
												"default" : 												{
													"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
													"fontname" : [ "Menlo Regular" ],
													"fontsize" : [ 16.95833875454338 ],
													"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-param",
												"default" : 												{
													"fontname" : [ "Menlo Regular" ],
													"fontsize" : [ 16.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-title",
												"default" : 												{
													"fontname" : [ "Andale Mono" ],
													"fontsize" : [ 22.062094355029235 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-umenu",
												"default" : 												{
													"bgfillcolor" : 													{
														"angle" : 270.0,
														"autogradient" : 0.0,
														"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
														"color1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
														"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
														"proportion" : 0.5,
														"type" : "color"
													}
,
													"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
													"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
													"fontface" : [ 2 ],
													"fontname" : [ "Menlo Regular" ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "SPLIM",
												"parentstyle" : "comment001",
												"multi" : 0
											}
, 											{
												"name" : "comment001",
												"default" : 												{
													"fontname" : [ "Herculanum" ],
													"fontsize" : [ 18.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "ksliderWhite",
												"default" : 												{
													"color" : [ 1, 1, 1, 1 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "message001",
												"default" : 												{
													"fontname" : [ "Arial" ],
													"fontsize" : [ 13.0 ],
													"textcolor_inverse" : [ 0.92549, 0.364706, 0.341176, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjBlue-1",
												"default" : 												{
													"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "newobjGreen-1",
												"default" : 												{
													"accentcolor" : [ 0, 0.533333, 0.168627, 1 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "numberGold-1",
												"default" : 												{
													"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "orjan style",
												"default" : 												{
													"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
													"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ],
													"bgfillcolor" : 													{
														"angle" : 270.0,
														"autogradient" : 0,
														"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
														"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
														"proportion" : 0.39,
														"type" : "gradient"
													}
,
													"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
													"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ]
									}
,
									"patching_rect" : [ 666.066682040691376, 32.800000488758087, 51.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p flatten"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-33",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 269.07499672472477, 576.800011217594147, 75.0, 19.0 ],
									"text" : "--------->"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 150.07499672472477, 576.800011217594147, 117.0, 22.0 ],
									"reg_data_0000000000" : [ "[", "omcs::pmc", "[", "quote", "[", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078460416, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078468608, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078476800, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078484992, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078493184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078501376, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078509568, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078517760, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078525952, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078534144, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078542336, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078550528, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078558720, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078566912, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078575104, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078583296, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078591488, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078599680, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078607872, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078616064, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078624256, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078632448, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078640640, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078648832, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078657024, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078665216, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078673408, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078681600, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078689792, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078697984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078706176, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078714368, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078722560, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078730752, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078738944, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078747136, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078755328, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078763520, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078771712, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078779904, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078788096, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078796288, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078804480, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078812672, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078820864, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078829056, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078837248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078845440, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078853632, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078861824, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078870016, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078878208, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078886400, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078894592, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078902784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078910976, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078919168, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078927360, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078935552, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078943744, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078951936, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078960128, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078968320, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078976512, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078988800, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078992896, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078996992, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079001088, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079005184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079009280, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079013376, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079017472, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079021568, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079025664, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079029760, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079033856, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079037952, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079042048, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079046144, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079050240, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079054336, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079058432, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079062528, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079066624, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079070720, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079074816, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079078912, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079083008, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079087104, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079091200, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079095296, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079099392, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079103488, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079107584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079111680, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079115776, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079119872, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079123968, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079128064, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079132160, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079136256, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079140352, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079144448, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079148544, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079152640, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079156736, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079160832, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079164928, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079169024, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079173120, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079177216, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079181312, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079185408, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079189504, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079193600, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079197696, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079201792, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079205888, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079209984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079214080, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079218176, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079222272, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079226368, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079230464, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079234560, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079238656, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079242752, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079246848, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079250944, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079255040, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079259136, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079263232, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079267328, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079271424, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079275520, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079279616, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079283712, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079287808, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079291904, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079296000, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079300096, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079304192, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079308288, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079312384, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078460416, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078468608, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078476800, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078484992, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078493184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078501376, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078509568, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078517760, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078525952, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078534144, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078542336, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078550528, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078558720, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078566912, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078575104, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078583296, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078591488, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078599680, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078607872, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078616064, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078624256, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078632448, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078640640, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078648832, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078657024, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078665216, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078673408, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078681600, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078689792, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078697984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078706176, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078714368, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078722560, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078730752, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078738944, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078747136, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078755328, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078763520, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078771712, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078779904, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078788096, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078796288, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078804480, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078812672, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078820864, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078829056, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078837248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078845440, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078853632, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078861824, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078870016, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078878208, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078886400, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078894592, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078902784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078910976, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078919168, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078927360, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078935552, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078943744, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078951936, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078960128, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078968320, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078976512, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078988800, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078992896, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078996992, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079001088, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079005184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079009280, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079013376, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079017472, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079021568, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079025664, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079029760, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079033856, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079037952, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079042048, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079046144, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079050240, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079054336, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079058432, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079062528, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079066624, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079070720, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079074816, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079078912, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079083008, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079087104, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079091200, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079095296, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079099392, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079103488, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079107584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079111680, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079115776, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079119872, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079123968, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079128064, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079132160, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079136256, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079140352, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079144448, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079148544, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079152640, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079156736, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079160832, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079164928, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079169024, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079173120, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079177216, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079181312, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079185408, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079189504, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079193600, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079197696, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079201792, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079205888, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079209984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079214080, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079218176, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079222272, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079226368, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079230464, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079234560, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079238656, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079242752, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079246848, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079250944, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079255040, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079259136, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079263232, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079267328, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079271424, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079275520, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079279616, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079283712, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079287808, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079291904, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079296000, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079300096, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079304192, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079308288, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079312384, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078460416, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078468608, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078476800, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078484992, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078493184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078501376, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078509568, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078517760, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078525952, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078534144, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078542336, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078550528, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078558720, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078566912, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078575104, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078583296, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078591488, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078599680, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078607872, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078616064, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078624256, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078632448, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078640640, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078648832, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078657024, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078665216, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078673408, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078681600, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078689792, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078697984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078706176, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078714368, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078722560, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078730752, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078738944, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078747136, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078755328, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078763520, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078771712, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078779904, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078788096, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078796288, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078804480, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078812672, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078820864, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078829056, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078837248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078845440, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078853632, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078861824, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078870016, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078878208, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078886400, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078894592, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078902784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078910976, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078919168, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078927360, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078935552, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078943744, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078951936, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078960128, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078968320, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078976512, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078988800, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078992896, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078996992, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079001088, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079005184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079009280, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079013376, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079017472, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079021568, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079025664, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079029760, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079033856, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079037952, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079042048, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079046144, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079050240, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079054336, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079058432, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079062528, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079066624, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079070720, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079074816, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079078912, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079083008, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079087104, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079091200, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079095296, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079099392, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079103488, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079107584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079111680, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079115776, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079119872, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079123968, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079128064, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079132160, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079136256, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079140352, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079144448, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079148544, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079152640, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079156736, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079160832, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079164928, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079169024, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079173120, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079177216, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079181312, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079185408, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079189504, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079193600, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079197696, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079201792, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079205888, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079209984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079214080, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079218176, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079222272, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079226368, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079230464, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079234560, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079238656, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079242752, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079246848, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079250944, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079255040, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079259136, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079263232, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079267328, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079271424, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079275520, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079279616, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079283712, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079287808, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079291904, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079296000, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079300096, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079304192, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079308288, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079312384, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078460416, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078468608, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078476800, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078484992, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078493184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078501376, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078509568, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078517760, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078525952, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078534144, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078542336, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078550528, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078558720, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078566912, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078575104, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078583296, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078591488, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078599680, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078607872, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078616064, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078624256, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078632448, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078640640, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078648832, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078657024, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078665216, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078673408, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078681600, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078689792, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078697984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078706176, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078714368, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078722560, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078730752, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078738944, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078747136, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078755328, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078763520, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078771712, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078779904, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078788096, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078796288, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078804480, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078812672, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078820864, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078829056, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078837248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078845440, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078853632, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078861824, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078870016, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078878208, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078886400, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078894592, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078902784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078910976, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078919168, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078927360, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078935552, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078943744, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078951936, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078960128, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078968320, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078976512, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078988800, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078992896, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078996992, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079001088, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079005184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079009280, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079013376, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079017472, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079021568, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079025664, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079029760, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079033856, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079037952, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079042048, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079046144, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079050240, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079054336, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079058432, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079062528, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079066624, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079070720, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079074816, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079078912, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079083008, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079087104, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079091200, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079095296, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079099392, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079103488, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079107584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079111680, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079115776, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079119872, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079123968, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079128064, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079132160, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079136256, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079140352, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079144448, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079148544, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079152640, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079156736, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079160832, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079164928, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079169024, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079173120, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079177216, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079181312, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079185408, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079189504, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079193600, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079197696, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079201792, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079205888, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079209984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079214080, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079218176, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079222272, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079226368, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079230464, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079234560, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079238656, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079242752, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079246848, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079250944, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079255040, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079259136, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079263232, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079267328, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079271424, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079275520, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079279616, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079283712, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079287808, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079291904, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079296000, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079300096, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079304192, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079308288, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079312384, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078460416, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078468608, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078476800, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078484992, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078493184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078501376, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078509568, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078517760, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078525952, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078534144, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078542336, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078550528, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078558720, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078566912, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078575104, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078583296, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078591488, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078599680, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078607872, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078616064, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078624256, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078632448, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078640640, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078648832, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078657024, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078665216, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078673408, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078681600, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078689792, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078697984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078706176, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078714368, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078722560, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078730752, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078738944, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078747136, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078755328, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078763520, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078771712, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078779904, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078788096, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078796288, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078804480, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078812672, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078820864, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078829056, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078837248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078845440, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078853632, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078861824, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078870016, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078878208, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078886400, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078894592, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078902784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078910976, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078919168, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078927360, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078935552, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078943744, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078951936, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078960128, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078968320, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078976512, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078988800, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078992896, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078996992, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079001088, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079005184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079009280, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079013376, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079017472, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079021568, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079025664, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079029760, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079033856, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079037952, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079042048, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079046144, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079050240, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079054336, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079058432, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079062528, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079066624, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079070720, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079074816, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079078912, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079083008, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079087104, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079091200, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079095296, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079099392, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079103488, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079107584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079111680, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079115776, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079119872, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079123968, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079128064, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079132160, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079136256, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079140352, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079144448, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079148544, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079152640, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079156736, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079160832, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079164928, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079169024, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079173120, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079177216, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079181312, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079185408, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079189504, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079193600, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079197696, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079201792, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079205888, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079209984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079214080, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079218176, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079222272, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079226368, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079230464, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079234560, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079238656, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079242752, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079246848, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079250944, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079255040, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079259136, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079263232, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079267328, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079271424, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079275520, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079279616, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079283712, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079287808, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079291904, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079296000, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079300096, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079304192, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079308288, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079312384, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078460416, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078468608, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078476800, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078484992, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078493184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078501376, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078509568, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078517760, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078525952, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078534144, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078542336, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078550528, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078558720, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078566912, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078575104, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078583296, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078591488, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078599680, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078607872, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078616064, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078624256, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078632448, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078640640, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078648832, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078657024, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078665216, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078673408, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078681600, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078689792, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078697984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078706176, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078714368, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078722560, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078730752, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078738944, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078747136, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078755328, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078763520, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078771712, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078779904, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078788096, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078796288, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078804480, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078812672, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078820864, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078829056, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078837248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078845440, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078853632, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078861824, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078870016, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078878208, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078886400, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078894592, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078902784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078910976, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078919168, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078927360, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078935552, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078943744, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078951936, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078960128, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078968320, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078976512, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078988800, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078992896, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078996992, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079001088, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079005184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079009280, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079013376, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079017472, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079021568, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079025664, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079029760, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079033856, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079037952, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079042048, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079046144, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079050240, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079054336, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079058432, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079062528, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079066624, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079070720, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079074816, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079078912, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079083008, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079087104, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079091200, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079095296, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079099392, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079103488, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079107584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079111680, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079115776, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079119872, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079123968, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079128064, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079132160, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079136256, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079140352, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079144448, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079148544, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079152640, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079156736, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079160832, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079164928, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079169024, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079173120, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079177216, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079181312, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079185408, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079189504, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079193600, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079197696, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079201792, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079205888, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079209984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079214080, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079218176, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079222272, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079226368, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079230464, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079234560, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079238656, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079242752, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079246848, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079250944, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079255040, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079259136, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079263232, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079267328, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079271424, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079275520, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079279616, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079283712, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079287808, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079291904, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079296000, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079300096, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079304192, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079308288, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079312384, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078460416, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078468608, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078476800, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078484992, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078493184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078501376, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078509568, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078517760, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078525952, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078534144, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078542336, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078550528, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078558720, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078566912, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078575104, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078583296, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078591488, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078599680, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078607872, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078616064, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078624256, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078632448, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078640640, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078648832, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078657024, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078665216, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078673408, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078681600, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078689792, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078697984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078706176, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078714368, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078722560, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078730752, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078738944, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078747136, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078755328, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078763520, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078771712, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078779904, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078788096, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078796288, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078804480, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078812672, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078820864, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078829056, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078837248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078845440, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078853632, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078861824, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078870016, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078878208, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078886400, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078894592, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078902784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078910976, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078919168, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078927360, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078935552, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078943744, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078951936, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078960128, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078968320, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078976512, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078988800, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078992896, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078996992, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079001088, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079005184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079009280, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079013376, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079017472, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079021568, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079025664, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079029760, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079033856, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079037952, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079042048, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079046144, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079050240, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079054336, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079058432, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079062528, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079066624, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079070720, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079074816, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079078912, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079083008, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079087104, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079091200, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079095296, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079099392, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079103488, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079107584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079111680, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079115776, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079119872, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079123968, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079128064, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079132160, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079136256, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079140352, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079144448, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079148544, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079152640, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079156736, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079160832, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079164928, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079169024, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079173120, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079177216, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079181312, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079185408, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079189504, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079193600, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079197696, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079201792, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079205888, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079209984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079214080, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079218176, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079222272, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079226368, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079230464, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079234560, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079238656, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079242752, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079246848, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079250944, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079255040, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079259136, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079263232, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079267328, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079271424, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079275520, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079279616, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079283712, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079287808, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079291904, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079296000, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079300096, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079304192, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079308288, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079312384, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078460416, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078468608, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078476800, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078484992, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078493184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078501376, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078509568, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078517760, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078525952, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078534144, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078542336, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078550528, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078558720, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078566912, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078575104, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078583296, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078591488, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078599680, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078607872, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078616064, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078624256, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078632448, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078640640, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078648832, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078657024, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078665216, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078673408, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078681600, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078689792, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078697984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078706176, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078714368, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078722560, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078730752, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078738944, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078747136, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078755328, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078763520, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078771712, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078779904, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078788096, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078796288, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078804480, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078812672, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078820864, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078829056, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078837248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078845440, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078853632, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078861824, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078870016, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078878208, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078886400, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078894592, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078902784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078910976, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078919168, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078927360, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078935552, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078943744, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078951936, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078960128, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078968320, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078976512, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078988800, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078992896, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078996992, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079001088, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079005184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079009280, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079013376, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079017472, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079021568, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079025664, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079029760, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079033856, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079037952, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079042048, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079046144, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079050240, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079054336, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079058432, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079062528, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079066624, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079070720, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079074816, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079078912, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079083008, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079087104, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079091200, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079095296, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079099392, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079103488, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079107584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079111680, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079115776, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079119872, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079123968, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079128064, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079132160, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079136256, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079140352, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079144448, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079148544, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079152640, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079156736, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079160832, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079164928, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079169024, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079173120, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079177216, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079181312, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079185408, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079189504, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079193600, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079197696, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079201792, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079205888, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079209984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079214080, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079218176, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079222272, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079226368, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079230464, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079234560, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079238656, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079242752, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079246848, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079250944, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079255040, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079259136, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079263232, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079267328, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079271424, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079275520, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079279616, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079283712, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079287808, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079291904, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079296000, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079300096, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079304192, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079308288, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079312384, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078460416, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078468608, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078476800, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078484992, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078493184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078501376, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078509568, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078517760, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078525952, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078534144, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078542336, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078550528, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078558720, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078566912, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078575104, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078583296, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078591488, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078599680, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078607872, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078616064, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078624256, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078632448, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078640640, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078648832, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078657024, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078665216, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078673408, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078681600, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078689792, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078697984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078706176, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078714368, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078722560, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078730752, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078738944, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078747136, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078755328, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078763520, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078771712, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078779904, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078788096, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078796288, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078804480, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078812672, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078820864, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078829056, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078837248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078845440, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078853632, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078861824, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078870016, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078878208, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078886400, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078894592, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078902784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078910976, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078919168, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078927360, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078935552, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078943744, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078951936, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078960128, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078968320, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078976512, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078988800, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078992896, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078996992, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079001088, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079005184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079009280, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079013376, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079017472, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079021568, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079025664, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079029760, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079033856, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079037952, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079042048, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079046144, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079050240, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079054336, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079058432, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079062528, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079066624, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079070720, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079074816, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079078912, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079083008, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079087104, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079091200, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079095296, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079099392, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079103488, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079107584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079111680, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079115776, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079119872, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079123968, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079128064, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079132160, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079136256, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079140352, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079144448, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079148544, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079152640, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079156736, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079160832, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079164928, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079169024, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079173120, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079177216, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079181312, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079185408, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079189504, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079193600, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079197696, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079201792, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079205888, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079209984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079214080, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079218176, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079222272, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079226368, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079230464, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079234560, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079238656, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079242752, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079246848, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079250944, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079255040, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079259136, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079263232, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079267328, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079271424, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079275520, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079279616, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079283712, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079287808, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079291904, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079296000, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079300096, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079304192, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079308288, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079312384, "]", "]", "]", "[", "pw::backquote", "[", "pw::%@", "[", "jbs-constraints::collect-true/false-rules", "[", "jbs-constraints::mk-profile-pitch-modulo-rule", "[", "quote", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078992896, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079271424, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079296000, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079140352, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079267328, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079123968, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079271424, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079152640, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079283712, "]", "]", ":true/false", 1, "]", "]", "]", "]", ":heuristic-rules", "[", "pw::backquote", "[", "pw::%@", "[", "jbs-constraints::collect-heuristic-rules", "[", "jbs-constraints::mk-fix-profile-rule", "[", "quote", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078992896, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079271424, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079296000, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079140352, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079267328, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079123968, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079271424, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079152640, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079283712, "]", "]", ":heuristic", 300, "]", "[", "jbs-constraints::not-bigger-interval-rule", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076363264, 3, ":heuristic", 300, "]", "]", "]", "]", ":rnd?", "t", ":sols-mode", 1, "]" ],
									"reg_data_count" : [ 1 ],
									"saved_object_attributes" : 									{
										"embed" : 1,
										"versionnumber" : 80104
									}
,
									"text" : "bach.reg @embed 1"
								}

							}
, 							{
								"box" : 								{
									"bwcompatibility" : 80104,
									"clefs" : [ "FG", "FG", "FG", "FG", "FG", "FG", "FG", "FG", "FG", "FG", "FG" ],
									"defaultnoteslots" : [ "null" ],
									"enharmonictable" : [ "default", "default", "default", "default", "default", "default", "default", "default", "default", "default", "default" ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidevoices" : [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 ],
									"id" : "obj-34",
									"keys" : [ "CM", "CM", "CM", "CM", "CM", "CM", "CM", "CM", "CM", "CM", "CM" ],
									"loop" : [ 0.0, 1000.0 ],
									"maxclass" : "bach.roll",
									"midichannels" : [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11 ],
									"notationstyles" : [ "et", "et", "et", "et", "et", "et", "et", "et", "et", "et", "et" ],
									"numinlets" : 6,
									"numoutlets" : 8,
									"numparts" : [ 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1 ],
									"numvoices" : 11,
									"out" : "nnnnnnnn",
									"outlettype" : [ "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 541.266680690055864, 306.586181625733957, 244.0, 437.925781000000029 ],
									"pitcheditrange" : [ "null" ],
									"stafflines" : [ 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"tonedivision" : 8,
									"versionnumber" : 80900,
									"voicenames" : [ "[", "]", "[", "]", "[", "]", "[", "]", "[", "]", "[", "]", "[", "]", "[", "]", "[", "]", "[", "]", "[", "]" ],
									"voicespacing" : [ 0.0, 17.0, 17.0, 17.0, 17.0, 17.0, 17.0, 17.0, 17.0, 17.0, 17.0, 17.0 ],
									"vzoom" : 40.0,
									"whole_roll_data_0000000000" : [ "roll", "[", "slotinfo", "[", 1, "[", "name", "velocity envelope", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 2, "[", "name", "slot function", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 3, "[", "name", "slot intlist", "]", "[", "type", "intlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 4, "[", "name", "slot floatlist", "]", "[", "type", "floatlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 5, "[", "name", "slot int", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 6, "[", "name", "slot float", "]", "[", "type", "float", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 7, "[", "name", "slot text", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 8, "[", "name", "slot filelist", "]", "[", "type", "filelist", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080213504, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 9, "[", "name", "slot spat", "]", "[", "type", "spat", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076101120, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 10, "[", "name", "slot llll", "]", "[", "type", "llll", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 11, "[", "name", "slot 11", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 12, "[", "name", "slot 12", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 13, "[", "name", "slot 13", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 14, "[", "name", "slot 14", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 15, "[", "name", "slot 15", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 16, "[", "name", "slot 16", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 17, "[", "name", "slot 17", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 18, "[", "name", "slot 18", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 19, "[", "name", "slot 19", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 20, "[", "name", "dynamics", "]", "[", "type", "dynamics", "]", "[", "key", "d", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 21, "[", "name", "lyrics", "]", "[", "type", "text", "]", "[", "key", "l", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 22, "[", "name", "articulations", "]", "[", "type", "articulations", "]", "[", "key", "a", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 23, "[", "name", "notehead", "]", "[", "type", "notehead", "]", "[", "key", "h", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 24, "[", "name", "annotation", "]", "[", "type", "text", "]", "[", "key", "t", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 25, "[", "name", "slot 25", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 26, "[", "name", "slot 26", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 27, "[", "name", "slot 27", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 28, "[", "name", "slot 28", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 29, "[", "name", "slot 29", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 30, "[", "name", "slot 30", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "]", "[", "commands", "[", 1, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 2, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 3, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 4, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 5, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "]", "[", "groups", "]", "[", "markers", "]", "[", "midichannels", 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, "]", "[", "articulationinfo", "]", "[", "noteheadinfo", "]", "[", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086006784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084178432, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086045184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084715008, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086109184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085227008, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086307584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085507584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086083584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085763584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086019584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086128384, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086275584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", 0, "]", "[", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086019584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084178432, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086115584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084715008, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086083584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085227008, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086109184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085507584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086332160, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085763584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086109184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086019584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", 0, "]", "[", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086102784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086109184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084178432, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086338560, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084715008, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086109184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", 0, "]", "[", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086341760, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086115584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084178432, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085827584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084715008, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086051584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085227008, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086307584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085507584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086344960, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085763584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", 0, "]", "[", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084178432, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084715008, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085227008, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085507584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085936384, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085763584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086019584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086275584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086109184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086428160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085840384, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086556160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085936384, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086684160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086812160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085872384, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086940160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085853184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087068160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085801984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087196160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085974784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087324160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085923584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087412736, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087476736, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085885184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087540736, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087604736, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085910784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087668736, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085949184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087732736, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086096384, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", 0, "]", "[", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085910784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084178432, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084715008, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085872384, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085227008, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085872384, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", 0, "]", "[", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086102784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084178432, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085929984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084715008, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085827584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085227008, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086025984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", 0, "]", "[", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085968384, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086115584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084178432, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085897984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084715008, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085981184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085227008, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086115584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085507584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085885184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085763584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085949184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086019584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086109184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086275584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085981184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086428160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086556160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085801984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086684160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085974784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086812160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085949184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086940160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085981184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087068160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085936384, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087196160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087324160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085955584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087412736, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085878784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087476736, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086128384, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", 0, "]", "[", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085968384, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086051584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084178432, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084715008, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085227008, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086332160, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085507584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085763584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086243584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086019584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086320384, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086275584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086428160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086556160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086294784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086684160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086307584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086812160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086325760, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086940160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086294784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087068160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086294784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087196160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086307584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087324160, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087412736, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086128384, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1087476736, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", 0, "]", "[", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086341760, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084178432, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086294784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084715008, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086307584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085227008, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086313984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085507584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086328960, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", 0, "]", "[", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085949184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083129856, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086006784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084178432, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085885184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084715008, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085923584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085227008, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086109184, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085507584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086083584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085763584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086083584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086019584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085961984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086275584, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086038784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", 0, "]" ],
									"whole_roll_data_count" : [ 1 ],
									"zoom" : 26.141400000000001
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 541.266680955886841, 191.523410012798308, 80.0, 22.0 ],
									"text" : "lisp.quickeval"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 541.266680955886841, 65.786190421116089, 47.0, 22.0 ],
									"text" : "melody"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 541.266680955886841, 147.442937097160552, 63.0, 22.0 ],
									"text" : "lisp.iterate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 647.966680705547333, 161.523403873519896, 97.0, 22.0 ],
									"text" : "lisp.expr collect i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 541.266680955886841, 97.442937097160552, 143.800001084804535, 22.0 ],
									"text" : "lisp.for-in"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 647.966680705547333, 135.123409977035521, 117.0, 22.0 ],
									"reg_data_0000000000" : [ "[", "omcs::pmc", "[", "pw::create-list", "[", "length", "melody", "]", "[", "pw::arithm-ser", 48, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1070596096, 84, "]", "]", "[", "pw::backquote", "[", "pw::%@", "[", "jbs-constraints::collect-true/false-rules", "[", "jbs-constraints::mk-profile-pitch-modulo-rule", "melody", ":true/false", 1, "]", "]", "]", "]", ":heuristic-rules", "[", "pw::backquote", "[", "pw::%@", "[", "jbs-constraints::collect-heuristic-rules", "[", "jbs-constraints::mk-fix-profile-rule", "melody", ":heuristic", 300, "]", "[", "jbs-constraints::not-bigger-interval-rule", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076363264, 3, ":heuristic", 300, "]", "]", "]", "]", ":rnd?", "t", ":sols-mode", 1, "]" ],
									"reg_data_count" : [ 1 ],
									"saved_object_attributes" : 									{
										"embed" : 1,
										"versionnumber" : 80104
									}
,
									"text" : "bach.reg @embed 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 189.733361527323723, 4.724012494087219, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 189.733361527323723, 32.800000488758087, 29.5, 22.0 ],
									"text" : "30"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 220.621343299746513, 32.800000488758087, 29.5, 22.0 ],
									"text" : "60"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 256.733361527323723, 32.800000488758087, 61.0, 22.0 ],
									"text" : "vzoom $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "dump" ],
									"patching_rect" : [ 9.19999672472477, 32.800000488758087, 55.0, 22.0 ],
									"text" : "t b dump"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 24.29616986730176,
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 6,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 561.0, 79.0, 469.0, 695.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 1,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 1,
										"objectsnaponopen" : 1,
										"statusbarvisible" : 2,
										"toolbarvisible" : 1,
										"lefttoolbarpinned" : 0,
										"toptoolbarpinned" : 0,
										"righttoolbarpinned" : 0,
										"bottomtoolbarpinned" : 0,
										"toolbars_unpinned_last_save" : 0,
										"tallnewobj" : 0,
										"boxanimatetime" : 200,
										"enablehscroll" : 1,
										"enablevscroll" : 1,
										"devicewidth" : 0.0,
										"description" : "",
										"digest" : "",
										"tags" : "",
										"style" : "",
										"subpatcher_template" : "",
										"assistshowspatchername" : 0,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 389.0, 245.0, 54.0, 22.0 ],
													"text" : "deferlow"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 312.875, 245.0, 54.0, 22.0 ],
													"text" : "deferlow"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-34",
													"lockeddragscroll" : 0,
													"lockedsize" : 0,
													"maxclass" : "bpatcher",
													"name" : "pmc.jbs_rules.maxpat",
													"numinlets" : 9,
													"numoutlets" : 3,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 18.0, 127.0, 356.0, 54.0 ],
													"varname" : "pmc_jbs_rules[2]",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-43",
													"lockeddragscroll" : 0,
													"lockedsize" : 0,
													"maxclass" : "bpatcher",
													"name" : "pmc.jbs_rules.maxpat",
													"numinlets" : 9,
													"numoutlets" : 3,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 18.0, 289.0, 356.0, 54.0 ],
													"varname" : "pmc_jbs_rules[3]",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-33",
													"lockeddragscroll" : 0,
													"lockedsize" : 0,
													"maxclass" : "bpatcher",
													"name" : "pmc.jbs_rules.maxpat",
													"numinlets" : 9,
													"numoutlets" : 3,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 18.0, 462.0, 356.0, 54.0 ],
													"varname" : "pmc_jbs_rules[1]",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"hidden" : 1,
													"id" : "obj-54",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 40.125, 52.0, 117.0, 22.0 ],
													"text" : "loadmess collapse 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-51",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 102.25, 435.200038552284241, 29.5, 22.0 ],
													"text" : "12"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-49",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 144.375, 435.200038552284241, 57.0, 22.0 ],
													"text" : ":absolute"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-47",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "int" ],
													"patching_rect" : [ 39.125, 389.600001454353333, 40.0, 22.0 ],
													"text" : "t b b i"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-45",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 39.12499988079071, 359.26666784286499, 77.0, 22.0 ],
													"text" : "loadmess 48"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 389.0, 215.200010895729065, 83.0, 22.0 ],
													"text" : "loadmess 300"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 312.875, 215.200010895729065, 70.0, 22.0 ],
													"text" : "loadmess 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 60.125, 239.200010895729065, 77.0, 22.0 ],
													"text" : "loadmess 90"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 60.125, 76.0, 77.0, 22.0 ],
													"text" : "loadmess 81"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 204.666666269302368, 76.0, 64.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80104
													}
,
													"text" : "bach.wrap"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-55",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 18.0, 16.000026767265354, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-56",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 204.666662722838396, 16.000026767265354, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-58",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 18.0, 531.86666476726532, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 7 ],
													"order" : 1,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 7 ],
													"order" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 8 ],
													"order" : 1,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 8 ],
													"order" : 0,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-58", 0 ],
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 0 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 2 ],
													"midpoints" : [ 214.166666269302368, 115.0, 111.75, 115.0 ],
													"order" : 1,
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 2 ],
													"midpoints" : [ 214.166666269302368, 275.0, 111.75, 275.0 ],
													"order" : 0,
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"source" : [ "obj-43", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 0 ],
													"source" : [ "obj-45", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 1 ],
													"source" : [ "obj-47", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"midpoints" : [ 59.125, 419.400020003318787, 153.875, 419.400020003318787 ],
													"source" : [ "obj-47", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 0 ],
													"midpoints" : [ 48.625, 427.400020003318787, 111.75, 427.400020003318787 ],
													"source" : [ "obj-47", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 3 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 2 ],
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"hidden" : 1,
													"order" : 2,
													"source" : [ "obj-54", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"hidden" : 1,
													"order" : 1,
													"source" : [ "obj-54", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 0 ],
													"hidden" : 1,
													"order" : 0,
													"source" : [ "obj-54", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 1 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 1 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 9.19999672472477, 428.388635698538053, 203.0, 36.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p RULES"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 151.0, 468.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-19",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "moz.chord_view.maxpat",
									"numinlets" : 2,
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 9.0, 603.0, 151.0, 202.0 ],
									"varname" : "bp1728651200064",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 9.19999672472477, 138.186190099251007, 93.0, 35.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80104
									}
,
									"text" : "bach.arithmser 48 84 0.25"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-24",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "pmc.engine.maxpat",
									"numinlets" : 2,
									"numoutlets" : 2,
									"offset" : [ -2.0, -4.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 9.0, 500.0, 161.0, 60.0 ],
									"varname" : "bp1183438541387",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-25",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "pmc.domain.maxpat",
									"numinlets" : 2,
									"numoutlets" : 2,
									"offset" : [ -65.0, -114.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 9.0, 373.0, 107.0, 47.0 ],
									"varname" : "bp1016034309384",
									"viewvisibility" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"midpoints" : [ 230.121343299746513, 55.799991108193808, 250.733368590474129, 55.799991108193808, 250.733368590474129, 28.799991108193808, 266.233361527323723, 28.799991108193808 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 2 ],
									"order" : 1,
									"source" : [ "obj-101", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-101", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"midpoints" : [ 640.766680690055864, 299.186186578276534, 801.766680690055864, 299.186186578276534 ],
									"order" : 0,
									"source" : [ "obj-101", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-101", 1 ],
									"source" : [ "obj-103", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"midpoints" : [ 199.233361527323723, 55.799991108193808, 250.733368590474129, 55.799991108193808, 250.733368590474129, 28.799991108193808, 266.233361527323723, 28.799991108193808 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 1 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"midpoints" : [ 136.662010133266449, 269.900001734495163, 90.5, 269.900001734495163 ],
									"order" : 1,
									"source" : [ "obj-138", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"midpoints" : [ 136.662010133266449, 269.900001734495163, 194.5, 269.900001734495163 ],
									"order" : 0,
									"source" : [ "obj-138", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 1 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 1 ],
									"source" : [ "obj-16", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-17", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 1 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-24", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"order" : 1,
									"source" : [ "obj-27", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"midpoints" : [ 106.700000000000003, 304.5, 126.5, 304.5 ],
									"order" : 0,
									"source" : [ "obj-27", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-138", 0 ],
									"midpoints" : [ 54.69999672472477, 65.572865724563599, 136.662010133266449, 65.572865724563599 ],
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"hidden" : 1,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-101", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-50", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 1 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-56", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-138", 0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-138", 0 ],
									"midpoints" : [ 266.233361527323723, 62.571314245462418, 136.662010133266449, 62.571314245462418 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "MOZ-numint",
								"default" : 								{
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"fontname" : [ "Menlo Regular" ],
									"fontsize" : [ 16.95833875454338 ],
									"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "MOZ-param",
								"default" : 								{
									"fontname" : [ "Menlo Regular" ],
									"fontsize" : [ 16.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "MOZ-title",
								"default" : 								{
									"fontname" : [ "Andale Mono" ],
									"fontsize" : [ 22.062094355029235 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "MOZ-umenu",
								"default" : 								{
									"bgfillcolor" : 									{
										"angle" : 270.0,
										"autogradient" : 0.0,
										"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
										"color1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
										"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
										"proportion" : 0.5,
										"type" : "color"
									}
,
									"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"fontface" : [ 2 ],
									"fontname" : [ "Menlo Regular" ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "SPLIM",
								"parentstyle" : "comment001",
								"multi" : 0
							}
, 							{
								"name" : "comment001",
								"default" : 								{
									"fontname" : [ "Herculanum" ],
									"fontsize" : [ 18.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "ksliderWhite",
								"default" : 								{
									"color" : [ 1, 1, 1, 1 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "message001",
								"default" : 								{
									"fontname" : [ "Arial" ],
									"fontsize" : [ 13.0 ],
									"textcolor_inverse" : [ 0.92549, 0.364706, 0.341176, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjBlue-1",
								"default" : 								{
									"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "newobjGreen-1",
								"default" : 								{
									"accentcolor" : [ 0, 0.533333, 0.168627, 1 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "numberGold-1",
								"default" : 								{
									"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "orjan style",
								"default" : 								{
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ],
									"bgfillcolor" : 									{
										"angle" : 270.0,
										"autogradient" : 0,
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
										"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"proportion" : 0.39,
										"type" : "gradient"
									}
,
									"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
									"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 402.0, 364.0, 205.0, 37.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p PMC-exampleB"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 21.963685765047337,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 366.403301239013672, 0.722292763846262, 49.0, 32.0 ],
					"text" : "(b)"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-2",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3.403301239013672, 46.508007049560547, 525.0, 45.0 ],
					"text" : "In the first example, we learned how to modify some PWConstraints Lisp code, \nand combine it with Iterate boxes to demultiply its expressive possibilities. \nNow we can consider a more complex example."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Menlo Regular",
					"fontsize" : 31.55611167716577,
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 3.403301239013672, 1.508007049560547, 369.0, 43.0 ],
					"text" : "PMC through Iterate"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 703.599974095821381, 37.508007049560547, 67.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 703.599974095821381, 3.508007049560547, 68.0, 22.0 ],
					"text" : "r zoomhelp"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"hidden" : 1,
					"source" : [ "obj-4", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-8::obj-59::obj-33::obj-64" : [ "live.text[3]", "live.text", 0 ],
			"obj-8::obj-59::obj-33::obj-85" : [ "live.text[2]", "live.text", 0 ],
			"obj-8::obj-59::obj-34::obj-184::obj-120" : [ "textedit[8]", "textedit", 0 ],
			"obj-8::obj-59::obj-34::obj-64" : [ "live.text[6]", "live.text", 0 ],
			"obj-8::obj-59::obj-34::obj-85" : [ "live.text[7]", "live.text", 0 ],
			"obj-8::obj-59::obj-43::obj-184::obj-120" : [ "textedit[1]", "textedit", 0 ],
			"obj-8::obj-59::obj-43::obj-64" : [ "live.text[4]", "live.text", 0 ],
			"obj-8::obj-59::obj-43::obj-85" : [ "live.text[5]", "live.text", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"parameter_overrides" : 			{
				"obj-8::obj-59::obj-34::obj-64" : 				{
					"parameter_longname" : "live.text[6]"
				}
,
				"obj-8::obj-59::obj-34::obj-85" : 				{
					"parameter_longname" : "live.text[7]"
				}
,
				"obj-8::obj-59::obj-43::obj-64" : 				{
					"parameter_longname" : "live.text[4]"
				}
,
				"obj-8::obj-59::obj-43::obj-85" : 				{
					"parameter_longname" : "live.text[5]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "bach.approx.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.args.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.arithmser.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.beatbox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.beatunbox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.belong.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.collect.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.contains.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.depth.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.div.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.dx2x.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.eq.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.eval.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.expr.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.filter.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.filternull.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.find.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.flat.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.group.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.gt.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.interp.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.intersection.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.is.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.iter.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.join.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.keys.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.length.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.lookup.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.mapelem.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.neq.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.nth.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.pad.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.pick.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.playkeys.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.portal.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.postpend.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.prepend.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.print.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.read.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.reg.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.repeat.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.rminus.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.roll.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.round.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.score.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.slice.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.split.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.subs.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.sum.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.textout.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.thin.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.times.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.value.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.wrap.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.write.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bpatcher-resize-gizmo.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bpatcher-resize.js",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../patchers/utilities",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.get_doc.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine/utilities",
				"patcherrelativepath" : "../../../patchers/pw4m_cluster-engine/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "erase.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "help.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "jbs_block_code-bypass.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_pmc",
				"patcherrelativepath" : "../../../patchers/pw4m_pmc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jbs_block_list.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_pmc",
				"patcherrelativepath" : "../../../patchers/pw4m_pmc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jbs_block_null.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_pmc",
				"patcherrelativepath" : "../../../patchers/pw4m_pmc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jbs_block_num.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_pmc",
				"patcherrelativepath" : "../../../patchers/pw4m_pmc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jbs_block_umenu_sign.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_pmc",
				"patcherrelativepath" : "../../../patchers/pw4m_pmc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "key_trigger.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.backquote.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.expr.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.for-in.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.iterate.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.lighteval.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.quickeval.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.quote.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "load_MOZ_helpfile.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mac_or_win.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp",
				"patcherrelativepath" : "../../../patchers/pw4m_lisp",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "make_path_once.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp",
				"patcherrelativepath" : "../../../patchers/pw4m_lisp",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.chord_view.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/moz_modules",
				"patcherrelativepath" : "../../../patchers/moz_modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.init-unless.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.maxverbang.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.play_hover_title.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.reconstruct-lllls-from-print.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.sendto_ezmidi_instr.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.textfield.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.update-ui.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz_four.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "moz_helpnum.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz_one.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "moz_three.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "moz_two.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "open-doc-double.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "pmc.domain.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_pmc",
				"patcherrelativepath" : "../../../patchers/pw4m_pmc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pmc.engine.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_pmc",
				"patcherrelativepath" : "../../../patchers/pw4m_pmc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pmc.jbs_rules.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_pmc",
				"patcherrelativepath" : "../../../patchers/pw4m_pmc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pmc.thinking-engine_UI.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_pmc",
				"patcherrelativepath" : "../../../patchers/pw4m_pmc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pmcyes.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "pw.backquote.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_code_generators_legacy",
				"patcherrelativepath" : "../../../patchers/pw4m_lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.eval-box.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp",
				"patcherrelativepath" : "../../../patchers/pw4m_lisp",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.quote.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_code_generators_legacy",
				"patcherrelativepath" : "../../../patchers/pw4m_lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rule_number_splitter.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_pmc",
				"patcherrelativepath" : "../../../patchers/pw4m_pmc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "save-double.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "sendback-selec.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "sendback.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "shell.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "thru.maxpat",
				"bootpath" : "C74:/patchers/m4l/Pluggo for Live resources/patches",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "MOZ-numint",
				"default" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"fontname" : [ "Menlo Regular" ],
					"fontsize" : [ 16.95833875454338 ],
					"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "MOZ-param",
				"default" : 				{
					"fontname" : [ "Menlo Regular" ],
					"fontsize" : [ 16.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "MOZ-title",
				"default" : 				{
					"fontname" : [ "Andale Mono" ],
					"fontsize" : [ 22.062094355029235 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "MOZ-umenu",
				"default" : 				{
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0.0,
						"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
						"color1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
						"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
						"proportion" : 0.5,
						"type" : "color"
					}
,
					"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"fontface" : [ 2 ],
					"fontname" : [ "Menlo Regular" ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "SPLIM",
				"parentstyle" : "comment001",
				"multi" : 0
			}
, 			{
				"name" : "comment001",
				"default" : 				{
					"fontname" : [ "Herculanum" ],
					"fontsize" : [ 18.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "ksliderWhite",
				"default" : 				{
					"color" : [ 1, 1, 1, 1 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "message001",
				"default" : 				{
					"fontname" : [ "Arial" ],
					"fontsize" : [ 13.0 ],
					"textcolor_inverse" : [ 0.92549, 0.364706, 0.341176, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjBlue-1",
				"default" : 				{
					"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "newobjGreen-1",
				"default" : 				{
					"accentcolor" : [ 0, 0.533333, 0.168627, 1 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "numberGold-1",
				"default" : 				{
					"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "orjan style",
				"default" : 				{
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ],
					"bgfillcolor" : 					{
						"angle" : 270.0,
						"autogradient" : 0,
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
						"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"proportion" : 0.39,
						"type" : "gradient"
					}
,
					"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
					"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
