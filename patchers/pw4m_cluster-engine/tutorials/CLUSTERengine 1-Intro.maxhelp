{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 79.0, 1097.0, 755.0 ],
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
		"showontab" : 1,
		"assistshowspatchername" : 0,
		"title" : "CLUSTERengine Intro",
		"boxes" : [ 			{
				"box" : 				{
					"fontsize" : 10.0,
					"hidden" : 1,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1097.0, 729.0 ],
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
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"title" : "demo [c]",
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
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
													"id" : "obj-4",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 242.5, 100.0, 69.0, 22.0 ],
													"text" : "clefs G Alto"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 343.0, 102.0, 102.0, 22.0 ],
													"text" : "clefs G Alto Tenor"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "" ],
													"patching_rect" : [ 242.5, 70.0, 220.0, 22.0 ],
													"text" : "sel 2 3"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 242.5, 40.0, 71.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80102
													}
,
													"text" : "bach.length"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-62",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 242.5, 9.666666666666629, 50.0, 22.0 ],
													"text" : "r voices"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 50.0, 100.0, 116.5, 22.0 ],
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 174.0, 80.0, 35.0 ],
													"text" : "clefs G Alto Tenor"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-19",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-21",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 147.5, 363.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-2", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 1 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 1 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-6", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-62", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 23.0, 468.0, 43.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p clefs"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Andale Mono",
									"id" : "obj-27",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 203.375, 328.43284789644008, 37.0, 20.0 ],
									"text" : "STOP"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Andale Mono",
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 179.0, 13.333333333333371, 76.0, 20.0 ],
									"text" : "3 voices"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Andale Mono",
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 13.333333333333371, 76.0, 20.0 ],
									"text" : "2 voices"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Andale Mono",
									"id" : "obj-12",
									"linecount" : 27,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 311.0, 76.0, 642.0, 371.0 ],
									"text" : "An approximation of 16th century vocal polyphonic style\n\nThis example is a relatively free approach to 16th century vocal polyphony. \nWhile species counterpoint constitutes a very detailed description of the style, \nthis is a more \"rough\" experiment to generate music that resembles the style.\n\nTraditionally, pitch within this style has been defined by theorists in great detail, while rhythm is more up to the composer's intuitive understanding of the style. \nIn this example, the rhythm is restricted by a Markov chain rule, based on an analysis of a melodic line by Giovanni Palestrina (see inside the sub-patch \"markov-chain-rule).\n\nTwo more rules restrict how the rhythm relates to the meter (see inside the sub-patch \"rhythm-meter-rules)\".\n\nFive rules restrict how melodic movements relate to rhythm (see inside the sub-patch \"melodic rules\").\n\nFinally two rules restrict the relation between the voices: voice 1 follow voice 0 in a canon in fifths, and the harmonic relationship betwen the two voices is based on major and minor triads.\n\nYou can generate 2 or 3 voices (with the 2 top voices in canon). It typically takes the engine a few seconds to find a score, but occasionally slightlyt longer.\n\nNote that strangely the 3-voice Palestrina example is often faster to calculate than \nthe 2-voice version. This might have to do with the inherent limitations of the harmonic\nstructure in that context (rules and domains)."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-90",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
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
													"id" : "obj-76",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 424.5, 184.666666666666629, 65.0, 22.0 ],
													"text" : "s harmony"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-75",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 311.5, 133.0, 97.0, 22.0 ],
													"text" : "model (4 7) (3 7)"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 126.0, 129.0, 77.0, 22.0 ],
													"text" : "model (4) (3)"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-74",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "bang" ],
													"patching_rect" : [ 223.0, 104.0, 107.0, 22.0 ],
													"text" : "t b b b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-73",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "bang" ],
													"patching_rect" : [ 50.0, 100.0, 95.0, 22.0 ],
													"text" : "t b b b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-70",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 88.0, 129.0, 29.5, 22.0 ],
													"text" : "0 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-69",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 267.0, 133.0, 35.0, 22.0 ],
													"text" : "0 1 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-62",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 356.5, 184.666666666666629, 52.0, 22.0 ],
													"text" : "s voices"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-86",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 39.999999666666625, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-87",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 223.0, 43.999999666666625, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-88",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 262.666666666666629, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-89",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 223.0, 266.666666666666629, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-76", 0 ],
													"midpoints" : [ 135.5, 165.666666666666629, 434.0, 165.666666666666629 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 0 ],
													"midpoints" : [ 276.5, 178.666666666666629, 366.0, 178.666666666666629 ],
													"source" : [ "obj-69", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 0 ],
													"midpoints" : [ 97.5, 174.666666666666629, 366.0, 174.666666666666629 ],
													"source" : [ "obj-70", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-73", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-70", 0 ],
													"source" : [ "obj-73", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-88", 0 ],
													"source" : [ "obj-73", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-69", 0 ],
													"source" : [ "obj-74", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-75", 0 ],
													"source" : [ "obj-74", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-89", 0 ],
													"source" : [ "obj-74", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-76", 0 ],
													"midpoints" : [ 321.0, 169.666666666666629, 434.0, 169.666666666666629 ],
													"source" : [ "obj-75", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-73", 0 ],
													"source" : [ "obj-86", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-74", 0 ],
													"source" : [ "obj-87", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 23.0, 42.33333300000001, 149.0, 22.0 ],
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
									"id" : "obj-85",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 79.0, 1372.0, 782.0 ],
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
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 119.0, 393.0, 50.0, 22.0 ],
													"text" : "r voices"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 410.0, 511.5, 83.0, 22.0 ],
													"text" : "lisp.expr not x"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 410.0, 474.0, 151.0, 22.0 ],
													"text" : "lisp.expr and x y"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 410.0, 399.0, 151.0, 22.0 ],
													"text" : "t b b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 542.0, 433.5, 123.0, 22.0 ],
													"text" : "lisp.expr minusp rtm2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 410.0, 433.5, 123.0, 22.0 ],
													"text" : "lisp.expr minusp rtm1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 410.0, 541.5, 124.0, 22.0 ],
													"text" : "lisp.lambda rtm1 rtm2"
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
													"maxclass" : "bpatcher",
													"name" : "cluster.r-one-engine.maxpat",
													"numinlets" : 5,
													"numoutlets" : 2,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 50.0, 432.0, 294.0, 97.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-2",
													"linecount" : 8,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 750.0, 232.0, 743.0, 114.0 ],
													"text" : "These two rules are bypassed by default. Click on the \"bypassed\" button to re-enable them \nif you want to try them out. They might make it slightly harder to find a solution.\n\n- the first rule forbids immediate (local) repetitions of pitches\n\n- the second rule forbids 'spaced' repetitions of pitches (every 2 variables)\n\nThese rules should minimize the proliferation of repetitions and interleaved repetitions in the score."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 218.0, 40.000000187500007, 186.0, 22.0 ],
													"text" : "loadmess rule_parameter pitches"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 98.0, 40.000000187500007, 111.0, 22.0 ],
													"text" : "loadmess bypass 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-81",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 375.0, 255.7451171875, 143.0, 22.0 ],
													"text" : "#'(lambda (a b c) (/= a c))"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-82",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-one-engine.maxpat",
													"numinlets" : 5,
													"numoutlets" : 2,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 50.0, 218.0, 294.0, 97.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-80",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 375.0, 144.7451171875, 135.0, 22.0 ],
													"text" : "#'(lambda (a b) (/= a b))"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-65",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-one-engine.maxpat",
													"numinlets" : 5,
													"numoutlets" : 2,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 50.0, 107.0, 294.0, 97.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-83",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.000000187500007, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-84",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 731.259277187499947, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-1", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-84", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-10", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 1 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-65", 0 ],
													"order" : 1,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-82", 0 ],
													"order" : 0,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-65", 0 ],
													"order" : 1,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-82", 0 ],
													"order" : 0,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 4 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-80", 0 ],
													"source" : [ "obj-65", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-82", 0 ],
													"source" : [ "obj-65", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 1 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-65", 4 ],
													"source" : [ "obj-80", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-82", 4 ],
													"source" : [ "obj-81", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-82", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-81", 0 ],
													"source" : [ "obj-82", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-65", 0 ],
													"source" : [ "obj-83", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 23.0, 258.228571428571399, 91.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p optional-rules"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 153.0, 11.333333333333371, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 79.0, 652.0, 782.0 ],
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
													"id" : "obj-5",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 318.0, 484.0, 249.0, 35.0 ],
													"text" : "[ 43 ] [ 45 ] [ 47 ] [ 48 ] [ 50 ] [ 52 ] [ 53 ] [ 55 ] [ 57 ] [ 59 ] [ 60 ] [ 62 ] [ 64 ] [ 65 ] [ 67 ]"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-3",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.voice-domain.maxpat",
													"numinlets" : 3,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 18.0, 545.0, 233.0, 174.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 330.0, 291.400007784366721, 249.0, 35.0 ],
													"text" : "[ 48 ] [ 50 ] [ 52 ] [ 53 ] [ 55 ] [ 57 ] [ 60 ] [ 62 ] [ 64 ] [ 65 ] [ 67 ] [ 69 ] [ 72 ] [ 74 ] [ 76 ] [ 77 ]"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 346.0, 59.400007784366721, 249.0, 35.0 ],
													"text" : "[ 55 ] [ 57 ] [ 59 ] [ 60 ] [ 62 ] [ 64 ] [ 67 ] [ 69 ] [ 71 ] [ 72 ] [ 74 ] [ 76 ] [ 79 ] [ 81 ] [ 83 ] [ 84 ]"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-23",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 18.0, 736.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-10",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.voice-domain.maxpat",
													"numinlets" : 3,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 18.0, 354.0, 233.0, 174.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-2",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 18.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 60.583331942558289, 101.0, 54.0, 22.0 ],
													"text" : "deferlow"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 125.0, 112.400007784366721, 69.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80102
													}
,
													"text" : "bach.group"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.0,
													"id" : "obj-19",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 125.0, 72.400007784366721, 177.0, 22.0 ],
													"text" : "-1/2 1/2 3/4 1/4 3/8 1/8 1 -1/4 -1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 125.0, 7.0, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-96",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.voice-domain.maxpat",
													"numinlets" : 3,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 18.0, 159.0, 233.0, 174.0 ],
													"viewvisibility" : 1
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 2 ],
													"midpoints" : [ 339.5, 339.700003892183361, 241.5, 339.700003892183361 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-96", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-96", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 1 ],
													"order" : 2,
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 1 ],
													"order" : 1,
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-96", 1 ],
													"order" : 0,
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-96", 2 ],
													"midpoints" : [ 355.5, 126.200003892183361, 241.5, 126.200003892183361 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 2 ],
													"midpoints" : [ 327.5, 531.5, 241.5, 531.5 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"midpoints" : [ 134.5, 54.700003892183361, 339.5, 54.700003892183361 ],
													"order" : 1,
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"midpoints" : [ 134.5, 64.5, 70.083331942558289, 64.5 ],
													"order" : 4,
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"midpoints" : [ 134.5, 50.200003892183361, 134.5, 50.200003892183361 ],
													"order" : 3,
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"midpoints" : [ 134.5, 41.700003892183361, 355.5, 41.700003892183361 ],
													"order" : 0,
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"midpoints" : [ 134.5, 66.0, 327.5, 66.0 ],
													"order" : 2,
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-96", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "MOZ-numint",
												"default" : 												{
													"fontsize" : [ 17.0 ],
													"fontname" : [ "Menlo Regular" ],
													"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-param",
												"default" : 												{
													"fontsize" : [ 16.0 ],
													"fontname" : [ "Menlo Regular" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-title",
												"default" : 												{
													"fontsize" : [ 22.062094355029235 ],
													"fontname" : [ "Andale Mono" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-umenu",
												"default" : 												{
													"bgfillcolor" : 													{
														"type" : "color",
														"color1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
														"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
														"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
														"angle" : 270.0,
														"proportion" : 0.5,
														"autogradient" : 0.0
													}
,
													"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
													"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
													"fontname" : [ "Menlo Regular" ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontface" : [ 2 ]
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
													"fontsize" : [ 18.0 ],
													"fontname" : [ "Herculanum" ]
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
													"fontsize" : [ 13.0 ],
													"fontname" : [ "Arial" ],
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
													"bgfillcolor" : 													{
														"type" : "gradient",
														"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
														"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
														"angle" : 270.0,
														"proportion" : 0.39,
														"autogradient" : 0
													}
,
													"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
													"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
													"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ]
									}
,
									"patching_rect" : [ 153.0, 76.0, 118.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p domains_3_voices"
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.090196078431373, 0.074509803921569, 0.074509803921569, 1.0 ],
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 44.0, 79.0, 1207.0, 703.0 ],
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
													"fontface" : 2,
													"fontname" : "Menlo Regular",
													"id" : "obj-4",
													"linecount" : 7,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 52.725000000000023, 510.0, 464.0, 104.0 ],
													"text" : "The rule on the bottom is exactly the same, but with\nsome manual tweaking of the lambda code generated by the\nce::test-seq-follows-markov-chain?, stored as is in a bach.reg.\nIn some cases this version might be significantly faster...\n\nYou can try toggling one version or the other \nwith the little abstraction 'invert-bypass' on top."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 1,
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
														"boxes" : [ 															{
																"box" : 																{
																	"id" : "obj-14",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 55.0, 100.0, 29.5, 22.0 ],
																	"text" : "!- 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-13",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 139.5, 63.0, 22.0 ],
																	"text" : "bypass $1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-12",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 117.0, 139.5, 63.0, 22.0 ],
																	"text" : "bypass $1"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-16",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 80.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-19",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 50.0, 221.5, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-20",
																	"index" : 2,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 117.0, 221.5, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 0 ],
																	"source" : [ "obj-12", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-19", 0 ],
																	"source" : [ "obj-13", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 0 ],
																	"source" : [ "obj-14", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-12", 0 ],
																	"order" : 0,
																	"source" : [ "obj-16", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-14", 0 ],
																	"order" : 1,
																	"source" : [ "obj-16", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 127.75, 99.0, 90.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p invert-bypass"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 127.75, 38.5, 70.0, 22.0 ],
													"text" : "loadmess 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 127.75, 69.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-3",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-one-engine.maxpat",
													"numinlets" : 5,
													"numoutlets" : 2,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 31.0, 397.0, 294.0, 97.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 408.600000000000023, 59.0, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 6,
													"outlettype" : [ "", "", "", "", "", "" ],
													"patching_rect" : [ 408.600000000000023, 222.0, 205.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80102
													}
,
													"text" : "bach.beatunbox"
												}

											}
, 											{
												"box" : 												{
													"autofit" : 1,
													"data" : [ 63465, "png", "IBkSG0fBZn....PCIgDQRA...DL..DPAHX....fVLMnh....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI68d8bbedc++u1duuXWrnWHJrB1EIsDkrhrjcbbbajrchKYRex89tbwu3j7WPlI233jLSxjIeuvN1Qw1JVR1pYIRQJRPBRBPzKKvBfs26696Blyi9.DRQEKKKHQclACAIQYKOmmS6862GckKWtMeD1Z29c9omNc5tqesxm2rYS.Pud8nSmt65WeiFMnc61XvfAzqWO.zpUK.vrYyztcaZ0pEMa1Dc5zgQiFUec0pUS8yT6Oe4OkeN+pZ2ume2ue9FMZ78zu+Ons62ye.9v8yv2mr61KVMZz.c5zgd85wnQipC70pUCCFL.f5+GXGNCMa1T88avfAZ2tMMZzflMap9d28uu6my6Ga+5y9Xmf+G6dc3ynQizpUKZ0p0NtQW9Za1ro5.u72kaza2tMVrXAiFMhEKVnc61TudcpToBsZ0Bc5zgISl1wu6c+3P9Y+w16e1C7NA2qPjxma0pU.tqNBxM4lMaF.pToB0qWeGoxjKWNLa1L1saeGoFY1rYLa1LUqVU4vn82s7w62NAZSW3AU6Adm.wtWNCEKVTkFibXsUqVznQC0e5xkKLa1r5qypUqpa3aznAUqVkFMZfd85oYylTsZUpToBVsZUkNzti.s65O9X68O6Admfce3a2oinMOes0DH2pWsZUrYyF.TtbYxlMq5mUsZ0voSmjLYRpWuNACFj.ABfc61UoBINYZ+PJB+t836W21G6n8wNA6vta0EXznQUd7UqVUUCfTbrUqVod85jOedlYlYX1YmkzoSS974IWtbDMZTJTn.1rYi8su8wvCOLgBEhvgCS3vgwiGOpC9RzF850qbDpWu9GTub7.i8wNA+O185F24laNxmOOIRjfToRQoRk..KVrfISlvoSm31sapToByN6rr7xKSgBEnRkJTnPA5niNTGpSjHAas0VTudcBEJDCLv.7U+pe0czQoc6P7wNAu+aF+fNb36093e+rZ0psiVZJeuZS6vfACTrXQzqWOISljFMZvFarAEJTP82qVsp5v9MtwMnZ0pztcaxjICm7jmjkVZIVe80QmNc32ueLZzHNb3f74ySylMod85JGn74yiQiFYkUVg3wiSWc0ECMzPbricL762OFLXfLYxfUqVoZ0pX0pUzoSGMZz.3NydnQiFTpTIra2965Wq09Z4tmCwc6+a2e9dQ69cN3d8+qMcScUpT4CzFR+9sSfNc5nYyl63MasE3VudcBDH.at4ljHQBt90uNlMalqe8qyxKuLd73gFMZPxjIwfACXxjI0gwzoSS0pUY3gGlM2bSZzngpPWoVAYVBxyivgCShDInVsZDLXPZ2tM4ymmToRwAO3A4jm7j7Y9LeF5omd1QA050qWUncqVsvhEKXwhEJWt765W+ta1G0cBd278+Q9zgJWtLVrXAa1ro5SubvxrYyTqVMpVsJKrvBbyadS9I+jeB974i74yiUqVYokVhfAChGOdnUqVjOedJVrnZpuczQGXvfAkCh76nc61X1rY73wC25V2hfACR4xkYs0VCmNchMa1Hc5zpHGd73ASlLw0t10vrYy7I+jeR0WWiFMTyZPud8TpTIpWuNVrX4C5Wd+Hg8Qdm.GNbnJbsUqVXvfArXwhJECc5zw2+6+84e9e9eFylMiOe9n6t6l0WecxkKGG3.GfToRQlLY1Q6LaznAlLYBiFMpl9asZ0T2R61saBDH.4xkiwGebFZng31291rzRKQqVsvqWupCxSO8zDIRDN8oOM.L+7ySkJU3YdlmASlLohbI+dzoSGsZ0hJUp7A4Ksejw9He5P1rYSk1ibyY0pUYokVhUWcUdoW5k3V25VjMaV5ryNwqWujMaVpWuNtb4B2tcqJHVlxqLzLqVsppunQiF3zoSZznAVrXA61syHiLBkKWlwGeblbxI4BW3BzYmcRlLYnd853vgCRkJEd85E61sS4xkIb3vr+8ueJTn.G6XGiicriga2tUCVqb4xnSmNLa1LFLXPM852Mu9c2rONcnG.RGJe97p2HSmNMqrxJbkqbEtvEt.yM2bphO850qJeaIG9b4xQylMIPf.Lv.CP73wUs6rYylztcaVc0UA.+98iCGNHYxjjOedLXv.d85kibjiPiFMnPgBDJTHBFLHoSmF3NSX1sa2phla1rIIRjfKdwKppwHSlLbfCb.FYjQTNwxAWAORer8dy9HejflMaRtb4Xs0ViYlYFld5oY4kWljISRkJUniN5XGoy3vgCLa1LFMZjZ0pwniNpZBuwhECylMSjHQnXwhjOedZ2tMQhDgHQhPgBEXlYlQULdGczAVsZEmNcxoO8owrYy7Zu1qwa7FuANb3Pg9TAWQgBEBGNbfWudIWtbjJUJLa1LiLxHbhSbBFYjQTcdpQiFpTxd2952cy93HAO.DI3EewWjEWbQt8suMoSmFCFLfQiFwoSmpC9FLXPkKeoRknc61ToRELXv.qrxJzrYSb61MNc5jZ0pwVasEEKVDa1rgYylYrwFiN6rStvEt.YxjggGdXzqWOkKWVgYH+98SgBEHPf.bfCb.JTn.5zoirYyRqVsnToR3xkKhGONau81DJTHVas0TQWhEKFOzC8Pb7ieb5ryNUXO5imiv6caOuSv8qOuxg2Z0pQiFMvpUqTpTIVZokHVrX7S9I+DVe80wnQi32uezqWO1rYivgCyRKsDoSmF61sq.Em.XNAVCG9vGlDIR..8zSOb0qdUrZ0J4ymGa1rQO8zC80We31saxkKGSLwDTtbY07AZ2tM80We.2oSUMZzfAGbPt10tlZNEm7jmTk9SpTo3bm6bzWe8Q+82OYylkacqawRKsDlLYhM1XC989898Ty4nUqVTsZUEZW850K0pUi1saSwhEwiGOJP8Is2sb4xXvfAb3vw8sEqeX2zB.Qs.ST9650qGC+k+k+k++8AziuesXRZAhCfQiFYt4liW60dMtwMtAEJTfM2bS750K50qmd6sWZ1rIqs1Z.nJ1UZ4ozAH61syPCMDc1YmLxHivgO7gQmNcrwFanPApf6mxkKy5quNOzC8PjKWNpVsJ986m3wiS5zowlMaXwhEhFMJCLv.TsZUhEKF1sam3wiyxKuL1rYCGNbvAO3A4vG9vzc2cyQO5QIYxjJG5DIRfSmNoXwhL3fCha2tQud8X0pUrYylZJyxgbAxGxbMLZznpSShSjTX8GVSG59Y2KLXoEaX64iDb+LqVsR5zowqWuX1rYtzktDu9q+5r7xKylatIvcJ.0rYy3xkKrXwBqu95TudcpUqFVsZkb4xoXPkzue850ie+9YhIlfRkJwFarA23F2f74yS4xkUvgPbhFZngTSm9gdnGhe9O+miQiFYhIl.a1rwO8m9SwiGODNbXpVsJG8nGkkWdY1291GEKVDylMyfCNHm9zmls2daJWtL25V2hW3EdAb5zI80WebfCb.xmOOSN4jjISFBGNLFMZD2tcSO8zC1saWMbOiFMp32fbPuYylXznQLYxjhnOOHYZiBn8e6C8QBDHO3wiGJVrH+S+S+Sb0qdUb5zIUpTgb4xQ61swkKW3ymORkJEISlDe97wVasENb3fRkJoJlUlDq33biabCUZTMa1DylMSpTonRkJpacsa2tpH1ibjiPoRkn+96mie7iiYyl44e9mmzoSiISlHc5zbpScJb4xEc0UWTrXQ5niN3XG6XzUWcgYyloRkJ7hu3KxBKr.81au32ue1XiMnd85r1ZqgACFX94mmadyaxxKuLyN6rr5pqphRoWudb61sZh0ZSIPKDs0df3ixQBteHE9C8NAMZzPUf3q+5uNuxq7JjISFLYxD0pUiRkJgWudQmNcTpTIJTn.QhDg74yqt41sa2DJTHrYylp2+4xkiJUpnRyIa1rL2byQ850Uvn1kKWzpUKE9hLZzH8zSOXylM1+92OVsZk27MeSRjHAMZzfN5nC1XiMXqs1R0NzpUqxi9nOJ25V2hvgCyjSNIqs1Zzau8RO8zC.DOdbLZzHQiFEKVrPgBEHQhDDOdbpVsJ4ymeGXSRdrznQC73wiJMHsrhSpGQaZAh8QIm.wta0C.2442G5cBj1K9rO6yxO5G8iTX8eqs1BqVsRqVsvkKWztcaRmNMczQGbfCb.lbxIoiN5..NvAN.6e+6mt6taLZzHYxjgxkKqXN1PCMDUqVE.5s2dwgCGjHQBZ0pEFMZjlMahWudoUqVzUWcwgO7gY94mmToRoJ9bhIlfkWdYb4xENc5jUWcUFbvA43G+3nSmN1ZqsvfACbyadSUAw6e+6macqawFargZl.oRkRkFijdjQiFwnQijMaVxlMKISlD3N063ymOU8ABIfjBBEGC3itNAOPDI.folZJ99e+uOqt5pLv.Cfd85Ia1r32ueENdzqWOiN5np+MoPZGNbvQO5QYngFhAGbPzqWOqt5ppCc974CmNcpJD0lMaTpTI74yGiM1Xr7xKiACFHYxj7LOyyvoN0oXyM2Dc5zgc61oRkJpVZ1UWcwi7HOB6e+6mm5odJN0oNkJpRkJUn6t6Vg4nnQix7yOOYxjgjISxVasECO7vznQC5omdTXdRxuuPgBr5pqx1auMYylUQ4S61siQiFUD+QqS.vCTQBtW+8Ozyh6M2bSd4W9kIUpTL1Xige+9wjISDHP.E9fJVrHsZ0hm5odJb61MW8pWkScpSolFrWudwlMazc2cSu81qpaNvcNDL2byQlLYTDjoqt5hie7iiEKV3Lm4LXxjI95e8uNm4LmgLYxn.m25quNUqVEGNbvQNxQ3Ydlmgd5oGFarwHXvfTpTIb61MYxjgwGebVc0UId73p5O73wCUpTQ0R2BEJfACFXqs1hN6rSJTn.whEirYyhd85IPf.zQGcPqVs3l27l7S+o+T1XiMHa1rpnZ6VELdPxtWsaeOe2gDIJQPCpDR2tc6TrXQ9Q+neDKt3hDJTHJVrH0qWms1ZKpTohJuciFMRvfAIa1rr81aSf.And85pCbkJUBOd7P97440dsWSkdw9129PmNcLv.CP3vg4vG9vJljs0VagQiFYrwFiO4m7SRO8ziB.dBei6s2dUycPxGMTnPp+tfWngGdXJUpDG8nGk0VaMU2oLZzHISlTkhmACFX6s2lt5pKVbwEwlMa3ymOJUpj54a5zowue+nSmNRlLI+i+i+i7m7m7mnlLtSmNQmNcpnH2sND8qSJc99cjj62OesQ5taesMa1buuSf7jPaKLg67jZwEWjEVXA5niNnPgBX2tcxmOOtb4hgFZH750KoSmljISRlLYX80WW00mXwhge+9YfAFfQGcTzoSGKu7xDKVLLXv.82e+zYmcxINwIvoSmXwhEEuDzoSGtc6F.5ryNUG7kCtRJHVsZUk9wtg+g1bU862uBgqG6XGiKcoKgc61U8+uRkJL1XiwryNKc0UWL2byga2tIYxjpHVoRkhN6rS5pqtHUpTDMZTFbvAIUpT7i+w+XrZ0JiM1XptfIoL5vgiei8d4dUaOuSfV84QNn.P8504RW5RLwDSfUqV4m+y+43xkKJUpjJWeiFMx3iOtpvSg5iRu5kaWEGpEWbQb61M6e+6mQGcT750KUpTA850S0pUUPrvoSm30qW5t6tUJKg7XRP3o7w8KkCoMlRzm95qOdoW5kToDIcvJe9730qWRlLINb3PMU3xkKqPjpSmNISlLzrYSb5zop1fqe8qSf.AnZ0pbxSdRb3vwNDHfGzs87NAxslBf1jATkLYRt10tF0pUSkGbu81KUpTgFMZfWudYvAGjRkJgSmNITnPL6rypHjhzcjgGdXLYxDas0VXxjIN8oOMiM1XDIRj65zTkgoIscT5hjvk.YRrBhT0xjMwzN0Va1rQhDIPmNcToRERmNMACFTgNUgvNKt3hL3fCRgBEnyN6j0WecLa1rROj74yGkKWlb4xgISlHTnPjMaV5u+9oc61r3hKR4xkwiGObzidTUw8eTG1D2OSmNc68KLd2svSHe9BKr.arwFp1eJs2zue+JBqHfbS5e9ANvATr3Rlx5gNzgvgCGX2tcFd3g4nG8n3ymO0DUkCYhiX61soPgBDOdb1byM2QumkazkawkApIenUEIz9uA2IhPsZ0Hc5zznQChDIBwhES8bwnQirwFafMa1HYxj3wiGLa1Lc2c2JrIs81aSe80mBBE6ae6CqVspJ1Od737pu5qRlLY.P85xC51GZhDHfQSRA35W+5.nHZtba9XiMFCO7vparkznRkJEG5PGhDIRP+82u5VSIxR2c2MczQG31saJVrHFLXPkdkDQP5thjBkjZlVnVH2xKn6T3F78JZPsZ0vqWu.2YlGtb4h0WecdrG6wTOGkT2DjsVrXQBEJDlLYhHQhPsZ0TfyyrYyze+8SjHQnQiFLyLyPtb4vkKW3wiGt10tFm3DmfyctyQpTodfOknOTDI.d6a+ExwWrXQlZpovqWur7xKq5i+92+9wiGOTpTIrYyFtb4BqVstiNx3xkKEBPEGmlMaxHiLBd85kRkJox+WJhVNHKsUrd856POREGCsvSPJLV6s969Csh5UkJUvkKWpGqUpTASlLoRcKQhDXwhEJVrHNc5DCFLnlaQe80Gm4LmgO4m7SR61soiN5fQGcTkFGswFavFarAkJUhhEKxEu3EUS99isOjLm.IR.fR02Ve80wsa2pBf2Zqsvtc6JNEKsUzsa2pAPYznQN3AOHqt5p3wiGlXhIT7LPPjYiFMvgCGXylMUJURwm50qGSlLoJ5U5Xj7Q850UNPva2QKsoxs6V0Y1rYxmOuRhUrZ0J8zSOb6aearXwhhDMRzEszEMQhDTpTIFZngnu95iSe5SyfCNHMZzfs1ZKN+4OOepO0mhPgBQrXwTnU85W+5L+7y+a32E26Z22IFu6bX28GueKSf4ymWcfS57RrXw3JW4JjKWNd3G9gwpUq30qWUO4sZ0phr6sa2V0O8N6rSzqWOC7+PUxs1ZKN3AOHlLYhxkKid85wtc6pt8H2vKJKs15CDGSsZTp179gcp8+2KsFU9YX2tcLXv.Yylk0VaMRkJEKrvBr0VaQvfAIWtbTudcZ0pEczQGX2tcFe7wIc5zXznQ1+92OFMZjN6rSELK1d6sYhIl.SlLwMu4MIXvfTqVMZ1rIoSmlCbfCfSmNUQ4zVai7X990G92oyFeXYZy64iD31saLYxDUqVkBEJPgBEHUpTpajE.okISFUgnxs9ZqmP9SmNche+9Y3gGlwGeb0s5h.coEgkue6fC6bYdTpTILYxD1rYSwI4.ABPylMUfoa7wGG.VYkUX4kWls2daVe804BW3BXvfA5qu9HXvfJkvdqs1h.ABfYylYokVBa1rgQiF4Mey2jnQipjIdAeQRpevaOSlOpa64KLVJbEPgLz0VaM0shkKWFiFMR0pUoUqVXxjI0vpZzngJ8AoW+xs5xvtD.noclAva6D798sYZ01zRkJoX7UkJUvoSmL+7yic61oPgBru8sO5t6to+96mkWdYRkJEgCGls1ZKxmOOCO7vztcaFarwnXwh7xu7KiWudU0qzc2cqDQft6tat10tF81auX2tcra2N50qW85pDE7AANGrmORfACFTcZwpUqjJUJld5oU8+uiN5PozCx.mzJGIZI9hHchxAAA5BRQxZ0UneSFIPqit3HKsBc7wGGWtbwgO7gwiGO32ueZ2tMG7fGTMyCoe+u5q9pjHQBb3vAlLYhAFX.9Y+relp9hjISpjJlae6aqhDHuNsa3U+fxBBYO+yRo3RQJTlYlY31291Tudc5omdvqWu3wiGU8.6Fu7ZGZk1N3znQCpUqlRXc0F5+2DG9ESpiPZCp.yhfACx5quNW7hWjolZJVc0UwrYyL2bywfCNHKrvB7vO7CiEKV3xW9xJm4RkJgEKVn6t6FWtbge+9YpolB61sS1rYId73pHJCN3f20mu+l7Rf8B1d9zgjh1jTdVbwEUfESlhrVXKHaKFo8jxlfQXMlfsmc2lR389Rx6WESxAWXsVwhEU0tHxD43iONqu9573O9iym+y+44m8y9YJNL2c2cia2twue+L8zSuizeFe7w4QezGUI1.ABDfJUpP4xk4a7M9Fph9kthoMhj7X5AAaOej.gL6lLYhBEJPznQUuQK78UaKP0xqVs.dSfbQ0pUUuYKHTU65WRaWR9MQ2Mj7tkGKRu6aznAG4HGgt6tat8suMc0UWzrYSVc0U4jm7jbiabCRkJEW8pWE61syS8TOE+A+A+A3ymO1byMY6s2lEVXArYyFm+7mW0TgN5nCtzktDuwa7Fp1JK0OI0CHoD8wNA6QLSlLgUqVoYylr4laxpqtpZ9.xgUylMqf9f10jT850UXuQjjkBEJnncoTL8t+32joAHPrPf0rn8nkJUhIlXBBFLnRTtxmOOW5RWhW3EdAdrG6wHc5zXwhExkKGu7K+xJrOM3fChISlTvm9pW8pbxSdR5pqtHe97.vu7W9KIVrXX0pU0iAI0QwdPwI39lNz60TDdudfJe9731saZ1rIyN6rJ4JoXwhru8sucfCnpUqpR+Ql.qLoYwQRRqRJhVfigVvuIsKznQi+uv+CbuIqt1tIc2fO8c6y0oSGNb3fBEJnRI4QdjGgDIRvUtxUXfAFPEEbfAFfacqagKWt34dtmCGNbvhKtHwhEib4xQGczAqt5pb7iebb3vA+hewufxkKSe80GoRkB.FXfAvue+JMRJQhDpVnJHVUFH46lBiueu+99czzecbg0d9HABPwDIRQud8Jw1pZ0ppNGIoEIN.UqVkjISRtb4nXwhpNCI37QKTmkzfztcJ28pZ88xK12KG.3sQIpnT150qmzoSS4xkIVrXXwhE5s2dUPitmd5QAW7jISxniNJMZzfYmcVt7kuLqrxJjJUJb4xEiN5nJbSIJdW850IZznnSmNlc1Y2wycw18P+9ntsmuvXov2LYxnj0D2tcuC1fI53u7mxs3B9ej7sk2b0daszMF3s6njV4OWqosVg2syP3d47H+6BTKj9wKPmPz6HAVzd73Qw2gRkJQ3vgoiN5fxkKqt0NZznjNcZZ0pEgCGVoMQBQgLZzHEKVjzoSy.CLf54pL0Z44jzIMQdJ+ntsm2IPXNkQiFIUpTXvfAExNqUqFCLv.XylM0Rz.PMwUsDbQZCpTvmPSSgHLZS0QaaV0N.Mw9UYHZ2qnAx.pDUzSDPXmNchKWtHQhDDJTHEixD0zSTcBwQ1kKWTtbYkrxHRLuMa1X4kWdGJzm750ANvA9eEETdMPhD7wNA6ALgAUlLYRQn7hEKpbN750KkKWVgWdCFLnFdjOe91wxxVa2ejP86dPQhIechiiX2MZR9NYuSpbf7XRHWi76UNDZwhE9c9c9cnXwhbgKbAZ0pEyLyLze+8qfVsPORIsOY2HKKNP2tcSjHQTCEytc632ue1ZqsdfYN.2OaOuSf.k.o.VAjaBn5RlLI0pUib4xQtb4vfAC6nsoh7oKG1ATagdoHPsoAn0YPbDtWE39qZz.s+LDmb4wkACFT.cSH3iLA7Owm3SPoRkHc5zpE7g75hLiDQHvjTblbxIUPvtb4xL5niRnPgnRkJpkD3tu0WaiBdPv1y6DHJCQkJUviGOjMaVEmAxjICNb3PUafT3WrXwT0QHGPDN.H2tKDYGd6v+xgPIxwtOz9qZZQuSEFKe+BP1jHCEJTPcHsUqVzSO8vRKsDNc5D.knhIrMSZS7xKuLIRjPQ7FmNcx.CL.4ymmkVZIf6zwsfACtib+0hJX4RCsQL+nrsm+Yn7FR974wgCGnWudhDIBtb4BylMyJqrhpSPBlaDdGKjfWlHpvlrrYyR5zoUaLFs4.qMRvc6P+uJO9em9+DdJHj.xoSm3ymucfqoFMZvYO6YYiM1fAGbP9jexOoZvghLzTqVMBDH.QhDQQOTo9Be97wHiLhhBpqu95p4KnMRf1GW6tiQeT11y6DH8z2fACDKVLpToBW4JWgxkKqtsKZznXylMEsHsa2NKrvBjOed0rCDBvnWud0gLAd1RwhMa1T0oECFLn976lChXZwYyc6i2oHEB1lDR5Ke8EJTPQsSggYuzK8R7POzCwy8bOGwhEiCcnCwniNJ82e+7U9JeE9a9a9aXkUVQMqgt5pKU8A25V2hadyax3iOtpsw4ymmqcsqopoPvtDfB1FOHXenfdkZIthvxJQPsLa1LYylUsH7JVrnRCe5niNvjISpIIqWudb3vANb3PAWYmNcpXhV1rYUnxTFv1caEo9+0nA2uHAxMwZg6gjFhnunsZ0h3wiS61sUK4uG+webBFLHiN5nDIRDdkW4U3zm9zzWe8ofJcu81KMZzfrYyRpToTLpKe97ToREkRVKSVWaGhjGaOHX64cBf2t+8tb4Rkyr.CBa1rgWudoc613zoSb5zIVsZUMjMWtbgKWtPud8psQoACFviGO3wiGb5zIkKWlDIRnlZqv9pcyA22qcSQ6AL4ykz0DJSpEO+BTJBGNL81aur5pqxm4y7Y35W+5biabC73wiBUnKrvBL+7yqFFnT369129Hb3vTtbYb4xEyM2bzrYSdy27MIPf.L+7yqlTrVXRnUim9ntsm2IX2.LqQiFJYSub4xr81aSsZ0Tu4t0VaAfpspx9FP96BhS0FUnXwhjISFEOCDbznsPwcWb6+Wlh7cqHawzJa5xrBzJwK80WeTpTI5omdXhIlfs2daLYxDSN4jb4KeYle94YyM2jgGdXVZokTsKtPgBToREFYjQnRkJDNbX02apToXiM1ffACphDHNhxiOwQ7AAaOe2gzqWuR0GDBmHE6YznQBDHfBiPRQjZ+d09lpLy.4+SzgTYpqxAO4qWRESreUPW58pyPZaK5tgqg1V0J6u3N6rSVbwEYngFBWtbQ0pUYxImDylMy26688n2d6EWtbwhKtnR7whGONG4HGAc5zol1t.MCYsOc2db8f17C1y6pKp3fz8Dgyw1saWs5kVas0nQiFpcFfz0CATXRX974yS9742QN3hd8nEjbRMH6NG48h5t...H.jDQAQEYs1+WOrb2RER6+9cif5sa2lToRw3iONQiFkgGdX5ryN43G+33xkKdjG4Qnu95iVsZwryNqh0YBWgqUqFKu7xbzidTERUiGONlMalG5gdHra2NQhDQAkZsN2Zmb9G0s87QB.TowDJTH0MyRgrG5PGBmNcR3vgU4WWnPAle94UfOSxuVbNBFLn5lWQeQkbhEB4HRsH7+Fcnv69nA2uBikBg057oMcKud8xhKtH82e+XvfA1byMUqrIGNbfa2tUjMJPf.JYgOQhDX1rYETJN3AOHW7hWDmNcpTZhPgBo1cBRWkz1UKof4Opa64iDHvGvnQiJIITzcnUWcUVas0He97TrXQ74yG0qWmfACBbGDnJGxDHTKoVAuc+vkAFIEECnVvcZsecUXr1Oe2RchV4NQzbUWtbgMa1X80WG61sy.CL.O2y8bjMaVBGNLyM2bJA2JXvf6PyjRmNMW4JWgLYxntwe7wGmToRgOe9nqt5RsnOtWXn5i51G3NA2u9rqU.rLXv.d85klMap55yRKsDYylkJUpfc61o2d6ESlLozgGIUpLYxnVARxAdsEjVoREkxSn0oQ9cJZdpTjt.HuFMZfEKVT2lBnT9tBEJnJvTJ7TJ7Uud8JJfJOW0xvMsEIKO1WYkUvoSmpMj4ZqsFkJUhAGbPpVspZ2Fze+8y9129vjIS3ymOhEKF.LzPCgACFnPgBJ8IUlZtnqRxycQRGe+9822u+9e27yeOe5P1rYSUnnfWl74yqRGXokVhjISxDSLAyO+7psBoSmNoqt5RoFaIRjPsjNb61Mc2c2pAqs0VaoRYRJNVlhqf+dYvaRO7KVrHwiGWIvuNc5TcKtn6+tb4B.0BwPF.mrJYkobK1c6M01suCgfj085Eu3EUGvKVrHW9xWlgFZHkCVf.ATBvkfjTmNcx1auMQhDACFLvniNJ974SILuOna64cBjH.Z2.6Rt+.7k+xeYd1m8Y4JW4JL5nipJhDtS5Ec1YmDIRDld5ownQibsqcMd7G+wIUpTzc2ciMa1HZznzpUKb61sRNFEIWet4liolZJVYkUnPgBTtbYE38JTnfhn681auJUbPxmVhXIv9VPKZkJUTS29tcql1BjMYxD4ymmnQipZHfACF3PG5P7Juxqva7FuAc0UW30qW750KYxjgFMZPrXwHXvfbxSdRld5oISlLLxHin13N0qWmG9geXpToxGHuutWx1yu3918AkW8UeU0s1sa2l23MdC5qu9TrqpZ0pru8sOdpm5oXkUVg0Wec0Fe4kdoWh.AB.fZ.aNb3f25sdKkxNKnzbs0ViM2bSdwW7E4pW8pjLYRUsHISlTAwhzoSSrXwXkUVgnQiR1rYUoTnSmNEe.Z0pkB+SBpWc3vwNXul1+Taqb850KEKVjm64dNJUpDyN6r30qW74yGG6XGihEKRhDIvpUqpg9IrtqRkJr3hKxu0u0uE50qm+6+6+a9DehOAm7jmbGpswt6Lzuor8BHUcOej.I+TAqPau81TrXQErI5u+9Ic5zr95qiSmNYyM2j+0+0+UhGONtb4RQp9Ce3CyQNxQnVsZXylM5s2dwnQi7BuvKvku7koVsZjISFUJOsa2VM+AYOf4vgC750q52qCGN3rm8rX2tcpUqFas0VTrXQlat4X0UWUkJirwIsZ0pZQ7IjCRaGnf69gwfACRjHQHRjH7pu5qhUqVYkUVg.ABPsZ0HQhDp4onSmNhGONd73gHQhvTSMEG4HGACFLvLyLCe8u9Wmu7W9Kic61IWtb+l+Mz8f1ddm.s.6R5yeoRkHTnPzau8Ru81Kqu95JmAQhF+O+O+OUa8wqcsqQ73wYzQGk+9+9+d5pqtXyM2TQLkZ0pQznQIYxjJ5YJqEUQJ3qUqF4ymmVsZo5Ge61sY6s2lQFYD1291GSLwDzpUKEtbVbwEQud87i+w+XN6YOKehOwmPo1ENc5T4vI1tmYfzpRYYjb1ydVlZpoTSAW54ud85IVrXznQC0igLYxfEKV3u5u5uhwFaLEep6pqtX94mmgFZH0.HeP21ymND717tsPgBL4jShQiFIb3vLzPCwgNzg37m+7btycNBEJDat4lJDPJSa81291DIRDE7oiDIBiLxHJYXuToRJUeNXvf3xkKE5Jk8Al.wBYRt4ymmXwholFqrlTc4xEABD.e97ge+9UJ.mH9Ud73QIR.Z6nztMsNBxZfsc61J3Pb1ydVBDH.W3BWPQnH.kS7INwI3O6O6Oi96ueZ0pEu9q+5r5pqpvVUxjIumqjpGzRGZOuSPkJUToTjNcZlbxIIe97pIAuzRKQlLY34e9mms2dat5UuJau81XznQxkKGoRkRwmfs2dab3vAOxi7H32ue0fhrYyFsa2l74yq1MvxgCY8O0nQCknVIbRHe97b4KeYt0stESO8zrvBKvpqtphauc0UWJ4g+JW4Jr5pqx3iONABDfjIStChreuNDJjmY0UWkPgBQ2c2shlnB32hFMJFMZjibjinlEh3nefCb.9NemuCuzK8RrzRKwq8ZuFSLwDTrXQ5s2deGSC62D1dAmf2yoC89MNSra2tJmWoPRQI4hEKFkKWlkWdYxlMK1samN6rSFbvAU2NVpTIRlLoJcmm7IeRUt8as0V3wiGFarwniN5fCcnCwjSNIyM2bTudc0pSR5YeoRkvgCGbvCdPZ2tMSLwD32uednG5gHPf.7e7e7evryNKO6y9rb9yedd3G9g4nG8nzSO8vi9nOJd73Qs7.0BwAsuVtav1IJDQWc0kRPc2291GyLyLDLXPb3vAqt5ppT3N7gOLKu7xL1Xiw.CL.QiFkEWbQ5omdTRQ4O8m9SYfAFft5pKFXfAde88u6msW.mR64qIP5DjnN0VsZcGjk+y849b7u8u8ugOe93y7Y9LDIRD0suR5SW5RWhjISpno31auM6e+6G+98qTgNylMSGczAiM1X3ymOzo6N6pXKVrPkJU3e7e7ejgGdX750KFMZjDIRvy+7OO8zSOjNcZBDH.O7C+vbhSbB5omd3e+e+em25sdKdlm4Ynu95aGyMvtc6pzrDcS5tgMI.UQ4xjtSjHAQhDgToRgUqVIc5zru8sOUDpIlXB5u+9Uo64wiG5t6t47m+77U+peURkJE+c+c+c7XO1isCGvGjs87uJH.gSlNaGczAqrxJpCIO6y9rTsZUJWtL+8+8+8pbtk88U3vgUvmX6s2VoAOhShTzs3DH6+LSlLol7qjxwO9G+ioZ0pJEeHZznr1Zqwa8VuENb3f+1+1+V9DehOA+o+o+o7K9E+B.36889dblybF0MugBEB+98qlJrr3Ag6Nn7DkltUqVJUiHc5zDOdb0TmCFLHyLyLXvfArZ0JNc5TEIShD32uehEKF81aups3o.67Gzs870DHg4EJOt0VawpqtppyJRaA83wCCLv.7DOwSvpqtppX2AFX.d8W+0ITnPbfCb.d8W+0YzQGkScpSoXNlTbprcWDVmIE4twFaP612QtzqToB+g+g+gb7ieblZpoTRn9m+y+4YokVhzoSyO7G9C4S+o+zzrYSVe80U3WJd7373O9iS4xkYvAGT4rduhBHsXUfbwFarANb3ffACR8504hW7hL3fCpTSNa1rwINwITKzuwFaLRlLIO7C+vb3CeXUJXB4iDmb3CtZB1KXeficn2MlfoFylMy9129T6mLsvktVsZL3fCpnU3INwInPgBb6aeaFZngn2d6knQihOe93.G3.TnPgcr1Ug2dUrpksWQiFE61sSylM4l27l7M9FeC1+92ONb3f8su8Qmc1IVrXgm+4edBDH.OwS7D7s9VeKdgW3EnZ0pb9yeddxm7IYgEVfG8QeTxkKGG8nGUsbM1MDq28PyxjIiROV6qu9HQhD7pu5qB.ekuxWgd5oGFXfA3PG5PpoTKPMY94mmImbRlXhIvoSmXwhEETQjgF9w1GBhDHjQWJRrUqVbkqbEU6Hsa2NkJUhZ0pwS9jOIG+3GmM1XCNxQNBeouzWRwiXe97whKtHm8rmkyd1yha2tUHFUPPonEQvauXt0oSmBpxG5PGRIaI8zSOTqVMdq25s3bm6br95qS850467c9NJ5JN7vCyi9nOJQhDQU.992+9ISlL6PX.dmhDTqVMBEJDEKVjb4xw0u90IPf.TsZUt4MuIlMals2dazoSGW6ZWiyd1yRznQoVsZzUWcwW6q803RW5RL3fCpzszKbgKfKWtThAr75r1WyePx1y6Dr6gIUsZUdsW60vpUqzWe8wryNKc0UWTpTILa1LiLxHL93iqln7YO6Y4S8o9TL6ryxK9huHeyu42jyblyn3orzKdIpB71NEBy0Z0pE1saGWtbQGczAVrXgQFYD5ryN4QezGkAFX.9i9i9i3O9O9OFud8R0pUIe97L5nix4N24vue+zSO8n1OXhyrrnw28ySs+cAiRYylkfACR5zooPgBjHQBhGOtR1X750KEJTfm3IdBhEKF25V2hScpSwHiLBu7K+x6PRWVas0X7wGW0..3Aamf87EFqkhiB45ERj2c2cS3vgY4kWVIdUqrxJbtycN74yG1rYixkKyEu3E4Mdi2fuvW3Kvi8XOlBtxZkgEgPKBmBDb0HEkVudctzktD27l2jwFaLt8suMm8rmE+98yAO3AUSJtXwhpa3OwINA986mToRw.CLfRZD6niNTBGlru.f6d6Bko+VoREhEKF80WeJmnW9keYxmOOOzC8PznQCJVrHgCGlfACxe8e8eMkKWVMDwolZJ9re1OK1samEWbQdjG4QXlYlgCbfC7ar2K2qZ22HAeP2G2VsZQoRkTsULa1r7JuxqvHiLBlLYhScpSoDkqM2bSxmOOyO+7JQ6U1SuKrvB7k9ReI0.xra2the.xzY0tkL019PQ+N850KVrXgM1XChFMJSN4jr0VawVaskplESlLQmc1IG4HGQUzoT7qfF1pUqBfRWiztfLzJAj0qWGOd7.fxIUp+wlMabjibDb5zI+ve3Oju6286RsZ0XhIlfm7IeRBFLnZeLjISFld5o4Dm3DLzPCwEu3Eo2d6kvgCiCGNde8l+62O6cSqz6FMSe+zzoS2d+HABd6k1+oEAoB1e73wCiN5nTpTI74yGvchZjLYR750KSO8zpID2rYSJUpD5zoS8mRJQ.63ykeNxNSSRmoiN5fYlYF0jZkhqEVvoUkKJVrnZlF6dSUJNdB0J2cKRELA4vgCZ0pEYylEylMS61sYyM2ToFEm+7mmG8QeT5u+9UvK47m+7JP0IqsoxkKS850IRjH6P4MdP21y6DTtbYkprYznQEl9yjICtb4RIuf1saeGpQgz+80Wecdy27M43G+3Lv.CnNTKGBDg1Bt66c.Q6eZ0pEVrXgHQhnNf6ymOENg74ymxIUKKw1Muc2cM.B2dEHTncOqYvfA0x4PvuzpqtpZGGKHbc3gGFylMqzs0nQipRAq2d6kIlXBdi23Mn2d6UINAtc6VIg6Ona64cBjCqBMFEpJVudc0ZLR1UYZ2CANb3fzoSyK7Bu.W5RWhG8QeTUJFvcVHfZ2QW6NZfXZ0uesGX6s2dUaNdAfeZ0rHgz9lMadGG9kHFZoT4tUXBsNAISljPgBwZqsFQiFk96ueFXfATpO80u904HG4HX2tc0l6Le97X0pUBDH.whESAsiSdxSpJFWz4zGzsOTPuRIWZsnsrZ0pTpTI0.nj79c61spm9EJTfYlYFlbxIUZyo33HJRgTfI71G72c5Px7DjuOYvWhCmzII4Og2lj96lq.2sYBH0kH+6BjPjO2mOerzRKgCGN3jm7jpM1YWc0EkKWF3NHcU55T1rYoiN5fN5nChEKFuzK8RjNcZ9TepOEYxjgXwhwvCOLqu95bjibjGH1X82OaOuSP850UGVEJOlMaVUe9kn.VrXAGNbfUqVoZ0pjMaVt10tFkKWl8u+8Se80mJcEc5zoVMr2KFcIetVpbp8uK21Ke.riE9m.6ZYFGZOfq8ft7bTNLJylP5RUhDITc9oUqVX0pUlZpoHYxjJ7AIBJfrjN.X1YmkqbkqPf.A3fG7fbvCdPxkKGsZ0hScpSQO8zyuYdCbOt8ghHAVsZUwoWIWXs80uPgBp+uRkJQoRkHd73r81ay0t10nToRJEpP5zD71h50t6St1ZBZ2tsRBG0pNbRpJZWkSx+l18dlD03d4DHeeB0N2syS4xkwqWuJ9GjJUJra2Nm5TmhXwhwy+7OOYxjgyd1yx3iOtJRmHAMiM1X30qW1291mRiSEdT6xkKRlLop6SOHa64cBjVXZxjIJWtrhoWUqVUwPKa1ropWP3YfV86QtoTF7jNc2Qbeksb46T2gxmOupPXsDnWawr.pCuxAY3say4tcDz5D.nHhu70HcPR67Jb3vAgBERs+E762Oeyu42j+e++9+QznQUR3tzgrN6rSJTn.FLXfM1XCEHB850KQhDgjISRf.AdfQagdmrOvwNz8pmvZ44aiFMTrqR5PyxKuLW9xWFc5zolZJbmCiBIT.XyM2j96uerXwBQiFUk9PwhE2Qd7ZOnJG7j1xJ2JqUolkOWad8xvxJTnfZYgKEJWoREZ2tspkoRmfhFMJNb3fhEKRkJUvhEKjOedZ1rIVsZkLYxvTSMkRVXpWuNgBEhM1XC1XiM3oe5mVUqvLyLiZUvlHQB73wixoTjMFYUWEJTHRkJ0+q5S9+5G2O6852+62+7+PwbBJWtrBKNh3ZMxHinN.mISF73wCVsZE2tcCbGnFHjYWZkXtb4TJ4lVUmV3dfjiu7mxs0xTkqTohRfuj8pblLYTo9nUR0kHGZgggTafjuu7gHNVtc6Fc5zojKF3NCoSjR9olZJVc0U4Tm5TJw3pVsZTrXQ5ryNYs0ViIlXBrXwhpiPx9bqb4xp4aX0pU07F5ryNUoG9frsm2IPDRVQUoMXvfB7Yau81pCMxBtVRaQtM2qWupk4mndaZ6Eu1zPtajNWloP61sUEvJqHIQsHz5DHQJzlVk78I48Kh.rj5V73wY3gGVMTtxkKy0u90o6t6lAFX.La1Lc2c2rzRKwhKtHSO8zbnCcHxjICoSmV8ZjPA0AGbPkZ5UtbYEmJjz4Z2tsJErO19PfSfrHNj9zC2QBRDM2LUpT31saRmNsJ8IIuaYe852uerYy1NjpcQ8EjaBkCsZkBQ4ysZ0pZXbBxNkN0HLSSJLVlIffyIo6VBZTazngJcGoFhPgBozungGdXxkKGW6ZWSswcVXgEHWtbbxSdRxlMK23F2PAJtSbhSfc61Y4kWlHQhn3BsrOBjEAtEKVTBYlboh1gJ9fr8AdMA2OSqH0JopHEHJcAoToRJYQQNXWpTIzqWO986m95qOBEJzN.LmzWcIGZsvnVa98oSmls1ZKkSlztVAFxxBxV98J6CLYx1Rg3Rjo50qqRQQud8r95quiZEjYLDNbXzqWO+M+M+MDKVLra2Nu7K+xX1rYN3AOnRbh6s2d4pW8pbqacKVas0nYylr5pqxxKuLd73QsKmykKGVrXQcIQ61sUPL4CR686ZFd2X64iDHjlQKmB5pqtvhEKbiabCBDHfhL9BwQhFMJKrvBr81ay3iOtBO+x9MV3NfHAgxs3RO9kOZznAwiGWcPtiN5f.ABnbVDGA4l+rYytiT1jaec3vg52k7XP55T0pUISlLXxjI73wC2912lkWdY1ZqsXpolhO2m6ywO9G+iwmOeXxjI99e+uOqt5pLwDSfGOdPud8bqacKzqWO+fevOfgGdXE4ad7G+wUcHR5PlTeh1AE9ftsmmOA5zoiJUpfACFTEb51saRlLoRbd0oSmBF.Ma1jYmcVt7kurpG5G6XGSQkRYJuhdipUjckC+Z+b4FIgGyBrKj1XJ0GnUIoqUqlJRhT77xKurZkppSmNVc0UUJbsf3UImcoVlvgCiKWt3y9Y+rL0TSovJjrBl9ze5OMqs1ZzWe8w1ausZR4IRjP07f74yqltszjAocxRMJuWe+48S685O+2Me+64iDHXARtISNz5zoSb61shuAhNhpWudRmNsR3bCDHfB9xxjkEL1HXARFvkTKgngmMZzfPgBga2tId73r4laxlatI0qWm.ABnRuxjIS30qW0O+jISRlLYnToRTnPA.Xt4lid5oGZ0pEACFjM2bSJVrnZSyH2XKc0YxImD2tcyLyLC0qWmm9oeZlat4vfAC7Zu1qwW7K9EYwEWjSbhSPf.A3bm6bjLYR1XiM.tCsLEmiLYxnTqZ2tcqh.HxT4C5l98B4j8NY0pUSkRjP.doiO50qms1ZKxmOO4xkSQTlKcoKQ61sUZKT9742wdJ1oSmpZ.DmGQNFEVboWudBEJDW4JWgRkJQu81Kc1YmJMQUZSpPJF4Vca1rge+9ob4x31saVYkUnXwhJNOjJUJlat4HPf.DLXPEpPkYcHoGM7vCS1rYYwEWjqcsqwUtxUThG1YNyYvrYyJUmNPf.zUWcQvfAIQhD7BuvKnjgw0VaMd0W8Uoc61rxJqnd7KQ4duZeXeNCvGBhDH0AHguEHS3vgicHnrRQlqrxJpMZuLLHIWX4mWsZ0TGfkhak75sa2NgBEhJUpvVaskRbu5niNT30OSlLrzRKoVKrMa1TMiBQdXDoeIb3vLyLyPmc1IKszRJUjVH7x1auMkJUBmNcRiFMXs0VirYyhEKV3Dm3Dr95qy0t1035W+5b1ydVVYkUXgEVfomdZ91e6usZ4640qWxmOOKszRDKVLhGONKt3hTpTIVYkU34dtmiG6wdLpVspZ1HOnQix6ksmul.IcGYfVZ6+9u7W9Ko6t6VMMzlMaRhDIHc5zDLXPhGON974i96u+cvhJI+aAJ0xrBjbkkkesvns0VaMkZuY0pUhEKFIRjfN6rSUDDQkmKUpj5mqzRRgEahNAIJnm37HKQCYWCa1rYtvEt.EJTfSe5SqZQ6UtxUniN5P0IrDIRvS8TOkJpXlLY36+8+9jKWN0NNdwEWjBEJfUqV4HG4HpHXZWYUePZ6Epo3CEQBj7VkCTUpTgAFX.74ymRZB850Kd73gEVXAkLs6ymOVYkUXkUVgt6taBFLHkKWVUufzUHKVrntIdwEWjae6aq3ofQiFUZziYylUTyDfomdZkn+JQVjn.gCGV8X9XG6XbwKdQ0DZEJXVpTIkFi1UWcwFarAoSmlVsZojDk0WecNyYNCVrXgm8YeVt0stE8zSOr95qyst0sXokVh.ABnRopZ0pDNbX0fAMa1LSLwDDIRD0qixT10t+19np8twIeOuSf.JL4vpTjqbPrXwh3zoSUgsQhDQM2fzoSyQNxQX6s2lomdZ05J0rYyp0qjLrqEVXAt5UuJ27l2TsnMf6.s4m9oeZLZzHISlTMbKiFMxK9huHqrxJjOedFe7wAtyRBu2d6UUDrKWtTCjSDWXYZt986G2tcSznQ4PG5PjNcZVd4kYyM2jO8m9Sya7FuAFMZj4medNwINAm6bmiM2bS0x.omd5gnQip3VfLqAa1rgYylIRjHL93iy3iON4ymmLYxPWc0ENb3Pwy4O19PfSfVHKKsprXwhjOedRjHghiwxxyHYxjpEU2.CL.kJUh25sdKt8suMCLv.JwpR5rjSmN4RW5R7e8e8ewq8ZuFoRkBOd7PnPgvoSm7k9ReINzgND.J0qVzUTAGOYxjQANOQcHxkKGFMZjie7iSrXwT2NuzRKgACF3RW5R7jO4SxhKtHiM1X7i9Q+H0NE6odpmhEWbQkv+diabCb5zIkJUhgGdXxmOuRrf862Otb4hzoSqV.HVrXgRkJw1ausJJkrNaa1roZ2uINpeT1teQB9PA.5zRqRYhvhvzlKWN5pqtHQhDp71EkXPbTjETWoRkTxNnKWtHXvfzpUKt7kuLu4a9lpN1b3CeXFZngXrwFi95qOJWtLISljzoSS+82O.J.40YmcxW9K+k4JW4JpoJu1ZqwJqrhhgWhn4VoREBFLHKt3hDIRDt4MuI80WebpScJ9E+heAm9zml4laNpUqF2912lQFYDd0W8UUhP7TSMENb3fqbkqfa2tUvIQ1KwxBDQKUOWYkUTvz3q809ZDNbXUWg1MbteP11y6DToREb61MFMZTkSqrf5zqWOQiFUMOfVsZQ5zowtc6znQCk1fpWud73wCat4ljHQBlat431291ztcale94wnQize+8qlAwpqtJyO+7TnPARkJEc1YmTsZUFYjQnmd5gyd1yRwhEwue+DIRDBGNLEJTPAIhM1XCVZokHb3vXwhE0i6Z0pwC8POjZ6Y1nQCRlLICLv.rvBKvEu3EITnPL93iyhKtHgCGlacqao5Plr.RVbwEUQ+DbU4ymOUw7BpaiFMJG7fGj4laNFZngTQvZznA986WwPuGzs22cB9+xsMxWq1uGa1ro1M.BJKkHB4xkis2da750KqrxJJzVZznQlYlYXjQFgM2bS73wC4ymm50qysu8swrYyL6ryx29a+swlMa7c+teWUaRqWuNm5TmBud8x5quNvcPn5wN1wX5omlYlYF9E+heACN3fb7iebJUpDczQGbjibDdkW4Un2d6kabiafd85omd5QUfcznQYjQFgb4xgSmNo+96mToRw5quNYxjgadyaxvCOL986WAwaAVHKszRTnPAlXhIT3HRl5rTbqr.QDViY2tcFczQId737W7W7WnVXHRcCRDCY.iZY0l19vK315W02e+ftMr2ue+sZ0ZueKRE4PTKN80qWOW7hWjKbgKfISlnRkJJ4XQ3Qqjmrn0lwhESga+wGeb1byM44dtmis1Zqcf.TAVzG6XGiO+m+yiQiFY+6e+L7vCy4N24vlMazc2cyEtvET68fKdwKBf5Pur8ahGONVsZkm9oeZ750qRJTb4xEYylk4med73wC1samrYyxryNKFMZjidzix4O+4YngFh4medhDIBQiFkDIRnzPz3wiia2t4YdlmQQ6zkVZId8W+0Us+MYxj7U+peUlXhIHb3vJdHKoBUudc0yaYp469Py62vV3CZmj1saaNwfUJ...B.IQTPTs22IPtQRXlk.9sImbRRjHghwWBg6kCItc6ls2daEbpCFLnZkqJyRnb4xL+7yywO9w4IdhmfjISxS7DOAkKWlUVYE9VequEm9zmFWtbQe80mZOiYvfA74ympkrhTqeiabCra2tRZHGd3g4Tm5TjKWN1291GoRkhs1ZK9I+jeBgCGlXwhwLyLihGDqs1ZnSmN0bA1XiMHb3vXvfAEZYk83rrBZ+7e9Ouh7+YxjgW60dMb61M4ymmCcnCwW3K7EHTnPJIkT1T8Zk7df6oiv86P560HAenvI3C5hmjasDb9HgniGONqs1ZL+7yiYylUxWd+82uZmh0tcakJqIJWmT7Xmc1ICO7vbzidTUGWFarwnQiF7XO1iwbyMGtb4hSdxSxlatI4xkiN5nC750KG7fGTU7obf7kdoWhpUqxu6u6uKwiGWgRT4l+acqaQnPg3rm8rLwDSvTSME2912lvgCq36fTLe1rYob4xToRERjHgRM81ZqsT6j4t6taN5QOJiM1XXxjIpVsJKszRL8zSqpc3q7U9JDIRD0qaxfGkMdoV9EeuhD7ffsmuvXonPWtbgACFTqR0d5oGUzAA1ytb4BSlLo57ifFygGdXkTsrwFav.CL.Nc5To9B80We7u7u7uv1auMc2c27C9A+.BGNL+fevOfqd0qRgBE3IexmTsajmbxI4vG9vDJTHFZngTsCMa1r7C9A+.dlm4YHe977K+k+RdrG6w3JW4Jb0qdUNyYNiRJG83wCm6bmikVZIlc1YUy0PN.mHQB0dJVjhQ+98yryNKQhDgyctyQ+82O974iZ0pgWudUoEs1ZqwS7DOAG7fGTkquVPHJprgb4h.qZIp6tUfiOpa2Wmf2qQBdu9Bo.YYosdBDG5u+9o+96mKdwKpZ+XGczAMa1jt6tazqWOSM0Tze+8SgBEX5omVg8Ha1rwryNKarwFXylMlbxIoc61bfCb.9k+xeI5zoigFZHtwMtAyN6rXxjIdq25sX7wGmYlYFFarwXlYlgCcnCQ3vgIZznXvfAFZngvtc67O7O7OvW7K9EId73bkqbEb3vA+1+1+1JVp4vgC9leyuIu7K+x7JuxqrCgDP55y5qutpyWiM1XjHQBRkJkZ+ms4laxm8y9YwjISpKFDLO8k+xeY95e8uN986mZ0psicffbH2jIS3vgCxjIyNTOCIpgVAH3cx9fNSgecXuumNz6Um.I2UA9yxx4Plb7O5G8inQiF3zoSErJ.XkUVg0VaMEX4.HPf.3xkK1byMwhEKbvCdPNyYNCiM1X7zO8Sy.CL.+9+9+9ze+8SylMIYxjL6ryp.hWtb4nQiFjHQBEDua29NJe27yOO81auDKVL1+92Ouxq7JTtbYUpTKrvBr+8ue5t6tomd5g4medZ2tMSO8zjLYRkZSHpcmNc5TPaPvYjL87ie7iyoO8oUZMj.btjISR4xk4O+O+OmQFYDkB0okn+xgcguDBggjnEZgV9uNr850D.++Scu4A2VmWmO7CVHAAIH1IAHHA399lHkDMks1kk7prabhahcscbbbyxjLoYRyZSZpZSZmllsIdlljwItoww0wNI1VwqxVxKxhZghRTh66a.ffD66qjD36O3uywWgPJIm1llu6LXHHIVt2266648bdNOmmy++.2gnBWmlD.rNSMsZ0JJrvBgVsZY2gVZokPUUUEVd4kwRKsDJqrxXwyRoRkn5pqFacqaEiLxHLzhs2d6r6RM1Xibfm6bm6D2wcbGPoRk33G+33Dm3DrJNjISF30qWL3fChXwhgZqsVXvfAL4jSh5pqNnWud1W8idzihye9yCIRjfIlXBL5nihG5gdHnToR7BuvKfxJqL31sa..VCjndLb6s2Nd0W8UYQIlp6.ZWOJfaRJUn1Ikv9k.UyCj6gDBXDgC+yMpy++EGR95e8u9QtZufMRWfDNX8mBHznp0hP0fJzcmNchQFYDDKVLDLXPDIRDnUqVX0pUVeNollAw2mZqsVnUqVDKVLX2tcHSlLTc0UipppJDIRDTXgExEuiGOdv7yOOTpTIt0a8VgHQhX5UGMZTFxxO3G7Ch4laNL0TSAQhDA0pUi7yOericrCTd4kiye9yikVZIr3hKxt4r3hKB0pUigGdX..lpCj1JkJUJblybF..laTj1CUSM0ft5pKl3btc6FoSmF2xsbKnwFajU1B4xkybDZijWRphyneRBB.EDsvFjx+Sbj84P1BclvXQtdCRW3qcidbsNxjIy0dQv0yIw+S792LqPzV3BKTcxudRmd5qu9fFMZXgqhzbHqVsBc5zwttDHP.X0pUVXtZokVPEUTAToRE2LvoEaxkKGFMZDFMZDABD.u669tLLmYxjAtb4BlMaFd85kgwbfAFfo1M8YTPAEfomdZ32ueTTQEAIRj.Od7fJpnBbtycNTbwEyMdbud8hDIRfvgCCUpTgsrks.QhDwUcVM0TCJpnhv1111PYkUFTpTIWtlJUpD5zoiKdHRL.DJcja1jDgwCjsqPWqjk8G686re905+c8748G6weV3NjvE.YuXf3NDo8OISljQKpzRKE25sdq3cdm2AZ0pEQhDAkUVYrnSQcwchqO4latbsGDNbXTQEUfsu8siQGcTjNcZzQGc.2tcyeeZznAFLX.kUVYnmd5AEUTQnxJqDkTRIvue+vpUqnnhJhKJFhhFpUqFZ0pECO7vngFZ.JTn.0VasXpolBM1Xi74OUyCT8MHjDf974igElT+BpjRqu954c4HBDpUqVTPAEbEt0HTqU2rCZhe1K.Dl43q26cWsiM57Hazn1n.x+SQFo++7EAa1Bfq1NCz+ixlLMoUtb4XW6ZW3Tm5Tvue+vmOePqVsrboPIxh5qA1saGgBEhYe4hKtHmHLsZ0homdZru8sOXwhEbK2xsfToRglatYtna5omd3rWSAKSRuBAa4QO5QgYylwEu3EYWn9HejOBtzktDyx0BJn.LxHibE8urzoSiEWbQDJTHDOdbDJTHDIRDr+8uetVEhEKF2rPTqVMS6CZxL87q0Q1tgrY2e9uyAMAW38tr+Nn++6mI1+Ow42eVn6PBmXms0GZKcxMHxuUxWXOd7.MZzvJovxKuLrXwB1wN1A28XHjP750KDIRDmrIMZzf0VaMr7xKiEWbQb1ydVDHP.HUpTTVYkwBmkUqVY88TjHQX1YmEIRj.kVZoHYxjPsZ0LRLtc6FhDIBZ0pEgBEhazeTEjA.XylMTc0Uy922ZqshRJoDTUUUwKREIZcMVMXvfWgvAei23MBEJTvnjoSmNNlAhSUj1EQieWK2gd+TSv+w7P384M5dd1+++TGj9e1uS.glAUZkDrjIRj.974CiO93nhJpfyWvYNyYfYylgRkJwG8i9QQu81KxjYcwsxmOeWgNilHQBXxjItWGKQhDnToRHSlLNgVEVXgHTnPPrXwvrYyWQeBn81aGtb4ByN6rb0qUbwEiQFYDTbwECIRj.Wtbg29seadw7niNJjISFti63Nfb4xwPCMDznQChFMJJqrxPd4kGm3Kp4jPJJsb4x4ZNPoRk7teD5XBc+QXuc6pcPHDQiyzNGzXz+S.w4UyRe1F7x1kn+T.Q++muHfNtVVLDlQSgCT81aurjJFOdbDLXPVYnKojRfISlXIPgx4fBEJP94mOLZzHlbxIQAET.RkJE5ryNYqum6bmCwhECu8a+1b.s4me9Xt4lCtb4hgIk35CEmP3vgQokVJyx0BJn.L3fChDIRfa5ltIb5SeZV1EMXv.5qu9vDSLA2q0RmNMLYxDle94YsRh5g.UWc0PlLYX0UW8JjaFZLgdNsCF0S1tZGBWDHb7V3m4U638qqKalKQazq6OUG+Yg6PBOxdkOwuEZPgVLHUpT1x3LyLCm8SpFdEKVLN5QOJVXgE3IWTFkIHUoIuEVXgHZznn6t6FacqaE6cu6EJUpDFLX.m4LmAABD.QhDAQhDAyN6rXxImDqrxJrqXxkKGZznAYxjA82e+XfAF.uxq7JbsNSPoJWtb7s9VeKze+8i0VaMb5SeZnUqVtbQWbwEgWudQ0UWMq9cEWbw7B2a61tMTc0Uyt8PzLmBrl3DDkTwqGg0hzZoM6w0y8qqW2gtV2qudhI7+MNXHRE5OlvAgMZE46WbXuV++q1EOs8LYkS3hA4xkie0u5WwBNkZ0p4JHSoRk7NChDIhIjFQrNpukQ0eqACF35HH+7yGM2byPgBEXKaYK3kdoWBNb3.RkJEKszRXO6YOvsa2vnQibgs30qWFgHp+CS05KoQolMaF24cdmnkVZg4fzryNKKiKTknQk+XznQYoY7lu4aF228cerk6hJpHV46DtSI4xHv6ocqTgyPnWQs0Ie97wpeAMlJrQEJLeAa1Cg6TrQ37Sp0c16jS2m2n+9ls.Zi97oq+recaTdH1r4eRE1QWDtc0l8l+eKzCtZmjaz2C86UUUULmh.Vuob32uedmBp7FAVuJ0ppppXoTISl06Gvqt5pHPf.PhDIHRjHvsa2n95qG986GQhDAlMaFyLyL7jlnQih64dtGtfXlat4PnPgX2ORkJETpTIb5zITpTIppppPf.A3dO1DSLAlc1Yga2tgToRQnPgXgyppppB986m2gQrXw3Nti6.6ae6CRjHAqs1Zr6Qjn9d0Nn9Q.4dDkKjDIRvPp9+D2enmuQt6b8tavFESP1+uM58uYemWutTccWOABs7SOWnTm+mhiM56Ju7xCKt3hvpUqbFRMZzHakvlMarzH1TSMgXwhgRJoDX0pUnToRl5DTUqUd4kCoRkhQFYDL3fCBEJTfkWdYVaQoBSQgBELctmbxIQjHQX8JkZ.FjR0QZdJgT0fCNHyXTpmjQYEmrjSKDZu81wgO7gwV1xV.v5puAgNTxjIutp7qbxIGDMZTN2BFLXfqzt+6lLrrMZl8y2HK0algsq00wF87qlKaWOe9YxjAR9pe0u5QDtEX1Zy+FkZ6rgW6+sO1Ln0xjICZqs1voN0ovjSNI2CAnrGa0pUtWCC.tSyPUyUIkTBBDH.LZzHN3AOHFarwPyM2Lra2NSe4hJpHHSlLrqcsKTTQEwVR6u+9wfCNHppppPd4kGm0YpQcP31S0H8RKsDb5zIxM2bwDSLAb61M23MDKVL2SgIw4MmbxAc2c23ttq6BUUUUbmrWn3cc8LAlnfAUX9hEKFKu7xbg5PAee0F6uVtqHjkuY+bZR5Uy++r+aWsEUY+7qk6zWOGR9a+a+aOhPEUlVDPOO6u7M6D++sN1nA.g+ce97gG+web3vgCjat4x0UPWc0EjJUJGzrBEJXsFkZMRTEX4zoSr3hKhpqtZ769c+Nje94iEVXAXvfAjNcZzXiMB.f1aucTZokhbxIGTZokxp.GoenKrvBL0uMZzH5t6tQvfAwBKr.qxECMzPHb3vLROpToBgBEhY14m3S7IvN1wNv9129PSM0D5niNth.go7APMsjq0BAgRyBgh1+4+4+Ipqt53t5y0SvsWsGY2UNEt.3Z4N6UaRb1Sx2nm+9YQ1lcHknX6l8kRAGSoUOaNl7mBnrtZ6DHUpTnRkJNP33wii4laNVi9iEKF74yGRkJEzoSGhFMJJojRvvCOLrYyFNzgNDKQJiLxHvfACHTnP3vG9vHUpT3rm8r3cdm2AEWbw3fG7fn1ZqEc1Ym3odpmh69iT2zTsZ0LbpVrXA24cdmLbpKu7xb1gEIRDlYlY3F0M0uEJu7xgRkJgd85gEKVfEKV35mnfBJfaYs.fkz8BKrvq5XGgfEkjwm9oeZ3vgCjLYxqKUo98yjoMh6OBqOA5mBCZcynLQ1OWnO+az7gry8v0a1mEIRDj7k9Reoib0dQBaF0YejIy0VMB9u6w0xRBv5MtZa1rwzfNSl0637jHXoPgBbfCb.3vgCr7xKi4medTYkUhFZnAX2tcTTQEgbyMWDJTHtq0rqcsKzbyMiN5nCzXiMhW5kdINn3KbgKfBKrPlByjTtKr.fb61M762OTqVMrYyFSqYWtbAIRjffACBud8h7yOezYmchHQhft6taTSM0fFZnAje94yxHOcNQssVgn+PYFdyNH8QZ0UWESN4j3q809Z3ltoaBczQGWWsu0q0hfMC0mrmb9Gqk5M5y8OlOmM6PjHQPZ1qJE9kJbq2rSZxeJV.j8wFcAKWtbrsssMLwDS.61sizoSivgCiEVXAHSlLTUUUAe97gYmcVlMoBKZFCFL.qVshZqsVV4JJnfBfe+9YwspxJqDeuu22CO4S9j3Dm3DraSTG0j74lBFmzUzicriwiawhEiGOI2X10t1EqlD4latPsZ0n95qG4kWdnnhJBQhDAJTnfaP2TiKG.btCtVX4WTQEgkWdYnWud7tu66xwCnUqVt3hd+NluY++Mxp80ymA8Z2Hq8a1N.a12ovW60KD9RINoPbJOYxjrF+PxaxpqtJJnfBXBaQcsQ5uSIlQX6NUpTo76Q3IW1OO6Szr+8MyZE85BGNLzqWOpnhJvJqrBb5zISjMpENQBcUxjIQ2c2MSZNkJUxTgvoSmnjRJAae6aG0UWcPpToHb3vX94mmCnbm6bm3YdlmAKt3hX0UWElLYBhDIBKu7xn3hKFtb4hEF2vgCiLYxvYrM2byEpTohmPSMdvCbfCfZpoFbu268hJqrRTPAEfUWcUDJTH98Ss5IR9XnqeZrgxYB.3BvgRT1ZqsFLZzH5s2dwO6m8yfYyl4tYO4N4UyeeZ9wl8H63AHzsHobQn6VYCphHQhtl6jQFWHWxE9SZdKEOK4tNccu5pqh7xKu+fyO50Q4dRJ06thEKFjKWNyGEpSKJr6sHD8H5l.kgVgUqDcigt.xdPP3jXgR9weLGTsCLyLyvI.yhEKXzQGkUP5HQhv8r.4xkycPlzoSiW60dMXxjIHWtbL+7yi7xKOTw+uZLH2byE0TSMnu95CEVXg3UdkWAc1Ym30dsWC0We8vsa2beLin5rBEJ3dWFAkI0fNRlLIb61MhFMJWGz228ceL0qolQBIf.BaZgWqCgTkf3QjXwh4dy1K7Bu.pqt5vryN6UPvtqlUZZwzFkjJg2+DlvN5gPtdsQF+ni2OZgZ16NjISlqfKXT0yQ+uM5Q1u+LYx.oaTz8zEGcRRIoQXdAnKFBy7zoSy3nKL88j0qMxJB.thAoMZQx05Pjn0Yr4N24NwK9huH2kXnBLg5oYjaNjrmStYjWd4gYlYFHSlLTRIkfvgCie+u+2CCFLfa61tMtNBVbwEQokVJld5oYKbFMZDiLxHPlLYX4kWla9dTeFPmNcHXvfXkUVgCNu7xKGG9vGFG5PGB6ZW6hiUfVjPVNkKWNjKW9UzHR1rIFTlYoI2jKrTUic7iebL1XiAwhEiJqrRL2byAQhDw0lQ1imB+Y1KBx9diP2QDlAa50QRSS1tFQ+90K0Lx96R34BgjovcJDFqhPjpDtCF88Kk1pknuK041IBiQCtzfJ.tBzgRmNMiYMYARXyzf1dR3InvsytVU9z0xeRpavbK2xsfG+webTUUUgEWbQXxjItQYPJyLQE5byMWnQiFHRjHXxjIDHP.18Eud8B.fYlYF30qWzPCM.Od7fKcoKA850CUpTwMQ6xJqLNqq50qm697DKOUqVM2fLzpUK1xV1B9K+K+KwMbC2.+cQVynwBZhD0yztVGj.EKrdgo1VUd4kGb5zIdtm64fLYxfCGNvV25VwjSNIWiEaz36Ua2mreOzDP5mzjKZRJcsQ22ud8UW32G8yMx2egT8flWIbh+FQqjrWTJU3JX.vo8m74mP8frjR+e.vsqzToRcE9YkHQB1J.4S4lAwJ88tQU3z06fEoEmhDIBABD.xkKGtb4h6A.yM2b7h7UVYELxHifxKubnVsZTbwEy9TFLXPjJUJnWud..blybFjJUJb629siToRgm+4ed30qWVDcmXhIPokVJ73wC.duZIfZFHCLv.X+6e+3fG7f3FuwaD50qmULhHQhvX+KToGnIVzj4qmLBK7luvXPRkJEdq25svbyMG2FpnrZS7kJaKyYua7FkqHg+j5uCY6EAc8jcBW2HK4WsCg6Tj8tFzmCsHP3XX14pXinFNYjVZd4kG23oIgZRHJFTPvgCGl2pkhUfpHKZ0F4FDciQpTo7BBgAsPGzE.MvSWDzOudVDjWd4g3wiiEWbQTRIk.QhDwEcOYkmBbjlbQ0wa73wgISl3F0WokVJhDIBqr0j08omdZLwDSf7yOeFcE61sCUpTwR6nNc5fVsZgOe9PvfAwd26dwC+vOLJqrxXEpHZznbAsSnxPFInIOje7z8BpmjsYGBW.jIy6IlVqs1ZXzQGEG+3GmiWyhEK..bi6i55OY+YsQtsRSZx9gvI+z8Tg2CIpfH7+I73ZsamvqsrOGneWXbABiIH6EBYedBrtGPRE9AQChTFJExfyrgIk9PncJ..SgWgZxiP2c1nSDx0IgCNWsAsMZPhpCYJXS+98ihKtXTd4ki95qOlC9j98nVsZHRz5RaxbyMGJpnh3emN+IKpm9zmFkWd4bMBmISF1ELCFLfEVXAr28tWVEItka4Vvi9nOJySIxEQxMQJIWzjapkpJjhAzq+5AFZpOJSZLJv56BDLXPb7iebXylMt8050qWVPtra2NzpU6efwFgHw..NlAxcirmTQz4P3DQ50m88+rqaYxX6U6f972rEdBc4QnKkYGKfvcBDxNZIRj.ozJUxuRRzWoNDoDIRPd4kGGDIQeVZvmJbDxkIxeTxZT1agJbvF.annvtY9ptQGzM3Xwhw9faznQFkqRKsT31sa30qWthsn.UIN8je94yc.GkJUhHQhfvgCypW23iONRmNMyN0ZpoFtjGKt3hQas0FppppPmc1Itm64dPznQ4DuQ2nHz0nI1EVXgLRRz3IY7fhy5ZUPL.faR2BWzjSN4ffAChd6sWN.Xf0gS1ue+PqVs3bm6bvhEK7tTaDBND5Pz0vFYPihWjVjmMM72LK3zw0yh.5Xy1IZilzesPGhdHVrXH4S+o+zGgXFoe+9Y0Zl1UXkUVAABD.FLXfojKcSlxlIo684me97h.BcHpw2Qs5Hgk8GAupPsxTXLCY6VzFEm.wRy7xKOL1XiwAhBrtO5Ti2NQhDrjnWSM0v6rQbMhFCnajM0TSXwEWDRkJEKt3hnnhJBNc5jIQGccEKVLzZqshG3Ad.zd6syckFZRM84QtGJ75PnznKb7ldOjUKZrPnEMpwgGJTHNGAqrxJnvBKDNb3.Oxi7HHQhDvkKW..LvEz34YO6YQYkUFZrwFga2tQt4lKb61MzpUKxO+7wRKsDmkZgWGz8QRZZhGO9FxTT5fTJPZ2XQhVO2.z3Doz2DL6jQVgpvWlLYXkxiPPi58aYxjgSXYpToPgEVH74yG750KTpTIBFLH6oPjHQPrXwXXiIWvk7M+leyiPh0D8AR0YKcBSIjfDcVZRCIO3BSLCcwjWd4wV+nafYWOqBox6FsBWXNG1Le5jJUJyrRhi9qt5pPiFMvjISPrXwviGOXkUVAKszRPiFMHXvfPtb4r0SJ6xoRkhC1OVrXnzRKEqrxJvrYyPqVsviGOvjISrBVDOdbb3CeXrsssMTQEUvW6zDagVx2HKsY+7M5f5hkjqbBw3mpaAe97wsWVQhDg+q+q+KboKcIdQsLYxfc61Qas0F6tnZ0pwwN1wPokVJjKWNJrvBQIkTBRmNMVd4kgQiF4IRjwI5mBcmYi1sR3NKjq0zBexnGsvTn6yYixCctP6jQ2WHCWz0kOe9fBEJPf.APN4jClat4fLYxP73wgBEJfOe9358f.OviGOPr306M1R9XerO1QnfcIkWiBVgVMJTHo..iRD4BEYwlBTNYxjPtb4WQOEfFbnCZRtP2eDlnEB1MZw0FE.lvIGoRkhyXKYIIc5zvfACHd73vue+bYWRVEor2RKpoqYRzamd5oQGczALXv.b61MRjHApt5pgACFPwEWLtsa61v92+9Q4kWNjKWNu0tPpaKDm82uK..VuHgxj485HkBSDlb4xwbyMGuqgLYxva+1uM9hewuHOgk9dJszRQ+82Opt5pgSmNYW4LXv.dtm64PSM0DJpnhX2FoEajauzt0zjZZ2fqkaq4latbW.hF+I2lo.zo+Nsaiv4HpUq9JfVkt9SjHAO1jat4hnQihpppJXylMt+RSeWBS3KUWGjAuzoSCIe7O9G+Hz.kPq0DNyzjRMZzvtZPYFlFDH3TIK2zpaZRfvtghvs+A.mM2jISx4nHQhDWQ+FNaJ4JbxC0EaDlHO5uEOdbtFCHIZjTyMud8hUWcUXznQtErpRkJX2tcjHQBL4jSBCFLfFZnATPAE.ud8xzynrxJCUWc0XO6YOPud8PpToLcSDhRlvLXJbR+6G3eo7YPvpRn4PetFMZjuO8C9A+.7s+1eaTPAEf3wiyUflWudQN4jCJpnhXWZkJUJ16d2KN6YOKKUjtb4B6d26l2QiFqIWGHDtnIqzj3rQPR30K0cgH2p..SkFhKTzmgvjdQKBn4QzBQJNExcZxUoXwhw8DBJlpPgBwctyBKrP1.I.3cMkJU55PjFOdb9Cj72kfRjrnSBGEcCmVASmXzDVheQzpLxpnP9jPKVjHQB6OqvAOgOWH0KnIOBSHiv3HJt3hYN8SwpPzcNQhDrDpGOdbnUqVdAsNc5vryNK5ryNQEUTAhFMJdnG5gfb4xQiM1HaQL+7yG5zoCacqaEEWbwLUjI+4EtSF0ujyFa6r2I3ZYIk97odLFM9PUVV5zoQu81K9A+fe.Wv9TEskJUJtIhDKVL10I0pUiezO5GguxW4qfKbgK.ud8BUpTgkVZITXgEha8VuUtqeJTMKDtic1Tjdit9n4PDZaz7Eg6xHLAaajautb45JhMfj7FoRkBkJUhEWbQjSN4f.AB.e97gRJoD92ojhRwLlat4BkJUBqVsBUpTAoRkB2tcCIepO0m5HzEiP+yydkL.P94mOaggFvSmNMiUOM4WHSGEFPrvNjRlLYXbvofAEVTAj4FrC..f.PRDEDUOj6RBCNdivtlBVhBvhnm.Yovtc67DxJqrR.rt.2RxrdQEUzUT6v986G50qGIRjf6wv1saGwhEiw7urxJCJTnfqwWgRcd1v6JbQveL6DPiozN.jJaSkm4W3K7EvvCOLlc1YgMa1XoiThDIvoSmPmNcPrXwvjISrTs7s9VeKL8zSC0pUit6tazSO8f8u+8icricf23MdCL4jShJqrR99uvb7HbdxlkKAgWuz6SHbujgBgLTl1IflfKzpO49GYsm5GCz8vxJqLVKYEJIlTW5gVbQ.4DMZTHRjHNImREKVL2c2SkJEG3AAIJYgO2bykW4RbEhVTHzhN0YEElJegYcjVbHL.Hg3HKjdE.XCcmfrVP2jnuGMZz.850ytpQJ2.oLcDDuFMZD4me9nrxJC82e+HYxjPmNcnyN6DyO+7X3gGlkrcOd7fnQihZqsVryctSnQiFFcAJPKxkPZAtPRFl84962iXwhwAqSbeZzQGEuvK7B3sdq2BQiFEUVYkH2byEkUVYPjHQXhIlfqFNRqRSjHAZu81wd26dw4O+4Q73wQKszBNyYNCGCGQ9PWtbguy246fu6286dEnCQFtnc9H2lDdP6LP+jPXhPGhb2gxIiP53PFLDhFF4NFwTAxnqvELd85ElMaFiO93b8iqUqVtAjnSmNFIx.AB.0pUC.f.ABrtHo8Y+re1iHLCpzD0jIShvgCyLyLmbxANc5joEAojCDbczVdDUfUnPAqHZT.tjUA5hQXZ0ER6BgODRkhMZgfvEWRjHACO7vvmOePmNcnjRJAqs15hxUEUTAJszRQ2c2MuqPokVJyilN6rSN4MlLYBkVZovfACvhEKngFZ.c0UWPkJU74JwNTpwAtQXsuQbk4OlEC5zoCRjHAm+7mG+jexOA+hewuf67k4latbeSHZznHd73n5pqFd85EISlDkWd4vkKWX6ae6HmbxAO6y9rvnQinwFaDCO7vXjQFAelOymAqrxJvfACXqacqrLvbtycNzd6syxgOA4svhH5Zc8PPOSwMRAzSFoHFIHbWSJq5TvxDZPTvzzXJ4IB4hFkuHhJJjDVRpHRkUV4UPZPRvAj7nO5idDgqpoUrjOTz1PhDIBkWd4HUpTb1NI+yIYJjV0R7gmHWlPdBQnvPuWxeMgwJPnUQvztQOnEFTj9pUqlGDDIRD66mZ0pwJqrBlat4PM0TCZqs1PokVJps1ZgFMZv69tuK5ryNwN24NgNc539.FoEo6bm6DlLYBEVXgb7MjaZzBuMhtvBSnjvXFDNVPiGDBHz6SHd9qt5p3zm9z3q+0+53IexmjwTmjqEJAeKszRPkJUPrXwvkKWH+7ymgM8lu4aF..u5q9pvhEKb.we+u+2Gs0Vanmd5gcyHu7xCefOvGfYMapTofMa1fYylQ5zoYV4lMuvnrgSVvoj9ke94i7yOeHVrXNPUJFSprXAV22exXZhDIfWud4fYI56PiYDvLD5koRkBETPAXpolhOOWc0UQkUVImaCx8ZhtHjA+.AB.IezO5G8HDG1I+FA.BFLHjISFBDH.Fd3ggEKVX4KgvfUlLYLbjzpahLcBS3ylk8N5+KVrXFZVgTtPnOka1QvfA4pmRoRk3kdoWhapezVmACFD4jSNn5pqFJUpjCzjZ0Q0We8nt5pCZ0pEqs1Zn5pqF4me9n1ZqEJUpjawpaD2mtVGoSmFJTn3J.HfVT.rtO9TWojvvlv71tc63y849b3we7GGCMzPH+7ymMvHDBznQix8gg.ABvTwXs0VCeouzWBu9q+53Dm3Dn0VaE6bm6DhEKFm8rmEemuy2Am5TmB2wcbGWg3joWudbnCcHL+7yiomdZnSmNN3YEJTvsEJRmToRXkFiDIZcJnnVsZdwkPiaj6p.fmGA.NtJpNLnWqvwcEJT.MZzfUVYEr3hKxZ9JMmTqVsHc5zHPf.73LI0MjgWZAKkmKI268duGQiFMHYxjbvUjEEhVwVrXgwoVrXwXt4lClMa9JTIABYHxBNveHWy2nzaKDScJIaju1BcCZyNDIRDW4WgCGFSLwDb7Azjl3wiC850CylMySnorXu3hKhToRgCbfCfDIRfJpnBnQiFnSmNXwhEFtXp+ESWWWuKDRmNMGbK4V.sPPlLYbg+SMhb4xkCOd7fm8YeV7U+peUr7xKCf0aT3DRGTRmBGNLBDH.ToREuCnXwq2dauq65tvO5G8ivW7K9Ewa7FuAN3AOHN7gOL74yG9O9O9O3lX929a+sQ+82Opqt5vcdm2IhGONFbvAwryNK5niNPu81KlZpoXgMlzWIYxjACFLv9Z6vgCdRlOe9PN4jCKaMjwHhhEBgJm9IUMizjdJa5whEiw2mhmfnvhSmNYZeP.unQiFTXgExdXnRkpq36pzRKkSzFv5wvJ4q7U9JGIUpTLjQVrXganEBw5lvX2iGOvnQibM3RjlinIAv5IHg1xjPpQH7WBeNY8f7GjPifB58ZAgH0+eUoREb5zIhDIBlbxIgISl3F7sBEJfd85Yg3kBDSsZ0X94mGSLwD3Vu0aEwiGGEUTQ.X8DBRMAPZ2or8AN67.rYGDRUoSmlmTPXkSVvxjICWzN+8+8+832+6+8bkp0QGcvzfVHF4j6Gj0eJQkesu1WCKrvB3oe5mFexO4mD6ZW6BJUpDm+7mmKO1byMWzau8hd6sWrm8rGbtycNDOdbzPCM.850iUWcUbhSbBTQEU.a1rghKtX3zoSzau8xsJWBlV+98ipppJjISF1cIud8BKVrvwoP6xQtDQ.wP4eJb3vbo5RDLjL9PwMRwc52uer1ZqA850eEPTqToRnToRVhJUoREyF.c5zwFkIi6TSSWxG4i7QNxxKuLRkJE61vhKtHOYUkJU7JQhhwlLYBQhDg0zxrCRh70UXViENgP3yocQDxeHB1LpndtZGjkHxJK0CynIX50qmITGMPQuOkJUhkWdYX0pUr8sucnSmNr7xKyWyByvLcjcf4WqEABYhKUMaTGlg1FOZznvnQi3m9S+o3u6u6uCRjHA5zoCxjIigXNRjHLPC986GQiFk6hmBCp79u+6Gu4a9l3RW5R3zm9z3tu66F+leyuAuxq7JXs0VCZznAkVZoHXvfn4lalaWTUTQEXxImDu7K+xnt5pCIRj.6XG6.e4u7Wl6tm1rYCgBEB6YO6As1ZqbecakUVgU2aQhDAa1rw8RZx8CJSuBk1d.vjWjtloEKQiFkUVCg7nhDb.oRkxtaA.1MR5uSy+xM2bYK+z8eIRjvDXLSlLPxe0e0e0QxM2b4u3DIRvcpEp9boXChDIBJszRwxKuLycdkJUxnFPmLDt1jUqqFsAH2EDtkkPWktVKBH3MoOuEWbQNXL.vZRZ3vg4LeS9GJQhD77O+yCe97g8t28xIXB.rnCPI7hBZWXPuWu6DPP4QI6QjHQPiFMPkJUvqWuH2byEehOwmf6KZKszRbeGvhEK7jdJfQwhWukPQzBOd73njRJAM1Xi3we7GmQP4y7Y9L37m+7ngFZf4AzxKuLhDIB9re1OKWKz27Mey3zm9zbuParwFC..+a+a+aLqZuzktDb5zIVc0UwQO5QQf.AvMey2LuylJUpvbyMGBFL3UDPJ4+MEiHMNle94yPqSADSfvPt2RwnHLNiToRwdKPYPmLHQ8rgBKrPN.XxERpqDoToRTXgEx6lJSlr04Nje+9gHQqWqtpUqFABDfwGdgEV.yN6rnjRJAyO+7b9CVd4kgISl3.PoIMj0JxEI5BXiRTjHQuWKEhrjQ7GmBh5ZEXLk1cJQIztGFMZjQOgTdtBJn.dvVlLYX94mG+i+i+in5pqF2xsbKHRjHPkJUrUVx8CxRlv3Ttd2IfrrA.lJHT1pWXgEPe80G9TepOEqeogCGFkUVY7haxu3.ABvYBVqVs7tJqt5p3Nuy6DACFDm9zmFZznA6XG6.UTQE3ke4WFczQGviGOvhEKXrwFiawrm8rmE6d26FFMZD1rYCJTn.yLyLvkKWLxY986GSN4jnnhJBoRkBABDfcojnwgSmN4wZRsOra2Ni.SrXw3IrDgJSlLI6BC85HRxEIRjqn3rnVsKAYJwiMxXIIxvpToB5zoCETPAb8YStroQiFnPghq.h6bxIGXvfg0mi8fO3CdDpQxcoKcIF1HUpTwsYzhJpnqPi8ElPHxxFAO4ZqsFS8BgvGtYKBHKuD8HHTRHzJnsM2rCBq4Xwhwu1vgCibyMWNodDaQ0oSGSE2LYxfd5oG7jO4ShG4QdDzRKs.whEifACxnqP6xQw8.7d7Rhrve8rHfh8gfNTiFMXwEWDOyy7L3a7M9FvnQibEoQpLGg1F84SDaaqacqHYxjXwEWDlMaF28ce23UdkWA974CxjICe7O9GG1saGYxjAyN6rHd73nqt5BVrXA5zoCCLv.PkJUn3hKFkVZorbzDHP.DHP.bvCdPDMZTL4jSxjFLXvfn3hKlSxE06ko52X7wGGRjHAs0Van1ZqEISlDyLyLrtIoPgBlJIBqIEhPdNc5jUHPB4HZtDwF.BdSgPjpPgBXxjInWudTbwECsZ0xA7RwbP5OKAaNv6UCFD81kby27MejfACB0pUiolZJVUlWc0UgKWtPd4kGb61MW5hjOXDCDyl1vDZOjKCDV+wiGmYgJwCDgLHjd8B4JCkEZgKdDVqAz1oqt5pLjbDxOABD.4me9bgvnVsZF4JZAwW8q9UQ73wwcbG2Apqt53aJz4Fv5taoUqVFwBg7ph7GmvqVoRkHVrXPkJULo1Vas0PvfAQnPgXFqN2bygO4m7ShKe4KiRJoD3wiGjWd4w8QsnQixphGw1S5ZZzQGEISlDOxi7Hn1ZqE+5e8uFJUpDO3C9f3Ftga.m4LmA974ClMaFs0VaHPf.Pjn04dSs0VKVas0PokVJZokVvO9G+igc61YsVppppBhEKFiM1X3G8i9Qb.7TwHQi6ISlDFLX.Nb3.Nc5DABD.d85EW7hWDpToBacqak0c0hJpHVI.I1qZvfAVIMD1KGHXMoXCA.GrOQTQGNbv61GMZTnWudtzVIipBgWkVzQFsn4qjGGqrxJPpe+9gEKV3rpdlybFzQGcf7xKOTd4kyMP53wiiKe4Ki5pqNL8zSyYojtgKDIEgq9nU8T.dD6CoKVZBd1S1y94BecByVLEyRlLY3bMnPgBDMZTzSO8fa5ltIXznQLyLyfVZoErxJq.61sCwhEi95qOnUqVTSM0.kJUhKe4KyEYRwEWLb3vAToREb3vAGLEcyhZLe974iqQ6ScpSgLYxvbWgZr3kTRIbsXPcUy3wiilZpI3vgCzTSMAUpTgHQhfLYxv2vIqsiN5nb6l51tsaCETPA33G+33fG7f3QdjGAETPAX3gGFoSmF50qGQhDAu7K+xns1ZCUTQEHTnPnwFaDW7hWDRjHA0VasbuelDUfImbRDJTHbgKbAr8suc749beNbricrqnxtH++CFL3UT2DYxjg6AyG8nGENc5DkVZo3.G3.XlYlAqrxJvsa2ns1ZiUGPe97gsssswtFsxJqvs+Jpfjn7QXwhEr7xKyJBnd85wTSMEJnfB35Bf7FgLNlNc5+.pdKbdCcdKUpTH4K7E9BGwue+HTnPn3hKlgmh7iKc5zvsa2r0yKcoKwxU9zSOMBDH.S.NhokDmsosbHr7I2RD922HpFHjxDYCMY1vrJLikTlVUnPAt7kuL9I+jeBlXhIv1111PiM1HKJtMzPC3EewWDu4a9lvfACXKaYKvhEKn5pqlkOFR6hn9c.00alat4fc61Qf.Av.CL.d9m+4wIO4Iwu9W+qwHiLBb4xELYxDN4IOI15V2JdgW3EvktzkvXiMFLa1Lmek.ABf3wiiZqsV1UP4xkyIOymOePkJUn2d6EoSmF2+8e+XW6ZWn+96G1rYC6YO6ACLv.nqt5BACFDKu7xn5pqFaaaaCqt5pn3hKFwiGGczQGPoRk3nG8nvtc6viGOrnDPvt9bO2ygpqtZr8sucnWudX2tcFFRpPaHhIJjgtjR1QIIUXEi4zoS..zc2cikVZoqvsVx0sIlXBlspjWABASIPf.nhJp..q6tL4lG4xpKWtfSmNYiKTUjQ09BMWT3jegGD3HRtq65tNxZqsFhDIBVZok35HnzRKEiO93Ptb471UACFDFLXf8shbwgJyOJynzI.4GnvcHn.nof5DJ9Sazh.BImMaQfPWXnAQhkn80WeXfAFfKVdRYIJpnhvO+m+ygXwhQs0VKxM2bwd1ydfUqVYzflat4fUqVwfCNHNyYNC5qu9PvfAwzSOMtzktDd1m8YQ5zowzSOM750KznQCVc0UwG9C+gwBKr.VXgE3Z4kHYnHQq29Wme94gISlXIgjZD2jwAxUJwhEiuxW4qf63NtCLv.CfScpSgCe3CiN6rSbhSbBzd6sivgCCkJUxI4qmd5AM0TSHPf.nqt5BZznAVsZEszRKWgT5r5pqhW7EeQb228ciOvG3CvtfRt.kISFTSM0.QhDACFLvvIRUZXxjIQvfAYfDhEKFWtjjkehNy0VasLOsjISFVXgE3.ZiDIBb3vAVYkU3EDT+gKYxjXokVheuZznAETPAbNgHxLRdBPYgWnqrazB.gdZ..H4.G3.GgHEWgEVHb61MNyYNCjKWN1912Nle94gZ0pYewb4xEzqWO2noI5pRtL32ue1OLhjSzIWpToX2hHRYITPXERVNgKDxd6LgWXTh4H+xojRkHQBLxHifBKrPjWd4gicrigpqtZr+8ueDIRD7TO0SAmNcxxr3AO3AgEKVPO8zC9E+heAlXhIvTSMETpTIlat4Ps0VKrZ0J73wCLXv.FczQgGOdXKSjtkdi23MhSbhSfssssglZpIbxSdRnVsZty0HRjHX1rYjSN4fomdZr1ZqAylMyJVcznQQCMz.t669twC+vOLpolZfe+9gDIRvANvAPO8zCzqWOSUjcsqcgwGebjLYRzQGcf3wiiidzihZqsVTYkUx6pLzPCA4xkiVZoETd4kiSdxShe3O7Ghuw23aficrigOym4yfQFYDjHQBzc2ciRKsT7i+w+XzbyMCiFMBUpTwzel7VfjfGhowT+gSnwMpi3TXgEhpqtZLwDSvk8X3vgYr8kHYcAKytc6L7vje6iN5nL80A.VbwEwV1xVfWudgSmNYHno3AoOyrqFQZhe1FUkb3Ce3iPHrLzPCA850CIRj.SlLgwGebjWd4w9051saXvfA3zoSTas0xj1hBzfRvCoxxDONHJyRuNx5NkKfrIFmvE.Bytb1zUftPDNHPTq1mOe3sdq2BEWbwnrxJCyM2bn+96Gemuy2AG6XGi8isqt5B6ZW6B+M+M+M3a9M+lru6gBEBs1ZqPmNcPoRkXlYlA0TSMHYxj3oe5mFe3O7GFSO8zX6ae6vqWuvpUq3Ftga.6ZW6Bm5TmBacqaEgBEhUc5JpnB9lc73wwRKsDlXhIXzqRjHA1912Nt8a+1wd26dQIkTBBEJDlYlYvzSOMFarwfFMZPiM1HjKWNps1ZwK8RuDFZngvsca2Fld5o4fEaokVfNc5fMa1Pu81KuiCct1QGcflatYDHP.X0pUby27MiJqrRXwhEbpScJblybFHRz5MNbZhOIrB4jSNHRjHvqWub+fas0V6JpwDhVHj0b4xkCmNcBoRkhsu8syvutzRKwACSUlma2t4Eb986GFMZjkyxbyMWN4btc6l2If32EArRxjIQjHQ35gei1AfdjNcZHoqt55HDi8DKVLxO+7gMa1XNVDHP.rksrENvDR41b61MZpolvxKuLqy9DN8B4QjPq4Bq0TxJd1qRydQ.gOO4mX1nDQXLS4JHXvfXngFhUDCR4nkHYcoiwrYybwWWVYkAkJUB+98COd7fa3FtA78+9eeLxHivRr3XiMFVc0UgNc5vEu3EQ3vgw9129PEUTAjISFLa1LFd3g4Xppqt5vq9puJt669twa9luIlat4XLzI7smbxI4y2t5pKru8sOzQGcf8u+8CUpTw9d61saL4jShm64dNr6cuanVsZXwhEFRXEJTficrig8rm8fxKub7DOwSvA4ehSbBzYmchyctygxKubbC2vM.QhDgt5pKVo7ra2Nt669tuBWWUqVM2vSBGNLm3zRJoDTRIkfRKsTjNcZrzRKwIDSHQ9HTjHzBWYkU3FKBcuWpTon0VaEqt5pLHAjgRBT.B.EhZK50qGABDfUMBh53T0KRFSI2g0pUKznQyePQMIb9C82j7.OvCbDQhDAqVsxv2s0stUHUpTX0pUNYTDi8HYI2ue+Hc5zn1ZqksJL6ryxq7H7cof8n.+nFoA.9CnEgvI2zCJX5ruPDRmAZfvmOe3Ye1mEe2u62EQhDAUTQEXrwFCm8rmEwhEikAwPgBwSnpqt5vwO9wQpTovd26dge+9wzSOMLZzHlat4fa2twt28twINwIvpqtJZu81Qqs1JVbwEwjSNIlZpofZ0pgDIRvV1xVvryNKxM2bwAO3Awu427aP5zoQUUUESIXBDg+5+5+Z7POzCAKVrfKcoKgSdxShN5nCHRjH7lu4ahgFZHrvBKft5pKTQEUvVnsYyFpolZfLYx3E3jLT1c2cC61sC2tci8u+8im64dNr5pqhctycxRwH0oMIZNDJTHTc0UiG6wdLDNbXDMZTzbyMijIShAGbPbgKbAlzgyN6rX7wGGSLwDX94mmqLPJNRYxjcEcJTZAjd85wniNJDKVLOmJu7xCUWc0HVrXX94mm2owjISXgEV.QhDgM9HV75JFxLyLC21qRlLIJqrxfc61Y2fHWho4DBc2V37FgKFjHQBjryctyiPDOJPf.3Ftga.Ku7xHTnPHTnPXs0VCtb4h0qGBZJxmtfACBmNcxaCqToRL+7yyUzDv6kfIpyqPIxf7IiB.V3CgvdQ9bR52IQEBpX4kJUJVXgEvK9huHdpm5o3JGiVrRxwtPoiO2byE24cdm3hW7hbs59POzCgQFYDru8sOXylMHRjHnVsZblybFdh2YNyYvRKsD14N2ITnPAJnfBvYO6YgQiFQqs1Jb5zIpt5pwHiLBN24NGmuEylMisrksf64dtG7E9BeAFF4e3O7GhG3Ad.bG2wcvcQmolZJL1Xig1aucVuSIt9enCcH7Nuy6v0HgToq2wMIxjEHP.TYkUh3wiiFarQ1hqHQh33CrXwBuSShDIfMa1P6s2N5qu9vEu3EYW2FczQQCMz.N4IOI750KBDH...15V2J9leyuItvEt.SEDWtbwERE0.xouSud8BIRVWbC73wCb61MBGNLhEKFtga3FPWc0EGPLon2FLXfiujJRJBIR5u4wiG1Mbx0qxJqL32ueTTQEwwRQ6PPYgVHEXVas0fjsu8seDpdRoZvkJ+rRKsTPYSNRjHbysykKWvsa2rJMSvLRk511111PznQYh1QPmJTECnIxzMnrCXg9IUqBDtzkUVYviGOLMZc4xElYlYv69tuKd629swt10tPkUVIld5owpqtJJojRPas0FWCpM1XivrYyPjHQbRXjISFpt5pw9129fLYxv3iONd5m9oQ+82O5t6tgFMZvPCMDzoSGzoSGGLXM0TC9U+peElbxIgQiFgQiFwS7DOAZt4lQ3vgQKszBN7gOL9jexOI1wN1AZngFvTSME9s+1eKzoSGznQC5ryN4XwntGSd4kG5t6tQ+82OZokVvryNK5pqtfNc5Pe80GRlLINzgNDuP2pUq3ltoaBwiGGO3C9f3W9K+kXokVBu5q9p78vImbR1UmpppJlyQzBze9O+miJpnBjLYR7XO1iglZpI7W7W7WvF+Zu81gRkJgACFv7++ZbIZ0pEc0UWn1ZqEs0Va3Mey2D0TSMbNhDlbJBQPhPcyN6rXvAGjS30Mey2LzpUK2mIxKu7X4jo5pqFyM2bPud8HSlL7jaJ6xhEKFFLXfiKjZkVD8soGByKEsKPlLYfja8Vu0iP+Bozbj36RkbY73wgFMZPd4kG2voUpTIlZpofNc5fKWtXX0jKWNFXfAXevITfnsnnt0BQHJgPftYKDHnthGONKvqhDIBiM1XXlYlAG8nGE4jSNvrYy7MaJf7EWbQTYkUhJqrRTSM0vzkViFMLl4Z0pE23MdibhvN0oNE750K5t6t4fyppppvANvAvTSMEZt4lQEUTAd9m+4w1291gYylgQiFQWc0E9PenODpqt5vG4i7QPKszBZqs1..v3iON1111FDKVLpt5pwryNKVd4kQ80WO18t2M6euNc5fQiFwZqsFFbvAgd85gd85wfCNHJqrxfOe9vRKsDd8W+0QyM2L2JXSjHApqt5v4N24vIO4Iwt28twZqsFt7kuLNzgNDJt3hgHQhvq8ZuFmuCh0lYxjAlLYB81auvoSm3du26Eu669tHRjH3VtkaAkUVY3bm6bLDwhDIhCL0iGOrXsoWudbpScJtU0JRjHtBwnqCgPbSVzWbwEgb4xQ80WOJpnhvHiLBFczQYC.Dz8jNpRUJVlLYPYkUFBGNLSYhQFYDl5+TOkSHyDnCgtSK4e5e5e5Hc1YmLotb61MOoVhDILt4ThyTpTIWBe0We8bBMHU.KVrXn7xKGkTRIbgMPksI4dAsa.oiQa1hfLYxvR6H.thxias0VCm4LmA1samkZchiKSO8zbvU974Cuy67NHUpTXt4lCc2c2XvAGDVsZE0We834e9mGKszRvjISres81au3RW5RbAsr28tW31sarvBKf0VaMr7xKyRzRt4lK1xV1BLa1L5s2dgUqVY2RJu7xgJUp3F2mCGN3V55zSOMxImb3dprKWtPKszB.Vu1WA.1111Fdlm4YvJqrBZs0Vw+v+v+.Zs0VQhDIvN24NwoO8owbyMGppppXQ1c3gGF986mqcfG9geXL5nihAFX.nSmNtgDB.bxSdR7DOwSvHyzYmchN5nCtX6EKVLdrG6wPN4jCdzG8Qw92+9QlLYfZ0pQM0TCFXfAfCGNPrXwvC7.O.jISFFXfA37HQr4khoin6Lc+khaCYnZbo...H.jDQAQUtb4XokVBwhEC0VasPud8HXvfbVloZXgfmmR7VQEUDlXhIP0UWMu6fYylYJSKLAbBcwV3h.QhDAI28ce2GY7wGGtb4BW7hWDUVYkviGOPsZ0bJuyO+7QkUVI5u+94sfUqVMb4xEzoSGlZpoX5TTc0UyRdGMAmj3Ox5.UzND2fxdxuvCxW3ToRwLA7Lm4Ln2d6EIRj.QhDAkTRIvlMaHUpTX5omFtb4BoRkBM2byLjjZznAoRkBNb3.M1Xi3zm9znhJp.EWbwX94mGNb3.Kt3hb6Tpt5pCc0UWvgCGvpUqrtEENbX3wiGLwDSfW60dMLxHifgGdXHQhDr8suc7fO3Ch1ZqMDOdbL4jSh+k+k+E32ue7rO6yh3wii4medzc2cywH..bgKbA1cxDIRfe5O8mx0JakUVIb3vAK3WO8S+zvnQiXzQGEEUTQLWu5u+9QSM0Ddy27MwoO8oQlLYPyM2LdkW4Uv8bO2CN8oOMt0a8VQznQw7yOO9Y+reFN6YOK9XerOF2cKsZ0J14N2IFZngfDIRP6s2NLa1Ld228cwniNJ5t6twO4m7SvzSOMRlLIppppX2cFYjQfZ0pgd85wxKuLnDvRwIPn5PH3ArNZR1samiuwgCGXs0VCs0VaniN5.yLyLXpol5JZ7KUVYkvpUqvqWuXwEWDZznggZO+7ymSpWc0UGKKiYuSfPfUDIRDjTZokdDoRkhkVZInSmNL3fChjISholZJVxJnp8I2byEkVZovlMavgCGbNCnhRmnRKUDCwiGGEWbwbwMHTEIn7EP4OPn6Ozt..um5oQ9YNv.Cfe2u62A61syT00jISXngFBiM1X39tu6i6VkQiFkgUq4laFe4u7WFs2d6PkJU3nG8n36889dH+7yGM2byL4xlXhIfHQqKagwiGGNc5D8zSO..npppBM1XivpUqXokVBFMZDM2byn7xKGUVYknvBKDO4S9j3e9e9elkFEa1rgJpnBr+8uePUvWYkUFmUZhx4DCdc3vAZu81AUxqjKkjbhrm8rGjWd4g8u+8iSdxShW9keYNy2+q+q+q7MW+98yYg8XG6X3y+4+7HVrX7NUczQGnppphStUnPgv9129vu829agb4xQUUUElZpoPpToPas0FFZngvK+xuL93e7ON16d2KjKWNuH4jm7jXjQFgKNlVZoEF9aRTiIxVREUTgEVHiuO45B4kvPCMDJrvBwt28tgGOdfUqVYYV4xW9xH2byElLYhobMsyyXiMFJu7xA.34y.fIj2FsS..VOl.whEySbIblKszRA.XL+ofON+4OOzpUKpt5p4tCS3vgwryNKLXv.TqVM5u+9QwEWLJnfBfRkJQhDIfOe93.hI4yf3oS16.PK.nbCPTJ3BW3B30dsWCKszRvhEKLGXHTCTqVMdi23MfRkJQ80WO6qZKszBrYyFdrG6wvse62N94+7eNlat4vse62NjISFZngFfNc5Pd4kGWAXoSmF8zSOn7xKG0TSMb2uou95CNc5DETPAnt5pCm3Dm.Nb3.1rYCyN6rnu95COxi7HHc5zviGOPlLYbAsnPgBL8zSi5qud3xkKX0pULv.CffAChBJn.zTSMgQFYDDOdbTVYkwk5YhDIPUUUETnPAdgW3EvpqtJ9s+1eKt7kuLpolZvHiLBN0oNEKjXTbStc6FJTn.CO7v3jm7jngFZ.EUTQ30dsWCFMZDqrxJn81aGyO+7vmOevoSm39u+6GVsZkSx2XiMFqZc50qmmnQtBOyLyvhV1Eu3EY9ac629sim4YdFVSqHoUA.rVPQTufJd+PgBgjISxtz0RKsvI9rvBKjqqXJontb4hK2Rc5zwwBRkTKo3IWs.iEIRDjr0st0iPIXfRByRKsDy0m7xKONMz4jSNn1ZqkoLgvZ...LLq23Mdib0OENbXtyvPa2S7GR3VRazB.ZEqJUpvINwIvS9jOIW0UjJGjHQBNX87xKODHP.TSM0.c5zwAsEHP.DLXPN8+1rYC21scabKdc4kWF80WeXokVB1saGm+7mGd73AgBEB0We8brKe4u7WF6XG6.c0UWHmbxAyO+7LRKNb3.QiFEacqaE1samEsWCFL.Wtbg0VaMzTSMAmNchomdZzc2cCud8hKcoKwXg2Zqshst0sxnps7xKyryc5omFm9zmFG9vGFO4S9j3fG7fn3hKliWi56wT87RI7xiGOLbgG+3GGO8S+zvpUq3RW5R3i8w9Xbs8VYkUhbxIG77O+yiZqsVVguKnfBvBKr.KfWTSFOUpT32869cLuhFYjQfISl3pfafAFfmjRrJPsZ0voSmbvplMalqbMZhI0IUICDszRKbkuM0TSgO3G7CBGNbfJqrRnPgBTXgEhZpoFVjsnjmZ1rYNAkWs.iEIRDj7A+feviPYkktvIQwkD0TOd7vReWjHQP80WOVas0Xs3jD5UJvxIlXBTe80iUVYEl5DgBEhEcKp+mQBlKEmA4+Ns0GEbyO7G9CwK8RuDSa14medrxJqfcricfKdwKxcnlxJqLDKVLNd.puIr1ZqAsZ0Ba1rgXwhwAuoPgBL5niB2tcCSlLA61sC.vBUEU.4aaaaCG5PGByN6rnzRKkorMcSViFMrRNWas0xbD5VtkaApUqFlMalSnkZ0pwse62NJnfBfEKVvt10t3LypQiFr1ZqgkVZIlmLm3DmfqegbxIG7JuxqfVZoE30qWDNbXL7vCyJpgPwrUX8NPJHd94mOTqVM6Z4q+5uN97e9OON1wNFVXgEfCGN..Pc0UGuK1pqtJd3G9ggRkJQwEWLd629sga2twTSMEt268dwINwIvq+5uN16d2KVc0UQGczAb5zINzgNDJpnhfa2tge+9gLYxXZ1HUpTVxVrYyFWVjjXYoRkJtafN7vCiVZoETas0hkWdYlh5SLwDbw8TRIkbEUTlBEJPQEUzUnCRBoPsv7EjISFHogFZ3Hz1PzpiFarQLzPCAf2qX0I7ZyImb3.ena1TSdvfACX4kWFVrXgEBo0VaMVqen5+jbygTPLJIVjb5EOdbV5Q9k+xeI5omdfMa13zuSjVygCGPqVsrJSX0pUHU55cRlAGbPrvBKfBJn.zYmcx5NJIp.M2byvhEKbaKZfAF.1rYiaNGz4zMdi2HS8Yx.QIkTBqtBTWpQjHQrDvmHQBbW20cgEVXAFwiUVYElbejENOd7fVasUL3fCholZJL6ryh5pqNlTeu669t3Tm5T3XG6Xnmd5g2cXxImDCMzPvsa2aJACoiryTpvcYA.18t2MN+4OOaffnuvC+vOLJojR3IRDv..qKW75zoCO4S9j3C+g+vvgCGXG6XGvue+vrYyboTFOdbFLEEJTvU5kd85Y32IwR1jISnt5pCCO7vXokVBczQGL7pTSGrgFZfU7DZmD0pUy8XARuhBGNLa3UXGEciTLDQhDAIszRKGgBXgBZxmOePhDIvhEKLTeTQODJTHTTQEwaSRbGovBKD1samoPPAET.le94QQEUDlat43.TSmNM6eoOe93JyhPAxqWub1J+te2uKlZpo3ItDLqT+QPhDIn7xKmqjIud8holZJL2bywHQ32uenQilqfgm4jSNXxImDc1YmXwEWDJUpD50qm4N0fCNHNvAN.qEPlLYBQiFEczQG3Mdi2.m5TmBNb3.pUqF1rYCxkKm4AT73ww8du2K5qu9fe+9wK+xuLN9wONle94YoezfACn0VaEO0S8T327a9MPlLYXngFBhDsdA3O93iiToRg95qOnSmtqHeMjDlPVynEAY6FovC5F+Fsf4Dm3DLY5ToREua6u7W9KgVsZQxjIwu+2+6Y50WQEUf5pqNllMuvK7B3y849bXpolBRjHgYP.I1sUVYknolZBG5PGhCvkxza3vg4ED4jSNbwEIzfGADCA6dkUVIt3EuHKI8hEKlc4gxAE4kBoVGYuHP3wUDSfa2tYMr2kKWn7xKmsj5vgCtVSI0OylManfBJfc2IZznrBuQu9zoSyjeh5+YTKzwgCGPgBEHYxjPiFMrDoSX6+5u9qiW8UeUlCH4latb0WQbvgzTSxWXRCdZt4lYs1rlZpACO7vXO6YOvlMablmu+6+9w2+6+8QCMz.jISFtvEt.Ju7xQO8zCGHmISlfGOdP5zow67NuCLYxD5ryNYt9mHQBr0stUL2bywAj1byMiImbRnToRb1ydV1UOhu9TWR4odpmB6bm6D81aun0VaE268duHVrX3e+e+eGu9q+5b4kd1ydVNAQT9aHCAABDfYOIMwNaqbY6+a16FHVrXrzRKga8VuU31saVtUJojRfLYxv4O+4wi9nOJtoa5l31haznQgYylY5i77O+yi669tO7q9U+JtKelJUJt.36t6tgISlfOe9voN0oXCNDSWKrvBQnPgP+82OxImbPiM1Hql3jAfwGebzYmchhJpHTYkUxRAJQVNR...dOVEST3NaRYJbLRrXwPR80W+QnIOs1ZqLY3JnfBfSmNYrfUoREKkETUhUbwECWtbgbyMWbfCb.L5nixB2DoJvFLX.VsZkkCOJFBpGnQoRm3odAET.9o+zeJdy27MYq64jSNPoRkr16Sa4QAa0TSMA0pUiKe4Ky3uO0TSga7FuQrvBKvP4M93iy6xTe80C2tcipppJ30qWlNFqt5p3S+o+zn0VaEu0a8VPgBEn81amK1jm3IdBVmV+.efO.rYyFmSjYmcV7.OvCvvGKSlLnRkJL93iy61PU.0q8ZuFt268dgCGNvMcS2DtzktD5omdvV1xVfXwhwPCMDhDIBb61MGmDoERz3KYDI6Cg4cQnBYrQKBHz8lYlYv8e+2O762OyUef0qLr1aucbricLnWudrxJqvImJXvfrFUIWtb7g9PeHze+8yzYgjXwBKrPTVYkw83BhFED+hHvUHD0ps1ZYDjnlJRvfAgVsZQgEVHpnhJvpqtJ24QIirz0KoWqwiGm8LgPGJajHEKVLjzZqsdDu++wau2AG2kmaO9YKZUYW02ckzp9Z0KV1xRtI2jMXaro4PHACgaBDRBP7.SHI2TlL4p4FlTFBoLLYH2DBX.G.igXpFvXb23tUwpa0V0W00Jspu696OTNO7p8JaycluyuOyrijk0p8S488oddNmAGTD0Zh6aCFL.ylMKHAsolZRn.PxGjc0UWH1XiEAGbvnlZpAYkUVB0WO8zSK0ZOwDST.71zSOM5u+9Qu81KhIlXfACFDWwSN4j30e8WGuy67Nn2d6U.GGApF0x.x70SLwDnqt5BW6ZWSFTCxDyYlYlBTeyKu7PPAED1+92OFYjQvC8PODlat4vfCNnXcgrnPgEVHrYyFN7gOLJt3hQXgEF1+92uXwqnhJBAETPHu7xCMzPCHlXhAlMaFM1XiX5omFNc5DOzC8Px0DY65MrgMHVCMYxDhN5nQs0VKJrvBga2twm7IeBZu81QyM2rLDIs0VaHlXhQFdbZ.fMehMQxeK++eYS.QRpOe9v69tuKVxRVBN3AOHt10tFdzG8Qkl0UbwECMZzflatY7Vu0aA850i64dtGrpUsJzXiMhxKubr10tVjbxIi5qudYyU3gGNtxUthH.JkTRI3RW5RhBEYxjIzc2cid5oGYzS6omdDhQfqORJojPiM1nTRzbxIGL7vCKqOYXP50qWnhQNEbKlW.FNnNc5ftryN6xXk.FXfADhShwCSqWjUwBKrvV.CKqUqVXwhEYPFznQijLc2c2M5qu9D0iwnQivfACHt3hSvABcawDFe9m+4EWaLOABm5AFX.IwMhMosrksfnhJJzRKsHISO5nih7xKODRHgflatYXylM7ge3GBKVr.SlLg0st0g+5e8uhm7IeRAhy.yiumt6ta7Ye1mA850KkZapolRvwOQq3xW9xQHgDBxKu7vniNJZqs1PZokF9jO4SjGvO1i8XvhEKX0qd0X5omVpBCm3s.CLPzau8hyctyAud8JMVhy4KqXBmeWptKjsu4ysqmW.l2f+PHVMuAxSTADP.BFkX3oeuu22CkWd4hNNzRKsfolZJTZokhjSNYzbyMi5pqNbe228gfCNXb5SeZbe228gPBIDX2tcjd5oKEMPqVsHmbxAkWd4vkKWnhJpXAmWrXGzXIY1P2tciomdZowsM1Xix0Ut4lqPVWjPt38IdufMISk5eTKffNc5flMrgM3K0TSEczQGvhEKH3fCFCMzPXhIl.wFarX5omFwEWbhDlNv.CHklBXdM0J3fCFaXCa.Nc5DNc5DgGd3nt5pCIkTRH4jSV..GSVJpnhRlKVdhTc0UixJqLgpwYBoSLwDxbAyJXM7vCivBKLjTRIIi+nd85Q1YmsP7sTk543Ad5SeZbK2xsfa61tM7lu4ahPCMTrt0sNr+8ueg00hM1XEf2sjkrDzYmchO3C9.73O9iipqtZjd5oi+xe4ufjSNYr8sucnSmNL1XigMu4MiPCMTbwKdQbfCb.gJHSIkTDEtgr1W1YmMZs0VgFMZPO8zCXiJGd3gEVrfJvI4oGlGlphfpJx0pK982hOadkpUP0o8igDvYUViFMByBRCF50qGQEUTKH7hCdvChG+webDbvACqVshJpnBgF6etm64PWc0ERIkTjwqj8U5pW8p3a9M+lx0ga2tgCGNv1111DDl9hu3KJrLNmVrwGe7E.LtPCMTrm8rGAMB77kgpRTInlSj57mvWADP.y2wXlbJi8xqWuHiLx.ZzL+fgSTex3s3zOoWudDarwhvBKLId5vBKLoipNb3.iN5nhNAPoxIzPCE4me9x.QL2bygm9oeZgy8oV.PZxSiFMBezyMBjRA6s2dQZokljvI2.aznQTZokhhJpH7+7+7+fuxW4qfYlYFje94im8YeVo97bHNznQCRKszP1YmMLYxD5pqtPVYkEty67NwANvAfUqVQHgDBJt3hgISljvhHqschSbBTd4kKFLRO8zkJswqCe97gt5pKA4jTSvToubxipDJxrzxbTS4CSt3mSWEeOpOv4eC+evq96qlnMgwB4XI9+UXgEJv83Dm3DPqVs3a8s9VHpnhBImbxvsa2xLWWSM0fTSMUX2tc7Nuy6fst0shnhJJoJT25sdqHpnhBm3Dm.IlXhhG8a61tMze+8iqd0qhRJoDb1ydVgX013F2H18t2sznTpUybdr6pqtjxrxbRYUHUCWzeFJQfRc1YmcYbTDoLnVXgEhlZpIApDrJE4me9RIHiHhHfQiFEMzMzPCE8zSOR0ahLxHk1TSH61SO8HvA3xW9xBzketm64jpDv2O0nWB.OBiZiFMhomdZTTQEIwDGe7wKUgIlXhQncvcricfW60dMjUVYgRJoDXznQru8sOQj573wyBRhcUqZU3IexmD+re1OCm3Dm.s2d6vsa2Xm6bm3xW9x3.G3.n3hKFQEUT3hW7hBKbDZngJ4AQ4DkrUAAMHmkXRujzCHoXD03TUsvqRCk9W4mqm0e0+O+G1b+KgJIoJtvg4CxjKiKt3Pt4lKra2tvZ1aaaaCQEUTvgCGnu95C+s+1eCIkTRRCOqrxJwm+4eNRN4jEvE50qWIA4W60dMgQRXCSIQ.GczQiksrkIMbi8fhkXOt3hCAGbv329a+s3cdm2Au4a9lvoSmHkTRQJ7hWudgEKVfCGNjlN5OHMUuWpKyLyrL850i0st0gVZoEjRJoft6taoawjUAX7qIlXhH5niFCMzPnu95SlCAVlU.HzHHoPiPBIDzRKsHID5zoSjTRIIzWxQNxQDFVlI9R3RSDGxtUyaZbCCIDq4laNABt2y8bOBAQ0We8gu+2+6iN6rSDczQiW60dMr0stU30qWAeSyN6rnlZpAG8nGENc5DUTQE3W7K9En0VaUXdYhZw29seaAt3974C80Wens1ZCM2by3vG9v3JW4Jnmd5ApysMG9Cp8VbCfp7zd83Fmq2BbdvXgUszo5UveMEy+MCbSHAxHSljetM1Xi3du26ENb3.qacqSPm4RW5RwPCMDZngFDlzXzQGUJiqISllWYH+28LhUThjzPpolpPJZEWbwh1IL5nihN6rSrl0rFbpScJQa0RIkTva8VukfB1pppJr10tVb3CeXrrksLgD0XECCHf.jYL95YfPvPzV1xVJyjISvgCGvmOex3qEUTQI5WKiAejQFAszRKvgCGnnhJBwDSLB2wDd3gKj0DAmjVsZEKJ5zMutQY1rYze+8Cud8hxKubb7iebYZsFbvAEpZjUAf7BJGoyQFYDTTQEITASxImrDpjKWtP2c2MrYyFV9xWNN1wNFZu81wRVxRvZVyZj4asqt5BiN5nnjRJAZznQpAMa69zSOMN+4OOLYxDra2NFe7ww4O+4w.CLfPfVc0UWvgCGn1ZqU7ZQb0nU6WPP..eAU0qpdOrhEr08KVytTav0h8viccmV7UY0CFRD2Db87FPq9pCqNQNL2br28tW78+9eebkqbEAx2W5RWB..kTRInkVZAlMaFW3BWPXxONuDczQGvoSmXsqcsBi9sksrE77O+yia+1ucQ+jiHhHPFYjA5u+9EcSiDTbRIkD9jO4SfMa1jYjvfACX0qd0xZ095qO7ge3Ghcu6cilatYAJFp8NYw7FnUq14yIfwjxJ+PblPzipSmNoZMVsZEqbkqDm9zmVfvJv7IHygqlgrzc2cC61sKImsrksLgNsyHiLvK9hunHXb7yhK5Gd3gkg1mjqEySHgDRPDNhrxJKnWudb1ydVDQDQH3FY4Ke430e8WG2+8e+nzRKEm4LmAwDSLXSaZSnkVZAc0UW3jm7jBrNFbvAQ7wGOpt5pgd85wRVxRvse62Ntu669PM0TijjESnyiGOn95qGiLxHR8sID.3vinFlg+UogKFY74KFbG72Svh8vjMKiw5KV2TXqiEyC.+dxWmpb3OueyvXHxSMa1LBN3fgCGNvO8m9SQe80GRJojvZW6Zwe4u7WPgEVHLZznLm1.y2mgvBKL7.OvCfW+0ecL4jSh0t10hImbRL6ryJUWyhEKH93iGiLxH3u9W+qXMqYM3zm9zHv.CDs2d6PqVsn1ZqUt114N2IZpolvccW2ERN4jwbyMGtvEt.xO+7wku7kQDQDg.vvqmAD4dkc61KigrXwhEQI2Ku7xkt5QfoESLwfN6rSzVasgrxJKgk.HGZRKo7FIIiqomdZDZngt.Za4W+q+0vsa2hB3DczQKMQgdFHqPaznQQXFHHyrZ0JBO7vQSM0jv3xFMZDc0UWnjRJAUWc0vrYy3Vu0aElMaVFjGf4aE+0t10vbyMGxO+7kRA6ymOzau8hryNaTRIkf.CLP7O9G+CDZngJ4+DRHgfgFZHQ7nMXvf.lNRrXLV+AFX.onBKVBqpa.7ew+M6AGewvYT6.r5K0vgVLuMDoklLYRBGkPRgnxUud8HkTRQ5d9xV1xPngFJ5pqtDkMM4jSV3RzSe5SCqVshRKsTLzPCAud8h95qOTd4kiAFX.Y3qXyvHiVzTSMIy0Qu81KdjG4QPjQFI.fP2jczQGXYKaYns1ZCVsZEokVZXvAGD80Wevtc63RW5Rn95qGCO7vXoKcox8+q2KsZ0Bce0u5WsLxuKkWd4X8qe8B0cSINp81aGiN5nxTbwlTwAlQil4GLiDSLQo95Z0pUrbvgfNzPCEyM2bn7xKGM0TShNkQEuYngFRDsZhiHWtbgfBJHgoInj8PnMDXfAhgFZHXylMbgKbAnSmNrsssMbzidTjXhIhUrhUHL.QyM2LhHhHv4O+4kwgjVrlbxIwV25VQmc1IdjG4Qv.CL.N1wNlDlHGfmPCMTgHnRJojPngFpXomzQIQIIQK6hAWb+i++5kz60Ke.0uWsTmzC.Cihg0rXdB.f.PMU4WhPjmEFIiLx.W3BW.adyaFZznAu669tBMxzWe8gvBKLTXgEh268dOjPBIfm5odJTWc0IPsY8qe8Xu6cu3xW9x3a8s9VXO6YOx7D2RKsf0rl0fhJpH7AevGfm+4edTe80i5pqNQNdmat4vF23FQVYkkLMhznkSmNwq8ZulDYfd85wvCOLLXv.V6ZW6B5YvhkXrNc5f9VZoEjc1YipppJggunE.JMnVrXAIjPBXt4lC0VasnjRJQlrJ1ZbZUfue.HzcBa0+.CL.LZzHdq25sfISlfUqVwfCNHhJpnvfCNH750KrYy1BfhsJ05wZFS57ynQiXrwFCAGbvn81aGaXCa.m8rmUZPGiK7nG8n31u8aGwFarXpolB2wcbGRmnIeYR8spzRKEUWc0XhIl.+5e8uFIjPBxhKF2OIa3gFZHL7vCiYlYFoBUpZKPzQGsv8mLgXZYVsIQbwo+aDtQaR3g5B1aFhR8+vmOex.3yP2TqVjGOdPwEWL97O+ywO9G+iwINwIPas0F1yd1iveTwDSLH0TSEomd5XsqcsHyLyDuvK7B3ce22UlnLOd7fG8QeTLzPCIdvIhZW25VmvCRAETPR3swFarHlXhAZ0pE29se6HiLx.iM1XH8zSGczQGnpppBczQG3y9rOSTqFttffAkh3806dorQXiabikwr843UtrksLgJKRHgDDsKNt3hCQDQDhb9vEojNS3f4DSLwHWnCMzPn2d6U.JWEUTA74adtpg2nAfHVzT8RXx1jG647mlQFYfDSLQQawra2N73wCBN3fQrwFKVyZViTZrMrgMfPBID7lu4ahSdxSJyHLIUqolZJjbxIKc2jMKiZd7a7FuwBpfCCWii6IGRHBbKUFslM9grvAqTjpNtQUfTMGAFeOSNkgMw+O+yUXwfBf+g6nNdg7gOMtjXhIB61sC2tciN5nCnUqVgv03Te8y+4+bbzidTL4jShTSMUo7x4kWdvkKWH4jSFu+6+93C+vODO6y9rX3gGFacqaEabiaD1rYS5B7ANvAP94mO9U+peE9jO4SfNc5vm+4eNlYlYv4O+4wRVxRfVsZQd4kGxImbvG+weL1xV1B9k+xeINxQNBpqt5jbBKnfBvF23FQFYjAhLxHwwN1wj7U1vF1fnYArT87d3jSNI.leH84LWze5f.F...B.IQTPToacqackEWbwgibjiHSQFWvyRg5zoSjat4JX1owFaDIkTRhBjjTRII3M2pUqXngFR3OF2tcKpRH4HHFFD.VfHcnBzINfzrrnz8W1YmMBJnfPzQGMxM2bwxW9xgOe9PgEVHb3vAxHiLDwgXcqacn1ZqEd73AETPAxLRWSM0HjKVXgEFRKszV.qDbpScJ31sabhSbBAtt9ufiK5XCr7O4TdsnFphJ94UIEJtv75EhzMpF22rC0QJjCXCQkpUqVwRW5REumDdDiN5nH5niFojRJXqacqxjlYxjIjQFYffCNXrwMtQL8zSiKdwKhie7iiW4UdEnSmN7C+g+P7M9FeCL0TSgzRKMr6cuanSmNb7iebXwhEje94i8t28h7yOeDYjQJc5M4jSFqbkqDKcoKEM0TS3rm8rX4Ke43EewWDwGe7BcYFUTQge0u5WIMhsfBJP7rSpa2iGO3QdjGA0We8XoKcoBr5Uq7E0EMe97AckTRIkM5niBa1rgvBKLr90udL7vCCe97IS8yvCOrzDJf4UoljRJIzVasIS4TlYlIlZpoj9IX2tcQ6pn5qzVasg96ueYFQ47EvpGoSmNw8NCifUbhxE0jSNIVwJVgHnarF9wFarBULRgudiabi3Ye1mE2+8e+Pq14EkCOd7fhJpHDe7wiXiMVzc2ciO8S+TbsqcM4gTzQGM1291mzAa+gc.vWTSd0XuIpH0pUqrYlDJ.EgP1kRFVEeOpar7+v+dCn96dy1PPIPU0SFG4w3hKNg8.GZngvXiMF9q+0+Jld5owpV0pPFYjA73wCxLyLQiM1HLa1L9m+y+I74adgDorxJCUVYkHjPBAO4S9j3Nti6.iO93RtY6XG6.82e+3xW9xB0pOzPCgHiLRoeAbNku0a8VQc0UGV6ZWqrfclYlA0We8hTQ4zoSrpUsJzUWcAOd7.CFLfSe5SiZqsVr4MuY4dJ0x.WtbgksrkIfriEsvmOexyUud8Nuh1Stcj03kXzlpXNq8MYSYprMjdDiN5nwUtxUvTSMEprxJgUqVw.CL.RN4jk4.lb1O4dTNL3bgNePyPEznQiL7HSLwDhH1MyLyfpppJzWe8g.CLPXwhEDWbwIps9d26dw.CL.JszRgMa1vRVxRPxImLBMzPQngFJpolZvryNKxImbPjQFIBHf.vxW9xw5V25vK+xuL9i+w+HZpolDkew+M.pgrPq9paHn2D9yYhl974SlwBREkpiC406Xwr9e8xi35cvvqX3mADP.vnQih.Lx917HOxifyblyf0u90Ca1rAa1rIgxdkqbEDVXgIPp+odpmBtb4RhHnyN6DM2byHf.B.YlYlPiFMRU+LXvfzrRRU9czQGH1XiEkVZoxn6lTRIgyd1yhhKtXbpScJXylMzSO8HrUWXgEFxKu7vJW4JQu81K9K+k+BrZ0JV8pWM98+9eOxM2bQAET.JnfBfMa1vEu3EQPAEjTldUx6kdLznQCzZznQzSO8f0rl0HwJC.A.SiM1XvkKW3ZW6ZPiFMxE0XiMFxLyLQCMz.pt5pkglIwDSTf7KUW9N5nCzd6sKVfXHA9CC3ECjWTmhiJpnjD2zoad4e5ZW6Z3RW5RBiHTWc0gN6rS30qWrqcsKY9BzpUqjreN4jCd+2+8E1YnfBJ.AFXf38e+2GOvC7.XrwFCUUUUn6t6dAzzgp0X+icmg7PZ.TcFIlZpojV4qtXlMPi+rEyZ+06ykO.UyY358ha738bMZzHEYnqt5BCN3fXngFBKYIKANb3.gDRHn81aGG5PGBAETP3Tm5T37m+73q809ZPiFM3VtkaAO6y9rXe6aeB9u5u+9wC9fOn3M+Ye1mEd85ULntt0sNo4fs0VaB9xHAa0VasIvse4Ke43G8i9Q3O+m+y3kdoWBgGd3RGgyImbPO8zC74yGV9xWNlc1YgCGNP80WOdrG6wvZVyZv27a9Mwy7LOif1z23MdiEPJuD0rpG5V5RWZYqe8qWlSTVhsgFZHL8zSiTSMUAppd73QHJUmNcJtaXxozMCoujDSLQzc2ciN6rSopIrG..3+EOD4OZ+3CdUko2hEKhzixQAzkKWB0PFUTQgrxJKrksrEbnCcHA+QwGe7PiFMBamM1XiITpBmahXiMV7m9S+Ig6ZT00XUKvpKR4FVBzMpIyp8JgH.k+MY4ToGiazg+dJ7GeQ2LOI9qwz79HoxDFtZPAEDRO8zEppbt4lSnNxQGcTX2tc7RuzKAKVr.e97A61si23MdC7U+peUrsssMbxSdRQxnlZpovEu3EwJW4JwIO4IwpV0pv3iONpolZfCGNv5W+5k0QjQOJpnhDp8mdl6ryNQVYkEzpUqHNfFMZDFMZDM1Xinmd5YAFd.luzojBY5niNPkUVI10t1kLqwj7kICT3ymOn6m7S9IkQWDLI1.CLPDVXgIhaQHgDBhIlXfa2tkp0PpFwfAC3HG4HH4jSF8zSOBdRRM0Tw6+9uubxytWxciTrGTw+MQvHCiPil4wARWc0kvUnKe4KGUTQEH8zSGQEUTn6t6dAyAbJojBty67NEUqjLhWs0VK75cd9uOojRBFMZDqZUqBkWd4X7wGGomd532869cn2d6UfzLsd5Ojk4W0nQiTeclnOyEP0cKCag+sXU0TSb95kX70yCD+dU.1sXGrHCpEefIHN6ryhQFYDjXhIBe97gwFaLzTSMIMRb+6e+3oe5mF50qG+o+zeBNc5DkTRIX5omFG5PGBszRKX0qd0hVAvbdXU918t2MFczQwoN0oPas0FhKt3vRVxRvy7LOC95e8uNZu81Qqs1JNzgNDNxQNBV25VGlXhIv.CLfDIBkt1RJoDoLyc1Ym3Dm3D3gdnGRHgMhhYNa34kWdRoySIkTjJOQiFp8aR28e+2eYzpuYylwDSLAra2tfaCxU8tc6V5hHKe4fCNHhN5nQHgDhL4WTtSYnL81auPmNchH3ALeivnF3RLcyRjpUqVgaL4hJa1rgrxJKghDCJnfPrwFKppppP.AD.rYyFJszRw68duGxHiLvV1xVv68dumvaRevG7AHlXhQPDaTQEEVwJVgfm85pqN7K9E+BbkqbEDWbwI3XhgarXa.3hJNgWpR+Js7B.YjTYmkYUnBO7vgQiF+eUG6aTSzVLLFcy1DPBEid3YgHHLTRJojfEKVvV25VQSM0DhLxHwRW5RQiM1nDGcM0TCFZngvd1ydjyWqVshFZnAAy+zyQFYjABMzPQkUVIld5owC7.O.zpUqLIhuxq7J3G8i9QRNXjQuat4lwm8YeFN24NGd+2+8wYNyYPO8zifF2SbhSHCLUCMz.5t6twce22sn5MFMZDEUTQXkqbknt5pSjZK.HBXH60C8.6xkq48b+c+te2x74yGZt4lEZDoyN6DZznQFQwniNZwsE0kJV0FtnUud8vkKW.Xdp2SUVQ0pUqzIXhRQNgVD6K7AkZuC3CgzSOczTSMgUtxUBWtbgQGcTb5SeZAlsEUTQRy6JpnhfYylwq+5uNJnfBfUqVQjQFoLj3Lg928ceWLzPCgcricfMrgMf69tuaL1XigZpoFAJGp..zfACxr9FP.AfQFYDYtVIupppMtbgF+6PIYhygwTSMkb9qZ0meuZr+pV9U+cYgE3lA+miVBealPHIlKpWCSN4jH+7yG1saGIjPBvgCGvkKWHxHiDkVZoBzyI4l0We8gZpoFL93iiksrkgAFX.zZqsJzIed4kmLhtM0TSXCaXCnmd5AYjQF3C9fO.m7jmDaXCa.gGd33IexmD25sdqvkKWXcqac3Tm5TB48RpZji8JGvqzSOcXylMgmgNvAN.BJnfvN24NwHiLBN3AOHra2Ndq25sv1291QUUUkLrR0We8XSaZSROs33u5ymOnam6bmkwApgIzEczQiYmcVTas0JLOVQEUDFYjQfc61k2LUOjTRIEgYI73wCRN4jQWc0kjDiZxkzRoJKRPqSpHsjOXMZzHV5RWJRM0TQCMzfLT0rygLrlSbhSf63NtCgQyxM2bQ3gGtDZyjSNIt10tFBO7vgYylgGOdjEgd85Em5TmRXUYxTBTWDnKTFFG.jFcolb7hgEH+S9mVj4uCIsKVMI0p3vpOcyrzqtfWMrLVdTdtwAvgTTBGjFlevXiMFRKszfUqVwLyLCd4W9kQrwFKV25VG5qu9vC7.O.d228cQIkTB73YdEku7xKGO7C+vvfAC3i+3OF0Vasnmd5Aomd5vqWuHjPBA6cu6ElMaFO2y8bvqWu3bm6bBs0WXgEhUu5UibyMWTRIkflatY30qWoT6pkadhIlP3X0HhHBYi4a7FuAlat4fMa1voN0oPKszhfZYVLfN6rSrxUtRXylMgjo4v7q6a+s+1ko5FmX0mVAmbxIwfCNHFd3gAGH+BJn.X1rYDQDQfUrhUf1ZqMAgoCN3fBduoEM0pr3uaYVpPBbKgUv92dFHpCsZ0J1912NpnhJvHiLBZqs1DlYfgJ40qWTZokJrmWpolJzoadIEZ7wGGETPAxFgvBKLgFStvEt.V4JWIdtm64vDSLgfjUVhVdPuZLlZNoaKVmc4AKurACFDb5Pq1bPfTu1o2RxkQKFaRndnBfNl6whAfN5wge1reAqcsqUPMLoQwRJoD7lu4ahZpoFjc1YKC8BSXs95qGCN3fn2d6EVsZUl+W2tciG8QeTr8sucr90udoysTu2X0C26d2KBKrvvYNyYP+82ON6YOKra2tPFwyLyLnxJqDlMaV795067jo0vCOrPvYLDyBJn.3vgCboKcInSmNDXfAhJpnB7U+peUr8suczbyMi4laN3vgCTXgEJjALUPGc+hewunL9AQpNmyRbPAED5omd.KiJ+Zu81qv4OAFXfniN5PpvvXiMFZu81E2xLNX+6boJz.72Rpp69PCMTA3ZW4JWAokVZn6t6FZznAW4JWAQFYj3y9rOCUVYknkVZA29se6n2d6EqYMqAm8rmUhQ0mOeBrPXdLc0UWxMWxXcyM2bXrwFC.PFrmqWhwpPjP0Kf5uC4VSxDBDxHrOITuGXnOpyg.Cs5Fcv+eZ4mnljdZYR5pXqmgvB.zc2ciVZoEX2tcbu268JUv4i+3OFOzC8PH2byUTKyZpoFje94C2tciBJn.bpScJDZnghqcsqIaVJrvBwRVxRVfPv+m+y+YX2tc7e+e+eiLyLSryctSoD4e9m+4B1vrYyFprxJk7O4P1yE6d73QpRIEIv96uewCcTQEkjyRfAFHN7gOrjqvQNxQDIrJqrxRzdB850O+7D3wiGApv974S3ww4laNXznQIVV1XLxbbNc5T.8TbwEmLdaW3BWPD3O0tlptHgU4fITxZLyMKbyAWn1TSMAGNbfFZnADUTQI3Zxsa23pW8pRoxra2N5s2dkxdxtx1d6siye9yihKtXDZnghDSLQQLL750qHJdTFi3zsoVcHV4JZslSLl5g+gunpyxDuQrJXLoUUvqwM.zii+yCf+G7dmZS8T8Lv7OXktX9AD5IlMaFYlYlvnQiXvAGDMzPC3Dm3DB1ud629sQFYjAxM2bwa+1uMLYxDxImbv4N24vHiLBN6YOqfPfuy246HKt6omd..D5ygPtgqCdpm5ovV1xV..vHiLBLYxDN1wNFzo6Kn7QNeHbcEK2K6+AW2pWudgep3lDht2qd0qh1ZqMTXgEhVZoEnQiFr7kubQAL84yGz8i+w+3xX3OrhLgGd3Ru.HH1RN4jgNc5P+82OhHhHjDWX0czpUKrZ0pHWP974CojRJvsa2hEJUKlbwGYDN0j5TsJtm8rGYDGY3HzaCQnJe+okVZnu95Cd85UnYQxLclLYRDWOJdHDPa1saGu7K+xRkuXIh6qu9DKo75jdFX64Wrg1PcApJv.YUuXWjU+49O0Y79g+ax7+3lkS.gefJVk30jACFvS7DOAps1Zw0t10vPCMD73wirXI8zSW1.avfATc0UiUspUgbyMWb228ciVasUzPCM.WtbgG+webTd4kiYmcVo4ku5q9ph7IMwDS.KVrfIlXBDUTQgSdxSh+0+5egVasUbu268Bud8h0rl0fzRKMAGPojRJvhEKhZ9Pljf8cwnQiBPH0pUqHwXAGbvBidyqSmNcJb7zN1wNjjt0oSGz8nO5iVlKWtPmc1IzpUqvwMjkyhO93kdHPjOld5oKtcR4eOfyAFXf3HG4HBcYPJZw+tnpZYimf9u3WMrnXhIFnQiFDarwJL5lMa1.v7TvGiajic2.CL.lXhIPe80GJqrxv+3e7OPUUUkLqxszRKHyLyDQDQDvmOeHt3hCuvK7BhJNFWbwIJ0HslvX8oaYe97ISOmZL3KV4LYB1zyJ.DILk4JnZAm4GM0TSIafuQG2rbBXeYTGyUfu.wqZzL+3ythUrBTUUUg5pqNQ9nrZ0JlXhIPhIlHBLv.Q4kWNtq65tjJ97O+m+SwpJIDqicriACFLf28ceWQzMBN3fwV25VQhIlHNxQNBtsa61j6gDZMwGe73hW7hhJA40qWTe80KTuOm2cWtbIkRW8YAwUla2tgISljx3SCsFLX.c0UW31u8aWFnGJZ359g+veXYbtZ4alwOFd3gilatY3ymOQiBRN4jQKszBRHgDjRixSze6u82JVOYUOXl9rJDrgY7gt5LxpFR.sHRP7kPBIf3iOd31saDYjQhd5oGQv83zfcricLnWudryctSTRIkfG7AePr0stUYdGN0oNEZngFvoN0oPSM0jHRbM1Xi3nG8nxjyYxjIjRJoHCJNWfwdB..gZ4UI0oEqd+ru.yM2bRCk3F+YmcVIA0EKeHtf9FcbyxIfijJ2bo1YaylMKbGZVYkEN3AOnX.L8zSWBEjyHbLwDC9zO8SE5ru3hKVnXypqtZr4MuYQkK43mRnivJ13vgCIxAxJIkWd4nhJp.yN6rBn9tzktDxN6rgEKVVP3hDJ6zSbHgDBFarwVPgW33Zxq0N6rSwf1QO5QQO8zC18t2Mb4x07umcu6cWF2YQWMzM7TSMErZ0pLyrNc5Dd73QHg2HiLRQexd9m+4QkUVoL4OyM2bhEZdx6OhI0nQiXQhalLXv.LZzHFd3gQwEWrzTsFarQQoIGd3gwJW4Jw29a+swu9W+qgc61wt10tvIO4IwW6q80DLuO2byIUtfUln2d6Uji1+ve3OfJqrRQn+30oJ+KA.IuFFZ.SHVMWAxVdSO8zBkySOGjlUToXE0DoU6ZNCQhelpnpkVxUyohUaR0KJWLDP.AHBvnJdllc1Yk4GgkE8C+vODADP.R4wMXvf.ADJ1H+g+ve.VrXAgFZnX6ae6BCwMzPCAWtbg8su8gd5oGbsqcMYczV25VQ2c2s.YZmNchd6sWrrksLYzII+.oWudr28tWb1yd1E3omhwgJxaoNHqJ6WpUVjhIeDQDgDRHKObs0VKrYyFJt3hm2P1i8XOVY.PF7YRI1DeETRjBIjPjIvRq14YAtxKubr7kubzSO8fO7C+PglBUEfC0xFtXuHVNXRfpV9hJpnPUUUEFXfAP1YmMFbvAQyM2LlYlYPs0VKlbxIwgNzgv1111jAu4ge3GVHXWxgl.ymnIQsXqs1JdrG6wDUnjFAXXcLbAJLF9CtO0ye0CUnOnV..++8WLOGpOD8+ve7To1Ea0bVTy2RsgYz6Z.ADf3gNiLx.kVZo3xW9x3JW4Jx8axmTqXEq.W5RWBqZUqBlMaFFLX.Nb3.KaYKCEUTQnpppBd73Am7jmT1LvtwmSN4f5qudoauSLwDvgCGhDOw4U38du2SfNAaXK0ZL5UivXggdRuXj0t8O7Z+OXwKT6OE87thUrh4KNw2+6+8KiVXBIjPjIKhKLsXwBhN5nQmc1ojHJgt.oSwO6y9Lb9yedINWlfxhsnw+WrZBrLgby.ITUJF0LIFMZz.ylMi7xKOL93iit6tazTSMg64dtG7RuzKIP5dvAGDomd5B8xS4W88e+2WFovZpoFwSAsbvPFXxWLQyazF.VsGZMiVxUs1e81DveO0wtTsBYpMZbwdXyPeVrdT..A7iFLXPZvG05Aa1rIwTSE2wlMavpUqn7xKGeiuw2.81auvfAC33G+33W9K+kHu7xCuy67NXvAGDG5PGR9bHX7Fe7wgUqVgKWtvV25VwbyMG14N2oTp0t6taXwhEnUqVrwMtQrrksLDbvAibxIGTRIkfcricfjRJIL1XiIa.Fe7wEdmhJQDWexvAWLCR.XAgWq1emVasUrxUtRjTRIA8zUKuQwGFbw..DcIfy7I2UFWbwAGNbfSe5SKtYCN3fga2tkFAcy53IanCefyOeJET80WeR1+j.VGYjQPFYjA97O+ykELSLwDBDHBIjPvwO9wQkUVILZznHqRjHfGZngv9129vUu5UEVVfUdfaFYHLzBLWjsXWO7FKoqFtYP8Ai5BT0upN5epgawGd7yewd+reKpuT6QAuONv.CHMojd6qqt5jjHmat4jQrLkTRQF3lTRIEb0qdUDczQieyu42.GNbf27MeSg0oSJojjN3FarwhMtwMhcricHx+KALGoxmTRIEg6oFd3gwYO6YQCMz.xHiLvfCNHlbxIkFYopOF7ZSMrRZ3V06m+a.nQFtogvnlUUp5pqddjS+nO5iVlGOdDr7PZ5lwzRxzkImLzPCIVqCIjPvoO8owINwIvzSOsvolLQZBLtazAwaCiWldAnPN3067Ljsc61koyhyqLmS0Uu5UiPCMTr5UuZ31sabkqbEje94KCCBQK4PCMDJszREOIIjPBnkVZYAw+5eSqTWDpZs0+PYXNEDchz0q+gDwGNpvHQM2ClH8h8Pcw9arXdlT+6GVXgInBkwkGVXgIBa3u5W8qPyM2LRJojPvAGLV8pWMdlm4YP7wGuzM1zSOc7oe5mh+1e6uggFZHDTPAIrNNWbMyLyfYlYFbG2wcfVasUDbvAKJy4AO3AwYNyYPKszBhN5nwN24NQkUVIFd3gk4F2rYyn4laVjrKJp79m3OgXh57X3+8J0WLAZ062748niNJtq65tfdR5UzkNichOno7iRPVwpb3zoSLxHificriIkKkdArXwxBXAguLaBXHHyLyLvlMaxTeQ5bTiFMKPpSKt3hwG8QeD74yG1xV1BZngFfNc5vRVxRDBaZMqYM3RW5RH7vCGEWbwnvBKDW6ZWCUVYknqt5B+te2uCG+3GWVH6e3PLzA0DYUul7ODNZAW0il+Vu8+mwOO0X34AqnF27sXUPRciJ2zoFB0LyLi.zQl6Co0vCe3CiCcnCg8su8gG5gdHrsssMbgKbA73O9iCsZ0JFHNvAN.pu95EOcSM0TReZzoSmn.lzK1m8YeFrYyFN24NGt10tlnwaTmj+nO5iv1291Edn5ZW6ZXEqXExrDmXhIhyblyHgkyqc+gPh+4Vo9U06mruN.P7LXvfAb9ye94q.38ce2WY7AB4PH0vhnp.xX84lj3hKNze+8i+1e6uI4Sv3noUQ0ZQe8doBY.1suBKrPY3q+vO7CgACFjpPQg4NiLx.0UWcXfAF.4latPud8HqrxR3zeJ9CFMZD0UWcvkKWB6xshUrBAl0u8a+1..xLOSWrpCEC2jpF1ButXC7HrHnW.0Jgci7DnNNo96ExeuMpajTSVV82i+bF9CGqTZThVAsZ0J5niNP80WOBLv.QwEWLzqWOd5m9oQ.AD.NyYNCt669twG+weLNwINwB3s0nhJJIY4DRHAzSO8folZJrzktTr10tVTWc0ILxMMfQP5wpTEXfAh1ZqMzYmcBc5zgHiLRL6ryJ88gnWHxHiTXjCFVDqjoZIq8eMkpQh4laNopk7moQy7iuawEW77kHkTCBiWjefjKI4bFvxKxE8u3K9hn5pqVnwO1fEx2P9mX2h8hKtHGn50qWrxUtRnWudjZpoBKVrHXQZ7wGGlLYB24cdm3Dm3DRNAlLYB6ZW6BolZphWq95qOwaEqhfMa1jELVrXACN3f3rm8rhmPVVX1bEdMntAP0afpGTNnLL4SZ08lsIfJ.JMFn10W+KGp+di7uAcpKB3KljJUBlfCNXbwKdQIOqnhJJo3G6ae6Snj8G4QdD7u9W+qEHd1SN4jXYKaYBJNY2Z0oSmDhoGOdPyM2Lb3vA5u+9w1111jFs1SO8Hw0mYlYhgGdXAVybJ117l2LNxQNhPrWzXpZAJTMX3eEw7+E.jmmzqKQLPbwE27Txx8bO2SYT.uKnfBDtzzgCGHhHh.ojRJBUVnQy7BKQbwEGpt5pwu829aEL0yxIRIcRkOKodjwDSXbcLATVEJNqByN6rXaaaanpppRvuOW3N5niJ5SF4F+64dtGze+8it6taL4jShlatYr+8ueDXfABmNchcu6cKetYmc1nu95CaZSaBeuu22aATHOCsP0BhJztUsxvXR4FA0PhTmnLZQlgZxD5TsjyI6ipsHwTD.VPm1YXZp5EA0bZVCb1WlIlXBL0TSgTSMUL2bySY8DyWCMzP3Idhm.W8pWUfRNqs+TSMEt+6+9QHgDhnpL.eQgR5omdjYClaXFZngvjSNI9Y+rel.k4YmcVje94iCdvCJkWOrvBCgEVXXG6XGnu95Sz4NJYV6d26dABRXKszB74ymrIJ3fCVBKRElMpFC7OOI5Afdmo2RlrbPAEz7CUCozZR25VrXA1saG0TSMxHTFYjQhwGebL93iC2tciSe5Si1Zqs+WIj4+gZBlpI8wcxrTljWaHv7t3EunfJv95qODe7wiG3Ad.3zoSzbyMKyD6RW5RkjzZokVjtGRVrvrYyHf.B.omd5HqrxBQFYj3ZW6ZviGO3PG5PBKXqdndcPvlwx+xvjna4aVNOpVjVr6QzaoZmm48G9.Sc7M4FH96nlCCMVvPyH7noLLwAmgJ+de80Glat4P6s2NxImbD09L5niFW5RWRJ1gpUW+eoWudgDD3lJVB1AFX.rjkrDIDJ1g3m3IdB3wiG7e9e9eh0rl0ft6tanUqVzbyMiVasUQ9q5t6tWv7lb8tGb8d1QiUjH4XSSYtLL7ece8u9oIDzWA..f.PRDEDUWur1ZqMg2HYMZoPSyjg3MLf4sJ7Zu1qIcibwd3x+Mc6R7CwPs3IOKo3DSLgzvk3iOdrwMtQQVnRJojPyM2LZngFPSM0DhIlXfEKVve9O+mwS9jOIdi23MPHgDBpnhJPs0VKBN3fgQiFw5W+5EJjG.n5pqVvFO.vUu5UkDlVraf7ZUcAlpKUSlLcSg5r5lD+SfiOD8uW.pVx3CO0jdYnSpV+4lT1uC85mmlISJojfNc5PO8ziTcHBwYFdI4r0ZqsVojoM1XiBLO7eguZncDxyAFXfX3gGVVDyAhmyAdt4lqzo9YlYFjQFYf0rl0fSdxSJFt73wiP1y0UWcKnL8LbUVcmEqznK1yPSlLI4BolSGaR63iONzRgyHxHiDYkUVvkKW3bm6bPqVs3zm9zhjHkXhIhQFYDjZpohO5i9HgrYWrOX+cMoZwjgXvM.5zoCc2c2vpUqR0.hN5nwJVwJP+82OFXfAPs0VKpolZP.AD.1yd1Cra2NzpUq.WZmNchXhIF7M+leS7U9JeEDczQCa1rgKcoKg29seaL2bygZpoFrsssML0TSgwFaLb9yedjbxIeCsTyMrpgEQHdnNFieYOTqJj5hH0p6ntPi+L+yEg+M34ipGVddFTPAIhTAmWX18+fBJHDWbwgryNaDWbwgRKsT7O9G+CbK2xs.CFLfKdwKhN5nCgdI82auZNGjKVCIjPvryNKrXwB5pqtPpolp.CkRKsTTd4kijSNYDTPAgye9yiMtwMJDqEYU7JpnBzWe8gCe3CK.kSctz8uZb96EXwNXXgbyLgiBMTN2byAsrSvrwGVrXAae6aG..4me9xjQUc0UKVlYETHUbyaNK1hItPmtt4tadxP7pPwpisfu4laFKaYKSzw2T92TCNiyyhEKHojRBgGd3Pud8XUqZUPiFMvoSmhh0L8zSiW+0ecTc0UCKVrfJqrRTd4kCylMiksrkgN5niEb9tXWKreGpf6ymu44zxgGd3uTK7Wrxixu+FsIfggrXITyMAiLxHXrwFaAcdmzreBIj.RLwDkXwYNTZ0pEiN5nXhIl.YlYl3G8i9QHgDR.0VashfmS1CQcQuZIzIdmhKt3PLwDyBlvte+u+2Kb7zryNK5pqtDVnd5omF5zoCIkTR33G+3hGJ.H5EWHgDBb3vATKeOGGRfufyltddCtQ2+AVH80Gd3gCc+ze5Osr.BH.gw3HLdyImbvfCNnDhRrwFKBJnfvEtvEv67NuiT1zalkTFtj5CW1THsZ0JgKwDWiN5nQ2c2Mpt5pQ80WOxO+7w3iONxLyLER+crwFCQDQDX1YmUZGeBIjfT1s1ZqMLwDSfFZnAYJl9u9u9ufCGNDcu5e9O+mBmDciN+Ybkp41nFhyMCpyWuvD4WUyQZw5Efpm.+gTAiSVM4Pe99BLBQ5urt5pS3iy.CLPIbyst0sh+ze5OgDRHAoBR.PtGyvW8+7V8ya3gGFQGcznqt5B6YO6AkVZoX3gGVvIT5omNBMzPQ0UWMb61MZngFPN4jCps1ZEXxOwDSfhJpH30qWricrCX0pUrhUrBje94i96ue3xkKY3YHZEH8t3eNY9+7SkumTCojkLVmNcyCahvCObDP.AHxtSBIj.FbvAk9AvcyQFYj3xW9xRRxbxsT+PWLWTpwho1YVJdGbTN4IESNa3gGFm7jmDFMZD4latvlMaRY8HdSprxJwEu3EQ0UWsL.4omd5npppBFMZDM2bynyN6D6ZW6BEWbw3G7C9AHlXhAwGe7hHa3+4t52SKWpKVAfTkGxhFWuC+q2u5OmKr8OzGU292rtDy6+pKRYETFe7wkgLxtc6xj6cnCcHbhSbBnQiFQHTLXvfLiEbzCYzA9uAP0vQpolJb4xk.4gKbgKfbxIGX1rYDczQi4laddAcyadyB6C1XiMJgvkZpohd6sWbhSbBzWe8gpppJDSLwfG9geXL6ryhN6rSzUWcIHRl2e7uq5WuiwFaLI7aV.AxvIgDRHvkKWPqYylkPSRHgDPHgDhDl.GyPpar0TSMvsa2XrwFSpXxhkrm5+VsimpCXC2DvgWY5omVjtGpexwGe731tsaCETPA3RW5R3RW5Rx3VxFcDXfAhMtwMJzvnCGNfa2tgd85wXiMFFbvAwpV0pP.AD.13F2nLqCr91K14r5AovbNX9pcV9K6w0KbH9Y5uwC0E4Wupuw+OBWAFd.yQf4rPsGVE+LjqYyKu7fEKVvryNqDZGGExTRIEYVAnGG+e4067BP9DSLAxO+7wq9puJb61Mtu669vzSOMN24NGZokVfWudkjzGYjQ.vWHAWgGd3x.SQ0L8i9nOBwFarnlZpAIjPBRYRY9NLRhuLGpSiFMtvJ7IkZcO6YOk0Zqst.WXTwzSLwDEXtZvfA7QezGgd5oGowVpVAUefo98LFRBAaN.Oza.gJAsJvZPyNXN2byIbFD.jEu6e+6G4lat3y+7OWlmfLyLSjVZogCdvCBSlLIIZa1rYjRJofJqrRzd6sKdbX2IokE+S30mu4QXYjQFoTAK1AcUXQ3uER+ic+5YIkg.pF2M+cIxRU6ofZGh4fkvx8wvhHPHmbxIgSmNwTSMk3E2jISBNhJpnhvfCNHZokVj2Ka3GCS0eh6ZwB+UcFI1zl1DRHgDvniNJhO93wwN1wvW6q80fWudEknr2d6UFCy0t10hN6rSTe80iryNanWudLzPCAylMKZH2YNyYD1niFdIgtY0pUwy.um4e3jpaXT6xOCyMxHiD5as0VEo2owFaDokVZXlYlA82e+XrwFC1saGiLxHn0VaUZNDU0btaR8As+gTvFjoNrHz8jJjimXhIPgEVHppppv8du2KFarwv92+9w5W+5Qqs1JlbxIQjQFoLjD974SFGvLxHCL93ii96ueXwhEL7vCiJqrR7S9I+Dbu268hAGbPbvCdP3067ZmkQiFgEKVPmc1ojah50fpkNJLejE9Xc8YsmuY8IPcixh8uWrD238O0+e0Gd9e9pFNkJxc40.aBF0BZSlLIxkp+ed9+82rCFs.gxPBIj.V25VGt3EuH1vF1fzWovCObbwKdQL5nihW5kdIoxeemuy2Ae9m+4X+6e+hZEEYjQhryNaoArDFOCO7vPmt4YQNNyJKl2R0WDWSp4DvPwnGFcuxq7Jkw+Qas0lHr0wFarXhIlPDxBpL6c1YmKfI0Twtwh8Pjyf.YsZxS7bRs3CwXiMVgZG4Ev3iOtztaa1rg7yOe30qWTWc0gFarQjbxIicricHzFdHgDBtxUtBty67NQd4kG.l2cXmc1Id4W9kwi9nOJxM2bw4N24P6s2NrZ0prgz+EcLDNtnWsispIG9k8XwR3F3KFJF+C+Qcgu+G9+P2+JJQuH92kYOd7fQFYDX1rYL1XiIglbi7TcydQiRLbViFMh7xKOzRKsHBmxjSNozuht6ta789deOYVtSIkTPxImLBLv.wIO4IQ1YmMBHf.PAET.pnhJfQiFQu81qbMw0TLRDZPv+7lT6TOwylNc5DHfvJ7EVXgA8D28KcoKEae6aGd85Em+7mGQGczHt3hCgEVXvsa2hbkxtAxrz8OlV0D2nKGfun+.pc9iVbYBJAETPXzQGEADP.RmjmbxIEgylve0lMaBcLde228gu025agcu6cit5pKrgMrA7xu7KiHhHBjSN4fO8S+TzYmche+u+2ixJqLAgjYjQFKXPcTqth5BMl2.i01+Eg2rZUqlf6h4MPcw6hE++M5uu+ghwMspyUfVsZgISlD3HvqGVBYNIcpeleY+7Aff2J9Y0SO8fSe5Sid5oG3xkKDZngBKVrHCmiMa1PrwFKZqs1vK8RuD9k+xeIhO93wTSME9FeiuA9jO4Sfa2tkFbxh1vuWk9XTggt54sZ3iDJ0yN6rRC7zoSmn4ZVsZE5W8pWMVyZVifgmqd0qhImbRQ0FiLxHQGczAb3vAFarwj5LqhPT9g6+NR030nEOtCU0s9TSMknDj7gDw5OUAxIlXBDe7wi1TjM1ksrkgidzihjSNYjUVYgm7IeR7DOwSf7yOeL7vCiImbRA+I80WeXO6YO3PG5PxCMNWBpw6pVFTtXRMIXUvbwdVbyNT2Hn9vR0ii+OHWru2+el5BcUXWy+OdulrJnSmNEdHkC9y06y5KaHQd85UZ.4q9puJxKu7fc61QZokFzoSmvkPNb3.yLyLvkKWn95qG50qGaZSaBaYKaAZznQne+BJn.zc2ciW3EdAwqEGt9.CLP4Y2byMmL4e96EPcS.KZf+r5Ao4e.L+7DDP.AH.kxoSmH4jSdAITM1XiITetKWtDxRRmNcRUEVrGvZz7E0okkFkvkl+diO93hPfaznQjQFYHT9wLyLChM1XQGczgnuAomd5n81aWpPyANvAv1111PO8zCdi23MPlYlIzqWOLa1L5u+9EcTie8S9jOAYkUVnolZB1rYS176um.d9wjq4BMtQms4++W3IXwNTWf6+CX0vo3hclbLCuiMyhU9ia1HHG4Fja1Fva10mWudQrwFqfKoktzkhuxW4qHjzau81qfZUpsDDh7DZ6FMZDIkTRvgCGX4Ke4HxHiDKe4KGG3.G.W4JWAd85Un8molZJoZhWuJso1bOOdlmyTY4yoGg3hKNYLa08vO7CWVSM0DLXvfPK4LAyUrhU.sZ0hO5i9HTWc0g1au8E.0XlX00Ke.9PlU4fczjndj30erwFCyN6rvoSm3tu66FM1Xi..n4laFM1XiB.95qu9vHiLhbNvNP+QezGIaJRHgDPXgElPVuAETPHmbxA.PDuAWtbIj0Kc0p59WsysTtVYrkbCLqbxMaQh+Of72J90KLH0eeUKapfsiaHXEZTa5HqbDKI8PCMjTXCgW9UN+Wr38442M5fPqfIsFTPAgvBKLb1ydVgvzXHIb9BJrvBgOeyOX8c2c2xjoQxysiN5.+8+9eW73SCt77gjjFgHu54HutTqpEoHTud8JzxewEWLRKszPQEUDzs0st0xV+5WOrZ0JtvEt.xKu7PhIlHHSU2e+8iSe5SKLGAw0OmgX+Srz+GlzC.QrGsrxRdRdFs2d6EiN5nn1ZqEyN67ZJFGcxFarQzc2ci4laNjVZogVasU3zoSggwVxRVBxJqrvLyLiTIqbxIGjc1YicsqcIsv+3G+3niN5PFhC0XjUSpT8EUccZ8mJPIsx7k8v+M.pKxVrE9pOT8eif5+F3KJCs5lBBpN102N5niEUn.8+yy+yka1lfYmcVQny+1e6usPAKjx1qnhJPXgEFLXvfnCAu268dXngFRLvoQiFAdGTvMhJpnv.CL.La1rbdyoWat4lC82e+vrYy+uFeW0MALrcVRaOd7fbxIGrqcsKroMsIDe7wOOki9XO1iU14N24voN0oPIkTxWPW0+6tg9hu3KBCFLfKe4KKPelKZI10UQ1nQiFE1+hH0iI0x34Hm9v30T6HKYVB9vpiN5PPoXu81KRHgDPmc1IxN6rEFiqmd5Ac0UWhFLSpiengFBkWd4xC0wGebzQGcHXTRsFxziEKkKSfmVUEo84e+dTyoweC.9aYx+vXT+8UW7plm.ec8fvLewPG48K1Ab.HULyoSmKfTfUguBCQhdN36mfWi4EoN+ypf3igHFVXgg0t10hqd0qB61sia61tMDbvAiwFaLL8zSiZpoFb7iebX0pUL4jSJrUcpolpHypjJV74yGps1ZQfAFnvFHLmGZ3IpnhR17yxBGSLw.ylMKTxNm9MMZledUlYlYvt10tvxW9xwzSOsnUA5W25VGlZpovHiLBhKt3VfUflatYTWc0I.rq2d6UVjNyLyHLprZScTGpY.HcYk35lOjYY6TybO3fCVTg9QGcTQ4DSM0TwF1vFvoN0oDtkmxuia2tEoXcIKYIxlzSe5SivCOb31saQM64fdSNEZwpJi+VDuQyJr++99WTfuLGp4KrX4UcyNTqkNMbEQDQHaPau81EUFU0qGCkjL.H+49WbiEqQYbSMvWvlEd73AwEWbvjIS3jm7jXMqYMhB1ujkrDjVZogye9yKyPdAET.xJqrPKszBdgW3EvC9fOHBKrvPkUVI73wC9I+jeBdkW4UDh1JzPCE82e+H8zSGNc5DlLYBiN5nvoSmh7aQJ4OjPBAgGd3HnfBBSLwDRmxYHrbsGuuqmkJhzcGU7aCFLH79RLwDCpu95EFJHjPBQn+NxnD7lEahDuYMxHir.b2va9j5tiHhHPu81q7.wjISHszRSBSxpUqnpppBe7G+wH93iW3clG7AePTZokJZn0pW8pEbovpJQpF4xW9xnhJp.0UWcPil4wKCygfz1tZYcUsT6e0a7ego5BqEKDm+utQP8y4KyFAt.mM8irsrGOyKWViN5nHv.CbAgupQiFw.DCcfWq9CXuaT9AZznAkWd4BUrqWudQXV1291GzqWOtq65tPLwDCFczQQc0UGpu95EtjJ5niFIlXh3Vu0aEO8S+zRoQyImbvy7LOirvlrdBg3Q3gGtDVJIvWZTiOOc61MFbvAQLwDinDo1saGIlXhx8JhLBsLtIMZ9Bppa7wGGCN3fnmd5Q3iFRI6ziASLQ00HKmHcyx5zpNfETKbCN3fkFmQJVIojRBd85UfvaTQEkv8Lr2.VsZE1rYCMzPCH4jSVBIfXlOt3hCqYMqAQDQDHiLx.FMZDs1Zqn1ZqUJK3niNJlYlYD9obwRNUMDF+SLcwrLtXw7+kYivh823+Kue+Cwgt9YoPY4QYU4TmeZBwB0MA9O.OzyM2.wYfl2yxN6rkPXHX2La1Lt669twoN0ove+u+2w92+9QCMz.ld5okgxe7wGGwEWbXfAF.tc6FYlYlhQx1au8EHFfLORNsZ77HzPCU9cXCY0n4KF02DRHAjPBIHgcs4MuYjSN4H4JHEXP0JBIQJVxz96ue4AtACyqV7bXURKszV.LdYiZXnQbhr3FBxhXCMzPB12YSK3CpPBIDL3fChyctygAFX.Y2aN4jCRHgDjvlV6ZWqHXbaZSaBSO8zHojRRr.zQGcfTSMU31sar5UuZgeQsZ0pzBd9ytdMphuXbm7Zw+uewV3++etIfKf48Th6dBxPxTCbwsJbrICjqBOa0dMntIXwxWhOyat4lgEKVPrwFKLa1r.U5m5odJzRKsfCe3CiW8UeUDP.A.ylMiktzkhxKubb3CeXbjibD7G+i+QL0TSggGdXL1XigicrigzRKMwZMqyOkrUNf9zaFKB.GheiFMJgpO8zSirxJKrt0sNTTQEs.lFm2+0sm8rmx3hA1y.Nf50UWcX5omFW8pWEwFarn81aWrpOxHiH2j3FHVtJRLsDxDbPq4NUB5KBVK17FhKj.BH.jXhIJX1I93iGc1YmX3gGVNOsa2tT0nnhJJzYmcBKVrfqd0qJzIx5W+5wvCOL5qu9fKWtvbyMmzODxxA9WlS+WD5eCAWrpmb87D3+h8E66uYMrhVkuYaR3BEhupd6sWot5pUwiOq4XXFczQKa.TWbqVrCd3etBzRJ6v+zSOM9te2uK5s2dWfnDx7vJszRQ0UWMhO93w67NuCrZ0JZpolvjSNIxLyLQokVJRIkTDnXSRBlahYb9rOAtc6FwEWbh0ehPX1EbhusMtwMhRKsToiyrX.BZ.BJnfDlMN7vCWnViN5nC4hkxuYRIkzBXVMUkOgIevlJwX4FYjQjGF974SbkwpAP5Igw6kUVYgUu5UCsZ0ht6tazSO8f8t28JCVwktzkvjSNI5ryNkYbtgFZ.d85ECMzPRbo..UTQE3XG6XXlYlAQGczHzPCUFDbR.S2nDi4hvazqazFfurdB7+8sX+6q2gZeXzoSmjn5fCNnfXWxzGbQM2vDarwtfp8rX4DvPlT4bJlHNQqpVsyOpqG8nGE+fevO.974CiLxH3se62VZDJYbjbyMWAZytb4BokVZ3AdfG.qbkqTVjqWud3zoSIzK5Yi5RgYylEilTpcCKrvDBaia7xO+7Qt4lKJrvBgYylkJR5uAN8d73YAkTB.n+96WZ1DeC4latnolZByN6rxtbNFiz5Bi4lIHSFOfIOyFhvKT5wvmOehHMDe7wiXiMVnU67xwT4kWN9O9O9OvIO4IQmc1I73wCps1ZEtJswFaT3ZeUJjehIl.IjPBvlMaHv.CDNb3.ZznYAkMK3fCVnHF+qWO+5hw5wpaZXUF3uu52+k8XwdeeYqtzbyMmrnjyqwfCNHb4xERLwDW.UivM.d85URJcfAFXA40oh6Hd8wMZ7bRMjvvCOb.LeYuW5RWJ.lmZbLa1Lra2NN6YOKFczQQFYjAld5oQZokFZrwFwryNKFbvAkgxus1ZCKYIKA0UWcRR81rYShZHnfBRDmw95qODczQKyePLwDiPtWgGd3HojRBADP.n+96Ge8u9WGojRJXlYlQ1P4ymOwHM.fteyu42TFvWLM+FLX.QEUThFD3vgCgpUFe7wQ80WuHzZL9QZogIawjc4FAU56iuOlTLEMPa1rga4VtEQzFlbxIEJ5fz.yJVwJPKszBhO93QxImLFczQwJVwJPVYkE5pqtfNc5D4CkCVS5omN1111FN6YOq7Yxv9.vB3BI+G7B0PHlYlYDKqrRKzUMsrpBYAVwLNS0pKhXM246YxImT7vRprjaL3rXPsFf2aYm1oZrPE7It3hSDH696ueIwY1odhLfbyMWLv.Cft6tawiNuOnNSEDtxbiBCahdLX09hHhHDoXJqrxBZ0pE1rYCImbxHxHiDwFarhxQVYkUhLyLSXxjIjc1Yi7yOeXxjIzTSMgJpnBzd6sid6sWY8XfAFHrXwBhJpnDEmj8phMPiUVJyLyTF6VxHd9ieM0M2.Xd0qbwb8xG.50qWzb.0JpvZtxPPn0U1XKe97ILP.SHithXnQ7+iO34P16xkKDarwJJNNGPblHGg9v8e+2Ob5zIZqs1jMfYmc1ngFZ.2wcbGXzQGUtw0UWcs.XbqZ8SMt+uL4Gn9UtvP0hKgHhZmK42qNj5pgWnSmNgdP3lK5oTEFwL+K1nQtYlBYgOe9v0t10jhNv+dbwbhIlHLYxjDxB4UH0Nlq9Ud8vqY0JGwPeMZzHty67NgNc5P0UWMlbxIQCMz.NyYNiDl7vCOLV+5WO5t6tEZZr81aGW3BW.CLv.hJnFe7wiW5kdIgHC3P7mQFYHPpO7vCGgFZn..nfBJ.ADP.xFJSlLg7yOersssMXylsEz7vqWtW594+7edYb2OuYyG.QDQDHgDRPnZ696ueL3fCJJcuZEGHlTzoSmbhSlPlcjD.xFD9vSM9ORzWDx1rZOjnn750KpnhJfc61gUqVwsca2l.W2LxHCrpUsJzZqshku7kilatYgRMtzktjrqmVcYbpbDQWrG7pfLiUUh4+vDZoU9q2lfEKAY0MPzJL8HRQRwsa2xhdtviPPgUoQciDSHdxImDs2d6x7CPqdzScFYjAznQiTIFFNp+uTOeU2DvvF4F6QGcTDTPAIk8dyadyX5omFQEUTBSxkVZoIkn8pW8pHzPCE25sdqXpolB1saWzs3olZJbricLXznQDSLwfbyMWwP.ADYjQFILa1LBIjPDlyNojRBFLX.1saGomd5HmbxQxuv+qkEcSvu3W7KJy+XB4MNV8FylMiDSLQzRKs..flZpIY3D3M5vBKLLwDSHVj3bbxNFqQiFgCYTAPGkpmnhJJL0TSgXhIFroMsI7+W6cs9Sadd99x1Xb7YyqswmfZiCFBDHTRWFonfXISpYUQSsScZZ6CSSpeaeqZeXeYsS8a8+goo8evzzTWkxjxZmV1pR5xAxBTHg.ABDC1X7YLGMu6CtW27fKmRRS1ueU4QxJDvGe8yy8gq6q6q6FarQAwAud8h6e+6i24cdGYdX8K+k+R7we7GCcccblybFjOedToREA2Yt4faJHV1LgNUXNA9556iJDn7wwpNxve3FlC5PfJrip8aMuVyCJzvCWzPAorgZ2PA.Aqe50vkKWxDYjaLAf380oSmPSSSFwVTlVT8Dp5kSM5.0BpIab9peGYW7O5G8ivbyMGZt4lgUqVwDSLAFZngvbyMGLa1LFXfAv4N24vRKsjLmHBFLH9i+w+Hb61M99e+uOBDH.N+4OOxlMKRlLI5pqtvVaskDJTf.APvfAQznQgQiFQqs1JLXv.5qu9PKszBhGONNwINwtXEfZuHuuGB9s+1e6GpVfDULi4FYFS5q+5utXY5QO5QvmOeHe97RBm7j+pqtpz8ObSl5FCVU4s2dajJUJ4h4IO4IQgBEvW7EeAxmOOBFLHJUpDFe7wgttN5omdva8VuEJWtLBFLHFe7wQxjIQxjIwie7iwku7kkogxoN0oDjinzwmMaVXxTMESiE.hal4FOUKep3jSqojuTLgXt4d+NDT+Eb9+4ui8JACSznwZZBDwkmxjBoALu1weG.DU+fSWd1qGjq+FLX.whECtb4BEKVDYxjA.XW79R8yr5M94Q0Po5g.pZgwhECZZZ3JW4Jn0VaEiM1XvgCGHQhDX6s2FCO7vvpUq32+6+8PWWGW6ZWCABD.W5RWB+0+5eEoRkBoRkBW7hWD24N2As2d6X94mG1rYCM2byvjISBSEXsA74yG5s2dEgiiiD.fZyAsRkJcjBGpAh.htttbgkH4PZMvRyC.7K9E+BDOdb4TsSmNQxjIQlLYjDYXQa3zHu9vkTox6wN1wPKszhLoCYk7XxtTMooJ34wiGzUWcg4med4800t10voN0oP3vgwwN1wPqs1JxkKmT8RlDoYylgSmNEuD.6jX7dUO.UzR3FFd+OJ8R..jpcpVfF0MYrMAYnaTlD4gSlfc8dr3W1rKqnWVlTc8S0EhsN6cbmNc90fgcupIP8UOl23i0mOeXngFBW+5WGVrXAczQG35W+5n81aGYxjAFLX.KszRnyN6D28t2UjMms2daQZ3e0W8UwDSLgH0NpQGzSO8Hx9eoRkD4.piN5P75zXiMBa1rIg5VoREQ8JNJKSu+6+9eH+hkUNVUlDYHNjiQbpwzQGcfd5UMlMp..vELkDQAQ0oGQWht4MuofjgCGNPiM1njzEOPo1QW.0rDUtbYr0VaAud8hexO4mH8opGOdfOe9vbyMGJVrHVe80Q5zowm8YeFt3EuHt28tm.2Fmistc6Fs2d6X5omFc2c23F23F3Dm3DXt4lC4xkSNfYxjocMAd.1wxFCOQ0JOODPqwzR+QIm.t4s9MYbyGQWgOezZOulwCMp0ygc2FCWSExyomdZoPXFLTiUorZ7ISlT75vm65yCn9eV8Zi5uiFw1d6swEu3Ewe3O7GfGOdv+4+7evfCNHdzidDdu268j9Y90e8WG4xkCqs1ZXpolRFp4iO93vjoZJRGi2e4kWF82e+HPf.BpYTlNiDIhTvLqVsBmNcJSbSCFLHyCg74yKgNW+075+YS+leyu4CYyjSW7j9DTyVnkEiFqIacLIKxueccc7u9W+Kg3VL4Q0DH4GF9ZvCbNb3.YxjAACFDFLXPXA5ryNqD+82467cvINwIjllQWWGexm7I3pW8pHc5zROOO5nihxkKivgCCa1rg1aucDIRDYX9QO.T2gHTl0GRfZL67ZCyCfd2n2LfCFcHd8TktApEkhapXnOLjHpIN75GGmoDsts1ZKImfFZnADHP.7JuxqfImbR4fEoS.mYXO7gOTjsDRTx5QEp9eV85xdcvnwFaTlTPjgwLuj6d26BfZdCmZpoP1rYwG+weLBEJDVc0UwCe3CkVgEnVukPDdFarwfllFhEKlfuOyOhBI1wO9wga2tk4lFCImFxnWzC8Pv6+9u+GxOjpUAktb4Wf7IlgNwSd..ABD.CO7vPSSSFwp7KfBEJHvpR2V7MGiojxedkJUvq7JuBLZzHhEKFZu81gKWtPO8zCt6cuKz0q0Su974S1TelybFQ+YzzzvDSLAdvCd.t10tFxkKG96+8+tbAgaF3WxNc5bWRBCsbR3GYB9pT9..658O4oOOPQ2xLGBJjrzqP8IYxPKTQcRkRILdeNC2BDHf.sLa4PNr6HsQT4dO4cO8ByCrDvBiFq0nPDpZFNLPMXWomC5ohnowQ9a1rYwHiLBFXfAv8t28va+1uMdq25sPnPgPvfAwe6u82PpTove5O8mPnPgDfIXMN5niNfEKVvniNJLa1L9o+zeJlbxIEcL0fgZJZgWudkA5tKWtj5XwueHyC30Vd89fH53tNDfmvk5SBcM6vgCgy91saWRfzkKWviGOh1yPqKKu7xHWtbn+96W3NxBKr.FarwDoyi83LkWkUVYEYy38u+8Qmc1IrXwhvjPMMMbxSdRY.RjLYRoi1HKD4AaxybtIjaHXw838WUPAngAUXBY7p.6VFEoEWUQ7cuBGRM+C06C+84xkCgCGFyN6rxXqkELZkUVQnP.gjbokVRLrXznQ30qWIGF036Ue+qhXl5ASZzgIoqlaCgEk8YxzSOM9nO5iPhDIv0u90kJ450qW7O9G+CLzPCACFLfYlYFL3fChpUqht5pKjJUJ31sar3hKhKbgKHUw2hEKn2d6Es0VaBKBzzzDMIkdrnGpixd08a0vQ4NcPzBvtc6xHakmXUkjElSfUqVQlLYPKszhPi1b4xg4medL7vCi74yiyd1yhvgCiqbkqHCrCZEa94mWHKWhDIPoRkvsu8sgISlfWudwZqsFVbwEQtb4DsEp4laV3rB2jx+kEwQEUDtT++DP.5cfIHyDNorsTsZUYP+wMn.3q4NtdqQL+K97QpmyMmFMZDKt3hviGOX94mW.ufEBiS1cud8JulD9T2tcKUjlUfm4bPuOL7U0j9ogFVbR5Qir1jGnVe80EE86W8q9U369c+t3S9jOA81au3pW8pBuydm24cvoO8owbyMmjvZjHQv8t28Dw4hvuu4lahyctyI0MRWW+qgXoJiVc3vwgt+8vVGIOApeoU+gFZckVAoZwQKGDIhEWbQgBDrfXM1Xivsa2xrNqRkJHUpTnZ0pBa.+K+k+BBEJjDG4RKsDFXfAfSmNkw6T3vgw5qutjT9W7Eegz9bp2OlWBC4fCYCU9+nZMrgFZXWsXnZkeUOfyDDsZ0pfPlJcCTQSodHHI2X3qo50acccwZoMa1vBKrf.ZfACFD12RzeLYxDRmNsTsX1f4j2L78MkPFFBJoaMCKhd2TSvVcnFxbUpVspHUNO5QOBeuu22C..27l2DCO7vvgCGnb4x3m+y+43S+zOESLwD3Mey2DlMaFABD.whECs0VaXngFB82e+n2d6U3+OUT6855lZ022uvc1qvd12CAevG7Ae3A8jrWISn92X9A7BD4xBiqj32FOdbX1rYzc2cKjlh8hbjHQP+82unz0s2d6ha3e7O9GK0q3V25VnToR3Mey2T5wYWtbICaPN+wFXfAvlatIN6YOKVe80Qtb4jD74FSFmekJUD3HYwq3FWSlLIO2lMadWySLRcAMMMoQvokRhsO6y55S7VsBrTBCUu1p9+6ryNkvL83wCxkKmzDRarwFBLwpSfFtAOTnPR+TyX5UY6KYHJmwCDwLpLCkJUBUqVcW4APde4zoSX2tcbtycN7C+g+PboKcIr95qiomdZotObnAd6aear1Zqg23MdCDMZTzbyMKTkGnl5W2c2cKyUAFFMu9P.ZTSPu98jOKKSevG7Ae3gcmNHOADBQVYtfACJDrqolZBO3AO.UpTA25V2B.PXfZpTovpqtJ762uHNrUqVU54UVM4RkJAfZgnDMZTLv.CfvgCKIEwDdO9wONxkKGdsW60v3iON5pqtvMtwMPznQEQmZunFgpJroR1L9YkVII5N7vASlWMGA5ggbAhfMnB+JsFKz3UAB08haQFLTS576ryNAPMUitToRvlManiN5PnSByMhsMZhDIfOe9D8aREJVZHf4tvNDjIaSRow2ST6YAvtlKEtb4Bm9zmFtb4B+y+4+D4ymGwhECCLv.RHpqs1ZHRjHHTnPn0VaE555RHbwiGWl38znA0MTJs7jlMLDr5QXSsh6OsdBNZh7dcK0bCXLipvpEIRDQxLpVslPpRVL1YmchpUqhye9yKV9uyctChFMJ5s2dkg2vMu4MQ5zoQ+82O5qu9vm8YeFN24NGb61MRkJEVe80QwhEE52Rkw6pW8pnXwhXiM1PFon.6LjF3ETZImGvTsvPuZ.P7VPtsyPAnmEpPx7vqJhSrxl.68nZBXGQyU8eq+9TnPA71u8aKCOkY9p4+aznQQjHQP4xkEiAzqmYylkhUwvan9Io1UczPBOPp5ohc0kJxWTpZHCc+y+4+L9nO5iPe80G762uvLUKVrHdYSjHgbc6QO5QX6s2Fs1ZqR9Vj9Mjbfqu95R3bpp+mACe8F+udIW4oYcnIFWOhF0mjrZBllMaFoRkR7FrxJqf95qOr0VagomdZXzXsgKMoSAg.rs1ZC+te2uCqs1ZvpUqvgCGn+96Gat4lh0irYyJC8AKVrfabiaHHSPQBvrYyROP62ue7vG9PoHcTCJU8noV3m5C6i+cJvXrmnImbXxlr5lTRYHWdHiN4PoduvfWWWWh6kdIpW28ompKe4KiyblyHbrezQGE23F2Pj79zoSKSBRNWxnTTxDfYQJI7qDJa0qEUqVUFYp7yEG1Gd73AgBERnxvEtvEvO3G7CfWudQgBEjYhFGhK4xkSz7UmNchhEKhXwhIpIhUqVkqY550jJSmNcJdRUKnGvN.Z7jZo+vVGZ3PGD0.3EO0PHXHBas0VBRGLwMFKqe+9gttNVd4kkDgFbvAEqnbd65vgCo+UGYjQPrXwjgKMS9jUNrZ0pBOl5qu9jwO5VaskvAEpsk78tIS0ZmSNUdXRjTrnnUTWtbIpUG8nQnGI5P986WjLbJBAO9wOVRvmdRXU30zzjvRb3vgL0dJWtrzbPrGBxkKmveKd8qXwhHUpTxmClD7TSMkDdpttNJVrnPe.B4oZB+974SFD6Nc5THUGaFpfACh0VaMb7iebX0pUjMaVDKVL7du26gye9yihEKJs9Hul3vgCgUoTFVXXVzfCy6PkQADj.0vq2KvDdRN.bX46ZvfgmtvgdRVpI1n13MDVNVUUlHGmEYLNaptYjZ1rQ8CGNrn+Lb5DRzV.1wpAoKMvNHYY2tcYv0oqqKx7G6YgzoSi0We8Zx18W4FmdA3AA2tcKU3kM+MKbSCMzfLZTYm2Q39XBdp0bP0ktp.XwPjXGTcm6bGjNcZY1DuwFafEVXAoKqJVrH74ymP2Dx0J5wkE+izHmdVqVsJBGNLJWtrLen4vXgbNZ4kWF1rYCW3BW.u669tHVrX3wO9wvoSmRnLppTnZHibyn5FStTyIp9+1Kp0y8CAzkV8Y2a1rYw5FKgOqtJk9vRkJIC5623MdCzVasg0VaMAtzlatYYbRYwhEzTSMgUWcUoT5pVZXhcDWYVjoLYxHdR3jnYqs1Rns.U.MBeHwnlVrnN1rxJqHrnsXwhHc5znRkJxl0icriIrWkIo6wiG4PBw+mUUuPgBRhqbFAS0elRKSznQkBkQJov4Db3vgE1hZvfATnPA3wiG4Z.U4iLYx.ylqMn+rZ0JrYylTygRkJg6e+6CqVshAGbP7tu66h.ABHExLRjHRtYDgJ0QYEs1qt1O.V3pdR78h3Pwy8CAbLbxEs7vh0vDGUQjgtCIhE4xkCIRjPnSPgBEvTSMErYylrAkVq00q0wTjvas1ZqXhIlPnIfKWtD71sXwBzzzD9CwuHIBPau81BDnz5FiqmUh1qWuvjISXpolRD4WNdmN9wOtLtqzzzDXIqTohTUalPJMFvCebBqvMcD+dF+OG0oDgnN5nCLxHiHLrblYlQJzH8zw1c0iGOBfEromRmNszSGiLxHRavdwKdQboKcIzUWcIL.lJ6GquC6HNhdiZ9ELODtp+PvdMqjOnPv+ldoqqCCarwFG3qX8mj2qmjCaw3V4EJVtaylMKwlx6GeMIbdL4NN5nRmNMt8susX0g7mgeAvMR..4ymGEKVD2+92W9BjgDvPDb61MVXgEfMa1DhbQDkHhS555Ro7Y3J7vx1ausjLd974wvCOLtxUtBBDH.pTohvweZ0UUjbsYylzdpDRvFZnl9HsvBK.qVsBud8J8cg50GJFA555Hd73Xt4lSvn2sa2BzxbFfICotuJOH1AaD4H1hirFG80WevgCG3W+q+0X6s2VnlRSM0jLMg750qTvNVDtM1XCoh20OYO2uPh9e4RWW+4um.ZQkUZjvfwCOz5T87AgVunELVETSlLIRvgc61Q2c2sTYyLYxfkVZIjJUJ40YxImTrLyD.6ryNQtb4D5UuwFa.+98iJUpH4evX3Y68wCxjmMDp0FarQDHP.L93iiW8UeUb0qdU3ymOjLYR31saQ.fYhwj++ziUSM0jfwOPslAQSSaWzMmC6ZNXy4FLJ2I25V2BZZZhhyQcGR0C.SH1joZxTBGIWDIqgFZHTnPADHP.bpScJAgsEVXAYHHRpWXvfAI2KUK+DtUx9WRC+CZyu5TtQs9I71gYD9Yc8B4P.vNiqSlnDqqfJl3pMKhZb2tc6FO9wOFwiGGEKVDFLX.m9zmV1bSjcXXEM0TSRhZ4xkC8zSO6B6d13NrPXL1axEFUNKwhDwhWwMxrgULZzn7EM45OgAl5.ZhDIDolgTbvnQivue+RcFzzzDrxYeSTpTI4ftCGNPf.Av1aWSakXnXNb3PtdkJUJwqQlLYPas0Fle94Ek4icjEaGx.ABHzu1sa23jm7jxf4lCYaiFMJhr.OrvhjwCyj0sL+E9cH8vSON.6sm.dnp9BJVOr0OOWO2ODvBsvMl7F23CraNpSK37FqXJoELu3ze+8Kk0mj+hHfPXSIAqVXgEjdVNVrXXxImTph4jSN4tHIWjHQfACFjPsnEYx6H0FPhEORWWWlnNrdAQiFE26d2aWg6v7JXHabxOlHQB31saQqWKWtLz00EB4wQUE66aReA1PSMzPCX1YmEKszRn0VaEUqVSB8CFLnrIiIdO3fChnQiht6taAFUhZlllFb3vAVbwEQyM2rzdhz.AEgY94gJPBUXDBAJq77QIwXJ0mp0ro966y60glSvy55YMmhC6wSjHHJPbhaVrXQIjA+98iwGebDOdbQA6X+FuzRKAud8hEVXAofNzJLS.UsHVDSah1D8N..IrGhYOa3+UVYEzZqsJfDvVR0tc6HRjHHPf.X94mG974CO3AO.986GSM0TnPgBHd73R75M0TSxbai8wsKWtP5zok2a986WJDE8.zUWcgPgBgW60dMDJTHTsZU30qWAUmCZcXaDOrN25vd7pe+dXvo9zrNJ4rdj3Nzy62DOKOd0vUX8GHUhsa2tzBeasUsoahlllTGhFZnAg2JpkouXwhBUHnFWRhBp9dhV84HQhghoooAfcRfkDNyjISxFWRVrBEJfXeEaJo7R1RKsficrignQihG9vGhHQhfpUqhBEJHuec5zI5s2dE4oYqs1B81auBciKVrHBDH.VYkUDgSKZznnkVZQ9LPK3Gz5IkQA0+XNpO986w7sBHReQrTIuFQvgVn2byMwniNJZu81Q1rYQu81KRkJElc1YgISlvctycP73w2UKTlHQBAq9u7K+RoRx555R7wFMZTZmzpUqIkkjYkACFDqrxJRq.xhBBry.2ldTRjHA5pqtfACFv.CL.5niNvXiMFrXwhnUmL7r3wiifACJGTAfnDzyLyLRnam5TmBSO8zHSlLHb3vHPf.RionFZFS39apuCT+2mlG6S6i+Yc8+4CG5v96ppw.SPlutjmIe5m9oRCdyoY+latI5niNPSM0DFczQwm+4etX4uPgB6RoFb3vgLA1YkkWc0UgOe9jBQwNmyhEKHQhDBm+I8HHY13Ah.ABH8I6LyLC5ryNQjHQvlatIFe7ww+9e+uge+9wst0svpqtJhGOtnGrlLYBgBER543EWbQjLYRA4GR3O1oc8zSOHXvfxvIgETTEYmm10dENS8+7As1KOIOIO9mjm+8a8+6ODnJYJpsAIuwMcL12zoSikWdYbyadSTrXQblybFzc2cCCFpIMHiM1XBEfKTn.dvCd.ra2NVd4kwxKurvmGNRRIV+rtC1saWn9LIZVCMz.RmNs.CLaJ7M2r1PuSUX.3j2zkKWHSlLX7wGWDSflatYjMaVzWe8ISDd61siQFYD74e9mK89Pas0lnHHTAG.1ABSVLvRkJ8L6Mn9Z7T+OeXq5qJ72zdB9VwgfCaohr.e9TuQ7rIjkrJ0tb4RRjNSlLnPgB6RSbHI19xu7KgIS0D524laNYNYkKWNglGISlD974CZZZ3rm8rvue+HQhDBTvDJSpwPjJ3Ku7xBY83HOxtc6n4laVlECD8FRigRkJAqVsJJ31ryNKlc1Ywku7kEh78y9Y+LANSVPRxVSV2FtY6v5Q2mTiT0GVzSx2u60ggm24TB7sfCADlu5uwECQhUL1nwczUIFJEoeAofAoEPkJU1UqLlOedTnPAA4IRjNNGn862O5s2dE3HYM.3qIOvxVcjulqu95HYxjRRuMzPs44E8hs1ZqIIqSd8vJyREmi4LP0gnToRnolZZW0igEfRswepuptOoe+bXIFeT+9c+7F7xCAGgEsjo1wXpUbrXwhB6RIUfIiKat4lQ4xkkmCNn3XsMHe2Yh2r2DH16.PnaAoKNvN5+I+WFVlPc2u5fIKFEOTX2tcop3jRGjNE974SHZn5zDhsFIo9.kOdNSfAfz9mzSHObjMa1CsQ0OpGBdV2DueIV+B4PvZqs1KN1JsGqm2jk548y+yZY8ediFxy6meV0bUE3PkpKFLryDMh0ZgfNPcoRSSS71RcVh8q8KBxzcvAD9x0KWGxRkjgpGBn2mCa4xkKYlT.Tyypttt3w8Ew5kGBd45YZY0pUTnPALyLyHMy+LyLCJVrnPS5CZQFxlLYRQv.XdQeSnoPGk02JJV1+KWOIUT8aiKleCkVFcccI2CUUsa+VEJTP5JOVmE1ofunVu7PvKWOSqxkKiVZoEQlcz00Q3vgQCMz.lZpoDohY+Vr6.IU2YtEjwsGF5UeSr9uLCkthxgLBQb.....jTQNQjqBAlf" ],
													"embed" : 1,
													"id" : "obj-10",
													"maxclass" : "fpic",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "jit_matrix" ],
													"patching_rect" : [ 490.725000000000023, 12.0, 80.0, 99.0 ],
													"pic" : "Macintosh HD:/Users/orjansandred/Desktop/Unknown.jpeg"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-17",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 580.600000000000023, 64.0, 246.0, 47.0 ],
													"text" : "Giovanni Palestrina:\nsoprano voice from the beginning \nof the Marcellus mass."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 408.600000000000023, 89.0, 39.0, 22.0 ],
													"text" : "dump"
												}

											}
, 											{
												"box" : 												{
													"bwcompatibility" : 80100,
													"defaultnoteslots" : [ "null" ],
													"fontface" : 0,
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-6",
													"loop" : [ "[", 1, 1, 0, "]", "[", 1, 2, 0, "]" ],
													"maxclass" : "bach.score",
													"numinlets" : 7,
													"numoutlets" : 9,
													"numvoices" : 1,
													"out" : "nnnnnnnn",
													"outlettype" : [ "", "", "", "", "", "", "", "", "bang" ],
													"patching_rect" : [ 408.600000000000023, 116.0, 534.0, 100.0 ],
													"pitcheditrange" : [ "null" ],
													"stafflines" : [ 5 ],
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"versionnumber" : 80102,
													"voicenames" : [ "[", "]" ],
													"voicespacing" : [ 0.0, 26.0 ],
													"whole_score_data_0000000000" : [ "score", "[", "slotinfo", "[", 1, "[", "name", "velocity envelope", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 2, "[", "name", "slot function", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 3, "[", "name", "slot intlist", "]", "[", "type", "intlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 4, "[", "name", "slot floatlist", "]", "[", "type", "floatlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 5, "[", "name", "slot int", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 6, "[", "name", "slot float", "]", "[", "type", "float", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 7, "[", "name", "slot text", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 8, "[", "name", "slot filelist", "]", "[", "type", "filelist", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080213504, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 9, "[", "name", "slot spat", "]", "[", "type", "spat", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076101120, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 10, "[", "name", "slot llll", "]", "[", "type", "llll", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 11, "[", "name", "slot 11", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 12, "[", "name", "slot 12", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 13, "[", "name", "slot 13", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 14, "[", "name", "slot 14", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 15, "[", "name", "slot 15", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 16, "[", "name", "slot 16", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 17, "[", "name", "slot 17", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 18, "[", "name", "slot 18", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 19, "[", "name", "slot 19", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 20, "[", "name", "dynamics", "]", "[", "type", "dynamics", "]", "[", "key", "d", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 21, "[", "name", "lyrics", "]", "[", "type", "text", "]", "[", "key", "l", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 22, "[", "name", "articulations", "]", "[", "type", "articulations", "]", "[", "key", "a", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 23, "[", "name", "notehead", "]", "[", "type", "notehead", "]", "[", "key", "h", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 24, "[", "name", "annotation", "]", "[", "type", "text", "]", "[", "key", "t", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 25, "[", "name", "slot 25", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 26, "[", "name", "slot 26", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 27, "[", "name", "slot 27", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 28, "[", "name", "slot 28", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 29, "[", "name", "slot 29", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 30, "[", "name", "slot 30", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "]", "[", "commands", "[", 1, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 2, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 3, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 4, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 5, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "]", "[", "markers", "]", "[", "midichannels", 1, "]", "[", "articulationinfo", "]", "[", "noteheadinfo", "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "1/2", "[", "E6", 100, 1, 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "E6", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "E6", 100, 0, 0, "]", 0, "]", "]", "[", "1/2", "[", "E6", 100, 0, 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 2, "]", "[", "3/8", "[", "G6", 100, 0, 0, "]", 0, "]", "[", "1/8", "[", "F6", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/8", "[", "E6", 100, 0, 0, "]", 0, "]", "[", "1/8", "[", "D6", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/8", "[", "C6", 100, 0, 0, "]", 0, "]", "[", "1/8", "[", "B5", 100, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/8", "[", "A5", 100, 0, 0, "]", 0, "]", "[", "1/8", "[", "G5", 100, 0, 0, "]", 0, "]", "]", "[", "1/2", "[", "G5", 100, 0, 0, "]", 0, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085917184, 100, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "G5", 100, 0, 0, "]", 0, "]", "[", "1/2", "[", "D6", 100, 0, 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 2, "]", "[", "3/8", "[", "B5", 100, 0, 0, "]", 0, "]", "[", "1/8", "[", "A5", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/8", "[", "B5", 100, 0, 0, "]", 0, "]", "[", "1/8", "[", "C6", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "D6", 100, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 2, "]", "[", "3/8", "[", "E6", 100, 0, 0, "]", 0, "]", "[", "1/8", "[", "D6", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/8", "[", "C6", 100, 0, 0, "]", 0, "]", "[", "1/8", "[", "A5", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "D6", 100, 1, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/8", "[", "D6", 100, 0, 0, "]", 0, "]", "[", "1/8", "[", "C6", 100, 0, 0, "]", 0, "]", "]", "[", "1/2", "[", "C6", 100, 0, 0, "]", 0, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "B5", 100, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", 1, "[", "C6", 100, 0, 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "1/2", "[", "C6", 100, 0, 0, "]", 0, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "C6", 100, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "C6", 100, 0, 0, "]", 0, "]", "[", "1/2", "[", "F6", 100, 0, 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", 1, "[", "E6", 100, 0, 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "1/2", "[", "C6", 100, 0, 0, "]", 0, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "C6", 100, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "C6", 100, 0, 0, "]", 0, "]", "[", "1/2", "[", "F6", 100, 0, 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "E6", 100, 0, 0, "]", 0, "]", "[", "1/2", "[", "D6", 100, 0, 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "E6", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "F6", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "D6", 100, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "E6", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "C6", 100, 0, 0, "]", 0, "]", "]", "[", "1/2", "[", "D6", 100, 0, 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "C6", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "E6", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "F6", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "D6", 100, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "E6", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 2, "]", "[", "3/8", "[", "C6", 100, 0, 0, "]", 0, "]", "[", "1/8", "[", "B5", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "A5", 100, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "G5", 100, 0, 0, "]", 0, "]", "]", "[", "1/2", "[", "C6", 100, 0, 0, "]", 0, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "B5", 100, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", 1, "[", "C6", 100, 0, 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]" ],
													"whole_score_data_count" : [ 1 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 346.0, 438.0, 156.0, 22.0 ],
													"reg_data_0000000000" : [ "[", "FUNCTION", "[", "LAMBDA", "[", "CLUSTER-ENGINE::SEQ", "]", "[", "LET", "[", "[", "CLUSTER-ENGINE::MARKOV-TABLE-TEST", "[", "CLUSTER-ENGINE::MAKE-1ST-ORDER-MARKOV-ANALYSIS-OF-SEQUENCE", "CLUSTER-ENGINE::SEQ", "[", "LIST", "-1/2", "1/2", "3/4", "1/4", "3/8", "1/8", 1, "-1/4", -1, "]", "]", "]", "]", "[", "DECLARE", "[", "TYPE", "LIST", "CLUSTER-ENGINE::MARKOV-TABLE-TEST", "]", "]", "[", "CLUSTER-ENGINE::CHECK-MARKOV-TABLES-WITHIN-MAX-DEVIATION", "'", "[", "[", "[", "[", "-1/2", "-1/2", "]", "NIL", "]", "[", "[", "-1/2", "1/2", "]", "NIL", "]", "[", "[", "-1/2", "3/4", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "[", "-1/2", "1/4", "]", "NIL", "]", "[", "[", "-1/2", "3/8", "]", "NIL", "]", "[", "[", "-1/2", "1/8", "]", "NIL", "]", "[", "[", "-1/2", 1, "]", "NIL", "]", "[", "[", "-1/2", "-1/4", "]", "NIL", "]", "[", "[", "-1/2", -1, "]", "NIL", "]", "]", "[", "[", "[", "1/2", "-1/2", "]", "NIL", "]", "[", "[", "1/2", "1/2", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 3238611500, 1077979818, "]", "[", "[", "1/2", "3/4", "]", "NIL", "]", "[", "[", "1/2", "1/4", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078198272, "]", "[", "[", "1/2", "3/8", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 3238611500, 1076538026, "]", "[", "[", "1/2", "1/8", "]", "NIL", "]", "[", "[", "1/2", 1, "]", "_x_x_x_x_bach_float64_x_x_x_x_", 3238611500, 1075489450, "]", "[", "[", "1/2", "-1/4", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 3238611500, 1075489450, "]", "[", "[", "1/2", -1, "]", "NIL", "]", "]", "[", "[", "[", "3/4", "-1/2", "]", "NIL", "]", "[", "[", "3/4", "1/2", "]", "NIL", "]", "[", "[", "3/4", "3/4", "]", "NIL", "]", "[", "[", "3/4", "1/4", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "[", "3/4", "3/8", "]", "NIL", "]", "[", "[", "3/4", "1/8", "]", "NIL", "]", "[", "[", "3/4", 1, "]", "NIL", "]", "[", "[", "3/4", "-1/4", "]", "NIL", "]", "[", "[", "3/4", -1, "]", "NIL", "]", "]", "[", "[", "[", "1/4", "-1/2", "]", "NIL", "]", "[", "[", "1/4", "1/2", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 3176214215, 1077908533, "]", "[", "[", "1/4", "3/4", "]", "NIL", "]", "[", "[", "1/4", "1/4", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 2082475023, 1078439720, "]", "[", "[", "1/4", "3/8", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 1248770331, 1076170105, "]", "[", "[", "1/4", "1/8", "]", "NIL", "]", "[", "[", "1/4", 1, "]", "_x_x_x_x_bach_float64_x_x_x_x_", 1248770331, 1076170105, "]", "[", "[", "1/4", "-1/4", "]", "NIL", "]", "[", "[", "1/4", -1, "]", "NIL", "]", "]", "[", "[", "[", "3/8", "-1/2", "]", "NIL", "]", "[", "[", "3/8", "1/2", "]", "NIL", "]", "[", "[", "3/8", "3/4", "]", "NIL", "]", "[", "[", "3/8", "1/4", "]", "NIL", "]", "[", "[", "3/8", "3/8", "]", "NIL", "]", "[", "[", "3/8", "1/8", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "[", "3/8", 1, "]", "NIL", "]", "[", "[", "3/8", "-1/4", "]", "NIL", "]", "[", "[", "3/8", -1, "]", "NIL", "]", "]", "[", "[", "[", "1/8", "-1/2", "]", "NIL", "]", "[", "[", "1/8", "1/2", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 3238611500, 1076538026, "]", "[", "[", "1/8", "3/4", "]", "NIL", "]", "[", "[", "1/8", "1/4", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 3238611500, 1076538026, "]", "[", "[", "1/8", "3/8", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 3238611500, 1075489450, "]", "[", "[", "1/8", "1/8", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 3097874011, 1079028394, "]", "[", "[", "1/8", 1, "]", "NIL", "]", "[", "[", "1/8", "-1/4", "]", "NIL", "]", "[", "[", "1/8", -1, "]", "NIL", "]", "]", "[", "[", "[", 1, "-1/2", "]", "NIL", "]", "[", "[", 1, "1/2", "]", "NIL", "]", "[", "[", 1, "3/4", "]", "NIL", "]", "[", "[", 1, "1/4", "]", "NIL", "]", "[", "[", 1, "3/8", "]", "NIL", "]", "[", "[", 1, "1/8", "]", "NIL", "]", "[", "[", 1, 1, "]", "NIL", "]", "[", "[", 1, "-1/4", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "[", 1, -1, "]", "NIL", "]", "]", "[", "[", "[", "-1/4", "-1/2", "]", "NIL", "]", "[", "[", "-1/4", "1/2", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 3097874011, 1079028394, "]", "[", "[", "-1/4", "3/4", "]", "NIL", "]", "[", "[", "-1/4", "1/4", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 3238611500, 1077979818, "]", "[", "[", "-1/4", "3/8", "]", "NIL", "]", "[", "[", "-1/4", "1/8", "]", "NIL", "]", "[", "[", "-1/4", 1, "]", "NIL", "]", "[", "[", "-1/4", "-1/4", "]", "NIL", "]", "[", "[", "-1/4", -1, "]", "NIL", "]", "]", "[", "[", "[", -1, "-1/2", "]", "NIL", "]", "[", "[", -1, "1/2", "]", "NIL", "]", "[", "[", -1, "3/4", "]", "NIL", "]", "[", "[", -1, "1/4", "]", "NIL", "]", "[", "[", -1, "3/8", "]", "NIL", "]", "[", "[", -1, "1/8", "]", "NIL", "]", "[", "[", -1, 1, "]", "NIL", "]", "[", "[", -1, "-1/4", "]", "NIL", "]", "[", "[", -1, -1, "]", "NIL", "]", "]", "]", "CLUSTER-ENGINE::MARKOV-TABLE-TEST", 10, "]", "]", "]", "]" ],
													"reg_data_count" : [ 1 ],
													"saved_object_attributes" : 													{
														"embed" : 1,
														"versionnumber" : 80100
													}
,
													"text" : "bach.reg @embed 1 @out t"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-9",
													"linecount" : 19,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 537.0, 268.5, 657.0, 263.0 ],
													"text" : "A common way to use a Markov chain in music is to first analyse a piece of music \nto create a transition matrix. The transition matrix will contain all probabilities \nfor an event (for example a pitch or a duration) to be followed by another event \n(another pitch or duration) in a sequence.\n\nIn the Lisp code of the Cluster-Engine library, there are two functions \nthat will help you create a Markov chain rule:\n\n1) 'ce::make-1st-order-markov-analysis-of-sequence' can take an existing sequence \n    of events and calculate a transition matrix.\n\n2) 'ce::test-seq-follows-markov-chain?' will create a rule \n   (i.e. a lambda expression that can be attached to a rule accessor) \n   from a sequence of events and checks if it is an acceptable representation \n   of its transition matrix.\n\n\nNote that the r-one-engine module has its rule input parameter set to :all-durations, \nsince the Markov rule needs a full representation of the score as it is being constructed."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 65.0, 155.0, 188.0, 22.0 ],
													"text" : "loadmess rule_input :all-durations"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 99.75, 189.0, 50.0, 22.0 ],
													"text" : "r voices"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 1,
															"revision" : 5,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 34.0, 79.0, 1129.0, 654.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"fontname" : "Andale Mono",
																	"id" : "obj-33",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 356.5, 156.0, 325.0, 20.0 ],
																	"text" : "Incoming durations from the Palestrina score"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-29",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 27.0, 156.0, 326.0, 22.0 ],
																	"saved_object_attributes" : 																	{
																		"embed" : 0,
																		"versionnumber" : 80102
																	}
,
																	"text" : "bach.reg"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-22",
																	"index" : 2,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 334.0, 23.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Andale Mono",
																	"id" : "obj-35",
																	"linecount" : 2,
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 169.0, 389.5, 527.0, 33.0 ],
																	"text" : "This function calculates the transition matrix for the rhythm sequence. \nJust look inside the bach.reg to see what it looks like !"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Andale Mono",
																	"id" : "obj-32",
																	"linecount" : 4,
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 261.0, 280.0, 112.0, 60.0 ],
																	"text" : "A list of all existing note values in the example"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-31",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "" ],
																	"patching_rect" : [ 27.0, 201.0, 367.0, 22.0 ],
																	"text" : "t l l"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-30",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 375.000000000000114, 286.0, 64.0, 22.0 ],
																	"saved_object_attributes" : 																	{
																		"versionnumber" : 80102
																	}
,
																	"text" : "bach.wrap"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-28",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 375.000000000000114, 318.0, 57.0, 22.0 ],
																	"text" : "pw.quote"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-27",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 3,
																	"outlettype" : [ "", "", "" ],
																	"patching_rect" : [ 375.000000000000114, 258.0, 57.0, 22.0 ],
																	"saved_object_attributes" : 																	{
																		"versionnumber" : 80102
																	}
,
																	"text" : "bach.thin"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-26",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 375.000000000000114, 231.0, 54.0, 22.0 ],
																	"saved_object_attributes" : 																	{
																		"versionnumber" : 80102
																	}
,
																	"text" : "bach.flat"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-15",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 27.0, 322.0, 57.0, 22.0 ],
																	"text" : "pw.quote"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-19",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 79.0, 417.295454545454561, 55.0, 22.0 ],
																	"saved_object_attributes" : 																	{
																		"embed" : 0,
																		"versionnumber" : 80102
																	}
,
																	"text" : "bach.reg"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-20",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 79.0, 389.5, 80.0, 22.0 ],
																	"text" : "lisp.quickeval"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-16",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 27.0, 348.0, 367.0, 22.0 ],
																	"text" : "lisp.expr ce::make-1st-order-markov-analysis-of-sequence table var"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-3",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 27.0, 461.0, 758.0, 22.0 ],
																	"text" : "lisp.expr ce::test-seq-follows-markov-chain? markov-table 0"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-7",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "bang" ],
																	"patching_rect" : [ 27.0, 98.0, 758.0, 22.0 ],
																	"text" : "t b b"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Andale Mono",
																	"id" : "obj-9",
																	"linecount" : 4,
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 62.0, 500.0, 707.0, 60.0 ],
																	"text" : "This function will generate the markov rule base on the given transition matrix and deviation. \nIf the deviation is set to 0, all transition that were not found will be set to nil \n— this indicates that they will not be allowed at any point in the generated sequence. \nA probability of 0% in combination with a deviation more than 0% might make the transition occur."
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Andale Mono",
																	"id" : "obj-8",
																	"linecount" : 3,
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 809.0, 389.5, 261.0, 47.0 ],
																	"text" : "How much the generated sequence is allowed to deviate from the given transition matrix (in %)."
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-4",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 27.0, 562.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-2",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"patching_rect" : [ 27.0, 19.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-58",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 766.0, 400.499999999999943, 29.5, 22.0 ],
																	"text" : "0"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 0 ],
																	"source" : [ "obj-15", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-20", 0 ],
																	"order" : 0,
																	"source" : [ "obj-16", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 0 ],
																	"order" : 1,
																	"source" : [ "obj-16", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-7", 0 ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-19", 0 ],
																	"source" : [ "obj-20", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-29", 1 ],
																	"source" : [ "obj-22", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-27", 0 ],
																	"source" : [ "obj-26", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-30", 0 ],
																	"source" : [ "obj-27", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-16", 1 ],
																	"source" : [ "obj-28", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-31", 0 ],
																	"source" : [ "obj-29", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-4", 0 ],
																	"source" : [ "obj-3", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-28", 0 ],
																	"source" : [ "obj-30", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-15", 0 ],
																	"source" : [ "obj-31", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-26", 0 ],
																	"source" : [ "obj-31", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-3", 1 ],
																	"source" : [ "obj-58", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-29", 0 ],
																	"source" : [ "obj-7", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-58", 0 ],
																	"source" : [ "obj-7", 1 ]
																}

															}
 ],
														"styles" : [ 															{
																"name" : "MOZ-numint",
																"default" : 																{
																	"fontsize" : [ 17.0 ],
																	"fontname" : [ "Menlo Regular" ],
																	"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "MOZ-param",
																"default" : 																{
																	"fontsize" : [ 16.0 ],
																	"fontname" : [ "Menlo Regular" ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "MOZ-title",
																"default" : 																{
																	"fontsize" : [ 22.062094355029235 ],
																	"fontname" : [ "Andale Mono" ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "MOZ-umenu",
																"default" : 																{
																	"bgfillcolor" : 																	{
																		"type" : "color",
																		"color1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
																		"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
																		"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
																		"angle" : 270.0,
																		"proportion" : 0.5,
																		"autogradient" : 0.0
																	}
,
																	"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
																	"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
																	"fontname" : [ "Menlo Regular" ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"fontface" : [ 2 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "SPLIM",
																"parentstyle" : "comment001",
																"multi" : 0
															}
, 															{
																"name" : "comment001",
																"default" : 																{
																	"fontsize" : [ 18.0 ],
																	"fontname" : [ "Herculanum" ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "ksliderWhite",
																"default" : 																{
																	"color" : [ 1, 1, 1, 1 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "message001",
																"default" : 																{
																	"fontsize" : [ 13.0 ],
																	"fontname" : [ "Arial" ],
																	"textcolor_inverse" : [ 0.92549, 0.364706, 0.341176, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "newobjBlue-1",
																"default" : 																{
																	"accentcolor" : [ 0.317647, 0.654902, 0.976471, 1 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "newobjGreen-1",
																"default" : 																{
																	"accentcolor" : [ 0, 0.533333, 0.168627, 1 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "numberGold-1",
																"default" : 																{
																	"accentcolor" : [ 0.764706, 0.592157, 0.101961, 1 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
, 															{
																"name" : "orjan style",
																"default" : 																{
																	"bgfillcolor" : 																	{
																		"type" : "gradient",
																		"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
																		"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
																		"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
																		"angle" : 270.0,
																		"proportion" : 0.39,
																		"autogradient" : 0
																	}
,
																	"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
																	"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
																	"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
																	"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ]
																}
,
																"parentstyle" : "",
																"multi" : 0
															}
 ]
													}
,
													"patching_rect" : [ 367.0, 259.5, 135.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p lamba-markov-rhythm"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-72",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-one-engine.maxpat",
													"numinlets" : 5,
													"numoutlets" : 2,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 31.0, 222.0, 294.0, 97.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-63",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 31.0, 38.5, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-65",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 31.0, 620.625488000000018, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 1 ],
													"order" : 1,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-72", 1 ],
													"order" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"order" : 1,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-72", 0 ],
													"order" : 0,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 1 ],
													"source" : [ "obj-21", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-22", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-72", 0 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-65", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-3", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-72", 4 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-72", 0 ],
													"source" : [ "obj-63", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 4 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-72", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-72", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "MOZ-numint",
												"default" : 												{
													"fontsize" : [ 17.0 ],
													"fontname" : [ "Menlo Regular" ],
													"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-param",
												"default" : 												{
													"fontsize" : [ 16.0 ],
													"fontname" : [ "Menlo Regular" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-title",
												"default" : 												{
													"fontsize" : [ 22.062094355029235 ],
													"fontname" : [ "Andale Mono" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-umenu",
												"default" : 												{
													"bgfillcolor" : 													{
														"type" : "color",
														"color1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
														"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
														"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
														"angle" : 270.0,
														"proportion" : 0.5,
														"autogradient" : 0.0
													}
,
													"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
													"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
													"fontname" : [ "Menlo Regular" ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontface" : [ 2 ]
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
													"fontsize" : [ 18.0 ],
													"fontname" : [ "Herculanum" ]
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
													"fontsize" : [ 13.0 ],
													"fontname" : [ "Arial" ],
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
													"bgfillcolor" : 													{
														"type" : "gradient",
														"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
														"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
														"angle" : 270.0,
														"proportion" : 0.39,
														"autogradient" : 0
													}
,
													"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
													"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
													"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ]
									}
,
									"patching_rect" : [ 23.0, 123.0, 115.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p markov-chain-rule"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 104.0, 1132.0, 433.0 ],
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
													"id" : "obj-9",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 97.0, 220.0, 167.0, 22.0 ],
													"text" : "rule_parameter :rhythm&pitch"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 97.0, 90.0, 91.0, 22.0 ],
													"text" : "rule_input :beat"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-8",
													"linecount" : 10,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 371.0, 116.0, 714.0, 141.0 ],
													"text" : "These two rules restrict the relation between voices.\n\n- the first rule defines which chords are allowed to happen \n  between voices at main beats (in between beats the harmony is not checked). \n  For the 2-voice example, the harmonic intervals can be a minor / major 3rd or their inversions. \n  For the 3-voice example, the 3 voices can make up any inversion of minor or major triads.\n\n- the second rule restricts the second voice to follow the first voice in a canon in 5ths, \n  starting 1/2 note after the first voice. In the 3-voice example, only the two top voices \n  are connected in a canon."
												}

											}
, 											{
												"box" : 												{
													"hidden" : 1,
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 90.0, 22.0, 117.0, 22.0 ],
													"text" : "loadmess collapse 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 97.0, 60.0, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 184.0, 60.0, 63.0, 22.0 ],
													"text" : "r harmony"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 147.0, 144.0, 50.0, 22.0 ],
													"text" : "r voices"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-40",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-chords.maxpat",
													"numinlets" : 4,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 52.0, 173.0, 304.0, 27.0 ],
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
													"id" : "obj-47",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-canon.maxpat",
													"numinlets" : 2,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 52.0, 252.0, 238.0, 25.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-59",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 52.0, 22.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-60",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 52.0, 350.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 1 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"order" : 1,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"order" : 0,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 0 ],
													"hidden" : 1,
													"order" : 1,
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 0 ],
													"hidden" : 1,
													"order" : 0,
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 0 ],
													"source" : [ "obj-40", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-60", 0 ],
													"source" : [ "obj-47", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 0 ],
													"midpoints" : [ 106.5, 132.0, 61.5, 132.0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 0 ],
													"source" : [ "obj-59", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 0 ],
													"midpoints" : [ 193.5, 131.0, 61.5, 131.0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 23.0, 223.671428571428578, 106.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p polyphonic-rules"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 242.0, 935.0, 509.0 ],
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
													"hidden" : 1,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 338.0, 15.0, 50.0, 22.0 ],
													"text" : "r voices"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-29",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-note-meter.maxpat",
													"numinlets" : 5,
													"numoutlets" : 2,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 91.0, 104.0, 304.0, 27.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"hidden" : 1,
													"id" : "obj-39",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 202.5, 15.0, 117.0, 22.0 ],
													"text" : "loadmess collapse 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 135.0, 15.0, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-37",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 135.0, 150.5, 82.0, 22.0 ],
													"text" : "format :d_offs"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-35",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 121.0, 63.0, 224.0, 22.0 ],
													"text" : "format :d_offs, metric_structure :1st-beat"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-32",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 435.5, 192.0, 212.0, 35.0 ],
													"text" : "#'(lambda (x) (if (member (first x) '(1/4 3/4 1/2 3/8)) (= (second x) 0) t))"
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
													"maxclass" : "bpatcher",
													"name" : "cluster.r-note-meter.maxpat",
													"numinlets" : 5,
													"numoutlets" : 2,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 91.0, 200.0, 304.0, 27.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-31",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 435.5, 100.0, 200.0, 35.0 ],
													"text" : "#'(lambda (x) (case (first x) ((1) (= 0 (second x)) ) (t t) ) )"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-56",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 91.0, 11.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-57",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 91.0, 296.931641000000013, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-3",
													"linecount" : 13,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 175.0, 255.931641000000013, 664.0, 182.0 ],
													"text" : "These two rules restrict how durations relate to the meter. \nSee the Metric rules section in this overview to know more.\n\nThe Markov chain rule discussed in another sub-patch does not take the meter into account, \nthis is why this rule is necessary.\n\nClick on the name of one of the modules to expand it and see its settings :\n\n- the first rule restricts whole notes to only begin \n  at the downbeat of a measure (i.e. no syncopation is allowed)\n\n- the second rule restricts the durations 1/4, 3/4, 1/2 and 3/8 \n  to only begin at (1/4 note) beat in the measure (i.e. no syncopation is allowed)."
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 1 ],
													"hidden" : 1,
													"order" : 1,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 1 ],
													"hidden" : 1,
													"order" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-29", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 4 ],
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 4 ],
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"source" : [ "obj-33", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-57", 0 ],
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"order" : 1,
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"order" : 0,
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"hidden" : 1,
													"order" : 1,
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-33", 0 ],
													"hidden" : 1,
													"order" : 0,
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"source" : [ "obj-56", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 23.0, 189.1142857142857, 120.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p rhythm-meter-rules"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 79.0, 1216.0, 580.0 ],
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
													"fontname" : "Andale Mono",
													"id" : "obj-20",
													"linecount" : 16,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 570.0, 163.0, 642.0, 222.0 ],
													"text" : "These five rules restrict how melodic intervals relate to durations.\nSee the mel-interval section in this overview to know more.\n\nClick on the name of one of the modules to expand it and see its settings:\n\n- durations 1/8 and 3/8 can only have minor / major 2nd as melodic intervals\n\n- duration 1/4 can only have melodic intervals smaller than a tritone\n\n- duration 1/2 can only have minor / major 2nds, minor / major 3rds, 4ths and 5ths \n  as melodic intervals\n\n- duration 3/4 are always a repeated note (0 semitone)\n\n- duration 1 (or 4/4) can only have minor / major 2nds, minor / major 3rds, 4ths, 5ths,    \n  minor 6ths and octaves as melodic intervals"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 533.0, 25.0, 50.0, 22.0 ],
													"text" : "r voices"
												}

											}
, 											{
												"box" : 												{
													"hidden" : 1,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 118.5, 35.0, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-2",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-mel-interval-one-voice.maxpat",
													"numinlets" : 4,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 59.0, 148.0, 306.0, 31.0 ],
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
													"id" : "obj-10",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-mel-interval-one-voice.maxpat",
													"numinlets" : 4,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 59.0, 215.0, 306.0, 31.0 ],
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
													"id" : "obj-12",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-mel-interval-one-voice.maxpat",
													"numinlets" : 4,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 59.0, 296.0, 306.0, 31.0 ],
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
													"id" : "obj-14",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-mel-interval-one-voice.maxpat",
													"numinlets" : 4,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 59.0, 369.0, 306.0, 31.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"hidden" : 1,
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 187.0, 39.0, 117.0, 22.0 ],
													"text" : "loadmess collapse 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 83.0, 407.0, 342.0, 22.0 ],
													"text" : "durations 1, intervals 0 1 2 3 4 5 7 8 12, then_interval :member"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-21",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-mel-interval-one-voice.maxpat",
													"numinlets" : 4,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 59.0, 446.0, 306.0, 31.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-19",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 78.0, 331.0, 139.0, 22.0 ],
													"text" : "durations 3/4, intervals 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 83.0, 260.0, 325.0, 22.0 ],
													"text" : "durations 1/2, intervals 0 1 2 3 4 5 7, then_interval :member"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 82.0, 185.0, 287.0, 22.0 ],
													"text" : "durations 1/4, intervals 6, then_interval :smaller-than"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 78.0, 107.432838359696916, 408.0, 22.0 ],
													"text" : "durations 1/8 3/8, intervals 1 2, if_duration :member, then_interval :member"
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
													"patching_rect" : [ 59.0, 35.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-54",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 59.0, 537.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"hidden" : 1,
													"order" : 1,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"hidden" : 1,
													"order" : 3,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"hidden" : 1,
													"order" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"hidden" : 1,
													"order" : 4,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"hidden" : 1,
													"order" : 2,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 0 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"hidden" : 1,
													"order" : 4,
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"hidden" : 1,
													"order" : 3,
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"hidden" : 1,
													"order" : 2,
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"hidden" : 1,
													"order" : 1,
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"hidden" : 1,
													"order" : 0,
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 1 ],
													"midpoints" : [ 542.5, 210.0, 164.166666666666686, 210.0 ],
													"order" : 4,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 1 ],
													"midpoints" : [ 542.5, 291.0, 164.166666666666686, 291.0 ],
													"order" : 3,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 1 ],
													"midpoints" : [ 542.5, 360.0, 164.166666666666686, 360.0 ],
													"order" : 2,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 1 ],
													"midpoints" : [ 542.5, 142.0, 164.166666666666686, 142.0 ],
													"order" : 1,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 1 ],
													"midpoints" : [ 542.5, 439.0, 164.166666666666686, 439.0 ],
													"order" : 0,
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 23.0, 154.55714285714285, 90.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p melodic-rules"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 874.375, 703.5, 95.0, 22.0 ],
									"text" : "bach.ezmidiplay"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 209.875, 347.43284789644008, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 23.0, 11.333333333333371, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 79.0, 652.0, 782.0 ],
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
													"id" : "obj-1",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 308.0, 314.400007784366721, 219.0, 35.0 ],
													"text" : "[ 48 ] [ 50 ] [ 52 ] [ 53 ] [ 55 ] [ 57 ] [ 60 ] [ 62 ] [ 64 ] [ 65 ] [ 67 ] [ 69 ] [ 71 ] [ 72 ]"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 328.0, 82.400007784366721, 219.0, 35.0 ],
													"text" : "[ 55 ] [ 57 ] [ 59 ] [ 60 ] [ 62 ] [ 64 ] [ 67 ] [ 69 ] [ 71 ] [ 72 ] [ 74 ] [ 76 ] [ 79 ]"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-23",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 18.0, 604.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-10",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.voice-domain.maxpat",
													"numinlets" : 3,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 18.0, 377.0, 233.0, 174.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-2",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 18.0, 63.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 60.583331942558289, 124.0, 54.0, 22.0 ],
													"text" : "deferlow"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 125.0, 135.400007784366721, 69.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80102
													}
,
													"text" : "bach.group"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 12.0,
													"id" : "obj-19",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 125.0, 95.400007784366721, 177.0, 22.0 ],
													"text" : "-1/2 1/2 3/4 1/4 3/8 1/8 1 -1/4 -1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 125.0, 32.0, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-96",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.voice-domain.maxpat",
													"numinlets" : 3,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 18.0, 182.0, 233.0, 174.0 ],
													"viewvisibility" : 1
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 2 ],
													"midpoints" : [ 317.5, 362.700003892183361, 241.5, 362.700003892183361 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-96", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-96", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 1 ],
													"order" : 1,
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-96", 1 ],
													"order" : 0,
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-96", 2 ],
													"midpoints" : [ 337.5, 149.200003892183361, 241.5, 149.200003892183361 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"midpoints" : [ 134.5, 77.700003892183361, 317.5, 77.700003892183361 ],
													"order" : 1,
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"midpoints" : [ 134.5, 63.0, 70.083331942558289, 63.0 ],
													"order" : 3,
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"order" : 2,
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"midpoints" : [ 134.5, 63.0, 337.5, 63.0 ],
													"order" : 0,
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-96", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "MOZ-numint",
												"default" : 												{
													"fontsize" : [ 17.0 ],
													"fontname" : [ "Menlo Regular" ],
													"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-param",
												"default" : 												{
													"fontsize" : [ 16.0 ],
													"fontname" : [ "Menlo Regular" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-title",
												"default" : 												{
													"fontsize" : [ 22.062094355029235 ],
													"fontname" : [ "Andale Mono" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-umenu",
												"default" : 												{
													"bgfillcolor" : 													{
														"type" : "color",
														"color1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
														"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
														"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
														"angle" : 270.0,
														"proportion" : 0.5,
														"autogradient" : 0.0
													}
,
													"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
													"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
													"fontname" : [ "Menlo Regular" ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontface" : [ 2 ]
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
													"fontsize" : [ 18.0 ],
													"fontname" : [ "Herculanum" ]
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
													"fontsize" : [ 13.0 ],
													"fontname" : [ "Arial" ],
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
													"bgfillcolor" : 													{
														"type" : "gradient",
														"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
														"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
														"angle" : 270.0,
														"proportion" : 0.39,
														"autogradient" : 0
													}
,
													"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
													"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
													"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ]
									}
,
									"patching_rect" : [ 23.0, 76.0, 118.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p domains_2_voices"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 131.875, 321.43284789644008, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 131.875, 347.43284789644008, 73.0, 22.0 ],
									"text" : "variables $1"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 131.875, 291.43284789644008, 77.0, 22.0 ],
									"text" : "loadmess 20"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 65.0, 265.43284789644008, 83.0, 22.0 ],
									"text" : "loadmess 120"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 207.0, 253.0, 640.0, 480.0 ],
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
													"comment" : "",
													"id" : "obj-6",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 103.125, 63.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 103.125, 161.0, 72.0, 22.0 ],
													"text" : "prepend set"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-2",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 103.125, 232.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 192.125, 161.0, 109.0, 22.0 ],
													"text" : "prepend tempo set"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-4",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 192.125, 232.0, 30.0, 30.0 ]
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
													"destination" : [ "obj-2", 0 ],
													"midpoints" : [ 112.625, 207.0, 112.625, 207.0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"order" : 0,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"order" : 1,
													"source" : [ "obj-6", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 65.0, 291.43284789644008, 34.0, 22.0 ],
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
									"id" : "obj-7",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 65.0, 321.43284789644008, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 65.0, 347.43284789644008, 59.0, 22.0 ],
									"text" : "tempo $1"
								}

							}
, 							{
								"box" : 								{
									"bwcompatibility" : 80102,
									"clefs" : [ "G", "Alto", "Tenor" ],
									"defaultnoteslots" : [ "null" ],
									"embed" : 0,
									"enharmonictable" : [ "default", "default", "default" ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidevoices" : [ 0, 0, 0 ],
									"id" : "obj-20",
									"keys" : [ "CM", "CM", "CM" ],
									"loop" : [ "[", 1, 1, 0, "]", "[", 1, 2, 0, "]" ],
									"maxclass" : "bach.score",
									"midichannels" : [ 1, 2, 3 ],
									"numinlets" : 7,
									"numoutlets" : 9,
									"numparts" : [ 1, 1, 1 ],
									"numvoices" : 3,
									"out" : "nnnnnnnn",
									"outlettype" : [ "", "", "", "", "", "", "", "", "bang" ],
									"patching_rect" : [ 23.0, 495.0, 992.0, 205.0 ],
									"pitcheditrange" : [ "null" ],
									"senddoneatstartup" : 0,
									"showmeasurenumbers" : [ 1, 1, 1 ],
									"stafflines" : [ 5, 5, 5 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"versionnumber" : 80102,
									"voicenames" : [ "[", "]", "[", "]", "[", "]" ],
									"voicespacing" : [ 0.0, 26.0, 26.0, 26.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-22",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.engine.maxpat",
									"numinlets" : 2,
									"numoutlets" : 3,
									"offset" : [ -2.0, -4.0 ],
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 23.0, 382.43284789644008, 205.875, 75.999990463256836 ],
									"viewvisibility" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"midpoints" : [ 141.375, 375.43284789644008, 32.5, 375.43284789644008 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"hidden" : 1,
									"source" : [ "obj-16", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"midpoints" : [ 74.5, 375.43284789644008, 32.5, 375.43284789644008 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-20", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 1 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-90", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"midpoints" : [ 162.5, 108.5, 32.5, 108.5 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-90", 1 ],
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-85", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-90", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"source" : [ "obj-90", 1 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "MOZ-numint",
								"default" : 								{
									"fontsize" : [ 17.0 ],
									"fontname" : [ "Menlo Regular" ],
									"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "MOZ-param",
								"default" : 								{
									"fontsize" : [ 16.0 ],
									"fontname" : [ "Menlo Regular" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "MOZ-title",
								"default" : 								{
									"fontsize" : [ 22.062094355029235 ],
									"fontname" : [ "Andale Mono" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "MOZ-umenu",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
										"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
										"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.5,
										"autogradient" : 0.0
									}
,
									"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"fontname" : [ "Menlo Regular" ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontface" : [ 2 ]
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
									"fontsize" : [ 18.0 ],
									"fontname" : [ "Herculanum" ]
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
									"fontsize" : [ 13.0 ],
									"fontname" : [ "Arial" ],
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
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
										"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
									"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 969.829629629629608, 410.160144988459933, 59.0, 20.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p 4-demo-c"
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"forceaspect" : 1,
					"id" : "obj-11",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 634.666606903076172, 338.010394007885225, 302.0, 283.125 ],
					"pic" : "cluster-search_structure2.jpg"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"hidden" : 1,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1097.0, 729.0 ],
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
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"title" : "demo [b]",
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 8.590390428109218,
									"hidden" : 1,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 55.0, 12.400007784366721, 53.0, 18.0 ],
									"text" : "loadmess 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 16.0, 35.0, 68.0, 22.0 ],
									"text" : "key_trigger"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 16.0, 12.400007784366721, 35.0, 20.0 ],
									"text" : "active"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 102.0, 402.099514563106652, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 102.0, 428.099514563106652, 73.0, 22.0 ],
									"text" : "variables $1"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 102.0, 376.999999999999943, 77.0, 22.0 ],
									"text" : "loadmess 50"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-4",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.voice-domain.maxpat",
									"numinlets" : 3,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 16.0, 96.0, 233.0, 30.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-69",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.voice-domain.maxpat",
									"numinlets" : 3,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 16.0, 166.0, 233.0, 30.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-35",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.metric-domain.maxpat",
									"numinlets" : 2,
									"numoutlets" : 1,
									"offset" : [ -236.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 16.0, 231.0, 219.0, 39.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Andale Mono",
									"id" : "obj-21",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 196.375, 409.099514563106652, 37.0, 20.0 ],
									"text" : "stop"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-19",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 306.0, 452.0, 29.5, 22.0 ],
									"text" : "G F"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-15",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 271.0, 452.0, 31.0, 22.0 ],
									"text" : "G G"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 52.0, 65.5, 54.0, 22.0 ],
									"text" : "deferlow"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 8.712199644402247,
									"hidden" : 1,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 102.0, 181.0, 41.0, 18.0 ],
									"text" : "deferlow"
								}

							}
, 							{
								"box" : 								{
									"attr" : "clefs",
									"id" : "obj-25",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 239.875, 509.0, 150.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 37.5, 348.999999999999943, 83.0, 22.0 ],
									"text" : "loadmess 120"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 207.0, 253.0, 640.0, 480.0 ],
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
													"comment" : "",
													"id" : "obj-6",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 103.125, 63.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 103.125, 161.0, 72.0, 22.0 ],
													"text" : "prepend set"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-2",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 103.125, 232.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 192.125, 161.0, 109.0, 22.0 ],
													"text" : "prepend tempo set"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 303.0, 161.0, 137.0, 22.0 ],
													"text" : "loadmess randompath 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-4",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 192.125, 232.0, 30.0, 30.0 ]
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
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"midpoints" : [ 112.625, 207.0, 112.625, 207.0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"order" : 0,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"order" : 1,
													"source" : [ "obj-6", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 37.5, 376.999999999999943, 34.0, 22.0 ],
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
									"id" : "obj-16",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 37.625, 402.099514563106652, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 37.625, 428.099514563106652, 59.0, 22.0 ],
									"text" : "tempo $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Andale Mono",
									"id" : "obj-36",
									"linecount" : 10,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 355.0, 319.900485436893291, 477.0, 141.0 ],
									"text" : "Crazy Improvisation\n\nThe melody in the first voice has several melodic and rhythmic restrictions, and follows the harmony in the second voice.\n\nTry different sets of pitches above (click on the message boxes and evaluate a new score (press v).\n\nStudy the individual rules inside the patchers to the left: turn them on/off, and change their settings."
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 344.0, 13.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 103.5, 13.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Andale Mono",
									"id" : "obj-24",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 631.0, 160.0, 153.0, 20.0 ],
									"text" : "chords based on 4ths"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Andale Mono",
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 563.0, 50.5, 88.0, 20.0 ],
									"text" : "blues scale"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Andale Mono",
									"id" : "obj-10",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 591.0, 228.5, 146.0, 33.0 ],
									"text" : "chords based on an octatonic scale"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Andale Mono",
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 653.875, 101.0, 117.0, 20.0 ],
									"text" : "chromatic scale"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 344.0, 152.5, 289.0, 35.0 ],
									"text" : "[ [ 60 65 71 76 ] ] [ [ 62 67 72 77 ] ] [ [ 63 68 73 78 ] ] [ [ 65 71 76 81 ] ] [ [ 67 72 77 83 ] ]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 344.0, 43.0, 219.0, 35.0 ],
									"text" : "[ 60 ] [ 62 ] [ 63 ] [ 65 ] [ 66 ] [ 67 ] [ 69 ] [ 70 ] [ 72 ] [ 75 ] [ 77 ] [ 78 ] [ 79 ]"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 8.620427536262897,
									"hidden" : 1,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 33.0, 136.5, 87.0, 18.0 ],
									"text" : "loadmess collapse 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-78",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 175.0, -741.0, 1231.0, 551.0 ],
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
													"fontname" : "Andale Mono",
													"id" : "obj-14",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 690.666666626930237, 507.367641691162135, 484.0, 20.0 ],
													"text" : "Rule to limit immediate repetitions of a chord to maximum 2 times."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-13",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 743.666698455810547, 118.000000834465027, 462.0, 33.0 ],
													"text" : "Rule restricting the top voice in the chords to not move more than a major 3rd between consecutive chords."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-6",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 206.666666626930237, 502.367641691162135, 405.0, 33.0 ],
													"text" : "Heuristic rule to prefer a low number of unique chords \nwithin four consecutive events."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-3",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 159.666666626930237, 82.3333340883255, 462.0, 33.0 ],
													"text" : "Rule restricting notes at downbeats in the first voice to have \na pitch from a pitch class in the chord in the second voice. "
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-22",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 150.666666626930237, 7.0, 635.0, 33.0 ],
													"text" : "The first rule restrict how the first voice relate to the harmony in the second voice. \nThe three other rules restrict the sequence of chords in the second voice."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 675.750031352043152, 269.666664123535156, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 56.0, 288.666667461395264, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 638.75, 47.666664123535156, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 962.250031590461731, 176.0, 189.0, 49.0 ],
													"text" : "(function (lambda (x) (- (length (remove-duplicates (last x 4) :test 'equal))) ))"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 707.500031471252441, 353.000000596046448, 29.5, 22.0 ],
													"text" : "1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 675.750031352043152, 320.3333340883255, 131.0, 22.0 ],
													"text" : "rule_parameter pitches"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 994.916699051856995, 414.5, 197.0, 35.0 ],
													"text" : "(function (lambda (a b c ) (not (and (equal a c) (equal a b))) ))"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-11",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-one-engine.maxpat",
													"numinlets" : 5,
													"numoutlets" : 2,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 638.0, 383.0, 294.0, 97.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 708.166698455810547, 118.000000834465027, 29.5, 22.0 ],
													"text" : "1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 638.75, 93.3333340883255, 251.0, 22.0 ],
													"text" : "rule_parameter pitches, rule_input :all-pitches"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-7",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-one-engine.maxpat",
													"numinlets" : 5,
													"numoutlets" : 2,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 638.0, 154.0, 294.0, 97.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-74",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 64.0, 63.666667461395264, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-73",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 97.75, 353.8333340883255, 29.5, 22.0 ],
													"text" : "1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-68",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 56.0, 324.3333340883255, 131.0, 22.0 ],
													"text" : "rule_parameter pitches"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-64",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 64.0, 93.3333340883255, 91.0, 22.0 ],
													"text" : "rule_input :beat"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-61",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 358.5, 421.833333015441895, 163.666662454605103, 35.0 ],
													"text" : "(function (lambda (x y) (<= (abs (- (third x) (third y))) 4)))"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-60",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-one-engine.maxpat",
													"numinlets" : 5,
													"numoutlets" : 2,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 29.0, 390.0, 294.0, 97.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-58",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 376.666666626930237, 177.833332657814026, 210.0, 49.0 ],
													"text" : "(function (lambda (x) (if (first x) (member (mod (first x) 12) (pw::g-mod (second x) 12)) t) ))"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-55",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-pitch-pitch.maxpat",
													"numinlets" : 5,
													"numoutlets" : 2,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 29.0, 135.0, 304.0, 140.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-76",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 29.0, 44.000000596046448, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-77",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 638.750031471252441, 502.367641691162135, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-68", 0 ],
													"order" : 1,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-73", 0 ],
													"midpoints" : [ 65.5, 315.250000774860382, 107.25, 315.250000774860382 ],
													"order" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 4 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-11", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-77", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"midpoints" : [ 685.250031352043152, 312.833332359790802, 717.000031471252441, 312.833332359790802 ],
													"order" : 0,
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"midpoints" : [ 685.250031352043152, 305.499999105930328, 685.250031352043152, 305.499999105930328 ],
													"order" : 1,
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 4 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"midpoints" : [ 648.25, 79.333332479000092, 717.666698455810547, 79.333332479000092 ],
													"order" : 0,
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"order" : 1,
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 1 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-58", 0 ],
													"source" : [ "obj-55", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-60", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 4 ],
													"source" : [ "obj-58", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-61", 0 ],
													"source" : [ "obj-60", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"midpoints" : [ 38.5, 497.0, 624.0, 497.0, 624.0, 149.0, 647.5, 149.0 ],
													"source" : [ "obj-60", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-60", 4 ],
													"source" : [ "obj-61", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"source" : [ "obj-64", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-60", 0 ],
													"source" : [ "obj-68", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-7", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-60", 1 ],
													"source" : [ "obj-73", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-64", 0 ],
													"source" : [ "obj-74", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"source" : [ "obj-76", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 1 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "MOZ-numint",
												"default" : 												{
													"fontsize" : [ 17.0 ],
													"fontname" : [ "Menlo Regular" ],
													"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-param",
												"default" : 												{
													"fontsize" : [ 16.0 ],
													"fontname" : [ "Menlo Regular" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-title",
												"default" : 												{
													"fontsize" : [ 22.062094355029235 ],
													"fontname" : [ "Andale Mono" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-umenu",
												"default" : 												{
													"bgfillcolor" : 													{
														"type" : "color",
														"color1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
														"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
														"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
														"angle" : 270.0,
														"proportion" : 0.5,
														"autogradient" : 0.0
													}
,
													"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
													"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
													"fontname" : [ "Menlo Regular" ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontface" : [ 2 ]
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
													"fontsize" : [ 18.0 ],
													"fontname" : [ "Herculanum" ]
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
													"fontsize" : [ 13.0 ],
													"fontname" : [ "Arial" ],
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
													"bgfillcolor" : 													{
														"type" : "gradient",
														"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
														"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
														"angle" : 270.0,
														"proportion" : 0.39,
														"autogradient" : 0
													}
,
													"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
													"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
													"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ]
									}
,
									"patching_rect" : [ 16.0, 364.400485436893234, 97.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p harmonic rules"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"linecount" : 7,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 344.0, 194.0, 239.0, 102.0 ],
									"text" : "[ [ 36 42 56 ] ] [ [ 38 44 57 ] ] [ [ 39 45 59 ] ] [ [ 41 47 60 ] ] [ [ 42 48 62 ] ] [ [ 44 50 63 ] ] [ [ 45 51 65 ] ] [ [ 47 53 66 ] ] [ [ 48 54 68 ] ] [ [ 48 54 56 ] ] [ [ 50 56 57 ] ] [ [ 51 57 59 ] ] [ [ 53 59 60 ] ] [ [ 54 60 62 ] ] [ [ 56 62 63 ] ] [ [ 57 63 65 ] ] [ [ 59 65 66 ] ] [ [ 60 66 68 ] ] [ [ 36 48 60 ] ] [ [ 35 42 59 ] ] [ [ 33 45 57 ] ]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-71",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 123.0, 136.5, 89.0, 22.0 ],
									"text" : "(1/2) (1/4) (3/8)"
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
											"minor" : 1,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 153.0, -604.0, 1253.0, 347.0 ],
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
													"fontname" : "Andale Mono",
													"hidden" : 1,
													"id" : "obj-3",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 754.0, 239.0, 397.0, 47.0 ],
													"text" : "Rule limiting the number of pitch repetitions. \nOf three consecutive pitches, the first and the third \ncannot be the same."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-2",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 95.0, 239.0, 390.0, 47.0 ],
													"text" : "Rule limiting the number of consecutive 1/4 notes \nto maximum 2. Of three consecutive durations, \nthe first and the third cannot both be quarter notes."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-22",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 254.0, 29.0, 412.0, 20.0 ],
													"text" : "These two rules restrict repetitions in the first voice."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 700.5, 60.0, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-45",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 700.5, 89.0, 131.0, 22.0 ],
													"text" : "rule_parameter pitches"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-42",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1022.0, 161.0, 216.0, 22.0 ],
													"text" : "(function (lambda (a b c) (not (= a c)) ))"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-44",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-one-engine.maxpat",
													"numinlets" : 5,
													"numoutlets" : 2,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 700.0, 123.0, 294.0, 97.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-39",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 346.0, 148.0, 305.0, 22.0 ],
													"text" : "(function (lambda (a b c) (not (and (= 1/4 a) (= 1/4 c))) ))"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-38",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-one-engine.maxpat",
													"numinlets" : 5,
													"numoutlets" : 2,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 32.0, 110.0, 294.0, 97.0 ],
													"viewvisibility" : 1
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
													"patching_rect" : [ 32.0, 14.0, 30.0, 30.0 ]
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
													"patching_rect" : [ 700.5, 286.532227000000034, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-45", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-38", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 0 ],
													"midpoints" : [ 41.5, 219.0, 687.0, 219.0, 687.0, 117.0, 709.5, 117.0 ],
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 4 ],
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 4 ],
													"source" : [ "obj-42", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"source" : [ "obj-44", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-53", 0 ],
													"source" : [ "obj-44", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 0 ],
													"source" : [ "obj-45", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "MOZ-numint",
												"default" : 												{
													"fontsize" : [ 17.0 ],
													"fontname" : [ "Menlo Regular" ],
													"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-param",
												"default" : 												{
													"fontsize" : [ 16.0 ],
													"fontname" : [ "Menlo Regular" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-title",
												"default" : 												{
													"fontsize" : [ 22.062094355029235 ],
													"fontname" : [ "Andale Mono" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-umenu",
												"default" : 												{
													"bgfillcolor" : 													{
														"type" : "color",
														"color1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
														"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
														"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
														"angle" : 270.0,
														"proportion" : 0.5,
														"autogradient" : 0.0
													}
,
													"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
													"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
													"fontname" : [ "Menlo Regular" ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontface" : [ 2 ]
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
													"fontsize" : [ 18.0 ],
													"fontname" : [ "Herculanum" ]
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
													"fontsize" : [ 13.0 ],
													"fontname" : [ "Arial" ],
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
													"bgfillcolor" : 													{
														"type" : "gradient",
														"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
														"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
														"angle" : 270.0,
														"proportion" : 0.39,
														"autogradient" : 0
													}
,
													"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
													"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
													"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ]
									}
,
									"patching_rect" : [ 16.0, 337.600323624595489, 116.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p rules-for-repetition"
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
											"minor" : 1,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 160.0, -668.0, 1372.0, 363.0 ],
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
													"fontname" : "Andale Mono",
													"id" : "obj-7",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 875.0, 255.0, 261.0, 20.0 ],
													"text" : "Rule forbidding ties over barlines."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-6",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 316.0, 255.0, 376.0, 33.0 ],
													"text" : "Rule restricting how 1/8th note rests are spaced :\n wihin 10 events, one has to be an 1/8th note rest."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-5",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 29.5, 251.0, 246.0, 33.0 ],
													"text" : "Rule restricting how note values \nhave to line up with the meter."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-4",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 157.0, 24.0, 685.0, 20.0 ],
													"text" : "These three rules restrict how rhythm relate to the time signature, and the length of phrases."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 100.0, 98.0, 80.0, 22.0 ],
													"text" : "loadmess 0 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 799.0, 98.0, 145.0, 22.0 ],
													"text" : "metric_structure :1st-beat"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1182.0, 177.5, 164.0, 22.0 ],
													"text" : "(function (lambda (x) (= x 0)))"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-13",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-meter-note.maxpat",
													"numinlets" : 5,
													"numoutlets" : 2,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 799.0, 137.0, 369.0, 103.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 316.0, 59.0, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-29",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 316.0, 98.0, 133.0, 22.0 ],
													"text" : "rule_input :all-durations"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 631.0, 164.5, 157.0, 35.0 ],
													"text" : "(function (lambda (x) (= 1 (count -1/8 (last x 10))) ))"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-15",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-one-engine.maxpat",
													"numinlets" : 5,
													"numoutlets" : 2,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 316.0, 137.0, 294.0, 97.0 ],
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
													"id" : "obj-8",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-metric-hierarchy.maxpat",
													"numinlets" : 4,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 14.0, 137.0, 277.0, 93.0 ],
													"viewvisibility" : 1
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
													"patching_rect" : [ 14.0, 38.0, 30.0, 30.0 ]
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
													"patching_rect" : [ 799.0, 311.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"order" : 1,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"midpoints" : [ 325.5, 85.0, 808.5, 85.0 ],
													"order" : 0,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 4 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-13", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-50", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"midpoints" : [ 325.5, 244.0, 791.0, 244.0, 791.0, 126.0, 808.5, 126.0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"source" : [ "obj-15", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 1 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 4 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"midpoints" : [ 23.5, 240.0, 306.5, 240.0, 306.5, 126.0, 325.5, 126.0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "MOZ-numint",
												"default" : 												{
													"fontsize" : [ 16.95833875454338 ],
													"fontname" : [ "Menlo Regular" ],
													"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-param",
												"default" : 												{
													"fontsize" : [ 16.0 ],
													"fontname" : [ "Menlo Regular" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-title",
												"default" : 												{
													"fontsize" : [ 22.062094355029235 ],
													"fontname" : [ "Andale Mono" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-umenu",
												"default" : 												{
													"bgfillcolor" : 													{
														"type" : "color",
														"color1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
														"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
														"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
														"angle" : 270.0,
														"proportion" : 0.5,
														"autogradient" : 0.0
													}
,
													"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
													"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
													"fontname" : [ "Menlo Regular" ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontface" : [ 2 ]
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
													"fontsize" : [ 18.0 ],
													"fontname" : [ "Herculanum" ]
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
													"fontsize" : [ 13.0 ],
													"fontname" : [ "Arial" ],
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
													"bgfillcolor" : 													{
														"type" : "gradient",
														"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
														"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
														"angle" : 270.0,
														"proportion" : 0.39,
														"autogradient" : 0
													}
,
													"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
													"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
													"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ]
									}
,
									"patching_rect" : [ 16.0, 310.800161812297745, 154.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p rules-for-rhythm-structure"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 79.0, 1372.0, 490.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-12",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 167.0, 37.0, 642.0, 20.0 ],
													"text" : "These four rules all restrict which melodic intervals are acceptable in the first voice."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-8",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1022.0, 363.900485436893291, 328.0, 33.0 ],
													"text" : "Melodic movements starting from a 1/16th note have to be either a minor or major 2nd. "
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-7",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 669.0, 356.900485436893291, 304.0, 47.0 ],
													"text" : "Melodic movements starting from an 1/8th \nnote triplet or a 1/16th note quintuplet \nhave to be either a minor or major 3rd. "
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-2",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 339.0, 356.900485436893291, 311.0, 33.0 ],
													"text" : "Melodic movements starting from a 1/4 note\nhave to be 4ths. "
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-36",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 12.0, 356.900485436893291, 304.0, 33.0 ],
													"text" : "Melodic movements starting from an 1/8th \nnote have to be smaller than a major 3rd."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 68.0, 28.0, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1003.0, 92.0, 222.0, 35.0 ],
													"text" : "if_duration :=, durations 1/16, then_interval :member, intervals 1 2"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-6",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-mel-interval-one-voice.maxpat",
													"numinlets" : 4,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 1003.0, 167.0, 306.0, 177.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 669.625, 92.0, 265.0, 35.0 ],
													"text" : "if_duration :member, durations 1/12 1/20, then_interval :member, intervals 3 4"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-10",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 339.0, 92.0, 248.0, 35.0 ],
													"text" : "if_duration :member, durations 1/4, then_interval :=, intervals 5"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 68.0, 92.0, 225.0, 35.0 ],
													"text" : "if_duration :=, durations 1/8, then_interval :smaller-than, intervals 4"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-3",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-mel-interval-one-voice.maxpat",
													"numinlets" : 4,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 669.0, 167.0, 306.0, 177.0 ],
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
													"id" : "obj-1",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-mel-interval-one-voice.maxpat",
													"numinlets" : 4,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 339.0, 167.0, 306.0, 177.0 ],
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
													"id" : "obj-22",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-mel-interval-one-voice.maxpat",
													"numinlets" : 4,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 16.0, 167.0, 306.0, 177.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-46",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 16.0, 32.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-47",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1003.0, 412.806701999999973, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"midpoints" : [ 348.5, 354.0, 656.5, 354.0, 656.5, 156.0, 678.5, 156.0 ],
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
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"midpoints" : [ 25.5, 354.0, 331.0, 354.0, 331.0, 156.0, 348.5, 156.0 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"midpoints" : [ 678.5, 354.0, 991.5, 354.0, 991.5, 156.0, 1012.5, 156.0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"midpoints" : [ 77.5, 79.0, 348.5, 79.0 ],
													"order" : 2,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"midpoints" : [ 77.5, 79.0, 679.125, 79.0 ],
													"order" : 1,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"midpoints" : [ 77.5, 79.0, 1012.5, 79.0 ],
													"order" : 0,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"order" : 3,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-46", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "MOZ-numint",
												"default" : 												{
													"fontsize" : [ 17.0 ],
													"fontname" : [ "Menlo Regular" ],
													"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-param",
												"default" : 												{
													"fontsize" : [ 16.0 ],
													"fontname" : [ "Menlo Regular" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-title",
												"default" : 												{
													"fontsize" : [ 22.062094355029235 ],
													"fontname" : [ "Andale Mono" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-umenu",
												"default" : 												{
													"bgfillcolor" : 													{
														"type" : "color",
														"color1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
														"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
														"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
														"angle" : 270.0,
														"proportion" : 0.5,
														"autogradient" : 0.0
													}
,
													"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
													"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
													"fontname" : [ "Menlo Regular" ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontface" : [ 2 ]
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
													"fontsize" : [ 18.0 ],
													"fontname" : [ "Herculanum" ]
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
													"fontsize" : [ 13.0 ],
													"fontname" : [ "Arial" ],
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
													"bgfillcolor" : 													{
														"type" : "gradient",
														"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
														"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
														"angle" : 270.0,
														"proportion" : 0.39,
														"autogradient" : 0
													}
,
													"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
													"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
													"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ]
									}
,
									"patching_rect" : [ 16.0, 284.0, 157.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p rules-for-melodic-intervals"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 102.0, 202.0, 147.0, 22.0 ],
									"text" : "expert ((4 4) (1 2 3 4 5) ())"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 202.875, 427.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 745.25, 708.333333333333371, 95.0, 22.0 ],
									"text" : "bach.ezmidiplay"
								}

							}
, 							{
								"box" : 								{
									"bwcompatibility" : 80100,
									"clefs" : [ "G", "G" ],
									"defaultnoteslots" : [ "null" ],
									"embed" : 0,
									"enharmonictable" : [ "default", "default" ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidevoices" : [ 0, 0 ],
									"id" : "obj-26",
									"keys" : [ "CM", "CM" ],
									"loop" : [ "[", 1, 1, 0, "]", "[", 1, 2, 0, "]" ],
									"maxclass" : "bach.score",
									"midichannels" : [ 1, 2 ],
									"numinlets" : 7,
									"numoutlets" : 9,
									"numparts" : [ 1, 1 ],
									"numvoices" : 2,
									"out" : "nnnnnnnn",
									"outlettype" : [ "", "", "", "", "", "", "", "", "bang" ],
									"patching_rect" : [ 16.0, 552.0, 852.428571428571445, 148.333333333333343 ],
									"pitcheditrange" : [ "null" ],
									"saveleveltypes" : 0,
									"senddoneatstartup" : 0,
									"showmeasurenumbers" : [ 1, 1 ],
									"stafflines" : [ 5, 5 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"versionnumber" : 80102,
									"voicenames" : [ "[", "]", "[", "]" ],
									"voicespacing" : [ 0.0, 26.0, 26.0 ],
									"zoom" : 98.18359375
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 16.0, 65.5, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 344.0, 93.5, 309.0, 35.0 ],
									"text" : "[ 60 ] [ 61 ] [ 62 ] [ 63 ] [ 64 ] [ 65 ] [ 66 ] [ 67 ] [ 68 ] [ 69 ] [ 70 ] [ 71 ] [ 72 ] [ 73 ] [ 74 ] [ 75 ] [ 76 ] [ 77 ] [ 78 ] [ 79 ]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 123.0, 43.0, 209.0, 35.0 ],
									"text" : "[ 1/8 ] [ 1/4 ] [ 1/16 ] [ 1/12 1/12 1/12 ] [ 1/20 1/20 1/20 1/20 1/20 ] [ -1/8 ]"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-18",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.engine.maxpat",
									"numinlets" : 2,
									"numoutlets" : 3,
									"offset" : [ -2.0, -4.0 ],
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 16.0, 455.000009536743164, 205.875, 75.999990463256836 ],
									"viewvisibility" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 2 ],
									"midpoints" : [ 353.5, 90.0, 239.5, 90.0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"hidden" : 1,
									"order" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 2 ],
									"midpoints" : [ 353.5, 193.0, 261.0, 193.0, 261.0, 162.0, 239.5, 162.0 ],
									"order" : 1,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 1 ],
									"midpoints" : [ 111.5, 226.5, 225.5, 226.5 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"source" : [ "obj-14", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 2 ],
									"midpoints" : [ 353.5, 134.0, 261.0, 134.0, 261.0, 93.0, 239.5, 93.0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"midpoints" : [ 249.375, 540.5, 25.5, 540.5 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-26", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"order" : 2,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"order" : 1,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"order" : 3,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"hidden" : 1,
									"order" : 0,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"hidden" : 1,
									"order" : 1,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"hidden" : 1,
									"order" : 0,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"midpoints" : [ 111.5, 452.04976204992488, 25.5, 452.04976204992488 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 1 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"order" : 2,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"order" : 1,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"hidden" : 1,
									"order" : 0,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"hidden" : 1,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 1 ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"hidden" : 1,
									"order" : 0,
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 2 ],
									"midpoints" : [ 353.5, 305.0, 261.0, 305.0, 261.0, 162.0, 239.5, 162.0 ],
									"order" : 1,
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"hidden" : 1,
									"source" : [ "obj-9", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "MOZ-numint",
								"default" : 								{
									"fontsize" : [ 17.0 ],
									"fontname" : [ "Menlo Regular" ],
									"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "MOZ-param",
								"default" : 								{
									"fontsize" : [ 16.0 ],
									"fontname" : [ "Menlo Regular" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "MOZ-title",
								"default" : 								{
									"fontsize" : [ 22.062094355029235 ],
									"fontname" : [ "Andale Mono" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "MOZ-umenu",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
										"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
										"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.5,
										"autogradient" : 0.0
									}
,
									"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"fontname" : [ "Menlo Regular" ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontface" : [ 2 ]
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
									"fontsize" : [ 18.0 ],
									"fontname" : [ "Herculanum" ]
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
									"fontsize" : [ 13.0 ],
									"fontname" : [ "Arial" ],
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
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
										"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
									"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 963.755555555555475, 389.690834122100114, 60.0, 20.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p 3-demo-b"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"hidden" : 1,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1097.0, 729.0 ],
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
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"title" : "chained?!",
						"boxes" : [ 							{
								"box" : 								{
									"args" : [ "moz_four.png" ],
									"bgmode" : 1,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-3",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "moz_helpnum.maxpat",
									"numinlets" : 0,
									"numoutlets" : 0,
									"offset" : [ 2.0, 3.0 ],
									"patching_rect" : [ 920.0, 636.6875, 24.0, 25.71795654296875 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"args" : [ "moz_three.png" ],
									"bgmode" : 1,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-43",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "moz_helpnum.maxpat",
									"numinlets" : 0,
									"numoutlets" : 0,
									"offset" : [ 2.0, 3.0 ],
									"patching_rect" : [ 920.0, 509.6875, 24.0, 25.71795654296875 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"args" : [ "moz_two.png" ],
									"bgmode" : 1,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-42",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "moz_helpnum.maxpat",
									"numinlets" : 0,
									"numoutlets" : 0,
									"offset" : [ 2.0, 3.0 ],
									"patching_rect" : [ 920.0, 366.6875, 24.0, 25.71795654296875 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"args" : [ "moz_one.png" ],
									"bgmode" : 1,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-24",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "moz_helpnum.maxpat",
									"numinlets" : 0,
									"numoutlets" : 0,
									"offset" : [ 2.0, 3.0 ],
									"patching_rect" : [ 920.0, 243.6875, 24.0, 25.71795654296875 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-17",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 665.0, 703.884851471837123, 260.0, 19.0 ],
									"text" : "The data-driven patch structure in Max",
									"textcolor" : [ 0.50196099281311, 0.50196099281311, 0.50196099281311, 1.0 ],
									"varname" : "autohelp_top_digest[6]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-15",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 149.5, 339.985245154871279, 340.0, 19.0 ],
									"text" : "The original demand-driven patch structure in PWGL",
									"textcolor" : [ 0.50196099281311, 0.50196099281311, 0.50196099281311, 1.0 ],
									"varname" : "autohelp_top_digest[5]"
								}

							}
, 							{
								"box" : 								{
									"autofit" : 1,
									"data" : [ 48738, "png", "IBkSG0fBZn....PCIgDQRA..ADL..LvcHX....fR2Fdp....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI6cuGdLcsv+.+alLYjLIDIRbmDZPHTBZin3TWqKs+JkFDJskSqaUunsZJuUUzKpyaeonHNTTRo2b4HQoUaOno3UkffDgjffTjHWj6yr+8G4c1mYOYlIyDYtk82OOO44Yu2YuWq0LYm7Mq8r1qsaBBBBfHhHRFRgitAPDQD4nvPPhHhjsXHHQDQxVLDjHhHYKFBRDQjrECAIhHR1hgfDQDIawPPhHhjsXHHQDQxVLDjHhHYKFBRDQjrECAIhHR1hgfDQDIawPPhHhjsXHHQDQxVJcTUbQEWFN3wSGGM4rvExHGbibKBEWdkNplCQDQ0gTqRIZo+9fN2tlg908fvvhHD3i5F3naVUia16GptkTZEX8+vIvVNvoQQkVg8rpIhHxAwGO8.Sc3giWdLOJ7xSObzMGQ10PvKc06fY9o6AY8WEXupRhHhbhDTSaD9h2ZznCssIN5lB.rigfGK4rvb9u2G68GQDIy4imdfU+FOEdrtGjitoXeBAuzUuCh5+5qqV.XSZnmHpA0MLvd0dDTyaL7qQdA2byMacygHhHaHAAAjWAkfrt08vubpqfcc3yh6VXoR1Ge7zCrqkLQGdOBs4gfkTZE3odqsVsKA5TGV2wqMwGyo7CJkHhn5NEUbY3+Itigsbvjkr8fZZiv99zo3P+LBs42hDq+GNQ0B.e+mefXgSaPL.jHhjA7QcCvBm1fvhl5iKY6Y8WEf0+Cmvwzn9+XSCAKp3xvVNvokrsoNrtiIMhdXKqVhHhbBM4QFNlxP6tjsskCbZTTwk4fZQ13PvCd7zk74.1jF5IdsI9X1xpjHhHmXudzOFZRC8Tb8hJsBbnimtCq8XSCAOZxYIY8nFT23k.kHhjw7QcCPTCpaR11QLHqvdxlFBdgLxQx5CrWs2VVcDQD4Bvvr.CyJrmrogf2H2hjrdPMuw1xpiHhHW.FlEXXVg8jMMDzv4BT+ZjW1xpiHhHW.FlE3Hm2nsqOEI3MBOQDQNSYA7QoDQDQxVLDjHhHYKFBRDQjrECAIhHR1hgfDQDIawPPhHhjsXHHQDQxVLDjHhHYKFBJiUd4kixJyw8HLgbt4nO+PqVsNr5ljOT5na.xcaXCa.6bm6DBBBR1tRkJge94G72e+QngFJF3.GH5V251CzLsv4O+4QbwEGhO93wku7kQ94mOb2c2QHgDB5ZW6J5ZW6J5W+5GFxPFRMVVwEWbXSaZSPiFMvau8FCdvCFu5q9p0p1mff.9vO7Cw+9e+uQEUTA7vCOv7m+7wfFzfr3xHt3hCKe4KGkTRInwMtwXkqbkHhHhvhO9wLlwfzRKMzxV1RjPBI.kJq9uZrsssMrksrEHHHf1zl1fEsnEg10t1UikcrwFK1zl1D7wGevV25VQKZQKrn1zwN1wvrm8rQYkUFF1vFFV4JWoE+5A.HszRCSZRSBEUTQXnCcnXUqZUlc+qKO+vRd+zPYjQF3q9puB6e+6GYjQF3N24NPsZ0n0st0ne8qeXzidzXjibjl7bLS86RlRLwDCF5PGpEsulR4kWN93O9iwW9keIprxJwBVvBvK+xu7CTYR1YB1PgD0+sjunpyO+7S..VzWcsqcU33G+3VccnUqVg+w+3eHnRkJKpdlxTlhPAETfYKyl27lWsiakqbk0p2CV0pVU0JqgMrgYUkQHgDhjieLiYLV0w6gGdHdrEVXgFceBLv.kTGcpScRnrxJqFK6INwIJdLVyO+NyYNi3woPgBgabiaXwGqfffv69tuq3wOm4LGSte1hyOrj2O02W9keof2d6cMV2gEVXBm3Dmvnkg076R.P3ce22sFaWlyu+6+tPXgEljxbdyadOPkobhyR9.6InCVQE8el8z6Se5Cb2c2A.PokVJt6cuKt4Muo3kj5bm6bHxHiDyctyEKcoKEd6s20X4e6aeaL0oNUjPBIHtM2byMz4N2YDYjQBAAAbxSdRb9yednQiF..r0stUbzidTricrCS1ap6d26B..EJp5JpqUqV7Ye1mg4Lm4HtMKgFMZvJVwJ..fJUpP4kWt3qeK0e7G+AROcoOTN2+92OxKu7fe94mEWN0j6cu6IY8TSMU7Ye1mg4O+4WmUG5qacqaHrvBCojRJPqVs3a9luAycty0hO9u4a9Fwkm3DmnQ2Ga04GVp6e+6iYO6YisrksHY6AGbvn28t2nfBJ.W5RWBYlYlPPP.ojRJXHCYHHmbxAd5omRNFS86RlR+6e+qUs4hJpHDSLwf0t10xKYa8A1xDVmkjdmY0z+wbIkThPBIjfPDQDQ09OhKszRMaYWYkUJzktzEwiwc2cWXkqbkB4kWdUaeu+8uuvZVyZDb2c2E2+l27lKb+6eey1tUqVsvvF1vDOlCbfCXUu928t2s3wpeOlFv.FfEWFyd1yV73BO7vEWdcqacVbYXI8bQ293iO9Htu95quB29121rkcssmfBBBBKaYKS7X6ae6qEebIkTRhGWvAGrfVsZq19XON+vbueJHHHLhQLBImWOyYNSgacqaUs8K0TSU3kdoWRr9u10tVstNePbnCcHg1111JVOOzC8PBO4S9jrmf0BNK4Cbfw3jySO8DCe3CGG4HGAu8a+1hedHojRJh8fxT1111FN+4OuX47se62h4N24hF23p+bcTsZ0XVyZVX26d2PsZ0..3V25VXMqYM0Xab5Se5hKu90udK90F.DKeO7vC7hu3KZUGK.PEUTA14N2I..5ZW6Jd+2+8E+de0W8UVc4YIZSaZCF0nFE..xO+7wG7AefMod.j1CtDSLQbsqcMK53LrWfF6yQydc9go7S+zOI1CT2c2crpUsJr10tVzrl0rpsucricDqe8qG+9u+6XricrFcerGl5TmJt5UuJTqVMVxRVBRIkTPe6aecHsEpNhsLg0YIo2Yl09eu9Ye1mIt+d4kWBYlYlFc+JqrxDBN3fE22XiMVKtMsxUtRwiKf.Bvne9O52SvxJqLg.BH.A.HnToRK9ytJ0TSUvM2bS..Bie7iWH4jS1p6I3d26dEOlksrkITVYkI9YC4latIbkqbEKpbrldBFRHgHbhSbBw82CO7PHszRyjk8CROAEDDDhLxHEO9UrhUXQGSG6XGEOlyd1yVsuu857CS89oVsZkzq8YMqYYw0uoXO5IXaaaaEF6XGqPVYkk319vO7CYOAqEbVxGXOAcwLqYMKDbvAC.fRJoD7Vu0aYz8aiabiHyLyD..MoIMASdxS1hqim64dNwOuk6bm6fMu4Ma18WkJU34dtmC..UVYk039qyW7Eeg3H4aFyXFVb6Se52auILgI.UpTgwN1wB..AAAr8su8ZU4ZNUVYk3QdjGAOyy7L.npdi9Nuy6TmWO5DczQKtrtd8ZNm4LmAokVZ..hipSCYOO+vXhKt3voO8oAPUiDZScdrylKdwKhu8a+Vz111VGcSgpivPPWLpToBKZQKRb8e9m+Yite+3O9ihK+BuvKTsAQf43me9gwMtwItdJojRMdLSaZSSb4XiM1Zb.CTbwEiu7K+R..DZnghG+webKt8oS94mO16d2K..dzG8QQ6ae6AfzPCawkDU2qsO7C+Pwg9+2+8eON1wNVcdcA.DUTQINHON4IOItxUthY2e8uTn5+dg9r2meXn8su8It7DlvDD+G6b14kWdUy6D4Rggftfz0CD.fbyMWbm6bmpsO5+GJGwHFgUWGCX.CPbYc8XvbBKrvPjQFo39enCcHyt+ae6aWbzVVa6E328cem3nHcBSXBha+u829anksrk.npQv4IO4IqUkuonq2qcpScB+8+9eWb6u4a9lV7wZMZZSapj6MuZp2fVxnB0de9ggtzktj3xVy8CJQ00XHnKnF0nFglzjlHt9Eu3Eq19n+ejq0st0Vccz7l2bwkyJqrrniQ+dCVSCPFcCnBu7xKLkoLEqt8AT0.6.npaSiwO9wKtcEJTHITrtt2f5Gj89u+6iF1vFBfptUMzO.ptjkdIQO6YOKRM0TA.Pe6aeMYOrbDmenO8CAsE8BLmbxA25V2xneYr+oQR9hgftnzco+.pdHXN4jCJt3hEWWWuhrF5OqljUVYYQ8fY7ie7vGe7A.Uc4tt4MuoQ2uicrigjSNYwio1bu7csqcM7a+1uAfpteuL70n98.5q+5uFUVYkVccXIZZSapjOOvXhIFw60w5RiYLiQ7RwkbxIKFzYHK4Rg5nN+Pm+5u9KTPAEHttsHDLjPBAsnEsvneEXfAhyblyTmWmjqIFB5hR+gHtg+msYjQFhK6kWdIFLYMzumlkVZoR9illhO93iXOvprxJwl1zlL59o+vpelyblVcaC.XG6XGh+gWicI+5cu6M5PG5..p5O5dvCdvZU8XId8W+0E6M0ku7kwZW6ZqyqiF1vFhm7IeRw0MUuA0EBpToRDUTQYz8wQc9gN52KP2byMzl1zFqt9ePke94a2qSx4DCAcQciabCwk0uWg.P7xyAT0HHs1LIHmWd4Itr+96uEM6z.H8dFbiabiUa.xjSN4fu669N..Dd3giG8QeTqtsA7etTnJUpTbzfZHa8.jQGu7xKrrksLw0WxRVR0lcYpKLoIMIwkMVH34N24Dup.CYHCAAFXfFsbbjme..IyinBBBRloWpqr4MuYricrCi90t10tPe5SepyqSx0DCAcQo+fQnicriR9dAETPRV+u9q+xpKe8CYsjIIZchHhHPXgElXazvAHSrwFq3kKr1NfXRJojDGQhCcnCEADP.Fc+zuGh6YO6AEVXg0p5yRL4IOYDd3gCfpFrR5GJVWYDiXDh2H6m+7mGm8rmUx22RtTn.N1yO.p5RUpuZy.qolLtwMNLwINQi90y9rOK7vCOpyqSx0DCAcAUXgEhbyMWw00cY+zwGe7Qxmy1st0sr55P+OOOq8OxYpYPFMZzHtdCaXCM6en1bzuWcMtwMFaZSaxnecricLw.xhKtX78e+2WqpOKgBEJvm9oep35e9m+4hytKOHO4OzmJUpjbqIXXuA0EB5kWdgQO5QaxxwQe9QSZRSfu95q350lAVCQ0UXHnKHc2jw.UMnFL1khR++aeC6wfk3nG8nhKa3kaslL4IOYnRkJ.Hc.xr28tWb8qec.T0Mbcs4yhRiFMXG6XGhqGWbwgoMsoYxuz+yKU2kP0VYvCdvXjibj..nrxJS794rtJDDvziRzTRIEbgKbA..7jO4SJ4RdZLNxyO.j1aPSMHeHxdfgftfzetpzTyh+OzC8PhKasynG4kWdRtzZV6SJf.BH.wdhn+.jQ+ADSs8Rgd3CeXSNpSqI+xu7KH6rytVcrVpku7kKdisu0stUbwKdQq5opQMQ+6AxzSOc7m+4eB.K+Rgpii77C.oW8h0st0YyF8tDUSXHnKlCcnCINKwnRkJ7we7Gaz8S+GrmG8nG0p9us2xV1BJojR.PUONeFyXFiU2NMb.xb9yedw1ce6aeQ25V2r5xDPZu4V8pWMJqrxpwu5YO6I.pZldIt3hqVUuVpvBKLw6WRMZzf268dOK5AJqkxv6ARc8FTWnTiabiE6Mp43nO+XVyZVhKmQFYXy+4BQlBCAcgbxSdRI8f5Mey2rZCJFcF5PGpjY29W9keYI2aVlxu7K+hjoksO3C9fZ0kyavCdvh2+WYlYlRFjJ01dAd+6ee7C+vO.fpdpCDUTQAUpTUieYuFkn5r3EuXwK0629seKN24NWcZ4a3kDMkTRQ7oAwXG6XEuTzlii97i92+9im5odJw0eu268p1yDRiorxJCewW7E1jQTJIOwPPW.EWbwXAKXAHxHiTbl9HnfBBKXAKvrG2hW7hEW929seCCX.CvrWJwu+6+dLhQLBw+XXu6cuM6.rvbTnPAdgW3EDWW2MmbSZRSvy9rOaspL2yd1i3e7aPCZPl7V.vPSXBSP7RRlbxIWq9LvrFMu4MGu8a+1..hOTZqK0qd0Kw+4mrxJKISWaVyfMxQd9A.vG+wer3kNNyLyDOxi7HX+6e+Fce0pUK18t2M5d26Nl0rlk3DDNQOn3SVdmHKZQKR7+hW2ST6zRKMbsqcMI2ucO9i+33K9huP745loLjgLDLm4LGr5UuZ.TU.PHgDB5YO6I5cu6M5Uu5ExKu7PhIlHRLwDkLT0CO7vefuDUuvK7BXwKdwRZ6O+y+7V0j0r9z+Rgp+zjVMoUspUX.CX.3W+0eE.U0avO4S9jZUavRMu4MOr90uda1mAYzQGs3yNwCbfC.fplEWrlIhbG84GcoKcAexm7IX9ye9PiFM3d26d3odpmBcricD8pW8BgGd3n3hKFomd53HG4HRpei8LOTeKYIKoF6Q7vG9vwi8XOlU0lOxQNh3rcjNIlXhhKe5SeZw2OAp5dh7EewWzh5cN4fXKeNM4r77hxYlmd5ojmr1l6ql0rlIrsssMqtN9ge3GDZRSZhEWOuxq7J03Ssd8edBZN5+jC2M2byrO28L2ySvacqaI9TE2CO7PH2by0xeCPPPH1XiUrracqasfFMZL5qGXAOOAacqasEUmwEWbU681SbhSXUsaSI0TSsZk8q+5udsprrkmeXt2O04XG6XRd1FZtu7wGeDV6ZWqQKGq42kv+2yvRqUO5QOrp5..B+7O+yVc8HG3rjOvKGpCVzQGsQ+LU7zSOQKZQKP25V2vTlxTvF1vFPpolpU8beSmQO5QijSNY7xu7KiHhHBidqIzfFz.7DOwSf8su8gUspUgFzfFX1xrQMpQ..RteuLlYO6YKdoHG0nFU0tmF0m2d6s3kGyvx8Tm5TPiFM.npmhFV67M5XG6XEKyryNab0qdUIeec8rPsZ0l7FoV2wWSul0YBSXBXAKXAhkW6ZW6PngFpU0tMkN1wNhAO3AKttmd5Id9m+4qUkks37CK48Sc5ae6KRN4jwa+1uMFv.FfQ6kW3gGNV7hWLxHiLL4Tsmo9cISo17LAzZmrwUpTojIabx4iaBB0hmsKVnNL9OSx5WZmutsppHqfff.xLyLwEtvEPCZPCPSaZSQ6ae6spo9pxKubjWd4A+82+Z7Oxc+6eeb+6eeDXfAVi+QphKtXTTQEYz8M2byEZznwh+r.MTYkUFxKu7fZ0pECw0ohJp.4latvO+7yjW5pxKubbu6cO3u+9aUi3SMZzfhKtX3iO9TmdOCB.b6aeanQiF3me9UiASVp5hyOrj2OMmrxJKjYlYh.CLPzpV0JK9e7fbc3rjOvPPhHhr6bVxG3kCkHhHYKFBRDQjrECAIhHR1hgfDQDIawPPhHhjsrqgf1vAhJQDQtHblxBrogfpUI8doJuBJwVVcDQD4Bvvr.CyJrmrogfszeoy7DYcq6YKqNhHhbAXXVfgYE1S1zPvN2tlIY8e4TWwVVcDQD4Bvvr.CyJrmrogf8q6AIY8cc3yhhJtLaYURDQjSrhJtLrqCK8wYV+MHqvdxlFBNrHBA934+Ydk7tEVJ9eh6X1xpjHhHmX+OwcLb2BKUbce7zCLzHBwg0drogf9ntAXpCObIaaKGLYr8DRxVVsDQD4D5qh+zXKGT5yiwoN7vgOpqal72qMroSf1..kTZE3odqshr9qBjr8oNrtiWahOlC8EOQDQ1dEUbY3y1wwvVOjz.vfZZiv99zo.u7z7OIZrkr4gf..W5p2AQ8e80nnRqPx1aRC8DQMntgA1q1ifZdigeMxq57G0LDQDYeIHHf7JnDj0stG9kScErqCeVIWBTfptLn6ZISDcnsMwA0JqhcIDD.3XImEly+89pVPHQDQxK93oGX0uwSgGyANfXzwtEBB.boqdWLyOc2U6RiRDQj7PPMsQ3KdqQ6v6AnN10PPfp9LBW+ObBrkCbZ1qPhHRlvGO8.Sc3giWdLOpC8y.zP18PPcJp3xvgNd53HImEtPF4fajaQn3xqzQzTHhHpNlZUJQK82Gz410Lz+tGDFZDg3TNPHcXgfDIWDQLG0re+i+Q8yN0RHhLDeTJQDQjrECAIhHR1hgfDQDIawPPhHhjsXHHQDQxVLDjHhHYKFBRDQjrECAIhHR1hgfDQDIawPPhHhjsXHHQDQxVLDjHhHYKFBRDQjrECAIhHR1hgfDQDIawPPhHhjsXHHQDQxVLDjHhHYKFBRDQjrECAIhHR1hgfDQDIawPPhHhjsXHHQDQxVLDjHhHYKFBRDQjrECAIhHR1xMAAAAGQEma9EiD98zvuelrvEu5cvek+8QoUnwQzTHhHpNlmd3NZpudiPaa.nuObPXD8siveeU6naVUicODLuBJAe9tRD65WNGJqRF5QDQxAMPo6HpA1U7JQEI7qQd4naNhrqgf+4EuAl8+Xu3NETh8pJIhHxIR.MxKrl48+C8LzV5naJ.vNFBt+idQ7VewOhJpTq8n5HhHxIkGJUfULqgiQ9XcxQ2TrOgf+4EuAl7R9lpE.1l.ZHhZPcCCnmsCsNvFgF4im15lBQDQ1AETTo352t.7u+yLvtN7Yw0tSgR99dnTA9p+qm0g2iPadHXdETBF471R0tDnu535CdoQ+HPkGJskUOQDQNXkWQkXC69jXke6eHY6AzHuP7+io5P+LBs42hDe9tRrZAfqZtiDy4YijAfDQjLfJOTh47rQhUM2QJY624+afR5HYSCAyM+hwt9kyIYau535CFgSv0AlHhH6qQ7XcBu535ijssqe4bH27K1A0hrwgfI76oI41fnMAzP7Ri9QrkUIQDQNwdoQ+HnMAzPw0KqRMHgeOMGV6wlFB96mIKIqG0f5FuDnDQjLlJOThnFT2jrMCyJrmrogfW7p2Qx5CnmsyVVcDQD4Bvvr.CyJrmrogf+U92Wx5sNvFYKqNhHhbAXXVfgYE1S1zPPCmKP48AHQDQFlE3Hm2n4SQBhHhjsXHHQDQxVLDjHhHYKFBRDQjrECAIhHR1hgfDQDIawPPhHhjsXHHQDQxVLDTFq7xKGkUVYN5lA4jxQe9gVsZq4cxIPQEUjitIPO.3rYsC1F1vFvN24NggOaiUpTI7yO+f+96OBMzPw.G3.Q25V2fat4VsttN+4OOhKt3P7wGOt7kuLxO+7g6t6NBIjPPW6ZWQW6ZWQ+5W+vPFxPpwxJt3hCaZSaBZznAd6s2XvCdv3Ue0WsV09DDDvG9geH92+6+MpnhJfGd3Al+7mOFzfFjEWFwEWbX4Ke4njRJAMtwMFqbkqDQDQDV7wOlwLFjVZogV1xVhDRHAnTY0+Uissssgsrks.AAAzl1zFrnEsHzt1UyyGtwFarXSaZSvGe7AacqaEsnEsvhZSG6XGCyd1yFkUVYXXCaXXkqbkV7qG.fzRKMLoIMITTQEggNzghUspUY18ut77CK48SCkQFYfu5q9Jr+8uejQFYf6bm6.0pUiV25Vi90u9gQO5QiQNxQZxywL0uKYJwDSLXnCcnVz9puTSMUr0stUDe7wizRKMTbwECe80Wz4N2YDQDQfEtvEh.BH.qtbIGDAanPh5+VxWT04me9I..K5qt10tJb7iebqtNzpUqv+3e7ODToRkEUOSYJSQnfBJvrkYyadyq1wsxUtxZ06AqZUqpZk0vF1vrpxHjPBQxwOlwLFq538vCODO1BKrPitOAFXfRpiN0oNITVYkUik8Dm3DEOFq4mem4LmQ73TnPgvMtwMr3iUPPP3ce22U73mybliI2Oaw4GVx6m56K+xuTvau8tFq6vBKLgSbhSXzxvZ9cI.H7tu66VisK8UXgEJ77O+yKnPgByVt96u+B6bm6zpJa4Hmk7A1SPGL8uTJ8oO8At6t6..nzRKE28t2E27l2T7RRctycNDYjQh4N24hktzkBu816Zr7u8suMl5TmJRHgDD2lat4F5bm6LhLxHgff.N4IOIN+4OOznop4uust0shidzihcricXxdSc26dW..nPQUWQcsZ0hO6y9LLm4LGwsYIznQCVwJVA..ToREJu7xEe8ao9i+3OP5omtjss+8uejWd4A+7yOKtbpI26d2Sx5olZp3y9rOCye9yuNqNzW25V2PXgEFRIkTfVsZw27MeCl6bmqEe7ey27MhKOwINQitO1pyOrT2+92Gyd1yFaYKaQx1CN3fQu6cuQAET.tzktDxLyLgff.RIkTvPFxPPN4jC7zSoy+jl52kLk92+9aUs0UrhUfu7K+Rw06bm6LBMzPgBEJvoN0oPlYlI..xM2bwTlxTP26d2Qm5De.h6zyVlv5rjz6Lql9OlKojRDRHgDDhHhHp1+QbokVpYK6JqrRgtzktHdLt6t6BqbkqTHu7xqZ668u+8EVyZVif6t6t3927l2bg6e+6a11sZ0pEF1vFl3wbfCb.q50+t28tEOV86wz.Fv.r3xX1yd1hGW3gGt3xqacqyhKCKomK51Ge7wGw80We8U31291lsrqs8DTPPPXYKaYhGae6aes3iKojRR73BN3fEzpUa01G6w4Gl68SAAAgQLhQH475YNyYJbqacqpseolZpBuzK8Rh0+0t10p00Ys07l27D.fvjlzjDN6YOqjumFMZD93O9ieftZFxMNK4CLDzAyR+E2xKubg29seaA2byMw8eoKcolsr27l2r395omdJ7C+vOTism8su8InVsZwia4Ke4lscqVsZgcsqcUquLjCcnCU..Bd3gGBG5PGxpCAKu7xEBHf.D.p5xEum8rGwxne8qeVb6vZBA6bm6rvnF0nD2+W4UdEyV1OHgfW4JWQ7XcyM2Dt5UupEcbKXAKP73hIlXL59XON+vbuep+Ouc2c2EV0pVUMV+G+3GWXricrBkWd40p57AQRIkjPhIlnY2mwMtwI1FTqVsfFMZpyaG0W3rjOvPPGLq8Wb+rO6yD2eu7xKgLyLSitekUVYBAGbvh6arwFqE2lV4JWo3wEP.AXzO+G8CAKqrxDChTpToE+YWkZpoJFpO9wOdgjSNYqNDbu6cuhGyxV1xDJqrxD+rgbyM2DtxUthEUNVSHXHgDhvINwID2eO7vCgzRKMSV1OHgfBBBBQFYjhG+JVwJrnioicrihGig8ZQPv9c9god+TqVsR509rl0rr352Tr0gfVhu4a9FIcYT8lo...H.jDQAQ0F7RW5RNj1gq.mk7AdKR3hYVyZVH3fCF..kTRI3sdq2xn62F23FE+LJZRSZBl7jmrEWGO2y8bhedK24N2Aadya1r6uJUpvy8bOG..prxJqw8Wmu3K9BwQx2LlwLr31m99pu5qDWdBSXBPkJUXricr..PPP.ae6auVUtlSkUVIdjG4Qvy7LOC..pnhJv67NuScd8nSzQGs3x6bm6rF2+yblyfzRKM..wQ0ogrmmeXLwEWb3zm9z.npQBsoNO1USqacqkrtfENRUIGGFB5hQkJUXQKZQhq+y+7Oaz86G+weTb4W3EdgpMHBLG+7yOLtwMNw0SIkTpwiYZSaZhKGarwVi2iWEWbwhCxfPCMT73O9iawsOcxO+7wd26dA.vi9nOJZe6aO.jFZneHYcEcu19vO7CEG5+e+2+83XG6X040E.PTQEk3f73jm7j3JW4Jlc+0e.wn+6E5yde9gg1291m3xSXBSP7eryU2su8skrdyZVybPsDxRwPPWP55ABPUiDs6bm6Ts8Q++P4HFwHr55X.CX.hKqqGClSXgEFhLxHE2+CcnCY18e6ae6hi1xZau.+tu66DGEoSXBSPb6+s+1eCsrksD.UMBNO4IOYsp7MEc+28cpScB+8+9eWb6u4a9lV7wZMZZSapj6MuZp2fVxnB0de9ggtzktj3xVy8CpytibjiHtbm6bmQiZTibfsFxRvPPWPMpQMBMoIMQb8KdwKVs8Q++HmgWhFKQyadyEWNqrxxhNF86M35W+5M69tl0rF..3kWdgoLkoX0sOfpt40Ap51zX7ie7haWgBERBEqq6Mn9AYu+6+9ngMrg.npaUC8CfpKYoWRzyd1yhTSMU..z291WS1CKGw4G5S+PPaQu.yImbvst0sL5WF6eZrtfVsZk7yFS0Kbx4BCAcQo6R+AT8PvbxIGTbwEKtttdEYMzeVMIqrxxh5Ay3G+3gO93C.p5xccyadSiteG6XGCImbxhGSs4d46ZW6Z329seC.Uc+dY3qQ86AzW+0eMprxJs55vRzzl1TIedfwDSLh2qi0kFyXFC7xKu..PxImrXPmgrjKEpi57Cc9q+5uPAETf351hPvPBIDzhVzBi9UfAFHNyYNScdctwMtQb0qdU..nVsZL0oN0575fp6wPPWT5+YMX3+YaFYjg3xd4kWhASVC86oYokVpj+noo3iO9H1CrJqrRroMsIite55EH.vLm4Ls51F.vN1wND+CuF6R906d2azgNzA.T0ez8fG7f0p5wR75u9qK1apKe4Ki0t10VmWGMrgMDO4S9jhqapdCpKDToRkHpnhxn6ii57CczuWft4lanMsoMVc8+fJ+7yuNs7tyctChIlXDWeoKcoNjWWj0igftntwMtg3x52qP.Hd44.pZDjValDjyKu7DW1e+82hlcZ..l9zmt3xabiarZCPlbxIG7ce22A.fvCOb7nO5iZ0sMf+ykBUoRkhiFTCYqGfL53kWdgksrkIt9RVxRp1rKScgIMoIItrwBAO24Nm3UEXHCYHHv.Cznkii77C.HYdDUPPvlLATu4MuYricrCi90t10tPe5SepypKsZ0hoO8oibyMW.T0fz5Ue0WsNq7IaKFB5hR+AiPG6XGk78BJnfjr9e8W+kUW95GxZISRz5DQDQfvBKLw1ngCPlXiMVwKWXsc.wjTRIINhDG5PGpImrh0uGh6YO6AEVXg0p5yRL4IOYDd3gCfpFrR5GJVWYDiXDnwMtw.npI65yd1yJ46aIWJT.G64G.UcoJ0WsYf0TSF23FGl3DmnQ+5Ye1mEd3gG0Y0ULwDC1yd1C..BHf.v1291spoNPxwh+jxETgEVn3+0I.Dure53iO9H4yY6V25VVccn+mmm09G4zu2f5O.YznQi35MrgMrVOvAzuWcMtwMFaZSaxnecricLw.xhKtX78e+2WqpOKgBEJvm9oep35e9m+43ZW6Z..OPO4OzmJUpjbqIXXuA0EB5kWdgQO5QaxxwQe9QSZRSfu95q350lAViyhMsoMgku7kCfpdeee6aeUKjmbtwPPWP5tIiApZPMXrKEk9+29F1iAKwQO5QEW1vK2ZMYxSdxPkJU.P5.jYu6cu35W+5.npa35ZymEkFMZvN1wNDWOt3hCSaZSyjeo+mWptKgpsxfG7fwHG4HA.PYkUl38yYcUHHfoGknojRJ3BW3B..3IexmTxk7zXbjme.Hs2flZP93rK93iW7pYnPgBDWbwUmdYVI6CFB5B5C9fOPbYSMK9+POzCItr0NidjWd4I4RqYsOo.BHf.D6Ih9CPF8GPL01KE5gO7gM4nNsl7K+xufryN6Z0wZoV9xWt3M19V25VwEu3EqSuzX5eOPld5oi+7O+S.X4WJTcbjme.H8pWrt0sNa1n20V429seCiabiCUTQE..X0qd03oe5m1A2pnZCFB5h4PG5PhyRLpToBe7G+wFc+d4W9kEW9nG8nV0+s8V1xVPIkTB.p5w4yXFyXr51ogCPlye9yK1t6ae6K5V25lUWl.R6M2pW8pQYkUVM9UO6YOAPUCfg3hKtZU8ZoBKrvDueI0nQCdu268rnGnrVJCuGH00aPcgRMtwMVr2nlii97iYMqYItbFYjgM+mK0kN4IOIdpm5oDeO3i9nOpVOJmIm.1xIlTmkIHUmYVyj96INwIDZe6au39WSOTP6ae6q39929a+Mg7yO+Zr8b3CeXgF0nFIdbl5IKf9Sf1FiFMZjLAM+vO7CKt7V25VM5wTSSf1EUTQhOFib2c2E9q+5upwWOBBBBqXEqPrb6d26tYe8XteNnaeZcqasYquadyaJ1NcyM2DdjG4QDK6+3O9CKpMaN+u+u+uhkWPAEjv4N24DWeZSaZVb4XON+vbue9TO0SItOAGbvVzjMcokVpvZW6ZMZYZOl.sO6YOqf+96uX8rvEtPaR8HG3rjOvPPGLK4Wbu+8uuv69tuqjmkaAETPl7Y4lN5+npQW.f4dBO7ce22IzfFz.w8u28t20X61TgfBBBBKdwKVR8C.glzjlHTRIkXz8ulBA2912t32enCcnl4UtTW+5WWxSC7yblyXxWO0EgfBBBBevG7AU60dcUHnffzmRDCe3CWb4e9m+YKtLrGmeXt2OSIkTjbNciabiE9W+q+kQ2WMZzH7C+vOHzoN0IA.HbpScpZUc9f3xW9xBsnEsPrNdi23MpyqC4Dmk7A9jk2IxhVzhDGPI5dhZmVZogqcsqI49s6we7GGewW7EPsZ0ls7FxPFBlyblCV8pWM.pZlFIjPBA8rm8D8t28F8pW8B4kWdHwDSDIlXhRFp5gGd3OvWhpW3EdAr3EuXIs8m+4edqZxZVe5eoP0eZRqlzpV0JLfAL.7q+5uBfpFcoexm7I0p1fkZdyadX8qe81rOCxniNZ79u+6C.fCbfC.fplEWrlIhbG84GcoKcAexm7IX9ye9PiFM3d26d3odpmBcricD8pW8BgGd3n3hKFomd53HG4HRpec2pHlxRVxRD+cISY3Ce33wdrGyhauO2y8bhedz95qunxJqDu1q8Zl8XTqVMVzhVDZPCZfEWOjclsLg0YIo2Ylmd5oQ6wfw9pYMqYBaaaaypqie3G9AglzjlXw0yq7JuRM9Tq2R5Inffzmb3t4lal84tm45I3st0sD60fGd3gPt4lqk+FfffPrwFqXY25V25p8vNsttmfBBBBwEWbU681SbhSXUsaSI0TSsZk8q+5udsprrkmeXt2O04XG6XRtz4l6Ke7wGg0t10ZzxwZ9cIfpdFVZMTpToUU959ptp2+023rjOvAFiCVzQGsQGB8d5omnEsnEnacqaXJSYJXCaXCH0TS0pdtuoynG8nQxImLd4W9kQDQDgQu0DZPCZ.dhm3Iv9129vpV0ppw+yUcyN95e+dYLyd1yVbzQNpQMppcOMpOu81awQVogk6oN0ofFMZ.PUOEMr14azwN1wJVlYmc1hywi5nqmEpUq1j2H05N9Z50rNSXBS.KXAKPr7ZW6ZGBMzPsp1sozwN1QL3AOXw08zSOwy+7OesprrEmeXIuepSe6aeQxImLd629sw.Fv.LZu7BO7vwhW7hQFYjgIGDJl52kLk1111Zw6K.DGfUVCO8zyZ0byJY+3lffs6o9XGF+mIY8KsyW2VUUjUPPP.YlYl3BW3BnAMnAnoMson8su8V0TeU4kWNxKu7f+96eM9G4t+8uOt+8uOBLv.qw+HUwEWLJpnhL59lat4BMZzXxoCrZRYkUFxKu7fZ0pq1i3lJpnBjat4B+7yOSdYzJu7xw8t28f+96uUMhO0nQCJt3hgO93Sc58LHPUO+5znQC7yO+pytja0EmeXIueZNYkUVHyLyDAFXfnUspUV7+3A45vYIefgfDQDY24rjOvKGJQDQxVLDjHhHYKFBRDQjrECAIhHR1hgfDQDIawPPhHhjsrogfd5g6RVufhJ0VVcDQD4Bvvr.CyJrmrogfM0Wo2bsW+1EXKqNhHhbAXXVfgYE1S1zPvPaa.RV+e+mYXKqNhHhbAXXVfgYE1S1zPv99vAIY8cc3yhxqv05IHMQDQ0cJuhJwtN7YkrMCyJrmrogfinucDMP4+4Z8ds6TH1vtOosrJIhHxI1F18Iw0tSghq2.ktiQz2N5vZO1zPP+8UMhZfcUx1V429GHgikpsrZIhHxITBGKUrxu8OjrsnFXWg+9Z9mMp1R17aQhWIpHQ.MxKIaatqJdr5uIQdoQIhHYfxqnRr5uIQL2UEujsGPi7BuRTQ5fZUUwl9TjPm+7h2.SdIeCpnRsR1daBngHpA0MLfd1Nz5.aDZjO0tm33DQD4bofhJEW+1Ef+8elA10gOqjKAJ.fGJUfu5+5YQOC0w97VztDBB.r+idQ7VewOVsfPhHhjW7PoBrhYMbLxGqSN5lh8KDDnpdDN6+wdwcJnD6UURDQjSj.ZjWXMy6+mCuGf5XWCAA.xqfRvmuqDwt9kygxpTi8rpIhHxAoAJcGQMvthWIpHgeFLNQbjr6gf5ja9EiD98zvuelrvEu5cvek+8QoUvPQhHp9.O8vczTe8Fg11.Pee3fvH5aGcniBTSwgEBRjbQDwbTy98O9G0O6TKgHxP7oHAQDQxVLDjHhHYKFBRDQjrECAIhHR1hgfDQDIawPPhHhjsXHHQDQxVLDjHhHYKFBRDQjrECAIhHR1hgfDQDIawPPhHhjsXHHQDQxVLDjHhHYKFBRDQjrECAIhHR1hgfDQDIawPPhHhjsXHHQDQxVLDjHhHYKFBRDQjrECAIhHR1hgfDQDIawPPhHhjsXHHQDQxVLDjHhHYKFBRDQjrECAIhHR1hgfDQDIawPPhHhjsXHHQDQxVLDjHhHYKFBRDQjrECAIhHR1hgfDQDIawPPhHhjsXHHQDQxVLDjHhHYKFBRDQjrECAIhHR1hgfDQDIawPPhHhjsXHHQDQxVLDjHhHYKFBRDQjrECAIhHR1xMAAAA6cklcdWAIcsihKlyovsKHaTRkEauaBDQDYG3kR0HvF0JDZy5E5Qa5GZkes2Q2jjvtFBdmBuA1Sx+SblrSzdUkDQD4D4gaUj3o69zP.MrkN5lB.rigfW3FmDaIwOg85iHhj47RoZL0HmO5bKeDGcSw9DBdgabRr9irXH.s15phHhHW.tAE3k6+hb3Ag17Pv6T3MvJN3bqVO.ae.cA8OjmDOTfcCMzqFCEt4tsrYPDQjclVAMnvRtGt7sOKNR5+Kbk6bdIeeuTpFu4vVkC8RiZyCA+mGco3LY+6hqqvMEXr8XFnec7IskUKQDQNYNZZ+K7cIsNnU3+bUAe3V0WLs9sPGVaxldKRjcdWQR.H.X.HQDIS0uN9jXr8XFR11Yx92Q14cEGTKxFGBlz0Npj0ae.cgAfDQjLV+53Sh1GPWjrMCyJrmrogfWLmSIY89GBC.IhH4NCyBLLqvdxlFBd6BxVx5OTfcyVVcDQD4Bvvr.CyJrmrogfFNhPanWM1VVcDQD4Bvvr.G48OtcctCk2FDDQD4LkEvIPahHhjsXHHQDQxVLDjHhHYKFBRDQjrECAIhHR1RoitAPj0ZCaXCXm6bmvvo8VkJUB0pUifBJHLxQNRLvANPnRkJyVViXDi.YkUVncsqcX+6e+VbaX5Se5HwDSDAFXfXO6YOvWe8sZ6ynG8nQZokFZUqZERHgDfRkV9utYpWilRLwDCF5PGpEW9lR4kWN93O9iwW9keIprxJwBVvBvK+xu7Cb4RjyJFBRtbdm24cPd4kmY2mUspUA+7yOrl0rFLwINQitOZznAG3.G...W7hWzpZCG5PGBW8pWE..4kWdFMDL93iGUTQE3BW3BnzRKE93iOVb4aIuF0WjQF4CbHXhIlH96+8+NRIkTD21ktzkdfJShb1wPPxkSQEUj3x8qe8Ct6dU2yQkVZo3F23F3ZW6Z.npvoniNZjVZogEsnE4PZq0V5+ZrO8oOhuFMk92+9+.UWwDSLXsqcsPqV9L+jjWXHH4RKgDRnZ8vJ4jSFu1q8Z3W+0eE..KaYKCQEUTnyctyNfV3CtCcnCYU8hzZ7S+zOgoMsoI1q1G5gdHz4N2Y7u9W+KaR8QjyFNvXn5c5d26NhO93QyadyA.PEUTA1vF1fCtU4bZpScp3pW8pPsZ0XIKYIHkTRA8su80Q2rHxtggfT8Rd4kWXvCdvhqegKbAGXqw4kRkJwXG6XwEtvEvBW3BQCZPCbzMIhrq3kCkp2JxHiDae6aG..4latN3ViyoKdwKBu7xKGcyfHGF1SPpdqry9+73YIjPBwA1Rbdw.PRtigfT8REUTQ3q+5uVb8G+webGWigHxoEubnT8Nomd5XVyZVHiLx...gFZn3EewWzA2pp8xImbjbKSnOkJUh.BH.6bKhn5OXHH4R6Mdi2.d3gG.npO2uzSOcjbxIiJpnB..DVXgg3iOdqZ1ZwYSMcobSN4jwC+vOrcp0PT8Ktt+kAh.PrwFqQ2dyZVyv7l27vLm4LsY2icNKxO+7czMAhbYwPPxkV6ae6gBEJvcu6ckLMiUQEUf1111VuH.byadyl7VWPoRknO8oO14VDQ0evPPxkVxImrXP20u90whW7hwF23FQt4lKhN5ngO93CF0nFkCtU9fYbiab0KByIxYDGcnT8Fst0sFwFar3se62F..Z0pEyXFy.EWbwFc+cyM2DWVPP.UVYkVbco+brYMMudRD47hgfT8NKcoKEcnCc..U06v+4+7eZz8SgBEhSsZ..YkUVVT4WQEUfacqaA..O8zSzpV0pGvVLQjiBCAo5c7vCOva7Fug35qbkqzjOW95RW5h3xomd5VT4mYlYJ1qwN0oNAEJ3uFQjqJ9auT8RSYJSAMpQMB..W9xWFG5PGxn6m9OYIN3AOnEU15d5T.HMDkHx0CCAo5kTqVMhN5nEWecqacFc+zejUt5UuZb4KeYyVtEUTQRd1D9DOwS7.1RIhbjXHHUu0zm9zEWdu6cuRlKQ0I5niFQFYj..n7xKGOyy7L3rm8rFs7t4MuIhJpnvMu4MAPUOHamxTlhMnkSDYuvaQBpdqd0qdgdzidfjRJInQiFrwMtwp8DlWgBEH1XiE8rm8DkWd43Lm4Ln28t2XRSZRnG8nG3gdnGBW+5WGm+7mGaaaaS7dQTkJUX8qe8RFgolyLm4LEmYaLl92+9iW3EdAi98VxRVBToRkYK+gO7giG6wdLKpsnuibjifjSNYIaKwDSTb4Se5SiUu5UKttRkJwK9huXM1dHxUgaBlZDCTG3U24Hkr9JGe71pphjQToRk3zhVgEVnYuG5VyZVClyblC..ZSaZCxJqrLZvU7wGOl8rmMxLyLqw5OrvBCqe8quFCc7xKuPokVZMVd..8rm8Dm5TmpVcr..ie7iWxDFtkJ7vCGIkTRV0w7y+7OiAMnAY00EQ5yYIefWNTxkSiabiA.f2d6sY6cE.vjlzjDmfoyN6rM4sAwHG4Hw4O+4wBVvBPPAET0BJ8vCOPngFJ9nO5ivoO8osndcEczQaw8TL3fCtVer..ssss0h2W805V2ZqZ+UpTojaqDhb0wdBRtbpnhJPt4lK7yO+rnKKWEUTAt6cuKZXCaH71ausn5n3hKFolZp3l27ln8su8HjPBwkdR3lHmMNK4C72pIWNd3gGnYMqYV09as8dQsZ0H7vCGgGd3VayiHxEBubnDQDIawPPhHhjsrqgfZEzXOqNhHhbB4LkEXSCA8RoZIqWXI2yVVcDQD4Bvvr.CyJrmrogfA1vVJY8KeaiOSbPDQj7ggYAA1HG2ShEaZHXnMu2RV+Ho+urkUGQDQt.LLKHzl0KGTKwFGB1i1zOIqek6bdbzzXPHQDIWczz9W3J247R1lgYE1S1zPvV4W6wC2pHkrsuKo0wfPhHRF5no8uv2kjzmnKObq5KZkes2A0hrwyXL..2ovafUbv4hRprXIau8AzEz+PdR7PA1MzPuZLT3l61xlAQDQ1YZEzfBK4d3x29r3HoW8d.5kR03MG1pP.FL9Qrmr4gf..W3FmDq+HKFBPqstpHhHxEfaPAd49uHz4V9HN11g8HDDnpfvsj3mTsdDRDQj7hWJUioF47c3Af.1wPPfptzn6I4Mgyj8uaupRhHhbh7vspu3o69K5PuDn5ytFBpS14cEjz0NJtXNmB2tfrYuCIhn5o7RoZDXiZEBsY8B8nM8ygNHXLFGRHHQxIQDyQM62+3ejia3gSjbGm.sIhHR1hgfDQDIawPPhHhjsXHHQDQxVLDjHhHYKFBRDQjrECAIhHR1hgfDQDIawPPhHhjsXHHQDQxVLDjHhHYKFBRDQjrECAIhHR1hgfDQDIa4PdTJc6ByFmLyCiKkSR3VEdcTR4EAAvmnSDQT8ItA2fWp7AMugsFcnY8.ORvCBA1vV4naVRXWCAKnjbw9OyVwwy7mf.zZupVhHhbB3FTfHBdHXTO7TPi7xeGcyA.1wPvrt6Ew+7nKE4WZt1ipiHhHmT95o+XZ8agHnlDpitoXeBAy5tWDq5vyGUpsBacUQDQjK.kJ7.ycPehCOHzlGBVPI4hO8GeETPY4IY6sz2fv.5vSiN0rd.eUG.bWgRaYyfHhH6LMZqD4W7cPp4jD9sKsaby7upjuuud5OdygsJG5kF0lGBF2w+evej4AkrsQzknwv5ZzPgabvoRDQxAZEzhCdtcfDN+Njr89D7vvDi30bPsJa7sHwsKLab7L+IIaaDcIZL7tMYF.RDQxHJbSAFd2lLFQWhVx1Odl+DtcgY6fZU13PvSl4gkLJPaouAgg00nMyQPDQT8YCqqQiV3aaEWW.ZwIy7vNr1iMMD7R4jjj0GPGdZ1CPhHRFSgaJveqCiVx1LLqvdxllHcqButj06Ty5gsr5HhHxEPGMHKvvrB6IaZHXIkWjj08Uc.1xpiHhHW.M1fr.CyJrmrogfFNUnwaCBhHhLLKvQNsYxOfNhHhjsXHHQDQxVLDjHhHYKFBRDQjrECAIhjnnhbbiTOhr23v0jb4rgMrAryctSX3zdqRkJgZ0pQPAEDF4HGIF3.GHToRkYKqQLhQfrxJKzt10Nr+8ueKtML8oOcjXhIh.CLPrm8rG3qu9Vs8YzidzHszRCspUsBIjPBPoRK+W2L0qQSIlXhACcnC0hKe8kZpohst0sh3iOdjVZoghKtX3qu9hN24NiHhHBrvEtPDP.71ahpexlNAZ+p6bjRVekiOdaUUQxH96u+Hu7xqF2O+7yOrl0rFLwINQi980nQiXvjat4Fzp0xePOGTPAgqd0plQ7yHiLPvAGb01GUpTgJpnpGeXEVXgvGe7whKeK80nNu669tXYKaYV79CTUO9dkW4UvV25VM6qc+82e7EewWfnhJJqp7IxbbVxGXOAIWN5e455W+5Gb2c2A.PokVJtwMtAt10tF..xKu7PzQGMRKszvhVzhbHs0ZK8eM1m9zGwWilR+6e+s55XEqXE3K+xuTb8N24NiPCMTnPgBbpScJjYlYB.fbyMWLkoLEz8t2czoN0IqtdHxYFCAIWZIjPBUqGVImbx30dsWC+5u9q..XYKaYHpnhBctyc1AzBevcnCcHqpWjVJcAsSZRSBuy67NnqcsqheOsZ0hO8S+T7Nuy6..fxJqLL24NW7i+3OVm2NHxQhCLFpdmt28ti3iOdz7l2b..TQEUfMrgM3faUNedtm64PhIlH9pu5qjD.B.nPgBL+4OeLtwMNwsczidTq5RFSjq.FBR0K4kWdgAO3AKt9EtvEbfsFmScu6cG8oO8wr6y3G+3EWt3hKFW4JWwV2rHxthgfT8VQFYjhKmat45.aIttZcqasj0sgiiNhbHXHHUuU1Y+edZUGRHg3.aIttt8susj0aVyZlCpkPjsACAo5kJpnhvW+0es35O9i+3NtFiKribjiHtbm6bmQiZTibfsFhp6wQGJUuS5omNl0rlExHiL..PngFJdwW7EcvspZubxIGSNKtnToRa1MxtVsZwN24NEWO5ni1lTOD4HwPPxk1a7FuA7vCO.PUeteomd5H4jSV7lTOrvBCwGe7V0r0hylZ5R4lbxIiG9ge3575ciabihSH.pUqFScpSsNuNHxQy08uLPD.hM1XM51aVyZFl27lGl4LmoM4dryYR94mecdYdm6bGDSLwHt9RW5RQaZSapyqGhbzXHH4Rq8su8PgBE3t28tRllwpnhJPaaaaqWD.t4MuYzfFz.i98TpTYMdaNXszpUKl9zmt3Hp8QezGEu5q9p0o0AQNKXHH4RK4jSVLn65W+5XwKdwXiabiH2byEQGczvGe7AiZTixA2JevLtwMN6ZXdLwDC1yd1C..BHf.v1291gBEbLzQ0Owyro5MZcqaMhM1Xwa+1uM.ppGMyXFy.EWbwFc+cyM2DWVPP.UVYkVbco+LmRMMud5JYSaZSX4Ke4.npIbf8su8wauDpdMFBR06rzktTzgNzA.TUuC+m+y+oQ2OEJTHN0pA.jUVYYQkeEUTAt0stE..7zSOQqZUqd.awNGhO93wLlcTs7MB...B.IQTPTwL.PUu2DWbwUmeoVIxYCCAo5c7vCOva7Fug35qbkqzjyzIcoKcQb4zSOcKp7yLyLE60Xm5TmpWboB+se62v3F23DGUsqd0qFO8S+zN3VEQ1dt9+1KQFwTlxTDuwtu7kuLNzgNjQ2O8exRbvCdPKpr08zo.PZHpqpSdxShm5odJTRIk..fO5i9HLyYNSGbqhH6CFBR0KoVsZI2b2qacqyn6m9WtuUu5UiKe4Ka1xsnhJRxylvm3IdhGvVpi04N24vvG9vQgEVH..V3BWn3iOIhjCXHHUu0zm9zEWdu6cuRlKQ0I5niVbh1t7xKGOyy7L3rm8rFs7t4MuIhJpnvMu4MAPUOHamxTlhMnkaebkqbELrgMLwaEh23MdCrjkrDGbqhH6KdKRP0a0qd0KzidzCjTRIAMZzfMtwMVsmv7JTn.wFarnm8rmn7xKGm4LmA8t28FSZRSB8nG8.OzC8P35W+537m+7Xaaaah2KhpToBqe8qWxHL0bl4Lmo3Laiwz+92e7BuvKXzu2RVxRfJUpLa4O7gOb7XO1iYQsEcdtm64DCz80WeQkUVIdsW60L6wnVsZrnEsHSdeKRjqF2DrgOaTd0cNRIquxwGusppHYDUpTIN.NJrvBM68P2ZVyZvblyb..PaZSaPVYkkQCthO93wrm8rQlYlYMV+gEVXX8qe80XniWd4EJszRqwxC.nm8rm3Tm5T0piEnpm6e5OggaI7vCOrpaKDc9i+3OPDQDgUebDoOmk7Ad4PIWNMtwMF..d6s2ls2U..SZRSRbBlN6ry1j2FDibjiDm+7mGKXAK.AETPUKnzCO7.gFZn3i9nOBm9zm1h50UzQGsE2SwfCN3Z8wB.z111VKde0om8rmV8w3omdhV1xVZ0GGQNqXOAIWNUTQEH2byE94me03kIT29e26dWzvF1P3s2daQ0QwEWLRM0TwMu4MQ6ae6QHgDhK8jvMQNabVxG3uUStb7vCOrpGtqd3gGRto3sDpUqFgGd3H7vC2ZadDQtP3kCkHhHYKFBRDQjrECAIhHR1xlFB5FjN51zn05GN1DQDU+hgYAFlUXOYSCA8Rkz6eq7K9N1xpiHhHW.2yfr.CyJrmrogfMugsVx5olSR1xpiHhHW.oYPVfgYE1S1zPvNzrdHY8+8k1CzJn0D6MQDQ02oUPK9sKsaIayvrB6IaZH3iD7ffa5UE2H+rvAO2NrkUIQDQNwN341AtY9WUbc2fB7HAOHGV6wlFBFXCaEhH3gHYaIb9cfCb1uh8HjHhjQzJnEG3reER37R6HTDAODDXCakCpUYim1z..Jnjbwm9iuBJnr7jr8V5aPX.c3oQmZVOfupC.tqfSdMDQT8IZzVIxu36fTyII7aWZ2R5AH.fud5OdygsJzHu72A0BsCgf..Yc2KhUc34iJ0VgstpHhHxEfREdf4NnOAA0jPcnsC6RHHPUAg+yitTjeo4ZOpNhHhbR4qm9io0uE5vC.Arigf.UcoQ2+Y1JNdl+DD.+LAIhH4D2fBDQvCAi5gmhC8RfpO6ZHnN2tvrwIy7v3R4jDtUgWGkTdQP.18lAQDQ1PtA2fWp7AMugsFcnY8.ORvCxgNHXLFGRHHQxIQDyQM62+3eT+rSsDhHCwIPahHhjsXHHQDQxVLDjHhHYKFBRDQjrECAIhHR1hgfDQDIawPPhHhjsXHHQDQxVLDjHhHYKFBRDQjrECAIhHR1hgfDQDIawPPhHhjs3iRIhHhrI3iRICvGptDQj7kr9gpaV28h3edzkh7KMW6Q0QDQjSJe8zeLs9sPDTSB0Q2TrOgfYc2KhUc34iJ0VgstpHhHxEfREdf4NnOwgGDZyCAKnjbwm9iuBJnr7jr8V5aPX.c3oQmZVOfupC.tqPosrYPDQjclFsUh7K9NH0bRB+1k1MtY9WUx22WO8Gu4vVkC8RiZyCAi63+O3Ox7fR11H5RzXXcMZnvMN3TIhH4.sBZwAO2NPBmeGR1deBdXXhQ7ZNnVkM9Vj31ElMNdl+jjsMhtDMFd2lLC.IhHYDEto.CuaSFinKQKY6GOyeB2tvrcPsJabH3Iy7vRFEnsz2fvv5Zzl4HHhHp9rg00nQK7sshqK.s3jYdXGV6wlFBdobRRx5CnCOM6AHQDIiovME3u0gQKYaFlUXOYSSjtUgWWx5cpY8vVVcDQD4BniFjEXXVg8jMMDrjxKRx59pN.aY0QDQjKfFaPVfgYE1S1zPPCmJz3sAAQDQFlE3Hm1L4GPGQDQxVLDjHhHYKFBRDQjrECAIhHR1hgfDQDIawPPhHIJpHG2vUmH6MdOKPtb1vF1.14N2ILbteWoRkPsZ0HnfBBibjiDCbfCDpToxrk0HFwHPVYkEZW6ZG1+92uE2Fl9zmNRLwDQfAFH1yd1C70Weq19L5QOZjVZogV0pVgDRHAnTok+qal50noDSLwfgNzgZwku9RJojv1111vANvAPFYjAJojRf2d6M5PG5.hHhHv68duGZYKaYsprIxYmM8oHwqtyQJY8UN93sUUEIi3u+9i7xKuZb+7yO+vZVyZvDm3DM52WiFMhASt4laPqVsFc+LlfBJHb0qV0iElLxHCDbvAWs8QkJUnhJp5YnYgEVH7wGer3x2ReMpy69tuKV1xVlEu+..ETPA3kdoWB6bm6zr6m2d6MVyZVCl5TmpUU9DYNNK4CrmfjKG8ubc8qe8Ct6t6..nzRKE23F2.W6ZWC..4kWdH5niFokVZXQKZQNj1Zsk9uF6Se5i3qQSo+8u+Vcc74e9mKF.5s2digO7givBKLnToRjTRIgcu6cCsZ0h6e+6iYLiYf9zm9fN0oNY00CQNyXHH4RKgDRnZ8vJ4jSFu1q8Z3W+0eE..KaYKCQEUTnyctyNfV3CtCcnCYU8hzRUPAE.0pUiXhIFLm4LGz3F2XIe+DSLQL3AOXTRIkfRKsTr3EuXricrCSTZD4ZhCLFpdmt28ti3iOdz7l2b..TQEUfMrgM3faUNelwLlARO8zwBW3BqV.H.PjQFId0W8UEWOojbbyz+DYqvPPpdIu7xKL3AOXw0uvEtfCr03bpcsqcnEsnElcez+xrdkqbEacShH6NFBR0aEYjQJtbt4lqCrk35pvBKTb4ZJvjHWQLDjp2J6ryVb4PBIDGXKw00wN1wDWtG8fOOPo5eXHHUuTQEUD95u9qEW+we7G2w0XbQchSbBrt0sNw0eq25sbfsFhrM3nCkp2I8zSGyZVyBYjQF..HzPCEu3K9hN3VUsWN4jiImEWTpTIBHf51GV025V2BabiaDKe4KW79bbQKZQnu8su0o0CQNCXHH4R6Mdi2.d3gG.npO2uzSOcjbxIK9GuCKrvP7wGuUMas3roltTtImbx3ge3GtVW9uzK8R329seCBBB3V25VR9b.6e+6Ol6bmKF23FWst7IxYlq6eYfH.DarwZzs2rl0LLu4MOLyYNSax8Xmyj7yO+Gni+W9keAomd5Ua6pToBMrgMDYmc1392+9vau89ApdHxYDCAIWZsu8sGJTn.28t2UxzLVEUTAZaaaa8h.vMu4MiFzfFXzumRkJQe5SedfJ+O7C+PbxSdR..bu6cOjYlYhTRIEbiabCDe7wi3iOd74e9micricfG8QezGn5hHmMLDjbokbxIKFzc8qecr3EuXrwMtQjat4hniNZ3iO9fQMpQ4fakOXF23FmMML+Ye1mEO6y9rR1VkUVI95u9qw67NuCxN6rwku7kwHG4HQJojBZVyZlMqsPj8FGcnT8Fst0sFwF6+e16NO9lnN++A9qb0lldA8jVoWB8PNpHkZqHnbIHhtn3E5pf2J6Ae+sttn65W28qtdsd7c0utJp388En.h.EAjKADnkixQoTJEZo2GoMMMMMIyu+HalsooGIs4pcd87wi93QmLYl4SRalW48LelOyJvxV1x..fEKVvC8PODzqWe297kISl3uKHH.SlL4zaqNOXa2WiqmCFoToRbG2wcfe3G9Aw.35qud7m+y+YebKiH2KFBRC47zO8SiTSMU.Xs5v28ce2t84IWtbwgVM.fxJqLmZ82QGcfpppJ..nVsZbAWvEL.aw9uxLyLwcdm2o3z1FOVIZnBFBRC4nRkJ7vO7CKN8q9puZOde4aLiYLh+d204P5Nm4LmQrpwzSOcHW9P6OFkc1YK96m4LmQrm2RzPACs+zKIYsnEsHDVXgA.fRJoDroMsot84046rD4kWdN05tyUC04PzgpZpolD+8jRJIwKIEhFJfgfzPRZznA29se6hS24Q9jNqy8rx+0+5egRJojdc8pSmN6t2DNm4LmAXK0+Wm+xASbhSzG1RHx8igfzPV228ceh+9ZVyZrarD0la+1ucwAZaiFMhErfEfibjizsquJqrRbK2xsfJqrR.X8BIeQKZQdfVtmWc0UGxN6rwm9oepccxmt5Mdi2.aXCaPb5a3FtAuQyiHuFdIRPCYkUVYgILgIfCdvCBylMi24cdGGtCyKWtbrhUrBLwINQXznQb3CeXLoIMI7q+0+ZLgILALpQMJTd4kiicrigO9i+XwqEw.BH.7Vu0aYWOLs2rjkrjd8vHN0oNUb228c2sy6u+2+6Hf.BnWW+W8Ue03xu7K2oZK.VGJ11+92Oti63Nve5O8mvBW3BwjlzjPJojBLa1LN4IOI9rO6yvl27lEWla4VtEbG2wc3zaChFLPlPO0iAbC9u9xqwtoe0a8G7TaJRBIf.BPryYzRKszqWCcu9q+532869c..HgDR.kUVYcav0O7C+.9s+1eKNyYNSet8G6XGKdq25s5yPmfBJHXvfg9b8AX8vLdfCbf90xB.bq25sZ2.FdewfACHiLxvo6QryYNyAe4W9kH7vC2o2FD0a7WxG3gCkFzw1cA8fCN39rSZ7q+0+ZwAX5Jpnhdbm9Wy0bM3XG6X3we7GGIkTRNDTpRkJjQFYfm64dNTPAE3TUcc629s6zUJlbxI2uWV.fDSLQm94BX8R63HG4H3UdkWAYmc1c605X.AD.xM2bQd4kG1vF1.C.ogjXkfzfNczQGngFZ.Ce3CuOOLg1d90We8HzPC0oG+K0qWOJpnhPkUVItvK7BwnG8nGTOHb2WZt4lwoN0oPM0TCTnPAF8nGMRLwDGRNP.P9G7WxGF59oZZHKUpT4RCcWpToxtKJdmgFMZvkbIWBtjK4Rb0l2fRgEVXrmeRRR7vgRDQjjECAIhHRxxiFBJC1eh8Maw4GfhIhHZnotlEz0rBuIOZHXPAXeWWWq957jaNhHhFDnotjEz0rBuIOZH3HBcj1McQUePO4liHhnAANYWxB5ZVg2jGMDL0XmfcSu8hWMrHzyCQSDQDMzlEAKXaE+c18XcMqvaxiFBlcxy.x5zl37ZKC4U3m4I2jDQD4GKuB+LTo1yJNsLHGYm7L7YsGOZHXzgdAHmjmkcO15O1mgMbjOgUDRDQRHVDrfMbjOAq+X1WHTNIOKDcn9taL0dzQLF.flaqA7ha72ilauQ6d73COIbEoNejdrS.gqIJnPNut8IhngRLawDzpuNTT0GDaq3uytJ.A.BWcD3Ql8+GBKnH7QsPuPHH.PY0eB7+skGElrv6H0DQDAnTtJrzY7OPRQlgOsc3UBAArFD9t67ogVCM3M1bDQD4mJb0Qf6cJ+297.P.uXHHf0CM55N7Gg8dleDBfmSPhHRJQFjibRdVXdYtHe5g.sy7pgf1TaKUf8clsfhq9fnpVJGsYTGDfWuYPDQjGjLHCAEPHXDgNRjZrS.Ym7L7ocBltiOIDjHojb9y6rWm+deto3kZIDQcEG.sIhHRxhgfDQDIYwPPhHhjrXHHQDQRVLDjHhHIKFBRDQjjECAIhHRxhgfDQDIYwPPhHhjrXHHQDQRVLDjHhHIKFBRDQjjECAIhHRxhgfDQDIYwPPhHhjrXHHQDQRVLDjHhHIKFBRDQjjkRecCfH+cuadkgFzYzis9ewUUb+dYiHj.v8N6jbisFhjVXHHQ8gfUqDu8VOmGa8+M6q598x9GlaJtwVBQRO7vgRTe35ycDHxfU4qaFNHxfUgqO2Q3qaFDMnFCAIpOnN.EXQWwH80MCGrnqXjPc.J70MChFTigfD4D72pFjUARj6ACAIxI3uUMHqBjH2CFBRjSxeoZPVEHQtOLDjHmj+R0frJPhbeXHHQt.ec0frJPhbuXHHQt.ec0frJPhbuXHHQtHeU0frJPhb+XHHQtHeU0frJPhb+XHHQ8Cd6pAYUfD4YvPPh5G71UCxp.IxyfgfD0O4spFjUARjmCCAIpexaUMHqBjHOGFBRz.fmtZPVEHQdVLDjnA.Oc0frJPh7rXHHQCPdppAYUfD44wPPhFf7TUCxp.IxyigfD4F3tqFjUARj2ACAIxMvcWMHqBjHuCFBRjah6pZPVEHQdOLDjH2D2U0frJPh7dXHHQtQCzpAYUfD4cwPPhbiFnUCxp.Ix6hgfD4l0eqFjUARj2GCAIxMq+VMHqBjHuOFBRjGfqVMHqBjHeCFBRjGfqVMHqBjHeCFBRjGhyVMHqBjHeGFBRjGhyVMHqBjHeGFBRjGTeUMHqBjHeKFBRjGTeUMHqBjHeKFBRjGVOUMHqBjHeOFBRjGVOUMHqBjHeOFBRjWPWqFjUARj+AFBRjWPWqFjUARj+AYBBBB95Fw.lf.PqGEPa9.5OIf9hAZqT.y5.L2FfYC.Bl80sRhHx+hLE.JTCnHH.Eg.DTJ.ZREPSZ.gOQffGKfLY95VoG0f2PvNzBT8p.ZXS.Z2KPGs3qaQDQzPKpBEH7b.h3p.hcA.pB2W2hb6FbEBJH.T2FAp7i.p+m.DL4qaQDQjzfLk.QNMf3VDPTyYHSEhCNBAEr.T0WCT1KAnuLecqgHhj1zjDPROBvHtY.YCt6ZI9+gf0kGvIWFfgy26OOEpABeR.gLN.Moa8XZGXz.JBEPYn.xCv6zdIhnAKrXDvTK.laAn8Z+28ohh.zUHf18as+TzaTGOPZu.PTy16zd8.7eCAMTNPQOBP8aomeNpiEH1aAHx4BD9kX8j7RDQz.mfY.sE.T+5Ap9q.LTcO+bibF.o+R.pc86il9Z9mgfUuJfS7+qG9VHxAhd1.ibI.C+x75MMhHRRpwcCT9xApMO.Xww4qPMPFuh0NPyfH9WgfVZ25g977ed2LS4.iX9.IuL.Mixq2zHhHB.5KA3Lu.PUqFcaXX72NPZ+C.4A50aZ8G9OgfczDvgtQflOhiyKjL.R++CH7I38aWDQD4HsGDnnkBn6DNNuvFOvEuR.UCy62tbQ9GgfFpD3f+JG64mxTBLp+BPB+1gLcGWhHZHCAAfy85.k7rNdIqoIIfIrF.0w4aZaNIeeHngJAxeV.Fp09GWcr.i8ir1gWHhHx+k1B.N5hbryynNFfItI+5fPeaHXGMAbfqxwJ.CKy+cozC8FcBHhngj5nIfCcS.MeX6ebMIAj0l7aOzn9tqxQKsa8b.10.vHtRfI98L.jHhFLQ0vrtu6HtR6eb8kYce8VZ22zt5C9tPvStLG6DLQbk.W7W.HWsuoMQDQT+mb0V2GdWCBa9H.m7Q8Mso9fuIDr5U43kAQXYBj4GyK3chHZvLYJrtu7vxz9G+7el0886mw6eNAMTNvdmr8WH7piEH6cxCAJQDMTQGMAruoZemkQgZfb9Y+pQVFuekfE8H1G.JSo0dAJC.IhngNTMLq6aWlx+yiY1f0L.+Hd2Pv5xywwBzQ8W3kAAQDMTT3Wh08w2Y0uEqYA9I7dGNTAK.6dh1e2fHjL.xda7BgmHhFpRP.XeWo8irLpiG3xx2u31vj2qET0W2kaGRxsNTnw.PhHZnKYxrtu9NG2X37VyD7C3cBAEDrdCwsyFw74XAJQDIED9DrtO+NqrWxZ1fOl2IDrtM1kKJd4VuaPPDQjzPxKC1E4nuLqYC9XdmPvJ+H6mN5YyaGRDQjThlQYce+cVWyF7A77gfcnEn9ex9GajKwiuYIhHxOSW22e8+j0LBeHOeHX0qx9awFpik2Q3IhHongeYVy.rQvjOeTjwyGB1vOZ+zwdKd7MIQDQ9oh8lse5tlQ3k4YCAED.ztG6erHmqGcSRDQjerHuF6mV6d7o8RTOaHXqGEniV9OSqPMGcXHhHorvuDqYA1zQKVyJ7Q7rgfZy29oCeR7tDAQDIkISg0rfNqqYEdQd1PP8mz9oCYbdzMGQDQCBz0rftlU3E4gCAK19o0jtGcyQDQzf.ZRy9o6ZVgWjmMDrsRse5t9BmHhHomtVPTWyJ7h7rgfl0Y+zAFsGcyQDQzf.cMKnqYEdQd3Pv1reZEg5Q2bDQDMHPWyB5ZVgWjGNDzf8SqjgfDQjjWWyB5ZVgWjG9hk2bW1ZA3Q2bDQDMHPWyB5ZVgWju+15KQDQjOBCAIhHRxhgfDQDIYwPPhHhjrXHHQDQRVLDjHhHIKFBRDQjjECAIhHRxhgfDQDIYwPPhHhjrXHHQDQRVLDjHhHIKFBRDQjjECAIhHRxhgfDQDIYwPPhHhjrXHHQDQRVLDjHhHIKFBRDQjjECAIhHRxhgfDQDIYwPPhHhjrXHHQDQRVLDjHhHIKFBRDQjjECAIhHRxhgfDQDIYwPPhHhjrXHHQDQRVLDjHhHIKFBRDQjjECAIhHRxhgfDQDIYwPPhHhjrXHHQDQRVLDjHhHIKFBRDQjjECAIhHRxhgfDQDIYwPPhHhjrXHHQDQRVLDjHhHIKFBRDQjjECAIhHRxhgfDQDIYwPPhHhjrXHHQDQRVLDjHhHIKFBRDQjjECAIhHRxhgfDQDIYwPPhHhjrXHHQDQRVLDjnAn1aucX1rYecyvugd85gISl70MChbJJ80M.R55se62Fe4W9kPPPvod9+4+7eFW0UcU18Xe7G+w3C+vODBBBHgDR.+s+1eCojRJ845ZEqXE38du2CgDRH3i9nOBwEWbNc6dqacqX0qd0Xyady3bm6bPqVsPtb4HpnhBojRJX5Se535ttqCSdxStGWG2vMbC3jm7jH93iGqe8qGJU53GE8zu1bGu+CX8KAr7kubrpUsJTbwEipppJHSlLjPBIfoMsogEu3EiYLiY3TaCh75D7j1bz1+CQcxvG9vE.fS+ye4u7WbXcDczQa2yI8zSWn81auO2121scahKyd26dcp1a0UWsvMbC2fS2dyN6rE1291W2ttToRk3yqkVZoaeNd5Wati2+2111lPBIjPetr24cdm8Y6ljX7SxGXkfjOiNc5D+8byMWnPghd84O0oNUGdrlZpI6ltnhJB+y+4+DO5i9ntmF4+1W+0eM9M+leCpqt5Der.CLPjYlYhINwIBKVrfxJqLTbwEiRKsT..ru8sOLqYMKTSM0f.BH.Wda5oesMPe+u7xKG2zMcSn1ZqE..iXDi.W60ds3BuvKD0Vas3vG9vXqacqvhEKX0qd0tk1LQtaLDj7KroMsIDRHgzuW9PBIDwcp+bO2yg68duWDUTQ4VZauzK8R3O8m9ShSegW3Eh24cdGLkoLEnRkJGd96e+6GqXEq.u+6+9PqVsnwFaDwFar86sum70lM8m2++C+g+fX.3rm8rw27MeCBMzPs64b1ydV7LOyyfssss41ZqD4NwNFCMjPBIj.l27lG..zpUKdpm5obKq2yblyf+1e6uIN8Mdi2HxO+7wzm9z61.P.fIMoIg25sdKTXgEhksrkgXhIlATavS8ZafZG6XGh+9a+1usCAf..IlXh3sdq2BG+3G2a1zHxowPPZHgN5nC6Bqdy27MQwEW7.d896+8+dnWud..L24NW7Mey2fvCObmZYSKszv+3e7OfLYxFPsAO0qsAhxKubTc0UC.fvBKLjTRI0qO+A56AD4ovPPZHASlLgryNarfEr..XM33wdrGa.sN+tu66v2+8eO..TnPAdwW7EGvsy9COwqsAJMZzH96M2byhmGThFrggfzPBVrXA..O6y9rhWtAqZUqB6ZW6peuNe8W+0E+864dtGL1wN1AVirexS7ZafJhHh.IjPBhS+7O+y6yZKDMPvPPZHAg+805V5omNt+6+9Ee7G4QdDmdY6LCFLfctycJN8sca2lanU1+3tes4tXqxT.qmSv6+9uezbyM6w1dD4IvPPxuP0UWMpppp51e57kkPOoy6r++4+4+QrSZrm8rG70e8W6xsmibji.CFLHNc5omtKuNbWb2u15N8m2+elm4YvnF0nDm9cdm2AolZp30dsWS77nRj+NdIRP9EF8nGcuN+CcnCgLyLSmZcESLwfG6wdL73O9iC.qizIye9y2ktV8polZD+8PCMTDe7w2sOue7G+Qbjibjdb8LgILAL8oOcmd61WbGu15N8m2+CN3fwl27lwBVvBP94mO.r991RW5RwS8TOE9i+w+HV5RWpcm+Ph763QuT78SFQ.H+ScdTSou9Y6ae6855Xjibj18350qWXjibjhK++7e9Osa9cdTUYO6YONrd+vO7CEm+3G+36wWCSXBSnWa2ADP.BFMZrWes2SiXLdpWacWan+99ufffPas0lve8u9WEBIjPbX4hM1XEVyZVSOtrjDleR9.qDj7K79u+6i.CLvtcdJUpD4lattz5KnfBBOyy7LXwKdw..3u+2+63ttq6BCaXCyoV9HiLRweuxJqrGedW3Edg3fG7f837MZzHZqs15wqov9iA5qsty.48e0pUim7IeR769c+N7+9+9+hku7kCsZ0B.qGl04O+4im7IeR7DOwSzuaeD4w3QiX8SR5I+SNS0PN65nqUKIHHHX1rYgK4RtDwswi7HOh375qpkJojRrqhl5pqttc6a1rYg1ZqMG9QsZ0hKqVsZ6Wu18Tu1bk1P+gVsZEdzG8QEBLv.EW+xjISXSaZStssAMDfeR9.6XLzPVxkK2tqsuW60dMbtycN.z2W71ImbxHnfBRb5dZDOQtb4PsZ0N7im1.40lmVXgEFd9m+4wt10tDGXADDDve7O9G8osKh5NLDjFRalybl3ZtlqA.Vuk+XajWouBJjKWNRKszDmdu6cudtFY+T+pIhvC...f.PRDEDU80l2RVYkEdq25sDm9nG8nns1ZyG1hHxQLDjFx6EdgWP7NjvG8QeDNwINAjKuu+W+ryNawe+4e9mGM1Xidr1X+U+80l2xUe0WsX6yrYynnhJxG2hHxd9OeZgHOjwN1wh68duW.XcGw+0+5esauI11U+0+5eEAGbv..nt5pyuriczees4snToRwqyQYxjgjSNYeaChntfgfjjvS9jOo3sJnu4a9FTXgE1mKSBIjfcAeu4a9l38e+22i0F6u5Ou1FnzpUq3v4VuY6ae6hOuTSM0ATOXkHOAFBRRBiXDi.KaYKC.V6jF6ae6yoVtG9geXbQWzEA.qUZcO2y8fq+5ud6tX56pScpSAylMOvazNo96qsAh65ttKLlwLF7ce220iggm6bmCO3C9fhSO24NWOd6hHWkLAAO3fK3V5x8QsYzy63fjdBHf.PGczA..V1xVVeNpmb0W8UiK+xu7tccLxQNRwdGYOQud8HszRCUTQE1836YO6A4jSN83xUTQEg67NuS6BWBIjPvDm3DQlYlIt3K9hA.PYkUF1912N1912t3ySlLYPud8NziQ67q8VZokt8FZqm901.48+q4ZtFr90ud.X8dF3McS2DRKszPhIlHpolZv9129v68dumXGgIyLyD6YO6wtdbKIw4ujO3Qu.L7StNPH+Sc9ZoyY94Vu0a0g0Qucsz0c97O+ycX89K+xuzmKmISlDdtm64r6Zequ9QlLYBKcoKsaWeCzqSP2wqsAx6+ewW7EN8HNS5omtPwEWrS8ZfjP7SxG3gCk7Yt8a+1cotyehIlnCOlsqCMm8Fc6BW3Bwi+3Ot3H3RJojBxHiL5ykSgBE3wdrGCETPA3ttq6pGGKQkKWNt3K9hwS7DOAN4IOId0W8U61mmsyMlFMZ5wQSFO8qsAx6+25sdqnvBKDKYIKoGeu3BuvKDqXEq.G8nGsOGaRIxWgGNTZPMiFMhlZpIDQDQ3R8JRylMC850iPBIj980UWYkUFpt5pQc0UGToREhLxHQFYjgSMfQ2QGcfFZnAL7gO7d7vP5Kes4pJojRPEUTAZpolPhIlHF8nGc2dHdIRjeR9.CAIhHx6yOIefGNThHhjrXHHQDQRVLDjHhHIKFBRDQjjECAIhHRxhgfDQDIYwPPhHhjrXHHQDQRVLDjHhHIKFBRDQjjECAIhHRxhgfDQDIYwPPhHhjrXHHQDQRVLDjHhHIKFBRDQjjECAIhHRxhgfDQDIYwPPhHhjrXHHQDQRVLDjHhHIKFBRDQjjECAIhHRxhgfDQDIYwPPhHhjrXHHQDQRVLDjHhHIKFBRDQjjECAIhHRxhgfDQDIYwPPhHhjrXHHQDQRVLDjHhHIKFBRDQjjECAIhHRxhgfDQDIYwPPhHhjrXHHQDQRVLDjHhHIKFBRDQjjECAIhHRxhgfDQDIYwPPhHhjrXHHQDQRVLDjHhHIKFBRDQjjECAIhHRxhgfDQDIYwPPhHhjrXHHQDQRVLDjHhHIKFBRDQjjkmMDTlB6m1hQO5liHhnAA5ZVPWyJ7h7rgfJTa+zlZwit4HhHZPftlEz0rBuHObHXP1OsYFBRDQRdcMKnqYEdQd3PvPre51q0it4HhHZPftlEz0rBuHOaHXPoX+z5OoGcyQDQzf.cMKnqYEdQd1PPMoZ+z5Kxit4HhHZPftlEz0rBuHObHXZ1OstB8naNhHhFDnqYAcMqvKxyFBF9DseZs6GPvrGcSRDQjeLAyVyB5rtlU3E4YCACdr.pB8+LsYC.ZKvitIIhHxOl1BrlEXipPslU3i3guX4kADdN1+X0udO5ljHhH+XcMCH7bslU3i34G1zh3pre5p+JO9ljHhH+TcMCHhY4aZG+ad9PvXW.fLk+moMTMPi61iuYIhHxOSi61ZFfMxTZMivGxyGBpJbfHml8OV4K2iuYIhHxOSW22ejSyZFgOj24tHQbKx9oqMO.8k3U1zDQD4GP+ortu+NqqYC9.dmPvnlCflj5zCXA3LufWYSSDQjefy7h.vx+YZMIYMavGy6DBJSFPROh8OVUqFP6A8JadhHh7gzdPq6yuyR5Q7o8JTa7d2TcGwMCnN9N8.V.JZo.BBdsl.QDQdYBBV2WemqBTc7VyD7C38BAkIGHstbHP0cBfy85dsl.QDQdYm60stu9NKsWvZlfe.uaqHpYCD4Lr+wJ4Y4nHCQDMTj1BrtO9NKxYXMKvOgLAAu7wizP4.6cx1Or4nNVfr2oOuqxRDQjaRGMAruoZ+0EnB0.47y.pGouqc0Ed+5QUORfLdE6eLCUCbnaDvhgteYHhHZvCKF.NzMYe.Hf0886GE.B3KBAArNBAD+sY+i07gAN7cx6xDDQzfYBlstu7lOr8Od72tOezgo638Obn1Xocf7uFflOh8OdDWIPleLfb09jlEQDQ8SVLXM.rgsY+iG13Al3O.HOPeS6pW36BAArdLiOvUAnuL6e7vxD3hWIOGgDQzfEczj0CAZWq.TSR.YsI.UCy2zt5C919nppgALg0.nNZ6e7lOLv9lB60nDQzfAZKvZmfoqAfpiw5938SC.A70gf..piCXh+XWFV0f0SnZ9yC3r+KdA0SDQ9iDDrtO57mmicBFMIALwMYce79w7sGNzNqilr1CQ654HD.HjL.R++CH7I38aWDQD4HsGz5HASWuP3ArdN.u3U5WWAnM9Ogf.V6rLmbY.m+y6lYJGXDyGH4kAnYTd8lFQDQv5cChy7h+6wBTKNN+3ucfz9G9kcBlti+UHnMUuJfS7+y9KndQxAhd1.ibI.C+x75MMhHRRpwca89AXs4gtM7SgZqWGf9gWFD8F+yPP.qirLE8H.0ukd94nNVfXuEfHmKP3WBfLEdu1GQDMTlfYqc3k5WOP0ekimyuNKxY.j9K42cgv6L7eCAsot7rdHRMb9d+4oPMP3SBHjwAnIM.MoCDXz.JBEPYn.xCv6zdIhnAKrXDvTK.laAn8ZAzWDf9SBnqP.s6uGNZbch53sNXX6GMVf5p7+CAA.Dr.T0WCT1K430THQDQdWZRx58CvQby9M2MH5uFbDBZif.PcaDnxOBn9eBPvjutEQDQRCxTBD4z.haQVuiv6GbCw0cXvUHXm0gVqcflF9Q.s6AniV70sHh5V4roU0qyeuW0fqNR.IgnJTfvyEHhYYsCuLDbT7RoutAzuoJbfQd2V+QP.n0iBnMeqGOa8ECzVo.l0AXtMqGWaNvbSDQ1SlBq8mBEAAnHDffRAPSpV6WEgOQffG6PlJ95ICdCA6LYxr1gXBYb95VBQNZS6r2m+Lpw6zNHhbvf6ynIQDQz..CAIhHRxhgfDQDIYwPPhHhjrXHHQDQRVLDjHhHIKFBRDQjjECAIhHRxhgfDQDIYwPPhHhjrXHHQDQRVLDjHhHIKFBRDQjjECAIhHRxhgfDQDIYwPPhHhjrXHHQDQRVLDjHhHIKFBRDQjjECAIhHRxhgfDQDIYwPPhHhjrXHHQDQRVLDjHhHIKFBRDQjjkLAAAAecifH+YKcEGA6+LZ62KuYK897UL.9pnSJ4vw+28O99+JfHINVIHQ8gEO8DfYKne+SeYfrtW7zSvy+F.QCgwPPh5CYM5ggrRJLecyvAYkTXHqQOLecyfnA0XHHQNg6cVI5qaBNverMQzfMLDjHmf+V0frJPhbOXHHQNI+oJu7mZKDMXFCAIxI4uTMHqBjH2GFBRjKvenBL+g1.QCUvPPhbA95pAYUfD4dwPPhbQ9xJwXUfD4dwPPhbQ9ppAYUfD49wPPh5G7EUjcOyjUARj6FCAIpevaWMXVIEFlTprJPhb2XHHQ8SdypAYUfD4YvPPh5m7VUCxp.IxyggfDM.3MpFjUARjmCCAIZ.vSWMHqBjHOKFBRz.jmrZPVEHQdVLDjnAHOU0frJPh77XHHQtAdhpAYUfD44wPPhbCb2UClURgxp.IxKfgfD4l3NqF7dlYRts0EQTOigfD4l3tpFjUARj2CCAIxMxcTMHqBjHuGFBRjaz.sZPVEHQdWLDjH2rAR0frJPh7tXHHQtY82pAYUfD48wPPh7.5OUCxp.Ix6igfD4A3pUCxp.Ix2fgfD4g3JUCxp.Ix2fgfD4g3rUCxp.Ix2ggfD4A4LUCxp.Ix2ggfD4A0WUCxp.Ix2hgfD4g0aUCxp.Ix2hgfD4g0SUCxp.Ix2igfD4EzcUCxp.Ix2igfD4Ez0pAYUfD4efgfD4kz4pAYUfD4ePoutAPjTw+oZPAVEHQ9IXHHQdQ26rRDBB95VAQjM7vg5lzXiMhbyMWXvfAecSg7ik0nGFqBjH+HLDzMQgBEPlLYPgBE95lBQDQNIFB5lTZokhlZpIbtycNecSgHhHmDOmftIexm7IHt3hCqZUqBOxi7H95lCQCHlMaFkTRI37m+7c67iHhHPZokFTqVsaaa1PCMfSbhS.iFM51VmxkKGojRJHgDRvssNogVjIHvSSOQj8zqWOV5RWJd228c614OiYLC7Nuy6fTRIE211b8qe83W+q+0nwFazssNA.d9m+4wi9nOpaccRCcvCGJQT2RlLY8575s42eHWtb3I9N4xkycyQ8Ld3PcyLa1L5niNbqGlHh715niNvDm3DwK+xuLFwHFgCyqxJqDs2d6t8s6i9nOJF4HGoCAWm5TmBs1ZqXbiabtTmOqolZBVrXABBBt8PaZnAFB1OY6ar14OXYznQrxUtRbhSbBbe228wyCAMnkYylQBIj.xJqrPbwEmCy+a+1uElLYxsucm8rmMl3DmnCO9AO3AQiM1Hl9zmtKs9ZpolvW8UeU2Nut6yvtBFrNz.CAcAFLX.s1Zq3vG9v3m+4eFYkUV3pu5qVb9ETPA3EewWDkTRIH4jSF28ce29vVKQ8exjICs1Zq3Lm4L1UUV.AD.znQiGI.D.nxJqDm+7m2tp8BO7vQ6s2NZu81gISlfRk87tsLXv.zpUqcqOKVrzsOWsZ0h0t10hYO6Y6RswlatYbzidTjc1YiK3Bt.WZYI+OLDrOzXiMh5qudbricLr0stUrsssMTXgEhPBID7DOwSHFBZwhEr28tWb1ydVLrgMLb3CeXzZqshfCNXe7q.hbcAFXf3m9oeBu8a+11Usyblybv5V257Xa26+9ueTSM0X2i8IexmfwLlw3TcXlUspUgEsnEINc.AD.dpm5o51J1TnPAxKu7b4urpff.l7jmL9hu3Kboki7OwPvdfEKVv92+9wxW9xwN24NQIkTh3gOIszRC+te2uCKdwKV74qSmNbfCb.Lu4MOrnEsHbhSbBTZokhwMtw4qdI3U0QGc.EJTvNgvPDVrXAQEUT3JuxqztuHWVYkUOVYk6fsCEZmCshO93gYylcpkO93iGyctyUbZylM2iUNZwhEDQDQX2y2YXznQDarw5Q5DOj2GCA6AFMZDqZUqBevG7A183yYNyAO4S9jHmbxwtGWud8nwFaD+leyuAyblyDm3Dm.0UWcdwVrugNc5PHgDBNyYNChKt3PHgDhutIQtAxkKGSYJSAKcoKEQGczNL+.BH.2dm+Jv.CDO6y9rHyLyzg4UPAEf.CLvd8PgB.LsoMMLsoMMwo0oSG95u9q61mqBEJPlYlId0W8Uco1oEKVvF23F4nC0PDLDrWz4OvEe7wiktzkha7FuQr8sucryctS691p0We8nrxJCacqaEETPAHu7xCG3.G.ETPAN02XTlLYPPP.VrXwsWMksgyMaaCylM6V9VrFLX.0VasHlXhAkVZoHlXhAQFYjC30cWOzUCz0mEKVPKszBBN3f6ych5OpiN5.pToxqs8rc9.O8oOM9oe5mPLwDic+MvjIS3nG8nXW6ZWHt3hys7+RxjICG+3GGpUqFIlXhN7YfxJqLzVasgCbfC3Re9PqVs3XG6XNbnTkISFzoSGNzgNDZt4lc5WC1VtRJoDrqcsKW5+2EDDfff.ToREToRkKsMau81E22POsbs2d6Hf.B.xjICO7C+vN05lXHnS6tu66FKaYKCMzPC30dsWCKdwK1tcVKWtbL7gObDe7wiBKrPTbwEiLxHCDXfAhN5nidccKHHfRKsTr0stUzd6siYLiYfzSOc2ROOStb4nolZBG3.G.m6bmCIjPBH6ryFgFZnC3cdY6CjJTn.pToBJUpDJUpb.c3xjISFZrwFQ.AD.ZokVPPAEDBKrv50mOPuGTZ1rYzPCMffBJHnRkpAb6qu1dtSVrXAqXEq.KdwKFgGd3dksqsuzjb4xgb4xc3uoVrXQ74LP+6cm2l11dc2gU217rMemksu7mb4xs6ySc9wTnPgKEH042abkkUPP.abiaDacqa0k+htlMaFKbgKDSZRSpae+1jISXEqXE39tu6iGMFWDCAcRIlXhPlLYns1ZCAETP3gdnGxtOTc1ydVnToRb8W+0iibjifjRJI7.OvCfwN1w1meHwhEK3y+7OGewW7EH2byE20ccWX7ie7C3C2hEKVPIkTBd1m8YwN24NQas0Fpu95wMey2Ltoa5lFPqa.fpppJrt0sNHHHfZpoFLpQMJrnEsHnVsZwcRXq5VWYm2adyaFwEWbvfACHxHiDIkT2eCnUPP.FLX.xkKGAFXf835Sud83.G3.3htnKBgFZnPoRkhu214cFZqJ4diQiFgYylQfAFX+thcW48FylMiu7K+Rbm24c1sWpBdJMzPCXm6bmXLiYLXzidz1MOCFLf0st0gK5htHLlwLF211bSaZSH3fCF4jSNN7+96cu6EZ0pEyXFyvkpluhJp.qe8qG2y8bON72q5pqNrxUtR7fO3C5Rsy5qudr8sucLgILAWZDyQPP.0Vas3m9oexk+BtxjICSe5SG21scac67MZzH9xu7KwhW7hQTQEkKstk5XHnSpy6bToRkNb9PhN5ngZ0pwG8QeDV6ZWKl+7mOF23FmScXrLYxDN8oOMhM1XQt4lK1wN1AhHhHPpol5.pMe1ydV7Nuy6f0rl0fVasU..nVsZDSLwzqgFNqe4W9E7LOyyHFhjat4hPCMTHWtbnUqVnUqVnPgBDUTQ4RaOaUXnRkJnPghdbYangFvhW7hQN4jC9u+u+u600YgEVHxKu7PKszBtu669PVYkE.r9de80WOLXv.znQS2d9u5rO9i+X7Mey2f29seajXhI1qO2dRmeuI5nitOeuQoRkHjPBws72LmUHgDBTqVMznQiCaWa++e2MuAhfBJHnQiFnQiFGlmFMZfQiFc4dacvAGLBLv.QPAEjCyy16ot5qAau2Xac6JxImbv2+8eOlvDlfKsbaXCa.ojRJ831Kf.Bvm7+ICEvPPWjsiOeYkUlCO1wN1wvZW6Zgff.F23FGprxJ60ukuspOJqrxPokVJl4LmI18t2MZngFv3F23PfAFX+9veISlLTRIkfZqsVDTPAAEJTfvBKLbK2xsfTSMU6Z+8GVrXAUVYkHwDSDSYJSAFMZDiZTiBm4LmAEVXg3C9fO.aZSaBgEVX3+5+5+B23Mdi18EB55gUz1EdrISlPIkTBNyYNCpu95Q.AD.VvBVf329uyeC5RKsT78e+2C0pU6vcuCam+EYxjgVZoE7se62hBKrPjTRIgIO4IiniNZzTSMgMsoMgO3C9.bpScJjUVYgG+webwp265PClEKVvwO9wwF23Fw92+9sad11d8DYxjgN5nCTXgEhO7C+P7i+3OhPCMTrrksLL+4O+d7b8XqZ2ybly.85060NbnM0TSnpppBgEVX1cH+jISFLXv.pt5pQXgEFBJnfbamSvye9yifCNXTZokZWUaxjICkWd4n4laFm9zm1oOBIxjICUVYkn1Zq0g+eWlLYngFZ.0Vas3rm8r18Zn2Nmz1Nb8UWc0nrxJqO+6dmWNiFMh5qudnToRW99NpQiFQUUUUO941N5nCXvfATZokhHhHh98WPSJhgftH4xki5pqN75u9qK9A0.BH.b3CeXr4MuYnSmNjZpohhKtXr7ku79bGiFLX.6XG6.BBBnwFaD6YO6AxjICqXEq.iZTiZ.cH2polZfd85wUdkWITnPAhHhHfEKVva9luY+Zc1cs8QMpQAkJUh5pqNr0stU74e9misrksH1yX0oSG9xu7KQUUUk3gPz1N1AfcA8JTn.UTQEHu7xC0We8vjISHwDSDUWc0hmv+1ZqMXwhEnQiFwswQNxQv6+9uOZt4lEOTk19BF.V2AhFMZv7l27PvAGLV+5WOxO+7wt28tQ94mu34rce6aeXEqXEH8zSGBBBPoRkniN5.FMZT7PntoMsI..r10tVbfCb.nWudnPgBDP.AzqmaLaeojMsoMglZpI..zRKsfO+y+bTYkU1iKmff.ppppvG7Aefa4735LjISFzqWON24NG1+92OhLxHEesYKL+Tm5T3.G3.HlXhwsbNAkKWNJojRfJUpvd26dc372UQEU.CFLfBKrPm9yDxjICM2by3Tm5T1cAzaads1ZqnnhJBs1Zq189psy4oYylEOz0cd4zqWON6YOKJnfBD+LkyzVLYxDJszRQvAGL10t1kSeYenPgBbhSbBDTPAge4W9kt84X1rYTc0Ui268dODbvAim64dNmZcSLDzkYwhEDZnghq9puZwOnrl0rFr0stUnSmNjd5oikrjkfwMtw0mCHv19fnEKVvvG9vQ80WOJnfBfBEJPpolJl0rlkKch2655tzRKEUVYkXBSXBHjPBQ7bP4LrcHU5owGRa6fYW6ZWhUEFVXgg.CLPDP.A..qG1noN0oha7FuQjbxICUpTgScpSg0rl0fRJoD..b4W9kie0u5WA0pUCEJTf8t28hcricfq5ptJDd3giwO9wibxIGnUqVrxUtRTXgEh1aucLpQMJba21sg3iOdnRkJb5SeZje94CCFLHd9XCO7vEeMLxQNRDe7wiVasUzRKsfgMrggCcnCIty1jSNYbMWy0f4Lm4fvBKLXxjI7S+zOgcsqcgFZnADQDQfa3FtA76+8+dTSM0f1ZqM7y+7OipppJDbvAi4N24hoO8o2i+sRlLY3a9luQbGegEVXXJSYJXgKbgHwDSrG2gnff.V25VGtxq7JQTQEkWKDr4laFG9vGFImbxXjibj1UIX6s2NBN3fQRIkDRIkTbaUBFd3gifBJHLlwLFGBdN1wNFzoSGl3DmnKUIXM0TCBLv.cXTgwV0txkKGyd1y1tiHQAET.RKszPUUUEhIlXrqiYISlLnUqVbnCcHjZpo5z8NVae4g8su8gHiLRjQFY3zeVTtb4PiFMHzPCsGutiMYxDV25VGl9zmNF1vFlSsdIqXHnKRPP.gEVXXFyXF.v5HTwF23FQyM2LhLxHw0ccWGt669t60dzXWMyYNSnToRTPAEfsrks.AAAb8W+0ibyM2ATa8BtfK.m5TmBSe5SuaOmH8FaiTH2+8e+83yIu7xCaXCa.s1ZqnolZBYkUV3BuvKDW60dsvnQiX3Ce3Xbiabhcrk7yOerm8rGrksrEzRKs..fwLlwfq3JtBwdzVlYlITqVMxImbPPAEDhM1XgISlva7FuA1vF1fX0eM2by3se62Fye9yGu7K+xXsqcshizHM2byH2byUrijXznQryctSrksrEnToR7G+i+QDe7wCiFMhG3Ad...jPBIfLyLSDZngh1auc78e+2i7xKOje94CylMivBKLb228ci68duWrsssM7DOwSfcu6cCSlLAYxjg4O+42miqkEUTQ30dsWSrp7wO9w6TiurCaXCCyXFy.QFYj84y0cQmNcPgBEX7ie7NzwjrXwBZqs1vXG6XQZoklaaaJHHfPCMTjc1Y6v7BKrvPSM0Dl4LmoKsNqolZfNc5D+7Zm0byMiZqsVG9614N24vUbEWAJt3hQpolpCgJszRKPlLYXRSZRt7vllff.FwHFAt3K9hcokSud8HpnhBW5kdo83yYXCaXXlybltz9dHFB1uIHHfctychW3EdAbxSdRjc1Yi4Mu4gQO5QC8506R+iXPAEDpu95wF1vFDOzb4kWdXhSbhhUU0ezQGc.SlLAiFM1igf0Vas3S9jOAae6aGiYLiA+1e6uEwGe7hCF.8z0snEKVPs0VKBLv.wzl1zfQiFwUdkWIJu7xwzl1zPLwDicOeylMaW.nLYxvHG4HwUe0WscmH+gO7gijRJITc0UKd9SF4HGIxKu7Pc0UGjISFBIjPvC9fOHhHhHPwEWLV+5WuX.XHgDBti63NvvG9vEWms2d6n3hKFm+7mGSXBS.lLYBs2d6Ht3hCyadyygWe0VasHu7xCG4HGQbDGImbxASdxSFM0TS3G9ge.6e+6GlLYBxkKGSZRSByYNyoO+6gYylw7l27bodumsdOp67FMqyvnQih+uSOMu95R+wYUas0BkJUhFZnATc0UiK9huXG9+9N5nCw+e1U5cn1Zqc2fcss40YlMaFFLXPrmTGUTQ4PHXu8dSe0Vr85vU0WueaznQex+mLT.CAcQ1tXY+5u9qwm8YeF9ke4WDOTZYjQFnvBKD5zoCojRJPlLYN8kGfISlPxImLdjG4Qfff.BLv.wO9i+3.5bBd5SeZTYkUhN5nCG5Uc15HBe5m9oX26d2Pud8XsqcsPqVs35ttqCJUpDBBBHu7xqGeevjISXlyblXbiab3zm9zn7xKGG6XGCJUpraCAOyYNCRKszfACFvEbAW.t1q8ZQTQEE17l2L.rdtOJszRw6+9uOZngFPqs1JhIlXvsca2FhJpnPBIj.hHhHvLm4LwXG6Xw1111voO8ogFMZPxImLBJnfvzl1zvDm3Dw1111r6PbcEWwUfoMsoAMZzf8u+8ivBKLTQEU.ylMaWO8Utb437m+7PlLYHszRCM2byHqrxBW20ccnrxJCG7fGDFLX.olZpPqVsHyLyDyctyE0UWcXCaXC85eON1wNF1vF1.hN5nc5CgnEKVPiM1H15V2paYfHn2X6xEQoRknolZBG9vGFMzPCnzRK0tCcmQiFwAO3AQ80WOpnhJFPmSPEJTfie7iCUpTgyd1yBCFLfPBIDG5U0m3Dm.5zoClMatOObncNhbFjM...H.jDQAQ0ZJrlZpAG8nGEaXCaPriNoPgBnPgBzXiMhie7ia2e2rcY+rqcsKTbwEibxIGbcW20Id9As8dyAO3AQKszBN4IOoS+2jN5nCje94igO7giFarQm9bBpToRje94iPCMTwifR2stapolvV1xVP3gGtS8kxHqXHnKRtb4nwFaDu+6+9Xm6bmX3Ce3XBSXBn95qGexm7InfBJ.s0VaHzPCEwEWbXLiYLPiFM84GTZngFPQEUD..xHiLrqyHzeHSlLTWc0glatYTYkUZWGPw14h7fG7fnfBJPbYhN5nQUUUE99u+6cpOX2d6siFarQzXiMhZpoFbpScJb9yedTas0hPCMT6dtVrXAkVZoHrvBCyctyEJTnPrhKaaK4xkixJqLbxSdRDZngB0pUivBKLrm8rGHWtbwyCqQiFwV25VEutq5740Qtb4Xm6bmN7dmsuLQ6s2Npt5pgFMZPSM0Dpt5pcnWq1TSMgFZnALgILAwgpq7yOeXwhEnSmNTUUUgLyLSDTPAAkJUhie7iiidzi1m+8nvBKD50qW77y5Lr0go1zl1jKsbtJ4xki1aucTUUUINBpzd6siDRHAGFmLMa1LJszRwoO8owQO5QGPsI4xkipqtZwNbVas0FLXvfCAcUUUUvnQi37m+785WLzVuAt5pqFs0Va.v5+6YqytnWudTUUUI1Sas8+I1pTbu6cu33G+3hAwm7jmDe+2+8ns1ZCUWc0hc9J4xkiyd1yhvBKLm90uYylw4N24fFMZPwEWrSub15zPpUqFkVZo835twFaD4kWdHnfBhgftBApa0VasI73O9iK..A.H7FuwaHHHHHTd4kKboW5kJ7BuvKHDZngJ7W9K+EgVasUgidziJbkW4UJ97AfvvG9vE9m+y+oPGczgfffffEKV51eLa1rvG8QejPzQGsvUcUWkvO9i+nfd856wmuy9SgEVnvpW8pEZrwFcXdm8rmU3oe5mV3xu7KWXRSZRBKXAKPXMqYM8Z6rq+zTSMIru8sOAsZ0JTTQEITSM0H7du26IblybFGdtFMZTXkqbkBG9vG1t2m65y6zm9zBOwS7DBaaaaSXu6cuBm5TmRXW6ZWBqacqqaWt8su8I7EewWzqqSKVrHNOsZ0Jrm8rGgBKrPgu8a+VgVZoEGdtm7jmT3a+1uUn1Zq0g0YEUTgvW8UekPEUTQetM65O+q+0+R3rm8rtzeCMYxjvjm7jEpnhJFv++Pe82x29seagK8RuTAEJTHDSLwHL6YOagst0s5vyUud8Be0W8UBEVXgC3sqACFD95u9qEdoW5kDtu669DVvBVfP0UWsc+MSPPPXu6cuBqe8qWvnQi8556zm9zBO9i+3BImbxBxjISHojRR3IexmTvhEKB0TSMBO8S+zBYjQFBxkKWHhHhP3Ye1m0tk+y9rOS3Vu0aU3q9puR3K+xuT3rm8rBM1XiBu0a8VBW5kdoBpToRH7vCW3O7G9CBm5Tmxkest10tVg8su84xuOs5UuZgctyc1qq6byMWgZpoFGdui5crRv9AacG4DRHAL+4OenQiF7xu7KiBJn.jSN4fXiMVnToRr8suc7JuxqfIO4IiK8RuzdbThn81aGm7jmDwDSLHmbxAG8nGEIkTRNLRcze00q2M.qey2QO5Qi+0+5egPCMTDYjQJdtOb1QyhfCNXL5QOZDTPAgzRKM6tCd200QOsN65imRJofIO4IivCObzQGcziUCaa45t0au090nQCRO8zQEUTg3y0YZq811qu1lc844JiVHcd65NFF85I+3O9i3IexmT78Ea8.zHhHhd88mAZap7xKGuy67NXyadyPPP.icriEM1XihiWoEWbwhGog.BH.GF9y5r1auc7Ue0WgW9keYwKAGiFMJNZOswMtQ7rO6yB850C.qmBhnhJJ6Ve21scan0VaESaZSCG+3GGAGbvXCaXC3wdrGSb7G0fACPkJUHzPCse82xt96th95++7z+exPQLDrevVmyHszRComd5n4laF6YO6A27Mey3AevGDUVYk3Jthq.qbkqDuvK7BXKaYK8Zu5phJp.0TSM31tsaCG5PGB+xu7KXVyZVC31oZ0pQ.ADP21oXTqVMBLv.wEcQWT+dDlPoRk10oAjKWdOd2EPoRkHf.Bvo1V1tt6r08zaokV5wNHTmujLbk1bs0Vau9dSO85n2lWeQkJUt7xY6ba4tuiMzUwFarH1XiEUUUUH1XiEScpSEwEWb3Dm3DNbWcXf7dPWEP.AfvCObrvEtPHWtbjRJofQO5QCc5zgW4UdEr90udzPCMfLxHCbm24c1qmOv.CLPDarwhHhHBTe80iINwIh64dtGrvEtP..DUTQgniNZTYkUhwN1whEsnE4vvG34O+4QAET.zpUKxO+7wBVvBPhIlHhKt3PyM2LF8nGMtoa5lvC8POjCm2am40py9YftaY6sky1WPvS++ICEISPf2Tr5NFLX.O8S+z3YdlmA..uwa7FXIKYInpppBSbhSDCaXCC5zoCSXBS.FLX.6cu6EiZTiBibjiDUTQEHwDSDczQGX26d2HhHh.YlYlc64xPPP.UWc0n7xKGwEWb33G+3..XRSZRC3q2GsZ0hVasUDczQ6PGMPud8ngFZ.wDSLCndfZmI7uG8ahIlXbXnuRPP.m+7mGgDRHhW+d8jpppJwgPKa8ZPiFM1siclM1XiPmNcN0kZPmoUqVnSmNwp16Lc5zAsZ01sC2a150fQFYjt7kcxoN0ovEbAWfKsbBBB3m9oeB4latt71yUXvfAb3CeXwQsk3hKNzRKsf.CLPwQuHaUXXwhETQEUfPCMzAb2wu81aGm9zmV7hN2hEK3BtfK.M0TSXG6XGhWmpAFXfXricrhc3rdR80WONxQNBzoSGRLwDQZokl3eCaokVvgO7gQSM0DhO93wEcQWDBIjPrqCpTc0UKddN0pUKF0nFEF6XGKxO+7EutAGyXFChHhHbnmk1c5bkYVrXQbPiny8dYmw4O+4Q.ADPO1yhsXwB9oe5mvke4WNBLv.6waeTjiXkftHylMi3iOdrjkrDr0stULm4LGjVZogO8S+TDd3giIMoIgBJn.bQWzEgTRIE7lu4aBUpTg63Ntitsqc2PCMfW5kdIjSN4fFZnAwC+WrwFKdfG3AFP2BcN8oOMpnhJvkbIWhCir7UWc0nvBKDYmc1tsqqHKVrfe3G9Ajc1YiXiMV6lmYylwN1wNPBIj.F0nFUutdrM.AH7uGPqO1wNFZt4lwjm7jc34dhSbBTd4k6xUNaq2rdoW5k5v2dt7xKGm9zmFYlYlN7EQpu95wgNzgPlYloKOPEuxUtRL0oNUWpBBKVrfSdxShG5gdHO50InLYxfJUpv1111va8VuERM0TQPAEDxN6rwjm7jgACFvG+weL9zO8SQHgDBlxTlBt8a+1EuP+6O2hpLZzH1912NN5QOJ1wN1AF4HGIRN4jwrm8rwxW9xQ6s2NjKWNBN3fwC+vOLt5q9p6yNShs6nI1FHK9we7GwS8TOEhJpnPVYkEV25VGjKWNLa1LLYxjCGt8Uu5Ui.BH.bMWy0.SlLgzSOcDarwJVokEKVfISlb5d1osA15O7C+PnPgBL0oNUby27MizSOcW58pcricfvCO7t8dsHf0dGZQEUDVxRVBuX4cQLDzEIHHfPBIDby27MCSlLAUpTIdd.25V2JhM1XwkbIWBRHgDPFYjATpTI9U+peEl5TmZOtNmxTlB.rNfTujkrDHSlLr3EuXbEWwULfZqQFYjX3Ce33xu7K2gJyprxJgEKVvjm7jcnmbNPTRIkfbxImtspsFZnAjVZogLxHCWZcFXfAhFZnAbYW1k4v7BN3fQXgEV2NudSDQDABO7vwTlxTb3KZTVYkgfBJHwyMYmUWc0gN5nCjat41mC11c0gNzgPt4lqCeAg9RXgEFxM2b8J2c.hIlXP3gGNlwLlAps1ZQ3gGNhLxHwS9jOIV25VGLYxjX2zO2byECaXCCe228c3ttq6xk1NBBB30dsWCe3G9ghi6qUTQEH7vCGSaZSCie7iGewW7EHf.B.ScpSEyXFyvkG7rArd2e40e8WGs1ZqXVyZVh2456ISXBS.uy67N3lu4aFkVZoH8zSGQDQDt71Ev5+q7hu3Khu669NXvfAwQamryNaL1wNVWZc0XiMhHiLRGtYd2YgEVXc6+yR8NFB1OH7uG0Xt1q8ZwW+0eM13F2HxJqrvBVvBfff.zqWON7gOLNvAN.RO8z6yQ4BacBjxKubDe7wC.3v.Bc+Quc+Wqy2K0bmrcsl0asG285r+zQ.570RVOMud68s9yqCOwqe2sK3Bt.jRJo.KVrfye9yC850iJqrRr10tVwyiZ7wGOlyblCRLwDgVsZc4ACZ.qGN9ku7kKN74MrgMLjRJof4O+4iQMpQgTSM0A7HlDf0K6mm+4edTSM03T2xj57cxhfCN3AzQhozRKEqYMqAUVYkPoRkHt3hCyXFynec2gwY9eGOwmmkBXHnKx1Mo10rl0.YxjA0pUim+4edjbxIioO8oCEJTfhKtXrl0rFDczQiEtvEhMsoM0mGFmN5nCnWudLu4MOwAm5Uu5UOf5oWm8rmEUUUUnolZxgJAqs1ZQQEUDzqWuaqRPKVrf8su8AiFM5PURlMaF+xu7KnzRKEm3DmvkVmEWbwPmNch8puNqjRJQbmLthxJqLTYkUBc5z4vgCsxJqDkUVYngFZvgCUbiM1HN1wNFZpolb4JDxO+7gRkJcoJ5DDDPc0UGV6ZWqKedj5OzoSG13F2Hpqt5vQO5QQJojBl0rlEFwHFApqt5vvG9vwjm7jgJUpvZW6ZQfAFHRHgDvZVyZbp0usaxsUWc0HojRBm+7mGlLYBolZpX9ye9HrvBCqd0qV74ALvuAFGd3givCOb7C+vO3T2aOyO+7gZ0pQqs1JN1wNV2dqcxYTYkUhnhJJDbvAivCObjat4h3iOdrwMtQm50jsKNe4xkicu6cCMZzziC151tkf8ce22gvBKL7q9U+p9UaVJhgftHaWLtaYKaQ7anmSN4flatYroMsIHWtbzPCMfgMrggzRKMbzidTm97Gz4pZpt5pQwEWb+tcZazxn4laFMzPC10AOrM.IWYkUJd2a2cz+nrXwBNwINQ2FrZ6Br114ayYI7uuKJXvfAnSmNGNGNUWc0PqVsvhEKtz6y0TSMPqVsn4la1tusus+9Ue80iFZnA6FnCrMZAUQEUfFZnAW5t5fb4xQQEUDLYxjKcAVKHHHNPk6IuX4sonhJB6bm6TrSAoQiFTe80ioO8oioMsoA.quO7tu66hibjifoLkofrxJKwyAmsykamuKdXKPSoRk3Lm4LXCaXCHf.B.2xsbKXRSZR3rm8rPtb4nzRKE5zoCwDSL9zJZBHf.DuUYMPd+VlLY3xu7KW7zcXwhEb3CeXmZcpPgBzbyMiibjiH1AkrMnd2cLa1LzpUK14N2IznQCCAcALDzEY1rYDWbwI1qQsw1GzEDDPEUTA13F2HxM2bQFYjgWYj+uqjISFN5QOJJszRwTlxTb37DbtycN7K+xufYLiY31pvvrYy3S+zOESe5S2gdqYGczA9ge3GvnG8ncoyGhYylw92+9QSM0T21wHJnfBPIkTBtka4Vb5QXGau2TRIk3v4ZRlLY3Tm5T3XG6X3xtrKygp1ppppvO+y+LtrK6xbo6z6xjICu4a9l3Zu1q0kFzkMa1L16d2KdzG8QwHFwHb5kq+pzRKEqbkqDSdxSFMzPCHt3hS7FPrMJTn.KbgKDKe4KG4me9n3hKFYjQFH4jSFQDQDHlXhAM2byH3fCFs0VanrxJCZ0pEm3Dm.m8rmE4latXoKcoH2byEJUpD+7O+yPgBEXLiYLPqVsH1XiUxeX8N9wONd0W8UQEUTAZs0Vw3G+3wC7.OPOdoVYznQrm8rG7m+y+Ydmk2EwPv9Aa8XsNy12bLqrxBojRJHnfBBszRK86Ckh6PHgDBBJnfPngFpCsWayKjPBoe0gC5NBBBPsZ0c65zhEKHnfBBAGbvtz1SPP.AGbvh2S.6pfCNXDTPA4xW9.1VtPCMTGVVO06a8z6M8E4xk6V+6TuI0TSESe5SGSZRSBEWbwPkJUc618hu3KFOyy7LnvBKDadyaFkWd4nfBJ.5zoS7P3Z6VqUGczAtvK7BQzQGMtlq4ZP1YmMRIkTDWW1FHIBIjPb4q8tghDDDv+3e7OvpV0pD+hcs0VaH7vCuG+ef.CLP7+u8tyCuoJy2Cf+8j8l1ltjT59BsksRaAwVfxNTPoTEJHdcvYzAXdbFlG85x3nfW8duNtbYtWe75HpLp310QmQjEGJxpvv9VYoaT5VZ5Bkl1PWRWRy94b+ClbdZHokl1PQI+9773izbx647lzz767t86UnPgt8yrjAFEDbXxtc6XKaYK3S9jOAADP.3EdgW.4lat7qyn6jbjAWbWKjFniMbtd82fyOTudN5x49qbNNudJNNN9Do7Mywi4tqoc61GxS.AOoKa6aY5u5xsCNxKlVrXAhEKd.WCoJUpDyctyEYkUVn6t6F81au76vB88yBhDIh+leb2WP6Mmcx2Mvtc6ns1ZCRjHgeWT44e9me.6AkQ5Omb2DJH3vTkUVI9hu3KvEu3EgDIRvwN1wPN4jy.9E22MSmNc7SbDGhIlXFzsHVud8NM3+N18I712cqQiFQc0UGJszRcotUe80id5oG2NojDKVL5pqtvUtxU73Vs3oY2l6DDKVLhN5ngDIRv3F23FTSLKIRj.kJUNhteGd2LQhDg2+8eebgKbAHQhDLoIMILtwMtQrYHruFJH3vjEKV3yV894me769ClMadHs.h+oLNNNrksrErgMrAmd7cricfku7kOnNGaaaaykoxdTQEE9zO8S8Z0SfaLlKO8S+z86wW25VGxKu7b4wCKrvvwO9wwu5W8q73q4AO3A830H3HMwhE6TWURtyHkTRAojRJ2oqF9DnasXXZLiYLXtyctPoRkH2byEye9yGm8rmE50q2qtqaOTHVrX9wuZjhiM2y99eClzKkCVsZ0kx6tkFwvUemIit6+Fn5rISlFvx1e+mm1UnDB41Oeqlpbaf+96Odtm64PrwFKra2NJqrxPu81Kl8rm8PZQw5MclybF7ce22gcsqcwuDIRM0TwZVyZtsb8XXXPN4jCBKrvbZFmdO2y8Ln6Z3YO6Yi29sea9elkk0ozIm2RbwEGVyZVCF6XGqKcQYqs1JBO7v62cx6Uu5UiLyLSO9ZNgILggTckPH29PAA8BF8nGMV25VGZrwFAKKKBIjPPjQF4c7szjhJpHrqcsKmdrEsnEcaKHH.vblybvRVxRbI+ENPSDk9JszRCokVZN8XEWbwnwFareKyPYrRhN5nwpV0pvhVzhb4X5zoCETPA8aPv6+9ueZSKkPtKAEDzKIv.C7Gc2oed4kGhIlXvTlxT36RzamYcDNNN7ge3Gh+m+m+GWZcEGGGzqWOjISlGuKJDQDQf2+8ee2d7d5oG7RuzKg25sdKOpt5XGLOnfBxkfnlMaF+xe4uDKdwK1iNmDB4mdnff2EKxHiDomd5XNyYNtzBraWyRQG6bEdSSbhSDwEWbt8XVsZE0TSM74fRuIesI1Dg3Kh9q76hoUqVTRIk.gBE51sRIGqgKuEFFFLsoMsArqKGJRIkT52tVN3fCd.2vhGphIlX75mSBg7iOTPv6hsyctSroMso9834me9ds8RPfarHy2wN1gW67MXjQFYfyctyMhdMIDxcOnff2E69tu6a.2JXRN4jGAqMDBg7iOTPv6hkat4hbyM26zUCBgP9QKZwxSHDBwmEEDjPHDhOKJHHgPHDeVTPPBgPH9rnffDBgP7YQAAIDBg3yhBBRHDBwmEEDjPHDhOKJHHgPHDeVTPPBgPH9rnffDBgP7YQAAIDBg3yhBBRHDBwmEEDjPHDhOKJHHgPHDeVTPvQPc0UW3ZW6Z2oqFDBgP9mnffifZrwFwktzktSWMHDBg7OQAAGgwwwcmtJPHDB4ehBBRHDBwmEEDjPHDhOKQ2oq.DOmMa1vIO4Iw4N24PpolJV3BWHjJUJ..Zqs1vW+0eMF0nFEdfG3AP.ADvc3ZKgPH+3E0RvehgiiC6e+6G4me9XYKaY3jm7j3K9hu.1saGc0UW3ke4WFSbhSD5zoCu669tvhEK2oqxDBg7iVTPvehwjIS3K+xuDqd0qFie7iGqZUqBUTQEnhJp.W7hWDhEKFKXAK.KXAK.szRKnjRJ4NcUlPHjezhBB9SL1saG0TSMPjnazS1omd5Pud8n5pqF+e+e+eXBSXBfggAiYLiArrrnlZp4NbMlPHje7hFSvQPxkKGBEJreOdSM0Dpqt5b54X2tcDYjQhQO5QC..oRkhYNyYh24cdG75u9qilatYnQiFHPf.TSM0fktzkx+7DHP.5t6tu89hhPHjeBiBBNBns1ZCaYKaAkVZoXZSaZ86yigg4V9XhEKF+9e+uGaaaaCMzPC33G+3vhEKHlXhA1sa2omq.ABFvftDBg3qiBBdaVc0UGdgW3Ev28ceGra2NBKrv52majQFIhLxHukmy3hKN7rO6yht5pK7se62hrxJKL1wNVL9wOdzYmcB..qVsBIRjffBJHu1qEBgPtaCED71rRKsTru8sOX2tcjXhIh4O+42uO2Ce3CisssswubG..rXwBl27lGdjG4Q3eLNNNXylMbhSbBnVsZ769c+NDP.AfUu5Uiu8a+V7K+k+R9tHMwDS715qOBgP9oLJH3sYSXBS.YjQFvtc63EewWD4jSN86yMqrxBokVZN0EnbbbvO+7yoetpppBe0W8UPsZ0XCaXCHyLyD..2y8bOXqacq3XG6X3ZW6ZPoRkHszR612KNBgP9INJH3sYImbx3PG5P..7yny9ib4xgb4xGvmCKKKzpUKxM2bwDlvDbp6NCLv.wF23FwQNxQPrwFKVwJVAMlfDBgL.nffi.tUA+7DBEJDyadyqeOtBEJvxV1x7ZWOBgPtaFsNAIDBg3yhBBRHDBwmEEDjPHDhOKJHHgPHDeVTPPBgPH9rnffDBgP7YQKQBxccpqt5vAO3AcIWpBbiDK9bm6bQRIkzcfZFgP9wFJHH4tNW5RWB+leyuwsGSjHQ3K+xujBBRHD.PcGJ4tPhDIBhEK1sGStb4d0jW.vM1tqrYyV+dbNNtgz40pUqC3481M61sOjp6VrXoeKmEKV.KK6vspQHdMTKA8xLa1LLZzHBN3fuSWU7Iwxxh.BH.7du26wmSUcfiiCpUqFBD3cu2uN5nC7G+i+QbjibDWNlifAtaax5VYlyblX8qe82QR8clLYBu8a+1XG6XGdbc2tc6Pf.Atsbrrr38du2CyZVyxaUUIjgEJHnWjACFvm+4eNt7kuLd9m+4wXFyXtSWk7IIRjHjVZogoLko3xwDKVLTqVsW85YylMTUUUgKcoK4UOupToB1rYaHE.c3hkkEZznAEVXgd8ysis6KB4GCnffdQm+7mGu669tn95qGSbhSjBBdGhMa1PokVpKs3KszRysSVlgKVVVDYjQhLyLSWZ0lEKVPO8zCBLv.62tn0c333PTQE0crtNjkkEgEVXXxSdxPlLYdTYas0V62jAe6s2tSaUXDxcZTPPuDVVVTPAEfd5oGjZpoh5pqNnWudpaQGgIPf.zc2cim5odJWN1ktzk7n.QCVFMZDKdwKFezG8QtbrlatYbtycNLiYLiAbCU1c14N2ILZzn2pZ5QrXwBxJqrvu427avnG8n8nxt0stULsoMMjPBI3xw16d2KToRkWpVRHCeTPPujN6rSTXgEhG5gdHr10tVTPAEfZqsVbO2y8bmtp4SgiiCxjICO5i9nHlXhwoiEQDQ.c5z40ulRjHAkVZo3xW9x7sxQgBE3W+q+0vtc62xINCvMZ85m7IeB5pqt3+YSlLgzSOcud8cvxwl2rmRiFM3bm6bHhHhvkiUZokhe8u9W61xUas0h8t28BCFL3QWOgBEhryNaL4IOYOttRHTPvg.2MFM8zSOvfAC3Idhm.SYJSAG8nGEW+5W+NPsy2FCCCBHf.vy7LOCl5TmpKG+5W+5d8IZhb4xQgEVH96+8+N+iEZngh0st0AwhECgBENnlQpu7K+xn81am+myImbv5V25.CCiWeFsdq3I06alFMZvm7IeR+d7ewu3W31GupppBaXCa.8zSOd7078e+22mNHnXwhACCyskd53tcTPPOjPgBQSM0DdoW5kbJXXGczApt5pw1111vt28twINwIPBIj.N9wO9fZbc3333m93RjHg1LbGFZngF.KKqa6NtVZoEnWudTPAELjW5B8ECCC5omdPEUTgSedvlMaXCaXCvfACnolZBG9vGFAFXf860zQqE664PsZ03Mey2D0Vas30e8We.Ku2DCCCLZzHZngFPXgEFBMzPGzWWABDfKbgKLfSlmO6y9Lb7iebmNmLLLPiFM7+aOgPgBwt28tw0t107nxwwwAiFMB+7yOWNFKKKrXwBjISlWahI43uwEHP.DKVrKu9MYxDDHP.jHQxf98aFFFX1rYvxxh5qud7pu5qB4xki27MeSuRc1W.EDzC4n61RKsz3+iCFFFzbyMiqd0qhYO6YiBJn.zVasg6+9ueL4IOYX0p0a44s7xKG6ae6CrrrXoKcoHkTRABDHXD4K8taBGGGDIRDra2NRM0Tc4XAFXf35W+5H8zS2qLoSDHP.Zt4lwBW3Bwy7LOiSSFDIRjf1ZqMHVrXLlwLFDZngNfWy268dO9+sEKVPQEUDF8nGMjKWNlvDlvsr7dKBDH.c0UWfggAwDSLdzDzQjHQns1ZCqbkqDwGe7NUNgBEhyblyfniNZWtAEABD.VVV7rO6yhjRJIOZYrzTSMglZpILwINwAc4DHP.LXv.9hu3KvINwIb6yYricrX8qe8Ptb4C6+NjggAbbbXaaaa369tuaXctbm0rl0.4xkiTRIEnPgBu94+tYTPPODKKKBN3fwi7HOB+iXO5t...zQ2IQTPTgwvvfFZnAXvfAL0oNUr6cuaDe7wiG6wdLL1wN1a4e.wwwgO+y+bzXiMh669tO7fO3ChzRKMHSlLJHnGhiiCm3Dm.1rYCKXAKvkiUTQEg5pqNrhUrBuVKA0nQCtvEt.xImbb5Kf333PiM1HJnfBPVYkEhLxH62qICCiSs3vjISve+8Gomd5XW6ZWXoKcoCX48lXXXP6s2NN9wON+rb1SZYhQiFwjlzjb63YJVrXjXhI5xXkyvv.EJTf.CLPL8oOcOpmPJu7xQwEWLdnG5gFzkiggAc1Ym3Lm4Ltcbhsa2NRN4jwxW9xQPAEjWKHXM0TCtzktjamwsc2c2PjHQtskoCjd6sWjUVYgxJqLjWd4AkJUNrpq9ZnffCABDHvk+XSkJUPnPgXSaZS3.G3.3we7GGiabiaP0UJVrXApUqFicriEolZp36+9uGJTn.SXBS310Kg6pIUpTHTnP29EhRkJERjHwqtf4kJUJDKVLjJUpS+9lggg+5ISlLO5Z12yoPgB83xObISlLHQhDHUpTO95JVrXHQhD29Y+99Z5lIQhDHQhDOdbHcTNIRj3QkSnPgHiLx.aYKawki0QGcf8su8AQhD4UeeOiLx.4lattcBysqcsKDd3gioO8o6Qmyie7iCqVsBVV1Q7Omb2.JHnGhggA81aunnhJxoGyjISnfBJ.G3.G.xjICwGe7njRJYP0JPMZzfZqsVLsoMMbnCcHzUWcgzRKMX1r4a2ubtqCGGGJu7xgc61ca2BUQEUfqcsqghKtXuVKAu5UuJpolZvEtvEbZb6bzM4UWc0Ptb4HrvBaPcMcLNO0TSMPnPgnqt5BEVXgC5xObwvv.850ipqtZvxxhN6rSOZLA0nQCDIRjKoOMFFFnVsZX1rYWVulLLLnxJqDxkKueuAl9Ss0VKTqVMt3EunG0Rv1aucb0qdUTd4k6zwrZ0JZu81Qs0VKtzktDBN3f8JsDzwM61c2cC+7yO9yIKKKra2NpolZfd85ukc+piIAiiyqFMZfQiFgACF3quSZRSZXUe8kPAA8PBDH.czQG3q9puh+NtjJUJN0oNEN8oOMLa1LRJojPs0VK9q+0+5.9gYGATOxQNBjHQBZu81wEu3Eg.ABvW9keIF+3GOcWcdHNNNb0qdUvxx51LCSKszB5ryNgNc57JATDHP.Zqs1PKszBt10tlScgs.ABfd85QyM2LpolZFzSrEFFFX0pUTc0UipppJnSmNryctyQzIFSu81KZrwFwUtxUfRkJGziInPgBQIkTBePo9VNABDfqbkqfPBIDWxtNBDH.0TSMPhDI3xW9xdzm6aqs1fNc5v0u90GzkyQ21VPAEfCcnC4zMt3Hc6oQiFzbyM60FSP61sihKtXnUqVDXfAx+dSPAEDl5TmJJqrxfb4xQEUTQ+lTGrYyFN+4OOrXwB+4syN6DImbxniN5.ae6aGxkKmBB5AnffdHVVVDZnghUu5UCfazUle7G+w7A.yHiLv5W+5w3G+3ukmKGeYSBIj.BJnfPSM0DprxJgPgBw7l27vhVzh7JyRzataotadbFYYYwktzkfMa1boak3333aI3BW3B8JWOGsD7xW9xXVyZVHf.Bvoi0byMiRKsTLoIMIOZwxa1rY7O9G+CLtwMNTbwEiG9geXOdw1ObzYmchKdwKhjRJIjPBI3QiIX94mOF23FGF23FmKk6fG7fH1Xi0kt5mggAm7jmj+Kv8jffZznAUUUU39tu6yiJmACFfFMZvd1ydb5w+2+2+2QngFJN5QOJl8rmsWMgWroMsIbnCcHmdrzSOc7nO5ihCdvCBkJUhoLkozuueavfArksrEWVFIOzC8PngFZ.Oxi7HTB5vCQAA8PbbbvO+7ColZpvtc63S+zOE6d26FlMaFwFarXIKYIXwKdwN8kg2JNFefBJn.7W+q+UvxxhoN0oR2M2PTO8zCrZ0pKyNTGjJUZ+drgBEJT.CFL31TLlJUpfACFPZoklGkoTXYYQs0VKRIkTP.ADfGW9gqd5oGzQGcfINwI51kZx.ojRJASXBSvsioc0UWMRN4jc66+M2byHv.CziSP.xjICVsZ0iKmISlvnF0nbZF8xvvfzRKMnToRTWc0gIMoIg.CLPO57NPhIlX3W1ENt4znhJJjRJo.0pUiHhHBLwINw9s7VrXApTohuUjbbb7KGHG2.g2r95KfBBNDYwhEr+8ueroMsIzRKsfEtvEhktzkBkJUhN5nCOpKTDHP.ZokVv2+8eOeFGY+6e+HiLxXXkmEYXXvG7Ae.N4IOI+5RRrXwXdyadXEqXEve+8eHet+wJVVVX1rYXylMW5RINNNXxjIXwhkAcND0tc6PsZ0H3fCFM1Xi3du260kmiiyoQiFcYwJ63XlLYxixao8sbrrrdb4GtLZz3PpdCfArbCliYwhEOpGPbTFOsbc0UWH0TSE+m+m+mN83gGd3niN5f+2otKGnNTXwhEjRJofssssgzSOc9uePpTovtc6Cp2uYXXvINwI3eNLLL3zm9zve+8GVsZku9Rqy3AOJHnGxw377we7GicricfxJqLjPBIfLyLS3me9gyctyg5pqNDWbwAgBExOn2CFImbx3odpmBrrrfggAaaaaaXsPckHQB15V2JN+4OO+iIRjHzRKsvOE7uanqQcjQUb7G9kUVYvrYyn4la1oWebbbn95qGs0Va7AWtUmWqVshBKrPjbxIi1ZqMnVsZmRkXNVmf0VasnyN6zo2SEHP.Zs0VgFMZPSM0jSqyOGSYdG+98lm.IVrXAW7hWDMzPC7iI3H85DrxJqDpUq1iWmfm9zmle7D66m8crNAqpppbYxnHPf.TbwECoRkBMZz3Qis20t10vUu5UgYyl8n0IXmc1IJojRbJ8twwwANNNnWudTZokBCFL3UFKVG+NsrxJCgFZnvfAC7u233yAm8rmEJTn.M1XiCX5pSnPg7etQf.A3xW9xvrYyns1ZCae6aGJTnneyJODWQAA8PLLLvfAC3G9ge.m8rmEwGe7HmbxAxjICae6aGm+7mGFLX.96u+HpnhByYNyAJUp7V9GQ0We83Tm5TPf.AXlyblH1Xi0qTeWvBV.xN6rc5w33373rqwOVwvvvOIXTqVMLZzHBIjPvnG8ncoUYbbb7YLlJqrxA84ukVZA1saGW8pWEc1YmtLqS0qWOzpUK72e+cok6c0UWPqVsPnPg7oQO61sid6sWHWtbzVasAoRkhfBJHmJmMa13ChaznQTas0NhlF9LZzHzpUKrYyF5t6tGzkyw6W.2nEZ2LsZ0x2xsaVSM0De1RwSFauVasUzRKsfpqtZOpb81aunkVZwk.x88X0TSMdsVBZylMzTSMgN6rSWl42LLLPqVs7Io.OQ80WOra2N+LJ1aUe8YvQbKiFMx8xu7KyA.N.vs4MuYNNNNtFarQtoN0ox8Vu0awEbvAyswMtQNVVVtxKubtrxJK9mO.3BN3f4dsW60FTWu+xe4uvMpQMJt7xKOticriwY0p0amu7tqxANvA3xImb3TnPAGCCCW1YmM2d26dc6yszRKkK+7yePetKt3h4d5m9o4dkW4U3V1xVF292+9c44zbyMysicrCNSlL4xwzoSGW94mOWas0F+iYylMtRJoDNqVsxc1ydVtZpoFWJGKKK212914TqVM27l27bp7iD5omd399u+64pqt573xt0stUtxKub2dru669NtRKsT2drCe3CyUPAE3wWu5pqNtcric3wkqqt5h6i9nOxsGqyN6j6u829abc2c2d74cfr+8uethKtX2dr7yO+gzq+SdxSxc3CeXtLxHCud80W.0Rvg.61silatYjPBIfbyMWvvvfW5kdITc0Uiku7kiXiMVHWtbr0stU7m+y+YLiYLCrfErf98N7LXv.t7kuLhO93QpolJN1wNFBO7vw3F23Fgek8SOZznAu9q+53jm7j7OlDIRPxImrae9VrXYPkF6b30dsWC6ZW6B1rYCQEUTN0MSkUVYPiFMnqt5hecwcysDzw0qus7wnQiPud8vnQi8a2k22x4HOVNRxc06ARyM2L+ZurgFZnembGCz4ruuduUsnyQZkSqVs7u+LXJ2MeN5utczSe8OXX0p0A0qeOki5J2+L2jR7LTPvg.NNNHQhDDe7wCUpTg5qudTd4ki+k+k+Er5UuZnVsZjc1YiTSMU7Zu1qgidzihYMqY0uYBCGqErUrhUfSbhS.CFLfkrjkLhNQH9oJG4UyyctyAEJTfG3Ad.7TO0SgjSNY2NwXra2tGMNsiZTiB4latX1yd1Hf.B.ye9yGrrr3i9nOBezG8Qn0VaEAETPX0qd0vjIS7cEkiY+GKKKXYYcZh5vxxht6tabwKdQbvCdPDUTQgHhHBHWtbWJmc6142RiFI97f6t92pq64O+4wa9luIJojR..PJojBxM2bcZxaz2w9rumya9XNduZflXG5zoC+u+u+uX26d2n6t6FwFar3QdjGArrrdzX2Yyls98yBNNl27889d8b24ruum6IbTt994DZhwL3wv4IepwGhISlva7FuAe1Xeyady329a+sn4laFomd5Hf.B.FLX.idziF1saGUUUUH7vCGJUpDs1ZqPoRkfggAUUUUPlLYHgDRvs2kJKKKZpol328wat4lA.PBIj.BMzP8ZYv96VwwwgN5nCnSmNHRjHnRkJnTox98KRLXv.LYxD+uebbN5ONZwlRkJgQiFgBEJPO8zCTqVM+9dm.ABPRIkDToREDIRD+Bw1wL8ikkEJTnfOsd0au8xO9dc2c2Hf.B.wEWbPjHQvrYyn2d6E.2nEiAETPPsZ0XbiabdbZAySITnPXznQXznQvwwAqVsh.CLvAbmk2lMangFZ.M0TS7OVngFJRN4j4SOcVsZE81auvtc67uG5u+9CABD.a1rgd6sWXylM9csg.CLv98y8rrrn81a2oInjToRQBIjfGuNJsZ0JZs0VQjQFoaOVGczABMzP8ZaiUNx9NhEK1sKgJGIacOMAXqWud9I8UpolJDIRT+lTvIthZInGxlMaH4jSFu5q9pH+7yG4kWdH8zSGaYKaAxkKGyblyDW7hWDomd5XLiYL3Mdi2.AFXf329a+st8OlZu81wa7FuAF0nFEt90uNN3AOH333vRVxRvy7LOCs+fcKvvv.ABDveCF88th66ywwrwrzRKEMzPCXIKYIvfAC744x9iVsZwW7EeATnPAN24NGVyZVCJpnhPM0TCjISFBHf.vRW5Rw+w+w+AjISFrYyFpnhJvG7Ae.18t2MhN5nwZW6ZQd4kGF0nFE..1yd1C9fO3Cv8du2KDJTHl+7mOl8rmMZokVvl27lwe4u7WPvAGLxN6rwS9jOI98+9eO9vO7C4K+sCrrrn4laFu268d3u829aPoRkXkqbk3m+y+4Ht3hqeKWc0UGV6ZWKZu81gXwhQJojBdoW5kvzm9z4uAku8a+V7we7GCsZ0hEsnEg0u90iTRIEzSO8f7yOe7m+y+YnVsZjSN4fm3IdBLsoMs9saM6pqtvF23FQCMz.DKVLTpTIdxm7Iwi+3OtGmckZu81Q94mOehunuZqs1vQNxQP1YmMBIjP7nya+wpUq3XG6XXTiZTtcMMt28tWDVXgwmwZFrN0oNErZ0J13F2H9rO6y7Z0WeETPvg.whEiYNyYBsZ0hZqsVLm4LG7DOwSfCe3CCa1rgHiLRHRjHvxxBCFLfku7k6xtbtCQDQD3q+5uF1rYCG4HGAm5TmBLLLH6ry1qMCQI2fc61gJUpPu81KTpTI99u+6QZokFl1zlV+Vlm+4ed72+6+cvwwA4xkiG6wdL7G9C+AL9wOdnUqVL4IOYLu4MO9tA8PG5PX8qe8nnhJhOvRmc1IhIlXPngFJ..t+6+9QfAFHxN6rgFMZPXgEFLZzHd0W8UwAO3AgYylQKszBLZzHhN5ngDIRP3gGNBO7vus8dyEu3EwF1vFvQO5QgMa13SubwFartcGh2gHhHB7ge3GhSbhS.UpTgEtvEhjRJI.biwp5Mdi2.e8W+0Pud8.3FsDWoRkHjPBAuy67N3S9jOgeiD9ZW6ZPgBEHpnhZ.uduxq7JXxSdxvjISX5Se5HqrxZH0JYIRjffCNX295SrXwHjPBAQDQDdsfJrrrHnfBBgFZnt8ZFZngBUpTMfue6NpToBVrXARjHwqVe8UPAAGjt46xze+8G4kWdXm6bmX6ae6X5Se5Xkqbkvtc63BW3B3rm8r3jm7jXNyYNX9ye9C341QKUZqs1vzl1z3WmRjgONNNblybFb5SeZzUWcA4xkiwO9wCwhEiHiLxa4WXDXfAhIO4IiINwIBkJUhEu3ECYxjg0rl031megEVHpnhJ3+Bu68duWrrksL9.f.2HCgDRHgf5pqNblybFjPBI.+7yOTTQEASlLA+7yOjRJofewu3Wvum7MbRZBCFZznAW9xWF1rYCADP.H0TSE+re1OyscU3MaNyYNXNyYNt73LLL3e7O9GPud8PhDIH1XiEO3C9f7Yao8su8g1aucHRjHDUTQgbyM2A7FRbHojRBOyy7LCoWm8kToR62t5zww7Vuua0pUX2tczUWc0uIoBwhEOj54GGIBCG6ZIDOCEDbPxwcqJTnPb0qdU7m9S+IHTnP9tM4a9lugeivswFaDW3BW.QDQDXQKZQ3ce228Vd9sYyF5niNP7wGO..txUtBdm24cnDn8vfiwac+6e+3xW9x..HrvBCKXAKfu6zps1Zw9129FvyQrwFKFyXFCzoSG9lu4aFvENdc0UGhN5nQWc0EBKrvPhIlHJojRPgEVH+yoiN5.m3Dm.50qG0VasHwDSDyblyDgGd3vjISHnfBBImbxnfBJ.UTQE3pW8pXyadyNkzkGtXXX3Wz05zoCM0TSXTiZTfkkEgDRHHojRBkUVYC50So6X0pUDYjQhN5nCHUpTjXhIh1ZqM7e+e+eC850CUpTgHiLRHVrXL5QOZDP.AfO6y9raaIvAGAJbrKUzc2ciye9yid5oGWFCxd5oGTd4kiZpolgclUhkkkeLfqrxJQfAFHJszRc44UbwECEJTfScpSMndc3XadphJp.lMaFMzPC3cdm2AADP.dkaRvWAEDbP5y9rOCpToBO7C+v3IexmD1rYC1rYCJTn.O7C+vvfACn6t6FLLLvO+7CSXBS.SYJSA94meC5ojengFpSis0fYl4QbOGYqkctycBMZz.fa7E+wGe7X7ie7CpoiNCCCF23FGJojRPmc1I5s2d42215OiYLiAojRJ7+rMa1bZQiywwA0pUihKtXDWbwwmGMiO93wXG6Xc5ZWXgEhO7C+PHSlLTPAEfTRIEDd3g6x0+lG+yaNHxMuGGx8OSVBkWd4nvBKDbbb3m+y+4Xcqac7ma61syOk9GNV9xWNVwJVA.tQKV1zl1DZu81QGczAd1m8YwJW4J4yRKNR8Y2tHPf.XznQTTQEgpqtZHSlLDd3gyOCb66yywrrzwemObBL6XIbz2an0QFjwAwhEyOaTcLKO6OhDIBc0UW33G+3nkVZAgFZnHkTRAO9i+3PhDIC6em4qgBBNHoVsZ9w544dtmCwFartj5qbzslM2byXO6YOHyLyDolZp2UjZx9oFGyPynhJJ7G+i+QvvvfG8QeTr10tVDWbwMnagsYylwd1ydP1YmMLXv.hN5nG1+97pW8pXZSaZXVyZVn95qGwDSLHszRykmmQiFwbm6bwINwIPEUTA16d2KToREhJpnP3gGNhHhHPngFJjJUJjISFjISF5t6tgLYxfHQh3yLKNl8rc2c2PqVsPqVsniN5.pToB4kWdXoKcoXlyblPpTo2V+rp.ABP4kWN9zO8SgJUpvy9rO6H5Ndv0u90w69tuKN24NG5niNfe94G+Rp4l0ZqshCbfCfEu3EOr2o1Ma1L1291Gpu95QUUUE333vJVwJPXgElSSrqcric.UpTgYNyYNf+dn7xKGu5q9pnnhJBFMZD94meXtyct7cUOwyPAA6GRkJEYkUVXricrPmNcn2d6EczQGXyady3Tm5T3+5+5+BKXAK.xjIClMaFG4HGAhDIByYNygexLzQGcbaeZsS5eRjHAOwS7D7sDIjPBA94medz4PpToHu7xyiK2.IpnhBSdxSFiYLiAlLYBJTnvsikiToRwi9nOJV5RWJzqWOtxUtBe5S65W+53Lm4Ln2d6EVrXAlMaFVsZEFLXfemn2wNCOGGG72e+QhIlHl3DmHl6bmKhHhHPlYlIBLv.GQ20AV0pVEN8oOMxHiLfJUpFQWOaG5PGBaZSahuEXRjHAiZTixsu2KWtb9Y+6vcb1ZokVvF23FgNc5fISlv8ce2GjJUJjJUJLa1LzqWOXYYgUqVg+96+.9cFlMaFu3K9h3G9gef+wDHP.hM1XcI06QFbnff8CFFFjSN4frxJKboKcIbricLb7iebTWc0gpppJrxUtRrwMtQ7jO4Sh29sea74e9mi.BH.r90ud7y9Y+Lvww4xd9EYjmToRGvYa3fg2L.HvM59RgBEB61seK+RVABD.EJT.EJTf3hKNmVP0N92NNmtqaP6ahVVnPg7++6Tq+zLyLSbzidTOd2i2aPpToH7vCGVrXAgDRH39u+6GYmc1NkGcc7dVqs1JZs0VQ80WOhN5nQPAEzfp9Z1rYb8qecmd+UiFMve+8GKbgKD5zoCIkTRn0VaE0TSMXaaaaX6ae6vfACH8zSGuvK7B7iOq6lzNbbbHv.CDQDQD7A+V+5WOF8nGs24MIePzhk2Cc9yedb7iebb1ydVrrksLjYlYhUspUgBKrPHRjH7zO8Si25sdK7ke4WhfCNXjWd4cmtJS9QFqVsBc5zAkJUx2UXdqEjMo+YvfATbwEi1ZqMDSLw.sZ05z1RjiwSyjISvnQinolZBwEWbXFyXFXYKaYCpVLqVsZr4MuY9eeJRjHXylMzXiMB850ixKubHSlLHWtbnUqVzRKsveiLQDQDXIKYIHxHiD+te2uyoYTbe0Zqshye9yCABDf64dtGnSmN7m9S+Ir3EuXL6YO6aqKkl6FQ+kmGJyLyzoEyZYkUF+c84X2KvwtD.8gQh6HVrXDczQemtZ3ywe+8GyXFyf+mCJnffe94G+9rYYkUF10t1Et10tFDIRDxHiLv7m+78nMpVkJUxmOgEJTHZngFvt28tQokVJrXwBLXv.+rFO+7yGZ0pEBDH.omd5Xkqbk3du26E94meC3NAgJUpPN4jiSuNhJpnvF23Fw27MeChO93wa+1u8P+MJeLTPvgojSNYjat4h1ZqM7fO3ChYLiYfCbfC.CFL3U28xIDh2UhIlHRLwDA.3C.d3CeXX0pUHUpTjat4hG3Ad.bzidTje94i0t101usNygPBID9stLc5zgsu8siCbfCft5pK9mSFYjA9U+peEdfG3APIkTBjISFl3DmHlzjlzPZIQIUpTrgMrAjc1YihJpHTVYk4wmCeYTPvgIoRkh+0+0+UjPBI.c5zgyctyAgBEhEu3ESY7EB4mHNxQNB1+92O+OGe7wiEtvEB+7yOjPBIvOQY7DUVYkXO6YO7A.CMzPw3G+3wC9fOHhLxHQ7wGOl5TmpWo9KWtbL24NWL24NWXznQux4zWAMlfdINlJ5rrrPtb4zL0hP9IDMZzf25sdKTRIkfoMsogG6wdLnSmNDczQOj5Qme3G9AvwwgBKrPrqcsK3me9gUspUgHhHBDbvAiYMqYca3UAYnfBBRHDBtw5xzwdBoUqVwK9huH5omdvq7JuBhLxHQ.ADv.1ckNRKZUWc034e9mGYkUV3e6e6eCbbbnhJp.gEVX35W+5fkkEyblybD7UFYfPAAIDBwMJt3hwy8bOGzpUKxHiLvTlxTvDlvDfb4xgHQhfPgB4yFLlLYBEUTQn3hKFUVYkH7vCGu1q8ZHiLx.bbbnxJqDxjIielf5XrHI24QAAIDBoezau8hu5q9JboKcInUqVnQiFnRkJ9rEkXwhgMa1fd85Q7wGORLwDQlYlIVwJVA+hd2wZFlggws6ifj6rnffDBgLHX0pUTYkUBwhECCFL.KVr.4xkyuLKRJojncz8eBhBBRHDBwmEsO8PHDBwmEEDjPHDhOKJHHgPHDeVTPPBgPH9rnffDBgP7YQAAIDBg3yhBBRHDBwmEEDjPHDhOKJHHgPHDeVTPPBgPH9rnffDBgP7YQAAIDBg3yhBBRHDBwmEEDjPHDhOKJHHgPHDeVTPPBgPH9rnffDBgP7YQAAIDBg3yhBBRHDBwmEEDjPHDhOq+eTBETQ2svPuq.....jTQNQjqBAlf" ],
									"embed" : 1,
									"forceaspect" : 1,
									"id" : "obj-11",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 665.0, 202.083069734643345, 253.0, 499.801781737193778 ],
									"pic" : "chained.png"
								}

							}
, 							{
								"box" : 								{
									"autofit" : 1,
									"data" : [ 56255, "png", "IBkSG0fBZn....PCIgDQRA..DvI..HPpHX....P9IYC9....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI6ceGdTUl1GG+2LS5MHgVn2Bk.gNJBJX2056phRSETQErr1arttnK10UEWjpKJ1v1ZWzUzUcAVTPJI.AHPBITB8DH81jy6eDYLmTmDljyjLe+bckqq47LmxcBCy8L2mmy8wlgggg.........7Pra0A.........ZdgBNA........OJJ3D........7nnfS........vihBNA........OJJ3D........7nnfS........vihBNA........OJJ3D........7nnfS........vihBNA........OJJ3D........7nnfS........vihBNA........OJJ3D........7nnfS........vihBNA........OJJ3D........7nnfS........vihBNA........OJJ3D........7nnfS........vihBNA........OJJ3D........7nnfS........vihBNA........OJJ3D........7nnfS........vihBNA........OJJ3D........7n7ypC..flxxIuB029K6TqL9zzV20AU5YjixqnRr5vB..d.gDfepCQElhs6sSmwf5ptfQDiBKj.s5vxDxCA.z7USg7P0DaFFFFVcP..zTS9ETrVvmrFsjuYCJmBJ1pCG..zHHrf7WS4BGhl1UbpJ3f72RiExCA.36waJOj6fBNA.TGsiceDcqO+mozNTVVcn...KPWaaDZdOvkqd0kVYIGexCA.3aypyC4tnfS..0AqJ9zzc7heAmMY..ebgEj+ZN26koSePcsQ83RdH..HYc4gpKnfS..tocr6inw8nuWk9P9sJ7fz3NmAnydX8PcM5VpHiHXYylMKJJA.fmfgggxLq7UZG3X5GVWJ5C9OaRGM6BLsNgEj+5Cl0DazNCyjGB.v2g2Xdn5JJ3D.faH+BJVW1C7lU5xWXJWvfzcOwSuIUy6C..0c4jWg5kW5pzR913MMdWaaD5Kd9I2f2KMHOD.fuMqNOT8giG6wdrGypCB..ucu5G9yZ4qKESi8XW+Yq6XbiTA3O2vOA.ZtK.+8SiYncWQEZP5mhOUWie7bKT1kzoMftzfd7IOD.fuMqNOT8gcqN...71kSdEpk7MavzXS4BFjtlKZvVTDA..qx0dwCQS97GjowVx2rAkSdE1fcLIOD..NAqHOT8EEbB.nV7s+xNM0uLZU3Ao6dhmtEFQ..vJcOS5zUqBOHWKmSAEqk+K6rA63QdH..TdM14gpunfS..0hUFeZlVdbmy.nWY..3CKrPBTi6bFfowVQExU3IQdH..TdM14gpunfS..0hstqCZZ4ydX8vhhD..3snh4BpXtBOIxCA.fJpwLOT8EEbB.nVjdF4XZ4tFcKsnHA..dKpXtfJlqvSh7P..nhZLyCUeQAm..pE4UTIlVNxHB1hhD..3snh4BpXtBOIxCA.fJpwLOT8EEbB.nNxlMaVcH...KlUlKf7P..noPt.J3D........7nnfS........vihBNA........OJJ3D........7nnfS........vihBNA........OJJ3D........7nnfS..nIshJpHUXgEZ0gA7B4M7ZiRKsTK83CfFddCuWC7dY0u9noRdnbxIGqNDPC.+r5....M8svEtP89u+6KCCCSi6me9oHiLREUTQo9129py9rOaMfAL.Yyls58wJwDSTKcoKUKaYKSImbx53G+3xgCGJlXhQwEWbJt3hSmwYbF57NuyqV2WKcoKUKdwKVNc5TgFZn5bO2yU20ccW0q3yvvPO0S8T5+9e+up3hKV96u+5gdnGRmy4bNt89XoKco54dtmS4me9pksrkZ1yd1ZDiXDt81eEWwUnjRJI0gNzA80e8WK+7qxo4eq25szRVxRjggg5bm6rl4Lmo5d26dstuWzhVjV7hWrBKrvza9luoZe6auaESqZUqR29se6pvBKTWvEbAZ1yd1t8uORRIkTR5ZtlqQ4jSN57O+yWuxq7JU655Iesgj682yJZW6ZW5se62Ve0W8UZW6ZW5HG4HJjPBQcpScRmwYbF5xu7KWW7EewU4qwpt+eT0YFyXF57O+y2sV2ZRQEUjdlm4Yza7FugJojRzi7HOhl1zl1I89EnwD4gHOT0owLOjjm80GM14gjZ7xEs8suc8lu4apksrkojRJIkWd4oVzhVnXiMVMhQLB8W9K+E05V25579EdYL..PMJlw8hl9AUVjQFogjbqehKt3L9ke4WpyGiRKsTi+9e+uaDP.A3VGmIO4IajUVYUi6yniN5Jscyd1ytd82fW4UdkJsutfK3BpS6iXhIFSa+UbEWQcZ682e+cssYmc1U45zl1zFSGi9zm9XTXgEVq66INwI5ZapK+6WBIjfqsytc6Fomd5t81ZXXX7m+y+YWa+cbG2QUtNMDu1vvv896Y48FuwaXDZngVqG+92+9arl0rlJs80k+ejjL9y+4+bs+GvZw+6+8+L5e+6uo868ce22I890WQiU9AxCU6HOD4gpNMF4gLLZXd8QicdHCiF9bQYmc1FW+0e8F1sauF2uQEUTFu+6+90o8suHu87CLCm..vIsxOMnOsS6zjCGNjjTAETfN5QOp1+92uqoS9l27l0HG4H0cdm2odhm3ITngFZst+O7gOrlxTlh95u9qcMlMa1TrwFqF4HGoLLLzZW6ZUhIlnb5zojjdy27M0JW4J069tua0d1YO5QOpjjraurqv7RKsT8RuzKo63NtCWi4Nb5zodgW3EjjT.ADfJpnhb86u65m+4eV6bm6zzXe0W8UJyLyTQFYjt89o1bricLSKu8suc8RuzKoG5gdHO1wn7Fv.Ff5e+6u1xV1hJszR0G9genty67Nc6s+C+vOz0im3DmXkd9FpWaTWjat4pa+1ucsjkrDSi2st0MM7gObkUVYocricnTSMUYXXnsrksny67NOcvCdPETPA4Z8qt+eT0Yzidz06XNmbxQyXFyPyctysIykaAPMg7PjGp5zPmGRx5yE4oxCI0vmK5EdgWPuwa7FtVN1XiU8su8U1saWqacqSolZpRRJiLxPSdxSVCZPCR8oO8oNcLfWDqrZW..ME3selC7FTamAt7yOeiu9q+ZiQLhQToyvVAETPMtuKojRL5W+5mqswgCGFyd1y1HyLyrRqat4lqwq9pupgCGNbs9QGczF4lat0XbGRHgXbAWvE3Za9lu4apS+9+oe5m5ZaK+YfcLiYLt8931u8a201MjgLDWOd9ye9t89vcNSnmXcBKrvbstsnEsv3vG9v039t9dlkMLLLdxm7IcssiZTixs2tMtwM5Z65V25lQokVpomug70FFFt+YV9htnKxzqqu0a8VMNvANPkVusu8sabK2xs3JF1yd1S853cxZ4Ke4FcoKcw0wpm8rmFW5kdoLCmpGXFN48f7PjGplzPkGxvnw40GMV4gpKGy5q669tOCIYbMWy0XroMsISOmSmNMdlm4YL86RccV54qwaO+.MMb..zfKnfBRW3EdgZEqXE5AevGzUeCXKaYKtNirUm25sdKkXhI5Z+7QezGo67NuS0xV1xJstgDRH51tsaSe5m9oJjPBQRRG3.GPu5q9p0ZLdS2zM45wKXAKvs+cSRt1+96u+5FuwarNssRREWbw58e+2WRRwEWb5wdrGy0y81u8aWm2etiN24NqK4RtDIIc7ieb829a+sFjiij4yH7pW8p0d1ydbqsqhmU4J1uIZrdsQM469tuy0Yz1gCG5UdkWQyctyUsqcsqRqau6cu0BVvBz+6+8+zXG6Xqx0owvTlxTzt28tUHgDhl0rlk1xV1hF0nFkkDK.MVHOTMi7PUsZKOjj0mKpoVdnq65tNs5UuZ81u8aq3hKNSOmc610C8POjtpq5pbM1JW4JYl31TlUWwK..ucd6m4.uA00yF1K8Rujq0O3fC1H0TSsJWuBKrPit0st4ZcWzhVjaGSyd1y10105V25prOIT9yrbgEVnQqacqMjjge94ma2iG1912tgMa1Ljjw3G+3MhO93qymY4O+y+bWayS9jOoQgEVnqdnfMa1LRIkTbq8Sc4LKGSLwXrl0rFWqu+96uQRIkT0tuOYNyxFFFFibjiz01+BuvK3VaSu6cucsMU7rf1P+ZCCiZ+umkVZollE.21scatcLTeNddJcoKcwXricrFokVZtF6odpmhY3T8.yvIuGjGh7P0FOcdHCiFuWezXkGxcNlMF9vO7CMMKm1wN1gkDGME3smefY3D..Zzca21sot0stIIo7yOe8.OvCTkq2q8Zulqqk+V0pVoq8ZuV29XbcW204puDbjibD85u9qWiqe.ADfttq65jjTIkTRst9mv7l27bcmbY5Se5tc7Udk+rGOgILAEP.AnwN1wJIICCC8Nuy6Tu1u0jRJoDcJmxonq7JuRIU1Y29ge3G1iebNgIMoI45wm3rnWSRHgDTRIkjjjq6pOkWi4qMpNKcoKUaXCaPRkcmvp5dcr2lssssoO5i9H0ktzEqNT.rLjGxLxCUY0VdHIqOWTS07P0lN0oNYZYC27NlG79PAm..Pit.BH.MyYNSWK+8e+2Wkq2+9e+uc83a3FtgJ0XKqIQFYjllR1aYKaoV2loN0o55wKZQKpVmB24kWdtZ7k8su8Um0YcVtc7cBG+3GWe9m+4RR5TO0SU8nG8PRl+fwMDWNCm32sm5odJW2lk+3O9i0pV0p73GKIowMtw4pwit10tVkRJoTiqe4uLFJ+eKNgF6WaTU9hu3Kb83ILgI35Ku5sK3fC1pCA.KG4g9cjGppUa4gjr9bQMUyCUaN7gOrokspKAcbxiBNA..KwINilRkcmH4HG4HUZcJ+GF7htnKpNeLFyXFiqGehy.YMo+8u+ZjibjtV+ku7kWiq+67Nuiq61N02yp7+5e8ubcWDZBSXBtF+LOyyTcnCcPRkcG7Ysqcs0q8e04Dmsv9zm9na9luYWie+2+861aacQaaaa04cdmmqkqsytbscWApw90FUkcric35wmy4bN0q8A.rNjGpLjGpp4N2c5r5bQMWyCshUrBWON1XiUQDQDVXzfSFTvI..XIhHhHTqZUqbs71111pz5T9OHWEmd0tiniNZWONszRys1lxe1kqsl15IZxmAGbvZxSdx043SprlMpTYMJywO9w6Zb61sa5C96oO6xk+Cq+XO1iovCObIU1sE6x+gr8jb2KmgMsoMosu8sKIoQMpQUkmwVq30FUT4+f9d5yp7AO3A0ANvApxeppuTL.p6HOTYHOTk4N4gjr9bQMj4gjrlbQkVZol92lpa1kglFnfS..vxbhosuTk+f9G7fGT4kWdtV9Dmk05h129165wokVZt0YDc7ie7JrvBSRkMU02+92eUtdqZUqRwGe7t1lHiLx5b7sm8rG8S+zOIIoQO5QWoeGK+YT88du2SkTRI04ig6nssssl5aFyXFyPEUTQd7iyUbEWgqKmq3iOdWeX9Jp1tLFrpWaTdG5PGRYkUVtV1S+A8iIlXT6ae6qxeZSaZiRHgD7nGO.eUjGh7PUE24xoypyE0PmGRxZxE8Zu1qocu6cKoxtq9MkoLEO9w.MdnfS..vxT9qI+Jdlx10t1kqGGbvA65CeWWT9ybcAETfoOXX0IrvBy0YzsjRJQKdwKtJWuxeKL9Vu0asNGaRRu669tt9vkU0z0e3Ce3pW8pWRprOX429sea8533Ntm64dbc1YSN4j0bm6b83GivCObcoW5k5Z4p6rKehOnue94mF23FWkddq50FkW4Oqx1rYSctyctNGCmLN9wOdi5wCn4JxCQdnpRskGRx5yEY04gj774hNxQNhlwLlgqkehm3IrjeufmCEbB..VlzSOcWOt7mkYI4Zp0KU1cPnBKrv579OyLyz0iiJpnTngFpasc2zMcStd7q8ZuVkZZqG7fGT+q+0+RRRCYHCQm5odp04XS52uLF7yO+bc2.phZnaZqmPvAGrdxm7Ics7rl0rb0WP7jtlq4Zb83p5C5u4MuYWyxfy67NO0l1zlJsNV4qMNgSzfakJ6xBImbxoNGC0jW+0ec8tu66Vk+7AevGnS6zNMO5wCvWE4gHOTE4N4gjr9bQMz4gjZbyEUZokpa5ltIkQFYHoxZf820ccWdr8OrFTvI..XYJeCxr28t2ldtt10tZZ4CcnCUm2+k+KRz8t2c2d6FwHFg5e+6uqXrhMs0EsnE4Zp9WeaRqabiaz0cjly+7Oe05V25pb8J+Yb9y9rOSYmc10qim63Zu1qUCYHCQRk0.cK+G72S4htnKRsrksTRRIlXhZSaZSldd24xXvJeswIDSLwXZ45aiGu5bUW0UoINwIVk+b0W8UK+82eO5wCvWE4gHOT8IOjj0mKpgNOjTiatnYLiYnO6y9LII05V2Z8Nuy6H61obEM0w+BB..KQ1YmsqyhkjbMk8OgvBKLS8ihCbfCTmOFkuuWTW+fbk+rKW9l1pSmNcsb3gGd8tYVV9yRbKaYK0hW7hqxeV0pVkquDPd4km93O9iqWGO2gc610y+7Ouqk+G+i+g1yd1ijJa556IDP.AX51.cEO6xm3C5GbvAqK+xu7pbeX0u1PprKChVzhV3Z45aiGG.VGxCQdHo5WdHIq+0GMmxCs3EuX8bO2yIox969W7EeQkJnFZZhBNA..KwF1vFb83NzgNTkSi7xe1Cq3YfzcrxUtRWOthWpD0lq8ZuVEP.AHIyMs0O+y+bs28tWIIccW20Uu5YCNc5Tu669ttVdoKcoZpScpU6OkuuhbhK+gFJm64dt5hu3KVRREVXgZlyblRxy8A8kp96RPaYKaQacqaURRW5kdoltbEpHq70FmP4+vvUWimE.duHOD4gjp+4gjr9bQMGxCsrksLWyRO61sqktzkxkMdyHTvI..XI9a+s+lqGOhQLhpbc5YO6oqG+5u9qWm1+YlYlllV7U2wn5z5V2ZWmYyx2zVKeSZs9dYL7e9O+mp8tNTs4G9geP6ae6qdsstqm64dN4vgCII8lu4apssss4QmV6m4Ydltta9ryctSs90udI49WFCRV6qMNgxOaHl+7meC1cuI.zvf7PjGRp9mGRx5yE0TOOzO8S+jtpq5pTwEWrjjlybli9i+w+nEGUvShBNA.fFcKe4KWe+2+8Rpro19y7LOSUtdSaZSy0iW4JWYc5r2sjkrDke94KIoALfAnq3Jth5bbVwl1ZhIlnq3dTiZTZ.CX.048oj4yN7blybTgEVXs9yPG5PkTYMUyktzkVuNttq92+9qoN0oJoxNK3+0+5e0TyI8jkc61ccGXR52O6xm3Cd2xV1RWmc6piU+ZCIoa61tMWOdW6ZWM3+6B.7bHOD4gNYyCIY8u9nobdn0t10pK6xtLW+M3oe5mtde2VDdunfS..nQ0ZW6ZMcFYu+6+9qTiZ8DN+y+70nF0nbs7zl1zTVYkUsdL9ge3GbME7kJ6rXWelJ9m64dtpacqaRprlwY4abp02ypbt4lq9jO4SjjjCGNz3F23T.ADPs9Si0cInS3we7G20kowG8Qej17l2rGc+WwKmgsrksnDSLQIIM1wNVWWFIUGq90FRRidziVW1kcYtV9u9W+qZm6bm051UXgEp4Mu40fbGEB.0NxCQdHoS97PRV+qOZplGZyady5BuvKzUCn+u7W9K5ge3G1RhEzvhBNA.fFE4kWd5QdjGQibjiTojRJRprdevi7HORMtcO9i+3td7O8S+jFyXFSMdY.7we7GqK5htHWefugO7gWiM8yZhc610MbC2fqkSHgDjTYMpyq9pu55097y9rOy0Gv6bNmyoZucKWQSXBSv0kSP7wGe8pWQTWDczQqG7AePIU1sa40t105Q2+CaXCy0WvKszRS2+8e+tdN2sA3Zku13Ddlm4YbcYejZpopS4TNE8Ue0WUkqaokVp9zO8S0fFzfzsca2lRJojNoN1.ntg7Pkg7PkwSjGRx5yE0TKOTJojhtfK3Bb0v9u268d0rl0rZziCz3vyMuDA..jzLm4LccVAyJqrzN1wNTRIkj1yd1iJszRcsdm0YcVZdyadJjPBoF2em24cd5Nti6PyYNyQRk8gbiIlXzPG5P0vG9v0vF1vTlYloV8pWsV8pWsoaKvCYHC4jd5keC2vMnG+webSw90e8WuBJnfpW6uxeYLL9wOd2d65XG6nFyXFi9we7GkTYmc4m8Ye15UL3ttu669zBVvBZv5UGSZRSRO1i8XRR5a9luQRRsu8sWm0YcVt01a0u1PRpe8qe5Ye1mUOzC8PxoSm5XG6X5xtrKS8t28VCaXCSCYHCQ4kWdZm6bmZEqXElhgSba4tpLqYMqZ8rqegW3EpS+zO85bLuhUrBEe7waZrUu5U65waXCav0eSkj7yO+zMdi2nac19A7FPdnZF4g9cmr4gjr9WezPkGRpgIWz0ccWmqBx0hVzBURIkn69tu6ZbaBIjPzLm4LUfAFnaebfWBC..TihYbunoePkETPAYHI25m10t1Y7Vu0aUmOFexm7IFspUsxsON+o+zexnfBJnF2m96u+FRxHjPBoFWuK5htHW6Wa1rYjTRIUsqa7wGuq0cLiYLldtCbfCX3vgCCIY3u+9ajQFY39+AvvvXQKZQt12cpScxvoSmU4uORxH6rytJ2GmXc5Tm5jacLW5RWZk9a6ZVyZpSwc0Y6ae6UZeeO2y8Tm2OMDu1vvv8964IrpUsJit0st4VG+vBKLi4N24Vo8Qc4+GIIiwO9wWm+akgggwfG7fqSGGIY78e+2WuNVM20Xkef7P0NxC86HOj6ySkGxvng80GMV4gLLZ3yE4me9UmyAIIie9m+45zwwWg2d9Atj5..vIsIMoIUk8dffBJH0912dMfAL.M4IOYsvEtPs8succsW60VmOFW9ke4J93iWSaZSSiXDinJuMPGXfAp+ve3Onu3K9B8JuxqTqmIrHhHBIU1YXqlb629s65xH3RtjKwzcElJJzPC00Tauh620st0ImNcJIoq7JuREYjQViG2JZricrt1m6ae6S6d261zyehyTYHgDh72e+qx8wI19Z624SXBSXB5QdjGw09q6cu6pu8su0o3t5z6d2actm645Z4fBJHc8W+0Wm2OMDu1Px8964ILpQMJEe7wqG7AePMlwLlp7rFOjgLD83O9iqcsqcUkMF0p6+GUc5RW5hautkWm5TmpSque94mhN5nqWGKfFKjG52QdH2mmJOjTCyqOZryCI0vmK5DMe95hfBJHW2UAQSK1LLLLr5f..vaVuF+KYZ4c792iEEIn7LLLTpolp15V2pBLv.UaaaaUO5QOTngFpauOJpnhTlYlohJpnp0OHWt4lqxM2bUaZSap0OHVd4kmxImbpx0MiLxPNc5zs6YFUTgEVnxLyLUHgDhqunxITbwEqLxHCEYjQVsSA9hJpHcricLEUTQUmti+3zoSkWd4ovBKr5cS1t5b3CeX4zoSEYjQ5Qlt7dhWaH4d+8rljVZooTSMU0l1zF0wN1Q29KWglNZrxOPdHuSjGh7P0DOwqOHODpMd64GnfS..0Bu82HG..VCJ3D..rRd64G3RpC........dTTvI........3QQAm........fGEEbB........dTTvI........3QQAm........fGEEbB.nNxvvvpCA..XwrxbAjGB..MExEPAm..pEgDfelVNyrx2hhD..3snh4BpXtBOIxCA.fJpwLOT8EEbB.nVzgnByzxocfiYQQB..7VTwbAULWgmD4g..PE0XlGp9hBNA.TKhs6syzx+v5RwhhD..3snh4BpXtBOIxCA.fJpwLOT8EEbB.nVbFCpqlV9C9OaR4jWgVTz...qVN4Un9f+ylLM1nqPtBOIxCA.fxqwNOT8EEbB.nVbAiHFEVP96Z4ilcA5kW5prvHB..VoWdoqRGM6BbsbXA4uN+QDSC1wi7P..n7ZryCUeQAm..pEgERfZJW3PLM1R9130670azhhH..XUd6ksAsjuMdSiMkKbHJrPBrA6XRdH..bBVQdn5KaFMEtW5A.Xwxufh0k8.uoR6PYYZ7obACR28DOcux2fG..dN4jWg5kd2Uo2b4l+P9cssQnu34mrBtby.oFBjGB.v2lUmGp9fBNA.3l1wtOhF2i9dJmBJ1z3sJ7fz3NmAnydX8PcM5VpHiHXYylMKJJA.fmfgggxLq7UZG3X5GVWJ5C9OaxzkufTYWBCevrln5UWZUiRLQdH..eGdi4gpqnfS..0AqJ9zzc7heQk9v9..v2RXA4uly8dY5zajaRqjGB..RVWdn5BJ3D.PczN18Q0s97eZktrF..fugt11Hz7dfK2xNixjGB.v2lUmGxcQAm..pGxufh0B9j0nk7MafyxL.fOhvBxeMkKbHZZWwoZ48JCxCA.36waJOj6fBNA.bRHm7JTK+W1oVQ7oostqCpzyHGkWQkX0gE.pB18K.4WPgqhx9nRzdafaHj.7ScHpvTrcucZzCpq57GQLdcMmaxCA.z7USg7P0DJ3D...ZVaNeYJ5G1xQ0dOVgRR5suiAqd0wvr3nB.nok0m7wz8+laU4VjSSie18MJ82lTeU.9a2hhL.3sh2U....MqkdFE3pXSRRqK4iagQC.PSO+zlNht6WeKUpXSW9PaqdxqKVJ1D.pR7NC...nYsgESjlVd8IeLKJR..Z54y9kCnGZoaSE5z7EFyML5NpYb08VNry0nL.pZ9Y0A....PCog0yVXZ4eM0rjSmFxgC9RR..0j2361sl22u6JM98dQcWieLczBhH.zTByvI...zrV2ZWHpUg962IWxsHmZq6KGKLh..7tYXXnW9y1YkJ1jC6RO9U0aJ1D.bKTvI...zr2o1CyyxoMPebB.nJUhyR0iuzsqk9yGvz3A6mc82u19oKbXs0hhL.zTCEbB...M6MzXZook+0jyzhhD..uW4WnS8fuQh5q2zQLMdKBxglyTiSiLxMdaJ...H.jDQAQE1nrnHC.MEQObB...M6Uw93zFRKaUbIkJ+8iy8F.fjTV4Vrt2WeKZSU3RNtcgGfl8TiScucgXQQF.ZphOkE...Z1qisJX09VDfqkKrjR0V1c1VXDA.383fYVnl17SnREapasJHsvoOPJ1D.pWnfS...vmvoTg93z5S9XVTj..38H0Clmtk4GuR4H4aZ735PXZgSePJ5nBxhhL.zTGEbB...9DFVOizzx+JMNb.3iay6NaMs4mfNPVEYZ7SqmsPy4VFfZQX9WMaI.Psid3D...7ILjJLCmRXuYqBJxoBJ.GVTDA.Xc94skod32YqJ+RJ0z3WXbsR+kw2G5wc.3jFuKB...7IztHCTcsbWZHE6zPaJU5iS.v2yxW+gz88VIVohMMtQDsl4D6KEaB.dD7NI...vmwv6I8wI.3a6CVY55u7gIoRJ0vz3S6b5rtuKOFY2tMKJx.PyMTvI...3yXX8nklVdsTvI.3CYAecp5u+UoXZLa1jlw+WO0Md9c0hhJ.zbE8vI...3yXHUXFNkX54nbKnDEZP7Qh.PyWNK0PuvmrS8w+5AMMt+NroYMt9nydfs1hhL.zbFyvI...3yHpvCP8pMA6ZYmFRwmRVVXDA.zvpnhKU+k2dqUpXSgFfC8xSo+TrI.zfgBNA...eJUrONsNtr5.PyT4leI5dW7l0+YqYXZ7nBwOMuad.Z38pkUyVB.bxiBNA...eJCsmQZZ40kxwsnHA.ngSFYWjt8EtIs1TMOKN6PKCTKb5CR8oSgYQQF.7UPCK....9TFROZgrYSx32tAMs0CjqxJ2hUDg5u0FX..dH66n4q65etYsmLKzz38tsgnW7F6uZSKBzhhL.3KgY3D...7oDdH9o9FcnlFaCLKm.PyD6H8bzMOuDpTwlFZWBWycZCjhMAfFMTvI...3y4T5QE5iSoPebB.M8sgTNtl9B1jNZtEaZ7yrOQpW9lhSgGBWfK.nwCEbB...9bFZLlaTt+5NYFNAfl1VwlOptyEuYkSQNMM9kM31nm955mBzeGVTjA.eUTha...3yYvcuExgcImkV1xIej70QxpH05HBvZCL.f5guXMGPO8mtS4zv73S9z6ftsKo6xlMaVSfA.eZLCm...fOmfCzgFPGLeGZZiIyrbB.M87l+m8nm3Spbwlt6Kra51uzdPwl.fkgBNA...eRCqmlur5nONAflRLLLz+3ySQu5xSyz3NrIMyw1KMwyrSVTjA.TFJ3D...7IMzJTvo0lLEbB.MMThyR0rd+jzau5zMMdf9YWO+01OcwCucVTjA.76nfS...vmz.6VDJPG+9kZxdxrPcfLJvBiH.fZWAE4TO7RRTeU7G1z3QDnCMmaLNc58KJKJx..LiBNA...eRA3ucMvNGtowVeJzGm.f2qrxqXcWKZSZE6v7Lxrsg4uVvzGnFX2ivhhL.fJiBNA...eVCqmsvzxqmKqN.3k5PGqPM84mf13dywz3cKpfzBt0AodDcnVTjA.T0nfS...vmUE6iSqg6Tc.vKTZGJOMs4GuR9v4aZ7909P07l9.UGhJHKJx..pdTvI...3yp+cIbEh++9GG5fYWj1yQxuF1B.fFWacOYqaY9InzOdQlFeD8nE5UukAnnBO.KJx..pYTvI...3yxOG10P5p4ddx5YVNA.uDqIoL0ssnMoikeIlF+75WqzKbC8WgDjeVTjA.T6nfS...vm1v5g4Kqt0uyLsnHA.3288a7v5dVRhJuhK0z3W0ozNMqqouJ.+3qxA.ua7tT...vm1PiwbiCeMobbYXXXQQC.fz+ZUoq+76ucURoleuna9r6jdfqrWxtcaVTjA.39nfS...vmVu6XXJh.c3Z4LxqDsqClmEFQ.vW1h92opm6KSoRi+fWVO0McAcqwOf..pmnfS...vmlC61zP5F8wI.XsJsTC87e7Nzq8i60z39Y2ldpw2GM1Q0dKJx..penfS...vm2v6o493z5R9XVTj..eQEURo5QemsoOZsGzz3g3uc8RSoe5bGbarnHC.n9iaqA...vm2PiwbAm90TNtJsTC5SJ.nAWdEThdn2bqZM6x7LqrkA6md4an+J1NGtEEY..mbXFNA...ed8L5PTjg76mGtrJzo1Q54ZgQD.7EjQ1EoaegapREapCsH.svoOPJ1D.ZRiBNA...ed1rYSCqalua0QebB.MjROiBzzmeBJw8at318rMAqEL8Aot11PrnHC.vyfBNA...HogGSE6iSYZQQB.ZtK48mql17hWokQAlFevcJLM+oOP01VFnEEY..dNzCm....jzP6o4Y3z5RMKUhyRkeN37yA.OmD1UV59VxVTVE5zz3itWsTOw0FqBJ.GVTjA.3YwmfB...PRcssgn1Ed.tVNuhKUaeu4XgQD.ZtYUIlgtiEu4JUroKYPsQOyT5GEaB.MqPAm....9MCu6QXZ4ecmGyhhD.zbyW8qGTOvamnJrjRMM90NxNnGc78lYSI.Z1g2UC...32LzXhzzxqKEZb3.3j269i6U+s+0NjSCyiemWP2ze5+qGxlMaVSfA.z.hd3D...vuoh8woMjVVpnhKUA3OmiN.T2YXXn49U6Ru4pR2z3NrI8muhdoK8TZmEEY..M73SOA...7a5PTAoNUt6NTE4zPaY2YagQD.ZpxoSC8jePRUpXSA3vld1IEKEaB.M6QAm....Jmg2iJb2pK4LsnHA.MUUXwN0LdyD0WrwCaZ7HBzgdkaLNM53ZkEEY..MdnfS....kyP5QKMs75Rl93D.beYmWI5tesMqeJIyEqtMg4ul6sL.MjJTTa.flqnGNA...TNCKFyeYvD1aNJ+BcpfCjaW4.nlc3iWnt2EuEkzgxyz3cIpfzrmZbpCQEjEEY..M9XFNA...TNsoEApt0pe+KEVRoFJgTyxBiH.zTvdNb95VleBUpXSwFcnZASefTrI.3ygBNA...TAUrONs9jOlEEI.nofss2r0sL+3U5GqPSieJcKB8pSa.JpvCvhhL..qCEbB...nBFVOizzx+ZJzGm.PU6W2wwzstvMoLxqDSieNwFkdwaLNEZPzES.fuId2O...fJXX8z7LbZKomixI+RTXAyGcB.+teHginG8C1tJ1ogowuxg2Nc+WQLxgcaVTjA.X8XFNA...TAsHL+UeZaHtV1vPZiLKm.P47oqd+ZFu21pTwll5Y1I8PisWTrI.3yiBNA...TEFVOaook2PxTvI.TlEu7zzS+4IKCy0ZR22kzCcKWX2rjXB.vaCEbB...nJTwKqt0lBMNb.eckVpg96e5N0B9O6wz39Y2ldhqt2ZbmQGrnHC.v6CMh....fpvP5QKjCaRm3pkY6GLOkYNEqHCyeqMv.fkn3RJUOw6uc8Ma9nlFOX+rqm4ZhUmVeirZ1R..eSLCm....pBgFrepusOTSiEO8wI.eR4WnSc+uwVpTwlZYP9o4byCfhMA.TEnfS....Uig2Cy8wo0wkUGfOmimSw5NV3lzOWg93VzQDfVvzGnhqKgaQQF.f2MJ3D...P0XXwXtfSqcmLCm.7kbfLJP2x7iWaN8bLMdOZcvZgSePpasKjpYKA..EbB...nZLvtEg7qb2Zy20QyWG93EZgQD.ZrrqClmtk4mfR8nEXZ7AzwvzBl9.U6hLPKJx..ZZfBNA...TMBNPGZ.cJLSiswjYVNAzb2lSMKMs4GuNX1EYZ7SOlVp+wMO.EQnbyC..n1PAm....pACqGsvzx+J8wIfl0V8VyP2w+by53E3zz3Wz.ZsdtqueJ3.cXQQF.PSKTvI...fZvP6o493zuxLbBnYquYcGR22amnxujRMM9DNsNnYNw9H+bvWeB.vc4mUG.....dyFP2hPA3vlJxogjj16wJTomQApCQEjEGY.vS58+u6Su3WuqJM9scdcQS4b6hEDQ..MsQI5A...pAA3mcM3tDgow1.yxIflUl2x1UkJ1jMaR+4KOFJ1D.P8DEbB...nVTw93z5Rl93DPyANK0PO8GljdiUrOSiGnCa5YmXe0ebDQaQQF.PSeTvI...fZwPiwbebZMTvIfl7Jp3R0i7VaUe55OjowCM.G5kug9qyb.s1hhL.flGnfS....0h924vUH9+6eroCmSwZ2GNOKLh.vIibyuDc2+yMqeXaYXZ7VEp+Z92x.pzMK...T2QAm....pENbXSCsal6iSqemzGm.ZJ5HYUjt0EjfVWZYYZ7NGYfZg25.Uu6XXVTjA.z7BEbB...vMLrdXdFOrtT3xpCnol8dz70zme7Z6Gz7LTrOsKDM+oOH0oVErEEY..M+PAm....bCCMFyMN70j7wkgggEEM.ntZG6KGcKyKAsmLKzz3CqqQn4NsApVGQ.VTjA.z7DEbB...vMz6NDlZQPNbs7wxuDkxAnONAzTv5S9XZ5KbS5n4VrowO69Fkdoo1eEVv9YQQF.PyWTvI....2fc61zP6l4Y4z5Sl93Df2teZSGU28quEkSQNMM9kOz1pm75hUA5uipYKA.vICJ3D...faZXU3NW05Rl93Df2rO+WNfdnktUUnSyW9q2vn6nlwU2a4vtMKJx..Z9i4NJ...faZXUnONs1TNtbVpAeoU.uPuw2saMuue2UZ764h5tlvX5nEDQ..9VZxTvo8kYJZi6YkZaGbc5vYsOkeIzyD..ZtJX+BQsIhNp91tgoA24yPcLxdX0gDfjj5QzgpVEp+t5CL4TjSsi8ki5amC2hiL.bBFFF5k+7co26mS2z3NrK8WuxdqKbXs0hhL..eK1L7xu8pbjrSWeV7KVIru+mUGJ..vhLvNNJ8GGzMpVGdGr5PAPO56rU8sa9ntV9t9CcSS5r5jEFQ.3DJwYo5I+fjzxR3HlFOP+rqmcR8UiL1nrnHC.v2iWcObZqouV8Be6cRwl..7wkv99e5E916TaM80Z0gBPk6iSoPebBvaP9E5TOzRRrREapEA4PycpwQwl..Zj40Vvosl9Z0BVwiykNG..jjT9kjmVvJdbJ5DrbCsml6iSqaWYohKoTKJZ.fjTV4Vr9SKZSZk6vbAfaW3An4OsAp35VDVTjA.36xqrGNcjrSWKY0OqLj4O7VOZc+zni4RUOay.T3A2RY2F2BSA.ZtoTCmJ67OlR9vaRqXmeoR4HI554LToZIq9Y08eAuBWdcvxzk1DhhNh.zAxpHIIkeIkpst2bz.4KzBXINXlEp6dwaVobj7MMd2ZUPZ12XbJ5nBxhhL..eadkyvoOK9EaZlMY2lcc0C41zcctufFZWOK0hPZEEaB.nYJ61bnVDRqzP65Yo65beAc0C41jca+d5p7KIO8YwuXKLBAjFd2MOKmV+N4xpCvJj5gxS2x7iuREaJtNDll+zGDEaB.vB40Uvo8kYJUpmMM1AOccF89RsnHB..Voyn2WpF6fmtowRXe+OsuLSwhhH.ogVg93zuRebBnQ2l2c1ZZyKAWy1vS3z5YKzbtkAnHCyeKJx..fjWXAm13dVook6Qq6GEaB.vG2Yz6KU8n08yzXULeAPiogGi4BNswcmsJrXmVTz.364W1dl5O8ZaRGqfRLM9EDWqzKb88WAGHWMD..VMutBNssC7qlVdzwPwl..PkyGrsCtNKJR.jZWjApNGYftVtXmFZyoksEFQ.9N9tMbXcuuYhJuhM2uWG2HhVO9D6q72OutuhC.fOIut2M9vYmtok6YaFfEEI..vaREyGb3r1mEEI.kY38nB8woj4xpCng1Gtxz0i7AaWkTpgowm14zYceWdLxtcaVTjA.fJxqqfSkuYgKIEdvsrZVS..3Koh4CpX9BfFaCqGleM45R43VTj.3aXAecp5E9Jy8uOa1jd3+udpa776pEEU..n53mUG.0FtazA..IxG.uOCsB8woD1S1JuBJQgDjW+GuBnIEmkZnW3S1o93e8flF2eG1ze6p6iNmA0ZKJx..PMwqaFNA...zTPqhH.0iVGrqkcZHkPpzGm.7jJpjR0i91asREaJD+sqWdJ8mhMA.3EiBNA...TOM7dRebBngRtETht2EuY88aMCSiGUH9o4cKCPCuWz5M..7lQAm....pmpXeb5WSgBNA3IjQ1EoaeAaRqcWYYZ7Nzx.0Bm9fTe6T3VTjA..2EMY....f5ogFi4Y3zVROWkUdEqHBweKJh.Z5K8LJP20+byZ2YTfow6UaBVuzTiSsoEAZQQF..pKXFNA...TOEQH9q9ztPLMV7ojU0r1.n1ry8mqtk4EekJ1zP5R3ZdSePTrI.flPXFNAeBKbgKTu+6+9xvvvz394meJjPBQcsqcUW7Eew5rO6yVADP.0596htnKRokVZp6cu65q9puxsiia5ltIs5UuZ0l1zF8Ye1moVzhVTo04xu7KWIkTRpicri5q+5uV94m6+eSqteOqNyXFyPm+4e9t89u5TTQEom4YdF8FuwanRJoD8HOxinoMsocRueA.ZJ3T5QK01OXdtVd8obbM53ZUUtt4VPIJ4CjmFX2hnwJ7.ZxXiobb8.uYhJqBcZZ7yr2QpYcs8UA5O2sRA.ZJgBNAeBO7C+vJyLyrFWmW4UdEEYjQpW8UeUMwINwpc8b5zo9lu4ajjz1111pSwwxW9x0t28tkjTlYlYUVvoksrkohKtXs0stUUPAEnvBKL2d+6N+dVdibji7jtfSqd0qV27MeyZKaYKtFaG6XGmT6S.flRFZLsTu8pS20x+Z4Zb3ETjSkPpYoMj7w0ZS9XJwzyQmUeiRCra8yJBUfFMYmWIZeYjua2qkV4VNplwR2lJxo4SZ1kM31nYbU8VNbXqgHLA.PCHJ3D7IjSN435wmwYbFxgixNCYETPAJ8zSW6YO6QRkUDnIMoIojRJIMyYNSKIVOYT9eOOsS6zb86Y0YzidzmTGqYLiYn4N24pRKsz589A.notA28HjC6RN+s2JLoCkml+x1kRX2YqD1a1p3J7EniqKL6lPyeKeiGVK56SSKb5CRctMAWiq6Wt1Cpm5S1gpv+UQW2o2Ac6WR2kMaTrI.flhnfSvmyW+0eckl0PwGe75tu66V+3O9iRR5IexmTiabiSwFarVPD5Yr7ku75zript369tuSScpS00r0pm8rmJ1XiUe4W9kMHGO..uUNcZncc37UqBwecnbJ103u9J1W0tMw1Et6Zgl+9he8.Ji7JQ24h2rV3zGX016kdy+ydzqt7zpz328E1MMwyrSMzgI..Z.QSCGPRCZPCRKaYKSQGczRRp3hKVKbgKzhiJuWSYJSQ6d26VgDRHZVyZVZKaYKZTiZTVcXA.zfqzRMzN1WN589u6SOvh2hN++1OqoNu3MUroZhCaR8siMLmL..uE6H8bTh6OWIIk9wJT26h2hxNuRLsNFFF5e7EoTohM4vlzecr8hhMA.zL.yvIfeSvAGrN2y8b067Nuijj15V2pEGQdu7yO+zXG6X0K9hun5RW5hUGN..M3R8f4oE9uSUqaWYoiUPI09FTMhosgnfCjFeLZd6KW6gLsbRGJO8.KYKZ12TbJP+cHmNMzS8gIouL9CaZ8BvgM8zSru5L5eU2z8A.PSKLCm.JmQNxQ55wYjQFVXj3caaaaa5i9nOhhMA.eFcoMAqRMzIUwljjhqyb4zgl2JpjR02rwCUow2vtyVO5auMkaAknGZIaoREaJh.cn4L03nXS..MiPAm.Jm8sueumaDSLwXgQh2sfCtla9m..M2X2tM8XSrOJtSxKGt9QCCGMysxMezpsvr+TRYpq3YWqVwNNlowaaX9q4OsApA08Je26E..McQAm.9M4jSN58du2y0xm0YcVVWv.fZjQo1UVY0cqNLfOlfBvgd9ozO0oVV0M+X2Q+5L8uIz71WttCViO+wKvook6RTAoEbqCR8r8g1PFV..vBPAm.jzN24N0UdkWo10t1kjj5ae6qtwa7Fs3n5jyAO3A0ANvApxeNxQNhUGd.mT1ydOOkXJSTK5empLLLp8M.vCIpvCPu3Mze0hfp68goPCvg5VaCoAHp.7NbvLKT+ujOVsuh+lXaenZASefpCQETCXTA..qBMMb3y4du26U96u+Rpr9zzN24NU7wGuJt3xtCC0+92esrksL4meMs+uG01kDX7wGuF3.GXiTz.34b3CNTkdFCWRRu1OtWk5gxWO536sBJ.ZDynwQWaaH5Yu19o+zquYUrS2ufmw0ovjc61Z.iL.q0xV2ATc4b.bYCOZEU3AzvEP..vR0z9aTCTOrnEsnpb710t1o669tOcq25spvBq4+k7vwO9ws5P.nNqjhCV65.msow9tDOpRe9InmaJ8SsoE0+K0If5hgzyVnG8J6k9qeXRt81z+NQCCGMeYXXnuZ8UtYgWS96eYxpcsH.ZT3..MSQAmfOmdzidH61sqidzipLyLSWiWbwEqtzktzroXSu9q+5Jv.q5u7se94mNsS6zZjiHfSd94e9pe8boZ665pTwN+8+uZh6OWM0WMd8bSNV0W9R8nQxeXnsU6OiBz799c6Vqe+6Bu1DMes9jOt1SlEVm1FmFRyXoaSyYpwQCCG.nYHJ3D74De7w6pnR6cu6UO9i+350dsWSYjQFZRSZRJrvBSWxkbIVbTdx6ptpqpYSwy.JuvBKcMv97FJojuJkcgQ6Z7ClcQ5VVvlzie08Vm8.asEFgvWx0edcQ6OyBzm5FyriX6LEbBMe8U+ZM2rvqNE4zP2+RRTyeZCjFGN.PyLzzvgOsN0oNoEsnEoG7AePIIUZokpoO8oq7xKupcarY626+FFFFpjRp5a8uUkRKsTWO1gC52L.0W9GPVJ1d+15r6aTlFuvRJUO7R2ld8uKMKJxfunG3JiQmVOq4YmQGZQ.pUQPupAMOkS9knku45+MjjrJzot6EuYkdFE3AiJ..X0nfS.R5IdhmP8pW8RRkMqm9m+y+Y0tt1saWQG8uOqJRKM26K1VbwEqCbfCHIofBJH0wN1wShHF.1cTjdpqKVc8itx+eo4+86QO16tMUTwkVEaIfmkeNrqm5ZiU8tFtCzEGytIzL12swCqhpCMP+pxgxoXc2+yMqLxtHOTTA..qFEbBPR96u+5du2600xyd1ytFuUq2u90OWOdm6bmt0wH0TS00rgpO8oOxtc9ue.mrra2lt0Kt6ZlisWxeGlu6e80a5H51VPB5nYwWdAM7BMH+zKb88WsML+qxmu+cNhF4HBnwyWTOub5NgP72tN69FktlwzIOTDA..uA7MdA9MSdxSVQDQYegfjSNYs7ku7pcciM1Xc83u8a+V2Z++i+3O55wkufU.3j2EO71o4N0AnHCwbqIbS6KGM04tQsizywhhL3KocQFndwqu+JD+q7GupeLCmPyTIu+b0lqGuGauaaHZJmQG07to3z29WOM8LSoe5ONhnUTgykdJ.PyETvIfeSHgDhlzjljqkm+7me0ttk+N71blybTxImbMtuyImbzLm4Lcs7e3O7GNIhT.TUFX2iPK91Gr5UaB1z36+3EoaY9InUr4iZQQF7kzqNFldpI0WU9IbmC6R8oSzLjQySe0ZcuY2TXA3PmW+Zk9KWQL5KdnSQu08LTcaWR20P6YKk+9wWIA.n4Hd2cfx4ltoax0i+7O+y09129px0aRSZRZjibjRRpnhJRW4UdkZSaZSU45t+8ueMtwMNs+8ueIIM5QOZM4IOYObjC.IoNDUPZA21fzX5UjlFOuhKU2+6rU8V+vdsnHC9RFYeiRO3k0SWK2m1EpBzetQQfleJtjR0Wswp+NzXrQGptwwzIsfad.5a+qmldxqKVcYmZzpssLvFwnD..VE+p8UAv2wvF1vzfG7f0F23FkSmN0q8ZuloYlzIX2tcsnEsHMzgNTUTQEoDRHAM7gObcMWy0nAO3Aqd1ydp8t28pDSLQ8Vu0aoLyLSIIEP.AnErfEX5NcWM4Vu0aU96eU2OPjJq3U2vMbCU4yMqYMKEP.07zR+BuvKTm9oe5tUrTdqXEqPwGe7lFa0qd0td7F1vFzblybbsre94mtwa7Fq03AvSHzf7SOy02OM2ubW5sWc5ldt47sopzNTt5AGauT.bF0QCnKejsWomQ9ZIqLcEWW3xoCMOsxDyPGK+e+t0aKBxgFYLsTinOQoSs2QpVyclQ..eZ1LpoNirE3td+K1zxyd7KyhhDzbR.ADfJt3hkjT1YmsBKrvp108Ue0WU2wcbGRRpyctyJszRqZKPzxV1xzse62tRM0Tq0Xn+8u+ZAKXA0ZAdBN3fUAE3d2VfG5PGpV25VW8ZakjF+3Gudu268b60+DFxPFh13F2XcZa99u+604bNmSc9XATd00bDe9ZNfd1OKYURolS0MjtDtd5qqeJxpoAOCIY3T53aPJmMJkWRR4tCoB1sTo4J4LeoRJTRbW.rFYHMqM7mznZ8unysKqwpiF.znvtjeAJ4HXI6gIETmkBsWRgzaovFrTKFhjMlwi.v2.mdW3SnksrkRRJzPCsFmwPRRWy0bMp0st0RRZe6aeJszRqZW2K9huXkXhIpG4QdD00t10JUXJ+82e0291W8zO8SqMrgM3VylnIMoI41y.pt0stUu2VIotzkt31qa40oNU2tKx3me9oniN550wB3jw+2oFs9G2X+UKCx7D5cC6NacSu5FUJGHWKJx7RU3Ak18bj13UJ8e6tz5uXoj9yR68MjxbUR4uGoByPpj7EEaxMXS5uLnWUmV6RvpiD.znozxdOxByPJ+cW16ct22nr2Kc8WbYu25Fuxxdu1BO4t69A.3siY3D7ITbwEqLxHCEYjQ5VWVWEWbw5nG8nJ7vCWgFp62nWyKu7z1291092+9UO5QOTLwDi7yOtxUA7Tpu4H16QyW2+qmn10Qy2z3gFfC8jSnOZjwFkGKFaxwnDoC9wR6+skxbMhBIA.zXwtTjmpT6uVo1ckR13yLBflWnfS..nIiSlbD4jeI5Qemsp+WxG2z31rIc2WX20DFSG8HwXSFkVnz9dCocOaoBOhUGM..91Br0Rc4tj530KYmlpN.ZdfxbzSL9L...B.IQTPToC..eBgEre5Etg3zr+xj06+yGv03FFRuzWuKk5gxU2+UDi7ygOvUad5KUJkYJUzwp40y+vkZwoJEVbk0+QBtWRADkjivK643rwC.XlQIREmsjyrkJJCo72QY8Aub1rzwWSYOWUoviHsiGUJs+tTOdboNLwF23F.nA.eRQ..3yvgCa5d+iwnt21P0y+kIKmk6pG6SV2gzdOZA5ot1XUDg1LsYhm61j11cUVy.u5DR2khdBRs9BjBq+MdwF.PyA17SJfHkTjRA2EoVLXyOeNaQ5HeqzAVpTdoV4suniU16Su+2PpuyVJz91HDz..ML75OMtkZ3zpCA..3EvSlO3JFY60rmRbJh.MemBZsolkl5biWodn77XGKuF6YARq4bp5hMYyOoNLAoS46kNseQpa2CEaB.ngPX8ur2i8zVSYumaGlPUOaQO9FJ68r2yBZ7iQ..ODutBNEregXZ4ryuVlt+..vmPEyGTw7E0UmRuao9m29fTWiJHSiu6LJP27biW+x1y7jZ+60njrjRXRkcoZXTh4myleRc55kF05k56qHE9.rjPD.vmT3Cnr26cTqur2KthEdxnjxdu6DlTYuWN.PSLdcEbpMg2ASKm7g2jEEI..vaREyGzlHN4ax2coMgnW61GjNktGgowypPm5dVxVzGspzOoOFVpBRW5WOWoi7cU94Z4HjFwJj58yIEXzM9wF..JSfQW16EOhUT16MWQG46J68xKnIdNI.3ywqqfS8M5gaZ4UryuzhhD..3Moh4C5a6FlGY+FQH9qWdpwowN71YZbmFRO+WlhdgOYmxoSupanqtmbSRZcmmTdoYdbGAIE6qHMzuPJjdZMwF..prP5YYu2bruRYuWc4kWZk8d54lj0Da..0CdcEbZvc9LLsbJGIQsxjnnS..9xVYReoR4HIZZrJlu3jgeNrqGbr8R22kzC4vl4m6CWyAz895aVYmWIU8F6MJ2jjV+EU1c8nxKzdJcJ+fT6mf0DW..n109IT16UGZENo.EdjxducJ5D.ZhvqqfScLxdnA1wQZZr+0FmOEcB.vG0JS5K0+Ziy2zXCriiRcLxd3wOVi6L5f96SteJr.L2Lw+4jOtto4tQsmijuG+X5wUP5Ra7xq7sd6VcVk8EXXVMA.38Kje6DDD0YZd7hytr2imKuN.zDfMCCCutqSfijc55E916T4Wh46RP8n08SiNlKU8rMCPgGbKkcaNpl8...ZppTCmJ67OlR9vaRqXmUdlMEregn6+BdE05Jzy+7j10AySOvR1h1SlEZZ7VDjC8zWSrZXwzxFri8IkRxpr97QEuL5hdrRwNGIxaB.zzhgSosdGRG3eYd7P5pzv+dI+hnp2N..u.dkEbRRZqouVsfU73xPkZ0gB..7RXS10zF8LUrc3TZvOVGOmh0Ld6D05Ry7LExgcoG5+KF8GGgWXi1NgIU4FDdziUpeyyZhG..3Yj3sV4hN05ySZfuq0DO..tAGO1i8XOlUGDUk1DdGUWipWZKo++yd22wGUk46ww+NkLom.g.IBRBDZAPoi.JrWEUjhdcWWrEwxZYWz01pqEVKrnh86thtnRQcsCqttx8pfcEEEQDg.Ruk.DHABIDRH8Yl6eLxPlTmjbRNyj748qW7x44T+cxKy7j467bdN+fpzUElc4...SV31iPW2YbesJgMIIElCaZBCoK5vETl15ANl2k61sz2rk7TQGqRcZ8sCxpEK0yQoUzdmmz9dIeWVmNSoS4kkrDvcGzC.fFi3mjzQ+QoRpxHXs3c4YDNE6Hp68C.vDEvNBmNtbKb+ZIo+xZ8Y8clco...Sxf51oqKbvWaK5sQW84sW99zb93LT06wbr8oC5gRKUEYX1Mk5xqisEoeX7RtqxDa9wmfvsFVcue..H3gqRkV8YIcrcdhkYwtzo8ERQlp4UW..0g.9.mNtrxeWZc6cEZK4rFcnilUMlem..PaGgaOB04X5lRMggqgz8w1hLAg2XshMdX8.Kdqp3J78V8tWcNb8zWy.UWiyDC1YMmmTAq8DssEFSP3..sEU7N8D5jyROwxhcnRC+iMuZB.nNDzD3D..fYaGG3X5td0Mp8WP49r7NDtc8DSq+ZHoDaqeQs+2VZK2luKq+OqmGq1..nsmCrHoMeq9trTmiTWubyod..pCD3D..PiPdEVtlwqsIst8UjOKODaVzLtvdqoLxDZ8JFWkI8cmpT4G4DKqCiRZX+esd0...Z88SWfzQV0IZ6nCRm9FjrFp4US..UCyhn...MBwEsC8b+9AooLn38Y4U3zsdn2a6ZtevtjKWsReWNY8O8MrIK1kR8YZcN2..v7j5y3487OtxOhm9D..BfPfS...MRNBwpdvKOUcSmSR0Xcu12teMiWaSpjxb5WGK2tcqm+CaBgT4tRo8LGeWV2lFyaS..sGDQu77d9U0dliuO7H..LYD3D..PSzUe1IomLsTU318s6zuZq4q+vymtxNuRqi87DVvGmod0Ure8caNuF2IOm2SprbOQaK1kR9NZbGC..D7J46v2Q4TY45ouA.f.DD3D..Pyv+0oFul2eXPJgnc3yx25AKVW6ymt94LNZctue7OcP8RKeeRRZwe69abm3C7F919jlpTnI13NF..H3UnI5489qpC7llSs..TKHvI..flo9cxQoW5ONXcJcMJeV9gOVE5lV3FzG+SGrF6yFy7nZ1u21819G1cAZmG3X92Irrbjx+G7cYc6FZz0M..BxU826O+U4oOB.f..D3D..fAnywFpd9oepZBmRm7Y4k4zsdv2YaZdKKCc7GLr4jeY5td8Mqxb5671z+5ayx+NY47NRx0IZGQOjh9TaFUO..BJE8o5oO.ub8K8Q..X9HvI...CRngXSOTZop+v36dMV2K+06S22quYkWgkq65U2nN7wpnFayRW2gT9EUykWC48E91NwKuoVx..HXWhWlusqdeD..lDKtO9W2J...LLe1ZOjl0+dap7pMJlB0tUUVktpi8R5lNmjzUe107oemWtcJ808TxYUlPxOsuTJpA1bKY..DLpnMJ8Cm0IZaKLoe0tkrXy7pI..wHbB..nEw4LzNq486Gj5bTg3yxquvljj92qJaUoy5YaJXs9F1THQSXS..smE0.8zWvw4rTO8U..XxHvI..fVHCHon0KcSCQ8OwH868ImBKWe05ObcuAEsNeaG6o0DqN..zlQ06Kn58U..XBHvI..fVPIzwP0zOudzn1m2t9l7vKda91NpSowWT..nskHq1Hcs58U..XBHvI..fVP6OuR0e8c1ZiZe94rJRaLyiV6q7Xa221Qz2lXkA.f1Lhre91t58U..XBHvI..fVHGqzJ0e9etQkewU1n22E+s6u1WQo6w21g2mlPkA.f1TpdeAktWyoN..pBBbB..nEfSWt0C9VaQ67Pkzj1+Oai4pCdjxp4JbcLea6HtlzwG..sgT89BbUj4TG..UAANA..zBXtevt0J19QZx6uSWR+mUdfZYEUK.KaQWysA..suT89BpdeE..l.BbB..vf8+tpr0atx53VhqQ389grUYU3z2EVY0F0SgPfS..s6U89BpdeE..l.BbB..v.4zoas+CWhN0tEkr0L6k8HkVo930dnpsTW91zh8l2IA..A+pQeAtp0MC.n0D+Up...FHa1rnoO4dJIoRJyo13dJTqOiBz5x3nZ86oPURkMtODv+ZEYo+6SKwVhRE....nECANA..zBI7PsoQzmNnQzmNHIOi9oss+hT569nZc6t.s1LOpNRI0+SvtsenRzOt8i38X.....DLf.m...ZkXylE0+tGs5e2iVW1upaxsa2JyCVhVeFGUou6BzOk4Q09qkmLc+quMKBbB....AUHvI...ShEKVTORHB0iDhP+2ixysMWN4Wl1PFGUomYAZc69nZaGrXs7slu1atkntGe3lbEC....3eHvI..f.HIzwPUBcry5bFZmkjzQKtBsgLJTETTED3D....BZPfS...AvhIhPzYLf3L6x.....nQoY9.aF........vWD3D........LTD3D........LTD3D........LTD3D........LTD3D........LTD3D........LTD3D........LTD3D........LTD3D........LTD3D........LTD3D........LTD3D........LT1M6Bno5PElkVcFeg1dNqSYW39TIkWjbK2lcYA..CjEYQg6HJkXzmr5SBCQirGiWcN5tY1kE.....Z.Vb61cPUJMGsj7zGt9WSqJiOStkKytb..PqHKxpFUONGMkAcUJlviyrKGywWzEeaO9CZN0A..BrP+C.H.SP0HbJyCuE8Rq3QTAklmYWJ..vD3Vtz2mwmnMm8Opqar2uRtSoZ1kD.....pEAMygSYd3snm8KtGBaB..pfRySO6WbOJyCuEytT.....PsHnXDNczRxSK7adXUoqJ7Y4cM1j0upOWn5WBCQwFQ7xl0fhKG..3mb5pRUPw4psly5zx296qCTvd7ttJcUgdoU7H5OOgms86sWG....P.pfhDZ9v0+Z5nkkuOKaRCHMMgSIMY0RPyfzB..MR1rZWwEUhZLQMQMpTlf9je9szx1za4c8ETpm40uKeT2tIVk.....n5B3Sq4PElkVUFelOKaRCHMMwScZD1D.P6HVsXUS7Tmllz.RymkupL9LcnByxjpJ.....TaB3SrY0Y7E97znqqwlrlvojV8rG..nsrIbJooSJ1j711sboUmwWXhUD.....pt.9.m1dNqym1+p9bgLxl..ZGypEq5+pO+ZeVV06q......lq.9jaxtv84S69kvPLoJA..AJ5a05Kn58U......yU.efSkTdQ9zN1Hh2jpD..DnnCUqufp2WA.....LWA7AN4Vt8osMqAEOX8..PKnp2WP06q......lq.9.m........PvEBbB........FJBbB........FJBbB........FJBbB.FthJhmXX.0mxpvoYWB.....sn3Q9FZWZ9ye9ZwKdwxsaeexVY2tcEQDQnjSNYM4IOYcVm0YIGNbTuGqIMoIoLyLS0yd1S8ge3G520v0e8WuV4JWo5bm6rVxRVhhM1Xqw17q+0+ZssssM0st0MsrksLY2t++qr000XcYFyXF5bO2y0uO9U0V25V0q8ZulV5RWp1111lJt3hUrwFq5e+6uF0nFkt+6+9U7wGeCef.Zm3k9jLUtEVg98SHYkXbgY1kC....fgyha+8SiZRtsEOYeZOmKcolTkf1RhKt3T94meCtccricTyctyUW9ke4055c5zo2PfrXwhb4xkeWCImbxZO6YORRZ26d2pG8nG0Xab3vgpnhJjjTgEVnhJpn76iu+dMdb+k+xeQyd1y1u2dIOijoa4VtE8Zu1qUuW6wEWb5EdgWPWxkbIMpiOP8IXt+gm9+rC8N+P1JTaVzkMltpqZ7cWQEteFn7WzEeaO9CZ7EH..B9P+C.H.CivIztTUukuF6XGqrYyljjJszR092+90d26dkjT94muRKszz1111zLm4LMkZsoppWiidzi160XcYbiabM5ywS+zOs9m+y+o218u+8WolZpxpUqZMqYMJiLxPRR4kWd5ptpqRCdvCV8qe8qQed.Zqozx8bK0UlS25UWQVZI+XN55N6jzuYzIpPryc6N....B9QfSncuksrkUiQNT5omtt8a+10W8Uekjjl8rmstjK4RT+6e+MgJr46S+zOsQM5n7WGOTqq3JtBcu268pS4TNEuqykKW5odpmR268duRRprxJS25sdq5i+3O1vqCffMkVguiHviTZk5+4C2k9WeWV5lNudpwOXtETA...PvM9ZTApECdvCVKcoKUIlXhRRphJpPye9y2jqp.OW4UdkZkqbk5Mdi2vmvljjrZ0ptm64dzTm5T8trUrhUzntsCAZqprxq8eOXu4Wllwh1h98yccZ869nsxUE....fwg.m.pCgGd35rO6y1a6Mu4MahUSfoAO3AqQO5QWuaykdoWp2WWbwEqcsqc0RWV.A7Jox5+oTW56qHcCye8ZFu1lzdNTwsRUE....fwgaoNf5wXFyXza9luoj7LODgFuS9jOYeZGf+bJ.Ag9w0e6RxlN+crJEVHVUDgXSg4vpBMDaJ7PrpPcXUgEhUElCaJL6+x+0gMEVHVUndWlmsOTGVU3NrpvBwlBMDOKOrPrIGgXre+LkVGivop6K1bdZ4aMO8aGYh52c1Io3ht9epYB....Dnf.m.pGYkUVdecu6cuMwJI30gNzg7ocBIjfIUInsJmNCUtsXSGpnJZwNGVrHEtcOAWEgCOgQE9uDrUXgb7+8KAVUk.u7Fr0ur9vb3IDqBJoR++5ykz+ZUYqObsGRW8upaZZNsIa1q+QHE....fYi.m.pCEUTQZQKZQdaelm4YZdESPru4a9Fuut+8u+JlXhwDqFzVia2VkaK0+SfQi47HUbEtTwU3R4Ur+GVjQ5Xk6TO+msG891edcSo7J5bS56krXJkB....PCh.m.pE6XG6P2zMcSZ26d2RRJ0TSUW60dslbU0zkSN438IJW0Y2tcEe7sLOQrb4xkV7hWr21okVZsHmGz9kKmgX1kPqt8WYm08us6Vu8d2ktk9NOMTytf.....pED3DZ26Nti6PgDhmOzZd4km1wN1gRO8zUEU341yYfCbfZoKcoxt8f2ecogtc.SO8z0fFzfL7y6BW3B0d1ydjjTDQDgt5q9pM7yAZeyl8xznF7iKWNCQ+0KXwprJbpxpvkJtbWprxcpxJ2kJsBWpzeY4kVtKUZEUpRK2kJqBmpjJb4caJoJaSIk6YckVgSUZEtTYNC7l6w1XIonom9SnoEwtzs7emhYWN.....9H38SPCXPVvBVPst7DRHAcm24cpa7FuQEUTQ0JWUstJnfBL7iYt4lqlwLlg21Oxi7Hp6cu6F94AvhEWxl8xT7wzxMgZ6zkaUdEdBhprJ7DPUYkeh.qJqBmpjxcoxp7WVd4N+kPsNQnUkVtSUVkdNFqIyBa10z3hYMJsd7NZnWv2zvaL....PqLBbBs6kRJoHqVspCe3Cq7yOeuKuhJpPIkTRsIBa5UdkWQgFZn055ra2tF8nGsgd9b4xkt9q+589j86zNsSS21scaF54.n0jMqVT3gZSgGZye9hphJcow9.eWSZesa0htf39XcYo7uUOh8WlP9svD4D....B7PfSncuzSOcugJsu8sOMqYMKsvEtPkWd4ozRKMEUTQooLkoXxUYyyTm5TaUCNaFyXFZIKYIRRJ93iWu4a9lxpUi8wJOPvpxpvUidehITa52LxD0TOitpt7S+lVfpB....vXQfS.UwIexmrVvBVfhKt3zS9jOob4xkl9zmt15V2phHhHpw1aoJir.2tcqJqrR+dtdxkqS7gNsYqk+orUqkW9keY8jO4SJIovCOb8+8+8+0fygT.smTR4N86ssqw5PW9YzMc9iLAEQXzkM....BdvPN.nV7HOxin9zm9HIOi5oW5kdoZc6rZ0pRLwD81NyLyzuN9UTQEJ6ryVRRgEVXpacqaMyJNvvRW5R0zm9zkjme171u8aa32td.A6J0OFgSCrqQpG8R6md26Zj5RFW2HrI....Dzg.m.pEgDRH5Nti6va64Lm4H2tq8mRUCX.Cv6q2wN1gec7yHiLTkUVojj5W+5Waha2rku7kqoN0o58o62+3e7OzEdgWnIWU.Adpuaot+q90Q8h2vopW9VFpN6gzYYyFyOS....H3Tv+mxEnExUcUWkhIlXjjzN24N0m9oeZstc8u+826q+jO4S7qi8W8Uek2WW0.qBVs5UuZcAWvEnRJoDII8XO1ioa7FuQStp.BLUV0tk5bXyh9siHA8u9SCSO40LPMzTh0jpLf.GkUVYxoS++1OssthKtXueQU...AKXL5CTGhHhHTZokldwW7EkjzK9hunlvDlPM1tQO5Qq4N24JIOipma5ltI0qd0q573VTQEoYNyY5s84cdmmAW4st94e9m0Dm3DUgE54w798e+2ut268dM4pBHvUIk6YDN0wHrqKdTmj9Mi4jTbQ6vjqJzVw7m+70hW7hqyQka0MiYLCctm645yxd8W+00q9pupb61s5d26tl4Lmo5YO6YCdrVvBVfd4W9kUTQEkdsW60zIcRmjeW2e4W9kZIKYI5y+7OW6cu6UETPAxpUqJ93iW8rm8Tm0YcV5BtfKPm9oe504w327a9MZaaaapqcsqZYKaY05bpXK80lQ7yeIOAt8BuvKn268dOs8suckc1YKKVrnt28tqy7LOSc0W8UqwO9w6WmC...yhE29aOhljaawS1m1y4RWpIUInsDGNb38V+pvBKrNeBtsl0rFMhQLBI4Yh8NyLyrFy2Rtb4RicriUqbkqTRRCZPCRuwa7F5TO0SsFGuCbfCnq65tNsrksLIIMtwMNs7kubel7waJ0oQuu9qcsqcowN1wpCbfCHIo63NtC8+7+7+X3mGfZSvZ+CaYuEpsjUQZRCuKJzPZBOv.9ht3a6wePiovPaBwEWbJ+7y2u29+xe4unYO6Y6yx5RW5hNzgNj218qe8Sqe8qWNbT+AilVZoo29seaIIspUsJcZm1o0fm+CdvCpoO8oq+y+4+3W06HG4H0y+7Ou29lqJ+oeuV5qMi3m+e8W+0ZZSaZZu6cu069dkW4UpW60dM+9bg1An+A.DfgQ3DP8X3Ce3ZHCYHZcqacxoSmZgKbg9L5jj7L4XufEr.MrgMLUd4kq0u90qQLhQnq3JtBMjgLD0qd0Ksu8sOsoMsI85u9q68OD0gCGZdyad0YXSU2Mdi2nBIjPpy0OtwMN869c+tZccO7C+vM3eL8Dm3D0YbFmgeUKG2UdkWo2vlhM1XUkUVot8a+1q28IhHhPyblyTgFZnMpyEPaEo18nUpcOZytLPaTEUTQde8nG8navmBpiabiqFK6HG4H9zdqacq5u+2+65dtm6wXJxew67Nuitoa5lTt4lq2kEZngpAMnAogMrgIWtboLyLSs8sucs6cuaI44V39bNmyQG7fGrA6Wq1zRes0b+4+9129zTm5T8FJVhIlnN+y+7UJojhNzgNjV+5Wu9xu7KkKWtzRVxRLjZF..nkBANAz.t9q+50Mey2rjjdoW5kzC9fOXMBIZfCbf5+7e9O5O9G+iJiLxPkWd45UdkWoNOlCbfCTyadyym4+oZiMa179s09FuwaTuaa5omtOANU088Iexmrd2WIosu8s2nCb5G9gev6qKnfBzy9rOqeseW3EdgZTiZTMpyE..Zb9zO8SaVit0nhJJuAn7XO1ioq65tNEe7waH01S+zOstq65t71NkTRQKbgKTicrisV+xU9we7G0BVvBzq7JuhJnfBT94muRHgDZxm+Vxqsiqo7y++ze5O4MroILgIn28ceWEcz9FP8d1ydzrm8r0xW9xMrZE..nk.SZ3ncoNzgNHIoHiLx5cTCIIcEWwU38OBMqrxRYlYl051M4IOYsoMsIce228ojSN4ZDJUHgDhRM0T0i8XOlV6ZWqeEtSZokleOBn5QO5QSdekjRJoj76s83F1vFVideBKrvTW6ZWaz6G..Zc08t2cMkoLEI44KU3gdnGxPNtYjQF9LZg+s+1eq9oe5mzYcVmUc1m7HFwHz7l27zO+y+rt669tUW5RWp0sye0Rcs0b8Mey2380ye9yuFgMI4o+54Mu4oMu4M2ZVZ...MZD3DZWJqrxRYmc1Ju7xqAu0t5PG5f1+92uNvANfN5QOZMB1opBO7v0i7HOhxHiLTQEUj9oe5mzG9gen17l2rJt3h0l27l08du2aCFx0w8RuzKIWtbI2tc2f+6e+u+2M480sa290nfp5V0pVkee7O9+JojRT26d2azmK..z5phJpvmfgdwW7E01291a1G2a4VtEUbwEKIoIMoIo28ceWEar92Smw9129pm3IdhF0WnRsok5Zq4Xe6aeJmbxQRRwDSLJ4jStd29l6OC...ZoQfSncoPBIDkPBI32y+CgDRHJwDSTQFYj984HhHhPCcnCUSdxSVolZp05SKG..f.UUVYkZjibj5htnKRRdBoo49TH88e+2WevG7ARxys98S8TOUytNaJZIt1ZthHhH795idzi5cdqB..HXEANA...fZvkKWRR5QezG06WZx68dum91u8aaxGy4N24580W60dsZfCbfMuhrIpk3Zq4Jt3hymQ.7i+3OtoUK...FABbB....0fa2tkjT+5W+zMbC2f2k+m+y+Y+deqpRKsTshUrBusu7K+xMfprownu1LJGeDWI4YNb5FtgaPG8nGsE67A..zRh.m....ZCJmbxQYmc105+xM2bav8upAq7W+q+UuSf0e+2+85cdm2oQWOaXCaPkVZoda2u90uF8wvnXzWa0llxO+m8rms5Uu5k21KbgKT8oO8QO2y8bdm2q...BVDvOoxXQVjach+n.mtpT1rFvW1..nEjSWU5SaKhIOWfpq28t2065SO8z0fFzf7qiUW5RWz8du2qtu669jjzLlwLzEdgWneOWHJIcvCdPuuN5nitNehk9Ye1moMrgMTmGmgLjgny5rNK+971PLhqsZSS4m+QFYj5y+7OWWzEcQ5m9oeRRd941sdq2pdnG5gzcdm2ot0a8V8Y9dB..HPU.exMg6HJUb4E5scAEmqhKpDMwJB..lsiTruiNfvcDkIUI.AuJnfBZTa+e5O8mzK7Buf1291m14N2od9m+40se62teu+G9vG16qqum3q20ccWZcqac045c3vgJpnh76m3q9il60VSQc8y+jSNY8se62pG6wdL829a+MUTQEIIobyMWMiYLC8LOyynErfEnK3BtfVz5C..n4JfOvoDi9j0tN7l81dq4rNMlnlnIVQ..vrssb78CilXzmrIUI.AtdkW4UTngFZstN61sqQO5Q2nNdgGd3Z1yd15pu5qVRRO7C+v5ZaPa0KA..f.PRDEDUtlqQcnCcvu1+N0oN480G3.GnN2tTRIk5MvoxKubURIkXnAN0bu1pMMme9GVXgoYMqYoa9luY829a+M8BuvK3MfpbxIGcgW3EpYMqYoG3Adflb8A..zRKfOvo9jvP7Ivoud6KQiJkIHqVX5mB.n8HWtcoku822mk0mDFhIUM.Atl5TmphJJicz+MsoMM8LOyyn0t10p7xKOM6YOa8TO0S4W6a+6e+895byMWc3CeXeBg53dm24cT4kWdMVdG6XG8YNfxn0bt1pMFwO+6bm6rdrG6wzLlwLzi9nOpdlm4YTYkUlb61sl4LmoFyXFiNmy4bZVmC..fVJA7o1LxdLdYoJk49KHS8I+7aYhUD..LSexO+V5.ErGussHqZj8X7lXEAz9gUqV8IDlm64dNs28tWIIYwR8OWp0idzCEd3g6s8l27lq0sypUqJrvBqF+qkVy4ZqkVLwDid7G+w029seqhM1XkjmI9767NuSSst...pOA7AN04n6lFUO78atYYa5szGsg2Ptb6xjpJ..zZykaW5i1vanksIe+RGFUONG04n6lIUU.s+b1m8YqIO4IKIoxJqLMyYNSI0vgxX0pU0291WusW0pVUKWQ1D0Tu1ZsL7gObMu4MOus23F2nJojRLwJB..ntEvG3jjzTFzUoXBsi9rrkso2RO0G+G0J24Go7JJ6Z7DKB..A+b5pRkWQYqUtyORO4GeS0HroXCKNMkAcUlT0Az90S9jOorYyljjdsW60zV1xVjUqM7eV4HG4H895G+webke942hUiMUM0qsVKSbhSza84zoSs0stUSth...pcA7ygSRRwDdb55G2Cnm8KtGUoqJ7t78WPlZQ+3yZhUF..LK1sFhttwd+JlviyrKEf1cF3.Gnttq65z7m+7kSmN0C9fOneMeE8fO3Cp29seacricLkat4pG3Ad.8O9G+iVgJ1+0Tu1ZsX2tc41saI4YjWUeOw+...LSANecMMfj6Tp5VG+SnXCiOXA.P6cwFVb5VG+Snj6Tplco.zt0rl0r7FDy69tuq94e9mav8o6cu697jU6EewWTuxq7JsX0XSUS4Zq4pfBJPtb0vSWDe8W+0d2t9zm9zrdR5A..zRJnIvIIOgN8mmvypQ2iI3yDIN..ZevhrpQ2iIn+7DdVBaBvjkXhIp69tuaI4YBrd0qd0909cG2wc38IVmSmN00dsWq90+5esN3AOXctO6XG6PNc5r4Wz9ol50Vyw0bMWiFv.Ffd+2+8qyfm16d2q9C+g+f21SZRSpEut...Zpr393iI2fLGpvrzpy3Kz1yYcJ6B2mJo7hjaETdo..f5fEYQg6HJkXzmr5SBCQirGimIH7unK91d708GRGs+3vgCUQEdl9At669tkCGNp2sehSbh5LNiynVOFm7IexdeJsUWJt3hUe6aeUVYkkOK+6+9uWiZTipN2ust0spq7JuReBxIpnhRCaXCSCZPCRCdvCVRRYlYl5q+5uVe8W+0d2NKVrnhKt3Z7jqqpW6EVXg05sAWK80Vy4m+SdxSVKaYKSRRIkTRZpScppu8suJojRRG7fGTqd0qVu7K+xdmjvGzfFj99u+684I+GZmi9G.P.lf1.m...ZWhOPApGgGd3pzRK0u29K8RuTsnEsHeVViITFIoEsnEoK+xubeV1O7C+fOSP30FmNcpm5odJ8W+q+UUVYk4W0qEKVzsbK2hlyblSMVmQG3jTi+Zq47y+Eu3Eqq7JuRuWC0m90u9oO3C9.06d2a+9bg1An+A.Dfg6KM...f1HRKszjEKV76sOojRpFKK1Xi0m+aC4xtrKS228ceJjPBQRR8rm8TolZCeKuZylMcu268p0t10pq4ZtF00t10Zc6rZ0pF7fGrdfG3Az1111p0vljj24xnHhHBu0R00Res0b94+kdoWp94e9m0Mdi2Xc9yhTRIEsfEr.swMtQBaB..A7XDNA..DLguAazBq7xKWG4HGQwEWbxtc++AZrSmNUwEWrhJpnZTgtTUYlYlJmbxQ4latJjPBQcpScRolZpJhHhnA22JpnBkWd4oN1wNVm2Jal40Vi0N24NUVYkkNxQNhRJojTu6cuCndZ4g.Pz+..BvPfS...AS3CT..fZC8O.f.LbK0A........CEANA........CEANA........CEANA........CEANA........CEANA........CEANA........CEANA........CEANA........CEANA........CEANA........CEANA........CEANA........CEANA........CEANA........CEANA........CEANA........CEANA........CEANA........CEANA........CEANA........CEANA........CEANA........CEANA........CEANA........CEANA........CEANA........CEANA........CEANA........CEANA........Ckcyt....ZuXWYeL4xsTmi1ghMpPL6xA....nESPSfSYk+tz516JzVxYM5PGMKURkEa1kD..ZgDt8HTmioaJ0DFtFR2Gq5VGSwrKICw5y3n5wVxNkjTn1rnNGsC0kXbn3iwg5Rzgp3i0g5bLgpNEiie40NTXNrYxUM....PimE2tc61rKh5StEtesjzeYs9r9NytT..fIYPc6z0EN3qUwGcWM6RoYonRpTSZ1qRk6z+65MlPsoNGimvm5RLNTWOzynNGZtJ9vOrhOrCqXOmePwEsCYypkVvJG..A79ht3a6wePyoN..9EAzANs48uZ8pq7IXzLA..Et8HzUOl6Q8uqizrKklk+5asEsrMjqgc7hKB6Z9Sevp6cNbC6XB.ffPD3D.BvDvNogu48uZMuuYVD1D..jjTIUVrl22LKs48uZytTZVlzvSvvNVwX8XZNW6oPXS....HfS.4b3TtEte8pq7Ija4xmkmR7CPiq2mu5UmOUEc3cPVsv7ZA.PaMtb6TEVxQzNOzFz2riOP6J2M4cctkK8pq7IzedBOaP6sW2H6SGTBQ6P4TX4MqiSXVJSOyPte02tEbG.G....ZaJfbDNsjzeYeFYSVsXUW7PuIcam8Sqgk7YpXinSD1D.PaTVsXSwFQmzvR9L0sc1Ost3gdSxpkSzcUIUVrVR5urIVgMOVsZQSYncog2v5gMUod5S4gz.6TlFTUA....XrB3BbJq72UMlfv+sCY5Zr887MoJB..low12yW+1gLceV15y56TV4uKSphZ9l7HZN2Vct0ij5SpQl3lMr5A....vnEvE3z516J7ocJwO.BaB.nctw12yWoD+.7YYUu+hfE+7dJTK5a1mr0Denx8WR4enw28ezXKJ.....CV.2b3zVx12+H5w0aBaB..d5OnpymSaIm0nonqxDqH+2gJnL8Iq8P5CVSNZW4VRS93bCm0IqKz9WZfUF....PKi.t.mNTg62m18pympIUI..HPR06O3PGMKSpR7OkWoKshMlmV5ZxVe2NNhb5t4c7tjQknt9IzCouvPJO....fVTAbANU0IKbIonCuClTk..f.IUu+fp2eQfhsruB0G9i4nON8CoBJ0Y8tsVrH41OBhZxCJd8m9u6kAUg.....s7B3Bbp53oQG..jBr6OHuBKWe7OcH8gqIas8CU+2xb1sZQmYpcTSd3IJ61rna8etw5c6GWe5ftuKouxp0l3j9D....fIHfOvI..f.QUToK8caNO8gqIGshsmub5p9299eRQpye3InycvcVwFUHRRxkK2pqw5P6ufxq08YXIEsl8U1eY2V.2y3C....f5EANA..zHrsrJRe3OdP8QoePcjRprd213hvtl7f6hlzHSP89jhrFq2pUKZxCsKZge09pw5RMgHzScMCTgFRf6H6B....ntPfS...Mf7KpB8oq8f5CVSNZq4T+ycT1rJ8q5abZJCOAMl92wFbzIM4QjPMBbJo3BS+8q6TTTgS2z....H3D+kr...0hJc5Rqby4qObM4nuYa4qJcU+yt28qKQnyeDInyYHcVwEsC+97zsNEtFdxwn0j4QkjTBQ6Py45NkF0w.....HPCANA.CQQEUjhJpnL6x.nYamG3XZoqNGszzOnxq35+VlqCgaWSbvcQSYDcQ8saM8+++oL7DzZx7npCgYWOy0NP003BqIer.....BDPfSncg4O+4qEu3EK2U64Otc61UDQDgRN4j0jm7j0YcVmkb3ngGUASZRSRYlYlpm8rm5C+vOzuqiq+5udsxUtR04N2YsjkrDEarwVis4W+q+0ZaaaapacqaZYKaYxtc++WSqqqy5xLlwLz4dtmqee7qp0st0oW+0ec8QezGocu6cqRJoDEYjQp9zm9nQMpQoG7AeP00t10lzwFn01QOVE5SV2gzGrlbzlOvwp2s0lEow12NpoL7Dzo2+3TH1a9Sn2iePwq49wYnm7pFfRIwZNWOA....Drwha+8Sl1J41V7j8o8btzkZRUBZKIt3hS4me9M310wN1QM24NWc4W9kWmaiSmN8FBjEKVjKWMvilppH4jSV6YO6QRR6d26V8nG8nFaiCGNTEUTgjjJrvBaTiZH+85739K+k+hl8rmseu8RRG8nGU+9e+uWKdwKtd2tHiLRM24NWc0W8U2nN9.0GirOBmNcqueq4qktlr0x2Z9pBm0e2g8pygqKX3IpILzNqNEiwe6tcviTl5RGBsg2vunK91d7GzvqE..DDh9G.P.FFgSncghJpHuudricrxlMOO0mJszR092+90d26dkjT94muRKszz1111zLm4LMkZs4npWmidzi160YcYbiabM5ywy8bOm2vlhLxH0Dm3D0.G3.kc6105V25z6+9uub4xkN1wNll9zmtF8nGs5W+5Wi97.zRY24TrV5pyVe35NjN7wpnd21XCylNuA2YMkgmfRs6Q2hVW9UXS.....AIHvIztyxV1xpwnFJ8zSW29se65q9puRRRyd1yVWxkbIp+8u+lPEZL9zO8SaQlSkN5QOphHhHzLlwLzMey2r5PG5fOqekqbk5rO6yVkTRIpzRKUyZVyRu0a8VFdc.zXTXwUpOccGRe3ZxQ+79Kpd2VaVjN8d2AM4gmnF6.iSNLfaYNikUIUkQVo6JkrP24..sq4t5y4fAZ8cAf1i3uPEPRCdvCVKcoKUojRJJ6ryVUTQEZ9ye95u+2+6lcoEvY5Se551u8aWmzIcR055GyXFitsa61zi+3Otj7LWOAXFb5xs9gskuV5ZxQKey4oxZfaYtd1ov0ELhDzDFZmUmiM.dzFYOToJK4DsqnPIGcz7pG..X9pnPeaaO.teL.ztAANA7KBO7v0Ye1msdy27Mkjzl27lM4JJvTO6YOavsYbiabdCbZW6ZWszkDfOx7fEqk9i4nkstCobJr75caiITaZBCJdMoQjnNkjZYuk4LL1B22.mbVnjHvI.f10bVs.mrEt4TG..UAANATEiYLiwafS4kWdlb0D7pvBOwezScMRn.LRGqjJ0ml9gzRWSNJ88U+2xbVrHc58pCZxCKAMtSINEZH0+bcV.GqQJop79SkmmT3IYZkC..B.Td096VsxS7T.X9HvIfpHqrxx6q6cu6sIVIA291u8a895gLjgXhUBZKysaoUs070xVSN5y2zgU4MvsLWOhKLMkgmfNug1EkPGChuUCBKIoR16IZWx1khkeOC.ncsR1tusCiuHB.X9HvIfeQQEUjVzhVj21m4YdllWwDD6G9gePu3K9hdaeW20cYhUCZKprx5fx8PCQG7HmhVU5ard21HcXSm2fhWSZ3InA0iXZkpvVXQ1Go7OQntp3sYd0B..BLT89BhrOlSc..TED3Dfj1wN1gtoa5lzt28tkjTpolpt1q8ZM4pp4ImbxQEUTseqEY2tcEe7wanmuryNasvEtP8jO4SpJpvyiZ9YNyYpS+zOcC87.j2gGn1at0++e0n6UrZxCKA8ecJcRg4HH6VlqgDQe8scQ+r4TG..HvQ06Kn58U..XBHvIztycbG2gBIjPjjm4oocricnzSOcugjLvANPszktTY2dv8udzP2Rfomd5ZPCZPM4i+u+2+60xW9xka2tU1YmsOyaSiabiS25sdqZpScpM4iOPcoScZ8JiC9qjEYwmk28NFpN+gkfl3v5hRLtvLopqUPTU61mqfevbpC..D3n58ET89J..LAA2ehZflfErfETqKOgDRP24cdm5FuwaTQEUTsxUUquBJnfl09+ke4WpcricTik6vgCEczQqrxJKcricLEYjLoUBikiPKTwEQlJ+h6ghHDqZBmpmaYtA2yXjEKVZ3CPvtXGpjsvjbVpm1UTnTQaTJpAZt0E..LGEsQO8Ebb1BySeE..lLBbBs6jRJoHqVspCe3Cq7yOeuKuhJpPIkTRsYBa5UdkWQgFZsOwHa2tcM5QO5l0w+QezGUqd0qVRRG4HGQYjQFZiabiZ+6e+ZoKcoZoKco54dtmSu0a8V5zNsSqYct.pttlvJU7UrAsfq+QU3g1F6VlqgXwlTriPJuUbhkk6mPfS..sWk6m3a6XGgm9J..LYD3DZ2I8zS2anR6ae6SyZVyRKbgKT4kWdJszRSQEUTZJSYJlbU17M0oN0Vzvyt3K9h0EewWrOKqxJqTKZQKR268duJqrxR6bm6TSdxSVabiaTIjPBsX0BZ+I5X8Leq0tKroiKtw6afSYuHod7mLu5A..lmreaeaG23Mm5..nZrZ1E.fY5jO4SVKXAKP28ce2RRxkKWZ5Se5p3hKtN2mpdK631saUYkU52mOWtb4801r016CJa2tcMsoMMszktTugcc3CeXMiYLCStx.ZiIgKV9zEdw6VpvMXZkC..LIEtAohynJKv5uzGA.f4i.m.jzi7HOh5Se773ice6ae5kdoWpN2VqVspDSLQusyLyL8qyQEUTgxN6rkjTXgEl5V25VynhCrMnAMHckW4U5s8W8Uek4UL.sEEZBRcrZ2ppYU6yOc..nMrp+d+c7z7zGA.P..BbBPRgDRH5Nti6va64Lm4H2tcWma+.Fv.795Zahyt1jQFY3czP0u90OY0Za6e8ajibjdecFYjg2mBf.vfbRSy21G3ckJKayoV..Pquxx1y68WUUuuA..STa6OwKPivUcUWkhIlXjjzN24N0m9oeZcts8u+826q+jO4Spysqpp5n7opAV0V0QNxQ795jSNYERHgXhUCPaPIbQRgF+IZ6tRoL+alW8..fVWY9277d+GWnw6ouA.f.DD3DvuHhHhPokVZda+hu3KVmaaUeBu8O9G+Csycty58XWTQEoYNyY5s84cdmWynRCNT0f3F1vFlIVI.sQYwtTR2luKKq2Pp35+8i..Pa.EuSOumeUkzs4ouA.f.DD3DPUb8W+0680+u+u+uJqrxpV2tzRKMMlwLFIIUd4kqK5htHsgMT6SXuG3.GPWxkbI5.G3.RRZbiab5ptpqxfq7VG4latZjibj5Mey2zmI.8p64e9mWezG8Qda+a9M+lVixCn8mtcMRN5vIZ6tRosb6lV4..fVIa418czM4nCd5S..H.BQfCTECe3CWCYHCQqacqSNc5TKbgKzmQlzwY0pUsfEr.MrgMLUd4kq0u90qQLhQnq3JtBMjgLD0qd0Ksu8sOsoMsI85u9qq7yOeII4vgCMu4MOedR2Uetwa7Fq2aEswMtwoe2u62Uqq6ge3GVNb3ndO9SbhSTmwYbF9UsHIkSN4ne7G+QMsoMMcW20coK6xtLMhQLB0yd1S4zoSssssM8Vu0aoO+y+bu6ykbIWhl1zX9D.nEg0PkRYVRaoJizoirJoCrHoS5xLu5B..sbNvh77d8UUJyxSeB..APr3t9lYjMA21hmrOsmyktTSpRPaINb3v6jVcgEVnhJpnpysctyct5lu4aVRRcu6cWYlYl0Y.QKcoKU+w+3eTYjQFMXMLvANPMu4MuFLfmvCObUZok1fGOIO2pZqYMqoIsuRRW5kdoZQKZQ981WZokpTSMU+9Iy24cdmmV7hWrhM1X86yAP8g9HpCq47jJXsmnssvjF4WJEQuLuZB..Fuh2ozpOKImU4u2K1gJM7O17pI.f5.2RcncgNzAO2xIQFYjM3jW8UbEWghOdOSDuYkUV0a3JSdxSVaZSaR228ceJ4jStFASERHgnTSMU8XO1io0t105WilnzRKM+dDP0idzil79JIkTRI42aqjTXgEl1vF1fdlm4YzHG4HkMa1pw13vgCM5QOZ8IexmnO5i9HBaBn0Ppyw24sCmkJsgoI4x+CfF..A3b8Ku2dUCaxhcO8A..D.hQ3DZWnhJpP4kWdpicriM3sY1w29Ce3CqniNZEYjQ52mmhKtXs0stUcfCb.kRJond26dK61a6dmqdzidTsicrCcvCdPYylM06d2akTRIUqAQAXDnOh5wdmmz1e.eWVmNSoA81RV32IA.Bp41oT5WlTdK22k2mGVp6+Ayol..Z.sc+jv.UQHgDhRHgDZTaehIlXi97DQDQngNzgpgNzg1n22fQwDSL7DnCHPQ2+CR4ubob+rSrrC+URa9lkFvKXZkE..L.a9lqYXSweND1D.BnwsTG..PaEC3EkhHYeWV1+aoMcid91wA.PvE2N87d3Y+u8c4Qjrm2yG.H.FANA..zVg8XjFxRjBMdeWd1+aO2JFLmNA.D7vUoddu6pG1Tnw6485sGi4TW..9o.9.mbw2HK..D8G32BqqRC48kBIZeWddK2yS1nh2o4TW..v+c7mFcU+1nKjn87d7g0Uyot..ZDB3BbJb6Q3S6BK4HlTk..f.IUu+fp2eAphH6qzvVVMGoSG6W9.LGXQlScA.fF1AVjm2q9XU6KHHz387d6Q1Wyot..ZjB3BbpyQ6aZ867PavjpD..DHo58Gz4X5lIUIAIhruRC+yp4b5jyRk17sJ8SW.i1I.f.IEuSOu27luUOuWcUEQxddOcBaB.AQB3BbJ0DGgOs+lc7AlTk..f.IUu+fTSX3lTkDDIrtJMhO2ySxnp6HqRZUiSZa2sTYY25Wa..vixx1y6Eupw448lqt3OGOuWN2Fc.HHS.WfSCo6i0m16J2MoUrMBcB.n8rUrsOP6J2M4yxpd+EnNXOFoA8VR84gkrX2204tRo88Ok9tgIskaUpPFUw..sZJbCddu2uaXdduX2U565sX2y6cOn2hIHb.DTxha2tca1EQ08Rq3g05yZkdaa0hU8aGxz0X664ahUE..LCqXaef92q6EkK2t7trA0sSWW2XueSrpBRcrsHskaSpf0V2aSD8PJwKWJ9IHE0.a0JM.f1EJZiR49IRY+1REmQcucwNToTmiTjo1pUZ..Fs.x.mxsv8qm9StUURkE6yxSI9Anw06yW8pymphN7NHqVrYRUH..Zo3xsSUXIGQ67PaPeyNp4HaJb6Qn+7DdVEezbqEzjs+2VZWyTp7F3AyQHQKE6oIE4.khreRg2GIGwIYKZOqq5iXJ.f16bWoTEEJ4rPoxySpjsKcrsJcrMJUvO3Yc0GGcPJkYI00Ku0odA.ZAEPF3jjzl2+p079lYI2xUCuw..ncAKxp9Cialp+ccjlcoD7yUYRY8Ok1ybjJKWytZ..ZeKz3kR51j510HYMTytZ..LDArANI4IzoWckOQMFoS..n8mvsGgt5wbOD1jQyckR47dRG3MkxeUR7E8..zJwpTGGkzIcERIbQLpQAPaNAzANI441qaIo+xZ8Y8clco...Sxf51oqKbvWK2FcszJKGobdGo79BoB9wZ9X4FH.wn9z2qdW+pN2KpUpR.ZjrElTriPJtwKkvEKEZBlcEA.zhIfOvoiKq72kV2dWg1RNqQG5nYwndB.nMrvsGg5bLcSolvv0P59XU25XJlcI09iamdlbwKZcREuMoiscoR2qjqhjbVhTkkIFMTvrPfSHvkUI6gJYKbIqQIEV2khrORQzWonFhmICblGZAP6DAMANA....HIMpYrh5c8q5wFaqTk...f5hUyt.........PaKD3D........LTD3D........LTD3D........LTD3D........LTD3D........LTD3D........LTD3D........LTD3D........LTD3D........LTD3D........LTD3D........LTD3D........LTD3D........LTD3D........LTD3D........LTD3D........LTD3D........LTD3D........LTD3D........LTD3D........LTD3D........LTD3D........LTD3D........LTD3D........LTVb61saytH....P6G25B1f9wLJnIu+NcU+q2Vy3qTcD8HV8r2vo1zO....PRLBm....Pqrq9r5tb5RM4+0PZNG6q9r5dK+O....ZGf.m....Pqpg26NngmbLlcYTCCO4Xzv6cGL6x...nMABbB....s5ttyIIytDpg.wZB..HXEANA...fVcAZixIFcS...FKBbB....lh.oQTTfTs...zV.ANA....SQfxnbhQ2D..fwi.m....foIPXjEEHTC...s0PfS....vzX1ixIFcS...sLHvI....XpLyQXDitI..fVFD3D....LUl0nbhQ2D..PKGBbB....lNyXjFcsmMitI..fVJD3D....Lcs1ixogmbLZD8gQ2D..PKEBbB....ADZMGkSL5l...ZYQfS....HfPq0nbhQ2D..PKOBbB....ALZMFkSL5l...Z4QfS....HfQK8nbhQ2D..PqCBbB....ATZIGkSL5l...ZcPfS....HfRK0nbhQ2D..PqGBbB....AbZIFkSL5l...Z8PfS....HfiQOJmFdxQynaB..nUDANA...f.RF4nb5ZO6jMriE...ZXD3D....BHYTixIFcS...s9HvI....DvxHs.o4r...H.jDQAQEFkSL5l...Z8QfS....HfUycTNwnaB..vbPfS....HfVyYTNwnaB..vbPfS....HfVScTNwnaB..v7PfS....HfWSYTNwnaB..v7PfS....HfWicTNwnaB..vbQfS....HnPiYTNwnaB..vbQfS....Hnf+NJmXzMA..X9HvI....DzveFkSL5l...LeD3D....BZzPixIFcS...AFHvI....DTo9FkSL5l...BLPfS....HnRcMJmXzMA..D3f.m....PPmZaTNwnaB..HvAANA...ffNUeTNwnaB..HvBANA...ffRUcTNwnaB..Hvhcyt......ZJNwnbxMitI..f.LD3D....BZccmSRxsaytJ...P0Ywsa5hF........FGlCm........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m........fgh.m...P.shKtXMpQMJUPAEX1kB....7SD3D...BnYylMYwhEYylMytT....feh.m...P.sLxHCcjibDsm8rGytT....fextYW.....0mW+0ec00t1U8du26oALfAX1kCPyVwEWrV+5WuJszRq00mbxIqdzidHKVrXHmO2tc++yd24wGUk26Ov+bl8LYxdBwPHrDHrD1BKBIhrSP.QntTpEWpsRciZau1E606qdosps2VaqZsWWpsZs350VQAAEDjcHPHIDHKjUx9dlLYRxjYlybNme+AcleLLIgYBCP.+790Kd40yy4447bN4DKmu2uOeeP80WOJu7xCJima5zoCojRJHt3hKnNtDQDc8AAEEEkq1SBhHhHhH5qJJt3hQlYlIpu956y1epm5ovu3W7KfVsZCJWOIII77O+yiexO4mDTFO2hJpnvq9puJV25VWPcbIhH55CbI0QDQDQDQWAcwxbIUpB9+UzubLlxxxWVFWhHht9.WRcDQDQz0DTTTfc61QHgDxU6oBQWRTTTvC7.O.RIkT7IKlrXwBjjjfjjTPMCmhN5nwu+2+6QBIjfWs4xkKTXgEBiFMhTRIk.ZbapolfjjTPYNRDQz0eX.mHhHhngTbuZ+O+r.wkKW3S9jOA4kWd3AevGDiYLi4p0zinfhzSOcr5UuZeNtEKVvV1xVPvrpWnnnfPCMTjYlYhDSLQeZeu6cuHxHiDyXFyHfF2RJoDjat41uWSfKd1bEr6KQDQCcv.NQDQDQW0Y2tczSO8fBJn.bjibDL0oNUu9X7Se5Sim64dNTXgEhDRHArwMtwqhyVhtz0VasgZpoFnWudOGK7vCG1saOnFrI2jjjPUUUEznw6+5+gGd3vgCG8aAL+7Y0pUzau854eu+pAU..UVYkH2byEKXAKHflmszRKnpppB2zMcSHlXhIf5KQDQCsv.NQDQDQWUXwhEzd6sihJpHru8sOr+8ueb5SeZXznQ7jO4S5U.mxN6rQEUTAhJpnvoO8oQmc1IhHhHtJN6IZvSPP.Oyy7LXCaXCdc723MdC709Zesf90SiFMnwFaD268dudcbsZ0hbyMW+do68e8e8egW4UdEO+6CaXCC+o+zepOOWUpTgW60dM7M+ley.Ztpnnfa+1ucL+4O+.peDQDMzCC3DQDQDcEkrrLxImbvq7JuBNxQNBJqrxfrrL..F23FG13F2HdfG3A7b981auH6ryFKaYKCO3C9fnzRKEkWd4XVyZVWktCtxRRRBxxxAs54CMzvDlvDvDlvD7pnamXhIdYolHonn.CFLfErfEfPCMTOGWsZ0vnQi9cFUkZpohUtxU54eWkJU8aekkkQRIkjWmu+n2d6EIlXhd9uIPDQz0tX.mHhHhnqnb5zI1xV1Bdy27M853YlYlXSaZSXdyaddc7d6sWzZqshG3Ad.rrksLTUUUglat4qjS4qJ5t6tgISlPGczA5t6twnG8nuZOknfD850iG+webrhUrBeZqiN5.5zoKnVb70nQCF9vGNdu268P7wGuOsWQEU30R6q+7nO5ihG8QeTu52IO4I6yyUQQA21sca3Nti6HflqVsZEG4HGg69cDQz0AX.mHhHhnq3N+5HSBIj.9deuuGV25VGNzgNDxJqr7pXAawhEb1ydVbvCdPblybFrm8rGDe7wiRJoD+NyLTTTfhhRP+iXEDDfJUp7joGRRRAk5uirrLpu95QTQEE5pqtPO8zCRIkTBJi84+r8Rc7TTTPu81KjjjP3gG9kkZOzkSxxxPVV1m5ZzkSBBBnolZBM2by3Tm5T9bssZ0JJt3hQ80WePKq1b4xEJnfBPVYkEhKt37pMIIITVYkACFLf8u+8GP+Lr95qGszRKnlZpwq9IHHfFarQzPCMfpqtZ+dLEDDfYylQs0VKN1wNV.+NkrrLzoSGznQS.cMc3vAjkkGvL1xgCGPmNcPPP.OwS7D98bhHh9pLFvIhHhH5pp6+9ue7y9Y+Lzc2ciW3EdAb+2+8C0pU6ocUpTgHiLRjXhIhJpnBTbwEiQNxQB850CQQwK53WWc0g8rm8ft5pKby27MioN0o503OXIHHfd6sWje94ixKubDYjQhLxHCDczQGTFa2+SsZ054OWpK2JGNb.a1rA0pUC61siXhIl98Yg64v.8g6JJJn6t6FJJJHlXhAxxxWRAcxetlAKZ0pEYkUVnxJqD2y8bOvoSmW1ul.m6dTsZ0dBT4E972capUqNn7dJ.7Dr0955A.utdAxyd2i4E9to6wSPP.5zoCtb4xuFu95Yi+NejkkwG+weLxImbB3c2NIIIbu268hzRKs9bo74xkK75u9qiMrgM.SlLEPiMQD8UYLfSDQDQzUUibjiDpToB1rYC50qGO7C+vdk0GM1XiPQQA24cdm32+6+8X3Ce3369c+tXlyblWzOFUQQA6XG6.u+6+9X7ie739u+6GyYNy4RNiVjkkQKszBd9m+4wd26dgUqVgQiFwhW7hwi7HOxkzXCbt.CsksrEzc2cihJpHHKKi0t10hgMrg44iwcOOBjZcSM0TCJrvBwTlxTP6s2NRM0TgNc55yy0oSmvkKWHjPBoe+.dYYYTRIk.mNchIMoIAAAAnQiFOm+4m8WWrfQIKKC61s6I3ZCFty3LAAgK5yFAAADRHg.0pUiG7AevqnYm0YNyYPwEWLV4JWILXvfWs0XiMhctychuw23aDzVVcNb3.aaaaCSaZSCie7i2q1b5zI1291GBO7vQ5omd.Mtm7jmDkTRI3a7M9F9zVQEUDxO+7w5W+5Cnms0TSMH2byEomd53Ftgavu6mjjDJrvBGTAbRPP.YlYl31u8auOa2gCG38e+2GOvC7.bmyiHhB.LfSDQDQzUUmelQnQiFuJpw..wDSLvjIS3ce22E+q+0+BKdwKFokVZ8afRtPUWc0vjISXgKbg3Dm3DHpnhBokVZWRyYKVrf28ceW7du26gVZoE..XxjIjPBI3W0BmKlRJoD7G9C+Azd6sCEEErhUrBDRHg.850Ca1rAylMCYYYDYjQhvCOb+dbcGbCCFL.UpTAiFM1uYQyu6286vgO7gwV25VGvm0VrXAaaaaCc2c2Xtyct39u+62S.85ryNQmc1ITqVMhIlX7I3JW33rl0rFb+2+8iu6286522SmOQQQzVasAGNb.SlLcQCNfACFfNc5762kBVLZzHLXv.LYxjOO+MYxjm1BVK0OsZ0BCFL.iFM5y6mtqWT8UaWLtuO5q94ts.8YangFpm6+.Y9HIIgLyLS7c9NeGLgILg.5Z9oe5mhwLlwzuWOsZ0BMZzDvyIhH5q5X.mHhHhngDDDDfSmNQkUVomOBWPP.tb4BkUVY3i9nOBNc5DSe5SGszRK9UVSzZqsh7yOerzktTTPAEfyd1yhQMpQgniN5AcFsHHHfVasUzXiMBsZ0hvBKLDRHgfUu5UiEtvEhpqt5A03d9ppppP3gGNxHiLPDQDAFwHFArZ0JNyYNC9fO3Cv+2+2+G5s2dwW+q+0w2+6+8QTQEETTTffffO0nI2GWQQAkUVYnfBJ.s0VanhJp.JJJdxhjKre6XG6.ETPAnrxJyqfZ4dLc2mibjif+5e8uhvCObDZng5od.cpScJ7Vu0agcu6ciPCMT78+9ee70+5ecuB.w4uD5ZngFvwN1wPrwFqWESa2Wq96mWtu2La1L1wN1A17l2LpolZv7l27vy9rOKtga3F5y9pRkJzbyMCqVshZqs1qX6JZBBBn1ZqEM2bynhJp.FLXvqmmszRKnkVZAUTQEHjPBInj4UNc5DM2bynlZpAZ0p0qwTTTDMzPCnqt5BwGe7Az0y88QeUCm5q15qLO5B6W80WOZpolvYO6YQO8zieMeDDDfc61QGczAhKt3fc61866Afy87owFare+cWmNcB61siyd1yhnhJJLxQNx.Z7IhnuphAbhHhHhFRPkJUniN5.uxq7JdB3jNc5PQEUD18t2M5ryNwXFyXP0UWMdkW4UtneHpKWtvgO7ggMa1PRIkDxN6rgc61w+3e7OP1Ym8ft93nRkJXwhEzXiMh4N24B0pUivCObLrgML7Zu1qMnFyKjrrLF8nGMBMzP8TmnJpnhvW7EeAprxJ8bde9m+4PqVsHpnhxyxIytc6PRRB5zoyyxYy8Gju6cuaTVYk4Yox0PCMfQLhQ.UpTAGNb.mNcBc5zA850ipqtZzc2ci25sdKOiqNc57pt5nnnf5pqNL+4OejbxIi5qud7pu5qhFZnAru8sOzVasA.ft5pK7AevGfVasUnWudOAdvcfALXv.pt5pgnnHJojRva7FuArZ0Jjjj7rrxFn.NYylMbvCdPbxSdROm2ANvAvq+5uNhM1X6y9pUqVbxSdRTas0hW+0e8qn0vo1ZqMzVasgxJqLuB.jff.5pqtPkUVIZpolfNc5BJAbxcgAOu7xymmGRRRn5pqFFLX.G+3GOftdM0TSvrYynolZxmZ3TKszBZt4lQKszhm1tvqq657z42OKVrflZpIb5SeZDVXg42AbRTTDkWd4H6ryFwGe79c.DUqVMJt3hgISlPVYkUedNtb4BM2by3Mdi2.FMZD+leyuwuFahH5q5X.mHhHhngDTTTfISlvxW9xgFMZfjjD97O+ywd1ydPmc1IRN4jwi7HOBl4Lm4.taRA7+OaojkkQngFJrYyFN8oOMjkkwXFyXvRW5Rgd85GTeLu6rPojRJASdxSFwEWbATsTxcPabuyX0eOK1+92Ob3vAZngFfff.hO938D7E0pUiYLiYf63NtCLqYMKnWudzQGcfsu8sibyMWzau8hTRIErt0sNjPBI.AAAzQGcf8u+8izRKML1wNVDe7wikrjkfvCObr8sucbnCcHXwhEDd3giu427ahe1O6mAKVr.mNchCbfCf1ZqMDRHgf64dtGLiYLCOY5T0UWMra2NF1vFFJszRwDlvDvm8YelmkOmISlv7l27vccW2EFyXFCzpUKprxJwV25VQ4kWNjkkQ5omNV6ZWKF+3GOLZzHN0oNEN8oOMb3vARM0Tw8bO2ChLxH62edzPCMfCcnC44mmie7iGqcsqEKe4KueK7zpUqFRRRPVVFKcoK8Rtfr6uDDDP0UWMpt5pwbm6b858PAAAzd6siPBIDrjkrDux9oKEhhhvnQiH4jSFibjizqwzkKWHu7xCgFZnXxSdxAz0q7xKG0TSMXYKaYd8trff.N6YOKpnhJPlYlom1b3vAJpnhv3F23PyM2LRLwD8pNUIHHflatYTZokhTSMUDSLwDPY3jISlvHG4HwXFyX766CUpTA850iXhIFLoIMo97bDEEwN1wNvhW7hQDQDgeMtDQDw.NQDQDQCQ3N3PYlYl..Xaaaa3y9rOCVrXAQFYjXUqZUXCaXCHpnhxuGyErfE.0pUixJqLb3CeXzPCMfUu5Uia4VtkKo4ZyM2LLZzHxHiLPrwFa.02su8siScpSgMtwM1u0eoJqrR7LOyyf5pqNzd6siku7kiTRIELqYMKnQiFnWudjRJofTSMUnVsZTWc0g29searyctSTas0Bfy8gzolZpXFyXF.3bAwRiFMvhEKXQKZQvlMaXDiXDX6ae63S9jOAkVZod9H8MtwMh669tO7oe5mhe9O+miScpS4InA+fevO.KdwK1yb8y9rOCu7K+xPTTDKaYKCKe4KGc2c2XYKaYPRRBQFYjXJSYJXTiZT.3bES5268dOrm8rGX0pU..jbxIia8VuUrfEr.7m+y+Yr8suczQGc.fyUWuV3BW3.VOlprxJwse62N9o+zeJ..FyXFCl9zm9Esd6zXiMBylMiEtvENv+PKHq7xKGQEUTX4Ke4dJ.7t0d6sCa1r4IXYAK1rYCokVZXLiYL9zlZ0pQDQDAl8rmc.MlCaXCCQEUTXQKZQ9zVhIlHBMzP8pM61siVasUrnEsHTZokhoLko3SgQuolZBFMZD27MeyAzN9njjjm.TdgEF8KFqVshDSLQLqYMq9rcEEEDQDQfktzkhvBKr.ZrIhnuJiAbhHhHhFRQRRBG6XGC+1e6uEEUTQXFyXF31tsaCicriE1rYKfB3THgDB5pqtvN24NgUqVgZ0pwt10tPFYjQ.UrsuPt2A2FnkgUO8zC9nO5iv1291QjQFI13F2Hl5TmJl3DmHhIlXFvchs1ZqM3zoSL+4OeDRHgfYNyYhvCObLtwMNOAP57clybFricrCOAaxjISXYKaYHojRxy4HHHfoMsogO+y+bTbwEiyblyfLxHCr6cuaTRIk.fyEjp0rl0fLxHCX2tcrqcsKje94CEEEnRkJrzktTe9n7lZpIblybFO63ct2o4VvBV.F9vGtWmqjjDxImbvW9keIrZ0pmL2Z0qd0PiFM3jm7jXaaaaniN5.BBBvjIS3du268h9ypd6sWjTRI0m6VZCDWtbcEKylNehhhdd+4BKj5m+6VAicotpqtZDd3gi5qudDUTQ4S.mb5zIDEEgnnX.O1tuO721b3vAra2NrYyFZqs1fUqV84dze9cq9h69MXtOtX8yoSmPQQ4J1xtjHhtdAC3DQDQDMjfJUpPO8zC9m+y+I9vO7CwQO5QQRIkDV0pVEl7jmLJnfBPO8zCF6XGqms8d+YYyHIIg3hKN7C+g+Pnnn.sZ0hCbfCLn2Avbuj5JszRgMa17ol33d4qsksrErqcsKXwhE.btBr7i8XOlmZXz92+962qgMa17TWjb3vA5ryNQCMzfmBp7EV2axKu7vvG9vQxImLzqWOVzhVDl27lGNwINgm4jMa1v6+9uONwINATqVMrYyFdfG3A..v3F23frrLlyblCtka4VPEUTAN8oOMLa1LlvDlfmriYkqbknlZpwSfs.NWsP5ge3GFIjPBnlZpwSPpb5zoOaq8tb4BkTRIH4jSF1rYCIlXhX0qd0HgDR.6d26FEVXgXDiXDvrYyHt3hCYlYlHkTRA6YO6oeeVoRkJTYkUhRJoDjXhI1uA.4BoUqVbpScJTas0h8t28BGNb3W8avRkJUd9SUUUEppppfVsZ8YWbyrYy3zm9zHlXh4RdGQSkJU3HG4HXricrH+7yGVrXANb3vmkT2IO4IQngFJrZ05E82oN+6iRKsTTUUUgXiMVHII443ZznAUTQEnjRJAwGe7d9YR4kWN1wN1A1+92OJszRwZVyZvMcS2Db4xETqVMTqVMZrwFwYNyYfCGNBnh6uSmNQd4kGZqs1P80We.UCmxKu7PM0TimeW8BIJJBKVrf8rm8fHhHhK4LjjHh9pBFvIhHhHZHAUpTAqVsh25sdKb3CeXDd3gizRKMzYmch24cdGjWd4gd5oGXxjIjPBIfIMoIASlLcQqkSVrXAkTRIPTTDie7iOfJnv82X1UWcgVZoETWc040bPPP.Nb3.EWbw3XG6XdxZhHhHBHKKiO+y+b+5CnUTT7Tvkc3vADEEQu81KzqWOJu7x8Y9TWc0AEEEr3EuXOez+AO3A8be5NfSG8nGEhhhvjISH93iGkTRIvpUqdV5gZ0pE4latPVVFNc5D0TSMHiLxvSaEUTQnfBJvmqu6ckrpqtZTZokh5pqNzTSM4SlIIIIgZqsVDVXggUtxU5o3RuqcsKHIIglZpInQiFrxUtROy48t28dQ+Ybas0lmhScfDnghJpHzPCMfO9i+3KqY5jJUpPmc1IZt4l8TnzcuywcgY5VO8zCpolZPu816fNnntoVsZTd4kiyd1yhRJoDO6bbm+ySYYYTWc0Ac5zgJqrxK56mczQGnkVZAhhhPVVFgDRHvlMaPQQAc1Ymd8NqQiFgc618Tiy1291mme9qSmNbxSdRX1rYzUWcglatYzc2c6of2WWc0gPCMT+NfStb4BUUUUnxJqDEVXgATMbp7xKGFMZzme2xMIIIXwhErqcsKDRHgv.NQDQ9IFvIhHhHZHAYYYDSLwfktzkhCcnCgMrgMfMsoMgFarQrwMtQOYUiYylgEKVvsca2F9w+3e7.V7uEDDv1111vi9nOJF8nGMtm64dvRW5RgQiFujlq0VasHmbxAyYNywmkMlEKVv6+9uOLXv.5niNvvF1vvZW6ZwC+vOre+QvRRRH+7yGIlXhPQQAhhhH+7yGwEWbXNyYN9r8xu+8uennnf4O+46IHEW30p2d6E+i+w+.pToBKZQKxSv6N9wONty67N8rztb2uN6rS71u8aiMrgM30x9putGDDDfhhBxJqrvXFyXvt28twMcS2Tet7s10t1EFwHFgWKMPEEEO6pfxxxXIKYIC306BUTQEgicrigu829aeQO2y267NuC1+92OdgW3EBn9EHTTTP4kWNdkW4Uvd26dQs0VKlxTlBlwLlAdtm647ol.0XiMhO+y+bb228ceIuj5rZ0J9a+s+FzqWOZu81QpolJdlm4YfVsZ85cnctychvCObjd5o2uikrrLN4IOIdkW4U7DnnTSMUrgMrAbe228gJpnB7+9+9+5InRibjiDO6y9r3dtm6wS++y+4+LxKu7vZW6ZgrrLVvBV...dy27MwwN1wPQEUDhKt3vi7HOBdzG8QwvF1v7660d6sWricrCLoIMIjZpoFPOm1xV1BF9vGNl6bmae1tCGNPd4kG9e9e9eFvZIFQDQdiAbhHhHhFxPVVFs1ZqHgDR.esu1WClLYBu3K9hHqrxB23MdiH93iGFLX.G5PGB+4+7eFyadyCKbgKzm.v3lKWtP4kWNBMzPw7m+7QEUTAFyXFCl5Tm5kz7z80yc18b9TTTP7wGO9E+heAhO93Q3gGtmObt+lmWH0pUiwN1wBCFL3IXO4lat86077u1W3bzMiFMhUspUgSbhS.CFL3ofc2e8y8+7BC3S+csEDDvDm3D8jwN807bf56.0l+JPN2fQ+7G81au3ke4WFuzK8Rdx9J2K2P2Kux9ZtLPOS7WG4HGAu1q8ZnxJqD.mq1d4vgCnSmNzau8hxKubzc2cit6taDQDQLfWOqVshW5kdIr4MuYuxbtDSLQHHHf+1e6ugW5kdIOYJlff.hN5n8LlpUqFOxi7H3se62Fye9yGEVXgHjPBA+0+5eEaZSaxSleY2tcOu2OX+Yev98ff4OSHhnuJgAbhHhHhFxPPP.gFZnHkTRASZRSB8zSO3HG4HXMqYM3G9C+gn1ZqEKdwKFae6aGOyy7LX26d284Njkas2d6nhJp.qe8qGm8rmEG9vGFYjQFWxySCFL.c5z4SAe1caZ0pEImbxHgDRXPM9BBBHxHizqioSmt9L.E.vSVdMPEhbfysiuoQiFDSLwfPBID3xkKnUq19LSZBIjP5215OtKn6Z0psOe1nSmNO2G80bSud8Cpk6n6edDnzoS2k7xV6hwnQiHwDSDQDQDnmd5AojRJXoKcovoSmn7xKGSdxS1qy288RvnfgqQiFjTRIgLyLSzZqshUspUgvBKLblybF7hu3Khie7iCGNbfLxHCrgMrgAbrLYxDF9vGtmkP5Mey2LdjG4QvRW5RA.vMbC2.hJpnfMa1vMdi2H1vF1fWYpF.PYkUFN9wONLa1LxImbvO7G9CwXFyXPbwEGZpolvjm7jw5W+5w29a+sQDQDQ.cuFRHgzu+N4ES+8Noa50qGpToZPM1DQzWkIn3u41MQDQDQAA1saG+5e8uFO8S+z..3O8m9S3we7GGs0VaHszRCQDQDvpUqHszRChhhHqrxBiZTiBidziF0VasHojRxyx2JzPCEokVZ8aPCbGvoDSLQTVYkA61siYO6YiXiM1Ko6Aa1rgN5nCDczQ2m6xVszRKHxHiDlLY5R55b9pu95gACF7JqQbq0VaE..wDSLPkJU86XzSO8.KVr3oXd6vgCzVasgDSLQnVsZuNWQQQTc0UiwLlw3SaCDYYYTas0hXiMVDZng5Sat216uv.ponnf1ZqMnnnDPKkJfyk8MlMaFidziNf5WM0TCZs0V8Ym2KXqkVZA4me9vlMaHlXhAwDSLnwFaDicriEiZTixqLmo2d6EM1XiHojRJfdtegbW+xpolZvnF0nP6s2NBO7vQzQGMppppPN4jimyMhHh.SaZSCwGe7863onnf5pqNTTQEAEEEL1wNVud2n0VaEm9zmFNb3.iZTiBSXBS.5zoyq.HVc0UixJqL.btkr4Lm4LQBIj.xN6rgEKVvvG9vQpolJLYxjeUSsNSYyzaG...B.IQTPT8maRRRngFZ.lLYJfCVk6e2p+Vtbtq+TyadyC50qGe3G9gAz3SDQeUEyvIhHhHZHAYYYLrgML789deO7ke4WhksrkgIMoIgO3C9.nWudbS2zMgbyMWjRJofwN1wh25sdKO6zZ8U1Izau8heyu42f4Lm4ft6taOEt3vCOb7POzCcIELnlatYblybFL4IOYeBdkUqV8LOSLwDGzWiKzANvAPzQGMl7jmrOAbx8xsaZSaZCXF6HHH.UpT44i4apolP94mOVzhVjOOC6t6twm+4eNtsa61BncKMQQQrm8rGLsoMMepuUhhh3XG6XXXCaXX7ie7d0l65VkhhR.G.nyd1yhBKrPr5Uu5.pe6bm6D4kWd3IdhmHf5WfRsZ0vgCG30e8WG4latXpScpXZSaZ3Nuy6DIjPBnpppBu7K+x3vG9vXBSXBX9ye939tu6CpUqFJJJCp.O0YmchO5i9Hb7iebTZokhjSNYjRJof4Lm4fCe3C64cgDSLQroMsIL4IO4KZ1k4NC4DDDfc61wa8VuEd629sgISlv29a+swK7Bu.DDDfjjDDEE8o3j+Vu0ag3iOdrrksLHJJhoLkofHiLRnSmNOuW5xkK+NK2rYyF17l2Ldu268fISlvBVvBv5V25B3.Otu8sODarwhoLkozmsKJJhRJoD7XO1iEvAyhHh9pLFvIhHhHZHAYYYDZngh65ttKHKKCsZ0h4N24hgO7gicu6ciXiMVL6YOaDSLwfzRKM71u8aia8Vu0AbI0MqYMKHHHfBJn.7XO1iglatYbu268hLyLyKo4ZSM0DTqVMRO8zQbwEmWs0UWcA61siYLiYfQNxQdIccNes2d6HgDRnOCFijjjmhFdfngFZ.Nb3.ye9y2mfZXylMTd4k2msMPTTTP80WOl6bmKFwHFgOs2SO8fjRJo98i6kkkC3k8XLwDCb4xU.2upqtZzXiMFTVlk9CIIIba21sgktzkhCe3CiLyLSbhSbB7lu4ah7xKO.btLEJ93iG27MeyHu7xCszRKXkqbkAz0okVZAO8S+zXKaYKnqt5BJJJnpppByZVyBequ02BIlXhXe6aeH93iGYlYlH8zSe.yLtAxa+1uMzoSGV1xVlWEB99x3F23vG8QeDty67NQEUTAl9zm9ft.9WWc0ge8u9Wisu8sCQQQO0jr4N24hjSN4.ZrZs0VQhIlX+FnSEEEDVXgga5ltIe14EIhHp+w.NQDQDQCY3NCjtsa61vG7Ae.1912NlyblCty67NgjjDJt3hQAET.NyYNCRLwDwJVwJFvwyc1H3dIdERHgf5qudHIIcIsbkToRkm+bgTqVc+11kBUpT0uErXUpT426.d80XFLuObuLm5u9MPi4f8Y1.8rYfbktHPOtwMNnVsZzYmch5pqNzPCMfCcnCg8u+8CQQQXxjILwINQrpUsJOY7iSmNC3qSQEUD17l2L5ryNgJUpvMbC2.F+3GOVyZVChN5nw5V25v5V25tjueRKszvy9rOKhIlX7odM0WhJpnfACFPngFJBMzPujpeVkTRIXaaaans1ZC5zoCIlXhX4Ke4Ab1MAbwe+w86IWJ+2LHhnuJhAbhHhHhFRPkJUvpUqXKaYKPiFMvfAC34e9mGCe3CGKYIKAZ0pEUWc03i9nOBQDQD3a7M9FXe6aeWz.s3xkKzQGcfku7kCfyEHkst0sdI8wis0Van7xKGs1ZqH5ni1q15pqtvoO8oQiM1nmZkTvPVYkEhJpnPs0VqOebbAET.TTTPKszR.ce0ZqshBKrPnVsZeJ511rYC4lat3e8u9WATA418xlqqt5xmZBjKWtPt4lKhM1XQ4kWtWs4NfhxxxvrYy980C3b0hoRKsz.d4NcricLTYkUhst0sFP8avPQQAkUVYHqrxBs2d6n3hKF4latHpnhB2vMbCvrYyXLiYLXdyadnpppBVrXwSPN724mFMZfKWtPIkTBRN4jQIkTBznQCl8rmMVxRVB5pqt7LV82tPXfPPP.icriE.vuli1rYC4jSNvnQinyN6DkVZoCph8N.PUUUEhO93gYylQLwDCl27lGBO7vwm9oepe0eUpTAsZ0BAAAjUVYgHhHBTWc00mmqnnHZu81wG+weLBKrvvZVyZFTyYhH5qZX.mHhHhngDDDDfMa1vd26dgZ0pgff.l8rmM5pqtvd1yd7TDjcmEHkUVYn3hK1uGa2YOihhhmsI9ACUpTgN6rSzbyMi1ZqMO6ZWm+8Pc0UGZt4lQzQG8fZWWqutlkUVYvnQin95q2q.NoRkJTSM03IfSARVBY0pUTe80CQQQex1DGNbfRKsTnUq1K5te24SRRBkVZonyN6zm..IIIgpqtZXxjIOyY2jkkQCMz.jkkQGczge+bSkJUn0VaEM0TSPmNc9UwlF3b6jdEWbwnwFaDG9vGdPkIQ9K207nCcnCgZpoFDe7wiXhIF3zoSnnnf64dtGnnn.AAAzau8hezO5GAEEErrksLLlwLFO0CI2OSDDD7b9tyXLAAAjSN4fCbfCfIO4IiUrhUfUrhUfhKtXL7gObjSN4.UpT0uEF6qTzpUKxJqr7bOLXoRkJjYlYhksrkAfy89SN4jieMlpUqFVrXAETPAn6t6FFLX.SXBS.MzPC844KIIAqVshCdvCBiFMx.NQDQ9IFvIhHhHZHAIIIDWbwgm9oeZuB9g6fOonnflZpI7Ye1mgYLiYfoMsocI8AqCVBBBn1ZqE4lat3FuwaDIjPBd0tYylwAO3AwTm5TwXG6XCJyQAAAr0stUDe7wiYO6Y6UPkDDDvANvAfhhBxHiLBnfCUSM0fibjif0t105ytsWmc1Idu268v25a8s7osAhCGNvG8QeDxHiL7Y4M4zoSr6cuaL7gObjVZo4Uatb4BG8nGERRRXwKdw98yMAAATTQEgryNa7.OvC32ApRsZ03cdm2AG5PGB+pe0uBtb4xu52fkKWtvt28tQUUUExHiLvoN0ovpW8pQTQEkWmmhhBV7hWLd8W+0wYO6YgVsZwDm3DQbwEGtga3FPngFJrZ0JhHhHPyM2rm+blybFX0pUbe228gG+webOu68ge3Gha9luYXvfA3vgiAbmn6qBTTTPAET.dgW3EPCMz.5omdPZokFdjG4QvLm4L6y93vgCbzidT7TO0ScUOfcDQz0RX.mHhHhngLToREBO7v8JCdxM2bgjjDl8rmMF0nFEhHhHfEKVFzEa3fASlLgPBIDXxjIDZng5UahhhvfACvjISA04XHgDBBMzPQXgElOsYznQOE13.YI0YxjIXvfADVXg4yNQmrrb+11.QmNcdt+uvmM50qGFMZrOaSVVFFMZzy+LPDZngBCFLDPAFC.vfACPqVsPud8Az83f0rl0rvnG8nQZokF5niNPrwFKLXvfOm2ZW6ZwTm5TQN4jCNxQNBN0oNEZokVfnnHb3vArXwBhM1XgjjDLZzHF0nFElvDl.dzG8Qwzl1z7ZmSbUqZUHpnh5RpdIc8DQQQ7rO6yhsu8s6Inl1saGQFYj97Noa5zoCpUqFgEVX864PDQju3+KODQDQzPJxxxPsZ0PVVF+8+9eGu5q9pPmNc3Idhm.2wcbGdVZcWsmim+Rbxea6Rw.UHtO+qYfDvI2mav79PVVFpTopOmGtyVs9654tuAJAAA+dozc9TTTtpjkbhhhdBRX+I4jSFImbxXUqZUn6t6F81auvkKWvkKWPQQwyyXc5zgPCMTXxjo9LnYW3tn3W04xkKzVasA850CsZ0hjRJI7i+w+XL9wO99sOteeMX+6zDQz06X.mHhHhngjJu7xwe+u+2Q1YmMznQC1291GV8pWc+Fvhq20YmcBa1rAiFM5ICvhLxH8YI80eDEEQEUTgWA4ngFZ.Nc5LntSsonnfFZnATbwEit5pKelC0We884b1cAxt7xKOfCRRCMzfOEu8ghBO7vgFMZfFMZv7m+78qfC5dGciBNLXv.9K+k+BxM2bgACFPZokFRIkTB56pjDQDw.NQDQDQCQ4zoSzau8Bfy8QhtCnfCGNtptb5tZY26d2Xyadydcru6286hW60dM+p+MzPCHszRymhi8u5W8qBpa26hhh34dtmCs1Zq8Y6iXDi.exm7I9bb0pUivCOb7fO3CFvWyEtvEh8t28Fv86JsniN5qIBL10yDDDvTm5TwTm5TuZOUHhnq6wP4SDQDQCIkbxIiEsnEgXiMVrxUtRjYlYh7xKOzTSMgIMoIcUctoVsZO0ToqTbuTpN++3Nfb9CYYY3vgCeFiKGYKVecc7m4r6kwWf9md5omf98.QDQDcogY3DQDQDMjjQiFwi+3ONRHgDfCGNPokVJrYyFRO8zQpol5U04VYkUFdkW4UvV1xVfISl..vvF1vvS9jO4ksq4LlwLPrwFKF4HGomk.WfjkFwDSL3EdgWvqZcj6BWcvLnSZznA20ccW3Ftgavmr4QRRB0We88aeGwHFA9C+g+P.eMGwHFQ.2GhHhH5xKFvIhHhHZHqQNxQhG5gdHTWc0AIIIDQDQfgO7geUudqTc0Uist0s50wRHgDtrFvoIMoIgUrhUfoLko3SapUqFJJJC3NQV3gGN9A+fefWGqiN5.6XG6neC3jJUpB3c2Lc5zgUrhUfEu3E2mag76d26teKV1wEWb3IdhmHftdDQDQzPSLfSDQDQzPZlLYBSbhS7p8zvKyd1yF+te2uCSdxS1SAttu1d6Cl9hu3Kvt10t7jQUmO2EmaSlLEPE.bmNcheyu42zm6tYFLX.uy67N3Mdi2HfBvmhhBLa1betqoonnfvCOb7tu6652iGQDQDcsIFvIhHhHhBPQFYjXpScpHiLx.QDQDd0lNc5fffv.tk2OXzbyMihKt3f5XB.jTRI0mATRkJUnpppBMzPCA0q2nF0nB3cgNhHhH5ZOLfSDQDQDEfrXwBN0oNEjkkQrwFqWsY0pUX2t8fdFOMwINQLm4Lmf5XJHHzmYLk61l6bm6.VykFLF0nFU.kEVDQDQz0lX.mHhHhHJ.kc1YOf0qom9oeZr90u9f50bSaZSXSaZSA0wbfnQiF7QezGcE65QDQDQWegAbhHhHhn.zzl1zvO5G8i521m27l2UvYCQDQDQC8v.NQDQDQT.ZFyXFXFyXFWsmFDQDQDMj0U28TXhHhHhHhHhHhttCC3DQDQDQDQDQDQAULfSDQDQDQDQDQDETw.NQDQDQDQDQDQTPEC3DQDQDQDQDQDQAULfSDQDQDQDQDQDETw.NQDQDQDQDQDQTPEC3DQDQDQDQDQDQAULfSDQDQDQDQDQDETw.NQDQDQDQDQDQTPEC3DQDQDQDQDQDQAULfSDQDQDQDQDQDETw.NQDQDQDQDQDQTPEC3DQDQDQDQDQDQAULfSDQDQDQDQDQDETw.NQDQDQWyq6t6F0VasWsmFDQDQDQ+aLfSDQDQz07Zs0VwwN1wtZOMHhHhHh92X.mHhHhnqKnnnb0dJPDQDQD8uw.NQDQDQDQDQDQTPEC3DQDQDQDQDQDQAUZtZOAHhHhHZnBEEEbhSbBbfCb.jTRIgUspUASlLA.fd6sW7tu66BEEE709ZeMDarwdUd1RDQDQzPWLCmHhHhH5e6HG4H3Mey2DKe4KG0TSM329a+svkKWPQQAO0S8THhHh.gEVXXSaZSvpUqWsmtDQDQDMjEC3DQDQDQ+au9q+53ttq6BScpSE20ccWvoSm3HG4HnvBKD1rYCKaYKCKXAK.gDRHXe6aeWsmtDQDQDMjEC3DQDQDQ+aUVYkPPP...idziFgEVX3zm9z3cdm2AwGe7vnQiH93iGCe3CG4jSNWkmsDQDQDMzEqgSDQDQz07BMzPgZ0p621as0VQYkUlWmirrLhJpnvDm3D8brksrkgW9keYL5QOZ3zoSbpScJjYlYhJpnBbS2zMA0pUCUpTgvCObb1yd1Kq2SDQDQDcsLlgSDQDQz0r5ryNwe7O9GwO4m7SPwEW7.dttyboA5XabiaDYjQFn1ZqEG8nGEUTQEHkTRARRRPQQwq9MPA3hHhHhnupiY3DQDQDcMoFZnA7e9e9ehO3C9.3vgCbe2280umabwEGhKt3tniYLwDC9O9O9OPWc0ExN6rw3F23vrm8rQJojBb3vAjkkgJUpfSmNwvF1vBl2NDQDQDccEFvIhHhH5ZREWbwX6ae6vgCGXDiXD3VtkaoeO2ie7ii27MeSnSmNOGykKWXZSaZ3ge3G1qyUTTDETPA3fG7fX8qe8vjIS3du26EuzK8RvpUqPVVFM0TSH8zS+x18FQDQDQWqiAbhHhHhtlz3G+3wblybP6s2N9Q+neDt8a+162ycZSaZ3W9K+kdsD5TTTfd85857polZvG9geHN7gOLdrG6wvRVxR..vjm7jQDQDA1yd1ChM1XQmc1IV3BW3kmaLhHhHhtN.C3DQDQDcMojRJIr0stUnnn.sZ0NfmqACFfACFtniY80WOtwa7Fw25a8sPrwFqmiKHHfm9oeZr28tWHJJhewu3W.iFMdIeOPDQDQz0qX.mHhHhnqYoQSv8uJSFYjQ+1ld85wJVwJBpWOhHhHhtdE2k5HhHhHhHhHhHJnhAbhHhHhHhHhHhnfJFvIhHhHhHhHhHhBpX.mHhHhHhHhHhHJnhAbhHhHhHhHhHhnfJFvIhHhHhHhHhHhBpBt6kvDQDQDQW2pqt5B6d26FM0TS8Y6SdxSFomd5PmNcWgmYDQDQzPMLfSDQDQDQ9k1auc7K+k+Rje942ms+.OvCfoO8oy.NQDQDQbI0QDQDQD4eDDDPHgDR+1tNc5fffPP8Z5vgi9sMIIoA83pnnLn6avfKWtFT8ytc68aaCzyJhHhnqzXFNQDQDQWSvoSmnmd5AQFYjA8fZP9GQQQb+2+8ie8u9WiHhHBuZyrYynhJp.Nc5LndM24N2Idtm64fMa17oMYYYnRUf+++SMXv.dpm5oFT8MXnpppBeuu22CM1XiAbekjjfZ0p6y1hN5nw68duGhM1XuTmhDQDQWxX.mHhHhng75s2dwl27lwwO9wwS7DOARM0TuZOk9JIEEEjTRIg4Mu44yxlqiN5.szRKPVVNndMMa1LN7gObPOijZqs1fVsZCpio+p2d6E4jSN8asvZvJpnhJnGvOhHhnAKFvIhHhHZHuSdxShW7EeQTRIkfTRIELoIMIlkSWEHHHfpppJru8sODd3g643IjPBvjISWVVlZZznAyctysOaqyN6DpToBgEVXCpw8pEAAALwINQLpQMp.58XEEEzTSMg3iOdexNKEEEnnnveufHhngLX.mHhHhng7xN6rQGczAl1zlFps1ZQ6s2NW1PWEnUqV7Fuwaf7xKOuN9i7HOB9i+w+3kkqoACFv68duGF8nGsOs8ke4WhPBIDjQFYDPiYyM2LN3AO3UsZdjhhB9A+fe.tsa6152kGW+0uW9keYrwMtw9r8Mu4MeUaYBRDQDcgX.mHhHhngz5pqtPN4jCt0a8VwC+vOLxM2bQ4kWNC3zUARRRX9ye93lu4a1qhG97m+7urE7FQQQ7pu5qhniNZOG6VtkaASe5SGRRRvkKWWzL6I+7yG6bm6zy+dmc1IlxTlxkk4q+RRRBhhhAT.mDEEwQNxQPmc1oOYnkjjDNyYNCxLyL8oeJJJHmbxA6cu6MfyBMSlLgUspU0mA7iHhHZfv.NQDQDQCYHHH3yGfaylMzYmchG5gdHL6YOajUVYEzq8Mj+QPP.qXEq.2xsbK9jIMlMaFpUqNnWWjjkkwy8bOmW0FpvCObL8oOcnQiFnQilK5xH6nG8n3Iexmzqi8Nuy6.MZzbUIifznQyf5YkVsZw9129v69tuae1drwFK98+9euOGWPP.6ae6C+ze5OMfmqQDQDXbiabekNfSZ0pEBBBW0p4WDQz0pX.mHhHhngDTqVMZokVvS9jOoWAcxpUqnjRJAe7G+wXO6YO3PG5PH93iGm3DmvuJP0JJJPTTDRRRPqVsWUqcOWKSPP.lMaFszRK3K9hu.gDRHdxVFAAAzSO8fyd1yhrxJKDZngFTpmSBBB3Tm5TPiFMPTTzyw25V2Jpqt5PkUVITqVM1111V+NFpToB4latdETJsZ0h2+8eeHHHfZpoF7y+4+bHIIcIOe8GBBBn0VaEs2d63HG4HAz6iRRRnmd5oeCvlc61wS+zOMLYxjWGWQQAm3DmXPUemjkkwa9luI1+92ue+yTAAAHJJBQQQudO47uODEEgACFBZ0bJEEE3vgCOAg77ulBBBvtc6dBxWfbe3vgCHKKiZpoFroMsIXznQ7rO6yFTlyDQz063eiKhHhHZHAEEEnSmNL0oNUOAbRPP.s0VanxJqDye9yGm9zmFszRKX9ye9HszRyqfPzeN6YOK1xV1B5omdvJW4Jwzm9zgZ0purTfqudlJUpPCMz.BIjPvjlzjPXgElWAbpyN6Dtb4BSZRSBQFYjAkcqNAAAzc2ciMsoMgQLhQ343pUq1yOC0pUKF+3Ge+F3BAAALoIMIb228c64XM2bynt5pCRRRnqt5ByblyD1sa+Rd95ODDDPc0UGpu95wTlxTfNc5762Ec4xEV0pVEVxRVhO6Rfhhh3vG9vH0TSEQFYjd8yFmNchd5oGrrksLjPBI32yUYYYTQEU.QQQLsoMM+9mopToBM2by3u7W9KnvBKrOOma5ltI7nO5i5SvgFLDDDfjjD9a+s+F16d26kzX0W9NemuCBIjPPpolpWEKehHhFXLfSDQDQzPBxxxHhHh.qacqyq.N0XiMBKVrfLxHCrm8rGjPBIf669tOL0oNU+5CU2xV1Bpqt5vMdi2HVyZVCl0rlkW0eHx+HHHfxJqLb5SeZrnEsHDczQ6UPMZokVfQiFQlYlIF1vFVPKCmbGvnoN0o543t2Q1hJpnfACFv7l27FvLkw833VYkUFxKu7fSmNgc61wZW6ZuhE.RAAATbwEihJpHbq25sBCFL32WaQQQzbyMi0u906y6vNb3.tb4BqYMqAwGe7d8yFGNb.c5zgzRKMLgILA+dtJIIgrxJKzYmchUtxUFPYFTkUVI1291Gb4xUedejZpoh67NuSnWu9fR.mb4xEN9wONpppp7IXb.mKSI0oSGLXvP.M11rYComd5nfBJ.29se6dUKwHhHZfw.NQDQDQCYHHH3yGKFczQCc5zgW9keY7oe5mh63NtCLkoLE+t16Td4kiDSLQLm4LG7EewW.iFMha7FuwKGS+q6oWudOez9E972fAC8aaWJzoSGzoSmWALx8+25zoC50qOfWljtGSfyksTWoqiSCzywAhZ0pgFMZfd858I.a50qGZ0pc.+YyE9b7hQiFMd5Wf9LRVVFqacqyqLKysyd1yhbxImf5yd0pUiEu3EiG6wdr9LnZe3G9gHkTRAokVZAz3t+8ue3xkKHIIEze2lHhtdGC3DQDQDMjfff.5s2d87gntIJJhbyMWr8sucnVsZjbxIiBJn.+JqHZngFP94mOl27lGNxQNBpolZPxImLK9uCBBBBn5pqFkUVYHxHiDQDQDdkEMlMaFUTQEHu7xyqre5RU4kWNb4xUetj2JojRFTYsRM0TCJu7xgnnHZs0VwoO8ouhVCmprxJQkUVINwINQ.kgOhhhn1ZqEm3DmvmLixoSm3rm8rH2byEwDSLd0OmNchxKubnVsZzUWc42WOYYYTbwEit6t6.Jq0DDDP4kWNpt5pwYNyY7zOEEE3xkKTc0UiJqrRjSN4.iFMFTxvI61s6old4NC3beOHIIgJqrR3xkKnRkpA754t.g6dbO6YOK5s2dQO8zCxM2bQDQDAl9zm9kz7kHh9pBFvIhHhHZHAUpTAqVsh28ceWOAbxfACHqrxBG5PGB81auXRSZRn95qGu669tWzOR0kKW3K+xuDxxxniN5.Ymc1voSm38e+2GETPAr3gGfToREZu81Qqs1Jpppp7JPAtq0RUWc0n95qGlLYJnEvoyblyfhJpHDWbw4SaUUUUPiFM3Lm4LAzXZ1rYzZqsBIIITSM0fO3C9.3zoyfx78hwcQC2rYyn95qOfJh0RRRH2byExxx9DzTWtbgBJn.X1rYDZng5SakWd4nzRKEwDSLAT.mZrwFgCGNPs0Va.UCmZu81Qd4kG93O9i8zOc5zgzSOcXwhEzbyMiFZngf5RpK6ryFVrXwq2MiM1XwLlwLvoN0oPgEVHxO+7626CQQQjc1Y6o1v4t1jMtwMNXwhE7ge3GBiFMx.NQDQ9I92zhHhHhFRvcMb59u+6GpUqFhhh3Mey2DG9vGF81auX5Se53IexmDSYJSwuVVPhhhHojRBlLYxS12zUWcgLxHCr10t19rNuDn5q4w0qEibAAATUUUgxJqLbi23MhHhHBuZu81aGYkUVH8zS2mLr4RwN24NQxImLRIkT7osidziB850iYLiYDPKUrpqtZTRIk3I.Cqe8qOnTjy8WUVYknhJp.KXAK.50q2u6mnnHToREt669t8oeNc5Dexm7IXIKYI8YFNs28tWLgILAL5QOZ+95IIIgScpSgd5oGL+4O+.JCmpu95wIO4IQVYkkmiGZnghm+4edzZqshBKrPrfEr.XznQ+d9LPjkkQkUVIN3AOnWGedyad3dtm6AQDQDXTiZTH0TSseGCqVshW8UeUexlt65ttKTc0Ui69tuaedumHhn9GC3DQDQDMjfhhBLXv.l9zmNTTTve+u+2wG+weLrYyFF9vGNtka4VvpV0pBnO3ycgltvBKD+y+4+D1rYCyZVyBybly7x0sw00BMzPgjjDl9zmNLYxjWs0QGcflZpILsoMMDUTQEztlkUVYXRSZRXhSbh9zVqs1JBIjP7pfh6OLYxDb5zIb5zIprxJGvfPb4f6kC2LlwLB3ZBz92+9QZoklWK6Tfy86Om7jmDScpS0mBashhBppppPpolJRN4jCnqmCGNPmc1Il7jmb.0uHiLRDarwhPBIDOACzc1FUe80Ca1rgzRKsfRfecKgDR.FLXvqhDehIlHlzjlDJrvBw3G+3wTlxTh9b0s...a3RRDEDU529aylMDarwBylMCfy8bSVVFidziFgFZn8468DQD0+X.mHhHhngTra2N16d2KdwW7EQCMz.VzhVDt8a+1QLwDC5niNPXgElemoEpToBczQG3S+zOERRRHpnhB6ZW6B27MeyWRYpfff.9zO8Swl27l8rjfToREl4LmIV+5WOhM1XGzi8PY1saGNc5D81au9rKo4tM61s620CopqtZDZnghJpnBL4IO497i4GnwzoSmPkJUvkKWATFN4dt5zoSHIIAYY4qnYl14+bLPp+TNc5Dhhh84yeGNbzuOqFn1FHRRRdlqAZMtxrYyXsqcs30dsWyyyV20WIa1r449+BCb1fkc61Q5omNt8a+1wDlvD7bMCIjPfjjjec+qUqVbjibDOY6lff.N7gOrm.T594dvZNSDQWuiAbhHhHhFRvcMb5u9W+q3i+3OF4me9HojRByYNyAlLYBYmc1nxJqDiYLiApUq1Sw.1ejPBIfG8QeTHKKCAAArssss.J.EWH850iO4S9Dr0stUOGSPP.kUVY.3bYxw0KKsN26LZZ0pE0VasnxJqDs1ZqdUmlbWqaJnfBPmc1IhLxHunKQM0pUiBKrPDd3git5pKTbwECc5z40yMAAAbricLTd4kiScpS4yXTPAE.sZ0hpppJuJzy.vSP.6q4QSM0DpolZ7Tai9vO7CgCGNFzOiBDtWtY0We8vpUq9bOOP8ykKWH2byEu+6+9dU6iDDDfnnHN9wONDEEQjQFoOskat4hpqtZjSN4DP0voxKubX2tczQGcDP0voZpoFTWc0gniNZ3xkK..OEy6FZnATc0Uit6taeJ94CFBBBvgCGH+7yGiXDi.s2d6dlqxxxPkJU3PG5PnrxJCkUVYC3+cC0pU64cHUpTgBJn.3zoSzd6si+4+7ehvBKLbu268dIMeIhnupfAbhHhHhFRv8tT2t28twQO5QwHFwHvpV0pfISlv+5e8uvwO9wQWc0EBIjPPBIj.VvBVvEcmyRPP.MzPC3fG7fPTTDomd5XricrAk463F23vO6m8y743lMa1yRx4ZcpUqFM2bynvBKDs2d6HjPBACe3CG50q2mZHTO8zCZpolfQiF8onUOPicas0FLa1Lpqt5PRIkjOABrwFaDhhh84tTW80WOznQiWKgJa1rAfyUfpangF5ywzrYynolZBxxxvpUqnnhJ5JZMbps1ZySP6BjhWujjDZqs1PEUTgO8ykKWn4laFUVYk9joXtb4BM1XiPVVFc2c2980SVVF0We8vgCG9jQUWLs1ZqnolZpO2QIMa1LZrwFgISlBZKoN22ihhh9bOJHHflZpI3zoSOA+xeUSM0.III3vgCTQEUDvOGHhnuJiAbhHhHhFRPQQAQGczXgKbg3.G3.3gdnGBO0S8TnpppB6YO6As0Va.3bKOH2KOt+6+6+6K5Gru8suc74e9miTSMUbe228g+es2cdPQ488e.726yxdxwBKvtrbs3JAUDiTzlfGUvnBpAvFiQqlTscRaRqGSZSaZSRmlNVORRiMlzL1izYJMocZbZ8nXaRmXhQQMIpHGdfQD7XUbEXAAbuXu+8G9aeFMbDP1H156Wy33v9b88469.y77d998y2G3AdfgTgZ9tYm+7mGadyaFW7hWDlMaFlLYBOxi7H3odpmpWSErt6ta79u+6ihKt3A0zUzlMa3Mey2Dc1YmvoSmvfACX8qe88Z+10t1EFyXFCFyXFSu1VkUVITpTIt+6+9E+rKbgK.AAAjTRIg2+8eeTZok1qiyrYyn1ZqEd73AezG8QXsqcsCltivlyd1yh5qudTZokNjGoc+leyuAqd0qtOq8SkWd43gdnGBwFar8Za6bm6D4latXTiZTCoqW0UWM5ryNwrm8rGRGWiM1Hps1ZwhW7h601BMRqJszR60ps2sp.ABf+0+5egryN69r.yu8sucjUVYMjq2WG7fGDd73Am4LmAqcsqcPElJQDQWGCbhHhHhtige+9Qqs1JRIkTPIkTBjJUJ94+7eNNwINAVvBV.RKszPLwDC1111F9i+w+HxO+7QokVZ+V3k83wCNwINARLwDwW8q9UwgO7ggNc5vjlzjtMem8eeBFLH1xV1Bdi23MD+r.ABfQO5Q2m82gpuPd73YPc926d2KV25VG5t6tQDQDAV1xVF73wCjKWN5t6tQUUUEb3vArXwR+NpzBUCmtQ1rYCBBBH93iueG8agZqd85cHWahBGtw9punvOCDH.ZngFPSM0DjKWNra2N750aetJ00e8+C0ua5t6tQs0VK5t6tga2tQLwDyf+l6ycMGns4wimvVfSeQ2iCk6+957FLXP3wiGF3DQDMDv.mHhHhn6nHWtbXznQjXhIhlatYbxSdRrfEr.rpUsJb5SeZL6YOajWd4gW3EdATYkUhYMqY0uSyEylMiyd1yhEsnEg5pqNX1rYTPAELhDxv+sIXvfXricrPud8nyN6D228ceXkqbkn3hKFQDQD8pOzmOeHPf.vmOeCp9W4xki68duWLyYNSHWtbTVYkAAAA7Ye1mge1O6mINBjl9zmNxM2bEOm23zmKPf.hWyPelOe9PKszBZrwFw69tuKxHiLDWg0BENUnUerPEK7aWOODpsG556ymuAbD541sa72+6+crksrEbkqbEHSlLTZokdS0urPmyarun+1le+9+BuWO4IOIdoW5kvQNxQfGOdv3F23vS7DOwPtOJTwXuuNtPaav9rxfQnm+5u6wA68eecbgdNIT6kEMbhHZvQRv+WohVRDQDQ+Wgd5oGrwMtQrt0sN.b8oHzZVyZPGczAxImbfJUpfCGNPFYjABFLHNyYNCRHgDfNc5fUqVQ7wGODDDPSM0DDDDfISl5yW.LXvfnkVZAc0UWHlXhAs0VavqWuHiLx.IjPBC4ki96F4xkKXwhE3ymODSLw.850KtRi8440qWzUWcgXiMVHWtbwfN5Otc6Fs2d6Ht3hC974CpToRrfZeoKcIw8KwDSDokVZPsZ0hqHcNc5D974Sbj9DZD3DHP.X0pU3xkKDHP.3vgCjd5oKVDsc3vg3nUwue+HXvfnqt5pOmBVgSgBCygCGviGOhgXnUq1A74PGNbfyd1yhqcsqI9YFMZDolZphgI41sa3xkKwU+sDSLQHSlLHHHHts.ABHNRkFnZPTn5fjYylE+rniNZjQFYLjWUGc3vgX64yykKWvtc6PqVsgsvaBDH.t5UuJTqVMTqVcu1tUqVgJUp5yUBwARWc0EBFLHLa1LxImbPDQDANvANPXoMSDQ+uNNBmHhHhn6H3ymOjd5oi0u90iJpnBTRIkf7xKOTd4kCAAALyYNSTUUUgryNajc1YiMsoMAe97gUu5U2muDsSmNwZW6ZgFMZv0t10vt28tgc61QAET.9I+jexP9EOuajfffXf.2XHM2nPAezd6si8su8gYLiY.MZz7EN8i5omdvN1wNPGczAN24NGznQCVxRVB9leyuITnPAjKWNRO8zwu5W8qvjm7jEKv2UTQEXKaYKvrYy3ge3GFKcoKESaZSC.WOTg0st0gqd0qhILgI.oRkhG+webnToRbvCdProMsIbxSdRje94iEu3ECkJUhO9i+XroMsou75D++uWqolZvq7JuBpolZvTm5TwBW3BwhW7hGvoT1t10tvy7LOCTpTITqVMJpnhvy8bOGzoSGBDH.N+4OO98+9eO1912NDDDvxW9xwJW4JQ7wGOtxUtBJu7xwe8u9WgKWtv25a8svi9nO5.Ft14N24vy+7OOZs0VgToRwnF0nvy9rOKlyblyPtnp2PCMf5qudrvEtvdssye9yiie7ii4Lm4zmgCcqnmd5A6YO6A2y8bOHqrxpWauhJp.iZTiB268duCoy6AO3AgOe9vF23FQ4kWdeVerHhHpuw.mHhHhn6HDLXPHSlLLkoLEzVasgKbgKfBKrP7c+teWr6cua31sajZpoBoRkBoRkht5pKTVYkMfEA4+7e9OC+98iibjifpppJ30qWLyYNSL5QO5gbwZl5egBiHt3hCFLX.lMaFG5PGBqbkqreOl28ceW7hu3KBmNch.ABfhKtXLkoLErsssM7ge3GhDSLQLm4LGXxjI.b8QZxK8RuDJu7xEGwOm8rmEwGe7HojRB.WezP8c9NeGnRkJLoIMIr+8uejUVYg+ze5OgMtwMJNxcN24NGhO93gb4xgZ0pEO9uL32ueTd4kiMrgMHd8apolPTQEERN4jGvQ3yRW5RQLwDCZrwFw3F23PQEUj3n45Lm4L3W9K+kXu6cuh0JIe97gjSNYzUWcg0u90i268dO31sa..zRKsfjRJoA7dMojRBu7K+x3i9nOBQFYjnfBJ.SbhS7V59tyN6DVrXoOudNb3.Z0pEFLXHrspu40qWDSLwbSOObihKt3PhIl3P965DRHA30qWHWtbjTRIw.mHhng.F3DQDQDMh5yOkhhJpnPYkUF1wN1A1111FxO+7wBW3BQf.AvINwIvANvAP0UWMl7jmLJpnhFvysDIRPDQDAZqs1Pt4lKb4xErYy1Wl2N2UwrYyXO6YOvrYyPtb4HpnhBJUpDwFarvfACC3wpRkJjZpohILgI.IRjfu829aCkJUh7yOeje942q82tc6nxJqDW6ZWCxjIColZpnrxJCSe5SWbejJUJRIkTPas0FN5QOJNxQNBLZzHpu95wEu3EA.fd85w7m+7w7l27PkUV4W50iGoRkhZpoFwoInNc5PQEUDV3BW3W30N5niFeiuw2nO2Vas0FNzgND750KhLxHw3F23vC9fOHzpUKN0oNEprxJga2tgJUpvnG8nwBVvBFTScv6+9u+aZU+6Vkb4x625SUnsIWt7g80A35SOy.ABf1auc3vgi9betUudgFAZRjHgqtkDQzPDCbhHhHhFQc0qdU.b8WL+xW9x3Ue0WEQDQDnqt5B6cu6Euy67NHmbxARkJEszRK3PG5PPmNcXVyZV32869c86JQVH986Gc0UWHkTRA.WOjjMu4MyB+6vjSmNw92+9wANvAfCGNfb4xQd4kGra2NznQCjJUJd8W+062i+pW8pvnQivjISvoSmnlZpAG6XGqe2eGNbf3iOdnWudnToRXxjInToR7a+s+VwmA762Opqt5PSM0DrZ0J5niNvYNyY..PJojB74yGLZzHhIlXvq+5uNN+4OON+4OO1xV1B74yWXquIzTQzue+n4laFVsZEojRJvqWuHszRC50qG+s+1eaXcMZqs1PFYjAZs0VQrwFKxHiLPM0TCN4IOIZt4lQFYjAjISFhJpnPlYlIra29.98Q3fDIRfToRgff.t7kuLLa1LrXwRu1OqVshKcoKgFarwgcHN974CVsZEQDQDhOC8oe5m1q1U0UWsX8.afDLXPwu+BUD683wCt3EuH17l2LhLxHwS8TO0vpMSDQ2sfANQDQDQindq25sPBIj.V1xVFVyZVi3JXUTQEEd3G9ggCGNfMa1fDIRfRkJwXFyXvW4q7UPzQG8fdYNO1Xi8lVgxBcMngtPEC78su8gcu6cK94Z0pESbhSDJTn.8zSOegmGsZ0hTSMU3vgCwPpTpTY+FfnBEJvBVvBvC8POD.f3xTenmADDDP2c2Mps1ZgMa1fACFPJojBxLyLgVsZwTlxTDa+Nb3.6bm6DG8nGE4jSNnt5pCYlYlPoRk2zyE8U8ppu9rPDDDfKWtPSM0DN0oNEN9wONF+3GOV7hWLl4Lmo3w50qWwoA2sp3iOd7DOwSbS2Sqe8qGQFYjPlLYXMqYMHxHiTr.kGZp08kEAAAbsqcMTUUUglatYnVsZXxjIwU2sab+BsZu4ymu9sHzOXHQhD30qW3wiGwywM1GGRnUUwabkrq+DJr6CbfCfVasUnUqVjc1Yiku7kCYxjMr+diHhtaBCbhHhHhts6FeI8yd1yhm+4edbricL7zO8SCiFMJ9h8g1uPElZqVsh+8+9eiILgIf7xKua4WTkFdBFLHl5TmJb5zIN9wONlwLlAV8pWMtu669FzEAZIRjfJqrRjXhIhXiMVwZpzvgOe9v3G+3A.v3G+3wQO5QwhVzh50T6JXvfnzRKEacqaEm5TmBUWc03XG6XH4jSFIkTRPud8Pud8H5niFJTn.JTnPLHBsZ0BOd7.2tcCOd7fKe4KCGNb.qVshVZoEbkqbEwUCw4Lm4fG6wdLjd5oOrtuFL5omdPEUTAN5QOJdvG7AwpV0pFVg4LT0XiMhW4UdETc0UC61siDSLQ7jO4ShksrkcSsAIRjfFarQTas0h4Mu4MrKd+1saGu268d3JW4JviGOPPP.KcoKEZznABBBh+sist0sBSlLgIMoIMf8I0We83W7K9Ent5pCtb4BpUqFEVXgn3hKFJUpbX0VIhn61v.mHhHhnaqTnPAxO+7wXFyXPqs1Jb5zI5pqtve3O7Gvm7IeB1vF1.l8rmMToRE73wCprxJQf.APgEVHLXv.hLxHQ6s2dXq9uP2Zl5TmJ14N2Ib4xEhJpnPbwE2P9bLiYLCHUpz9sV+LToPgBjc1YCAAAjQFYflZpo9ckxaricr3Ye1mE1saGM2by3Tm5T3JW4Jn81aGW5RWB0TSMhifpPAL0SO8.kJUJtJ5oPgB3wiGjVZoACFLf64dtGDarwhwO9wCSlLgniN5aagTnPgB73O9iiN5nCLu4MuvVw3dv5se62F+k+xeQLLG850iDSLw972SUqVMTpTIhJpnF1SotFarQrgMrAXylM3vgCXznQnRkJwQZmMa1DGkUQFYjC3e2vkKW3G8i9QXe6aehelToRQZokFznQyvpcRDQ2MhANQDQDQ2VIQhDTbwEiO8S+TTWc0g8t28h8u+8iKbgKflZpI7HOxif0st0ge3O7Gh23MdC7lu4aB4xkie7O9Giku7kCIRjvB+8c.jHQBRHgDFVmiuLJBygFUbACFDZ0p8lFobedJUpDJUpDIjPBH2byUbpVF5+CFLn3+5qqSnyanUNQAAAwQUyHgUrhUfkrjkLhTbqUqVMLXv.BDH.zoSGVxRVBxImbvku7kE2mP8YVrXAVsZEW3BW.50qGZznYP0m4zoSzQGcbSKz.lMaFwFarXJSYJvrYyHyLyDM2byniN5.acqaE+y+4+Dd73A4latHszRCVrXA50quOqgaABD.wDSLHojRBRkJEomd53m9S+oHiLxHrzGQDQ2sQRPNVzIhHhn6.Tc0UiJqrRb3CeXLu4MO709ZeM7nO5ihCe3CCAAA7jO4ShW60dMricrCDHP.rrksrQ5lLcGn1auc..DWbwAud8xoA0sIW8pWE0UWcvsa2H4jSFMzPCnpppRLHI4xkC2tcCud8ht5pKzYmcBiFMhYMqYg4N24NnBIq1ZqEu0a8VhiRIYxjA2tciKe4KiN6rSTe80CMZz.YxjAKVrf1ZqMwiM0TSEyctyEFLX.Oyy7LH5nitOuFgVgCkJUJl7jmLrXwBdsW60v7m+7wzm9zgd85CC8VDQzcG3HbhHhHhtivjlzjvjlzjD+4Se5SK9xpZznAiZTiBACFDNc5jSuEpecii5JtRDd6iVsZwC7.O..t9nKSlLYH93iGRjHAxkKGe7G+w3S9jOAs2d6PoRkX5Se5nvBKD4latC5QjkACFPIkTh3pHWSM0D10t1EZngFfWudQO8zCLYxDlwLlA9G+i+AZqs1PDQDAxM2bwhVzhPt4lq3zsq+nSmNL+4OeweNpnhBImbxXiabivjISH8zSG+5e8ud30YQDQ2kfANQDQDQ2QxjISnjRJAszRKn3hKFEVXgXe6aevpUqnvBKbjt4QD0OjHQBxN6rQ1YmM..16d2K1912Npt5pQf.AfVsZwi8XOFJojRv67NuCrYyFVwJVwWXcmJojRBIkTR..3RW5Rn7xKGe3G9gvoSmh6iNc5v2+6+8wbm6bwoN0oPjQFIxImbvDlvDtklpiJTn.O2y8bX1yd1nt5pC0We8C4yAQDc2JF3DQDQDcGI4xkiu2266gTSMUXwhETUUUAoRkhhJpHXxjoQ5lGQzfzV25VQUUUk3OOtwMNTPAE.AAAL1wNV30q2gbgi+3G+33+7e9OhgMoSmNjUVYgxJqLnSmNjbxIioMsoEVZ+pUqFETPAnfBJ.tb4JrbNIhn6FvZ3DQDQDcGMOd7fN6rSDHP.nRkJDarwNR2jHhFBppppvq9puJrXwBl0rlE95e8uNZt4lQ1Ym8sTA4thJp.ZznA6YO6AevG7APiFMXEqXEPlLYvjIS2zTykHhnQNLvIhHhHhHh9RkCGNfe+9gJUpPqs1Jd5m9oQ5omNV0pVERLwDQjQF4.Nk2750KrYyFN4IOI9A+fe.VxRVBV0pVE5omdvm8YeFLZzHN8oOMRHgDPd4k2sw6LhHh5OLvIhHhHhHhtsIXvf3C9fO.uvK7Bvtc6XpScpXhSbhHqrxBJUpDQDQDPPP.986Gd73ANb3.0TSM33G+3nolZBYjQF3ke4WFYkUVvmOe3zm9zPiFMvtc6HpnhBokVZiz2hDQDAF3DQDQDQDQi.Zu81wa+1uMZngFvktzkPyM2LzoSG762u3JQmGOdfMa1vnG8ngQiFwzl1zPokVp3JPXf.Afc61QDQDATqV8H7cDQDQ2HF3DQDQDQDQinb5zIZpolfBEJfMa1fe+9gZ0pgRkJgDIRPlYl4HcSjHhngHF3DQDQDQDQDQDQgUBizM.hHhHhHhHhHh9eKLvIhHhHhHhHhHhBqXfSDQDQDQDQDQDEVw.mHhHhHhHhHhHJrhANQDQDQDQDQDQTXECbhHhHhHhHhHhnvJF3DQDQDQDQDQDQgULvIhHhHhHhHhHhBqXfSDQDQDQDQDQDEVw.mHhHhHhHhHhHJrhANQDQDQDQDQDQTXECbhHhHhHhHhHhnvJF3DQDQDQDQDQDQgULvIhHhHhHhHhHhBqXfSDQDQDQDQDQDEVw.mHhHhHhHhHhHJrhANQDQDQDQDQDQTXECbhHhHhHhHhHhnvJF3DQDQDQDQDQDQgULvIhHhHhHhHhHhBqXfSDQDQDQDQDQDEVw.mHhHhHhHhHhHJrhANQDQDQDQDQDQTXECbhHhHhHhHhHhnvJF3DQDQDQDQDQDQgULvIhHhHhHhHhHhBqXfSDQDQDQDQDQDEVw.mHhHhHhHhHhHJrhANQDQDQDQDQDQTXECbhHhHhHhHhHhnvJF3DQDQDQDQDQDQgULvIhHhHhHhHhHhBqXfSDQDQDQDQDQDEVw.mHhHhHhHhHhHJrhANQDQDQDQDQDQTXECbhHhHhHhHhHhnvJF3DQDQDQDQDQDQgULvIhHhHhHhHhHhBqXfSDQDQDQDQDQDEVw.mHhHhHhHhHhHJr5+CHZhBxFDAndG.....IUjSD4pPfIH" ],
									"embed" : 1,
									"forceaspect" : 1,
									"id" : "obj-10",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 51.5, 28.649651934532301, 536.0, 309.335593220338978 ],
									"pic" : "demand.png"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Andale Mono",
									"fontsize" : 11.0,
									"id" : "obj-7",
									"linecount" : 17,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 166.0, 473.736280043265765, 497.0, 217.0 ],
									"text" : "In order to better support the data-driven (or 'top-down') programming\nconcept that is fundamental to how a Max patch works, the interface \nfor the Cluster-Engine has entirely reconceived for this environment. \n\nThe result is the 'chained' CLUSTERengine. \nThe interface is based on the idea that both domains and rules are\ncollected in sequence from top to bottom, like a chain : \n1) the domains provides the data\n2) which then are 'filtered' through rules *\n3) finally the engine receives all data and searches for a valid solution\n4) which it outputs as a score.\n\n\n* Note that the domain is not filtered 'for real' by the chain of rule —\n  this happens only when the engine receives all the required information \n  — but this is a conceptual representation that functions very well with\n  how we might imagine such rules to be applied to materials.",
									"textcolor" : [ 0.200000002980232, 0.200000002980232, 0.200000002980232, 1.0 ],
									"varname" : "autohelp_top_digest[4]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Andale Mono",
									"fontsize" : 11.0,
									"id" : "obj-1",
									"linecount" : 7,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 595.5, 37.649651934532301, 392.0, 93.0 ],
									"text" : "The original interface for the Cluster-Engine was created for the PWGL visual programming language. \n\nThat kind of environment relies on a demand-driven or 'bottom-up' programming structure, where lower parts of the tree are evaluated first and retrieve their arguments\nfrom the higher parts, ",
									"textcolor" : [ 0.200000002980232, 0.200000002980232, 0.200000002980232, 1.0 ],
									"varname" : "autohelp_top_digest[2]"
								}

							}
 ],
						"lines" : [  ],
						"styles" : [ 							{
								"name" : "MOZ-numint",
								"default" : 								{
									"fontsize" : [ 17.0 ],
									"fontname" : [ "Menlo Regular" ],
									"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "MOZ-param",
								"default" : 								{
									"fontsize" : [ 16.0 ],
									"fontname" : [ "Menlo Regular" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "MOZ-title",
								"default" : 								{
									"fontsize" : [ 22.062094355029235 ],
									"fontname" : [ "Andale Mono" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "MOZ-umenu",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
										"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
										"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.5,
										"autogradient" : 0.0
									}
,
									"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"fontname" : [ "Menlo Regular" ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontface" : [ 2 ]
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
									"fontsize" : [ 18.0 ],
									"fontname" : [ "Herculanum" ]
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
									"fontsize" : [ 13.0 ],
									"fontname" : [ "Arial" ],
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
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
										"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
									"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 951.0, 348.752212389380531, 66.0, 20.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p 1-chained?"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"hidden" : 1,
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1097.0, 729.0 ],
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
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"title" : "under the hood...",
						"boxes" : [ 							{
								"box" : 								{
									"htabcolor" : [ 0.807843137254902, 0.898039215686275, 0.909803921568627, 0.0 ],
									"id" : "obj-17",
									"maxclass" : "tab",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 353.0, 533.0, 138.0, 188.0 ],
									"tabcolor" : [ 0.349019607843137, 0.349019607843137, 0.349019607843137, 0.0 ],
									"tabs" : [ "1", "2", "3", "4", "5", "6", "7" ],
									"textcolor" : [ 0.968627450980392, 0.968627450980392, 0.968627450980392, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Andale Mono",
									"id" : "obj-16",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 514.0, 549.0, 571.0, 20.0 ],
									"text" : "(Move your cursor above items to get a description !)"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 754.0, 79.0, 652.0, 782.0 ],
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
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 44.0, 74.0, 49.0, 22.0 ],
													"text" : "qlim 41"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "int", "stop" ],
													"patching_rect" : [ 119.0, 134.0, 46.0, 22.0 ],
													"text" : "t i stop"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 44.0, 164.0, 55.0, 22.0 ],
													"text" : "pipe 100"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 44.0, 104.0, 94.0, 22.0 ],
													"text" : "sel -1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 148.0, 392.0, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-19",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 44.0, 442.0, 181.0, 35.0 ],
													"text" : "\"(Move your cursor above items to get a description !)\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 198.0, 92.0, 29.5, 22.0 ],
													"text" : "+ 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 511.0, 549.0, 72.0, 22.0 ],
													"text" : "prepend set"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-17",
													"linecount" : 12,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1052.285714285714221, 490.0, 360.0, 169.0 ],
													"text" : "\"Voice domains accepts a list of all domains for all voices  defined by the user. If set to NIL or () the engine will produce an error : there is nothing to search for !\n\nThe list is formatted as follows : \n( rhythm-domain-voice1 pitch-domain-voice1\n  rhythm-domain-voice2 pitch-domain-voice2\n  rhythm-domain-voice3 pitch-domain-voice3 ... ).\n\nThe exact syntax for voice domains is explained in the dedicated overview.\n \""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"linecount" : 11,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1001.714285714285779, 313.0, 399.0, 156.0 ],
													"text" : "\"Metric domain, is just what you would guess : a list of all candidates \nin the metric domain, as defined by the user. If set to NIL or (), \na (4 4) time signature will be used as the default candidate for the search.\n\nThe list of time signatures is usually formatted such as \n'( (7 8) \n   (3 4) \n   (5 8) ... ), \nbut it can also follow a special format produced by the metric-domain module in advanced mode.\n \""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"linecount" : 2,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 841.0, 161.0, 479.0, 35.0 ],
													"text" : "\"Rules must receive a list with all the rules (as shown above) that the user defined in the chain. NIL or () amounts to no rule at all.\""
												}

											}
, 											{
												"box" : 												{
													"hidden" : 1,
													"id" : "obj-13",
													"linecount" : 7,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 524.5, 306.0, 473.0, 102.0 ],
													"text" : "\"Debug? needs to be set to T or true in order for the debug tools to work properly. It will make sure that the last 100 steps of the search \nare preserved and can be observed in the CLUSTERdebug module.\n\nThis parameter should be set to NIL or () by default if you don't need \nto use those features, as the debug mode might slow down the search \nslightly to store all that data.\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 519.428571428571445, 244.0, 379.0, 49.0 ],
													"text" : "\"Random? determines if the candidates in the domain should be tried \nin random order, or if the engine always should try them in the order \nthey appear in the domain.\""
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"linecount" : 3,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 353.714285714285722, 392.0, 384.0, 49.0 ],
													"text" : "\"The number of variables is the length of the generated score. \nIt determines how many candidates from the domain should be picked \nby one engine before stopping the search and returning a solution.\""
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-11",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 511.0, 586.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-10",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 63.0, 12.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 8,
													"numoutlets" : 8,
													"outlettype" : [ "bang", "bang", "bang", "bang", "bang", "bang", "bang", "" ],
													"patching_rect" : [ 198.0, 122.0, 1144.0, 22.0 ],
													"text" : "sel 1 2 3 4 5 6 7"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"linecount" : 5,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 198.0, 161.0, 431.0, 76.0 ],
													"text" : "\"This is just the name of the main interface to run the Cluster-Engine in Lisp.\n\nNote that ce:: or cluster-engine:: is a prefix or label for every function \ndefined in the Cluster-Engine 'package'. A package is a protected 'name-space' \nfor a library written in Lisp.\""
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
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-2", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-4", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-9", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-9", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-9", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-9", 5 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-9", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"source" : [ "obj-9", 6 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "MOZ-numint",
												"default" : 												{
													"fontsize" : [ 17.0 ],
													"fontname" : [ "Menlo Regular" ],
													"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-param",
												"default" : 												{
													"fontsize" : [ 16.0 ],
													"fontname" : [ "Menlo Regular" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-title",
												"default" : 												{
													"fontsize" : [ 22.062094355029235 ],
													"fontname" : [ "Andale Mono" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-umenu",
												"default" : 												{
													"bgfillcolor" : 													{
														"type" : "color",
														"color1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
														"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
														"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
														"angle" : 270.0,
														"proportion" : 0.5,
														"autogradient" : 0.0
													}
,
													"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
													"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
													"fontname" : [ "Menlo Regular" ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontface" : [ 2 ]
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
													"fontsize" : [ 18.0 ],
													"fontname" : [ "Herculanum" ]
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
													"fontsize" : [ 13.0 ],
													"fontname" : [ "Arial" ],
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
													"bgfillcolor" : 													{
														"type" : "gradient",
														"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
														"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
														"angle" : 270.0,
														"proportion" : 0.39,
														"autogradient" : 0
													}
,
													"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
													"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
													"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ]
									}
,
									"patching_rect" : [ 514.0, 525.0, 44.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p texts"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Menlo Regular",
									"id" : "obj-7",
									"linecount" : 13,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 352.0, 533.0, 139.0, 188.0 ],
									"text" : "(ce::clusterengine\n\n no-of-variables\n\n rnd?\n\n debug?\n\n rules\n\n metric-domain\n\n list-of-domains)"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-5",
									"linecount" : 7,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 623.0, 88.141870989917493, 443.0, 96.0 ],
									"text" : "If you are an absolute beginner with Lisp, you can skip this part\nunless you are very curious to know what happens technically\neach time the chainedCLUSTER system is evaluated.\n\nIt is absolutely not mandatory to know this, but it can be very helpful sometimes while debugging if something doesn't work well\nin your rules :)",
									"textcolor" : [ 0.200000002980232, 0.200000002980232, 0.200000002980232, 1.0 ],
									"varname" : "autohelp_top_digest[3]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Andale Mono",
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 352.0, 503.0, 662.0, 20.0 ],
									"text" : "The structure of arguments for the main CLUSTERENGINE function in Lisp is the following :"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Andale Mono",
									"fontsize" : 35.431652581370919,
									"id" : "obj-22",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 492.0, 301.842105263157919, 44.0, 46.0 ],
									"text" : "="
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 346.0, 314.5, 128.0, 22.0 ],
									"text" : "#'(lambda (x y) (> y x))"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-65",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.r-one-engine.maxpat",
									"numinlets" : 5,
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 20.0, 277.0, 294.0, 97.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 62.0, 427.141870989917493, 117.0, 22.0 ],
									"reg_data_0000000000" : [ "[", "ce::clusterengine", 12, "t", "[", "]", "[", "pw::flat", "[", "pw::x-append", "[", "ce::r-index-rhythms-one-voice", "[", "function", "[", "lambda", "[", "x", "]", "[", "=", "x", "3/8", "]", "]", "]", "[", "quote", "[", 0, "]", "]", "[", "quote", "[", 0, "]", "]", ":position-for-duration", ":true/false", 1, "]", "[", "]", "]", "]", "[", "quote", "[", "[", 4, 4, "]", "]", "]", "[", "quote", "[", "[", "[", "1/4", "]", "[", "1/8", "]", "[", "1/16", "]", "[", "3/8", "]", "]", "[", "[", 60, "]", "[", 61, "]", "[", 62, "]", "[", 63, "]", "[", 64, "]", "[", 65, "]", "[", 66, "]", "[", 67, "]", "[", 68, "]", "[", 69, "]", "[", 70, "]", "[", 71, "]", "[", 72, "]", "]", "]", "]", "]" ],
									"reg_data_count" : [ 1 ],
									"saved_object_attributes" : 									{
										"embed" : 1,
										"versionnumber" : 80102
									}
,
									"text" : "bach.reg @embed 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-13",
									"linecount" : 7,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 208.5, 390.141870989917493, 611.0, 96.0 ],
									"text" : "Every module in the chain of domains and rules will add to the Lisp code that\nis eventually retrieved by the chainedCLUSTER module. The code will not be directly \nvisible to the user, but if you connect a bach.reg after the 3rd outlet of chainedCLUSTER, \nthe code will be retrieved after evaluation and can be studied if needed.\n\nThe bach.reg box to the left contains Lisp code that was generated by example (a) \nunder the Index rules (one engine) overview. Double click on it to see the code.",
									"textcolor" : [ 0.200000002980232, 0.200000002980232, 0.200000002980232, 1.0 ],
									"varname" : "autohelp_top_digest[2]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Andale Mono",
									"id" : "obj-8",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 531.0, 302.0, 318.0, 47.0 ],
									"text" : "(ce::r-rhythms-one-voice \n       #'(lambda (x y) (> y x)) \n      (quote (0)) :durations :true/false 1)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-3",
									"linecount" : 19,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 10.5, 11.141870989917493, 585.0, 250.0 ],
									"text" : "A calculation (i.e. a \"search\") in the Cluster-Engine is done using the SBCL \n(Steel Bank Common Lisp) compiler, just like other Lisp applications in PWforMax.\n\nThe Max environment, in combination with the bach package, provides a graphical user \ninterface allowing to generate the Lisp commands necessary to trigger the calculation. \n\nThe idea for this Max port is to both simplify the use of the system, and to give \na better overview of a particular problem. Max also makes interactive applications \npossible, for example by dynamically changing the rule statements before they are \nused in a search.\n\nWhile a user does not need to know the details of how the user interface interacts \nwith SBCL, there is one place in particular where the need for Lisp formated code \nbecomes visible : in the rule statement (sometimes refered to as 'the rule itself'\nor 'lambda rule part') that is attached to rule accessors such as the r-one-engine \nand r-rhythm-pitch-one-voice modules.\n\nThis is an example of the Lisp code (to the right) resulting from the r-one-voice \nmodule (with rhythm selected as rule parameter) with the attached rule statement.",
									"textcolor" : [ 0.200000002980232, 0.200000002980232, 0.200000002980232, 1.0 ],
									"varname" : "autohelp_top_digest[1]"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"hidden" : 1,
									"midpoints" : [ 481.5, 731.0, 502.5, 731.0, 502.5, 515.0, 523.5, 515.0 ],
									"source" : [ "obj-17", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 4 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-65", 1 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "MOZ-numint",
								"default" : 								{
									"fontsize" : [ 17.0 ],
									"fontname" : [ "Menlo Regular" ],
									"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "MOZ-param",
								"default" : 								{
									"fontsize" : [ 16.0 ],
									"fontname" : [ "Menlo Regular" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "MOZ-title",
								"default" : 								{
									"fontsize" : [ 22.062094355029235 ],
									"fontname" : [ "Andale Mono" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "MOZ-umenu",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
										"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
										"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.5,
										"autogradient" : 0.0
									}
,
									"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"fontname" : [ "Menlo Regular" ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontface" : [ 2 ]
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
									"fontsize" : [ 18.0 ],
									"fontname" : [ "Herculanum" ]
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
									"fontsize" : [ 13.0 ],
									"fontname" : [ "Arial" ],
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
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
										"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
									"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 975.802469135802539, 430.629455854819753, 94.0, 20.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p 5-under-the-hood"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.301961, 0.301961, 0.301961, 0.0 ],
					"bgcolor2" : [ 0.301961, 0.301961, 0.301961, 0.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 0.0 ],
					"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 0.0 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "color",
					"fontface" : 3,
					"fontsize" : 11.0,
					"gradient" : 1,
					"id" : "obj-27",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 810.666606903076172, 193.240380706812687, 225.0, 21.0 ],
					"text" : "https://github.com/tanders/cluster-engine",
					"textcolor" : [ 0.270588248968124, 0.329411774873734, 0.996078431606293, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 7.608435672091255,
					"hidden" : 1,
					"id" : "obj-21",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 818.166606903076172, 204.6875, 94.0, 25.0 ],
					"text" : ";\rmax launchbrowser $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-3",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 645.666606903076172, 142.6875, 439.0, 58.0 ],
					"text" : "This project has been made possible thanks to the huge work made the past few years by Torsten Anders, who reviewed and helped to maintain the Lisp sources of the Cluster-Engine library. \nThey can be accessed freely on this page :"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-1",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 645.666606903076172, 219.6875, 439.0, 96.0 ],
					"text" : "Some readings on the subject:\n\nSandred (2009), Approaches to Using Rules as a Composition Method\nContemporary Music Review. 28(2), pp.149-165\n\nSandred (2020), Constraint-Solving Systems in Music Creation,\nHandbook of Artificial Intelligence for Music (Miranda and al.)",
					"textcolor" : [ 0.200000002980232, 0.200000002980232, 0.200000002980232, 1.0 ],
					"varname" : "autohelp_top_digest[5]"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 10.0,
					"hidden" : 1,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 1097.0, 729.0 ],
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
						"showontab" : 1,
						"assistshowspatchername" : 0,
						"title" : "demo [a]",
						"boxes" : [ 							{
								"box" : 								{
									"fontsize" : 8.590390428109218,
									"hidden" : 1,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 54.0, 1.65641804077697, 53.0, 18.0 ],
									"text" : "loadmess 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 15.0, 24.256410256410248, 68.0, 22.0 ],
									"text" : "key_trigger"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 10.0,
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 15.0, 1.65641804077697, 35.0, 20.0 ],
									"text" : "active"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-96",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.voice-domain.maxpat",
									"numinlets" : 3,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 107.0, 233.0, 30.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-3",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.voice-domain.maxpat",
									"numinlets" : 3,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 147.0, 233.0, 30.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 247.0, 444.0, 55.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"versionnumber" : 80102
									}
,
									"text" : "bach.reg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 342.0, 355.0, 63.0, 22.0 ],
									"text" : "bypass $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-30",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 408.5, 350.0, 432.0, 32.0 ],
									"text" : "Just turn this toggle on and off (1 will bypass all rules)\nand see the difference between results with and without rules...",
									"textcolor" : [ 0.50196099281311, 0.50196099281311, 0.50196099281311, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 370.5, 323.0, 89.0, 22.0 ],
									"text" : "loadmess set 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 342.0, 322.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 342.0, 383.0, 136.0, 22.0 ],
									"text" : "s bypass-all-rules-demo"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 229.0, 482.099505026363545, 153.0, 22.0 ],
									"text" : "loadmess midichannels 1 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-25",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 309.5, 428.099514563106709, 472.0, 58.0 ],
									"text" : "3) The whole code generated from domains and rules modules is eventually sent to the chainedCLUSTER module, which triggers the calculation, and returns the result properly formatted for bach.score.\nYou can observe it be double-clicking on the bach.reg",
									"textcolor" : [ 0.50196099281311, 0.50196099281311, 0.50196099281311, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-24",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 255.5, 280.46666666666664, 472.0, 32.0 ],
									"text" : "2) After the search-space, the chain continues inside this sub-patch, \nwhere some rules are declared (and explained).",
									"textcolor" : [ 0.50196099281311, 0.50196099281311, 0.50196099281311, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 19.134655606939571,
									"id" : "obj-23",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 56.0, 46.189743589743586, 109.0, 29.0 ],
									"text" : "<-",
									"textcolor" : [ 0.200000002980232, 0.200000002980232, 0.200000002980232, 1.0 ],
									"varname" : "autohelp_top_digest[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 647.625, 703.0, 95.0, 22.0 ],
									"text" : "bach.ezmidiplay"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 79.0, 1372.0, 782.0 ],
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
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 836.5, 397.0, 69.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80102
													}
,
													"text" : "bach.group"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-28",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 838.0, 307.0, 49.0, 22.0 ],
													"text" : "42 66 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-29",
													"maxclass" : "newobj",
													"numinlets" : 4,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 836.5, 353.133343040943259, 88.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80102
													}
,
													"text" : "bach.arithmser"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 573.5, 397.0, 69.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80102
													}
,
													"text" : "bach.group"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 575.0, 307.0, 49.0, 22.0 ],
													"text" : "60 84 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 4,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 573.5, 353.133343040943259, 88.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80102
													}
,
													"text" : "bach.arithmser"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-22",
													"index" : 4,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 839.0, 599.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 309.25, 187.0, 325.0, 22.0 ],
													"text" : "[ 1/12 ] [ 1/24 ] [ 1/16 ] [ 1/8 ] [ 1/4 ] [ 1/2 ] [ 3/8 ] [ 3/4 ] [ 5/8 ]"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-19",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1086.0, 317.0, 172.0, 22.0 ],
													"text" : "[ 4 4 ] [ 3 4 ] [ 2 4 ] [ 5 8 ] [ 7 8 ]"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-17",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 305.0, 599.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1086.0, 276.0, 54.0, 22.0 ],
													"text" : "deferlow"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1086.0, 353.133343040943259, 111.0, 22.0 ],
													"text" : "bach.prepend easy"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 380.800005540466316, 370.400000929832458, 57.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80102
													}
,
													"text" : "bach.join"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 380.800005540466316, 301.200000464916229, 29.5, 22.0 ],
													"text" : "t l l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 434.800005540466373, 328.400000929832458, 57.0, 22.0 ],
													"text" : "bach.* -1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-10",
													"index" : 3,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 570.0, 599.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-9",
													"index" : 5,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 1098.0, 599.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 117.0, 346.0, 29.5, 22.0 ],
													"text" : "50"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 44.0, 276.0, 93.0, 22.0 ],
													"text" : "t b b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 117.0, 391.0, 103.0, 22.0 ],
													"text" : "s demo_variables"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 45.0, 323.0, 54.0, 22.0 ],
													"text" : "deferlow"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 5,
													"outlettype" : [ "bang", "bang", "bang", "bang", "bang" ],
													"patching_rect" : [ 45.0, 83.0, 1076.0, 22.0 ],
													"text" : "t b b b b b"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-2",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 45.0, 599.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 45.0, 14.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-15", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 1 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"order" : 0,
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"order" : 1,
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"source" : [ "obj-3", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-3", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-3", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-3", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"source" : [ "obj-6", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "MOZ-numint",
												"default" : 												{
													"fontsize" : [ 17.0 ],
													"fontname" : [ "Menlo Regular" ],
													"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-param",
												"default" : 												{
													"fontsize" : [ 16.0 ],
													"fontname" : [ "Menlo Regular" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-title",
												"default" : 												{
													"fontsize" : [ 22.062094355029235 ],
													"fontname" : [ "Andale Mono" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-umenu",
												"default" : 												{
													"bgfillcolor" : 													{
														"type" : "color",
														"color1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
														"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
														"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
														"angle" : 270.0,
														"proportion" : 0.5,
														"autogradient" : 0.0
													}
,
													"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
													"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
													"fontname" : [ "Menlo Regular" ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontface" : [ 2 ]
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
													"fontsize" : [ 18.0 ],
													"fontname" : [ "Herculanum" ]
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
													"fontsize" : [ 13.0 ],
													"fontname" : [ "Arial" ],
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
													"bgfillcolor" : 													{
														"type" : "gradient",
														"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
														"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
														"angle" : 270.0,
														"proportion" : 0.39,
														"autogradient" : 0
													}
,
													"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
													"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
													"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ]
									}
,
									"patching_rect" : [ 119.0, 51.256410256410248, 239.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p domains-init"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 119.0, 24.256410256410248, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 7.980418728995699,
									"hidden" : 1,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 56.0, 90.256410256410248, 81.0, 17.0 ],
									"text" : "loadmess collapse 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 32.0, 51.256410256410248, 22.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-13",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 370.5, 24.256410256410248, 373.0, 45.0 ],
									"text" : "To trigger an eValuation, send a bang \nto the CLUSTERvoicedomain module below\n(if you are very nostalgic, just type the v key :)",
									"textcolor" : [ 0.200000002980232, 0.200000002980232, 0.200000002980232, 1.0 ],
									"varname" : "autohelp_top_digest[2]"
								}

							}
, 							{
								"box" : 								{
									"bwcompatibility" : 80102,
									"clefs" : [ "G", "FG" ],
									"defaultnoteslots" : [ "null" ],
									"embed" : 0,
									"enharmonictable" : [ "default", "default" ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidevoices" : [ 0, 0 ],
									"id" : "obj-5",
									"keys" : [ "CM", "CM" ],
									"loop" : [ "[", 1, 1, 0, "]", "[", 1, 2, 0, "]" ],
									"maxclass" : "bach.score",
									"midichannels" : [ 1, 1 ],
									"numinlets" : 7,
									"numoutlets" : 9,
									"numparts" : [ 1, 1 ],
									"numvoices" : 2,
									"out" : "nnnnnnnn",
									"outlettype" : [ "", "", "", "", "", "", "", "", "bang" ],
									"patching_rect" : [ 15.0, 516.141870989917493, 742.0, 177.0 ],
									"pitcheditrange" : [ "null" ],
									"senddoneatstartup" : 0,
									"showmeasurenumbers" : [ 1, 1 ],
									"stafflines" : [ 5, 5 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"versionnumber" : 80102,
									"voicenames" : [ "[", "]", "[", "]" ],
									"voicespacing" : [ 0.0, 26.0, 26.0 ],
									"zoom" : 99.58984375
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-16",
									"linecount" : 6,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 370.5, 99.0, 479.0, 83.0 ],
									"text" : "1) The domains — which values are allowed for rhythm, pitch and meter, \nbefore adding any rule — are defined inside this init patch. \nSometimes this is referred to as the 'search-space'. \n\nWe will see in later tutorials how a domain is constructed and \nwhich kinds of values are possible.",
									"textcolor" : [ 0.50196099281311, 0.50196099281311, 0.50196099281311, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-35",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.metric-domain.maxpat",
									"numinlets" : 2,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 188.0, 219.0, 39.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 28.521970576114757,
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 79.0, 1372.0, 782.0 ],
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
													"fontname" : "Andale Mono",
													"id" : "obj-13",
													"linecount" : 4,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 939.0, 1202.0, 419.0, 60.0 ],
													"text" : "This rule, provided by the JBSrules module from PWforMax,\nworks the following : if a melodic interval is bigger\nthan a tritone, the following interval has to be \nless than a third in the opposite direction."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-8",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 537.0, 900.363091394893218, 413.0, 33.0 ],
													"text" : "This rule allows a restricted list of harmonic intervals\nthat can happen at any point in the score."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-29",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 264.0, 802.0, 171.0, 22.0 ],
													"text" : "model [ 2 ] [ 5 ] [ 7 ] [ 10 ] [ 12 ]"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 52.0, 1314.363091394893218, 134.0, 22.0 ],
													"text" : "r bypass-all-rules-demo"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 52.0, 543.363091394893218, 134.0, 22.0 ],
													"text" : "r bypass-all-rules-demo"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 52.0, 85.0, 134.0, 22.0 ],
													"text" : "r bypass-all-rules-demo"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 322.0, 1141.0, 29.5, 22.0 ],
													"text" : "0 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 322.0, 1113.363091394893218, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 264.0, 763.363091394893218, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 623.625, 1071.0, 77.0, 22.0 ],
													"text" : "loadmess 53"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-10",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "pmc.jbs_rules.maxpat",
													"numinlets" : 9,
													"numoutlets" : 2,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 581.0, 1124.0, 356.0, 203.0 ],
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
													"id" : "obj-31",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-pmc-one-engine.maxpat",
													"numinlets" : 3,
													"numoutlets" : 2,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 195.0, 1171.0, 273.0, 68.0 ],
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
													"id" : "obj-4",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-chords.maxpat",
													"numinlets" : 4,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 191.0, 847.0, 304.0, 140.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-28",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 551.0, 1673.0, 441.0, 47.0 ],
													"text" : "This rules establishes a hierarchy of voice 1 over voice 0, \ni.e. voice 1 is the fundamental rhythmic voice, \nand voice 0 will follow it while adding more detail."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-27",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 479.0, 1443.0, 513.0, 47.0 ],
													"text" : "This rules makes sure that duration values, especially tuplets, \nwill respect the metric grid declared by default by the metric-domain.\nThis is a condition for a more readable score using tuplets."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-25",
													"linecount" : 4,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 553.0, 524.363091394893218, 413.0, 60.0 ],
													"text" : "These two rules, almost identical, force a given pitch as the starting point for voices 0 and 1, respectively 64 and 62.\nNote they share the same rule_parameter message..."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-24",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 562.0, 205.666668623685609, 441.0, 33.0 ],
													"text" : "This rule forbids local repetitions inside a given voice.\n60 62 62... will not be possible, but 60 62 60 is allowed..."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-19",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 277.0, 1384.363091394893218, 29.5, 22.0 ],
													"text" : "0 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 271.027780095736262, 558.512015956111782, 29.5, 22.0 ],
													"text" : "1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 553.0, 654.363091394893218, 118.0, 22.0 ],
													"text" : "(lambda (x) (= x 60))"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-17",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-index-one-engine.maxpat",
													"numinlets" : 5,
													"numoutlets" : 2,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 191.0, 590.0, 342.0, 137.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-78",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 216.0, 1556.029760031028673, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-44",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 259.75, 101.233333247371547, 29.5, 22.0 ],
													"text" : "0 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-49",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 206.777775923411014, 71.233333247371547, 235.0, 22.0 ],
													"text" : "rule_parameter pitches, rule_input :pitches"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-50",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 225.277775923411014, 36.0, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-51",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-one-engine.maxpat",
													"numinlets" : 5,
													"numoutlets" : 2,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 191.0, 137.0, 294.0, 97.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 525.777775923411014, 172.166668623685609, 123.0, 22.0 ],
													"text" : "(lambda (x y) (/= x y))"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-42",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 271.027780095736262, 342.512015956111782, 29.5, 22.0 ],
													"text" : "0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-41",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 310.777775923410957, 342.512015956111782, 131.0, 22.0 ],
													"text" : "rule_parameter pitches"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-39",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 225.277775923411014, 291.363091394893218, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 553.0, 443.363091394893218, 118.0, 22.0 ],
													"text" : "(lambda (x) (= x 65))"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-6",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-index-one-engine.maxpat",
													"numinlets" : 5,
													"numoutlets" : 2,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 191.0, 379.0, 342.0, 137.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-40",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 208.777775923411014, 1314.363091394893218, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 299.666666666666686, 1621.263093278399992, 29.5, 22.0 ],
													"text" : "1 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 216.0, 1594.263093278399992, 117.0, 22.0 ],
													"text" : "rule_effect :dur->dur"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-21",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-rhythm-hierarchy.maxpat",
													"numinlets" : 4,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 191.0, 1652.0, 345.0, 89.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 208.777775923411014, 1355.363091394893218, 120.0, 22.0 ],
													"text" : "rule_effect :durations"
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-64",
													"lockeddragscroll" : 0,
													"maxclass" : "bpatcher",
													"name" : "cluster.r-metric-hierarchy.maxpat",
													"numinlets" : 4,
													"numoutlets" : 1,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "" ],
													"patching_rect" : [ 191.0, 1420.0, 277.0, 93.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-2",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 191.0, 1759.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 191.0, 10.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 2 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 1 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 1 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 4 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 4 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-17", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-64", 1 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 1 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"order" : 1,
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-64", 0 ],
													"order" : 0,
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 1 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-31", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-64", 0 ],
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"midpoints" : [ 234.777775923411014, 544.9375536755025, 280.527780095736262, 544.9375536755025 ],
													"order" : 1,
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-41", 0 ],
													"midpoints" : [ 234.777775923411014, 326.9375536755025, 320.277775923410957, 326.9375536755025 ],
													"order" : 0,
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"midpoints" : [ 234.777775923411014, 326.9375536755025, 280.527780095736262, 326.9375536755025 ],
													"order" : 2,
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"midpoints" : [ 218.277775923411014, 1344.863091394893218, 286.5, 1344.863091394893218 ],
													"order" : 0,
													"source" : [ "obj-40", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"order" : 1,
													"source" : [ "obj-40", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"midpoints" : [ 320.277775923410957, 530.756007978055891, 200.5, 530.756007978055891 ],
													"order" : 1,
													"source" : [ "obj-41", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"order" : 0,
													"source" : [ "obj-41", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 1 ],
													"source" : [ "obj-42", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 1 ],
													"source" : [ "obj-44", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 0 ],
													"source" : [ "obj-49", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-64", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 0 ],
													"order" : 0,
													"source" : [ "obj-50", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-49", 0 ],
													"order" : 1,
													"source" : [ "obj-50", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-52", 0 ],
													"source" : [ "obj-51", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 4 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"source" : [ "obj-6", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-64", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 0 ],
													"order" : 1,
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"order" : 0,
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"midpoints" : [ 225.5, 1586.146426654714332, 309.166666666666686, 1586.146426654714332 ],
													"order" : 0,
													"source" : [ "obj-78", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"order" : 1,
													"source" : [ "obj-78", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"order" : 2,
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"order" : 1,
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"order" : 0,
													"source" : [ "obj-9", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "MOZ-numint",
												"default" : 												{
													"fontsize" : [ 16.95834 ],
													"fontname" : [ "Menlo Regular" ],
													"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-param",
												"default" : 												{
													"fontsize" : [ 16.0 ],
													"fontname" : [ "Menlo Regular" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-title",
												"default" : 												{
													"fontsize" : [ 22.062093999999998 ],
													"fontname" : [ "Andale Mono" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-umenu",
												"default" : 												{
													"bgfillcolor" : 													{
														"type" : "color",
														"color1" : [ 0.996078, 0.996078, 0.996078, 1.0 ],
														"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
														"color" : [ 0.996078, 0.996078, 0.996078, 1.0 ],
														"angle" : 270.0,
														"proportion" : 0.5,
														"autogradient" : 0.0
													}
,
													"color" : [ 0.996078, 0.996078, 0.996078, 1.0 ],
													"elementcolor" : [ 0.996078, 0.996078, 0.996078, 1.0 ],
													"fontname" : [ "Menlo Regular" ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontface" : [ 2 ]
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
													"fontsize" : [ 18.0 ],
													"fontname" : [ "Herculanum" ]
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
													"fontsize" : [ 13.0 ],
													"fontname" : [ "Arial" ],
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
													"bgfillcolor" : 													{
														"type" : "gradient",
														"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
														"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
														"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
														"angle" : 270.0,
														"proportion" : 0.39,
														"autogradient" : 0
													}
,
													"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
													"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
													"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ]
									}
,
									"patching_rect" : [ 15.0, 280.46666666666664, 178.0, 40.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p rules-inside"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-38",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 179.125, 364.099514563106709, 101.0, 32.0 ],
									"text" : "kill process\nif gets stuck",
									"textcolor" : [ 0.200000002980232, 0.200000002980232, 0.200000002980232, 1.0 ],
									"varname" : "autohelp_top_digest[3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 201.875, 394.099514563106709, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 106.125, 340.0, 101.0, 22.0 ],
									"text" : "r demo_variables"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 106.125, 369.099514563106709, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 106.125, 395.099514563106709, 73.0, 22.0 ],
									"text" : "variables $1"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 316.0, 77.0, 22.0 ],
									"text" : "loadmess 90"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 207.0, 253.0, 640.0, 480.0 ],
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
													"comment" : "",
													"id" : "obj-6",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 103.125, 63.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 103.125, 161.0, 72.0, 22.0 ],
													"text" : "prepend set"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-2",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 103.125, 232.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 192.125, 161.0, 109.0, 22.0 ],
													"text" : "prepend tempo set"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 303.0, 161.0, 137.0, 22.0 ],
													"text" : "loadmess randompath 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-4",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 192.125, 232.0, 30.0, 30.0 ]
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
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"midpoints" : [ 112.625, 207.0, 112.625, 207.0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"order" : 0,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"order" : 1,
													"source" : [ "obj-6", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 40.0, 344.0, 34.0, 22.0 ],
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
									"id" : "obj-8",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 40.125, 369.099514563106709, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.125, 395.099514563106709, 59.0, 22.0 ],
									"text" : "tempo $1"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-18",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.engine.maxpat",
									"numinlets" : 2,
									"numoutlets" : 3,
									"offset" : [ -2.0, -4.0 ],
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 15.0, 428.099514563106709, 205.875, 75.999990463256836 ],
									"viewvisibility" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"hidden" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"midpoints" : [ 49.625, 422.099514563106709, 24.5, 422.099514563106709 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 2 ],
									"midpoints" : [ 293.5, 142.0, 238.5, 142.0 ],
									"source" : [ "obj-14", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"order" : 1,
									"source" : [ "obj-14", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 1 ],
									"midpoints" : [ 348.5, 181.0, 224.5, 181.0 ],
									"source" : [ "obj-14", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 2 ],
									"source" : [ "obj-14", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 1 ],
									"order" : 0,
									"source" : [ "obj-14", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"midpoints" : [ 128.5, 94.0, 24.5, 94.0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"hidden" : 1,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"midpoints" : [ 211.375, 514.099505026363545, 233.9375, 514.099505026363545, 233.9375, 433.0, 256.5, 433.0 ],
									"source" : [ "obj-18", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"order" : 2,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"hidden" : 1,
									"order" : 1,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"hidden" : 1,
									"order" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"midpoints" : [ 41.5, 94.0, 24.5, 94.0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"hidden" : 1,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
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
									"destination" : [ "obj-18", 1 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"hidden" : 1,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-5", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"hidden" : 1,
									"midpoints" : [ 238.5, 510.570935494958746, 24.5, 510.570935494958746 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"hidden" : 1,
									"source" : [ "obj-7", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"midpoints" : [ 115.625, 422.099514563106709, 24.5, 422.099514563106709 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-96", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "MOZ-numint",
								"default" : 								{
									"fontsize" : [ 17.0 ],
									"fontname" : [ "Menlo Regular" ],
									"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "MOZ-param",
								"default" : 								{
									"fontsize" : [ 16.0 ],
									"fontname" : [ "Menlo Regular" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "MOZ-title",
								"default" : 								{
									"fontsize" : [ 22.062094355029235 ],
									"fontname" : [ "Andale Mono" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "MOZ-umenu",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
										"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
										"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.5,
										"autogradient" : 0.0
									}
,
									"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"fontname" : [ "Menlo Regular" ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontface" : [ 2 ]
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
									"fontsize" : [ 18.0 ],
									"fontname" : [ "Herculanum" ]
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
									"fontsize" : [ 13.0 ],
									"fontname" : [ "Arial" ],
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
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
										"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
									"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 957.681481481481455, 369.221523255740351, 60.0, 20.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p 2-demo-a"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 36.248580683378833,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 230.5, 37.105499245116462, 143.0, 49.0 ],
					"text" : "engine"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 36.0,
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 9.5, 0.6875, 160.0, 47.0 ],
					"text" : "chained",
					"textcolor" : [ 0.200000002980232, 0.200000002980232, 0.200000002980232, 1.0 ],
					"varname" : "autohelp_top_digest[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 48.0,
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 159.5, -0.3125, 210.0, 60.0 ],
					"text" : "CLUSTER",
					"textcolor" : [ 0.200000002980232, 0.200000002980232, 0.200000002980232, 1.0 ],
					"varname" : "autohelp_top_digest[3]"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-30",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 40.5, 82.6875, 326.0, 45.0 ],
					"text" : "a project by Örjan Sandred\nMax interface by Örjan Sandred & Julien Vincenot\n(2020)",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-13",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 521.666606903076172, 623.167840816395938, 538.0, 83.0 ],
					"text" : "Figure 2. The score corresponds to the sequences of variables in Figure 1. \nFor example, the first voice in Figure 2 is built by the first two engines in Fig. 1 : the first whole note corresponds to the 'duration' box in the first engine, and the two half notes correspond to the 'rhythm motif' box. The three 'pitch' boxes in the second engine correspond to the three pitches in the first voice.",
					"textcolor" : [ 0.50196099281311, 0.50196099281311, 0.50196099281311, 1.0 ],
					"varname" : "autohelp_top_digest[4]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-10",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 54.0, 644.364117412140558, 419.0, 45.0 ],
					"text" : "Figure 1. Several engines collaboratively solve a problem.\nIn this figure, 'duration' refers to a single duration \nand 'rhythm motif' refers to a group of durations.",
					"textcolor" : [ 0.50196099281311, 0.50196099281311, 0.50196099281311, 1.0 ],
					"varname" : "autohelp_top_digest[2]"
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"data" : [ 83402, "png", "IBkSG0fBZn....PCIgDQRA..CvJ..HfqHX....PoDF49....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI6cmGVTU293G+M6KhafK.Foh4NoIIpk6K4BFlaYOUZZtjk9ydrbIMykxzxkxrEycMWR6wTysbIMWB2RSSCDWQQEEPVUj8g42eLe4DCL.CyBy.b+55hqq4b3Lel6yvbFN2eVsQsZ0pQHDBgPHDBgPHrxXqkN.DBgPHDBgPHDBcQRXUHDBgPHDBgPXURRXUHDBgPHDBgPXURRXUHDBgPHDBgPXURRXUHDBgPHDBgPXURRXUHDBgPHDBgPXURRXUHDBgPHDBgPXURRXUHDBgPHDBgPXURRXUHDBgPHDBgPXURRXUHDBgPHDBgPXURRXUHDBgPHDBgPXURRXUHDBgPHDBgPXURRXUHDBgPHDBgPXURRXUHDBgPHDBgPXURRXUHDBgPHDBgPXURRXUHDBgPHDBgPXURRXUHDBgPHDBgPXURRXUHDBgPHDBgPXUxdKc.HDhRd0+UVjkNDDBgPHDBQYTW6mdOSVYIsvpPHDBgPHDBgvpjzBqBQ4X6Y181RGBBgPHDBgnLhdO88XxKSoEVEBgPHDBgPHDVkjDVEBgPHDBgPHDVkLOcIX0pf3NHD6dfjNCj18.UoAn1r7xIDVurAryYvYugJG.TsdCdzMvF6rzAlHOxN6rIpnhhHiLRhKt3H4jSlLyLSTqV9dKQIKarwFbvAGvM2bCO7vCpUspEd5omXqsRcLKDBgn7GSaBqpUCQtVHhE.oGqIsnEhRmTCpREd7Mz7y81L3T0fZOInVCCrwFKc.VtmZ0pI7vCmPBIDd7ierkNbDBTqVMYjQFDe7wS7wGOW6ZWiJTgJfe94G95quXi78FBgPHJGwzkvZFwA+yqCIcNSVQJDkIkdrvU+.H5eBd5MBN5gkNhJ2J8zSmfCNXhN5nszghPTnd7ieLm9zmlacqaQ6ZW6vImbxjU1YjQFbm6bGt+8uOIjPBjZpoRVYkkIq7EBgPTzr2d6wEWbgpV0phWd4E93iO3niNZoCKqBllDVe7UfKL.HsXLIEmPTtPRmCNaGgluUnBMzRGMk67vG9PNxQNBImbxV5PQHzaQGczr+8ue5Tm5DUpRUxnJqrxJKBMzP4JW4JRBpBgPXgkUVYwidzi3QO5Qb6aea9q+5ungMrgzzl1Tr29x2KrKF+YeFwo6jUswNnFABUuuPEaN3jWfsNXzubBQoJYmIj98gGcA3A+BDyupYLdmizhQy0Os7nRKsVBJ8zSWmIqZmc1ge94GMtwMFO8zSpXEqH1YmLdiEkrToREO5QOhnhJJBKrvHjPBAUp92u2H4jSlibjiPO5QOL3VZMwDSjicriIUXiPHDVoxoREiHhHnCcnCTkpTEKcHYwXbIrpVsltAbdSVsxOKz3uCb0Wip3EhR8r0AvkmTyO0HHntgCgMVHo+5eOlzhQy0Q9uWYLsVBPsZ0DbvAmuaTut0stDTPAg6t6tEJxDBMryN6nJUoJTkpTEZTiZDcricjcsqcwMu4MUNljSNYBN3foKcoKE6wz58t28H3fCVZUUgPHJEH4jSlCbfCP6ZW6vau81RGNVDFWBqQt17OlU8rePiWhLKnJD5hq9B9uaHrw.Qs8+c+IcNMWO8DuokJxJ2H7vCOeiY0VzhVPPAEjLKrJrJ4t6tyPFxPXW6ZWb9yedk8GczQS3gGN0qd0SuKqDSLQclrpqt5J96u+zfFz.7vCOvUWcUlbmDBgnDhZ0pIkTRg3hKNt5UuJm6bmiTRIEkeeVYkEAGbvz8t28xkszpgmvpZUZlMfysJ+rRxpBQQwF6zbcRp2V6VZMhE.05MjqeLixN6rIjPBQq8kSKqJIqJrlYqs1RPAEDIlXhZ0RqgDRHT25VW85yuYkUVbricr7krZ.AD.csqcEmc1YSdbKDBgnnYiM1PEpPEnBUnB7jO4SR6ZW63PG5PblybFkiImuCOv.Crb2XZ0vuCs3Nn1KcM1XmltArby1BQQSWWujdrZttRX1DUTQo0RWic1YmjrpnTibRZM2ed8wO9wDUTQoWO+PCMz70U36YO6I8t28VRVUHDBqHN6ryz6d2a5YO6oV6O4jSlPCMTKTTY4X32kVr6Q6sqQfxXVUHJNb0WMW2ja485JgIUjQFoVa6me9IiYUQoJt6t67zO8Sq09x6mq0kLxHCtxUthV6Kf.Bf1zl1XRiOgPHDlNsoMsg.BH.s12UtxUHiLxvBEQVFFdBqIcFs2t580HCEgnbn7dcSRm0xDGkSDWbwo01MtwM1BEIBggKuetM1Xis.Nx+0ctyczpq.6pqtRW6ZWM4wlPHDBSqt10thqt5px1YkUVbm6bGKXDUxyvSXMs6o81Ur4FYnHDkCk2qaRqnaoDggKucGRO8zSKTjHDFt7941b2M2KH2+92Wqs82e+ktArPHDkB3ryNi+96uV6KuemdYcFdBqpRS6scxKiLTDhxgx60M485JgIUlYloVaWwJVQKTjHDFt7941794ZcIgDRPqsaPCZfIMlDBgPX9j2uyNuemdYcFwLMh57TRNXbQhPTdT9ttQsNOLgogZ0Z+9qc1ISRbhRex6may6mq0kTSMUs11CO7vjFSBgPHLex62Ym2uSurNYpwTHDBgnLNcstqJDBgnzg79c1486zKqSRXUHDBgnbFarwFKcHHDBgPOUd+6rkDVEBgPHDBgPHDVkjDVEBgPHDBgPHDVkjDVEBgPHDBgPHDVkjDVEBgPHDBgPHDVkjDVEBgPHDBgPHDVkr2RG.BgPTXBMzPI0TSkV1xVZoCkRDgEVXDbvASEqXEo+8u+3niNZoCIgPHDBgvhQRXsLnzSOcr2d6y2hKuPTZwctycXW6ZWryctSt4MuIMu4Mm+2+6+YoCqRDSe5Smst0sB.G6XGi1291agiHKuKe4KS7wGOADP.3fCNXoCGgvjJgDRfe3G9ARO8zo28t23me9YoCI8Vo4XWX798e+24BW3BDd3gSUpRUnicrizst0MKcXIJCRRXMOV9xWN+zO8SnVsZ853m5TmJuvK7BZsu0u90yO7C+.pUqFe7wGl4LmI0st0sHKqUrhUvpW8pwM2bi0st0gWd4kdECG9vGlcricvgNzg3N24NjTRIgs1ZKUqZUi5V25Rm6bmInfBhm+4e9Bsb5W+5GW8pWEu81a16d2K1ae9+3g47byT7de4BO9pPEZfkNJL4RHgDXu6curyctSN+4OuV+N88yDkEj6y0xSm2Ejku7kynG8nAfALfAvO+y+rENhDBSqicriw68duG.DQDQvRVxRrvQj9qzbrKzM8oBBiM1XY3Ce3rqcsKs1+m9oeJG7fGjt10tVRDphxQjDVyioLkoPBIjfde7O2y8b4KooILgIvCdvCT19Tm5TbwKdwhrq8c3CeXN0oNEflVXpnRXMlXhg29sea1912d99cYmc1DSLwPLwDCm9zmlO+y+bBHf.XIKYIEXWqbO6YOjYlYxktzkHszRC2bys7cLlyyMSw68kK72uD7rGBb1aKcjXzRKsz32+8emctycxe7G+AYkUV46XpTkpDAETPVfnSXNkQFYf81aO1ZagOUJj6Ju3e9m+wbGVBgEUo4JopzbrKzPeqfvoLkonjrps1ZK0qd0iTSMUt6cuaw593DB8kjvZdjbxIq731zl1TjcqVc0c8RLwD0Z6qbkqvhVzh3C9fOvzDj.aYKagwLlwPrwFqx9bxImnYMqY3u+9S1YmMQDQDbsqcMt4MuI.blybF5V25FwDSLF73hybdtYJduubgziCNePvydPvwpZoilhsryNaN4IOI6ZW6hCbfCvie7iy2w3pqtRW6ZWIv.Cj1291KcCzxXlxTlByadyCGczQN9wOdgN9jegW3EXsqcsjQFYPe5SeJAiRgn7K8sBkDkNXJqfv6d26x5V25.fJW4JywN1wnYMqY.vktzk3IdhmvDE0Bw+RRXsP7a+1uoyVYTe4latojD1m8YeFiXDifpUspYzw0BW3BYRSZRJa6qu9xJW4Jocsqc57F6O6YOKqXEqf0rl0PRIkDIjPBTyZVSiJFLWma4vXeuuLuTuCbg9B9uWvNWszQidIzPCkcsqcwt28t0pU5ygSN4DcpSch.CLP5Tm5DN6ryVfnTTRHpnhBPyMQEe7wWnGa+6e+IwDSjzRKMpbkqbIQ3IDkqUbpPIg0OScED9m+4eRlYlI.LnAMHkjUAnIMoIl1fWH9+HIrZF4iO9fu95K6YO6gjRJI9jO4S3q+5u1nJyacqawLm4LU1d.CX.rpUspB8F4ZYKaIsrksjILgIvpV0pnF0nFFUL.lmyMQwziBCt3+AZ9VAastaAxW8UeUN24NW91u81aOsu8sm.CLP5ZW6JUnBUvBDcBqcN4jS3jSNYoCCgnbghSEJIr9Ypqfv6d26p7XIAUQIEoudXFkYlYpUxkKcoKkqcsqYTk43F23HkTRA.5Uu5E+7O+y5cqNzfFz.l27lG1XiMFUL.lmyMQwj8t.IbJHzQBVwicnDSLQsRV0N6ri1111xbm6b4jm7jrzktT5Se5S4xjUUoRkkNDJPYjQF58XRKmZa2Zio98Wq4+dIDBgofSN4Tgdek26d2S4wUspk9FVRhRmjDVMixJqrHf.Bf92+9Cn4l5lxTlhAWd+xu7Kr6cua.M2z+BVvBLIwogvTetIL.O0bA6bDdvdgqNAKczTfx6DoTm6bmYTiZTz291WpTkpjEJprb9ke4WXXCaXzjlzDb1Ym4YdlmgwMtwo2U3ywO9wosssszl1zF9ke4WJzi8q+5ulV0pVQm6bm41291462GRHgPaaaaossssDRHg..aaaaSI1byM2XTiZTZ8bxN6r4W+0ekQLhQPCZPCvYmcFmbxI71auocsqcL8oOcsFO543hW7hDXfARu5Uu3fG7fJ6eZSaZzqd0Kkel7jmrVOuPCMT5XG6HsoMsgMrgMTnmuIjPBLu4MOd0W8UoIMoI3jSNgWd4EcqaciwO9wyEu3EKzmutd+HlXhgO4S9D5Tm5DUnBUfZW6Zy.Fv.XKaYKEZYID5RwohfxQo4JJwTF65aYoqIuOykR5XxZ3yBYjQFJOVFiyhRJxmzLixN6rAf4N24prDwrsssMN9wOtAUde228cJOd3Ce3zzl1TiOHMPl5yMgAnBMF7c5fM1AQtAH7OyRGQ5TUpRUzZ7HevCdPF1vFFsu8smYMqYwe9m+oxmmJKK6rylO3C9.5W+5G+vO7CDVXgQVYkEW3BWfu8a+VZYKaI6XG6nHKmPCMTNwINAm9zmlyblyTnG6QO5Q4Lm4LbjibDt0stU99823F2fSbhSvINwI3F23F70e8Wy.G3.IrvBC0pUSJojhxZBK.W8pWkl27lSu6cuY0qd0bsqcMRO8zQsZ0b+6eeN9wONe5m9oznF0H9q+5uz505Lm4Lr28tW1291GQFYjJ6+rm8rru8sOke17l2rVOuqe8qywN1w3zm9zE52u7G+wePyadyYJSYJr4MuYBKrvPkJUDUTQwgNzgXwKdwDP.AvBVvBJvOuk22O96+9uIf.BfYNyYxQO5QI8zSmae6ay1111XPCZPLoIMoxEe1UT7XHUDTdkPBIvLm4LoCcnC3pqtVjUTxoN0onssssz5V2ZVzhVTQFiW+5WmtzktPqacq469tuyfqPISQrmCc891cu6cYZSaZDP.AfiN5H0nF0f92+9yYO6Y054lVZowm8YeF0u90GmbxI7wGen+8u+EYk5UTrzwjgVIbl5JH7ZW6Zz6d2a5Uu5kVqLEKbgKTqx6zm9z584lPTbHigUynbpE0F1vFxnF0n36+9uG.l3DmHm7jmTudt4HszRifCNXkse0W8UMwQawio7bSjG+dwXLFWo.f5LA3VK.t0h.GpF3SgeiPkzr2d6YO6YOricrC14N2IW+5WG.hKt3XSaZSroMsIpd0qN8rm8j.CLPZQKZgIoaqasYricrrzktT.vFarA+82e5ZW6JW9xWl8u+8yCe3Coe8qeTkpTEKR7cfCb.V5RWJpUqlZTiZPyady4F23FZUa5ey27MJ2zVNItVu5UObzQG4JW4JrrksLdvCd.QFYj7Nuy6voO8oU9aYG5PGne8qenRkJN+4OO24N2APyxSU0qd0UdMZcqacwN1WyZVCiZTiRo0Gd5m9oocsqcz3F2Xt7kuLm3Dmf+9u+axHiLXxSdxb8qecV1xVVgVl6XG6fe5m9IRIkTvEWbg9zm9fWd4EG5PGRY1ybgKbgz5V2ZF3.GXwNlEkckSEejyi+8e+2Y7ie7J+uubpHnUrhUnym+4O+4Y.CX.Jyv+.b6aeakJKYhSbhLu4MOsZcKWbwEkWyvBKLd629swEWbo.iwksrkwgO7gAffBJHkJTJuxaRXgFZnL+4O+BrbMjXOG488sTSMU5Se5ixXvDfG7fGv1291YO6YOrksrE5Se5CW9xWlANvARngFpxwc26dWt6cuK+xu7KL6YOal1zlVAFyEFKYL8G+wevq+5utx2UlinhJJkJh66+9umO8S+TlvDlfVumZn+8LmJHDfVzhVvfG7fAzLiA+q+5ulux6hW7hZkzb26d2MnuCWHJJRBqEhniNZc101.M2DdQMq3l6Dyl0rlEaXCafG8nGwoN0oXKaYK7xu7Kq2wx+7O+CokVZJa2vF1P894ZNXJO2zEi889xUbuKfpjfauL3ZeD3nGPM6ukNpzhmd5IidzilQO5QyktzkXm6bmZMaA+fG7.V+5WOqe8qGO8zS5YO6I8pW8hl27lWlH40ae6ayJW4JU1dYKaYZ0BKO7gOjwLlwvF23FsXqgcKYIKA.dkW4UXUqZUJio3bGO0oN0gdzidvLlwL34e9mOekw+8+9ewO+7iniNZNyYNCG7fGTYsRt90u9rsssM.XXCaX7C+vO.n46O5d26tAG2IkTRLoIMIkjUmxTlByctyMeetYtyctJ2f3JW4J4ce22sP6kJqYMqA.F4HGIe4W9kTwJVQ.Mcsu23MdC1zl1D.rfEr.IgUQARepHnb6nG8nr10tVRKszJVUTRyadyoYMqYbwKdQdzidD6ZW6hAMnAoyWC0pUy+6+8+T190e8WmrxJKitBkLzXWW1912N+u+2+iTSMUpRUpBuxq7JjYlYxN24NI1XikLxHCdy27MY6ae67xu7KSLwDC1au8zqd0Kpe8qO6e+6mPCMTTqVMezG8QzktzEdtm64JzWyhRIYLYrUBmotBByYHfkUVYQngFJ23F2..72e+UVFarwFanacqaE+2XEB8fjvZg3odpmpP+8W3BWPqoy6BSMpQMXJSYJJ2vzTm5T4kdoWRuWOTiIlXTdbEqXEwau8VmG2AO3AKv0NK.dlm4Ynycty50qo9xXO2zES468kp7r6yvddUuePlIB2+mfv9+A1WUvCS6emMUZRSZBMoIMgIO4Iqy0i0nhJJV6ZWKqcsqEu81aBLv.4ke4Wl5Tm5XYCbivW7EegxXXZTiZT4q6.VoJUIV25VGN3fCr10tVKPDpQW5RWXCaXCJcyeP6IUiILgIvDlPAOdoqV0pFiYLiQYBY6JW4JJIrZtL+4OehKt3.fAO3Aym8Y5tqw+ge3Gxsu8sYYKaYjc1YyTm5TYm6bmEZYO5QOZ99u+60J4W6s2dVzhVDacqakLxHC9y+7OI93iG2c2cS2IknLC8ohfxsvBKL.CqhRF5PGpx0mabiar.SX8jm7jJio81111RcqacAvnqPIiI1yqbd8G+3GOe1m8YJKyY23F2f1291y8u+8I93imN0oNgZ0po0st0r8suc7xKu.zTAU8qe8SoUFW7hWrQmvZIULYJpDNScED5iO9nL7Pd+2+8U514ie7imgLjgTrKOgn3RFCqFgjRJoh0w+du26oTST23F2P4ejoOx4Fx.JzabeRSZR79u+6Wf+zyd1SyxL5owbtYHJtu2Wtf2uITstCYmEDxa.Ik+kQFqI1Zqsz111V97O+y43G+37ke4WRm5TmvN6rS4Xt28tGqbkqjoO8oaAiTi2O8S+jxieq25sz4wXqs1xpW8pocsqckTgkVpZUqJqacqSqjUMDMpQMR4w4taAZt7se62p73INwIVnG667Nuixi26d2agNQnzqd0q7krZNpYMqIspUsRY66e+6WbBYQ4L4TQP4dlPuvlcUG8nGMKe4KWIgO3eqnjbpH3bpnjb60e8WW4528t28VfKgI496ixoKeZpXnwtt7tu66xhVzhzZM4td0qd7tu66prsZ0poksrkr+8uekDCAMyzse9m+4Jau+8uei57pjLlzUkvoquG5C+vOjQO5QCfRkvIDkUIIrVHVyZVC+3O9i57m+2+6+QaZSaJVkmKt3ByYNyQY6YO6YShIlnd8b8vCOTdbgcyQ95quEZ4jQFYPpolpd8ZVbXLma5ho989xMdx2CpRqAUoCWbfviupkNhzKt3hKz6d2aV1xVFAGbvL8oOcZdyatxuOmVesznTSMUhN5nAzjnSgsnsaiM1XRVmjMDu7K+xTqZUKitbx8Xv8gO7gFc4UXhJpnTdMpacqqVelQWZdyaN0t10FPSq9nqYN4bT6ZW6Bs6nm6aDM2KyCBQtUbqHHiohRpYMqI8rm8DPyL2et61u4H6ryVYxOxQGcr.aEVCgorRdBLv.YwKdwE3uKGt6t6bfCb.ctLrzrl0L7zSOAzr7pYr+ejRpXxbUIbBQoYRWBtPLvANPslcSMEF7fGLe0W8Ub9yedhO93YNyYN50xSSiabiUdbrwFKwEWbZkDaN1xV1hNGaLUspUUqw.q4fgdtoKli26KWvFazLyAesICO5Rve+RvydHvYc2ExsF4t6tyfG7fYvCdvDQDQvd1ydJUuFsl6jh7wGerfQRgq3t7DDd3gyt28tIxHij6e+6SzQGMpToRqdCh4VNSfW.7jO4SpWOmZUqZQDQDAfldCRQUIeEjb+8uklqPEg4UwshfJtUTRdGG1CcnCUY4uaiabi71u8aq0u+XG6XJIKFXfAZR6J6FarmaE10y498yJUoJUnsVsWd4kxDjTTQEE0qd0q.O1hRIQLYnUBWDQDgRkvYnemlPXMSRXsDls1ZKKXAKPYfo+Mey2v69tuK93iOE5WzWm5TGbwEWTZczvBKLc10As0Va0pqpTRxPO2DlX1Xul0n0q7egTh.NePvydPvQqqE36G8nGwctyc3N24NjRJovS9jOI0t10VqITqZW6ZyXFyXrfQowK2yvikElrvN4IOIezG8Qb3CeXK9L9cNS7G.E335OuxcKXaLckW46zD5CS85TYQUQIAETP3t6tS7wGOG+3GmHhHBkdU.fVKaTl5tCbQwTUIOEmJyN2U1o4X3PkCSULYIqDNgvZljvpEPW6ZWIv.Cje8W+URO8zYlyblr5Uu5B8Ffr0VaoAMnAbgKbA.3zm9zVrw5VgwPN2DkenVsZ16d2KKdwKVmqKnfl+w+fG7fYjibjZMNnJsJ2S9Xl6tHadk6q6LEWCdpScJ5d26txL3cSaZSInfBBu81ab2c2wFargKdwKx7l27L5WK8QtuIQ8cbsm6gpf0bKdKD5RQccrSN4D+m+y+gkrjkfZ0p4G+weTYrMlUVYoLw4TkpTEdwW7EM6watI2GPQyRVIbBg0LYLrZgL+4OekIWl0st0wku7kKxZhMf.BP4we9m+4Vrk+hhhgbtILgTmEb8OTSqq5jGPK1oUQqqdu6cOFv.F.u268dEXxp.jbxIyRW5RoacqaJ2bUoY4LYjAZ5N+Fqbm.bAszOkib2BnlhVCcfCbfJule629sDRHgvm8YeFiabiiW+0ecdsW60nKcoKF8qi9J2sjf9diZ4tEuqe8quIOlDBKsgMrgo73e7G+QkG+6+9uq7cPu7K+x3jSNURGZhhfTIbBgtIYQXgzzl1TFwHFA.nRkJlwLlQQNoLLiYLCktRRrwFqU6LmpgbtILQTqFBe1ZF+pN3F7L6.b13mHcLVYmc1L4IOYsVD0czQGoIMoIzgNzAdwW7EoUspUZkbWhIlHSe5SOeKz4k1j6ZI+5W+5ZsDUoKEz5yXNxYB6.PqEudcwT1E3t90uNQFYj.PaZSaXricrljxsnNeKL4Ng0KcoKUjy7n26d2Soqy4hKtXRljoDBqMADP.zjlzD.HjPBQomYYI6NvB8iTIbBgtIIrZA8we7GqTaZ+7O+yDRHgTnGuO93iVIotzktTkE2dqME2yMgIxsWDj3oA6bBZ1OCUnAV5HB.V8pWMm4LmAPyDRwG9geHAGbvr8sucVwJVAewW7Er90udNzgND6XG6f9zm9.noBOl3DmXIdWo0TxYmcF+82e.MItuicriB7X27l2L6YO6oPKubOwk7W+0eUfsb5JW4JUl7ULE96+9u0YLjWEUq9BZOSBm6Jwn3pxUtxzfFn4y3omd5rt0stB83+1u8aUlEMGv.FfzEEEkYMzgNTkGuwMtQxHiLX6ae6.Zla.Ze6audUNFSEJIJ9L2UBm72SQoURBqVPd5omL4IOY.McWubtg9By6+9uuxLFrJUpX3Ce3z2912BsUat90utxBPcIEC4bSXjt2ZfXO.Xq8feqCpr+V5HRQNKuBN6ryr7kubF5PGpNmx+AMqimKXAKPY8J892+9ZstAVZTtW5A9nO5iTtAiba8qe8LzgNzhrq69TO0SQkpTk.zLdm1zl1T9Nlksrkwa8VukIcRQJ2yjk6cu6UmCIgibjinz6JJL49lpN24Lt0K3O4S9Dsd7INwIz4ws28tW95u9qAzLN+l8rmsQ85JDVyF7fGrxPyYSaZSr28tWktN5q+5udgVYMlpJTRT7YNpDN4umhxBj9oYgX1yd1ZMdwzkd1ydRaaaaM3WiILgIvxV1xT5pcEEGbvA1912NCYHCQIIvcricvgNzgve+8ml0rloLMnGQDQvwN1w3XG6XJOearwlh7bxTo3dtkakDu2aU5u5o9erO6992G+fsC2+m.rAZ72BdzYSdnYnRKszT5xRCdvClVzhVnWOu2+8eeNxQNBW8pWkvBKLyYHZ18Zu1qwG7Ae.wGe7DSLwPW6ZW4sdq2hN24NS7gHNmv+...H.jDQAQ0GOqbkqje9m+Y.vO+7qP6QBUnBUfQMpQwW7EeAflVR4xW9xz0t1Ut90uNaXCafidzihZ0po90u9bsqcMSx4PSaZSwCO7f3hKNRKszXnCcn7Nuy6PW5RW3RW5RryctSl6bmqdUC94zhy.r8sucVzhVDO+y+7Dd3gSXgElVIgVTFzfFDKXAKf+5u9KRHgDnacqaLtwMNdtm64ngMrgboKcIN5QOJKYIKQoh6F23FG0oN0oX+dfPTZg2d6MuvK7Bru8sOt6cuKSZRSR42UTcGXSYEJIJ99jO4S3+7e9OJOtUspU77O+ymuiSeqDN4umhxBjDVyC6ryNkw807m+7Kxi+ZW6ZFURSt5pqrvEtPd0W8U0Z+E1jTTCaXC4jm7jrfEr.l0rlEomd5jbxImujSyKarwFF23FWI1xdSw8bqj989xLh+2g6rbMOt9eJTy9aYim7H7vCmryNa.z6jUAMed8Ye1mkqd0qxku7kMWgWIBWc0U9se62nm8rm7fG7.twMtAevG7AZcLN3fCr3EuXb2c2UtYkBxDm3DY26d2bkqbExJqrX1yd146lU9vO7CoN0oNJsTswxQGcj0t10RPAED.rqcsK10t1E1YmcJIB5fCNvBW3BYQKZQEZEU00t1UBHf.3Lm4LjYlYx6+9uuxuyau8tXkvpM1XCacqak23MdCN1wNFolZpE32eXu81yrm8rU58GBQYYCcnCk8sOMUrYNUb0y9rOqVqq65horBkDEel5JgS96onr.oKAmGu1q8ZEqw0jtVmrxoqNVPc4w75+7e9OLsoMMbvAG.zrXQ2nF0nB84Xmc1wTlxT37m+7LrgMrBb5O2Vaskl27lyzm9z4pW8pr3Eu3BrLyoai3pqtpDK4k47byT7deYBcIlB+mb6gmAt0WnYxVpNuG3ynrLwbgHt3hS4w0st0sX8byoandqacqR7t0tol+96OG+3GmW3EdAslIHc0UWo6cu6bvCdPdm24cz52k60qubySO8jSe5SS+6e+0pBnbzQGo8su8bfCb.lyblixy2FarQmqSf4de4zMiKLu3K9hr+8uesVL6UoREN3fC7bO2ywe7G+ASXBSPY4HpvVVh1wN1A8t28Ne6u6cu6E6Xr10t1b3CeXl27lG0u90OeUJlGd3AcqacifCNXlxTlRAVoYEm2Ox84VYgkeIQYO8su8UqtCJneS1R4TgR.JUnTaZSa30dsWiUspUYVhUw+JmJgqCcnC.nTIb8qe8ilzjlv.G3.4a9luAUpTg81aOe1m8YE5RIl72SQYARKrlGqZUqxnu.NxHijDSLQb2c206mym9oeJe7G+wjRJofat4ldm3ViabiUl3khHhHH5nilXiMVbvAGvCO7fF0nFgqt5pdG2wGe7T0pV0Br63ZNO2LEu2WtxiCSyLBrZUPsFL36TszQjNk6Ysvqe8qq0XgrnDd3gC.UspUUY7XUZV8qe84.G3.nRkJt3EuHojRJzpV0Jspfnd26dS7wGO1ZqsEZECU4JWY15V2JYkUVboKcIhKt3n0st0Zc89q8ZuF8nG8.GbvAcl.VW6ZWIwDSjLxHCpd0qtdcNz8t2c5d26N26d2iqcsqgs1ZKsrksDWbwEki4u+6+lG9vGhGd3QAVNd4kWr6cuaRHgD3JW4J73G+XZPCZP9VVFz2XzVaskIO4Iyjm7jI0TSkKe4KSzQGMMsoMUuWpGJNueLu4MOl3DmHN5ni5cE3IJen3VQPlqJJwYmclQNxQxBW3BAzTQ24sGOUP1wN1AiZTiJeSBbFREJouwt9VV1Ymc3hKtPpolZQ9dPNkic1YmdeuPVCwTNUB2BW3BYkqbkbiabCkdpDnoR3ZQKZAe5m9oz5V25h77vT92ybue84y2BgofMpMzYkieuFZucda4GgPneJtWKkywauKPVoBUuWfeqEJFsNc8ekEA.6Y14uEtLGZcqaMIlXhLjgLD9nO5iz6mWe6aeIrvBim64dNV6ZWqQGG4dMIDfYMqYYzkoPXIj2O69Zu1qUnGu7Y+RVIkTREqJBp3b7O3AOPuqnjst0sx.G3.Afd0qdwu9q+pdEO4nnpPIScrqukUZokFIkTR3gGdTnKadYmc17fG7.byM2JvdrRQwZHlLzJgKuLU+8L1XiE6s2970B9Byqh626aoz6oqohQt1O8dlrxTZgUgnzprREpZafltxhUxpVBMoIMgSbhSvO9i+HcnCcPoqNUXV5RWpxjsjr1xIDhRSJts5dw4302jfAXEqXEJO1PV6UqZUqJsoMsoPOFSYrqukkyN6rdMebXqs1RMqYM0qxzZNlbwEWJVyADEDS0eOqV0plQGKBQwgLFVEhRqpXiglsYvVcOdislL9wOdkImm28ceW9xu7KKvkhoKe4Kyrl0rXQKRSq.6fCNnzBABgPHzO25V2he629M.Mc0y9129ZgiHgPHLLRKrJDkF4hOPy+Evth+XxwRn4Mu4L9wOd9hu3KH0TSkksrkwJW4JoV0pV3omdRkpTkHt3hiniNZt28tmVO2wO9wSCaXCsPQtPHDkNspUsJkw83.Fv.LnwvoPHDVCjDVEhRabxCnE6DbrpV5HoXYjibjjXhIx5W+5IiLx.UpTwsu8s41291573s0Va4ke4WlgO7gWBGoBgPT5lJUpX0qd0JaOjgLDKXzHDBgwQ5RvBQoMOyN.mqUQebVYxYVbce6aezm9zmBbr9Xmc1QW5RWXm6bm7IexmTnqIwBgPHxuCdvCpzaUpcsqMctyc1BGQBgPX3jVXUHJsoBMvRGAFkZUqZwBVvBX9ye9DczQSDQDAQEUTTspUMdxm7Iwau8tLwRXiPHDVJspUsh0st0gyN6LssssUp3OgPTpljvpPHrHrwFavSO8DO8zSKcnHDBQYJUspUU5FvBgnLCinJ2xyxnQ1YZbQhPTdT9ttw5d4oozNaxyx+iJUprPQhPX3x6may6mq0GF5RvtPHDhRdk2+NaCOgU6xy3OK86ajghPTNTdutIuWWILobvAsWBfdzidjEJRDBCWd+bad+bstXu8Z2gpRIkTLowjPHDBym79c1486zKqyvOac1a3w23e29QW.b4IMAgjPTNxitf1a6r2Vl3vL6jm7jF0MH+jO4SR8qe8U19.G3.bhSbBZbiaLuxq7J5c43latQ7wGux1QEUTTkpTECNtDBKgnhJJs11M2bqHeNt3hKZknabwEGUnBUvjGaBgPHL8hKt3zZaWbwEKTjXYX3IrV4.zNg0G7KPMBxDDRBQ4HO3Wzd6JGfkINLidzidDCaXCynJi.BH.1vF1..jQFYvDm3DI8zSW424qu9pWkiGd3gVIrFVXgQiZTiLpXSHJoEVXgo01d3gGE4yopUspZkv5Uu5U4IeRoRlEBgnzfqd0qp01UspktVZCMVFdWBtZ8V6si4WgTB2HCGgnbjTBWy0M4VdutpLfLyz3Ge6YjQFJON8zSWqxLojRRuKmZUKsWNfBIjPzJAVgvZW7wGOgDRHZsu794ZcwKu7RqsO24NGokVZlzXSHDBgoWZokFm6bmSq8k2uSurNCuEV8nafSUCROVMaqVED1XA+2MXirjTHDEpbtdQctl7TbpZZttpLF2c2cF4HGIO9wO1fKC+82ekGWwJVQdy27M4PG5PzvF1Pd5m9o06xwSO8jJTgJnDKpTohcsqcwPFxPjk8AgUuryNa10t1kVS5RUnBUPulos8wGe3u9q+hrxJK.MiGpCcnCQu6cYuJISHDhxRNzgNjVCqJ6s2d7wGerfQTIOCOgUarCp8jfq9A+69R5ufvFCz3kHIsJDED0pzbcRR+k16u1SpL60MSZRSxjVdSdxSlIO4IWred1Zqs3me9woO8oU12Mu4MYW6ZWDTPAIIsJrZkSxp27l2Tq86me9oWet0QGcjF1vFRngFpx9NyYNCd3gGzl1zFSd7JDBgv3cpScJNyYNiV6qgMrg3niNZghHKCi6typ0vfJ6u16KpsCm6EktGrPnKoDtlqOhZ6Zu+J6ulqmDlc95quTyZVSs124O+4Y8qe8R2CVXUJ93im0u90y4O+40Z+0rl0TuG+1.zzl1z7MAMsu8sO1yd1iz8fEBgvJRZokF6YO6g8su8o09cyM2noMsoVnnxxwF0F6B6SFwAmsiPZwjmR1NnFABUuuPEaN3jWfsE8TuuPTlR1YpYoq4QWPyDrTL+p1cCX.btFPKOJ3XQOwoXpT+WYQ.vdlc4ytCX5omN6e+6mjSNYs1uc1YG94mez3F2X7zSOohUrhXmckMa0ag0KUpTwidziHpnhhvBKLBIjPx2Zupat4F8nG8.mbxohUYmXhIxANvAT5Zv4vUWcE+82eZPCZ.d3gG3pqtZPquqBgPHJ9TqVMojRJDWbwwUu5U4bm6b5boro6cu6V8qtA8d56A.t1O8dlrxz3SXEfGeE3BCH+IsJDhBmy0.Z9VgJzvRzW1x6IrBvCe3C4HG4H4KoUgvZmat4FcpSchJUoJYPO+6cu6QvAGb9RZUHDBg0I6s2dZW6ZGd6s0+xen4HgUSy.1pBMTSKDk2tGrPHJXU1eMW2TBmrp0hDSLQBIjPXe6aericrCN+4OeIZWxsRUpRzidzi708fEBqY0rl0jdzidXvIqBf2d6Mcu6cWuV+VEBgPXY4latQ26d2KUjrp4hgOoKkWN5A3+dgHWKDwB92YOXgPnMmpllIXoZMLnbVWtKiLxfe5m9IV9xWNwDit6QFt4lazwN1Ql3DmnY+KmcxImnKcoKDd3gSHgDhQMSFKDlSUnBU.+7yO70WeMIcU2pTkpPfAFHgFZnbkqbEo0VEBgvJi81aOMrgMjl1zlh81a5RYqzHSSWBNuTqBh6fPr6AR5LPZ2CTkFfo+kRHrtYCXmyfydCUN.MqypdzMK9rArknKAewKdQF23FGQEUT50w6jSNwa9luI+2+6+sDY16M6rylnhJJhLxHIt3hijSNYxLyLwb7UjBQgwFarAGbvAbyM2vCO7fZUqZgmd5oY65fLxHCtyctC2+92mDRHARM0TkDXEBgnDl81aOt3hKT0pVU7xKuvGe7oT4rAr4nKAadRW2F6fp0CM+HDhx8d3CeH+2+6+UqjUcyM2n10t1TyZVSpXEqHwFarDSLwP3gGNpTohzSOcV5RWJUpRUhQLhQX1iQas0V71auKW2kaDkO4niNR8pW8nd0qdV5PQHDBgHeJe29xBgnDwG+weL26d2CPy3m6cdm2g9zm9fyN6b9N1nhJJ17l2LqZUqhLxHC9pu5qnicri7TO0SURG1BgPHDBgvBy72O6DBQ4dG6XGCPyDczZVyZXPCZP5LYU.7zSOY7ie7L+4OerwFaHiLxfMrgMTRFtBgPHDBgvJgjvpPHLqt28tGO7gOD.dy27MoN0oN50yqW8pWz111V.3xW9xlqvSHDBgPHDVwjDVEBgY00t10TdbyZVyJVO2l27lC.W8pWUl7iDBgPHDhxgjDVEBgYkKt3hxiMzkiizSOcSU3HDBgPHDhRQjDVEBgYku95qxiCKrvJVO2qbkq..0pV0xjr1SJDBgPHDhRWjDVEBgYU0pV0noMso.vl27l0602wHiLRNxQNB.JikUgPHDBgPT9hjvpPHL6F9vGN.bm6bG9tu66JxiWsZ0LiYLCxJqrvN6rigLjgXtCQgPHDBgPXERRXUHDlcu3K9hDXfAB.qZUqRYVCtfbu6cOtzktDt5pqLsoMMs5VwBgPHDBgn7C6szAfPHJeXQKZQL24NWr2d6wAGbnPO1ZUqZwIO4IKghLgPHDBgPXsRRXUHDkXx8LFrPHDBgPHDEEIgUgPXQnRkJhN5n412917vG9P7wGen10t13pqtZoCMgPHDkCkc1YSTQEEQFYjDWbwQxImLYlYlx5.tnDmM1XCN3fC3latgGd3A0pV0BO8zSr01xmilSIgUgPTh5O9i+fu5q9Jt7kurNmwfqd0qN8su8kQO5QSEqXEs.QnPHDhxSTqVMgGd3DRHgvie7iszgiPfZ0pIiLxf3iOdhO934ZW6ZTgJTA7yO+vWe8sb2R8m4KgU0pf3NHD6dfjNCj18.UoAH0Rkn7Da.6bFb1anxA.Uq2fGcCrwNKcfUhK5nilO7C+PBN3fKzi6AO3ArhUrB94e9m48e+2mAMnAUBEgBQ4WRKKIrVTR2xRomd5DbvASzQGsYo7EBSkG+3GyoO8o4V25Vzt10NbxImrzgTIFSeBqpUCQtVHhE.oGqIu3EhRWTCpREd7Mz7y81L3T0fZOInVCCJGUCY4MYUWc0U71auwImbhPCMTbzQGo90u9b8qecRO8zIgDRfoO8oS0qd0oyctyVvHWHJ6RZYIg0lRxVV5gO7gbjibDRN4jMYkoPXtEczQy92+9oScpSToJUIKc3ThvzlvZFwA+yqCIcNSZwJDkojdrvU+.H5eBd5MBN5gkNhL615V2pRxpd6s2LlwLF5W+5G1au8btycNd0W8UoJUoJrsssMxLyLYSaZS7se62RRIkDScpSkctycRMpQMJwhWo0lDVKLms1jzxRhRKLGsrT5omtNSV0N6rC+7yOZbiaLd5omTwJVQrytxe8JJgkkJUp3QO5QDUTQQXgEFgDRHnRkJkeexImLG4HGgdzidTtnkVMcIr93q.WX.PZwXxJRgnLsjNGb1NBMeqPEZnkNZLqVwJVAflYI30rl0PcpScJvi0AGbf23MdCZVyZFCdvClDRHA1vF1.u+6+9l83TZsIg0FyUqMIsrjnzHSUKKoVsZBN3fy2m+qacqKAETP3t6targpPXTryN6nJUoJTkpTEZTiZDcricjcsqcwMu4MUNljSNYBN3foKcoKk4GSqllDVyHNcmrpM1A0HPn58EpXyAm7BrsvW+EEhxTxNSH86CO5BvC9EHleUy36NGoEilqcZ4QKy1RqYlYlb6aea.XricrEZxp41y7LOCuxq7JrgMrAtzktjYLB0PZsIQoEFaqMIsrjvZVIQKKEd3gmuuquEsnEDTPAUtcVXUXcyc2cmgLjgvt10t37m+7J6O5nilvCObpW8pmEL5L+L9qJUqVS2.NuIqV4mEZ8wgltJnFAAt7jRxphxer0AMe1uFAo4ZgVebMWajaoEilqgJi1cSiHhHTtYil27lWrdt96u+.X1SX8gO7gr+8ueIYUQoJ4zZSO7gOTueNEVKKM1wNV5W+5GMpQMhpTkpHIqJrHxokkZTiZD8qe8iwN1wRcqac05XxokkLjgoQ1YmMgDRHZsubZYUIYUg0Las0VBJnfx20CgDRHjc1YaghpRFFeKrF4Zy+XV0y9AMdIkKmITEhBkq9B9uaHrw.Qs8+c+IcNMWK8DuokJxLaxo0UA3odpmpX8bcyM2.zjPoJUpLK2.szZSBqYl5VaRZYIQoMl5VVJpnhRqg7gc1Ym74eQoF4jz529seqRRpO9wOlnhJJ71ausvQm4iwc0oZUZlMfysJ+rRxpBQgwF6zbMRdao0HVf1cW3xHb0UWUdbwcLVb0qdU.MI5ZNRVTZsIg0NSYqMIsrjnzJSYKKEYjQp0194mexXVUTph6t6NO8S+zZsu7945xZLt+CUbGT6ktFarCZ72IIqJDEEccsR5wp4ZpxX7vi+cr49fG7.894kTRIwF23FAfF23FaxiKnfasogLjgH2.ivpTNs1TKZQKzZ+4zZSEFokkDklkSRq49yq4zxREGwEWbZss45+uHDlS48yswFaY6kRTi6+RE6dzd6ZDnlt7nPHJZt5qlqYxs7dMUY.0st0UoqJ9O+y+nWOmyd1yxHFwH392+9.PG6XGM4wkzZShRqLzVaRZYIQoclhVVJu8nFO8zSiNtDhRZ48ysk0WYCLt6JKoyn81UuuFUwIDk6j2qYR5rVl3vLxd6sWYxV5HG4HE3wkXhIx.Fv.nssss75u9qqjbae6aeom8rml73RZsIQoYFRqMIsrjnr.iskkxLyL0Z6JVwJZzwjPTRKuetMuettrFi6NyR6dZucEKdy.nBQ4d48ZlzJaNFDBJnf.fe+2+8BbFMMiLxfPBIDst4i10t1wrl0rLKwjzZShR6Jts1jzxRhxBL1VVJui0aY9IPTZTd+bqgLiYWZhwMKAqJMs21IuLphSHJ2IuWyj2qoJin+8u+73G+XRM0Ty2DuTsqcswUWckTRIE.nxUtxzjlzDdm24cn0st0lsXRZsIQYAMtwMlKbgKnrcg0ZSRKKIJKn7VKKIDBidYsIOYyKqypBQwS9tlorYMjYu81ya9l5dI6wCO7fSbhSvctycvKu7pD6lnkVaRTVPwo0ljVVRTVP4sVVRHDlh0gUgPHLRt3hKzfFzfRzWSo0lDkEHs1jPHDhx5jYWDgPTtjzZShxBjVaRHDBQYcRBqBgPHDBgPHDBqRRBqBgPHDBgPHDBqRRBqBgPHDBgPHDBqRxjtjPHDBgPHDBqZIjPB7C+vOP5omN8t28F+7yOKcHIJgHIrJDk17vK.Up4V5nPHDBgPTNvku7kI93im.BH.bvAK2RX4wN1w38du2C.hHhHXIKYIVrXQTxR5RvBQoMOXGv0mgkNJDBgPTBHgDRfu5q9Jl27lGgDRHV5vQTNyxW9xowMtwz111Vd0W8UszgiBYFQu7EoEVKiJ8zSG6s2dYo5nrpauTv4ZCOwHrzQhPHDkIIspjP.m+7mW4w+y+7OE3wkQFYf81aO1ZqzVXBSOIg07X4Ke47S+zOo20byTm5T4EdgWPq8s90ud9ge3GPsZ03iO9vLm4Lot0stEYYshUrBV8pWMt4lart0sN7xKuz639vG9vricrCNzgND24N2gjRJIr0VaoZUqZT25VW5bm6LAETP77O+yWfkQ+5W+3pW8p3s2dyd26dwd6y+GOL2malh2+K23ZSCb9Ifp0CKcjHDBQYJKe4KmQO5QC.CX.Cfe9m+YKbDogzpRhRZuvK7Br10tVxHiLnO8oO57XlxTlByadyCGczQN9wONsrksrDNJEk0IIrlGSYJSgDRHA893etm64xWBSSXBSfG7fGnr8oN0o3hW7h3niNVnk0gO7g4Tm5T.vctyczqDViIlX3se62lsu8smueW1YmMwDSLDSLwvoO8o4y+7Om.BH.VxRVhN+xj8rm8PlYlIW5RWhzRKMbyM2x2wXtO2LEu+Wtg5rgPGA7L6Fp7yXoilhs3iOdN9wONwEWbjPBIPhIlHIjPBjVZoQUqZUoZUqZ3t6tS0pV0vO+7i5Uu5YoCYgUBYh2PXtouspDHsrjnrs92+9ShIlHokVZT4JWYcdLQEUT.ZtVH93iujL7DkSHIrlGImbxJOtMsoMEYWps8su84aeIlXhZs8UtxUXQKZQ7AevGXZBx+OaYKagwLlwPrwFqx9bxImnYMqY3u+9S1YmMQDQDbsqcMt4MuI.blybF5V25FwDSLEYRl5h49byT79e4F15.nJC3edY3YOD3xSZoinhTJojBG3.Gfcu6cyINwIPkJU58y0O+7i9129xK9huHUspU0LFkhBhzEIEkWnOspDHsrjn7AmbxIbxImrzggnbLIg0Bwu8a+lNakQ8kat4lRBXe1m8YLhQLBpV0plII1V3BWHSZRSRYae80WV4JWIsqcsSm2H4YO6YYEqXErl0rFRJojHgDRfZVyZZvu9lyysbXru+WlW06EjbXviuF728CZ4uCNn6Z+zZvCe3C4Mdi2fvBKLC54GRHgPHgDBKXAKfkrjkP6ZW6LwQnnvHcQRQ4I5SqJARKKIJcRkJUVUywI47831XiMFU4XscdILcj9uhYjO93C8t28F.RJoj3S9jOwjTt25V2hYNyYpr8.Fv.3bm6bz4N24BrUOZYKaIKaYKiPBIDl7jmL0nF0vnhAy04lnXvFGf5+Yfy0.R8NvEGDjcFV5nRmRIkTXTiZT4KY0FzfFv.G3.YDiXDL9wOdl9zmNe9m+4LqYMKl3DmHu8a+1DXfApUkgjd5oyXG6X4O+y+rj9znbshyDuQ1YmcIQHIDlUN4jSEZxpBg0p+4e9GZaaaKcnCcfacqaAnYHjM0oNUpW8pGN4jS3kWdw.Fv.XwKdwjYlYVfkUngFJcricj1zl1vF1vFT1+Eu3EIv.Cjd0qdwAO3AU1+zl1znW8pWJ+L4IOYcVtW5RWh24cdGZaaaKUtxUFmbxIpe8qOicrikKe4Kq2mqIjPBLyYNS5PG5.t5pqT6ZWaFv.F.aYKaQuKCg0OoEVMixLyLYlyblrm8rG.XoKcoLtwMNpe8quQUtiabiiTRIE.nW8pWEqV5nAMnALu4MOi50GLemaBfeuXTYB14FT+4CW9+Gjz4gPeK3oWqYKzLTye9ym+9u+a.vEWbgINwIR25V2vSO8TuKiqe8qyhVzh3fG7fjVZownG8nYKaYK7TO0SYtBaQtHS7FhR6rFa8ESQKKYMddIrrBO7v4Dm3D.Zl2PBMzP4Mey2Tq4fjnhJJ1111Faaaai8u+8yO+y+Lt5pq4qrt90uNG6XGC.ZQKZACdvCFPyPLau6cu463O6YOqVaGZngx7m+7U1N6rylu7K+R9nO5iH8zSOeuVW+5WmksrkwhW7hYricrE5444O+4Y.CX.JC6M.t8suM2912lsssswDm3DYdyadx3KuL.4uflQYkUVDP.AP+6e+Azjj2TlxTLpx7W9kegcu6cC.1YmcrfEr.iNNMDliyMgAxQOg5MGMio0G7qVkqQq47Ovb2c2Y8qe8L3AO3hUxp.7TO0Sw28cemRWgOkTRge7G+QSdrJzsb5hjwGe7E326HcORgkTIQqJAVGsrjzpRB805V253kdoWhG7fGfmd5Iu669t7ge3GRqZUqTRjau6cu7RuzKUrJ2NzgNP+5W+nO8oO3iO9nr+m64dN5Se5ixOu8a+1Z87l9zmNSZRShzSOcrwFan6cu6LiYLClwLlA8su8EGbvAToRUQdOkG8nGkm+4edt4MuIt3hK7Juxqv3G+34oe5mV4XV3BWHaaaaqXcdIrNIsvpYTNcKt4N24xN24NIqrxhsssswwO9wossssFTEkDkPF...B.IQTPTY9ce22o73gO7gSSaZSMIwZwk43bS7+4Y2Ww+4TgFB0cpP3epU2ZzZJojB23F2..dkW4Uz5elXHF4HGIabiaj6cu6wgO7gYFyv5KA8xpjIdCg0rRhVUBr7srjzpRhhiUtxUB.u0a8Vr3EuXb1YmAf4Lm4vpW8pYDiPy8JbvCdP9y+7OoUspU5U4V+5WekjAG1vFF+vO7C.vrl0rn6cu6574DQDQvW9keIfl+ex5V25XPCZPZcL25V2hQO5Qq0vPQWxYHFMxQNR9xu7KohUrh.ZZPk23MdC1zl1D.rfEr.F3.GndcNIrdIealYTNc0mF1vFxnF0nT1+Dm3D06matkVZoQvAGrx1u5q9plfnzvXpO2Dl.U44AezLo3v0lFD69srwy+mPBIDkJ3vT0EQ6PG5..DczQKiWRiPwYVZtjhZ0pM5uivZ77RTxxb0pRfkskkjVURXHl5TmJKaYKSIY0bL7gObFxPFhx1l6Yb8oLkoPZokFfl6WLuIqBPcpScXe6ae507TwnG8nY4Ke4JIqBf81aOKZQKRYkv3O+y+T5wOkAHIrVHhN5nIpnhRm+j6kRlBRtuoqYMqYobA0oN0oLntsy+7O+ixE5fljEsTL0ma5hw99e4RU+k.O66+tFslzeaoiHs51cUnBUvjTl0t10FPSKVjQFVmSzTVCJMLwa.RWjTX5sxUtRToREu0a8VbyadSV7hWLyYNygSe5SyJVwJTNtbZUohibZYocricPW5RWT1+rl0rXG6XGJ+7ge3Gp76xaKKs4MuY1+92Oe7G+w7we7Gy12914pW8pz8t2cbwEWJvW6vBKLRKszXjibjDczQyl27lYQKZQbtycNspDaK0vERX8om8rmL24N2B72+5u9qq73csqcYVike8W+U.MIUl2JzI2rwFanN0oNEZY0qd0K99u+6043+tl0rlZ0Rw2+922vBXgUCoKAWHJpIykKbgKPyZVyzqxpF0nFLkoLEl1zlFflZ65kdoWpXsVnFSLwn73JVwJh2d6sNOtCdvCVnyhmOyy7Lz4N2Y890snXJN2zES46+kqTq2FROJHgSYUrFsl6Yj5vBKLZQKZgQWl4zEi80WeyWMFK9WVyS7FfzEIElWScpSUm2n9vG9v4HG4Hr90ud.Mspj91MHMTEmVVJhHhnPKqQO5QmuaTOmVUZqacqjQFYnzpRt6t6l1SDQoNEUhectycF6ryNToREwGe7jRJony+Gfw5AO3A7vG9P.MM3xS7DOgQUd0t10tPmrx7xKuTd78t28rXCgNgogjvpQHojRpXc7u268d78e+2ycu6c4F23FrjkrDF+3Gud+7iKt3Tdbg8EPSZRSRYFYUWbzQGI4jSt.WBbLDF64lgn399e4J0YZPFuuUwZzpu95Kd3gGDWbwwxV1x3EewWjJUoJYvkWjQFoxDOlTgE5u0st0wZVyZPkJU3omdxfFzfvM2biCdvCxYO6YI6ryVoKR9a+1uo2kaNcORUpTw4O+44N24N.Z5djUu5UW43Zcqac9dtSe5SWIgBarwFdgW3EnMsoM.ZZ418rm8nLgtUPIrdzidTV6ZWKokVZ3hKtPe5SevKu7hCcnCoTwcKbgKjV25VKiioxQzmVUJmDVM2spDX5ZYI8oUkxYnCc+6eeIgUQQxQGcDO7vCkFEIxHizrrhObsqcMkGWPM3hojGd3gxie7ierY+0SXdIIrVHVyZVSANAiXu81qbiU5KWbwElyblCCcnCE.l8rmMCaXCipTkpnWO+bewWg08F70WeKzDVyHiLH0TS0jlvpwdtoKl52+EVF1Ymcz+92eVwJVAQEUTL3AOX9zO8SMnjMO9wONScpSUokJjDV0eVSS7Ffoax2Pl3MD5h0RqJAl1VVRZUIg4f6t6tRBqIjPBlkWib5YT.E6UI.CgwrTQIr9HIrVHF3.GHt4lalzxbvCdv7Ue0Ww4O+4I93im4Lm4n2i0jF23Fq73XiMVhKt3zJI1brksrEcNt9pZUqpViAVSMi4bSWLGu+WtwslilVW0wJCOy1sXstZNF+3GOW+5WmCe3CyUtxU3ke4WllzjlPm5Tm3odpmhm3IdBpbkqLN5niXmc1QZokFolZpjTRIwMu4M4F23Fb3CeXkVuCzzsT6W+5mE7rpzGoKRJcQRgFkTspDTx1xRRqJILDO5QOR4wlqOil6guizC4DEWRBqkvr0VaYAKXAzst0M.3a9lug28ceW7wGeJxZCpN0oN3hKtPpolJflVVncsqc570vRLt9LlyMgITjKUy3W0NGgl8yVzwuZNr2d64q+5ul29seaN9wONflIZmKcoKYPkWSZRSX4Ke4E5jShPaRWjT5hjBsURzpRPIaKKI+uVQwkJUpTVCss2d6MaIrV25VWkGe26dWyxqgnrKYFnvBnqcsqDXfAB.omd5LyYNSfh9ezXqs1RCZPCT19zm9zlufz.YnmaBSjGrCHpeArwVnoqBpTyszQjBGczQ9tu66X5Se53me9YPkgWd4EiXDifUu5UaTiC1xiz2tHIfRWjzbwR1EIEhbTRzpRfzxRBKqhZY9J3fCV4Xdhm3IL5ImtBZl6O2Ird8qecyZO9ST1ijvpEx7m+7Ut4v0st0wku7k0qujHf.BP4we9m+4l0ZE1PYnmaBiThm.tyxz735OGnZ8vxFO5fKt3BCdvClst0sxu9q+JiYLig.CLPZcqaM0u90G2c2cr2d6wc2cGe80Wd1m8Yoqcsq7FuwavF23F4vG9vL4IOYpZUqpk9ToLmb5hj4HxHizr8ZIcQRgkVIUqJARKKIrrV25VG6YO6o.+84zyZ.L3UPhbOekDZngpyiwCO7P45rG9vGp0qqtXMd+sBKGoKAagzzl1TFwHFAKe4KGUpTwLlwLzqwq4LlwLXSaZS73G+XhM1XY5Se57se62VBDw5OC8bS7+4u5o9cbdN.nViRyie7+e16NOtnpb+O.9mgAXXYPTPEDtJJlKjjj3RTRtu6kbsLMsLWy7ZWWILykRyRwx7dKSM2RsR+4VJpjlZlgaoItfhJJJZf.x9hx.Ny76OlKmXFFfgYgYFlOue8hWMmybNG9dllib9978477bCf69opl+Uax6.7OFuoK9LRZdyaN92+6+s4NLnxfcQRp1hZ5pJAT8prDmNtnZJxjICCcnCE6bm6Duxq7Jp8d6e+6GadyaF.p92Jqr4K6Jiu95qvqu3EuXEtcQDQD38du2C..KYIKAcsqcUsdNHfp4t8Eu3EiHiLRjat4ZvSQhTsCrrWlQezG8QBIxsqcsKDWbwUk6Siabiw7m+7EVdMqYMXSaZSlrXTeoOmajdp3TAtyGBnnDfFL.fm4iM2QDYkhcQRp1hZhpJAvJKQVGJt3hwPG5Pw.Fv.vV1xVvQNxQvrl0rvq+5utPC2L3AOXz5V2Z853GbvAK758t28hUtxUhyctyge7G+QrfEr.g2aRSZRBOBH2+92GgDRHXIKYI3vG9v3W9keAQFYjn0st0XwKdwnnhJBkTRIFvYMUaBSX0Lxau8Vn0rTpTIN+4OuNseyblyTXDCVtb4XbiabXvCdvBUFQat8sucU1hyFS564FAfdjdk+ie+q+dakW.PBgCTRA.t2Nf1rNyWbSV0XWjjpMozpJs+8u+x8dFqpJAT8prToVxRVBt0stU41lRJoDrfEr.3iO9TgUqknpqQO5Qi9129B4xkiniNZ7Vu0ag9129hu3K9BgAwyd26diMtwMp2+N5YO6ovirVIkTBl4LmIBIjPvnF0nvF1vFD1NIRjfcu6cC+7yO.npwYl+7mO5W+5G5Se5CBO7vQhIlH..FwHFAb0UW06XhpcgcI3JwhW7hqxthP+5W+Pm6bm06eGyZVyBqcsqsZ87h4fCNf8t28hwLlwHjH39129vwN1wPvAGLZaaaKBJHUC1NIkTR3jm7j3jm7jB6uHQhpQ5hE5y4VYUS74uUMkk.jvbAJJc.maLPa++.riccFR6rTF3M.XWjjpYTZUk5Se5Cd8W+0g2d6MN7gOL9lu4aLJUUBP6UV5kdoWBIlXhH93iGe7GqpGuLoIMIr7kub7W+0eITYoYNyYhN1wNB6ryNboKcIrl0rFgaVujRJgcERxnPpToXyadyX4Ke4XYKaYp0qVZbiaLF0nFE9jO4SDF6Qz19WpJavNbe6aeXhSbhkqmMn47wcm5TmPrwFKl5TmJhN5nQN4jiZue6ae6wrl0rvHG4H06XA.ByI2Z9Zx5DSXUChEKVnKHr7ku7pb6SHgDLnDlbwEWvJVwJJ2ElU0MK1pV0JblybFDYjQhEsnEAYxjgBJnfxkbplDIRDl1zlVMxMGpOma0ze9aU6QQqpa.agLWqRV11xV1BFzfFDF3.GnVeeSw.uw+7e9O051UZWjLkTRQnKRNwINwJ73lc1YyAZKpZYzidz3QO5Q3vG9vH5niFQGczkaaLzpJA72UV57m+7BUVpT93iOBIrVZkkdsW60PRIkjPkkzFVYIxXSrXwXtyctXFyXF3BW3BH+7yGO+y+7pMJpWQ5YO6IxImbPwEWLZPCZPEtcMpQMBG3.G.Ymc13l27lnvBKDsrksDMtwMtbaa8pW8vO7C+..TUXkqcsqAWc0UzpV0pJcbMPWiE.fksrkgYO6YCGczQ3t679ir1wtDrFF0nFU0ZP5nIMo7ywkkdggtdAxq+5uNl27lGbvAG.fppOnKs3qXwhQDQDAhM1XwXG6Xqvtvmc1YGBJnfv7m+7wst0svpV0pz51U5Ma5hKtHDKZxTetYL972lghRrnlqUIKa0DcQRcs6QBvtHIYZIUpTbvCdPrzktzx82qZbiaLd+2+8QzQGsZMxhl6eoppJ4ru8sOs1PPUTkkF4HGoV+81912d7C+vOfsu8sq2wBqpDUYbxImPngFJ5e+6uNkrZob2c2qxDDKU8pW8PHgDB5YO6oVSVUS94meX.CX.nqcsq5zfvW0IVZPCZ.SVsVBVgUMrgMrA05u85ijSNYjSN4Tslf5WxRVB9nO5ivie7igToRqVIsEP.AHLvKkTRIgzRKMjQFY.GbvA3omdhV25VCWbwEcJtyJqrP8pW8pvthjo9byX74uMCKv4ZUxxlotKRpqcOR.1EIISuZhpJAX5qrDqpDQjsNlvpIfiN5HZXCaX0d+DKVrA2hn94meBOL6UWN3fCvKu7pR2Fy44FoAKz4ZUxxTMQWjTW6dj.rKRR0bJspRUWU2D9JsxR5ppyeut5DK5Z0mHhHqErKASj0Hqj4ZUxxQMUWjTW6dj.rKRRDQDQUMVgUhr1zfAwtALoWrzF3M.XWjjHhL1J6idU04QLiHKULgUhr1vjUICTMQWjr518HAXWjjHhLF5YO6I9ge3GfLYxP25V2L2gCQFLlvJQDQDY0iUUhHUb0UW057XJQVqXBqDQDQjUOVUIhHp1IlvJQDQDY0iUUhzEhDIBJUpTXY4xkCwhEaFiHhp9JcpnqT016UIbTBlHhpkhcQRhHRcN3fCpsb94muYJRHR+o42a076001XfUXUD.96VoBJJAvtZ2efQjQkhRzXELoBx3gcQRprXkknZCLzJKIUpTjUVYIrbpolZENcdQjkpTSMU0VtrS2a0FYXIrJ1I.4O4uWV1CAbtIFXHQjMDYOT8kE6j4INnZkXWjjJKGbvATbwEKrb94mOuQcxpigVYIO8zS0RXM93iGst0s1nDaDUSI93iWsk8zSOMSQRMCCqKA6jOpub9W1fNbDYyQyqYbxWySbXCRyVkWyVsmHqAUmpMoYKvqYKzSj0.CsxR95q5+c13hKN0RfkHKcYkUVHt3hSs0o42qqswvRX08Np9xO5mLnCGQ1bz7ZF26f4INrAwmiIp1fpS0lzrE30rE5IxZfgVYIu81a3pqtJrrb4xQTQEETnPgQI9HxTRgBEHpnhRsFqzUWcEd6s2lwnxzyvRXs9CT8kS+P.ONQC5PRjMiGmnpqYJKMulhLYX0lnZCpNUahUVhr1YLprjc1YGBLv.Uac28t2kIsRV7JMY06d26p15CLv.gc1U6dbz0vN67rW.Rp+eurR4.wOUU+WhnJl1tVQR8UcMEUifUahpMn5TsIVYIxZlwrxR96u+vKu7Rs0Earwhst0sxFwgrHkUVYgst0shXiMV0VuWd4E72e+MSQUMGCKgUQhA7aNputb+Sf3eWlzJQUDkxUcMRt+o5q2u4n5ZJpFAq1DYsq5VsIVYIxZkwtxRhDIBgFZnkqGIb26dW70e8Wi8t28habiafbxIGN9FPlExkKG4jSN3F23FXu6cu3q+5utbe+WpToHzPC0lXZqy.mVa.fuiEHsc.j6E+60k5dAdx8AB3qAbo1eV+DoydbhpprplIq5dvptVhpwTZ0lJrvBAveWsowLlwTquq0PV+z2pM4u+9i6cu6gzRKMg0EarwhbxIGDVXgAO7vCSVLSj9HqrxRqIqZnUVRhDInacqa3Dm3DnfBJPX8xkKGW9xWFW9xbfDkrbIUpTzst0MHQhDycnTivvuqLQh.dtuGvoFp95y8OANWmAt13AROJUIvVt4bRhpkSQIp9te5Qo5Zgy04xmrpSMT00P1.sPlkDVsIxZkgTsIVYIxRWMYkkpScpC5ae6a45dvDYIyKu7B8su8E0oN0wbGJ0XL7JrB.3nm.AsafKOLfhR+uWuR4.oEkpeHhJOmZnpqcbr187mkkJVsIxZiwnZSrxRj0LickkjHQB5QO5ARLwDQbwEmPutgHKMt5pqHv.CD96u+1DcC3xRjRkJUZzNZEmIvUeC06dvDQZm6AqpxplgjUawHVI..N3h4nRrLYxvgO7gU6F2A.DKVLBLv.Q.AD.71augat4FDKlOiwTMK4xki7yOejZpoh3iOdDWbwUtJeJUpTz2912p8MvKSlLDSLwnVC1PjkLu7xKDZngZx5FjJTn.olZpH4jSFYlYlnfBJ.kTRIvXdqxDoKDIRDbvAGfToRgmd5I70Weg2d6sUwirz.m+AA.PB6XFFsiowoBqkxQOABNZfj2LPRQBHKCi5gmnZEjTeUCvR9NV1Mfs.vpMQVyLjpMwJKQVKpoprjc1YG7wGefO93iI62AQT0mwMgU.U2.9+3sA78MAx7n.YbPfbOOPQo.HuH.vVohrkHBPrS.N4Kf6cP07rpm8hiFvVXJ84XhUahrlXLp1jHQhPyadyQyZVyXkkHKBVyUVhHxzv3mvZoDIFn98U0ODQjENVsIxZgonZSrxRDQDYoxzkvJQDYkgUahrzvpMQDQjsNlvJQ1vJ8AimpJN++9gHyE4.H8+2ODQDQ1NXSzRDQDQDQDQVjLtSqMDQDQDQDQDYjvJrRDQDQDQDQVjXBqDQDQDQDQjEINnKQjMnVLhUZtCAhHhHhnZoRXGyvncrXEVIhHhHhHhHKRrBqDYC6fKdfl6PfHhHhHpVBSwTlHqvJQDQDQDQDYQhIrRDQDQDQDQVjXBqDQDQDQDQjEIlvJQDQDQDQDYQhIrRDQDQDQDQVjXBqDQDQDQDQjEIlvJQDQDQDQDYQhIrRDQDQDQDQVjXBqDQDQDQDQjEI6M2A.QDYIPgBEH0TSEImbxHyLyDETPAnjRJAJUpzbGZjMFQhDAGbvAHUpT3omdBe80W3s2dC6riswLQDQ1dL9IrpTNPlGEHiCBj64AJJE.4EA.dSejsFQ.hcBvIe.bui.0ef.d1K.QhM2AFUFJUpDIlXhHt3hCEVXgl6vgHnToRTbwEirxJKjUVYgDRHA3pqth.CLP3u+9CQhDYT+8wFqgrTvFqgHRaLdIrpTIPxaFHoHAjkgQ6vRj0Kk.xeBPg2Q0Oorc.I0Gvu4.36XALx2zIU8ISlLDSLwfzRKMycnPTkpvBKDm6bmC26d2CgFZnPhDIF7wjMVCYooltwZHhrNXbZxphyD3h8G3VuOSVknJirLTccxE6upqaHyl7xKOb3CeXlrJYUIszRCG9vGF4kWdFzwQlLY33G+33bm6bLYUxhVoMVywO9wgLYxL2gCQjYfgWg0BuIvkGFPQoaDBGhrQj6EAtPWABZ2.t1JyczXyQlLY3Dm3DnfBJPs0KVrXDXfAh.BH.3s2dC2byMHVL6B2TMK4xki7yOejZpoh3iOdDWbwA4xkK79ETPA3Dm3Dnu8su5UkVyKu7z52+IxRVoMVS25V2PcpScL2gCQTMHCKg0hyT6IqJRLPCG.PCFLfaAAHoQ.14fA8qhHqNJJAP1CAx+x.O5m.R+PpdFuKUQoq55mN7a.N5o4KNswnToRDSLwTtaVuYMqYHrvBCd3gGloHiHUDKVLpacqKpacqKZcqaM5ZW6JhJpnvcu6cE1lBJn.DSLwfdzidTs5ljrwZHKYl5FqgHx5j9mvpRk.W8MJexpt2df.9Z.W72.CMhrxYmC.N2DU+zvv.ZVh.wOUfb+y+daJJcUWGEbz7YZsFRhIlX45FvsqcsCgEVXbf8frH4gGdfwLlwfnhJJDarwJr9zRKMjXhIhl27lqSGG1XMjkNSYi0PDY8R+u6rj2rpt0XY48P.B9.LYUhzFW7W00GdOD0WetWT00SjImBEJPbwEmZqqzaVmIqRVxryN6PXgEFZVyZlZqOt3hCJTnPmNFUTi0LlwLFlrJYQpzFqocsqcps9RarFhHaC52cnoTtpQC3xx81CDvp4T1AQUFQhUcch6sW80mTjp2cgIShTSMU0FfYDKVLSVkrZTZRqk86qEVXgH0TSsJ2W1XMj0JiQi0PDYcS+9qTYdT0GMfEIVU2.lIqRTUSaWuHKCUWWQlTImbxpsbfAFHqrDYUwCO7.O2y8bpsNM+ds1vFqgrlYHMVCQj0O86uTkwAUe4FN.1MfIp5vE+UccSYo40UjQWlYp9TIT.ADfYJRHR+o42ayHipd5jiMVCYsSearFhHqe5WBq4dd0WtAC1HDJDYiQyqax8Blm3vFhlC1Ld6s2loHgH8mleuUWlGUYi0P0FnOMVCQj0O8Kg0hRQ8kcKHiPnPjMFMutoH1RwlZkTRIpsrat4lYJRHR+o42a0760ZCarFp1.8owZHhr9oeIrJuH0WVRiLBgBQ1Xz75FMuthL5TpToZKy4YRxZjleuUyuWqMrwZnZCzmFqgHx5mdNZKnwebzNGL7HgHaMk65lp9lNIhH8AarFp1.8owZHhr9wgGPhHhHhHhHxhDSXkHhHhHhHhrHwDVIhHhHhHhHKRLgUhHKZW6ZWCW3BbJ+gHhHhHaQ1atC.hHRSO3AO.QEUTX+6e+3t28tHnfBB+e+e+el6vhHhHhHpFFSXkHxhP1YmMhN5nw92+9QrwFqZuGGIHIhHhHx1DSXkHxronhJBG+3GG6e+6G+9u+63oO8okaapScpCBKrvLCQGQDQDQj4FSXkHqMEdK.Wao4NJzaJTn.m4LmAQEUT3HG4HnvBKrbaiKt3B5YO6IFv.F.d4W9kgCNX6LWOGe7wiXhIF3latggNzgBGczQycHQDQDQjYCSXsVFYxjA6s2dNovWa1kFDP6OFfS9XtijpkqcsqgnhJJbfCb.7nG8nx89RjHAcqacCCX.C.cqacCN4jSlgnz7a9ye9X26d2..3jm7j3ke4W1LGQle23F2.YkUVnicri1TMdgsF1XMDQDoMLg0+m0st0gcricnyOqbyctyE8t28tbqeqacq369tuCJUpDMtwMFKbgKDMqYMqJOde629sXiabiPpToXKaYKnQMpQ5Tb7q+5uh8su8gicrigG7fGfbyMWXmc1g5W+5il0rlgt28tivBKL7RuzKUoGmgLjgfacqaAe7wGDczQC6su7e0vTdtYr972lfrLAhMLf1eT.Gqm4NZzIibjiDW7hWrbq2d6sGu7K+xX.CX.nm8rmvUWc0LDcVVJ60.7Y2U0+1vjm7jA.vvF1vvt10tLyQDYpvFqo7Xi0PDQLgUAQDQDH6ryVm29W7EeQslvzrl0rTq5Qm8rmEW4JWoJao3e8W+Ub1ydV.nZDRspRXM8zSGuy67NXu6cuk68TnPARO8zQ5omNN24NG9rO6yPG6XGwpW8pQG5PGz5w6fG7fnjRJAW+5WGEUTQPpTo0nmaFqO+sY7jG.b4ACDbz.hcwbGMUpbxIG0RVUrXwHjPBACbfCD8t28F0oN0wLFcj4RwEWLr2d6gc1U4ytZkc.35pW8pl5vhLiXi0nN1XMDQjJLg0+mBJn.gWGRHgTkco1JpkeyImbTa4adyahUtxUh2+8eeCOH+e14N2Id228cQFYjgv5jHQBZaaaKBN3fgBEJPRIkDRHgDvcu6cA.v4O+4Qu5UuP5omtd2MqLkmaFqO+soje7.W40ABZ2.1Y41x6ZNPJ08t2cL5QOZzoN0I100sQEQDQfksrkAGczQbpScpJrgz..5cu6M17l2LJt3hwq7JuRMXTRjoAarFhHp5gIrpE+xu7KZsBiUGRkJUHIrO8S+TL9wOdT+5WeCN1VwJVAlyblivx96u+X8qe8HzPCUqcWnKbgKfu8a+VroMsIjat4hryNa3kWdYPwfo5bqTFiO+sIXuy.YeVfqMAf.2LfHQl6HRqpacqqZem4nG8n3nG8nvSO8D8oO8ACX.C.cnCcnJu4Mp1iTSMU.n5F2yJqrpzscnCcnHmbxAEUTQvc2culH7HxjgMVCQDU8w6PzDowMtwXfCbf..H2byEe7G+wF7w7d26dXgKbgBKOrgMLbwKdQz8t28J7YaoCcnCXsqcsHt3hCgGd3ngMrgFbbXJN2H8vyrT.wNB7nnAt0rL2QSExd6sGG7fGDyblyDOyy7LBqOyLyD+3O9iXLiYLnKcoKXIKYI3hW7hrq.RkiDIRXxpTsB5Si0jUVYgHiLxZhviHhrHwDVMQJojRTK4x0rl0fDRHAC5XNsoMM73G+X..z+92erqcsKc9l3ZYKaIV1xVFDYDpBmo3bizCtF.f+yGPjXfj2FPhep4NhpPd6s2XxSdx3fG7fXu6cu3se62FMnAMP38ezidD15V2JF4HGI5V25F9zO8Swktzkp0m7pb4xM2gPEp3hKJ5KiFB..f.PRDEDUVm+7ujRJwDGM5Gi8muVx++Kp1I1XMDQDSX0j4oO8onicriXnCcn.P0MzEQDQn2Gue5m9IbfCb..nZPqwb1ZqF6yMpLNdCq5eJq5zQflNKUcG36sRfG7slm3tZ3Ye1mEQDQD3jm7jXiabiXHCYHpM5.mZpohMu4MiQLhQfdzidfHiLRbu6cOyW.aj8S+zOgwN1whm8YeV3jSNgm+4edLsoMMctQeN0oNE5bm6LBIjPvO8S+Tkts+m+y+AcpScBcu6cG2+92ubuebwEG5bm6L5bm6LhKt3..vd1ydDhMoRkhINwIp19nPgBbnCcHL9wOdzxV1R3jSNAIRj.e7wGDZngh4O+4q1yjdotxUtBFv.F.5e+6ON5QOpv5m27lG5e+6uvOgGd3pseW6ZWCcsqcEgDRHXaaaaU54a1YmMV1xVFF4HGId1m8YgDIRPiZTiPu5Uuvzm9zwUtxUpz8Waedjd5oiO9i+Xzst0M3pqtB+7yOLrgMLryctyJ8XQUNK4j+Yi0X5OdDQT0ASX0DQgBE..XoKcoBSQL6YO6Am5TmRuNde8W+0BudbiabnMsoMFdPpmL1majAxid.z3Io50I7g.osGya7niryN6Pm6bmwm8YeFN0oNE9hu3KP25V2TafXJkTRAqe8qGye9y2LFoFGJTn.u+6+9XHCYH369tuCwGe73oO8o3xW9x3q9puBcnCc.6ae6qJONW6ZWCm9zmFm6bmCm+7muR21e629Mb9yedbhSbBslz+ctycvoO8owoO8owctycv+4+7evvG9vQ7wGOTpTId7iervzLB.vst0sPPAEDF3.GH13F2HRHgDfLYxfRkJwCe3CwoN0ovRVxRPqacqwe9m+oZ+tN+4OOhN5nwO+y+LRN4jEV+EtvEvO+y+rvOae6aWs8612913jm7j3bm6bU5+Fyu+6+NBJnfPDQDA1912NhO93gb4xQpolJN1wNFV0pVE5XG6HhLxHE92vppOOtzktD5XG6HV3BWH9se62fLYxv8u+8wd1ydvq8ZuFlyblSEdrnxiMVCarFhHRevAcISjRac1V0pVgINwIhu4a9F..L6YOablybFcZeKUQEUDhIlXDVdjibjF4ns5wXdtQZn8+r9seMXH.kjCvC2AP7+K.6qGfmc23FalPN6ryXfCbfXfCbfHqrxBG5PGB6e+6GW9xWF..EVXgl4HzvM0oNUrl0rF..HRjHDbvAid1ydhabiafCe3Ci7xKOLjgLDT25VWyR7cjibDrl0rFnToRzvF1PDTPAg6bm6fhKtXgs4+9e+uB2LaoIt17l2b3niNhadyah0t10hG8nGgjSNYLkoLEbtycNgGCgtzktfgLjg.4xkiXiMV7fG7..nZJpprcO7W3EdgpcruoMsILwINQgp.8bO2ygPCMTDP.AfabiafSe5SiKcoKghKtXDd3giae6ai0t10VoGy8su8gcricfG+3GCmc1Y7JuxqfF0nFgicriILhsthUrB7BuvKfgO7gWsiYaIJTn.yctyEKe4KWs0e4KeYb4KeYrksrErksrkp73TZi0.npAPF7fGbEtsk1XM.pF+GZRSZhZueoMNQou93G+3X5Se5B+MpRarlu8aU0qUt0stEF1vFlv2+KqG9vGJzfMaZSaB6ae6Csu8sW38KswZzzEtvEJ24WY+LpzFqA.ncsqcXzidzZ8b82+8eGuwa7FBWSUpTSMUgFr4a9luAKYIKAyZVyRqCvcZ94wSe5SwfFzfTKY+6e+6KzfMyd1yFKaYKiCVdDQ0HXBqZQZoklVakT.UCfL5xHhaYSLaQKZQXaaaaH+7yGm8rmE6bm6Du5q9p5b7b0qdUTTQEIrbqZUqz480TvXdtoMFiO+sI4yaCTR1.YbDf3dSfmee.tGr4Npp17vCOvnG8nwnG8nQRIkDN3AOnZcYXqQ2+92Gqe8qWX40t10pV0axKu7v69tuK99u+6qVyGwFSqd0qF..iXDi.aXCaP3y7xFOMsoME8su8EKXAK.uzK8Rk6X7u+2+aDXfAhzRKMb9yedbzidTg4K4VzhVf8rGUU+ericr369tuC.p92P5Se5idG24latXNyYNBIqFQDQfktzkVtmW+ktzkh4Mu4A.f0u90i268duJsmproMsI..LgILA7EewW.2byM.n5Qh3Mey2D+3O9i..HxHijIrVEXi0vFqgHhLDLgUsnrijoZyku7kQaaaa04iWCaXCQDQDgvMKM24NWLnAMHcd9PM8zSW30t4lavGe7Qqa2QO5Qqz4psm+4edz8tabq5lgdtoMF6O+sozjY.7zbAx4b.WY3.A+y.t1RycToU4me93AO3A3AO3A3wO9wnIMoIvO+7SsFjvO+7Cu669tlwnz33y+7OWX9nchSbhkqqFVm5TGrksrE3fCNfMu4MaFhPU5QO5A1111lPW8G.nd0qdBudVyZVXVyphGQpqe8qOd228cEFT1t4MuoPBqlJKe4KGYlYl..Xzidz3S+TsO3i8AevGf6e+6i0t10JTwu8u+8WoG6IO4Iiu4a9F0R90d6sGqbkqD6d26FEWbw3O9i+.YkUVvCO7v3cRUKBarF1XMDQjghIrpGxM2bq16yLlwLv27MeC9q+5uvctycvpW8pwzm9z0o8szaFCP0ezrhLm4LGboKcoJ78czQGQAETPENE3nuLjyM8g974uMCQhTMxAmP3.4ecfKMHf1eL.mzdibTSSoRkH5niFqZUqpBGHkjJUJF8nGMlvDlfvMJYsaG6XGBudRSZRZcaryN6vF23Fwsu8sU6Q.nlR8pW8vV1xVTKYU8QqacqEd8cu6cMzvpJ8Ue0WI75YO6YWoa6TlxTDptTzQGMd5SeZEd91+92+xkrZo7xKuPm5TmD9+SO7gOjIrVAXi0X5vFqgHxVASXUK1zl1DjHQhVeO6s2dDRHgTsOlN6ry3S9jOAu0a8V..XwKdwXricr5TWfxSO8T30O7gOrB2N+82+JMg0hKtX7jm7DidBqFx4l1XJ972lhH6UMGsdy+MviSBH1v.Z+QAbrdU89ZBkRJof+0+5egqcsqUoaWAET.VyZVC1912NBO7vwvF1vpghPSim7jmfzRKM.nJQmNzgNTgaqHQhLJyUx5iW8UeU3qu9ZvGmxdced4kmAe7pLolZpB+NZVyZFBJnfpzsOnfBB94meHojRBO8oOE2+92G96u+Zca8yO+pzoArF0nFI75TRIEy5.gmkL1XMlNrwZHhrUvDV0hgO7gCoRkZzOtidziFe4W9kH1XiEYkUV3S9jOQmldZBHf.DdcFYjAxLyLUKI1RsyctS0dlaJU8pW8T6Yf0TPeO2zFS0m+j4iBEJP3gGtZIq5niNhm4YdFT+5WeTm5TGjd5oiTRIE7W+0eA.fbxIGL+4Oe3me9UoI4YoqrCZIMtwM1LFIUtp6fmRhIlHNvAN.RN4jwCe3CQZokFjKWtZ8HDSsae6aK7ZMGTcpH95quHojRB.pFbYpnDVqJk8eCt1vfBlo.arFSG1XMDQ1RXBq0fryN6PjQFI5Uu5E.TMHN7du26gF23FWo+wgl1zlBmc1Y7jm7D..De7wiPCMTsd7cxImLMAeUPeO2HS.kOE31efppqJwSf1seyd0U23F2nvH1YcpScv+5e8uvfG7fg6t6d411abiafMrgMf8u+8C4xkiYO6Yi8u+8i5Tm5TSG1FEkcj6r1v.F1YNyYvG9geH90e8WM6i5224N2Q30Uzy1ulJaRQUVOVopv+cspFarFSG1XMDQ1RXBq0v5YO6IFv.F.NzgNDjISFV3BWH13F2XkdyO1YmcnksrkBSwGm6bmSqIrZtoOmajQlRk.ItXUO+pNHU0HErSFdkCLT+e+e+e..vImbBqacqCsqcsqB21V25ViHiLR3s2di0st0gG9vGhcricTtm8MqEkc.HyTW0EMU1q8LFWGd1ydVzm9zGgQw61zl1fvBKL3iO9.O7vCHRjHbkqbErrksLC92ktnr8DCc8YaOmbxQ30VxIQUa.arFSG1XMDQ1RXBqlAKe4KGG9vGFxkKGaYKaAgGd3UYK71wN1QgDV+rO6yv3F23Ta.gvRg9btQFQ2ekpFgfEKAns6xhXDBtnhJR3FWG8nGcklrZYMyYNSbhSbBbqacKDe7waJCQSp+w+3eH75LxHCC93U1Dfqno+oRU1ap1XbC1Ce3CW324W8UeEl5TmZ41l5W+5WikvZYqPjtdC3kMIpVzhVXziI5uwFqwzgMVCQjsDlIgYPaZSav3G+3A.fb4xwBVvBpxA6gErfEHLT6mQFYf4O+4axiS8g9btQFIorIUyAq1YOPfawhYNXMwDSDJTn..PmSVEP0MY1912d.npaBasprU+31291pMMUoMZ64Pur71auEdcpolZktskTRI5PDpat8suMRN4jA.PHgDhVSVUeTUmuUlxlv50u90QVYkUkt8ojRJBcIRmc1YixysHUwpM2XMwEWb3S+zOESaZSCuwa7FXTiZTnG8nGF7uGcEarFhHaILgUyjO5i9HgVHcW6ZWBSH4UjF23FqVRpqYMqQXtRyRS08biJi+re59Ok0i1KvC2A.DADvWA3owc910PT1mqql0rlUs12l27lC.f6cu6ILWCZswImbBAGrpFOPgBEXe6aeU31t8sucbvCdvJ83U1A7j+7O+yJ7lwW+5WONvANfdDwZWYGAxKaLnopJQB.0GbZppQM5Ji6t6NZYKU0KBjISF1xV1Rkt8e0W8UBSwJCaXCicsQSL1XMUN1XMDQjtgIrZl3s2divCOb.np0eKc.ooxLyYNSgQLX4xkiwMtwgAO3AWo2Dvsu8sqwuQe84biL.YcbfGrNUutEKAvqgZdiGMT1VxurCTH5hDSLQ.nZjtVrXwF03plzTlxTDd8G9genvMNVVacqaEu0a8VUY0fdlm4YDF.ptyctC9we7GK21r10tVLoIMIi5yYWoMd.fpoEiryN6xsMm3DmPnGVTYJ6MKewKdQCJt93O9iU60m9zmVqaWzQGM9O+m+C..jHQBV7hWrA86kpZrwZJO1XMDQT0G6qlZwhW7hUqqGoM8qe8Cctyc1f98LqYMKr10tVgVtsp3fCNf8t28hwLlwHjD39129vwN1wPvAGLZaaaqvPaeRIkDN4IOIN4IOov9KRjnp77xXo5dtUV0Te9aQpGUdEH..vwKyT+PdmG3detpAaolNCfFa4MvD4s2di5V25hbxIGb9yedz291WcdeiM1XAf0e2WaTiZT38e+2GYkUVH8zSG8rm8DSZRSBcu6cGYkUVX8qe8XW6ZW..Hv.CrR6UBt5pqXhSbh3y+7OG..u0a8V3F23Fnm8rm31291Xaaaa329seCJUpDsnEs.IjPBFkyg1zl1.O8zSjYlYhhJpH7Vu0agoLkofdzidfqe8qi8u+8iktzkpSUMpzjX..16d2KV4JWIdoW5kPhIlHhO93UKIzpxq8ZuFhLxHwe9m+IxN6rQu5Uuvzl1zvK9huHZUqZEt90uN9se62vpW8pEZ7toMsogl1zlVs+Lfp9lxTlhv.l1G9geH5Se5C7yO+Taa15V2JlvDlfN2XM4kWdBMVynF0nTaaV6ZWKlxTlhIuwZzbLjvb0XMu9q+5ButScpS3kdoWpbaGarFhHqcLg0+GwhEKzEhV9xWdUt8IjPBFbBSt3hKXEqXEXjibjps9JaPJpUspU3Lm4LHxHiDKZQKBxjICETPAkK4TMIRjHLsoMsZro8lp64l43yeqdEFupQDXkxA7cz.9OWycDUgd1m8YwoO8owO7C+.5RW5B5RW5RUtOqYMqQXvVxZOgUWbwE7K+xuf90u9gG8nGg6bm6f2+8ee01FGbvArpUsJ3gGdHbSnUjYO6YiCbfCfadyahm9zmhEu3EWtaB8C9fO.MsoMESZRSxnbN3niNhMu4MivBKL..DUTQgnhJJHVrXgDAcvAGvJVwJvJW4JqzFqpm8rmnicri37m+7njRJAyblyT387wGepVIrJRjHr6cua7lu4ahSdxShm7jmTg+aH1au8XwKdwB8.DxziMVi5Xi0PDQUerKA++LpQMppUWjohl2yJcdkTayujZyq+5uNl27lGbvAG.fpmwuV25VWo6iXwhQDQDAhM1XwXG6Xqvgzd6ryNDTPAg4O+4iacqagUspUUgGyR6lRt3hKBwhlLkmaFqO+sob6O.Pdw.Mn+.s7yM2QSkZ5Se5BI17du26gu3K9hJrqreiabCrnEsHrxUtR.nJIngO7gWSFtlDAGbv3Tm5Tn28t2pMBe5hKtf9zm9fidzihoLkon16U5.sll71auw4N24vPG5PUqQnbzQGwK+xuLNxQNB9jO4SD1eQhDo1wsTkcc5x7b6+7e9OwgO7gE5IG.pd7DbvAGvK9huH98e+2wrl0rfat4F.fv+Ua1291GF3.GX4Vee5Sep1wne94G90e8WwxV1xPKZQKJWCi4omdhd0qdgXhIFDQDQTgMbV04yixdtUYmm15JswZZPCZ..fPi0zoN0Izu90OrqcsK3fCNfUu5UiO7C+vp73M6YOazpV0J..gFqoacqaXBSXB3Dm3DPoRk3C9fO.yYNywncNTZi0TpnhJJLfAL.3pqthfCNXrnEsHnToRrhUrhp7YCszFqA.BMVSHgDBF0nFE1vF1P0JtJswZJsA.KswZFxPFBd1m8YwvG9vw+8+9egb4xg81aO9zO8SqwFEiIhHiIVg0+mMrgMTs+iEZSxImLxImbfGd3gNuOKYIKAezG8Q3wO9wPpTo5bhaADP.BC7RIkTRHszRCYjQFvAGb.d5omn0st0vEWbQmi6rxJKTu5UuJr63ZJO2LVe9aS4oOAndg.zl0CXg+7HETPAgoO8oiO+y+b7jm7Dr10tVr90ud3qu9Bu81aTm5TGjYlYhzRKMjRJon19N8oOcgaP0ZWKZQKvQNxQfb4xwUtxUvie7iQm5TmTqQhF3.GHxJqrfc1YWk13Pt6t6X26d23oO8o35W+5HyLyDuvK7BpcM+nF0nPe6aegCN3fVS.qm8rmHmbxAEWbwBITTU5Se5C5Se5CRIkTPBIj.ryN6PG5PGfyN6rv1boKcIjWd4AO8zyJ73znF0HbfCb.jc1YiadyahBKrPzxV1xxMcanqwnc1YGBO7vQ3gGNdxSdBtwMtARKszPaZSaz4ovipymGKaYKCyd1yFN5ni5bi3YqpzFqYpScp3Lm4LBOqmt3hKHzPCEyadyCcoKcQsmg0ppwZF23FGNzgNDJpnh.fpjJegW3Ev7m+7Qu6cuwO7C+..L9MVS3gGtvTLWoMVSG5PGvJW4JwK7Bu.V+5WO.p5FqYhSbhk6Y10PZrlUrhUf0u90i6bm6HLprCnpwZZW6ZGVxRVBdgW3EpvXhMVCQjkLQJ0mGzix9LzAnaO2cDQkm9bsTo6iaA.Dbz.h0sFknrZwHTU8xCt3xWgKSEEJTfUrhUfst0spSccN6ryN7pu5qhEsnEYzlKeK8lXK0hVzhLJGWhpoo42c07Y4TSVJe2uxZrF.fryN6prwZJUk0XM.pFgxqnFqAP07WZ0owZJUk0XMxjISnwZpp+cqppwZzmXTearlp6uqG8nGY1Zrlp628IhpYMv4qpw3RXGyvncLYEVIxZjyMFHneRuRV0bozJf8Fuwafu7K+RbjibDgpiTVhEKFcsqcEyblyzp+YWkHRchEKtRmOl0bvLpxXu81i1111VguekUge.c+waQS93iOU3ihiDIRz4jKqW8pGBIjPpzso5FiN6ryUq46Z882U0MIehHxPvDVIxZiDOAZ29AbT2uwNKI95quHxHiDKe4KGokVZHojRBolZpn90u9nIMoIvGe7wpdJrgHhHhHx3gIrRj0lmee.NY8OouKRjH3s2dCu81aycnPDQDQDYghiRvDYsw0VZti.hHhHhHpFASXkHhHhHhHhrHwtDLQjI2YNyYvie7i068uIMoIpM.LcjibDb5SeZDP.AfQLhQXLBQhHhHhHKPLgUhHSp7yOeL1wNVC5XzwN1QrsssM..TbwEiYO6YCYxjI7d96u+5zwQjHQnryjWxkKmCvSjUG4xkq1x55b2MQDQj0H8rKAqwebTQIFdjPjslxccSsya5rjRL7+8gxNusJSlL0Nl4lat57wQy47w7yOeCN1HpllleuUyuWqMZlTqlI8Rj0.1XMDYaR+pvpXm.j+j+dYYODv4lXjBIhrQH6gpurXmLOwgIlGd3AlvDl.JrvB06iQvAGrvqcyM2va+1uMN1wNFZUqZEdtm64z4iiToRQVYkkvxolZpnt0st5cbQj4PpolpZKKUpzpbebvAGTqgexO+7428IqN5Si0PDY8S+RX0Ie.J7N+8x4eYlvJQUW4eY0W1IsOQzWavblybLpGuvCObDd3gWs2OO8zS0RXM93iGst0s1XFZDYxEe7wq1xd5omU49vFqgpMPeZrFhHqe5WWB18Np9xO5mLBgBQ1Xz75FMuthL570W0m+ZiKt3T6l3IxRWVYkEhKt3TacZ98ZsQyjZ0LoWhrFnOMVCQj0O8Kg05OP0WN8CA73DMBgCQ1Hdbhpttorz75Jxnyau8Ft5pqBKKWtbDUTQAEJTXFiJhzMJTn.QEUTp8b74pqtBu816pbeYi0PV6z2FqgHx5m9kvpm8BPR8+6kUJGH9op5+RDU4z10KRpupqqHSJ6ryNDXfAp15t6cuKSZkr3UZxp28t2Us0GXfAB6rqp+S4rwZHqYFRi0PDY8S+RXUjX.+z3YRK2+DH92kIsRTkQobUWmj6ep958aNpttxFRN4jChKt3vO+y+L1291GhM1XqQp3i+96O7xKuTacwFarXqacqrhSjEorxJKr0stUDarwp158xKuz4ozI1XMj0JCswZHhr9o+yCq9NVfz1APtW7uWWp6E3I2GHfuFvEc6OhRjMiGmnpJqpYxptGrpqmrATbwEicricf0st0gzSOcstMRkJEcsqcEyd1yF93iwefnRjHQHzPCEG9vGFETPABq+t28t3q+5uFAFXfHf.B.d6s2vM2biySqTMN4xki7yOejZpoh3iOdDWbwUtoyCoRkhPCMzp0z5g+96Ot28tGRKszDVWrwFKxImbPXgEF7vCOLZmCDYLjUVYo0jUqNMVCQj0OQJUpTodu2EmIvE5JPQZbimhDCzvA.zfAC3VP.RZDfcbnGmrwnnDUScM4eYUCvRoenx2CDbpg.c32.brlcfinEiXk..3fKtl64l8JW4JXZSaZkaTdrhHQhD71u8ai+8+9eaRZE87xKObhSbB0RZkHqARkJEcqacC0oN0oZuuxjIqbMVC.fXwhYi0Plc5Zi0z291WHQhDyTTRDUYF37OH..RXGyvncLMrDVA.J7l.WdXkOoUhnJmSMDHncC3Zqpw+UWSmvZd4kGFzfFDRIkTDVmToRge94G7xKufat4FxHiLP5omNRLwDU6FTBO7vw3G+3MIwkLYxPLwDiZUbhHKYd4kWHzPC0ftYc1XMj0JCowZHhpYXJRXU+6Rvkx0VopBQW8MTu6ASDUwbOXfm66qwqrp4xG8QejPxp93iOXJSYJ3UdkWAN4jSkaaSM0Tw1291wF1vFPwEWL9xu7KQW6ZWwy7LOiQOtjHQB5QO5ARLwDQbwEGJrvBM5+NHxXvUWcEAFXfve+8uZ0Mf0l5Tm5f9129xFqgrpXLZrFhHqSFdBq.pto6fiFH4MCjTj.xxvnbXIpVGI0W0.rjuiEv.uoSqIm7jmD.ptQ4MsoMgl1zlVgaq2d6Ml9zmNZUqZElwLlAJt3hw1111vhVzhLIwlHQhPyadyQyZVyPpolJRN4jQlYlIJnfBPIkTBLzNgBQUWhDIBN3fCPpTovSO8D95quvau81n103Yi0PVKLlMVCQj0IiSBq.pt46+waC36aBj4QAx3f.4ddfhRAPdQ.f2zGYqQDfXm.bxG.26np4YUO6kM2nAbJojBxKu7..va+1ucklrZY0+92erqcsKDSLwfabiaXBiPUryN6fO93iIYfdhHKQrwZHKM0DMVCQj0GiWBqkRjXf52WU+PDYyKgDRP30sssssZsuAETPHlXhA25V2BJUpjstNQl.rwZHhHxRFaxJhHSJmc1YgWquIbJSlLiU3PDQDQDYEgIrRDYRU14Ju3iO9p09dyadS..3qu9xpqRDQDQjMHlvJQjIU8qe8QaZSa..v1291wSe5S0o8K4jSFm3Dm...ctyc1TEdDQDQDQVvXBqDQlbiabiC..O3AO.e8W+0U41qToRrfEr.7zm9THVrXLlwLFScHRDQDQDYAhIrRDYx8O+m+SLfAL...rgMrAgQM3JRJojBt90uNbwEWv7l27TqaESDQDQDY6v3OJASDQZwJW4JwRW5Rg81aObvAGpzs0We8Em4LmoFJxHx1lBEJ3zZCYQfSqMDQZCSXkHpFSYGwfIhLuTpTIRLwDQbwEGJrvBM2gCQPoRkn3hKFYkUVHqrxBIjPBvUWcEAFXfve+8mC9dDYixzjvpR4.YdTfLNHPtmGnnT.jWD.Xq0R1ZDAH1I.m7Av8NBT+AB3YuTMeEaiStb4HszRC2+92G4kWdnwMtwvO+7Ct3hKl03hUahrTXJq1jLYxPLwDCRKszLBQJQlNEVXg3bm6b3d26dHzPCERjHwbGRDQ0vLtIrpTIPxaFHoHAjkgQ8PSj0Ik.xeBPg2Q0Oorc.I0Gvu4.36XArAas3e+2+c7ke4Whabian0QL3FzfFfAO3AiIO4IC2bysZr3hUahrzXpp1Td4kGNwINAJnfBLxQLQlNokVZ3vG9vnacqanN0oNl6vgHpFjHkFqxFTbl.W8M.x8hFkCGQ054dv.O22C3nm03+pawHVI..N3hGXM1uyzRKM7AevGfXhIFcZ6qW8pGl4LmIdsW60LwQFq1DY8wKu7Rup1jLYxvgO7gKWxphEKFAFXfHf.B.d6s2vM2bChEydBBUyRtb4H+7yGolZpH93iGwEWbPtb4psMRkJE8su8kUZkHKGc8Le...H.jDQAQETCb9GD..IriYXzNlFmDVK7l.WdX.EktQHjHxFhSMDHncC3ZqpQ+0ZNRXc7ie7pkrpKt3B7wGefDIRv0t10fiN5HZQKZAt8suMjISlv1sl0rFz8t2cSVbwpMQVqjJUZ0pZSJUpDG+3GubMLSyZVyPXgEF7vCOLEgIQ5srxJKDUTQg6d26p158xKuPO5QO3yzJQVfLEIrZ3cI3hyT6IqJRLPCG.PCFLfaAAHoQ.1U4iLnDUqihR.j8Pf7uLvi9IfzOjpmw6RUT5pt9oC+lYoRq0T18t2sPxp93iO3ce22ECYHCA1au83hW7hXjibjnt0stXO6YOnjRJA+3O9i3q9puB4latXtyctX+6e+ngMrgF83RlLYZMYUVsIxRPUUsoBJn.bhSbBctZSIlXhkKY010t1gvBKLNJrRVj7vCOvXFyXPTQEEhM1XEVeZokFRLwDQyadyMiQGQTMECKgUkJU0Mf0LYU2aOP.eMfKbtSjrwYmC.N2DU+zvv.ZVh.wOUfb+y+daJJcUWGEbz0ZelV+1u8aAfpQI3MsoMgl1zlVgaqCN3.dy27MQaaaawnG8nQ1YmM1111Fl4LmoQMlTpTIhIlXJWxprZSjkBwhEi5V25h5V25hV25Vit10tVtpMUPAEfXhIlprZSJTn.wEWbpstR+tNSVkrjYmc1gvBKLjSN4n128iKt3PyZVy32eIxFfgcUdxat7OypdODffO.SVkHswE+Uc8g2CQ80m6EUc8TsPkTRI392+9..XpScpUZxpk0y+7OOFwHFA..t90utQOtpnpMMlwLFlrJYQpzpM0t10N0VeoUapxjZpop1fIlXwhYxpjUiRSZsreesvBKDolZplwnhHplh9+WpTJW0nAbY4d6ABX0bJ6fnJiHwptNw81q95SJR06tv0RjTRIIzMFCJnfpV6avAGL.L9IrxpMQVqJ8F2aVyZlZqOt3hCJTnnB2ujSNY0VNv.CjMLCYUwCO7.O2y8bpsNM+dMQTsS5+clk4QUepqQjXUcCXlrJQUMsc8hrLTccUsLkVcU.fm4Ydlp09JUpT.nZfQRyQJRCAq1DYMSep1TlYloZKGP.AXxhOhLUz76sYjAmBEIxVf9e2YYbP0WtgCfcCXhpNbweUW2TVZdcUs.t3hKBut5NhNdqacK.nJQWi4fdDq1DYsq5VsIMeVs81auMIwEQlRZ98VNmYSjsA8Og0bOu5K2fAafgBQ1fz75lbuf4INLg7zy+dzO9QO5Q579kat4hu+6+d.X7qFDq1DUaP0oZSkTRIpsrat4lIIlHxTRyu2p42qIhpcR+SXsnTTeY2pdOaZDQn7W2TTsumGml0rlILkab0qdUcZetvEt.F+3GOd3CeH..5ZW6pQMlX0lnZCpNUaRyobcNMMQViz76sZ98ZhnZmz+o0F4Eo9xRZjAFJDYCRyqaz75pZAr2d6QPAED9i+3OvINwIvvF1vz51kSN4fgMrggTSMU0pTzfG7fQ+5W+LpwDq1DUa.q1DQDQ1BLfQXDMZUK6bvvhDhrEUtqapc1ZwgEVX..33G+3Hu7xSqaSwEWLhKt3TKY0PCMTrnEsHid7vpMQ0FvpMQDQjs.8uBqDQjNZnCcnnvBKDO4IOobC7R94mevEWbAO9wOF..t6t63Ye1mESYJSAuvK7BlivkHhHhHxBASXkHxjyd6sGu8a+1Z887zSOwoO8owCdvCPiZTiX2ykHhHhHR.SXkHxryYmcFsrkszbGFDQDQDQVXLfmgUhHhHhHhHhLcXBqDQDQDQDQjEIlvJQVaJ7Vl6HfHhHhHhpQvmgUhr1boAAz9iA3jOl6HgHhHSnryNa7ce22AYxjgANvAh.CLPycHQDQ03XBqDYsQVl.wFFP6OJfi0ybGMDQTsN23F2.YkUVnicrivAGLeyy7m7jmDyXFy...IkTRX0qd0lsXgHhLWXWBlHqQO4A.Wdv.xer4NRHpFU1YmM9xu7KwxV1xPbwEm4NbnZgV25VGBHf.Pm6bmwHG4HM2gi.kJUZtCAhHxrfUXsVHYxjA6s2dHVrXycnPlR4GOvUdcff1MfcluJ.P1FXEmHaEwFarBu9pW8pU31UbwEC6s2dXmcrs+IhHSIlvZYrt0sNricrCctULm6bmK5cu6c4V+V25Vw28ceGTpTIZbiaLV3BWHZVyZVUd791u8awF23FgToRwV1xVPiZTizo33W+0eE6ae6CG6XGCO3AO.4latvN6rC0u90GMqYMCcu6cGgEVX3kdoWpRONCYHCA25V2B93iOH5niF1ae4+5go7byX84uMC6cFH6yBbsI.D3lADIxbGQTsTqacqCSdxSF..CaXCC6ZW6xLGQpvJNQlB8t28FadyaFEWbw3UdkWQqaSDQDAV1xVFbzQGwoN0oPG5PGpgiRhHx1ASXsLhHhHP1YmsNu8u3K9hZMgoYMqYgG8nGIr7YO6YwUtxUfiN5Xkd790e8WwYO6YA.vCdvCpxDVSO8zw67NuC16d2a4dOEJTfzSOcjd5oiyctygO6y9LzwN1Qr5Uu5J7OrdvCdPTRIkfqe8qihJpHHUpzZzyMi0m+1LdlkBjv6C7nnAt0r.Z0WXtiHpVJVwIxVxPG5PQN4jCJpnhf6t6tV2lTSMU.n567YkUV0jgGQDYygIrVFETPABuNjPBoJ6Rsu7K+xZc84jSNps7Mu4MwJW4Jw6+9uugGj+O6bm6Du669tHiLxPXcRjHAssssEAGbvPgBEHojRBIjPB3t28t..37m+7nW8pWH8zSuJSvrhXJO2LVe9ayv0..7e9.2dQ.IuM.GZ.f+y0bGUTsPrhSjsFIRj.IRjXtCChHh.SXsB8K+xun0JLVcHUpTgjv9zO8Sw3G+3Q8qe8M3XaEqXEXNyYNBK6u+9i0u90iPCMTs9rkcgKbA7se62hMsoMgbyMWjc1YCu7xKCJFLUmakxX74uUqi2PceaqSGAZ5r.tWj.2ak.NTefFOQSWrQ1jXEmHqcxkK2habcnztztHC3w4vR77hHhL1X+1xDpwMtwXfCbf..H2byEe7G+wF7w7d26dXgKbgBKOrgMLbwKdQz8t28JbfPoCcnCXsqcsHt3hCgGd3ngMrZjPTEvTbtQ5IO5APimjpWmvGBj1dLuwiV7Nuy6fAO3AiKbgKnW6eQEUD5d26N5RW5BN8oOsQN5HcgDIRpvjUIxb6pW8pnyctynKcoK3d26d.P0iMybm6bQyadygDIRPiZTivvF1vvpV0pPIkTREdrt10tF5ZW6JBIjPv1111DV+UtxUv.Fv.P+6e+wQO5QEV+7l27P+6e+E9I7vCuBO1W+5WGSYJSActycFt6t6PhDInEsnEXpScp3F23F5z4Z1YmMV3BWH5RW5BbwEWfe94GF1vFF14N2oNs+DQj0FVgUSnRJoDrvEtPbvCdP..rl0rFLsoMMzhVzB89XNsoMM73GqZpLo+8u+UqA+jV1xVhksrko2+tKKSw4FAf1+y5290fg.TRN.ObG.w+u.rud.d1ciarY.90e8WA.P7wGud0UQcxImvy8bOGN7gOL9fO3CvgNzgfKt3hwNLsoXoUYFiQ0l.r7NunZFIlXhBMl0CdvCv0t10va+1usZi4BolZpXO6YOXO6YO3vG9vXW6ZWZ8eG412913jm7j..ncsqcXzidz.P0iUSzQGc41dMaHtqcsqgku7kq15TnPA9hu3KvG9geHjISV498c6aear10tVrpUsJL0oN0J77L1XiECaXCS3Q8A.392+9392+9XO6YOX1yd1XYKaY74HmHpVE9unYB8zm9TzwN1QLzgNT.nJIuHhHB8938S+zOgCbfC...whEiHiLRiRbpOL1majQfOuMP86CfhmBD2aBj6EM2QjQUDQDAb1YmwCe3CwW7Eb.lppXMTwIiQ0l.XEmH0sksrELnAMH7nG8H3s2di268dO7AevGfN0oNIjHWzQGMFzfFT0531ktzELjgLD7JuxqfF23FKr9W7EeQ7JuxqH7y67NuS4124O+4i4Lm4.YxjAQhDg9zm9fErfEfErfEfAO3ACGbvAHWt7J8ui9a+1ugW5kdIb26dW3ryNiQLhQfoO8oim64dNgsYEqXEXO6wxqW1PDQFBVgUSHEJT..fktzkh8u+8im9zmh8rm8fScpSgN24NWsOde8W+0BudbiabnMsoMFsXs5xXetQFIMYF.OMWfbNGvUFNPv+LfqszbGUFE93iOXRSZRXUqZU36+9uGCbfCDsqcsybGVVrrjq3jwpZS.rhST4s90ud..g+8BmbxI..7IexmfMtwMhwO9wC.fidzih+3O9CzoN0Ic531hVzBgjAG6XGK9tu66..vhVzhPe5Sepv8KojRRnQ1jHQB1xV1BdsW60Taat28tGl7jmrZiH2ZJ93iG..SXBS.ewW7EvM2bC.pZ.427MeS7i+3OB.fHiLRL7gObc5bhHhrFv+BtITocwsV0pVgINw+dfvY1yd1579VphJpHDSLwHr7HG4HMRQo9wXdtQFQhDoZjC1smEnjB.tzf.JJEycTYzLgILAzjlzDnPgBL+4O+JspfzeyRqhSFipMAvJNQUr4N24h0t10JjrZoF23FGFyXFivxqd0q1jGKQDQDnnhJB.p9ajZlrJ.PSaZSwO+y+L9i+3Opzi0jm7jw5V25DRVE.vd6sGqbkqTXz++O9i+fC7YDQ0pvJrVARKszTaZVorr2d60oQD2xlX1hVzhv1111P94mON6YOK14N2Id0W8U0434pW8pB+AO.UIJZNYLO2zFiwm+1rDYup4n0a9uAdbR.wFFP6OJfi0ybGY3zm9zBOC15ql27li6e+6iDRHArt0stprBbjkUEmLVUaBfUbhzt90u9gktzkVgu+a7FuA15V2J..hJpnL4wygNzg.fp+1k15tvkRjHQnoMsoU362+92e7Mey2n0myau7xKzoN0IgF19gO7gvCO7vvBbhHxBASXsB7LOyyTou+ku7kQaaaa04iWCaXCQDQDAl27lG.T05uCZPCRmmOTSO8zEdsat4F7wGez51czidTb0qd0J7377O+yit2ci6fwigdtoMF6O+IKCG+3GGG+3G2nc71yd1CSXUGM24NWsdS7iabiCm3DmP3F3W8pWsNmvp9n5TsojRJop73M4IO4xcS7kVwocu6cihKtXgJNwaf21PkkzG.P26d2gXwhgb4xQVYkEd7ierIaPb6QO5QHu7xC.pZn4+w+3en2GK+7yuJcPIqQMpQBuNkTRwr9XCQDQFSLgU8Tt4la0delwLlA9lu4ave8W+EtyctCV8pWMl9zmtNsuYlYlButx9iwyYNyAW5RWpBeeGczQTPAETgSAN5KC4bSenOe9ayP4SAt8Gnp5pR7Dnc62hn5plBxkK2bGBVErjp3jwpZS.rhSj9wQGcDd5omBMDbxImrIaDtOgDRP30UTCMar3omdJ75BKrPS5uKhHplDSXsBroMsIHQhDs9d1au8HjPBoZeLc1Ymwm7IeBdq25s..vhW7hwXG6XQcqacqx8sr+gnG9vGVgam+96eklvZwEWLdxSdhQOgUC4bSaLEe9aSPoRfDWLP9WGvAo.O+9.bxWycTIHjPBAO6y9rFsime94mQ6XUalkREmLlUaBfUbhzed3gGBIrlc1Yax98bm6bGgW6s2dax98.X3SITDQjkJlvZEX3Ce3PpToF8i6nG8nwW9keIhM1XQVYkE9jO4Szooml.BH.gWmQFYfLyLS0RhsT6bm6DEWbwka80qd0SsmAVSA88bSaLUe9Wq28WopQHXwR.Z6tr3Fgf6Uu5kZC3IjkgZpJNUSVsI.VwIphke94K7ZS42EK6f9D6YPDQj9giRv0vryN6TKIt+6+8+hG7fG.fJu0QaZSaJb1YmEVtzAaDsc7cxImJ2O0Dz2yMxHIkMAjwQ.rydf.2Bf6AatiH5+m8tyiKpJ2+Cf+YXXeQTwkQHBgbWTxcRobe+hoRZpokoYl509YohnlKo1hKE08Vlakl5szatinQ4VtUlljJJnnnfgBnrCJyfyL+9i4xIlg0Ye6y6Wu3ky4vYNyyY7bd362yyy44wJR46trFqVbxT1ZS.rdGpxIWtbjQFY..U8XGiYBqAFXfBu9u9q+xn84PDQ1xXBqlA8su8ECYHCA..RkJEKYIKA.UevUN3fCnEs3uasryctyYbKj5Hc4XiJm+XP09eJuGrWf6uS.HBn0eAfOF1AVKx1monEmXqMQlB0zy19oO8oE1lm5odJ8dN5sx5USko7IrdyadSidOchHhrEwDVMSV0pVEDKVL.TMGIlTRIUi+QytzktH75O9i+Xi5yci9PWN1H8PNGC3taP0qa9J.Z7HMukmJQYmOXne1oICCSUKNwVahLE15V2JhM1XqxeeYCvX.PmG07K+3yvUu5UqxsyGe7Q35oBJn.09rqLVp+cchHxbhYQXlz111Vg49P4xkiEu3ECGcr5ejhW7hWL7vCO.fpmi0EsnEYzKm5Bc4XiJm9jU0+S4Uv4AtymnZvVpouCf+Sw7TlqAG3.G.e629sHhHhvbWTrKYozhSr0lHSAoRkhQNxQhCbfCTge2ANvAvV1xV.fpd9SjQFoN8Y3me+8fY2Eu3Eq1sMpnhR30qXEq.23F2nBaSokVJV7hWL70Weq1VrkHhrGwDVMid+2+8EFXg10t1ERHgDp1s2e+8WsjTW25VG17l2rQsLpqz1iMRGTbhpFQfUJGvuwCDz7M2knpTyZVyPngFJagUyDKkVbhs1DYpHSlLLxQNRLjgLDr0stU7S+zOgYO6YiwLlwHbyYF9vGNZUqZkNs+6XG+6wHf8t28hniNZbtycN78e+2iEu3Eq119lu4aJLhXmVZogPCMTrhUrBDWbwge9m+Yr5UuZzpV0Jr7kubTRIkfRKsTc7nlHhrMwDVMijHQhvc2UoRk37m+70364ce22UXDCVtb4XRSZRX3Ce3BitmUladyaZxmuJ0kiMRKcyE.HWFPCGLPK9DycogrfYI0hSr0lHiswO9wiANvAB4xkiCe3CiW60dMLvANP7oe5mhG+3GC.f92+9iu4a9Fc9ynu8suBOlNkVZo3ce22EgFZnXbiab3q+5uVss0EWbA6d26VXZ3J2byEKZQKBCZPCBCX.C.QFYjHkTRA..u7K+xB8jJhHhTg8SypvxW9xgyN6b0tMCZPCB8nG8Pu9bl8rmMV+5WORO8zqUauSN4D16d2KlvDlfPRf6e+6GG8nGEcricDsu8sGgDRH..H0TSEm7jmDm7jmT38KRjnZ73xPQaO1JOS02+V0dxiApWn.scS.bPshpAk0hSCX.C.iYLiARjHAwEWb3q9puxn0hScu6cGojRJHwDSDKaYKC.pZsoUspUg+5u9KgVa5ce22EcoKcAN3fC3O+y+DqacqSH.9RKsTSVcVjsAO8zSrksrErpUsJrxUtR0Ffu72e+w3F23vG7AefvyVek89KScpScpxOm8u+8ioLkoTgduv.Fv.pv110t1UDe7wiYLiYfCe3Ci7xKO098cpScByd1yFicriUmJK..d4kWU5qIhHqcLg0xQrXwBcEmUspUUiaexImrdmvj6t6NVyZVSE9iTU2yPVKaYKwu9q+JV8pWMV5RWJjJUJJpnhpPxoZRjHQXlybllro4Fs8Xyb78uUMuZMP62AfCra1RUuwO9wiG7fGf3hKNb3CeXb3Ce3JrMFpVb57m+7Bs3TY70WeERXsrVaZzidzH0TSUn0lpLr0lHckXwhw7m+7w67NuCtvEt.JrvBwy9rOKZRSZRM9d6ae6KxKu7fLYxPCaXCqxsqIMoI3fG7fH2byEW+5WGEWbwnEsnEve+8uR295Uu5gu669N.n5FJe0qdU3gGdfV1xVVkSyS01xB.vJW4JwblybfyN6L71auqwiShHxZA6Rvky3F23zpoekm9oe5Jc8k8GJps+AiwLlwfEtvEJ778EXfAVisxgXwhQTQEEhO93wDm3DqxQ0SGbvADRHgfEsnEgabiafO+y+7pbeV1yfl6t6dU9rFZLO1LTe+aWvM+ABYe.hc2bWRHq.d5omH1XiEe3G9gU3ZW+82eLu4MOb3CeX0dNT078WlZpEmF5PGZEVuls3TYs1zXG6XqzOyN0oNgu669NricrCctr.vVbhTMUJEVXggAO3AWqRVsLd6s20XBhkod0qdHzPCE8su8sJSVUSADP.XHCYHnm8rm03bRr1TVZXCaHSVkHxlCag0x4q+5utBO6I5hzSOcjWd4g5W+5WqeOqXEq.u+6+93QO5QvSO8rVm3VqacqEF3kRM0TQlYlId3CeHbxImfO93CZUqZEb28ZWRMomd5HmbxA0qd0qJ6BdFyiMC02+17bwGfNb..mqm4tjPVQrzZwIco0lzlxB.awIhHhHaALgUi.mc1YznF0Hs98IVrX8pU.BHf.DFTGzEN4jSnwMtwU61XtN1nx4Y2Ofq9UyaGQUhxZwIsk1jvWYs3Tsk1V2k1TVpssLEQDQDYYhcIXhr13QKL2k.hHhHhHxjfIrRDQDQV0J+iZh1LVHPDQjkO1kfIhHhHqZ8su8Ee228cPpTonW8pWl6hCQDQFPLgUhHxFDawIxdhGd3QElB0HhHx1.SXkHhrAwVbhJOQhDAkJUJrrb4xgXwhMikHhzdxkKWsk4MiiH6CLgUhHxFDawIp7bxImfLYxDVtvBKrJm2cIxRUgEVnZKWUyY7DQ1VziAcIMtqVJJU+JIDYOpBW2v6Vrofl2UdMuq8DYMPaZsIO8zS0VNiLxvnTlHxXRyya077ZhHaS5dBqhcU8kkde8rnPjcHMutQyqqHiBMuq7ZdW6IxZf1zZS93iOpsbhIlnQoLQjwjlm2p440DQ1lz8DVc0W0WtvKomEEhrCo40MZdcEYTvVahrEnMs1je94mZKmPBIfbxIGiR4hHigbxIGjPBIn15z77ZhHaS5dBqd2E0W9A6SOKJDYGRyqaz75Jxnfs1DYKPaZsIIRj.O7vCgkkKWNhIlXfBEJLZkOhLTTnPAhIlXTqav6gGd.IRjXFKUDQlJ5dBqMXnpubVGB3QonmEGhri7nTTccS4o40UjQAasIxZm11ZSN3fCH3fCVs0c6aealzJYwqrjUu8susZqO3fCFN3fdLTrPDY0P2uR2m9A3RC96kUJGHwYn5eIhpdU10Ktz.UWWQFcr0lHqY5ZqMETPAgF23Fq15hO93w11113MrgrHkSN4fssssg3iOd0VeiabiQPAEjYpTQDYpo6IrJRLP.yU80k+e.j3zYRqDUcTJW00I4+Gpu9.lqpqqHiN1ZSj0J8o0lDIRDBKrvpvy55su8swW9keI16d2KRJojPd4kGG4rIyB4xki7xKOjTRIg8t28hu7K+xJbttmd5IBKrv3bvJQ1Qzu4gU+lHPl6DH+K92qKi8B73z.Z8WB3Nu6WDolGkhpVVUyjU8tiptdhLYBJnfvctycPlYlov5hO93Qd4kGBO7vQ8qe8MikNhpnbxImJMYUso0lbwEWPu5UuvINwIPQEUjv5kKWNtzktDtzk3.nHY4xSO8D8pW8Bt3hKl6hBQjIjHkJUpTu1CxxF3B8DnjrzXOKFnQCAngCGvqP.boI.NvI3YxNihRUM00T3kTM.Kk0gpXOPv0FAz4eAvYS2vyeye4nA.PrK299YlUpToHt3hSs.2A.DKVLBN3fQqacqgDIRfWd4EDKls9MYZIWtbTXgEhLxHCjXhIhDRHgJzxmd5omXfCbfZc.7RkJEm9zmVsaXCQVxZbiaLBKrvXxpDYganKJV..j7NeGC19T+ZgU.UAYGxtAtTDpmzpR4.YFipeHhpbt1HUW+XBSVk9ar0lHqY5SqM4hKtf9zm9fTRIEjPBIfhKtXiPIjH8mGd3ABN3fQPAED6FvDYmR+SXE.viVppEhtxqnd2ClHpp4cGAZ2+gIqZlUm5TGLvANP1ZSjUECQqMIRjH7LOyyf.CLPjQFYfzSOcjc1YihJpHTZokB8sCXQj1RjHQvImbBd5omvGe7A94mePhDIbz.lH6bFlDVATEzcGOLP5aAH0UCH8gFrcMQ1TboApFfk7ah.7tEaQfs1DYsvXzZSN3fCvWe8E95quFj8GQDQjgjgKgU.UAe+TuNfeuJP1GA3gwBj+4AJ4d.xKA.7t0R1aDAH1U.W8Ev6tnZdV0m9wQCXKPr0lHKMr0lHhHhLDC5RDQVcJaPWhHhHhHhLzLjC5R71zRDQDQDQDQVjXKrRDQDQDQDQVjXKrRDQDQDQDQVjXBqDQDQDQDQjEIlvJQDQDQDQDYQhIrRDQDQDQDQVjXBqDQDQDQDQjEIlvJQDQDQDQDYQxQycAfHxzq4ubzl6h.QDQDQjMpj246Xv1WrEVIhHhHhHhHKRrEVIxNVrKenl6h.QDQDQjMhgtnXM36S1BqDQDQDQDQjEIlvJQDQDQDQDYQx3zkfUJGH6i.7vXAx+7.kbO.4k..kFkONhrbIBPrq.t5Kf2cAnACEvm9AHRr4tfQZPgBEHiLx.omd5H6ryFEUTQnzRKEJUx5sHSKQhDAmbxI3omdBe7wG3me9AIRj.Gbf2iYhLjX89jkBVue0yvlvpRk.ouEfTWMfzGZP20DYcRIf7GCT7sT8y81AfKM.Hf4B32DADIxbW.s6oToRjRJofDRHATbwEatKNDAkJUBYxjgbxIGjSN4fjSNY3gGdffCNXDTPAAQF35MXP6jkBSUP6rdexRiotdeqMFtDVkkMvUdEf7unAaWRjMIoOD3FyCHycBzt+Cfy9XtKQ1sjJUJN8oOMxLyLM2EEhpVEWbw3bm6b3N24NHrvBCt3hK589jAsSVZLEAsy58IqEFi58sVYXtkUEecfKzSlrJQZi7unpqaJ95l6RhcoBJn.DWbwwfVHqJYlYlHt3hCETPA509QpTo3XG6X3bm6bLYUxhVYAsericLHUpT8Zew58IqQFp58slo+svprrAtTD.kjk5qWjXfFMDfFNb.uBAvkl.3fS58GGQVwV7f2J...B.IQTPTUTTJfz6CT3k.dv9.x5PpdFuKSIYo55mN+KrkVMgjJUJNwINAJpnhTa8hEKFAGbvn0st0PhDIvKu7BhEym2XxzRtb4nvBKDYjQFHwDSDIjPBPt7+tdihJpHbhSbBLvANPc5NtWPAETom+SjkrxBZuW8pWnN0oNZ86m06SVxL106asSjR84gTQoRfKN3J1xpd2IfV+k.tGjdV7HxFyiRAHwY.j+en958ti.c7vlrmo0l+xQC.6y4gUkJUhicriUg6vdfAFHBO7vQ8qe8MSkLhpb4jSNHlXhA2912Vs023F2Xzm9zGspaRJUpTDWbwwf1IKR0TP6..d5omZcP6rdexZigrdeSsxlGVSdmuiAaepecI3z2RESVUxH.53AYxpDUYbOHUWeHYDpu97unpqmHitTRIkJDzRG5PGvDlvDXPKjEo5W+5iILgIfNzgNn15yLyLQJojRsd+nToRb5Se5JjrZfAFHlwLlAFwHFAZUqZEpacqKSVkLKDKVLpacqKZUqZEFwHFAlwLlABLv.UaaJpnhvoO8o0pAELVuOYswPUuusBcOgUkxUMZ.Wdd2IfVuVNkcPT0QjXUWm3cmTe8otZ06tvjAmBEJPBIjfZqqr6vNG53IKYN3fCH7vCuBAumPBI.EJTTq1GLncxZigHncVuOYsxPTuusBc+J0rOh5ScMhDqpa.yjUIplUYWuH8gptthLZxHiLTa.lQrXwLnExpQYAuT9yWKt3hQFYjQM9dYP6j0J8MncVuOYMSep22Vhte05CiU8kazPX2.lHsg6Ao55lxSyqqHCpzSOc0VN3fClsrDYUo90u9ncsqcpsNMOutxvf1IqY5SP6rdexZmtVuusDc+uTk+4Ue4FNb8rnPjcHMutI+KXdJG1IxN6rUa4V25ValJIDo6z771G9vGVEa4eiAsSV6z0f1Y89js.codeaI5dBqkbO0W1qPzyhBQ1gz75lRrutiYlZZNXyHQhDyTIgHcmlm2ValGUYP6js.cIncVuOYKPWp22Vhtmvp7RTeYWZhdVTHxNjlW2n40UjAUokVpZK6kWdYlJIDo6z77VMOutxvf1IaA5RP6rdexVftTuusD83gWQigSbGbR+JIDYOpBW2n6SKxTMSyoAAN0cPViz771Zyz6ACZmrEnKAsy58IaA5R891R3ns.QDQjMNFzNYKvdOnchrWwDVIhHhHhHhHKRLgUhHhHhHhHxhDSXkHhHhHhHhrHwDVIhHhHhHhHKRLgUhrlTvkL2k.hHhHhHxjgIrRj0jGrefatXycofHhHhHhLIXBqDYsIs0A7Wes4tTPDQDQDQFcNZtK.DQ5fjWHfqOEPCFn4tjPFXIlXh3zm9zvKu7BibjiDN6ryl6hDQDQFQrdehpdLgUaPRkJEN5nibhg2VlRE.Wcx.O6AA79YM2kFx.ZQKZQX26d2..3jm7j34e9m2LWhL+RJojPN4jC5RW5BbxImL2EGxHgAsS1qX89UDq2mJOlvpF1vF1.14N2ITpTYsZ6m+7mO5e+6uZqaaaaa3a+1uEJUpD96u+XIKYIHv.CrF2WabiaDey27MvSO8DacqaEMoIMoVUFN9wON1+92ON5QOJt6cuKxO+7gCN3.ZPCZ.BLv.Qu6cuQ3gGN5d26d0teFwHFAtwMtA70WewgO7ggiNVwSOLlGaFhu6sa3fS.xkAbkQAzoiB31SatKQjAR4O+u1dsfsrMrgMfoN0oB.fHhHBrqcsKybIhLVXP6UDCZ29.q2WcrdeRSLgUMDUTQgbyM2Z81+bO2yUgjll8rmMdvCdfvx+1u8a3xW9x03cK93G+3329seC..28t2sFSXMqrxBu0a8VXu6cuU32oPgBjUVYgrxJKbtycN7we7Gitzktf0t10hN24NWo6uXiMVTZokhqcsqgRJoD3omdVgswXdrYH9t2tQCGLPQIBTbx.+4H.57w.bxaycohnZMYxjAGczQ3fCU+PoP7wGuvquxUthwtXQlQLnc0wf1IaMrdeRWwDV0PQEUjvqCMzPqwtUakcGfyKu7Ta4qe8qiniNZLu4MOCSgD.+vO7CX5Se53gO7gBqyEWbAsu8sGcricDJTn.olZpH4jSF2912F..m+7mG8qe8CYkUV5bWsxXdrYH9t2tgHm.Z9GAjzzAd7cAt7nA5PL.NXa1E5t5UuJd7iebUdyVHqKQEUTXkqbkvYmcFm4LmoZ++092+9isrks.YxjggMrgYBKkDYbvf1I6QrdeRevDVqF+7O+yUZqLVa4omdJjD1G8QeDl7jmLZPCZfdWtVyZVCl6bmqvxAETPXSaZSHrvBqR6xPW3BW.abiaDadyaF4me9H2byEMtwMVuJCFqisxnue2aU6XMp1sch8Dn4qBHo+IP9wCb02DncawnVzLkt6cuKhIlXvANvAvsu8sQHgDB9u+2+q4tXQF.YjQF.PUf64jSNU61NxQNRjWd4gRJoD3s2rWDPV2XP6j8JVuOoO3zZiQj+96OF5PGJ..xO+7wxV1xz684ctycvRVxRDVNhHh.W7hWD8t28tJe9V5bm6LV+5WORHgDPjQFIZTipkIDUMLFGajNvYI.OyGn5YZ8AGxpeNZM2byEe228cXLiYLne8qe3y+7OWnGBvtHn8KWbwEFzBYSPWBZOmbxAqd0q1TT7HxhAq2mJO1BqFQkVZoXIKYIH1XiE..qacqCyblyDMu4MWm2myblyDO5QOB..CdvCVqdlVZQKZAV4JWoN+YWdFiiMB.c5G092iGsDHv4CjxJTMGs5Z..O0jM7kMijRJoDbricLbfCb.bpScJ7jm7jJrM0oN0AgGd3lgRmwkb4xsXGMukISFbxImfHQhpwsszRK0hb.gwP+8qk7+eQ1lbwEWfKt3h4tXPFPVx0iv58M96OR2vVX0H5IO4InKcoKXjibj.P0E2QEUT579ae6ae3fG7f..PrXwl063pg9XizS0s6.9qZv4.IuPfGFm4s7TCTnPANyYNChJpnP26d2w67NuCN9wOtZIq5t6tivCOb7Ue0Wgyd1yhW8UeUyXI1vYe6aeXhSbhnMsoMvUWcEO6y9rXlyblH4jStV89OyYNC5QO5ABMzPw9129p1s8e8u9Wnqcsqn28t2HszRqB+9DRHAzidzCzidzCjPBI..f8rm8HT17zSOwTlxTT68nPgBbnCcHL4IOYzhVzB3pqtBWbwE3qu9hvBKLrnEsH0ddzKyku7kwPFxPvfG7fwQNxQDV+BW3BwfG7fE9IxHiTs22Uu5UQO6YOQngFJ1912d0d7lat4hUtxUhwN1wh1zl1.WbwEzjlzDzu90OLqYMKb4Ke4p88WYeejUVYgksrkgd0qdAO7vCDP.AfHhHB7C+vOTs6Kp5IWtbycQnJISlrZcO5nzRK0HWZzMF5uesj++KqArdeVuOoeXKrZDoPgB..7ge3GhCbfCfm7jmf8rm8HTwi15K+xuT30SZRSBssss0fUV0VF5iMx.nguHfr6Cjw9rXmiVu5UuJhIlXvAO3AUazltLt3hKnW8pWXHCYHnW8pWvUWc0LTJMNTnPAl+7mOV0pVkZq+RW5R3RW5RXqacqXqacq0394pW8p3rm8r.P0.o1vG9vqxs8W9keAm+7mG.pdbBd5mV8o+nacqaIrut0stEN1wNFl0rlkPv5O5QOB6d26FabiaD..23F2.QDQDB+Q8x692+9392+93Lm4LXyadyX+6e+nScpSB+9ye9yiCe3CWg22EtvEpvwW4+N5l27l3jm7j..nCcnCX7ie7U5w5oN0ovq7JuBt6cuqZqOiLx.YjQF3nG8n3q9puBqXEq.yd1ytRGvaz76im7jmfW7EeQ0B5KszRCokVZXO6YOXNyYNXkqbk03fmCox9129v9129vu+6+NRN4jQaaaawy+7OOd629sqU8NmyblyfHiLRHWtbDUTQUsm6+u9W+Kr8suc3gGdfu8a+1JbteBIjfvHv65W+5QvAGL1yd1Cdu268PRIkDbyM2v3F23DN2GP00v+3O9iX26d23Tm5THszRCxjICRjHAAETPn28t2XdyadUX7W3xW9xHpnhBJUpTsAOoEtvEhniNZgkaW6ZmZm6e0qdUL8oOcHUpT7O+m+yp7be.UAsugMrA7m+4ehKcoKgabiafF1vFh1111hfCNXLoIMIz9129p78WYeejUVYg0st0gicrige629Mz3F2Xz4N2YLlwLFLpQMppbeQ+MVuOq2mLLXBqFQkcweKaYKwTlxTvW8UeE..lyblC90e8WqUu2xTRIkfSe5SKr7XG6XMvkVsig7XiLf76s.jlAPt+lE2bz5XG6XwEu3Eqv5czQGwy+7OOFxPFB5ae6K7vCOLCkNiuYLiYf0st0A..QhDgN1wNh9129hjRJIDWbwgBJn.LhQLBT25VWyR46m9oeBqacqCJUpDMpQMBgDRH3V25VPlLYBay+9e+uEBZIjPBACcnCEOyy7LvYmcFW+5WGqe8qGO3AO.omd5XZSaZ3bm6bBcsrW3EdALhQLBHWtbDe7wKDfwy8bOGZXCanvmQ25V2z5x9l27lwTlxTDZEn10t1gvBKLz5V2ZjTRIgyd1yh+7O+SHSlLDYjQhadyah0u90Ws6y8u+8ictychG8nGA2byMLrgMLzjlzDbzidTgjNVyZVC5V25FdoW5kz5xr8DFzNCZ2dEq2m06SFFLg0pQlYlYk1EG.TEjcMMp3V9DyV5RWJ1912NJrvBwu8a+F9ge3Gzp6P4UtxUPIkThvxsrksrV+dMFLjGaUF886d6ZMcg.xdWKp4n07xKO0RVUrXwHzPCECcnCE8u+8G0oN0wLV5L9RKszvl1zlDVd8qe8p0kqJnfBvzm9zw+4+7ezp4hXCo0t10B.fW9keY70e8WKbiCJe4ooMsoXfCbfXwKdwn6cu6UXe7+8+8+gfCNXjYlYhye9yiibjiHLWI27l2brm8rG..LwINQ7se62B.U0eLfAL.ctbme94i4N24JDzRTQEE9vO7Cqvyf0G9geHV3BWH..1zl1Dd629sq1doxl27lA.va7FuA9zO8SgWd4E.T83P7pu5qhu+6+d..r5UuZF3RMfAsyf1sGw58Y89jgCSXsZzrl0rp82eoKcopsK1TdMpQMBQEUTBW3L+4Oe7hu3KVqmOTyJqrDdsWd4E70Weqzs6HG4HU6701y9rOK5cu6cs5yr1ReO1pLFxu6IyOMGHk5cu6MF+3GO5ZW6pcwfYvm7Iehv2ASYJSoBOeP0oN0AacqaEN4jSXKaYKlgRnJ8oO8Aae6aGN53e+mFpW8pmvqm8rmMl8rmcU99aPCZ.l9zmtvHY90u90EBbwXYUqZUH6ryF..ie7iGezG8QU51sfEr.jVZog0u90KzheG3.GnZ22ScpSEe0W8UpEDjiN5HhN5nwt28tgLYxvu+6+NxImbP8qe8MbGT1PXP6Lnc6UrdeiGVuu8G1WNzC4me9Z01+Nuy6fm5odJ.npK2T1ejr1nrKLAT8GNqJyctyEu669tU4OCZPCxnLHQnOGa5Bs86d6J24CT05pN6MvytWydqqB.T25VW0dttNxQNBl3DmHd9m+4wRW5Rwu+6+tvyEssnctycJ7527MeyJcabvAGv27MeCBKrvLUEK0Tu5UOr0stU0BZQWzpV0JgWW1TRjwzW7EegvqmyblS0tsSaZSS30G9vGtRGQpKyfG7fqPPKkowMtwnqcsqBKe+6eesoHaWo1Fz9Dm3DMCkt+VYAsW9GIAMCZ+G+werRSVE3uCZuLW+5W23UX+eprf1qryWWvBVfvymZYAsWSl5TmJ1vF1fPxp.+cP6kcynKKncpxw58MdX891eXKrVM17l2bUNbx6niNhPCMTsZ+4latgO3C9.7Zu1qA.fku7kiINwIVq5FT93iOBut5tHInfBB+4e9mU4uWlLY3wO9wF7ghb84XqxXn+t2tQ5qS0yupXmAZ+trXd9UczQGQrwFK1+92ONvAN.t4MuI.TciX99u+6w2+8eOZXCaHFzfFDFxPFB5PG5PsZX02Zvie7iQlYlI.fvfVRUQjHQFj4IYcwnF0nfe94mdueJ+07ETPA589q5jQFYH7YDXfAhPBIjpc6CIjPP.AD.RM0TwSdxSPZokFBJnfpzsMf.BnZOGrIMoIBu9d26dl0AAOKYZSP627l2TswpASE6kf1Kqq.WVP6U0wasIn8x9+o6e+6yVYpRv58MdX891mXBqUiW5kdoJLZ+ouF+3GO9rO6yP7wGOxImbvG7AePsZ5oo0st0Bu9gO7gH6ryVsjXKyO7C+fZO2Mkod0qdp8LvZLnqGaUFiw2817dv9UMBAKxAf190.0o5qD2TShDIXpScpXpScp3ZW6Z3.G3.pMZA+fG7.rsssMrsssMHQhDLnAMHL3AOXDRHgXUm7Z4GzR72e+Mikjpm1N3ojRJofCdvChzSOcb+6eejYlYB4xkqVuAwXqra7A.pvfpSUwO+7ColZp.PUuAopBbolT95eKt3h0o8gsNFztwCCZ2xFq223g06aehIrZh4fCNfUu5Ui90u9A.UCjCu8a+1ve+8uZ+CDMsoMEt4la3wO9w..HwDSrR6BIN3fClsoBDc8XiL.x6r.28+MPZz7O.nACz7VdpAsoMsAsoMsAQFYj3W+0eEwDSL3m9oeR3O.jQFYfsrksfsrks.e80WLjgLDLpQMpps6vaop7ibm1BCVX+5u9q38du2CG+3G2rOheeqacKgWWUOW+Zp7IEoOcoKVmVMiAsa7vf1srw58MdX891mXBqlA8su8ECYHCAG5PGBRkJEKYIKAey27MU6EBN3fCnEsnE3RW5R..3bm6blsm4gpitbrQkyeLnZ21IIB.+9eOKXEmDvs+H.kJ.d52B3olrwq7Yf4fCNHLgcujkrDbricLbfCb.bpScJgARj6cu6gMsoMgKe4KissssYlKwZuxO3iYra0EMU9q6LDWC9a+1ugALfAHLBd2111VDd3gCe80WT+5WeHRjHb4KeYrxUtR89yp1n78BiZ6y0dd4kmvqsjShxV.CZ23gAsaYi06a7v58sOwDVMSV0pVEhKt3fb4xwV25VQjQFYMdWd6RW5hPBqe7G+wXRSZRpMnPXoPWN1HcjrL.t06AnnTfFNDflsLycIRm4latggNzghgNzghbxIGbnCcHbfCb.gy4sVuS9kMXjAnp67quJefPU0T+TYJeP0Fh.reoW5kD9L+hu3KvLlwLpv1zfFz.SVfKkuEhpsAfW9jnZdyatAuLQ+MFztwCCZ2xFq223g06aehIrZlz111VL4IOYrgMrAHWtbr3Eu3Z7Y1bwKdw36+9uGEWbw3gO7gXQKZQpMnKXoPWN1nxoOYU0+tasLfT+e+et7h.RNRfRKBv6N.z1MXZJel.0u90Gie7iGie7iGolZpH1XiUsQuSqIku0Ot4MuIxJqrp1mUuJ6YPu7jHQhvqyHiLp1s0PNhfeyadSjd5oC.fPCMzJMnEcQMc7VcJefKW6ZWqFmlAt28tmPWhzM2byf7bKRUMFztwCCZ2xFq2u5w58IsEa1Kyn2+8eegD410t1kvjRdUwe+8GKZQKRX40st0ILeoYoQaO1HsjxRARd9.kjEfa9Cz9+KfC597dq4RgEVHt10tFhKt3vd26dwe7G+QEBrMf.B.Se5SWXDn1Ziqt5J5XG6H.TMkRr+8u+pba2wN1AhM1Xq18W4GvS9i+3Opxfw2zl1DN3AOnNThqbkezGu7kAMUSIR.n9fSyUu5U04xj2d6MZQKZA..jJUJ15V2Z0t8ewW7EBSoAQDQDrqMZjUYAsWcXP60dUVP6UGFztoEq2uhX89j9fIrZFIQhDDYjQB.U2A3ye9yWium28ceWgQLX4xkiIMoIggO7gWsABbyadSgmGPSEc4XizBO3vVby0p0VJUpDG5PGBCbfCDctycFiXDi.u8a+1HpnhBiabiC8nG8.cpScBQGcznvBKzbWbMHJ+7.268dumPfik21111vq8ZuVM1ZPMqYMC0oN0A.pdN199u+6qv1r90ud7lu4aZPeN6dlm4YDd8gO7gQt4laE1lSbhSfIO4Z9Ynt7AKewKdQ8pbsrksL0d8YO6Yqzs6vG9v3e8u9W..vEWbAKe4KWu9boZFCZuhXP61OX89pi06S5C1kfqFKe4KWstfTkYPCZPnG8nG57mwrm8rw5W+5Et6s0DmbxIr28tWLgILAgj.2+92ON5QOJ5XG6HZe6auvvaepolJN4IOIN4IOov6WjHQ03wjgh1drUdlhu6sponTKt4Z0Zi6cu6g+4+7eViApUTQEg0st0gcricfHiLRDQDQXhJgFGiabiCyadyC4jSNHqrxB8su8Eu4a9ln28t2HmbxAaZSaB6ZW6B..AGbvUaORvCO7.SYJSAexm7I..30dsWCIkTRnu8su3l27lX6ae63W9keAJUpDMu4MGImbxFjig1111Be7wGjc1YiRJoD7Zu1qgoMsog9zm9HLME8ge3GVqZ0nxRhA.Xu6cuH5niFcu6cGojRJHwDSTsfQpIidziFqd0qF+we7GH2byE8qe8CyblyDO2y8bnksrk3ZW6Z3W9keAqcsqU3F2MyYNSqxQbZqQSaZSCSYJpFf3du268v.Fv.P.ADfZay1111va7FuQsNn8BJn.gf1G23FmZay5W+5wzl1zL5Asq43Gg4Jn8wLlwH75t10tht28tWgsiAsadv58UGq2mzGLgUMHVrXgtRzpV0ppwsO4jSVuRZxc2cGqYMqAicriUs0WcCRQsrksD+5u9qX0qd0XoKcoPpTonnhJpBImpIQhDgYNyYZxl1az1iMS828V0rPmqUqNJTn.QFYjpkrpyN6LZVyZFZPCZ.pScpCxJqrv8t28ve8W+E.TMHgrnEsHDP.ATsygiV5b2c2wO+y+LFzfFDdvCd.t0stEl27lmZaiSN4D97O+yQ8qe8EBBspLm4LGbvCdPb8qec7jm7Dr7ku7JDD5BVvBPSaZSwa9luoA4XvYmcFaYKaAgGd3..HlXhAwDSLPrXwBAD3jSNg0rl0fniN5p8FU0291WzktzEb9yedTZokh28ceWgemu95qVE3hHQhvt28twq9puJN4IOId7iebUV+giN5HV9xWtPu+fL9XP6piAsa+f06qNVuOoOXWBVCiabiSq5pLU17el2d6sZ+aMYLiYLXgKbgvImbB.plDvaUqZU09dDKVLhJpnP7wGOl3DmXUNr16fCNfPBIDrnEsHbiabC74e9mWk6yx5pRt6t6BkEMYLO1LDe2a2vJXtVUSey27MB8Jf5Tm5fErfEfSe5Si8t28hMtwMhO4S9DrsssMbzidTr+8ueLrgML.npquOm4LGS9nLpgVG6XGwYNyYP+6e+UaPHyc2cGCX.C.G4HGASaZSSseWUMPSIQhDbtycNLxQNR0tATN6ry34e9mG+zO8S3C9fOP38KRjnJcfOq7qqrtaV04e7O9GHt3hSnWb.n5+ebxImvy8bOGN0oNEl8rmM7xKu..D92Jy92+9wPG5Pqv5Gv.FfVWFCHf.vwO9wwJW4JQyadyqvMEyGe7A8qe8Cm9zmFQEUTU4MMSa99n7GaU2wo8txBZugMrg..BAs20t1ULnAMHrqcsK3jSNg0t10h268duZb+Mm4LGzxV1R..gf16Uu5Edi23MvINwIfRkJwBVvBvbm6bMXGCkEzdYhIlXvPFxPfGd3A5XG6HV5RWJTpTIVyZVSM9rgVVP6.PHn8PCMTLtwMN70e8WqUkqxBZ+EdgW..PHn8QLhQf1zl1fW5kdI7u+2+aHWtb3niNhO5i9HS1fBEoBq2WcrdeRWIRot1uYNlFi1YU2HapcFYxjg7xKOT+5We3ni09FwVtb43QO5QvSO8Tmd9RRM0TQlYlId3CeHbxImfO93CZUqZEb2c2qUu+RKsTjSN4f5Uu5UkcGWy0wlMMs4ZoasL.kOQum9ZZ9KGM..hc4U7ObXrLfAL.jZpoBWc0UrksrEzgNzgZ787IexmfMrAUi9wyYNyQnqEpq9tu66Ta4ktzkpW6Ockb4xwku7kwidziPW6ZWqvMHJ2byEN3fC0paLzSdxSv0t10P1YmM5V25VEtdO6ryFN4jSU4eHN+7yGxjISHghZq6cu6gjSNY3fCNfN24NC2byMgemToRQAET.7wGepwozpbyMWb8qecTbwEiVzhVToS2FZaY7wO9wHojRBYlYlnssssZ0T3g17Y8fG7.3ryNWquAdFRZdtqlcMVMYtO2O4jSFyXFy.+5u9qBOqmt6t6HrvBCKbgKDuvK7BH1XiE+i+w+...W3BW.cpScpR2W4me9XRSZR3PG5PnjRJA.pBZuacqaXQKZQn+8u+369tuCuxq7JPjHQ3BW3Bp0xl..G8nGE8qe8C..QFYj0pD49oe5mPjQFovTsEfpVWpyctyH5niFcqacCst0sFIkTR3cdm2Ae5m9oU59492+9XJSYJU3Y1chSbhpMPJVaKiJTn.qYMqAaZSaB25V2BJTnP324iO9fNzgNfUrhUft0stUkGaZy2GyadySn0rNxQNB5ae6aUtsFCVam6WFVu+ei06qaz1y8MWF5hTU2Vx67cLX6SlvJQlaZy0REbICR2.1TmvZIkTB5PG5.TnPAdi23Mp0s9gRkJwvF1vvMtwMvPG5Pqx..qsrTBbgH8ECZmAsWYXP6Ujkx49DourmSXkOCqDYMwJ5YVs7RIkTDtq+0lVVsLhDIBcpScB23F2.IkTRFqhGQjIhXwhq15.zbvLp53niNh1291Wk+de7wmp88qqIa4qu9VkOFNt3hK05jKqW8pGBMzPq1sQaKit4laZUcr55mk1ljOQDoO3yvJQjQW1YmsvqCLv.0p2aYiPm24N2wjO8LQDQDQDYdwDVIhL5Zdyatvqu4MuoV8dSIkT.fpViPrXwFzxEQDQDQjkMlvJQjQmDIRDFEpKajBt1J93iG.pmzKQDQDQj8AlvJQjIQaZSa.fpA.ipa9Bt7V25sT+rs...f.PRDEDUVGRLwDA.SXkHhHhH6QLgUhHShYMqYILYi+1u8aiO8S+TjUVU9HhbRIkDV5RWJhNZUilwN4jS3kdoWxTVbIhHhHhr.nGiRvh.P4lQbTTJfCNUkaMQTkPQoZrBa24n1PBIDLqYMK7IexmfG+3Gi0u90iMsoMA+7yOHQhDTm5TGjc1YiLyLSbu6cO0duyZVyBsrksTuKChDIBkel7Rtb474hkr5n4fOFmaqIppw58IaA1606q6IrJ1U.4O9uWV58Ab6oM.EIhriH89purXWMOkCSj23MdCjWd4gssssAYxjA4xkizRKMjVZoUoauCN3.F0nFElzjljA4y2ImbBxjISX4BKrPgmsVhrVTXgEp1xZNWlVYXP6js.cIncVuOYKPWp22Vht2kfcUi4frBujdVTHxNjlW2n40U1XbvAGPjQFI9we7GwvF1vfqtV4InKVrXzm9zGbfCb.rrksL3fCFlmdAO8zS0VNiLxvfreIxTRyya0775JilA2nYvODYMPWBZm06S1Bzk58skn6svp2cAn3a82K+f8AznvM.EIhri7f8o9xd2EyS4vDyO+7Cqd0qFqZUqBYlYlH0TSEYjQFnAMnA3oe5mF95quFkV+wGe7A4jSNBKmXhIhV0pVYv+bHxXprAhrx3iO9TiuGO8zS0N2OiLxfsxDY0QWBZm06S1Bzk58skn6MaQCFp5Km0g.dTJ5YwgH6HOJEUW2TdZdckMNQhDAIRjft0stgW7EeQzidzC3u+9az5ph94mepsbBIjfZAxPjktbxIGjPBIn15z775JilA2nYvODYMPWBZm06SV6z058skn6Ir5S+.boA+8xJkCj3LT8uDQUuJ65EWZfpqqHiFIRj.O7vCgkkKWNhIlXfBEJLikJhpcTnPAhIlXT643yCO7.RjHoFeuLncxZmtFzNq2mrloO06aKQ2SXUjXf.lq5qK++.HwoyjVIp5nTtpqSx+OTe8ALWUWWQFMN3fCH3fCVs0c6aeaF7BYwqrfVt8susZqO3fCtV8Ldyf1IqY5SP6rdexZk9VuusD8XZsA.9MQfL2IP9W7uWWF6E3woAz5uDv8fzuRGQ1ZdTJpZYUMSV06Np55IaX+5u9q3QO5Q576+oe5mFMu4MWX4e5m9Ib1ydVz5V2Z7xu7KWq2OAETP3N24NHyLyTXcwGe7Hu7xCgGd3n90u95bYjHigbxImJMnkF23FifBp182YKKn8yctyIrtxBZO7vC2tK3Gx5ggHncVuOYswPTuusDQJK+3butPV1.Wnm.kjkF6Yw.MZH.Mb3.dEBfKMgySqj8GEkpZpqovKoZ.VJqCUwdffqMBny+BfyltGf9l+xQC.fXWto4YlsvBKDctycVu1GcoKcAae6aG..xjICctycFRkJE..G9vGVqp.WpToHt3hCEUTQpsdwhEifCNXz5V2ZHQhD3kWdwo9CxjStb4nvBKDYjQFHwDSDIjPBUX57vSO8DCbfCDt3hK058qRkJwwN1wTKnc.f.CLPFzNYQp5BZuO8oOZ0bQIq2mrjYrp22bXnKJV..j7NeGC19T+ZgU.UAYGxtAtTDpmzpR4.YFipeHhpbt1HUW+XBSV0bnzRKUu2GkedzSpTopsOyO+70p8kKt3B5Uu5ENwINgZAuHWtbboKcIboKwooKxxkmd5I5Uu5kVGzhHQhPXgEVEBZ+12913K+xujAsSlc01f1CKrvzpjUAX89j0McsdeaE5eBq..dzRUsPzUdE06dvDQUMu6HP69O17IqB.T+5We7FuwafhKtXcdezwN1QgW6kWdgW+0ecbzidTzxV1Rzt10Nsd+Um5TGLvANPb5Se5JzhSDYopwMtwHrvBSmCZgAsSVyz2f1Y89j0H8sdeaA5eWBt7TpDH8s.j5pAj9PC1tkHaJtz.UCvR9MQ.s7NDanXp6RvVxTpTIRIkTPBIjfdkPMQFSd3gGH3fCFAETPZcKKUYjJUJCZmrpXHCZm06SVCLz06apXY1kfKOQh.dpWGvuWEH6i.7vXAx+7.kbO.4k..CWtwDYcPDfXWAb0W.u6hp4YUe5GGMfsfHRjH7LOyyf.CLPjQFYfzSOcjc1YihJpHTZokBC48zinZCQhDAmbxI3omdBe7wG3me9AIRjXPGXjbwEWPe5SeXP6jEOiQP6rdexRiondeqYF1DVKiHw.MXfp9gHhrB3fCN.e80W3qu9ZtKJDYRvf1IKMl5f1Y89DYcv3jvJQDQDYUfAsSDQjkLlvJQjYSd4kG9q+5uve8W+EjJUJd5m9oQ.AD.mdMHhHhHh..SXkHxDSlLYXm6bmXCaXCHqrxpR2FO8zSzyd1SLm4LG1pODQDQDYGiOIuDQlLW9xWF8u+8GqXEqnJSVE.nnhJBwFarXPCZPH5niFJTnvDVJIhHhHhrTvVXkHxjnfBJ.+e+e+eHiLxPXcd5omHf.B.MtwMFd4kW3gO7gHqrxBojRJPtb4PpToXcqacnN0oNXxSdxlwROQDQDQj4.SXkHxj38e+2G26d2C..95quXZSaZXXCaXvUWcsBaaFYjA1wN1A95u9qgLYxvm8YeF5YO6IZVyZlotXSDQDQDYFwtDLQjIwIO4IA.PcpScvl27lwnG8nqzjUA.jHQBl0rlEV0pVEDIRDjISF1912tor3RDQDQDYAfIrRDYzcu6cOTPAE..fW+0eczzl1zZ06avCdvnG8nG..HojRxXU7HhHhHhrPwDVIhL5RN4jEdc6ae60p2aHgDB..twMtATpToAsbQDQDQDYYiOCqDQFct4laBuVjHQ5z9PpToFphCQDQDTnPAxHiLP5omNxN6rQQEUDJszR4MGkL4DIRDbxImfmd5I7wGefe94GjHQBbvA11h.LgUhHSffBJHgWmXhIJzMeqMt90uN..7yO+z4jcIhHhJiRkJQJojBRHgDPwEWr4t3PDTpTIjISFxImbPN4jCRN4jgGd3ABN3fQPAEjce7OLgUhHitFzfFf1111hqd0qhcricfINwIBGcrlq9I8zSGm3Dm..PqRxkHp5wVVhrTXpaYIoRkhSe5SiLyLSix9mHCkhKtXbtycNbm6bGDVXgAWbwEycQxrgsyLQjIwjlzj..vcu6cwW9keYMt8JUpDKdwKFO4IOAhEKFSXBSvXWDIxlmRkJwst0sPLwDCNwINARN4jQN4jCjISFSVkLKJeKKkbxIiSbhSfXhIFbqacKC94jETPAHt3hiIqRVUxLyLQbwEmvfWo8H1BqDQlD+i+w+.G8nGEG5PGBe8W+030e8WG0oN0oJ296cu6gqcsqA2c2cLm4LG05VwDQZO1xRj0BiQKKIUpTbhSbBTTQEo15EKVLBN3fQqacqgDIRfWd4EDKVrd+4Qj1Ptb4nvBKDYjQFHwDSDIjPBPtb4B+9hJpHbhSbBLvANP6xVZUjRi0sTUobfrOBvCiEH+yCTx8.jWB.3cvkr2HBPrq.t5Kf2cAnACEvm9AHx78GDa9KGM..hc4C0j+Y+3G+X3niNBmbxIS9mc0gcQRxRgwnKRVPAEToAqSjkNO8zSzqd0qp8FbVSTpTIN1wNVEtYMAFXfH7vCG0u90WeKlDYPkSN4fXhIFb6aea0VeiabiQe5SernelVG5hhE..Iuy2wfsOM7svpRk.ouEfTWMfzGZv28DY8QIf7GCT7sT8y81AfKM.Hf4B32DArfqzwXn7iXvVB3fuAYowPO3avVVhrjYJZYoTRIkJjrZG5PGP3gGNGEVIKR0u90GSXBS.wDSLH93iWX8YlYlHkTRAOyy7LlwRmomgMgUYYCbkWAH+KZP2sDYyQ5CAtw7.xbm.s6+.3rOl6RjYgb4xQlYlIRKszPAET.72e+Q.AD.b2c2MIe9rKRRVKz0tHoRkJwoO8oqPxprkkHKEhEKF0st0E0st0EspUsB8rm8rBsrTQEUDN8oOsN0xRJTn.IjPBpstxN+mIqRVxbvAGP3gGNxKu7T65gDRHADXfAZWc9qgKg0huNvkh.njrLX6Rhr4k+EAtPOABY2.dzRycowj4Tm5T3y9rOCIkTR3IO4IU322vF1PL7gObL0oNU3kWdYTJCrKRRViJav2n11EIYKKQVaLzsrTFYjgZ8dFwhEyy+IqFkkz5W7EeATnPA.TcCLyHiLfu95qYtzY5XXRXUV1UdxphDCzng.zvgC3UH.tzD.Grrdt0HxnSQo.RuOPgWB3A6CHqCo5Y7tLkjkpqe57uXy2RqYlYlXAKXA3zm9zU618fG7.rwMtQrqcsK7tu66hQO5QaPKGrKRRVxLTcQR1xRj0JCYKKkd5oq1xAGbvrmEPVUpe8qOZW6ZGtzktjv5RO8zsqRXU++KVJUppa.qYxpd2IftcFf190.MJb.2dZlrJYexAmTc9eiBW00Cc6Lpt9n7JIKUWGYiO.+nYxpt6t6nYMqYnssss..vYmcFssssUHH7byMWrnEsHb7iebCVYn55hjyXFy.iXDi.spUsB0st0kIqRlEk0EIaUqZEFwHFAlwLlABLv.UaaJqKRVcCJXrkkHqYkkzZ4OesrVVRajc1Yq1xst0s1fT9HxTRyyae3CsuFmfz++pU5aohOypRFAPGOHf6bZnfnJv8fTc8gjQn95y+hptdxF0t28tERV0We8EqXEq.m+7mGwFar38du2C..0st0E6YO6A+we7GXgKbgvau8F..ye9yGYkkg4wMnp5hjSXBSf20cxhTYcQxNzgNn15KqKRVUXKKQV6JqkkJOMOutln4MmThDI5c4hHSMMOu0daPhT+RXUobUiFvkm2cBn0q0rNkcPjEOQhUcchlszZpqV8tKrMjMtwMB.UiRvadyaFiZTiBN5Xk+TI3jSNgW8UeUrgMrA3jSNgbyMWr8suc8tLvtHIYsprVaRyVZMgDRP34ZRSrkkHaA5aKKUZokp1xFqwEAhLlz77VMOu1Vm9EgV1GQ8otFQhAZ8WxjUIp1nxtdQ5CUcckMlRKsTjVZoA.fYLiYfl1zlVqdeO6y9r3ke4WF..W6ZWSuKGrKRRVyz1tHIaYIxVf91xRZ1s44i5AYMRyyas2li30unzdXrpubiFB6FvDoMbOHUW2TdZdckMfTSMUgAMlPBIDs581wN1Q.XXRXkcQRxZm1zEIYKKQ1Br2aYIhH8Mg07Ou5K2vgqW6NhrKo40M4eAyS4vHprVWE.nYMqYZ060SO8D.plFZJ+HkptfcQRxVPssKRxVVhrEXu2xRDQ5aBqkbO0W1KsqkSHhPEutoDsa.kvZf6t6tvq01I88abia..UI5puAbytHIYKvdev2fHhH6K5WBqxKQ8kcoI50tiH6RZdcilWWYCvGe964W1G7fGTqee4me93+7e9O.vvzZnrKRR1BXWjjHhH6I54HMhFcKCNOqRj1qBW2X60cmBLv.ElaUuxUtRs58bgKbAL4IOYb+6ee..zyd1S8tbvtHIYKfcQRhHhrmT4yoDDQjAjiN5HBIjPvu+6+NNwINAhHhHpzsKu7xCQDQDHiLxPsmKugO7giAMnAYpJtDQDQDQVH3b4.QjIQ3gGN..N1wNFJnfBpzsQlLYHgDRPsjUCKrvvRW5RMEEQhHhHhHKLrEVIhLIF4HGIJt3hwie7iqv.uT.AD.b2c2widzi..f2d6MZSaZCl1zlF5V25l4n3RDQDQlQ4lat3a+1uERkJECcnCEAGbvl6hDYlvDVIhLIbzQGwq+5udk967wGevYO6Ywcu6cQSZRS3fgDQDQjYRRIkDxImbPW5RWfSNY9FeZN4IOIdm24c.fp4y80t10Z1JKj4E6RvDQVDbyM2PKZQKXxpDQDQlIaXCa.st0sF8nG8.icri0bWbDvAWN6arEVIhHhHxBB6Jjj4R7wGuvqqtQ0eYxjAGczQ3fCrsuHiOdVFQVaJ3Rl6R.QDYSJojRBm8rm0rO21VVWgLpnhhcCRxjp+8u+vUWcEN3fCXXCaXU51DUTQAWbwE3latgKbgKXhKgj8H1BqDYs4A6GHqcCzrkYtKIDYRvVahLE1vF1.l5TmJ..hHhHvt10tLykHUXWgjLkF4HGIxKu7PIkTB71auqzsIiLx..pZk0bxIGSYwirSwDVsQIUpT3niNVgIXdxFQZqCv0..dpIatKIjMLNvaP1SXWgjHUbwEWfKt3h4tXPj.lvpF1vF1.14N2Ys9NZN+4Oez+92+Jr9ssssgu8a+VnToR3u+9ikrjkf.CLvZb+swMtQ7Mey2.O8zSr0stUzjlzjZU433G+3X+6e+3nG8n3t28tH+7yGN3fCnAMnAHv.CD8t28FgGd3n6cu6U69YDiXD3F23FvWe8EG9vGFN5XEOEwXdrYn992tPxKDv0mBnACzbWRHaPr0lH6M8u+8GaYKaAxjIqZ6JjqbkqDN6ry3Lm4Lnyctyl3RIQZO4xkaw0.FkUWtlSycZCKwiKx3fIrpgnhJJjat4Vq29m64dtJMgoYO6YiG7fGHr7u8a+Ft7kuLb1Ymq182wO9wwu8a+F.fvT7Q0IqrxBu0a8VXu6cuU32oPgBjUVYgrxJKbtycN7we7Gitzktf0t10Vk+Q1XiMVTZokhqcsqgRJoD3omdZRO1LTe+aWPoBfqNYfm8f.d+rl6RCYigs1DYugcERxZ0UtxUva8VuEDKVL15V2JZZSaJxJqrPzQGM9u+2+KRM0TQCaXCQ26d2wK7Bu.l9zmdU1qYt5UuJl9zmNjJUJ9m+y+IF+3GO..t7kuLhJpnfRkJU6uIrvEtPDczQKrb6ZW6vpV0ppz880t10v+9e+uwku7kwUtxUPIkTBBHf.v.Fv.vLm4LQqZUqpwi0byMW7Ye1mgie7iiyctyAIRjfN24NiwLlwfQMpQoMesQVQXBqZnnhJR30gFZn03ct44e9muRWed4kmZKe8qecDczQi4Mu4o+Ex+me3G9AL8oOc7vG9Pg04hKtf1291iN1wNBEJTfTSMUjbxIiae6aC.fye9yi90u9grxJqZLAyphw7XyP88ucAGbBPtLfqLJfNcT.2dZycIhrgvVahrGwtBIYMJkTRAm8rmE.pZPfqd0qhW+0ec0ZbgLxHCrm8rGrm8rGDWbwgcsqcA2c28Jrut4MuIN4IOI..5PG5fPBqm+7mGG9vGtBaulC5RW8pWsBIrpPgB7oe5mh268dOHUpzJ74cyadSr90ud74e9miYLiYTkGmwGe7HhHhPHlV.fzRKMjVZog8rm8f4Lm4fUtxUxafpMHlvZ03m+4etRagQsgmd5oPRXezG8QXxSdxnAMnA5cYaMqYMXtyctBKGTPAgMsoMgvBKrJ8tlcgKbArwMtQr4MuYje94ibyMWz3F2X8pLXrN1Jig36eaZMbv.EkHPwIC7mi.nyGCvoJuUAHRawVahrEXo0kAMDcCR.KuiKxxwV25Vwl27lgb4xgDIRvnG8ngmd5INxQNBtvEt.TnPAN7gOLdwW7EwO+y+bsd+9BuvKfQLhQ.4xki3iOdb26dW.npmt0vF1PgsqacqaU38tnEsH7ge3GB.Um62+92eDZngB.UsbaY8tunhJppLg0e4W9ErksrETRIk.2byMLrgMLzjlzDbzidTgV7cMqYMnacqa3kdoWpVebQVG3sfvHye+8GCcnCE..4me9XYKS+GYWuyctCVxRVhvxQDQD3hW7hn28t2UYW7nyctyX8qe8HgDR.QFYjnQMpQ5c4vXbrQZAQNAz7OBv0FA736Bb4QCnPl4tTQ1PbwEWpxjUIxRvUtxUPO5QOvK7Bu.tyctC.T8nxL+4Oe7LOyy.WbwEzjlzDDQDQfO+y+7pc5p4pW8pnm8rmHzPCEae6aWX8W9xWFCYHCACdvCFG4HGQX8KbgKDCdvCV3mHiLxJc+dsqcMLsoMMzidzC3s2dCWbwEz7l2bLiYLCjTRIUqOVyM2bwRVxRvK7Bu.b2c2Q.AD.hHhHvO7C+PsdeP191zl1DjKWNdy27Mwsu8swm+4eN9fO3Cv4N24vF23FE1tibjife+2+8Z89s4Mu4XO6YOX+6e+nO8oOBqeoKcoX+6e+B+rfEr.0deolZp3S+zOE.p9aJ6XG6.wEWb38e+2Gu+6+9Xu6cu3F23FX.CX.vM2bqJ+7SLwDQIkTBdi23MPlYlI1wN1AhN5nwEu3EwXG6XE1tUu5UWqOlHqGLgUirRKsT0RtbcqacH4jSVu1myblyDO5QOB..CdvCF6ZW6pVGTYKZQKvJW4J066tKfw4Xi9eNVip5eR8K96sSrm.MeU.N4IP9wCb02z7UlIKdxkK2bWDp.kJUp2CjRVhGWjoQYcExScpSg6d26hXiMVDbvAiO9i+XjRJo.4xkKzUHm0rlEdwW7EE96mZprtB44N24vYNyYDVeYcExe7G+Qjd5oKr9KbgKfe7G+Qge1wN1gZ6OEJTf0rl0fN1wNh0st0gyd1yhBKrPTZokhadyah0t10hfCNX7ke4WViGmwGe7nScpSXYKaY3Tm5TPlLYBcCxQO5Qi4N24BEJTnieKR1Zl+7mOV+5WOb0UWUa8SZRSBSXBSPXYSwHtdTQEEJojR..vblybvnG8nqv1zzl1T7i+3OViIPO0oNUrgMrA3kWdIrNGczQDczQK7Xt86+9uyd7iMHlvpQ1SdxSPW5RWvHG4HA.D5xC5p8su8gCdvCB..whEaVuSRF5iMRG4rDfm4CT8Ls9fCAbyEatKQUpQMpQg1zl1fwLlwHzUhzEIkTRXkqbk3K9hunJC7zdk0PqMAXXZwI1ZSjl15V2JdwW7EwCdvCfDIRva+1uMVvBV.5ZW6pvyzVYcERsQYcExgMrgA+82eg0+bO2yggMrgI7ya8VukZuuEsnEg4N24BoRkBQhDgALfAfEu3EiEu3EigO7gCmbxIHWt7Z7ua9K+xuft28tiae6aC2byM7xu7KiYMqYg10t1IrMqYMqA6YO6QqNtHaSCZPCRn62VYdkW4UDdcLwDiQu7bnCcH.nJwRMuFo7DIRDZZSaZU96G7fGL9pu5qpzFbowMtwnqcsqBKe+6eecu.SVj3yvpQVY2wy+e16NO7lpL6AN92lzUZKPoTZoHTn.BEpTYSXDPDJxRQTjEUTPQbGGQDPDTAWPTAbDcF0APPTfQDUjkBxTFPYSEFTKvuBkkRYQZoszUnktlje+QlbIoMcIMIMoMmOOO7PtI2byIo4ljy8btuuuy67Nr0stUJqrx36+9ume9m+Y5W+5mEu8L9HwNkoLE5ZW6pMKVsT15mah+md9us76iucBZ2bgjeam14n0icriAnuRASXBSfUu5USG6XGs3sSwEWLe9m+4.PJojBu669t1z3r9LYf2PF3MbksxUtR.3odpmhO5i9HkpKsvEtP97O+y4web8elngVgz3efaUwPqPBvjm7j4K+xuDPeqPNzgNTydeJeaPtl0rlJTYoye9yyS+zOsIiH2lShIlH.7DOwSvG7AefR0kJqrx3QdjGg0u90CnuUHkycOQUkzG.CZPCB0pUiFMZH6rylqe8qa1uCvV3JW4Jb0qdU.nScpSbS2zMUq2VgEVXUY2AZ7LOQpolpC82GKr8juM2NyPqt0oN0Idxm7IUt9YMqYUiuuFTTQEwANvATV13d12QvV9bSXCzzaGZs94MSNyqBYFmiMdpBW4JWgG9ge3pb5RoxDUTQwnF0n.z2wAFmzh3Fb1p1DXap3jTsIQUwYoUHsksAIHsBov1wSO8j.CLPkkMtM2s0L9zDKzPC0t83.XxyoBJn.65ikntmjvZUH8zSmzRKMy9OimJYpJFmX1a7FugxW1bvCdPKt00LLmUYPm5Tmrn6usls74l4XKd82kSP2KDxnuwbzZdGwQGQUfg2mjWd4wi9nOpEMnOXvS+z5SLWqVsr4MuYaZ70PgLvaHC7FtZblZERaUaPBRqPJr8ZVyZlxkyImbraONm8rmU4xgDRH1sGGv5G4sEN2jDVqBcnCcfV1xVZ1+ETPAozhi0TsnEsvjJGL24NWJojZ9n5ZFYjgxk82e+qziV0t10tXoKcoU5+9oe5mrn3tlvZetYN15W+cYzpmABnu2XNZsvK5niHSbe228wi8XOFf9iB5S9jOI6cu60h1Fcricj1291CfEeeck3rTsIPF3MD1e0zVgDPoUHsGrksAIX4sBoPTct10tlxksmU9z3u6Iu7xyt83HZ3SRX0JTa146EewWT4KuN6YOqE8CEyJqrTtbU8EyuzK8RLiYLiJ8eCe3CuJGrUpsrlma0FxG9UEZ6qB91Qnj7zOGsVpy0qUyYNygoN0oBnuU2m5TmJabiazh1FgGd3.nL3BILkyT0l.Yf2P33UW0Jj0ksAIHsBovxXXjyFz+4w1y2i1t10NkKeoKcI61iingOYPWpJr5UuZ7xKuL6s4t6tqLoGaI7wGeXgKbg7nO5iB.KXAKfIO4ISSaZSq16qweoTU8CwBO7v4HGoxaEzRJoDJrvBqz4r0ZKq44l4XOd8W373EdgW.e7wG9a+s+FkUVY7JuxqPxImLyZVypF0ZOFNOLKrvBsqCZD0WIC7Fx.ugnhZVyZlR2JYuZEx5x1fDjVgTXppaZ95.G3.JqyMcS2jUO3zUUcSmwIrlTRIQQEUTE53GgnlPRXsJLtwMN7yO+r4a2INwIxG9geHwGe7jc1YyBW3BqQmuUQDQDJWNyLyjrxJKSRh0fu8a+Vy9AHADP.lbNvZOTaetYN1qW+cIb9EBEbFvyl.25l.OpYySu00dpm5ove+8m25sdKzpUKqbkqjyctywBW3BIf.BnRueZ0pkDRHA.8sGujrpkyP0lL7i2SIkTpUiZy0Dx.ugvYQcQqPJsAovQxv.t2HG4HM6su10tVkKOnAMnZ0igwEh33G+3b228ca10Kv.CjPCMTRM0T4pW8pr10tVSFjNKubxImp769EttjVB1APkJUljD2+3e7OTlWJqpiTZaaaaMYvHwvPcu419d6s2U3e0EpsO2D1PorLHmCBp8D512A9zFGcDUklvDl.e7G+wJuGc26d2LrgML1vF1PkNZRO4nm1L...H.jDQAQ04e9mqzNeFNWVEVNYf2P3JotpUHk1fT3HUbwEyXFyXXqacqU3115V2JewW7E.5+rxpZ9xtpzpV0JkK+G+weTkqqwiuIu8a+1b5Se5JrNkVZoL+4OeBMzPs5w+DQCSRBqNHQGczDSLw.n+CWd8W+0Ap5erkJUp3lu4aVY4CcnCYeCxZoZyyMgMxU1Bj1lA2TAccUPiixQGQ0HQGcz7ke4WpbjUyKu7X9ye9L3AOXVxRVB+3O9ibjibDhKt3XZSaZlbPQ5V25liJrq2SF3MDMj3rzJjlqMHEh5RkTRILlwLFhIlXXMqYMryctSl4LmIO3C9fJ6CL5QOZ5bm6bsZ62idzCkKuoMsIV5RWJG5PGh0u90y7m+7MYcepm5oTNMPt3EuH8su8k29seahKt33+7e9OrjkrD5bm6LKXAKfhJpH6xXrhn9OIgUGnEu3EqLhEtl0rFN4IOY09En8t28V4xu268d10phXMpMO2DVob+E3OWt9K2wEBMeXN13wBcq25sxF1vFLIAzTSMUV4JWIO6y9r7.OvCvzl1zHt3tw7KaSZRSTF7lDVFYf2PzPyZVyZX6ae6U5saOZERywPaPBnzFjUEm0uGWT+zDm3DYXCaXnQiF1wN1AO5i9nLrgML9fO3CnvBKD.tq65t3y+7OuV+XDczQq76QKszRYFyXFz291WdnG5gXUqZUlrtd4kWrwMtQBKrv.z+984Mu4wvG9vYnCcnL6YOaRN4jAfG3Ad.70Weq0wkngKICBGnt10txi+3ONf9e737m+7wc2q5Sq34O+4qryblYlIyadyytGm0F0lmah+mee30r+kxMlKMofSBm6c0O+q1lmAtoG2wE+VgvBKL1vF1.yctysJmKNA8mClu4a9lx46RkvYoZSfTwIQcCmoVgTZCRgihe94Gae6am24cdGZRSLc7qn0st07xu7KyN1wNpzADSiG6PZbiabk93rksrEyddxNzgNzJbc21scaDe7wyDlvDL6iaO6YO4q9puhu9q+5ZUr.XxzblwWVzvfjAgC1a9luIe0W8Uje94y28ceG8pW8pJW+V25Vy7l27T9xvksrkQO6YOUlWKclXoO2D0RkjFb1WCzVJDTLPGdKGcDYUToRESdxSlgMrgwl1zlX6ae6jTRIob693iOzyd1SdsW60LIQHgojAdCgqHCsB4PG5P4AevGjPBIDhKt33e9O+m1sVg71u8amjSNYRLwD4sdK8e96S8TOEKdwKlKcoKozFjyXFyfd26diJUp3HG4HrrksLkJKUZokpLGBKDVK0pUybm6b4EewWje629Mt10tF25sdqlLJpWYhN5nI2bykRJoDBJnfpz0qksrkrsssMxImb3Tm5TTPAEvMey2Lst0s1rqe.AD.e0W8U.vEtvE33G+33qu9Rm5Tmpzw1fZZr.vhVzhXVyZV3omdVgD0E0+IIr5fERHgvrm8rY9ye9nSmNN7gOb0delwLlAe4W9kjXhIhFMZXJSYJrksrEVwJVAsnEsvr2mjRJopshK1Z0lmah+mAmQkeam8sfK7w5url7gyLanz7glzcnqqntI9pE7xKun3hKtZqbpAsrksjoN0oxTm5TI+7yWYdHt0st0R6kWCXnZSe629sbO2y8Xxs4nF3Ml1zlFf9JNMvANPSNm7A8+n8ErfEvRVxRHu7xS9A7BKxDm3D4JW4JDWbwwN1wNXG6XGUXcrUsB4gO7gUZERCBMzPURX0PaPd+2+8yEtvETZCRyQZCRg8h2d6M8u+82hueVRBeADP.V7zLXXgElRKBaKikpKoVQ8WRBqUgErfETs+fogO7gS+5W+rpGmYNyYxxW9xqwSh4d3gGroMsIlzjljRRfaYKagcu6cSO5QOnacqaDUT5GrctvEt.6ae6i8su8ob+cyM2py9gfV5yMiUW85e8V5JENybghx.7o0P29FPky6OvOt3hiLxHCSldlpo7yO+jo3nZAmkpMAREmD1e94me7EewWvhW7hYQKZQlL.e05V2ZdnG5gXgKbgJiuBl69aP00JjO4S9jU37ks7sBog1f74dtmicricPt4lqI2dO6YOYlyblLgILgZcr.RqPJDhF9jDVKG0pUqLBks3Eu3pc8OyYNiUmvTiZTi38e+2uBeoUUUEoN0oNwu9q+JKYIKg23MdCJt3hI+7yuBImVdt4la77O+yWmMM2XoO2bDu9Wu0U1g91.1IetV0fV1xVViZGIgsgyT0l.ohSh5FNasBYsoMHsjXAjVgTHDM7I8UW47POzCYQS+JsoMleNtzvWZTS+xiG7AePd0W8UwCO7.P+fTR0U0C0pUyblybH93imIO4IWoixmpTohnhJJl27lGm9zmlO5i9nJcaZ3bRqQMpQJwR4YOetYqd82kf1Rq2LWqJp6IC7FR0lbkYnUHGwHFgEcfxZRSZRMtsBMzJjQGczU54smwBKrvHlXhgANvAVilOhsjXInfBRRVUHDMXIUXsbV0pVUEFRtqMRIkTH2bykl0rlUiuOu8a+17lu4ax0u90wO+7qFm3VDQDAqd0qFP+QvM8zSmLyLS7vCOHv.CjN24NSiZTipwwc1YmMADP.UZ63YOetYqd82kP8r4ZUQcOmspMAx.ugPHD1ZF+apj47dQCQRBq1Id5omU5.fTUQsZ0VUUArjSjcywCO7ffCN3pbcbTO2DkS8v4ZUgigLvaHDBQCWQGcz7Ue0WQwEWL24cdmN5vQHr4jDVEh5ipGOWqJDBgPHrc70WeM6f2kPzPgjvpPTeSP2qzFvBgPfzJjBgP3JPRXUHpuQRVUHDB.oUHEUO2byMzoSmxxZznoRmZiDBmUFlJ5LvU6.zIIrJDBQCDR0lDtZjVgTTc7vCOnjRJQY4qcsqUoiN5BgypqcsqYxxU1L4QCURBqBgPz.gTsIgwjJKIZHvZqrje94GYmc1JKmVZoIIrJp2IszRyjkMd5dyUfjvpPHDMPHUaRXLoxRhFBr1JKEXfAZRBqIlXhU67buP3rIwDSzjkCLv.cPQhigJGc.HDBgPHr8J+Qfu7Ggdgn9.qsxRspUsxjkSHgDLIAVgvYW1YmMIjPBlbck+80MzYkIrVt1xPaoV2lSHbEUg8ajy8P6kx2JYkuUyDh5CposHY4OB7k+HzKD0GXsUVJjPBAe80Wkk0nQCwFarnUqVaR7ID1SZ0pkXiMVS9bee80WBIjPbfQUcOqKgU0da5xEeYqZyIDtjJ+9Mke+JgMS4akrx2pYBQ8A0zVjTprjn9NaQkkToREQFYjlbcm6bmSRZU3zyPxpm6bmyjqOxHiDUpbsZRVq6Yq2gZ5xW6nV0lSHbIU98aJ+9UBaFoEIEMDTSaQRoxRh5yrkUVJ7vCmfCNXStt3iOdV6ZWqbPbDNkxN6rYsqcsDe7wax0GbvAS3gGtCJpbbrtDVaRuMc4qrYqZyIDtjJ+9Mke+JgMizhjhFBposHoTYIQ8U15JK4latQ+6e+qvA24bm6b7Iexmvl1zl3jm7jjat4JmpHBGBMZzPt4lKm7jmjMsoMwm7IeREd+ue94G8u+82kbZqy5Fkfa9HgT+5arbF+.ztjgF45k4uPTqb8j0ueiwZ9HcLwhKfV0pVwYNyYTVNgDRfANvARyZVybfQkPTyYosHY3gGNm+7mmzSOckqK93imbyMWF0nFk7degSmryNaylrp0VYIu7xKty67NYO6YOje94qb8ZzngidzixQOpzkfBmW94mebm24chWd4kiNTbHrtJrF3P.uZ9MVVmFHwmS++KDhpl41ewqlqe+Jgcgzhjh5ypMsHoTYIgyt5xJK03F2XF1vFVEZOXgvYVvAGLCaXCiF23F6nCEGFqqBqtoFB6kfS+x235x62gDmJDwmp+1EBQEoSi98Sx62M85C6kj8ariLzhjG5PGR45LzhjiZTixkaPLPT+g0zhjRkkD0mYqqrjWd4ECdvCljSNYRHgDnfBJvlrcEBaMe80WhLxHI7vC2krMfMl0kvJ.sZxP5a.x6Otw0k1lfBuHDwmHsGrPTdWOY8UVs7Iq1jdne+Igckzhjh5arEsHogJKcfCb.SduuP3LK3fCl92+9ayaCR2byMZe6aOsqcsizRKMRIkTHqrxh7yOeJszRQmNc1zGOgn53latgGd3A94meDXfARqZUqHjPBQNP5+OtoyVrWYIYA+1.ghxnbac0PKhABZzf+QAd0RPk4G98EhFrzVp9otlqcT8CvRY7CUrs48tEPu1K3okM+xUa0wGXo.v1Wfq44KawEWLwEWblTsI.TqVMQFYjDQDQPHgDB96u+nVsTwaQcKMZzv0t10HszRiDSLQRHgDpP655me9wvF1vr3eHuNc5jJKIb5IUVRHp+Zjya6.vY1vKZy1lVeEVA8+H6n1HbzwZZRq5z.oGq9+IDByy6Vne+m5njUERKRJpeyZZQRoxRBmMRkkDBQ0w1jvJ.91I8UH5+6gMs8fEBQkqI8.tk+kjrpCfzhjh5irUsHoJUpHzPCkPCUl2mEBgP3by1d3q7LPnG6.t4EY5nGrPHLkWMW+9I8XGRxpNPFF7M5Se5iIidvBgyFe80W5Se5CCdvC1kcZMPHDBgqIaWEVMvM2fa5wfV8HPV6Bxb6PdGFJJUPSQ.R6FIb03Fn1av6Pglza8yypANDYz.1IgzhjBmMRKRJDBgPbC19DVMvM0PyGl9+IDBgSNoEIEBgPHDBmO1uDVEBgSOCijaBgPHDBgP3LR5uHgPHDBgPHDBgSIay7vpPHDBgPHDBgPXiIUXUHDBgPHDBgP3TRRXUHDBgPHDBgP3TRRXUHDBgPHDBgP3TRRXUHDBgPHDBgP3TRRXUHDBgPHDBgP3TRlGVEBWPc7AVpiNDDBgPHDBQCTmYCunMaaIUXUHDBgPHDBgP3TRpvpP3Ba6KXjN5PPHDBgPHDMPLx4sca91TpvpPHDBgPHDBgvojjvpPHDBgPHDBgvoj8qkf0oAxZWPlaGx6vPQoBZJBPmc6gTHbN4Fn1av6Pglzan4iDBbHfapczAlPHDBgPHDN0r8IrpSGjxW.WXIPwYZy27BQ8O5.MEBEbV8+K0uF7p4PXuDzpICt4liN.EBgPHDBgvojsskfKIK3OFAb5WVRVUHpJEmo98S9iQne+FgPHDBgPHDUfsqBqEbJ3niEJJCa1lTHZvKu+.9sABQsQv2N4niFw+iVsZIszRiTRIExJqrH+7ymRKsTzoSNkFD0sbyM2vCO7.+7yOBLv.oUspUDRHgfJU1ti2bgEVHW7hWjzRKMxM2bonhJBMZzXy19BgPHpdpUqFu81aZZSaJgDRHzl1zF7wGebzgkSAaSBqkjk4SV0M0PKhABZzf+QAd0RPkG1jGRgndCskBEeY3ZGEtxlgL9A8mi2FTTF52+oW6E7LPGWbJPmNcjbxISBIj.ETPAN5vQHPmNcTRIkP1YmMYmc1blybF70WeIxHijvCObbyJNkBJpnh3XG6XjbxIiVsZsgQsPHDBKkFMZnfBJfBJn.RIkTH93imvCOb5V25Fd6s2N5vygx5SXUmN3+6gqXxpMomPDeBznvs5GBgndMUd.9zF8+qEiBZWxPhOGj2uei0onLzueTO1gbNs5fTbwEyANvAH8zS2QGJBQUpfBJfCcnCw4O+4o+8u+3kWdYwaiqbkqv92+9onhJxNDgBgPHrVZ0pkjRJItzktDCX.CffBJHGcH4vX88TTJeg91ZzXgbePO1ljrpPXNMJb86eDx8Y50m2ene+IQctqd0qRbwEmjrpndkzSOchKt33pW8pVz867m+7r6cuaIYUgPHpGnnhJhcu6cy4O+4czghCi0UgUcZzOZ.arlzSHhOUlxNDhphap0ueRgWzzJsdgk.s5Qj8epCUbwEyd1ydH+7y2jqWsZ0DYjQRDQDAgDRH3u+9iZ0xeWD0sznQCW6ZWizRKMRLwDIgDRvjyuz7yOe1yd1CCaXCqFUo0qbkqvAO3AqPK.2jlzD5YO6IcnCcf.BH.47lRHDh5XEVXgjSN4PRIkD+9u+6jWd4obaZ0pkCdvChu95qKYkVstDVyZWlNZ.6lZ8sAr7isEhpmg8WNT+tw4zZwYpe+plOLGar4hPmNcbfCbfJjrZ6ZW6XTiZTzrl0LGTjID5oVsZZZSaJMsoMkN24Ny.G3.I1XikyctyorN4me9bfCb.F7fGbUdNsVTQEw92+9qPxpCbfCjALfAf6ta+lZ1EBgPT07wGevGe7gPCMTt8a+1Y+6e+r28tWkaWqVsr+8uehIlXb4NmVstVBNysa5xsHFoMfEBKQiBW+9MFq76WIraRN4jqPa.28t2clzjljjrpvoTyZVyXRSZRz8t2cSt9zSOcRN4jqx66wN1wpPa.OtwMNFzfFjjrpPHDNQb2c2YPCZPLtwMNStdCCVdtZrtDVy6vltbPi1p1bBgKoxueSd+liINbwnUqVRHgDL45LTYUa4TFhPXqoRkJF0nFEsqcsyjqOgDRnRGseKrvBqPBsCbfCjHiLR6VbJDBgv5DYjQx.G3.M45RN4jovBKzAEQNFV2uJqnTMcY+ixp1bBgKoxueSQo3XhCWLokVZlL00nVsZIYUQ8FFRZ032uVPAEPZoklYW+KdwKZRxrMoIMgALfAX2iSgPHDVmALfAPSZRSTVVqVsbwKdQGXDU2y59kYZJ2HLnWszp1bBgKoxueS42uRXWjRJldfAhLxHk1.VTuRyZVy3Vtkawjqq7uu1fxmHaO6YOk1.VHDh5Ab2c2om8rmlbcU1AmrgJqrTB5J2VyCqayIDthpv9M5L6pIrsxJqrLY4HhHBGTjHD0dk+8sYlYllc8xM2bMY4NzgNX2hIgPHD1Vk+yrK+mo2Pmz6aBgvkT4GYfCIjPbPQhPT6U922ZbatarxOXKEP.AX2hIgPHD1Vk+yrc0lGskDVEBgKoRKsTSV1e+82AEIBQsW4eea4eesAFO2sBHyypBgPTOR4+L6x+Y5MzIIrJDBWR5zYZqWqVsL+QKp+o7uus7uuVHDBgn9NIgUgPHDBgPHDBgSIIgUgn9nBNsiNBDBgPHDBgvtSRXUHpO5H2aEmGjEBgPHDBgnAFIgUgn9nhyBheTPI43niDgPHDBgPHrajDVEh5qJ7OgiNZPy0czQhPHDBgPHD1ERBqMPUbwE6xMjW6R5ZIBG6AAsleprPHDBgPHDh5yb2QG.NaVwJVAaXCanFO0.L24NWtq65tpv0u10tV9xu7KQmNcz5V2Zd8W+0ocsqcU616y9rOiO+y+b7yO+XMqYMzxV1xZTb7S+zOwV1xVX26d27m+4eRd4kGpTohl27lS6ZW6XPCZPLpQMJt8a+1qxsy8ce2Gm9zmlPCMT1wN1At6dEeKh874ls50eWFt6CjyAgi+DPjeA3laN5HRHDBgEHmbxgu7K+RJt3hYjibjDYjQ5nCoZr5ywtv58i+3OxQO5QI4jSll1zlx.G3.YHCYHN5vRz.jjvZ4Lm4LGxImZ94E3e4u7WLaBSyblyjqbkqnr7AO3A4XG6X3omdVkaue5m9IN3AOH.7m+4eVsIrlQFYvy7LOCaZSapB2lVsZIiLxfLxHCNzgNDu268dz6d2a9zO8SoW8pWlc6s8sucJszR4Dm3DTTQEge94Wc5yMa0q+tL5v6.m4kgqrC3zyD5zG3niHalie7iSgEVXk9dUgPHZHXe6ae7hu3KB.W3BWfO8S+TGbDUyUeN1El2IO4II6ryld26diGd3gYWmLyLSlxTlBwFarlb8u8a+1rqcsKhN5nqKBUgKDIg0xI+7yW4x8su8sBSJ6k2.Fv.L60mat4Zxxm5TmhktzkxK+xur0Gj+Oe629sL0oNUxLyLUtNu7xK5V25F8nG8.sZ0xEtvE3Lm4LbtycN.3vG9vLjgLDxHiLp1DLqL1yma1pW+cY3aDP3yCR5MfTVG3QPP3y0QGU0Z+4e9mDarwxV25V4bm6bDUTQw27MeiiNrbnRLwD4.G3.3u+9yXFyXp062JDBme0ztKxYT84XWn2JVwJ3oe5mF.F6XGKe228clc8lybliRxppToh1291SgEVHW5RWxhJ5fPTSIIrVE9O+m+iYqvnkvO+7SIIr28ceWd7G+wo4Mu4Vcr89u+6yK8RujxxgGd3rxUtR5e+6uYOhX+1u8a7Ye1mwpW8pIu7xibxIGBN3fspXvd8by.awq+0a8isnlutMt2PamIb9k.meofGMGZ8SZ+hMarbxIG1wN1Aacqak3iOdStM4G.AyadyiMtwMBnuZFt7GjFpYU.PHD0dkTRI3t6tiJUxPcRCA0z+dZ72A++8+8+Y104RW5Rrl0rF.nIMoIru8sO5V25F.bhSbBtoa5lrQQsPbCxmDYm05V2ZF4HGI.jWd4wa8VukUuMO+4OOu9q+5JKO1wNV9i+3OXPCZPU5OdqW8pWr7kubRHgDX1yd1zhVXAIDUIrGO2D0RMavPqeJ8W9LuFj926XimpQQEUD+vO7C7LOyyP+6e+4Mey2rBIq13F2XF0nFkCJBcdXbR6RB75q.PDQDA8qe8iILgI3nCGgnAm4Lm4fWd4E93iO7a+1u4nCGgUxR964ccW2Ed6s2nRkJtm64dL657e+u+WJsT8Czi2+8e+JIqBPW5RWnwMtw1tfWH9ejJrZmUZokxq+5uNae6aG.V1xVFO+y+7zwN1wZ8174e9mmqec8SkIiXDinRaYCy4lu4alEsnEUqerMl834l.nm+6Z28Kn6CJMW3xa.R7uBtG.D3frswlUPqVs7q+5uRrwFK6bm6jBJnfJrNMpQMhniNZhIlXX.CX.R0ybgXKq.fPHp8RKsz.zuOY1YmsCNZDVKK4umiYLigbyMWJpnhnIMoIlcctzktjxk6RW5hsKPEhpfTgU6rxJqL5cu6MiYLiAPeRdyYNyoVu817l2LaaaaC.TqVMKYIKwlDm0F15maBafPeLn4CEzVFjvi.48GN5Hhie7iy68duG2wcbGLkoLE1zl1jIIq5kWdwvF1v3i9nOhe8W+Ud+2+8YvCdvRxptPr0U.PHDBQsiWd4UklrJ.olZpJWNf.BntHjDBoBq1aZ0pE.dm24cXqacqTVYkw2+8eO+7O+yzu90OKd68Iexmnb4oLkoPW6ZWsYwpkxV+bSXizlWDJKOH2CAGabPO92fu2rCITlvDl.+weTwjlc2c2Y.CX.DSLwPzQGM95quNfnS3rvVWA.gvYUIkTBd3gG3lELEjoQilpc.HzYksL1qoaqxJqLyNk7YOTWGSNCuWnjRJQ4xx43rnth7NM6LCmyYcpSchm7Iuw.gyrl0rpw2WCJpnh3.G3.JK6nO+srkO2D1Pt4l9QNX+6BTZ9vQtWnnTq96mMVt4lqIIqpVsZ5W+5Guy67N7q+5uxxV1x3dtm6QRVUXwptJ.HDNRIjPBzu90O5W+5GIjPB.v2+8eOcoKcAu81a7yO+L46LMmbxIGd8W+04Nti6fF0nFQXgEFicriku8a+Vyt9G7fGj90u9Qe5SeXoKcoUaLlTRIwfG7foO8oO7IexmvwN1wHlXhgQLhQvt10tTVuW8UeUFwHFgx+l8rmc0tsszX2.y851ktzk3Ue0Wkd26dimd5IsnEsfwLlwTgNwnnhJh28ceW5XG6Hd4kWz5V2ZFyXFCadyatZiWm4XJmbxgEsnEwDlvDnKcoK3kWdQKaYKYHCYHL8oOcN1wNlYue01+dd7iebF3.GH8su8k0st0ob8m4LmgQNxQxHFwHLYZT78e+22js2gNzgpwO2DBKgTg0pP5omtISyJFyc2cuFMh3ZbhYuwa7Frt0sNt10tFG7fGju8a+VF+3GeMNd9+9+9+nnhJRY4N0oNUiuu1C1xmalis30eWVt4t94n0S8Bv0u.D+nfdtKvy5t12orxJyjkGzfFDSbhSja61tMG9QH1YkyvQOuxXIUFpzRK0orkts0u95L+2KgiyYO6Y4W9keQ4x+3O9iL8oOckuy75W+5rwMtQ9rO6yL68O93imwN1wpLczAvEu3E4hW7h78e+2yrl0rXQKZQlTcKe7wGkGyDSLQdlm4YvGe7oRiwku7kyO8S+D.LpQMJN7gOL6XG6nBqW4SB63G+3r3Eu3Jc6VahcCJ+qaEVXgbO2y8nzAF.bkqbE1zl1Dae6amu8a+Vtm64d3jm7jLtwMNN9wOtx5coKcItzktDadyalErfEvq9puZkFyUEGYLs+8ued3G9g4O+y+zjqOszRizRKM18t2M+y+4+j29seal4LmoIulVa+6YRIkD6ae6C.5d26NSbhSDP+u+7G9genBauicriYRRyCcnCk9zm9TkOuDhZCIg0pPG5PGpxa+nG8nlL5nUcZQKZAyYNyQ4Col6bmK268du034UwLxHCkK6u+9SngFpYWucsqcUkCFI25sdqLnAYaGLdr1malis90eQcql1zlZxTezt10tXW6ZWDXfAxPG5PIlXhgd0qd4x2RQadyalMu4My+8+9e4Lm4Lz0t1UFv.F.SaZSqFM.l8y+7Oyrm8rQiFMLm4LGF8nGcktt+8+9em0st0gu95Ke4W9kzl1zFSt8DRHAk4fuku7kSjQFIe+2+87Zu1qwIO4IwGe7gG5gdHS9g1Z0pk+8+9eyF23FY+6e+bwKdQJojRHjPBgvCObFzfFDu7K+xUXJp5XG6XLm4LGzoSmIed0q9pupIUH5VtkawjeP0wO9wYpScpTbwEye8u9WU9AUlSN4jCqXEqfibjivQO5Q4zm9zDTPAQW6ZWIxHijoLkoTkeFh4d8HiLxfksrkwO9i+HG7fGjfCNX5Uu5EO3C9fV8AoSzvyN24NYYKaYnSmNZQKZAQEUTb1ydVSZqRis28tW9hu3KnnhJBe7wGtm64dnksrkr6cuak8Sd+2+8oO8oOLtwMNk6WTQEEcqaciicriw0t10H1Xik6+9uey9XnSmNSleqe3G9gorxJi669tOznQCwGe7JII8W9K+EBJnfTV2pJYjZaraNaZSahu4a9FJrvBooMso7.OvCPokVJacqakLyLC7sbsL...B.IQTPTQJojR3wdrGiMsoMw3G+3IiLx.2c2cFwHFAcricj3hKNN9wON5zoiW60dMF7fGL+k+xeoJeLqN0kwzpW8p4IexmDMZz.n+yA6e+6OQDQDbxSdR9ke4W3HG4HTRIkvrm8rIojRhku7kqb+ui63Nr5+dZLCiWIkUVYb7iebN6YOK.zidzCkowF2byMFxPFhk+BqPTCHIrZExKu7r36yK9huH+y+4+jKcoKwYO6Y4S+zOkoO8oWituYkUVJWtssssU558RuzKwQNxQpza2SO8j7yOeadEPrlma0F0lW+cYnqLHoWQe0U8JPn6asNs5pf9pfu8suc1xV1BacqakjRJI.8uOd8qe8r90udBJnfX3Ce3DSLwP26d2snyqq56zpUKyctysBUq3nG8nbzidTVyZVixbcWU43G+3JU.3vG9vUYBq6cu6kCe3CCne5wp7IrZoUF5zm9zL1wNVkVkyXW9xWlKe4KyO+y+Lqd0qlsrksPO6YOUtcacE.JOqo5DU1qGkUVYbu268xEu3EUVmZZ0iDtl9zO8SAfG3Ad.V0pVkxo.QN4jiYW+DSLQ.3IdhmfO3C9.72e+Az2wJOxi7Hr90ud.XIKYIUHouG8QeTl4LmI.7u9W+qJMg0e8W+Uk2C2u90OZW6ZGf91VFfIO4IyW9keIf9tmZnCcn0nmqVSrWdFd7m9zmNu669t3s2dCne+vALfAvku7kI6ryl67NuSzoSG8oO8gMsoMQKaYKAzO1Zbe228o7YLezG8QVcBq0UwTd4kGuzK8RJIqNm4LGdm24cpv2O9Nuy6nTjfUtxUxzl1zTFWS5XG6nU+2Si05V2Zk4C7YLiYnbPEm9zmNSZRSxh2dBgkRRXsJr5UuZ7xKuL6s4t6tSe6aes3soO93CKbgKjG8QeT.XAKXAL4IOYZZSaZ0deCLv.Ut7ku7kqz0K7vCuJSXsjRJgBKrPadBqVyyMywd75uKAc5fjW.bsS.d3GbqaA7tUNjPIjPBgm9oeZd5m9o4Dm3Dr0stU1111FW4JWAPeqTs10tVV6ZWKgDRHL7gObFwHFAQEUTM3Sd84dtmiksrkAn+HS2idzChN5n4jm7jDWbwwUu5U49tu6qVu+i0plTYn+w+3enjrZTQEEibjij1291imd5Im5Tmhku7kyUtxUHkTRgm8YeVNzgNjxeWs0U.vXVa0ILmsrksvF1vF35W+5Vc0iDtVF7fGLqacqyjAcmpZzU8oe5ml+4+7eZxmA5t6tyRW5RYiabiTRIkv+8+9eI6ryll0rlorNO7C+v7xu7KSYkUF6XG6nB2tAaXCaP4xUUGJTaTaicyYZSaZU37ws8su8LsoMMl6bmKf9pE2qd0KhKt3L47Z2Ku7h268dOkjCiKt3rIO+pKhoEu3EqTfhINwIx69tuqYWuW4UdEt3EuHKe4KW4.ft0stUq94nP3LRRXsJLtwMtJzFa1BSbhSjO7C+PhO93I6rylEtvEVildZhHhHTtblYlIYkUVljDqAe629slsciBHf.L4bf0dn19bybrWu92f2EWp9QHX0dAc66bXiPvkWW5RWnKcoKL6YOayNerlVZowW7EeAewW7EDZngRLwDCie7iuJ6lf5qt3EuHqbkqTY4ku7kaxfvxUu5UYpScp7u9W+qJsRL1a0jJC0111VF1vFFye9yma+1u8JrMdgW3EHxHijzSOcN7gOL6ZW6h65ttK.aeE.LvVTcByY0qd0.1lpGIbcDP.AvZVyZpwiPriXDinBI7YPvAGL21scaJC9hW9xW1jj9BN3fY3Ce3rsssMJszR4a9lugm4YdFS1FZ0pUYvOxSO8rRqBasg0D6kWLwDCezG8QU5sYH4vl0rlwN24NM6fvV25V2HjPBgzRKMxM2bofBJvpFj+pqhoO9i+XkKWcChkO6y9rJGrscricTmNBIKD0kj9VxAPkJUljD2+3e7OTptPUUUo1111Zxfnfg1uwbaeu816J7u5B01maBajTWMj4NAUtCQtFnI8vQGQUfJUpne8qe7du26wO+y+LevG7Abm24cZxfWSpolJqbkqj4Mu44.iT6m+1e6uoLnT8jO4SVgQLzF23FyZVyZXxSdxNfn6FLTYHi+AUFWYnYNyYx+9e+uMaxp.z7l2bl5Tmpxxm5Tmx9Er+Olq5Dl6yddkW4UTN+TMTchpyS+zOMqXEqPIYU3FUOxv4qugpGID.L9wOdZUqp4c3RXgEVU9ckFZuTvz4CSCLzgSf91Bt71291mRGZESLwTsU4zRXswtwJ+oqfwL90yF23FWkUq13GSiGnjpMpKhozRKMt5UuJ.zt10NhJpnpxXJpnhhvBKL.8G7LiOcEDhFRjDVcPhN5nIlXhA.Jt3h40e8WGnpSpSkJUby27MpVly5vGds44lvH+9vq4+yXWYSvk2.faPDeLDnscf0xdvGe7gQNxQxxW9x4.G3.Lu4MOS9BZCUesgFiaIum5odJytNpTohO+y+b5e+6ecUXYBKsxPUlN24NqbYiG4PsWrzpSXfgpSTYpIUOxfp5T1P3ZwVe9LabWUYtOebTiZTJIg9y+7OyEtvEL41+5u9qUtrstcfqNUWrWSYIcdkwGrsRKszZ8iY0wVESFFqGfpNAYiYbxxFFLjDhFZjDVcfV7hWrRUkVyZVCm7jmrZ+xsd26dqb4268dOGV6BVcpMO2DVgr+Q3OWg9K2w2FBdLN13oVnYMqYLwINQ9lu4aXm6bm7BuvKv8du2qiNrr4JrvBI8zSG.kQX1Jiat4FsnEsntJzLgkVYnJiwmCtFpbf8h8r5D1xpGID0VU2A90Ku7hG7AeP.8mKke0W8UJ2VYkUlx.mSSaZS4tu6619EnlgbPqqdFmvYkMSPTdF+cDxAKSzPkzn6NPcsqckG+webVwJVAZzng4O+4WsGkt4O+4y5W+5ofBJfLyLSl27lmIUTvYQs44lvHCNip91+QiRh4pGFN+eS+fsTaeQn0U8DRui10t103O+y+j+7O+St90uNsoMsgvBKLSlWcCKrvLoURaHw3jhZcqasCLRpZV5AXJ4jSlssssQJojBW9xWlzSOcznQiIit41a01pSXnJTm8rmkvCO7Z0issp5QBg0ZxSdxJmC5e0W8UJs69O9i+HYlYl.5OfTU1fZnvww3emTMclPH2byU4xNyemhPXMjDVcvdy27M4q9puh7yOe9tu66pxps.5+vn4Mu4wblyb.fksrkQO6YO4wdrGqtHbsHV5yMQsPAIpeDAVmFnUSDBu5OO7bDzoSG6XG6fO5i9HN+4OuYWG+7yOl3DmHOwS7DlbNB1PiwSyJFmjd8U+5u9q7Zu1qwO8S+jxzeiihir5DR0iDNK5cu6McoKcgSbhSPBIj.G8nGknhJJGZ6.KpYL9.lUS+7Hi+NkZxb2sPTejzilNXgDRHL6YOa.8+ndCyQhUkYLiYnLhAqQiFlxTlBidzilLxnxqJWRIkjxnlYckZyyMgEJoWAzTBDzHfa9u4niFyJ0TSkwN1wxK9huXklrJ.4me9rrksLFxPFhRaq0PjgAmGv92hrkmwIUYKRv5fG7fLzgNT9we7GQmNcz0t1UlyblC+8+9em0st0w+5e8u3ke4W1pebpojpSHD5U9AeoRJoD1zl1Df9NXY.CX.0nsi4lwAD1OFmv5INwIp1AvsTSMUkNDwGe7oZOMNj+dJpuRpvZUXAKXAl7iKMmgO7gS+5W+rpGmYNyYxxW9xIkTRoFs9d3gGroMsIlzjljRRfaYKagcu6cSO5QOnacqaJm6VW3BWf8su8w9129Tt+t4laU6yKaEK84lwpqd8udsxJDBnuPWWI3DVgGsZ0xrm8r43G+3JWmmd5IcnCcfl27lSiabiIiLxfTSMUtzktDf9DHl27lGgEVXMHqJ+McS2jxkMzddVCi2GI+7yuJWWiq.psnZniabiS4w7i+3Olm64dtJrNMu4MmEsnEY0OV0DR0IDB8l3DmHuxq7JnQiFV+5WO8qe8S4fy7vO7CWkGvJiOuyO9wOdc945pqrlzjlvMey2Lm9zmlhKtXVyZVCSe5SuRW+O9i+XkAKtwN1wZ1+tJ+8TzPfjvZ4nVsZkQssEu3EWsq+YNyYr5DlZTiZDu+6+9LgILASt9p5bHqScpS7q+5uxRVxR3Mdi2fhKtXxO+7qPxokmat4FO+y+70YSyMV5yMGwq+0q4eDP29ZPkGN5Hwr97O+yUNnJMtwMl+5e8uxnG8nM67S2IO4IYUqZUr0stUznQCyZVyhst0sRiabiqqCa6JiaU0jRJIxHiLpxAVop6HhGRHgnb4paZavVNJYlTRIobfn5ae6qYSVs1vZp.f4pNQUMscXoUmPHpuHzPCk65ttK92+6+MW5RWhW5kdIkaq5ZGXi2O3O9i+vtEiBy6sdq2RYfy5sdq2ha61tMyN0gsicrC96+8+Nf9AaqErfEX1sm72SQCARKAWNOzC8PVTqxUYCrGF9A4l6GlaNO3C9f7pu5qhGdnOwi10t1YxzAg4nVsZlyblCwGe7L4IO4J8b1RkJUDUTQw7l273zm9zU5DeMbiiDWiZTiThkxyd9byV85uKAeZMD0lA0MxQGIUpu4a9F.vau8lUrhUvi9nOZk99lN24NyRVxRTllWt7kurIS+KMT3s2dSO5g94GWsZ0xV1xVpz08q+5ulsu8sWkaOiGcZ+8e+2qzJmtxUtR1111VsHhMuibjiX1Xn7ptp9BUrB.0VFpNAfR0IpJ0jpSHD0WYbaAelybF.nm8rmJmRQUFCe9D.aZSahktzkxgNzgX8qe8L+4Oe6SvJTb+2+8SO6YOAfbxIGFxPFBu7K+xr4MuYRLwDYiabiLsoMMF0nFkx.71y+7OOssss0raO4umhFBjJrVNqZUqhUspUY0amTRIExM2bsnIk629seady27M45W+53me9Ui+wSQDQDr5UuZ.8s.b5omNYlYl3gGdPfAFHctyclF0nZVRMojRJjc1YS.ADPk1Nt1yma1pW+avyq.gtuUvyJexI2QqnhJRocKm3DmHcu6cuFc+lwLlA6YO6gSe5SShIln8LDcXd1m8Y4IeR8ilyu1q8ZLzgNTkoWECV6ZWKOwS7DUaq61gNzAZbiaLW8pWkyd1yx5W+54gdnGxj0Y4Ke47rO6yZSGTjZe6auxk2wN1A4jSNDP.l99w8rm8vi+3Od0tsrkU.vVWcBgn9pQO5QSSaZSM47ztlLXKEczQSu6cu4vG9vTZokxLlwLTtsPCMTdq25srKwqPO2byM13F2HOxi7Hru8sOJrvBqzNNyc2cmErfEnLdgXNxeOEMDHUX0NwSO8jVzhVf6taYGS.0pUi+96es9H8GVXgwsca2FwDSLbW20cQO5QOpwIqB5O+XCN3fqxycTG0yMgQt0s.d6b29hImbxnUqV.pwIqB5+xZCGc4SdxSZWhMGsG5gdHkC3SFYjAQGczr3EuXN7gOLwEWbL9wOddjG4QnjRJgHiLxpba4qu9pj7KnupJye9ym8t28xpV0pXPCZPJIqZKOGM6ZW6pxT4RQEUDO5i9nricrCJt3hI93im27MeSF1vFlI+X4JisrB.15pSHDVJiG7upImRCVx5a7Hnd0MZp6s2dyS7DOgxxpUqtBmdNUlsrksvHG4Hqv0OzgNTSV1VF60zskZ0pwGe7oR2NFyv1QsZ0VzuExQGSgEVX7S+zOwhVzhnicriU3znJv.CjgLjgvANvAXNyYNU6zPls7umFe8MzNkcDNujJrJD0G46M6nifpkwy+lsqcsyhtuFpd24O+4QiFMnVsZaZr4n0nF0H9O+m+CCe3CmqbkqvYO6YqvnoqGd3AezG8Qzrl0LkJFVYl0rlEaaaaiScpSQYkUFKXAKnBUL7UdkWg1111pzx0VKO8zS9hu3KXTiZT.PrwFKwFarnVsZkQjbO7vCd+2+8YoKcoU4.ulsrB.15pSHDVpniNZxM2bojRJgfBJHa55unEsHl0rlEd5om0nSKm9129pb4gNzgRvAGb0+D.8s4+1111HmbxgScpSQAET.27MeyUXjz1VF60zsk6t6NYmc1jWd4Yx7er4DarwxUtxUvO+7Ce802pbcMGGYLoRkJl8rmMyd1ylBKrPN4IOIomd5z0t1UKdDM2V92y23MdC9q+0+Jt6t6lb5bHD1SREVEBgcgwUyKojRxhtuImbx.P.ADPCtjUMnG8nG7y+7OyccW2kIGU6F0nFwPG5PYW6ZW7rO6yZxsUY+3lPBIDNzgNDiYLiwjATMO8zSFv.F.6bm6jEtvEpb+cyM2LY6ZfkVYn69tuahKt3TFUxA8S0Vd3gG7W9K+E1+92OyblyTohCUUkGrkU.vVUcB6UkuDM70jlzjZTxp0l0OnfBpFOFR7Ye1mob4ZybuZ.AD.8su8kniN5JMIIaYrWS2Vd6s2DbvAWsc5kJUpH3fCtVkrpyTL4iO9P26d2Y3Ce3V0zuks5umMu4MWRVUTmRpvpPHrKBIjPTN+oN7gOLCaXCqFeeiO93AZ3OMizwN1Q14N2IZzngicriw0u9041tsayjA7rQNxQR1YmMpTopZ+gdabiajxJqLNwINAYkUVzm9zGSZ4rG5gdHF1vFFd3gGlMALKsxPf9DJG5PGJolZpblybFToRE8pW8Ro83.8CPSW8pWsJq7fsthN1hpSXOq7kPXuc9yed9O+m+Cf9C9xnG8ncvQjPHD0NRBqBgvtoKcoK7K+xuvW8UeE2wcbGbG2wcTs2mksrkoLXK0POgUCTqVcUdd9V9Aynph6t6NcqacqRu8pqc0psIaEZngVoiT4d4kW03DfMTAfphkFiFpNQsgk7XYIUTSHr2V0pVkx3HvXG6XqUmCmBgP3LPZIXgPX2L8oOckyowoMsowG7Ae.YjQFlccO4IOIuwa7FrzktT.8m+iiabiqtLbEBgnAAMZzvm+4etxxSZRSxAFMBgPXcjJrJDB6lnhJJl9zmN+s+1eiBKrPV9xWNqbkqjV0pVQHgDBMtwMlrxJKRO8zI0TS0j66zm9zoScpSNnHWHDh5u10t1kxmoFVXgwfFzfbvQjPHD0dRBqBgvt5IdhmfbyMWV6ZWKkTRInQiFt3EuHW7hWzrquJUpX7ie7LkoLk53HUHDhFFtsa61XMqYM3s2dS+5W+p1o8DgPHblYkIr5FfQSD8ZKET4Qkt1BgvLzVZ4thFVySsFF7ad3G9g4C+vOjctycRQEUTEVO0pUy.G3.YFyXFtLm6pBgPXODP.AHsArPHZvv5RXUs2flBuwxEeYvm1XkgjP3ho3Ka5xp817qW8bspUshkrjkvhW7hI8zSmKbgKPZokFMu4Mm1zl1PngFZC1ovFgvQy34GW.JrvBMYjbVHDBgyqBKrPSV1U62KYcIr5cnPAm8FKesiJIrJDVpqcTSW1ayORq1Pgat4FgDRHDRHg3nCEgvkg2d6METPAJKmSN4HIrJDBQ8D4jSNlrrwy45tBrtSpglzaSW9Ja1p1bBgKoxueS42uRXW3lal150FW8Ign9hx+91x+9ZCZZSapIKmTRIY2hIgPHD1Vk+yrK+mo2Pm0kvZyGooKmwO.WOYqZSJDtTtdx52uwXke+JgcgGdX54a+0t10bPQhPT6U922V92WaP46nge+2+cJqrxrawkPHDBaixJqL98e+2M45b05RMqqkfCbHfWMGJNS8KqSCj3yA8XafatV8VsPXwLr+hNipPhWMW+9UMP7q+5ux0u90q02+1zl1Xx.vzN24N4W9kegHhHBdfG3ArpXyO+7iryNakkSKszb4Nhkh5+RKszLYY+7yOytdsoMsg3iOdzpUK.jWd4w92+9ko6DgPHbxs+8uexKu7TVVkJUzl13ZcJXZcIr5lZHrWBN8KeiqKueGRbpPDepjzpPTYzoQ+9I4Y5QLivdoFL62bsqcMl7jmrUsM5cu6MqacqC.JojRXVyZVTbwEqbagGd305scfAFnIIrlXhIRm6bmsp3UHpqkXhIZxxAFXflc87wGeH7vC2j1Jau6cuDTPAQjQFocMFEBgPT6jPBIvd26dM45BO7vc4FCBr9IlqVMYnI8vzqKsMA+wcKsGrPXNWOY86ej1lL85aROzu+TCDkVZ4mtdrbkTRIJWt3hK1jsowGswZiV0pVYxxIjPBlj.qP3rK6rylDRHASttx+9Zi0st0sJLPc7ce22wO8S+jzdvBgP3DorxJie5m9I9tu66L4581auoacqaNnnxwwJmGVAbyM3V9WvuMPnnLtw0m2uCGpePKhABZzf+QAd0RYdZU35Qao5m5Zt1Q0O.KkwOXZa.Cf2sP+9QUx.lR8QMqYMim3IdBSFYRsT8nG23fg4u+9yi8XOF6d26lN0oNwsbK2hUEegDRH3qu9pDeZzngXiMVlzjlDpTY8GKOgvdRqVsDarwZxftju95aUddM4s2dy.Fv.X26d2JsFLnuRqG4HGgd1ydRG5PGHf.Bvk6n2KDBgiVgEVH4jSNjTRIwu+6+dENv7pTohALfA3xMBACfa5zoSmMYKUvofiNVSSZUHDUOuaAD0FAe6Tc1CYGefkB.aeAt1CvSm8rmkCcnCYx008t2cF0nFkjzpvokgjUiO93M456Se5Csu8suZu+m+7mmCdvCZRRqBgPHbdoRkJ5ae6Kssss0QGJUqQNusC.mYCunMaaZ69EY91InW6shsGrPHpbMoG52uoNLYUwMDd3gSvAGrIWW7wGOqcsqUZOXgSoryNaV6ZWaERVM3fCtFeNc2111VhN5ncIOJ8BgPTei2d6MQGcz0KRV0dw5aIXi4YfPO1AjxW.WXI2XzCVHDlxqlqe.VpUStAUa.Weiat4F8u+8m3hKNxO+7Ut9yctywm7IeBQFYjDQDQPHgDB96u+nVcCiADKQ8GZzngqcsqQZokFIlXhjPBITg4dU+7yO5e+6ekNGrZNAETPDSLwvwN1wH4jSVp1pPHDNYToREgGd3lc7GvUisMgUP+O99ldLnUOBj0tfL2Nj2gghREzTDfsoCjEh5ObCT6M3cnPS5s94Y0.GRClQC3567xKu3Nuy6j8rm8XRRqZzngidzixQO5QcfQmPT07yO+3Nuy6Du7xKK995s2dysca2F2xsbKbwKdQRKszH2bykhJpnJjTrPHDB6K0pUi2d6MMsoMkPBIDZSaZiLdB7+X6SX0.2TCMeX5+mPHD+O4latboKcItzktDEWbwzl1zFBKrvnYMqYNrXpwMtwLrgMLNvAN.omd5Nr3PHrDAGbvz+92+ZUxpFyGe7gN0oNQm5jbpIHDBgv4i8KgUgPH9eJojRXCaXCrhUrBxHCyOvr4me9w.G3.YVyZVDZngVGGg5qz5fG7fI4jSlDRHAqZzMVHrm70WeIxHijvCObKpMfEBgPHpORRXUHD1UG6XGim+4edRKszpx0K+7ymsu8syt10t3wdrGiW3Edg57QpW2byMZe6aOsqcsizRKMRIkTHqrxh7yOeJszRwVMnpKD0Tt4la3gGdfe94GAFXfzpV0JBIjPjQwZgPHDtLjDVEBgcyUu5U4EdgWvjjU8yO+HrvBifCNX72e+IyLyjLxHCRN4jQiFMTbwEyxV1xnwMtw73O9i6PhaUpTQngFpCoRuBgPHDBg3FjDVEBgcya9luIolZp.PngFJO6y9rbO2y8X1Q6tzRKM95u9qYUqZUTRIkvG9geHCbfCjNzgNTWG1BgPHDBgvIgzSQBgvtYe6ae.5GTiV8pWM2+8e+U5PydHgDBSe5SmEu3Eiat4FkTRIrt0st5xvUHDBgPHDNYjDVEBgcQpolJW8pWE.drG6wpwS30iXDif90u9A.m7jmzdEdBgPHDBgnd.IgUgPXWblybFkK2st0MK59FUTQA.m9zmVFniDBgPHDBWXRBqBgvtv3I65Z6TuQwEWrsJbDBgPHDBQ8PRBqBgvtH7vCW4xIlXhVz88Tm5T.PqZUqj4YRgPHDBgvElLJAKDB6hl27lSW6ZW43G+370e8Wyjm7jwc2q9OxIkTRg8rm8.fx4xpPHDBg8lVsZk4fagSAYN31TtlOqEBQchoLko..+4e9m7IexmTsquNc5X9ye9TVYkgZ0pYRSZR16PTHDBgKNc5zwYO6YI1Xik8rm8vYNyYH6rylRJoDIYUgCgNc5njRJgryNaNyYNC6YO6gXiMVN6YOqK46IkJrJDB6l69tua18t2M+vO7CrpUsJdrG6wnwMtwU55mZpoxINwInQMpQLqYMKSZqXgPX+HUVR3rnttxREWbwbfCb.RO8zsKaegvVofBJfCcnCw4O+4o+8u+3kWd4nCo5LtoS91HgvkSGefkB.aeAirN4wqvBKD2c2c7vCOpSd7DBQMiNc5H4jSlDRHAJnfBbzgiPXV95quDYjQR3gGtMcbM3pW8prm8rGxO+7sYaSgntfe94G24cdmUYQ.bTF471N.blM7h1rso8qBq5z.YsKHysC4cXnnTAMEAH4GKb03Fn1av6Pglzan4iDBbHfapczAVcFiGwfEBgyAoxRh5KrGUVp3hK1rIqpVsZhLxHIhHhfPBID72e+QsZWmuuV3bPiFMbsqcMRKszHwDSjDRHAznQixsme94yd1ydXXCaXtDUZ01mvpNcPJeAbgk.EmoMeyKD0+nCzTHTvY0+uT+ZvqlCg8RPqlL3hMJ3pQiFRO8z4hW7hb0qdUZcqaMgEVXznF0HGcnonrxJiTSMURM0TIqrxhBJn.JqrxbzgkvEk6t6N95quDXfARngFJspUsxp+AzRkkD0Gkd5oSbwEmUWYIc5zwANvApv6+aW6ZGiZTihl0rlYsgpPXUTqVMMsoMkl1zlRm6bmYfCbfDarwx4N24TVm7yOeNvAN.CdvCtA+LpfsMg0RxB9+dXHu+vltYEhFbJNS3zuLj9Ffa4eAdFniNhr61+92Oe3G9gbxSdRyl7WPAEDidzilm9oeZ72e+c.Qn9yiuScpSQhIlHEUTQNjXPHJuxJqLxKu7Hu7xijSNY71auIhHhfN0oNUqNu9jJ.JAGLC..f.PRDEDUKIblUWTYojSN4JzYAcu6cmQMpQ4xNJrJbt0rl0LlzjlDwFarDe7wqb8omd5jbxIS6ae6cfQm8ms6bXsfSAGcrPQYXS1bBgKCuaAD0FAe6Tc1CYc44vZ5omNuxq7JbfCbfZz5GP.AvLlwL39u+62NGYlJ+7ym8u+8SN4jSc5iqPTaEP.Av.Fv.vO+7qFeezoSG+3O9iU3GqKUVR3rJ6rytBUVBffCN3ZUkkzpUKwFarlbNa2t10NlzjljjrpvomVsZYsqcslr+fu95qS0Aaw48bXsjrLexptoFZQLPPiF7OJvqVBpjAcEgKFskBEeY3ZGEtxlgL9A8mi2FTTF52+oW6sAYkVKexpMpQMhPCMT7xKu33G+33omdRG6XGIojRhhKtXxImbXdyadDTPAwfFzfpShwrxJK16d2qTUUQ8J4jSNryctSF3.GHAFXM6yNjJKIpuwVWYozRKMSRVUsZ0x6+E0anRkJF0nFEe7G+wnUqV.8mi2okVZDZng5fiN6GqOgUc5z2FvkOY0lzSHhOAZjLsTHbwoxCvm1n+esXTP6RFR74f798arNEkg98i5wNZPcNstwMtQkjUCMzPYpScpbe228g6t6N+we7GLgILAZZSaJe+2+8TZokx5W+54i+3Ol7xKOl6bmKacqakVzhVXWiw7yOeylrpmd5I25sdqzoN0IZQKZA95quxOnQTmSqVsTPAEPFYjAm5TmhibjiPIkThxsWTQEwd26dYnCcnUakV0pUKIjPBlbcFprp7dagyLC+H8byMWSprTBIj.sqcsyhd+aJojhIKGYjQJcVfndkl0rlwsbK2BG8nGU45RIkTZPmvp0+MTo7EU7bVMj6C5w1jjUEByoQgqe+iPtOSu979C86O0.xm8YeFf9QI3Uu5Uy3G+3wc2M+wIyCO7fG4QdDVwJVAd3gGjSN4v5V25rqwmVsZY+6e+UHY0t10txzl1zHlXhg1291i+96u7C5ENDpToB+82eZe6aOwDSLLsoMM5ZW6pIqSQEUD6e+6W4nsWYjJKIpOyPRqF+9UCUVxRjUVYYxxQDQD1j3SHpKU922lYlMrGnastukRmF8iFvFqI8Dh3ScolxNDBKlap0ueRS5ooW+EVhosKb8XkVZobwKdQ.34dtmi1111Vite25sdq7.OvC..m3DmvdEd.voN0opv4rZ+6e+Y7ie7Vz4EnPTWwO+7iwO9wS+6e+M45yImb3Tm5TU48Uprjn9NCUVxXk+80UmxOXiERHgX0wkPTWq7uusg97ns0kvZV6xzotF2TquMfkjUEhpm41eo3L0ueUC.W3BWPYjcLpnhxhtu8nG8.3+u8tyCKppWiCf+k0gkQQBQ1DWvEjqKYFTlRZkJJYgKjl10Ly8zrmTSCyqaoV4Rtb65Fooh25ZoBQFRVZklYZ5MTQD2REWPDTVTPG.G39GycNMKvvLLyYV+944gmm4blyblemwywy4879d98SbCX8gO7gH6ryVs40912dz6d2aQ66jHSkd26dqUlVyN6rUq2TUSLyRj8.iMyRUVYkpMskpWomHigl62p4901aLt.VucZpOcSddVFvDYH7JLEG2nJMOtxFkxrqB.z5V2ZC5ypL6l28t2UmW.twH2byUsRA1c2cGwFarhx2EQhgXiMV3t6tKLsLYxzY1lXlkH6AFalkzbvwfCcSjsHM2u0TMnuXsx3BXsjio9z9OPiZ0QjCIMOtojiaYZGlXd4kWBu1PG1AN+4OO.TDnqXcwD4latpMcm6bmYY.S1TjJUJ5bm6rZySy8qUEyrDYOvQKyRDQFa.qxz3DiMvvJ6OhHn8wMxLrmGGqUpNLaTPAEn2etRJoD74e9mC.wsjE0r7HCOby23fKQlJZteql6WqJlYIxdfiVlkHhL1.VkqwXVnjfLpUGQNjz73FMOtxFUKaYKgDIR..PlYlod8YN9wONFyXFCt4MuI..5YO6on09zrLxD6gOGhDCZteq8dGuAQDQNdLxwgUMtqVN6lws5HxQjVG2Xeb2hc0UWwi9nOJ98e+2wO+y+LhO93qwkq3hKFwGe7Hu7xSsNOiANvAh90u9IZsuG9vGp1zd6s2h12EQhEM2uUy8qIhHhr0wAeMhHQyK9huH..9we7Gwcu6cqwkohJp.m9zmVsfUiN5nw7m+7MGMQAbrnjrEw8aIhHxdmQlgUhHp1M3AOXTVYkgG7fGnUGuTyadygWd4Et+8uO..7wGeve6u82va7FuAdxm7IsDMWhHhHhHqLLfUhHQiqt5Jd8W+0qw2yO+7CG9vGFW6ZWCAETPrGKkHhHhHRKLfUhHKFO8zSz111VKcyfHhHhrxUTQEgst0shxKubz+92ezgNzAKcShLSX.qDQDQDQDUiN6YOKJrvBQTQEEbyMKWGr5AO3AwTm5TA.PN4jCV6ZWqEqsPlWr2ZfHaM28jV5V.QDQD4.HwDSDQDQDn6cu6X3Ce3V5li.N965XgYXkHaMEjJP96Bn0uuktkPDQjHikAIYIkQFYH7ZcMlpWQEU.Wc0U1ykShBtWEQ1ht55At9lrzsBhHxt0YO6YwgO7gQkUVoEscnrLHSHgDXIPRlc8oO8Ad3gGvYmcFwEWb03xjPBI.IRj.O8zSb7iebybKjbDvLrZmp7xKGt5pqvEWbwR2THwxElMfGMEnw80R2RHxrhYbhDaIlXhXBSXB..H93iG6bm6zB2hTfkAIYtM3AOXTbwECYxjAe7wmZbYxKu7.fhrrVXgEZNadjCBFvpFRLwDwW9keodeRgYMqYg9zm9n072111F15V2Jpt5pQngFJl27lGZYKaYct99zO8Swm8YeFjJUJRJojPPAEjd0N9oe5mPpolJ1+92Ot10tFJojRfyN6LZbiaLZYKaId1m8YwK9huH5V25lNWOCZPCBm+7mGAGbvH8zSGt5p16hHlaalpe+cHTcU.YMFfN+s.9zYKcqgb.vNdCxQg9VFj.rTHI6eRjHARjHwR2LHGXLfUMjPBIfhJpH8d4epm5opw.ll9zmNJnfBDl9HG4H3Tm5Tvc2cWmque5m9IbjibD..gwmRcI+7yGSbhSDojRJZ8dUUUUH+7yG4me93nG8n3i9nOBQEUTXsqcsHxHirFWeokVZnxJqDm4LmAxjICRkJ0rtsYp982gfytAHuBfLGBviue.OalktEQ1wXFmHGI8oO8AaYKaAUTQE0ZYPBn3bVKYIKAt6t63W+0esVO2JQVSjKWtUUE3o7+G2ImbxnVOVaaWjoCCXUCkVZoButqcsq04N9O8S+z037Kt3hUa5yctygUtxUh28ceWiuQ9+sicrCLoIMIb6aeag4IQhDzoN0IzktzETUUUgbxIGbgKbAb4KeY..bricLz6d2aje94WmAXVaDysMS0u+ND7OVfRyFnrK.bhAAD4OB3VMWtNDYrXGuA4HQeJCR.VJjj0oLyLSLwINQ3hKtfjRJIzhVzBje94iUtxUhu5q9JjSN4.+82ezst0MzidzCLoIMoZspYxJqrvjlzjP4kWNdy27MwHFwH..voN0oPBIj.pt5pU6bByd1yFqbkqTX5N1wNhktzkp058Lm4L3S9jOAm5TmBYlYlPlLYn4Mu4HlXhASYJSAsqcsSu1VKpnhvpV0pvO8S+DN5QOJBLv.QjQFIF1vFFFxPFhg7yFYEiArpC+vO7C0XFFMDRkJUHHrO7C+PLlwLFz3F2Xitss7kubLiYLCgoCKrvvF23FQzQGcM9e5b7ieb7oe5mhMu4MiRJoDTTQEg.BH.ipMHVaaJYJ982tlStAzlOD3rSB3AWC3TCE3w1Mfy0uaDAQ5h9jwIlsIxdBKCRxV0ktzkvgO7gAfhJZKqrxBu9q+5pUcb4kWdH4jSFImbxXu6cuXm6bmvKu7Rq00Eu3EwAO3AA.vi8XOlP.qG6XGComd5Zs7Z1oKkUVYoV.qUUUUXEqXE3e7O9Gn7xKWquqKdwKhMrgMfUu5UiIO4IqysyLxHCDe7wKjTF.fqd0qhqd0qhjSNY7Nuy6fkrjkvafpc.FvpHKzPCEgEVXHszRCkTRI38e+2G+y+4+znVmW4JWAyadySX53iOdroMsIcdWfiLxHQjQFIl9zmN1zl1DZRSZhQ0F.DmsM5+6G0y+8wEo.sYo.m8MAJICfrFOPG2hn1zLTkWd43pW8pnwMtwvWe80R2bn5I1waP15rFKWPSQoPZMtcQVORJojvl27lgb4xQfAFHF5PGJjJUJ1291GN9wONppppP5omNFv.F.9ge3Gz60aO5QOvfFzffb4xQFYjAt10tF.T7nZ4u+9KrbO4S9jp84lyblC9fO3C.fh866Se5C5ZW6J.Tj0VkOZZIjPB5Lf0CbfCfsrks.YxjAO8zSDWbwgfBJHr+8uegL9t7kub7jO4ShW5kdI8d6hrNwa4fHqxJqTsfKW+5WOtvEtfQsNmxTlBt+8uO..hM1XwN24N0YvpppssssXIKYIF8yI.f3rsQ0CtGHPqVrhmo0B1CvEmqktEInrxJC8qe8CuvK7BXricr060y0u90wxV1xv5V25TqrwIyKIRjn2+eMDYtkYlYht28tidzidfqbkq..E8yCyZVyBspUsBRjHAAETPH93iGqd0qVmCWMYkUVnm8rmnqcsq3e+u+2p8dm5TmBO+y+7H1XiE6ae6SX9yd1yFwFarB+MyYNyZbcelybF7Fuwaft28tCe7wGHQhDzl1zFL4IOYb1ydV8ZasnhJByadyC8nG8.d4kWn4Mu4H93iG6XG6Pu97jiiMtwMB4xkiwO9wiKe4KiUu5UiEu3EiidzihO8S+Tgkae6ae32+8eWuWusoMsAImbxH0TSEO2y8bBye9ye9H0TSU3u268dOg2KmbxAqXEq..JNex1291wd26dwBVvBvBVvBPJojBN+4OOhIlXfmd5oN+9yN6rgLYxvXG6Xwst0sv1291wJW4Jwe7G+AF9vGtvxsrksL8dahrdwLrJxd3CeHhJpnvfG7fQxImrvcMZW6ZW0q02W+0eM91u8aA.fKt3hE8.QS81F8+83emg+Y7NbfVNKfKsHEiQqdzbflNFSeay.sqcsKjat4B.fQMpQUuWORjHAe9m+43AO3A37m+7p87wP0eViYlgYbhpuLGkAIfkuTHYYPRFpYMqYIjUSUM5QOZ7y+7OissssA.f0t10hm3IdBQqcjPBI.YxjA.f24cdGLzgNTsVlVzhVfu669NjSN4TmquILgIf0st0o14Kb0UWwJW4Jwt10tPEUTA98e+2QgEVHdjG4QLcaHjYG+eyDYUUUU..3C9fOPXHhI4jSF+5u9q0q02ZVyZDd8nG8nQ6ae6M9FY8jodaiLRMpa.gpnWbEWX1.2duV11C.9lu4a..f+96O5e+6estbe228cHlXhAyYNyoFee+82eL9wOd..rm8rGjc1Ya5ar1gLGYbxXy1D.y3DY5kTRIgALfAfBJn.DXfAh25sdK7du26gm3IdBg.4TVFjFJkkBYbwEGBMzPEl+S8TOEhKt3D9ahSbhp84lyblClwLlAJu7xgSN4DhIlXvbm6bwbm6bw.G3.gat4FjKWNRHgDp0u6CbfCft0stgKe4KCO8zS7xu7Ki29seazwN1QgkY4Ke4H4jS1f2tH6S8qe8qFCVUo+9e+uK75cu6cKpsk8rm8..EAUp4wGpxImbBsnEsPmqqXiMVsBVUo.BH.0B79l27l0uFLY0fYXUjoLaAgGd3XbiabXcqac.PwcV529seSu9rJISlLbnCcHgoUsjGrDLkaajIh+C.nhaBj2WawGiVKszRwYNyY..P+6e+04c6OyLyD4jSN5LqZiXDi.IlXh3AO3AH0TSEQDQDl71r8Fq4NdC.lwIR7rwMtQ..L9wOdr5UuZ3gGd..fEu3EiO6y9LLlwnnBTTVFjFRVkTVJj.Jpbjst0sB.EkBYLwDSM9YzrTHSJojzJ6RW4JWASXBSPsdjaMo7l0M1wNVrhUrBzfFz..nnhmF4HGI9O+m+C.TTFj741i.PcF32y9rOKbwEWfb4xQgEVHt+8ueMdN.iUAET.t6cuK.TbciMsoM0nVeMu4MWmWyfpCch4latVzD7PFOd1ac3V25VHu7xqF+S0gRFcQ0.yl+7muvIWNxQNhAem+U1seqT3gGtA84M0Lkaa0DSwu+NjBYh.910+ZLZ8AW0hzLxImbfb4xA.PG5PGzqOittQFMrgMD8nG8...+xu7KFeCzAiXkwo5a1l.XFmHw0rl0rvF1vFDBVUoQO5QiW8UeUgoW6ZWqn2VLjRgrtdNBmvDl.RLwDENmKveUFjJGt5TVFjDUWb2c2ge94mvz23F2PT9dTsONI3fCVT9NTkpaSkUVYh92GItXFV0gV25Vqy2+jm7jnScpS585qIMoIHgDR.yd1yF.JNY5.Fv.z6wC07yOegW2fFzfZ8.98su8oywIwN24Nim8YeV8tcqOL1ssZho92eGJsX1.ULMK5XzppWrTccmTUdWWqqaDQqacqwd26dw0u90M9FnCFwJiS0mrMAvLNQhK8oLHU9b6I1kAIfoqTH0mxfTYkXcyadS9b6Q5kG4QdDgqwrnhJRT9N9y+7OEdcfAFnn7cnJSQmKJY8fArZDJojRL3OyTm5Tw5V25v0u90we9m+IV6ZWKd629s0qO6ctycDdstNg1LlwLvINwIp022c2cGkVZo05fDc8kwrsUeTe98mLeTs7KUlo0Zix6naYkUFt8sucsNd9p7YkVlLYhVYKYOyZoi2.vz14avNdCRSVKkAIfosTHYYPRhg6cu6I7ZwJ6mpVoC752HCECXUG17l2bsNng6pqtJLtQYH7zSOwhW7hwq8ZuF..V3BWHF0nFEZTiZTc9YUs7Fz0CPdXgElNCXshJp.O3AOvjGvpwrsUSDie+cXbkEqH6pt6CPmSwrmcU.EWXkR4jSNHxHirFWN4xkqVoB8Ue0WgIMoIUiKqxro4omdxfUMPLiSLiSzeQYYPpLqR23F2.soMsQT9tLmkBIKCRxPIWtbgwPaWc0UQaezV1xVJ7ZVkTjghArpCuzK8RPpTol706HFwHvpV0pPFYjAJrvBwhW7h0qgmFU6jYt8suMtyctiZmbRocricfJpnBsluu95qZOCrhg561VMQr982t2MVOPQGAvE2A5zNA7rYVjlQPAEDbyM2PkUVI18t2MhO93qwkKszRC4me9vc2cGUTQEXiabiH5niVqx8NiLxPnWnstxdBoMlwIlwIRclixfDv7VJjrLHIMUWU3zgNzgDVll1zlZzcNc0z0eBnd.qW7hWDxjISqmubhpMrSWxBvYmcVsf39jO4Sv0t10.ftOYSKZQKTafTt1FZOb1YmgGd3gV+YNTe21HSjBRUQODrSNCz9MAzvG0h0TbwEWDBN329seCewW7EZsLm6bmCKe4KG.J5jdhLxHQYkUFF9vGNVzhVD1yd1CNvAN.93O9iwnF0nDFJkdzG0xscYuxb0wa.vLNQVGLGkAI.KERxxJojRBokVZ056qrxZ.P8t+MQ0JoKqrxpFWF+7yOgiyt6cuqZeu0Dw7lHQ1dX.qVH8pW8BO+y+7..n7xKGyadyC.5NnNmc1Yz111VgoO5QOp31HqmpOaajIPwGF3ZaPwqayhAZbesrsG.7Vu0aI75ErfEfwN1whsrksfcsqcg4O+4igMrggacqaA.fniNZLxQNR.nnCyYaaaaXpScpX7ie7HwDSTn5.7zSO04PbBU+oZ4xxLNQ1yLWkAI.KERxxp7xKGCdvCVXbQWUey27MXKaYK.Pw+WotFur0kPBIDgW+G+weTqKmp836KZQKBm+7mWqkoxJqDyctyEAGbv0Z1ZIGOrjfsfV5RWJ16d2KjKWNRJojvLm4LqyRwHpnhBm7jmD..ezG8QXzidzvWe80bzbMH0msM5+6+1O8a4BLdfPFmhWW1YAt7GBTcU.Mah.McLhW6y.z8t2cDczQK7LD9K+xuTiCIMMqYMCCYHCAd5om3Mey2D+q+0+pFWeRjHAyadyCMoIMQTa2NpXFmH6El6xfDfkBIY8phJp.CdvCFwDSLXXCaXHv.CD6cu6EqacqS33fANvAh10t1UuV+coKcQ30ojRJXkqbknacqa3RW5RH6ryFu+6+9.PQuT+RW5Rw0u90wUu5UQW6ZWwzl1zPTQEEb1YmwINwIv5W+5wktzk.fhfWMlQaBx9AifvBp8su8BCkDxkKGyctyUnWPs1L24NW3s2dC.EOGqyYNyQzam0G0msMpdph7.9y+APUUB3+yCz522R2hTypV0pPrwFas99MpQMBe7G+wBk69TlxTv1291Qu6cuQHgDBb2c2QqZUqvK7Bu.RM0TwfFzfLWMcGJLiSj8DyQYPBvRgjr9MhQLBz291WHWtbjd5oiW60dMz291WrhUrB7fG7...zm9zG7Ye1mUu+N5Uu5EhJpn.fhfLm1zlF5ZW6JdkW4Uvl1zlDVNIRjfcsqcIzoLVTQEg4Lm4f90u9gXhIFLyYNSgfUe4W9kEtdWhX.qVXKXAKPniEZm6bm3zm9z5b4CMzPUKH00u90iMu4MKpsw5KCcaiTwykes+Wyey+Z4jWJvElIPkkB3yiAz9Dsbs4ZQCZPCvpV0pvxV1xPe5SePHgDBbxImPSaZSQ7wGORKszzpCV5wdrGCqYMqA+3O9iHyLyD6YO6Ae7G+wpEnCYXrV53M.p4LNQjoj4nLHAXoPRV+jJUJRKszvG7Ae.7wG0Gw.BMzPw69tuKRO8zq0QzAU67KaXCaXs98jZpoh92+9q070b739Idhm.YjQFX3Ce30324i+3ON9hu3Kv1291q2sE.HLlbq4qIaSLkWVXAFXfXlyblXtyctn5pqFG6XGqN+LSaZSCacqaEYmc1Ptb4XzidzH0TSEIlXh0ZoRdwKdw57BVM0pOaajAn5JAtvr.jkOfmgBzouBvYq2RmIt3hCwEWb.PwynJy3t4URIkDFv.FPMdAE.hSGuwK7BuPMtbJy3Tt4lqPFmF23FWstdKpnhrJezGHqahcYPBvRgjrM3hKtfYMqYgoN0ohie7ii6cu6gN24NqVundsoW8pWn3hKFUTQEve+8uVWtfBJH7se62hhJpHbtycNTVYkg1111hPCMTsVVe80WgNhwbxIGjUVYAu81aDd3gqy90.8ss..rjkrD7Nuy6.2c2csBTmr8vqXTGV3BWXcdBi90u9gt28taTeOSe5SGaXCaPu6UNcyM2PJojBd0W8UEBBL0TSE6e+6GcoKcAcpScRnWTMmbxAG7fGDG7fGT3y6jSNY1NQngtsoJy0u+1rJHcEkArEbrVs9hAqZ9oLiS6XG6P3FGnj4ti2.PQFmT1obsnEsHzyd1S05T4.TbQ6KbgKDKaYKCkTRI7B3I81HFwHPAET.16d2KRO8zQ5omtVKiwVFj.+UoPdricLgRgTofCNXg.VUVJjCcnCE4jSNBkBYMgkBIIV7vCOPzQGsA+4Lj.970WeQW6ZW06ku4Mu4pMtsaJaK0UPsjsCdUiZvEWbAUVYk.PQGGTc4BW3BFc.Sd4kWX4Ke4X3Ce3pMecURdgGd3329seCKaYKCye9yGkWd4nzRKUqfS0jSN4DlxTlhYqCevP21rD+9ayppJs3i0pjsEqkNdC.lwIRbIUpTrksrErzktTrjkrD05buBMzPwq7JuBV7hWLbwEWp0OuR0UoGlZpohwMtwo0yLasUJjSdxSFomd5n3hKVs2+we7GGSe5SWqyWxxfjHxQGCXUCuxq7JXyadyn5pqVuV9l0rZNPAe7wGb6aea89NAMrgMLb5SeZrzktTTYkUhV1xVVmWznKt3BRHgDv.Fv.vRW5Rw2+8eOxM2b0Z4b1YmQG6XGQbwEGF4HGIZcqacstNaTiZDJnfBfWd4EbyM2L6aalpe+cHXELVqR1NLGYbRey1D.y3DI9LGkAIf3WJjrLHIhbzw.V0vl1zlTqGMq95F23Fn3hKVsw0v5xhVzhvBVvBv8u+8gToR06wOvHhHBgNdobxIGbqacKb6aea3latA+7yOzt10N3kWdo2s6BKrP3qu9VqYyPL21LU+96PvJYrVkrMXtx3j9lsI.lwIx7vbTFj.haoPxxfjHxQFCXUj3t6tWuFqHcwEWLpKpxPeV.zjat4FBHf.z4xXo11HUXEMVqR1Nr153M.XFmHhHSMUSJf9l7Chrlw.VIxVi+CfkALYTrF63M.XFmHhHSgd0qdgu3K9BTd4kim4YdFKcygHiFCXkHaMLXUhHhHpV3s2dq0iRAQ1xLtQFdhHhHhrBvxfjHhrOwLrRDQDQ17XYPR5CmbxI0FIBjKWds1YyQj0JkCEcJYueS5X.qDQjcJlwIxQBKCRRe3latgJpnBgou28tGZTiZjErEQjg6d26dpMcsMTTZufArRDQ1oXFmHUwLKQ1CL1LKIUpTTXgEJLcd4kGCXkr4jWd4o1zpNbuYOhArRDQ1oXFmHUwLKQ1CL1LK4me9oV.qYmc1ncsqclj1FQlKYmc1pMse94mEpkXdXjc5RZbWsppRia0QjiHsNtgktokPUUUkktIPjAyP1uUy6.ul2gdhrEXrYVJjPBQsoO8oOsZAvRj0tBKrPb5SeZ0lml6Wauw3BX0EOTe5xuoQs5HxgjlG2n4wUjnvUWUu.SJqrxrPsDhp+zb+VM2uVUZdG307NzSjs.iMyRAFXfvau8VXZ4xkicu6cyaZIYSnpppB6d26VsRi2au8FAFXfVvVk3y3BX0ifUe56cRiZ0QjCIMOtQyiqHQgpWvB.P94muEpkPT8ml62p490phYVhr0YJxrjyN6L5PG5fZy6xW9xLnUxpmxfUu7kurZyuCcnCvYmsuGoRMtsNehR8oK3qMpUGQNjz73FMOthDEZdW4O24NmEpkPT8ml62pqrMwLKQ1xLkYVJrvBCADP.pMuLxHCrsssMdSbHqREVXgXaaaaHiLxPs4GP.AfvBKLKTqx7w3BXsw8W8oyeO.2+RF0pjHGJ2+RJNtQUZdbkA89lL..PAIjDQAQEIJBNX0yj8INwIPokVpEp0PjgqzRKEm3DmPs4o490phYVhrUYpyrjSN4DhN5n054e8xW9xXMqYMHkTRAm8rmEEWbwZ0qDSj4fb4xQwEWLN6YOKRIkTvZVyZzZ+eoRkhniNZGhgsNiqWB1udCHow.keaESWsbfrmLPW9V.mXWkOQ5jxiWpVkSFJowJNthDcAGbvvCO7.xjIC..UTQEH8zSGCYHCwB2xHR+jd5oqVu9qGd3QcVdjgEVX3JW4J3V25VByKiLx.EWbw3EewWDOxi7HhV6kn5iBKrvZLXUiMyRRjHAOyy7L3m+4eVsaVob4xwIO4IwIOIeL2HqWRkJEOyy7LPhDIV5lhYgwkgUmbAn4yP84Ux+EH6Io9EgSDotpkq33jR9upO+lOCdydLSb0UWQDQDgZyKqrxB6ae6yB0hHR+su8sOjUVYo17hHhHpywUUlYIxZm4LyRMrgMD8su8UqxClHqYADP.nu8sungMrgV5lhYiwONrFxn.t0WBTxe7WyKuT.dvUAhXM.dY+WW0DYPt+kTjYUMCV0mtn33IxrI7vCGW4JWAEUTQBy6PG5PnnhJBwFar18CD2jsmRKsTjd5oqUvp95quH7vCWuVGLyRjsLSclkjHQBdtm64vktzkvoO8oYOFOY0xau8FcnCc.gEVXNDkArpbp5pqtZidsTwc.NdOAjoQuroSt.zjmGv+ABzfGEPRP.NaXCvyDYyqpJULz0buSpnCVJ+8ncEH3QS.h7..tadF3mayKuR..j1B4yKaokVJ99u+6EJMXkb2c2Qm6bmQ3gGNZRSZB71aus66E9HqOUUUUnrxJC4me93bm6b3Dm3DpUFv.JJE3XhIFC9FrTd4kiCcnCoV4ASj0r.BH.DczQKZkAYUUUExKu7vMtwMvctycPokVJprxJgo3RkIxP3jSNA2byMHUpT3me9gPBIDDXfAZSbcH8eNoA.fK7kS0jsNMMArB.T14.NY7ZGzJQjt4QS.dzcA3s9kcDSAFvp5tyctCNvANfVAsRj0NO7vCzyd1SCdrnTopqtZlYIxpmiblkHxViXDvpwWRvJ4c3JxPTl+c0KOXhnZmOcAnietYKypTMyO+7CwDSL3W9keQsxClHqY95qu3oe5m1nJccmbxIzpV0JzxV1RlYIxpfsblkHhDGlt.VATbQ2cIcfarEfbV1e06ASDoNIMVQGrTHiBf2sXqBRkJE8su8Em6bmCYmc1LaqjUKO7vCDQDQfvCObS1Ew6ryNifCNXcNr3PDQDYIXZCXEPwEe2zWGHjQBbm8Ab6z.J4X.xxEPtL.v6VK4nwI.W7.vifA7IJEiyp90a1a.aExYmcFQDQDnMsoMH2byE4lat3N24NnrxJCO7gOzR27HGTt5pqvau8F94meH3fCFgDRH0YuALQDQj8BSe.qJ4jK.MtuJ9iHhrg3pqthl0rlgl0rlYoaJDQDQD4PiOP.DQDQDQDQjUIwKCqDQV8T1StQDQDQDQViXFVIhHhHhHhHqRltwgUhHhHhHhHhLgXFVIhHhHhHhHqRLfUhHhHhHhHxpDCXkHhHhHhHhrJw.VIhHhHhHhHqRLfUhHhHhHhHxpDCXkHhHhHhHhrJw.VIhHhHhHhHqRLfUhHhHhHhHxpDCXkHhHhHhHhrJw.VIhHhHhHhHqRLfUhHhHhHhHxpDCXkHhHhHhHhrJw.VIhHhHhHhHqRLfUhHhHhHhHxpz+CUvjr14HKRtI.....IUjSD4pPfIH" ],
					"embed" : 1,
					"forceaspect" : 1,
					"id" : "obj-9",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 55.0, 338.010394007885225, 417.0, 304.321276595744678 ],
					"pic" : "engines.png"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-6",
					"linecount" : 13,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.5, 142.6875, 605.0, 173.0 ],
					"text" : "The Cluster-Engine, designed by Örjan Sandred originally for the PWGL environment, \nis a system for solving musical constraint satisfaction problems. The solution to a musical constraint satisfaction problem is a score that satisfies a set of constraints \nor rules defined by the user/composer. \nThe name 'Cluster-Engine' refers to the idea of using a cluster of search engines \nthat collaboratively solve a problem, similar to the idea of a cluster of computers. \n\nThe Cluster-Engine breaks down the musical score into several sequences of variables. \nEach sequence refers to the succession of elements for a specific parameter of a voice \nin the score, for example a sequence can refer to the pitches in one voice. \nA single voice is represented by two sequences: one for pitches and one for durations (including rests). One additional sequence represents the metric structure in the score,\nthat is shared by all voices.",
					"textcolor" : [ 0.200000002980232, 0.200000002980232, 0.200000002980232, 1.0 ],
					"varname" : "autohelp_top_digest"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
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
						"boxes" : [ 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-70",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 100.0, 22.0, 22.0 ],
									"text" : "t b"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 8.954462658262823,
									"hidden" : 1,
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 132.06128602756894, 281.0, 19.0 ],
									"text" : "load_file_in_MOZpackage \"/extras/MOZ'Lib/PWforMax Intro.maxpat\""
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-49",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 49.999984208217711, 40.000006038515039, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-70", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 966.0, 102.105499245116448, 19.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.301961, 0.301961, 0.301961, 0.0 ],
					"bgcolor2" : [ 0.301961, 0.301961, 0.301961, 0.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.2, 0.2, 0.2, 0.0 ],
					"bgfillcolor_color1" : [ 0.301961, 0.301961, 0.301961, 0.0 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "color",
					"fontface" : 3,
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"gradient" : 1,
					"id" : "obj-46",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 966.0, 73.105499245116448, 101.0, 21.0 ],
					"text" : "PWforMax Intro",
					"textcolor" : [ 0.270588248968124, 0.329411774873734, 0.996078431606293, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 8.744792179341689,
					"hidden" : 1,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 502.5, 70.319802882845181, 42.0, 18.0 ],
					"text" : "onecopy"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.725190243023524,
					"hidden" : 1,
					"id" : "obj-99",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 428.0, 41.6875, 158.0, 18.0 ],
					"text" : "moz.resolution-helpfiles-moz 1097 755"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.725190243023535,
					"hidden" : 1,
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 427.0, 65.473608736776669, 55.358156028368796, 18.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontname" : "Menlo Regular",
					"fontsize" : 12.951723911993453,
					"id" : "obj-15",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 642.666606903076172, 27.0, 406.0, 67.0 ],
					"text" : "This library is recommanded for intermediate to advanced users of bach and MOZ/PWforMax, having ideally but not necessarily some notions of Lisp.\nIf you want to know more first, see this:",
					"textcolor" : [ 0.996078431372549, 0.0, 0.0, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"midpoints" : [ 820.166606903076172, 205.286906250924716, 827.666606903076172, 205.286906250924716 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"hidden" : 1,
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"hidden" : 1,
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "moz.resolution-helpfiles-moz.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.round.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.times.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.+.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "load_file_in_MOZpackage.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.engine.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine",
				"patcherrelativepath" : "..",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.eval-box.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_code_generators_legacy",
				"patcherrelativepath" : "../../pw4m_lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "make_path_once.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_code_generators_legacy",
				"patcherrelativepath" : "../../pw4m_lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.quote.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_code_generators_legacy",
				"patcherrelativepath" : "../../pw4m_lisp_code_generators_legacy",
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
				"name" : "bach.interp.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.lookup.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
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
				"name" : "lisp.quickeval.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.cluster2score.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine/utilities",
				"patcherrelativepath" : "../utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.repeat.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.replace.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "thru.maxpat",
				"bootpath" : "C74:/patchers/m4l/Pluggo for Live resources/patches",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.expr.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.belong.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.r-metric-hierarchy.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine",
				"patcherrelativepath" : "..",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.textfield.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine/utilities",
				"patcherrelativepath" : "../utilities",
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
				"name" : "lisp.docstring.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../pw4m_lisp_scripting_boxes",
				"type" : "JSON",
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
				"name" : "bpatcher-resize.js",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../utilities",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "bpatcher-resize-gizmo.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../utilities",
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
				"name" : "cluster.r-rhythm-hierarchy.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine",
				"patcherrelativepath" : "..",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.r-index-one-engine.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine",
				"patcherrelativepath" : "..",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.iter-append-umenu.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine/utilities",
				"patcherrelativepath" : "../utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.block&hide-if-null.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine/utilities",
				"patcherrelativepath" : "../utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.typeroute-sym_or_nums.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine/utilities",
				"patcherrelativepath" : "../utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.get_doc.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine/utilities",
				"patcherrelativepath" : "../utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.rule_definition2param_umenu.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine/utilities",
				"patcherrelativepath" : "../utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.r-one-engine.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine",
				"patcherrelativepath" : "..",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.r-chords.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine",
				"patcherrelativepath" : "..",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.r-pmc-one-engine.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine",
				"patcherrelativepath" : "..",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.backquote.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_code_generators_legacy",
				"patcherrelativepath" : "../../pw4m_lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pmc.jbs_rules.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_pmc",
				"patcherrelativepath" : "../../pw4m_pmc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jbs_block_num.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_pmc",
				"patcherrelativepath" : "../../pw4m_pmc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jbs_block_null.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_pmc",
				"patcherrelativepath" : "../../pw4m_pmc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.sum.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.filter.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "rule_number_splitter.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_pmc",
				"patcherrelativepath" : "../../pw4m_pmc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.change.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.metric-domain.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine",
				"patcherrelativepath" : "..",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.ezmidiplay.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.gcd.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.approx.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.voice-domain.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine",
				"patcherrelativepath" : "..",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "key_trigger.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz_helpnum.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../utilities",
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
				"name" : "moz_two.png",
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
				"name" : "moz_four.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.r-mel-interval-one-voice.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine",
				"patcherrelativepath" : "..",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.r-meter-note.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine",
				"patcherrelativepath" : "..",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.r-pitch-pitch.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine",
				"patcherrelativepath" : "..",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster-search_structure2.jpg",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine/tutorials",
				"patcherrelativepath" : ".",
				"type" : "JPEG",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.r-note-meter.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine",
				"patcherrelativepath" : "..",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.r-canon.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine",
				"patcherrelativepath" : "..",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.lambda.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.pick.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.expr.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.portal.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.args.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.join.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.reg.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.write.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "shell.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.read.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.append.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.keys.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.eq.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.collect.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.wrap.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.iter.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.arithmser.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.nth.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.flat.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.print.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.mapelem.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.delace.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.subs.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.length.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.beatbox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.find.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.slice.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.rev.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.intersection.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.thin.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.group.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.value.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.is.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.neq.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.contains.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.trans.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.eval.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.score.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.playkeys.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.gt.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.ratnum.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.beatunbox.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "MOZ-numint",
				"default" : 				{
					"fontsize" : [ 16.95833875454338 ],
					"fontname" : [ "Menlo Regular" ],
					"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "MOZ-param",
				"default" : 				{
					"fontsize" : [ 16.0 ],
					"fontname" : [ "Menlo Regular" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "MOZ-title",
				"default" : 				{
					"fontsize" : [ 22.062094355029235 ],
					"fontname" : [ "Andale Mono" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "MOZ-umenu",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
						"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
						"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.5,
						"autogradient" : 0.0
					}
,
					"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"fontname" : [ "Menlo Regular" ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : [ 2 ]
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
					"fontsize" : [ 18.0 ],
					"fontname" : [ "Herculanum" ]
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
					"fontsize" : [ 13.0 ],
					"fontname" : [ "Arial" ],
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
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
						"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
					"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
