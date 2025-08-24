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
		"rect" : [ 256.0, -838.0, 987.0, 640.0 ],
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
					"hidden" : 1,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 17.0, 85.0, 54.0, 22.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-33",
					"linecount" : 14,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 529.0, 164.0, 399.0, 186.0 ],
					"text" : "As a side effect, dynamic time warping can become \na powerful interpolator for a variety of musical \napplications (see examples in following patches). \n\nJust like the 'symbolic interpolator' of JVcomponents \n(see guest libraries), you cannot specify the amount \nof steps between A and B : the algorithm itself \ndetermines the shortest path from one to the other.\n\nIn that sense, and to complete the remark above, it can \nbe considered as a compromise between numeric and symbolic interpolations, an 'unsupervized' alternative to my own supervized interpolator for numeric profiles \n(see 'Metamorpher' in JVcomponents)."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 43.0, 286.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 43.0, 315.0, 82.0, 22.0 ],
					"text" : "prepend layer"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-28",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 223.0, 310.0, 220.0, 32.0 ],
					"text" : "<= actual distance\nin terms of dynamic time warping"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 17.0, 56.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
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
						"rect" : [ -8.0, -713.0, 640.0, 480.0 ],
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
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 246.0, 200.0, 80.0, 22.0 ],
									"text" : "distance path"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 246.0, 228.0, 77.0, 22.0 ],
									"text" : "lisp.expr list l"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-28",
									"linecount" : 14,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 339.0, 22.0, 290.0, 186.0 ],
									"text" : "The Lisp interface of the function jv-components::fastdtw is pretty straightforward.\n\nYou just need to consider that the function returns multiple values, therefore it is mandatory to use 'multiple-value-bind' to retrieve them.\n\nAfter the Lisp part is evaluated, the result needs to be treated a little further in order to reconstitute the interpolation. This is also quite straightforward with bach objects."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-134",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 335.0, 286.0, 126.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80200
									}
,
									"text" : "bach.pick (1 1) @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 23.0, 312.0, 122.0, 22.0 ],
									"text" : "bach.round 0.000001"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-79",
									"maxclass" : "newobj",
									"numinlets" : 3,
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
										"rect" : [ 34.0, 79.0, 455.0, 742.0 ],
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
													"id" : "obj-46",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 324.166670739650726, 207.78466796875, 55.0, 22.0 ],
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
													"id" : "obj-45",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 183.583335369825363, 207.78466796875, 55.0, 22.0 ],
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
													"id" : "obj-42",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 43.000019096923779, 132.999999968749989, 29.5, 22.0 ],
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-40",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.000019096923779, 545.097667658219279, 55.0, 22.0 ],
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
													"id" : "obj-37",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.000019096923779, 325.78466796875, 55.0, 22.0 ],
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
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 43.000019096923779, 101.999999968749989, 79.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80105
													}
,
													"text" : "bach.pick 1 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.000019096923779, 73.999999968749989, 64.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80105
													}
,
													"text" : "bach.flat 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-62",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 43.000019096923779, 496.784675180912018, 161.450000107288361, 22.0 ],
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-50",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "bang" ],
													"patching_rect" : [ 43.000019096923779, 169.918002247810364, 300.166670739650726, 22.0 ],
													"text" : "t b b b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-43",
													"maxclass" : "newobj",
													"numinlets" : 4,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.000019096923779, 575.051353859901383, 230.5, 22.0 ],
													"text" : "bach.interp"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-39",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
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
														"boxes" : [ 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-1",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 79.0, 289.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-35",
																	"maxclass" : "newobj",
																	"numinlets" : 3,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 215.0, 133.0, 22.0 ],
																	"saved_object_attributes" : 																	{
																		"versionnumber" : 80105
																	}
,
																	"text" : "bach.collect @inwrap 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-34",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "" ],
																	"patching_rect" : [ 50.0, 100.0, 45.5, 22.0 ],
																	"text" : "t b l"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-68",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 76.5, 183.489489489489472, 55.0, 22.0 ],
																	"saved_object_attributes" : 																	{
																		"versionnumber" : 80105
																	}
,
																	"text" : "bach.rev"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-66",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 76.5, 155.744744744744736, 57.0, 22.0 ],
																	"saved_object_attributes" : 																	{
																		"versionnumber" : 80105
																	}
,
																	"text" : "bach.join"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-65",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 3,
																	"outlettype" : [ "", "", "" ],
																	"patching_rect" : [ 76.5, 128.0, 85.0, 22.0 ],
																	"saved_object_attributes" : 																	{
																		"versionnumber" : 80105
																	}
,
																	"text" : "bach.iter"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-37",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-35", 0 ],
																	"source" : [ "obj-34", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-65", 0 ],
																	"source" : [ "obj-34", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"source" : [ "obj-35", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-34", 0 ],
																	"source" : [ "obj-37", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-35", 2 ],
																	"source" : [ "obj-65", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-66", 1 ],
																	"source" : [ "obj-65", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-66", 0 ],
																	"source" : [ "obj-65", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-68", 0 ],
																	"source" : [ "obj-66", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-35", 1 ],
																	"source" : [ "obj-68", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 324.166670739650726, 261.518001914024353, 51.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p add_x"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
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
														"boxes" : [ 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-1",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 79.0, 289.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-35",
																	"maxclass" : "newobj",
																	"numinlets" : 3,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 215.0, 133.0, 22.0 ],
																	"saved_object_attributes" : 																	{
																		"versionnumber" : 80105
																	}
,
																	"text" : "bach.collect @inwrap 1"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-34",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "" ],
																	"patching_rect" : [ 50.0, 100.0, 45.5, 22.0 ],
																	"text" : "t b l"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-68",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 76.5, 183.489489489489472, 55.0, 22.0 ],
																	"saved_object_attributes" : 																	{
																		"versionnumber" : 80105
																	}
,
																	"text" : "bach.rev"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-66",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 76.5, 155.744744744744736, 57.0, 22.0 ],
																	"saved_object_attributes" : 																	{
																		"versionnumber" : 80105
																	}
,
																	"text" : "bach.join"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-65",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 3,
																	"outlettype" : [ "", "", "" ],
																	"patching_rect" : [ 76.5, 128.0, 85.0, 22.0 ],
																	"saved_object_attributes" : 																	{
																		"versionnumber" : 80105
																	}
,
																	"text" : "bach.iter"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-37",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-35", 0 ],
																	"source" : [ "obj-34", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-65", 0 ],
																	"source" : [ "obj-34", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-1", 0 ],
																	"source" : [ "obj-35", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-34", 0 ],
																	"source" : [ "obj-37", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-35", 2 ],
																	"source" : [ "obj-65", 2 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-66", 1 ],
																	"source" : [ "obj-65", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-66", 0 ],
																	"source" : [ "obj-65", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-68", 0 ],
																	"source" : [ "obj-66", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-35", 1 ],
																	"source" : [ "obj-68", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 183.583335369825363, 261.518001914024353, 51.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p add_x"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-29",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.000019096923779, 356.518001914024353, 55.0, 22.0 ],
													"text" : "bach.+ 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 254.500019096923779, 468.184669137001038, 88.266677975654602, 22.0 ],
													"text" : "bach.lookup"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.000019096923779, 468.184669137001038, 109.0, 22.0 ],
													"text" : "bach.lookup"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 43.000019096923779, 434.184669852256775, 230.5, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80105
													}
,
													"text" : "bach.pick 1 2 @unwrap 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.000019096923779, 391.518001914024353, 65.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80105
													}
,
													"text" : "bach.trans"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-73",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 219.58333295583725, 131.999999968749989, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-74",
													"index" : 3,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 360.166676955837261, 131.999999968749989, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-75",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 43.000019096923779, 34.215331968749979, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-76",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 43.000019096923779, 674.138305968750046, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-20", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 0 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 3 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 1 ],
													"midpoints" : [ 112.500019096923779, 318.28466796875, 88.500019096923779, 318.28466796875 ],
													"source" : [ "obj-25", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 1 ],
													"midpoints" : [ 193.083335369825363, 300.018001914024353, 142.500019096923779, 300.018001914024353 ],
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 1 ],
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 0 ],
													"source" : [ "obj-40", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 1 ],
													"midpoints" : [ 63.000019096923779, 165.0, 29.0, 165.0, 29.0, 531.0, 88.500019096923779, 531.0 ],
													"source" : [ "obj-42", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-50", 0 ],
													"source" : [ "obj-42", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-76", 0 ],
													"source" : [ "obj-43", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"source" : [ "obj-45", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-46", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"source" : [ "obj-50", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-45", 0 ],
													"source" : [ "obj-50", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-46", 0 ],
													"source" : [ "obj-50", 2 ]
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
													"destination" : [ "obj-43", 2 ],
													"source" : [ "obj-62", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-45", 1 ],
													"source" : [ "obj-73", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-46", 1 ],
													"source" : [ "obj-74", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"source" : [ "obj-75", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 23.0, 286.0, 255.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p reconstitute_path"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 190.0, 100.0, 88.5, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 24.0, 100.0, 99.500007033348083, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 23.0, 217.0, 205.0, 22.0 ],
									"text" : "lisp.multiple-value-bind distance path"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 190.0, 138.0, 70.0, 22.0 ],
									"text" : "lisp.quote 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 24.0, 138.0, 70.0, 22.0 ],
									"text" : "lisp.quote 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 24.0, 173.0, 185.0, 35.0 ],
									"text" : "lisp.expr jv-components::fastdtw l1 l2 @triggers 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 23.0, 245.0, 80.0, 22.0 ],
									"text" : "lisp.quickeval"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-20",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 24.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-21",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 189.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-22",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 335.0, 394.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-25",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 23.0, 394.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-134", 0 ],
									"midpoints" : [ 32.5, 281.157656481037122, 344.5, 281.157656481037122 ],
									"order" : 0,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"order" : 1,
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-134", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 1 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 1 ],
									"midpoints" : [ 114.000007033348083, 153.374332054725642, 150.5, 153.374332054725642 ],
									"source" : [ "obj-44", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 2 ],
									"source" : [ "obj-47", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 1 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-7", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 17.0, 217.0, 200.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p Lisp-interface_open-to-learn-more"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-131",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 166.0, 315.0, 50.0, 22.0 ],
					"text" : "5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 17.0, 252.0, 101.0, 22.0 ],
					"text" : "prepend xy_pairs"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 17.0, 144.0, 199.500000110908502, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 197.0, 175.0, 75.0, 22.0 ],
					"text" : "2 3 4 3 2 3 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 17.0, 175.0, 125.0, 22.0 ],
					"text" : "1 2 3 4 5 4 3 2 3 4 3 2"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-13",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "moz.graph_view.maxpat",
					"numinlets" : 1,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 17.0, 352.0, 683.0, 231.0 ],
					"varname" : "bp1465791080942",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bwcompatibility" : 80105,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-15",
					"maxclass" : "bach.slot",
					"numinlets" : 1,
					"numoutlets" : 3,
					"out" : "nnn",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 392.0, 248.0, 115.0, 55.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"versionnumber" : 80900,
					"whole_uislot_data_0000000000" : [ "slot", "[", "slotinfo", "[", 1, "[", "name", "velocity envelope", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1073741824, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074790400, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075576832, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 2, "[", "name", "slot function", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 3, "[", "name", "slot intlist", "]", "[", "type", "intlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 4, "[", "name", "slot floatlist", "]", "[", "type", "floatlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 5, "[", "name", "slot int", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 6, "[", "name", "slot float", "]", "[", "type", "float", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 7, "[", "name", "slot text", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 8, "[", "name", "slot filelist", "]", "[", "type", "filelist", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 9, "[", "name", "slot spat", "]", "[", "type", "spat", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076101120, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 10, "[", "name", "slot llll", "]", "[", "type", "llll", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 11, "[", "name", "slot 11", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 12, "[", "name", "slot 12", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 13, "[", "name", "slot 13", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 14, "[", "name", "slot 14", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 15, "[", "name", "slot 15", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 16, "[", "name", "slot 16", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 17, "[", "name", "slot 17", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 18, "[", "name", "slot 18", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 19, "[", "name", "slot 19", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 20, "[", "name", "dynamics", "]", "[", "type", "dynamics", "]", "[", "key", "d", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 21, "[", "name", "lyrics", "]", "[", "type", "text", "]", "[", "key", "l", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 22, "[", "name", "articulations", "]", "[", "type", "articulations", "]", "[", "key", "a", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 23, "[", "name", "notehead", "]", "[", "type", "notehead", "]", "[", "key", "h", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 24, "[", "name", "annotation", "]", "[", "type", "text", "]", "[", "key", "t", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 25, "[", "name", "slot 25", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 26, "[", "name", "slot 26", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 27, "[", "name", "slot 27", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 28, "[", "name", "slot 28", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 29, "[", "name", "slot 29", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 30, "[", "name", "slot 30", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "]", "[", "slots", "[", 1, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1073741824, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1073741824, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074266112, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074266112, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074790400, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074790400, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074266112, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075052544, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1073741824, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075314688, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074266112, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075576832, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074790400, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "]" ],
					"whole_uislot_data_count" : [ 1 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 392.0, 217.0, 89.0, 22.0 ],
					"text" : "moz.ezbpf2slot"
				}

			}
, 			{
				"box" : 				{
					"bwcompatibility" : 80105,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-17",
					"maxclass" : "bach.slot",
					"numinlets" : 1,
					"numoutlets" : 3,
					"out" : "nnn",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 262.0, 248.0, 115.0, 55.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"versionnumber" : 80900,
					"whole_uislot_data_0000000000" : [ "slot", "[", "slotinfo", "[", 1, "[", "name", "velocity envelope", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075052544, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076363264, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 2, "[", "name", "slot function", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 3, "[", "name", "slot intlist", "]", "[", "type", "intlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 4, "[", "name", "slot floatlist", "]", "[", "type", "floatlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 5, "[", "name", "slot int", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 6, "[", "name", "slot float", "]", "[", "type", "float", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 7, "[", "name", "slot text", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 8, "[", "name", "slot filelist", "]", "[", "type", "filelist", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 9, "[", "name", "slot spat", "]", "[", "type", "spat", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076101120, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 10, "[", "name", "slot llll", "]", "[", "type", "llll", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 11, "[", "name", "slot 11", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 12, "[", "name", "slot 12", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 13, "[", "name", "slot 13", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 14, "[", "name", "slot 14", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 15, "[", "name", "slot 15", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 16, "[", "name", "slot 16", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 17, "[", "name", "slot 17", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 18, "[", "name", "slot 18", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 19, "[", "name", "slot 19", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 20, "[", "name", "dynamics", "]", "[", "type", "dynamics", "]", "[", "key", "d", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 21, "[", "name", "lyrics", "]", "[", "type", "text", "]", "[", "key", "l", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 22, "[", "name", "articulations", "]", "[", "type", "articulations", "]", "[", "key", "a", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 23, "[", "name", "notehead", "]", "[", "type", "notehead", "]", "[", "key", "h", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 24, "[", "name", "annotation", "]", "[", "type", "text", "]", "[", "key", "t", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 25, "[", "name", "slot 25", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 26, "[", "name", "slot 26", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 27, "[", "name", "slot 27", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 28, "[", "name", "slot 28", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 29, "[", "name", "slot 29", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 30, "[", "name", "slot 30", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "]", "[", "slots", "[", 1, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1073741824, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1073741824, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074266112, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074266112, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074790400, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074790400, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075052544, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075052544, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075314688, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074790400, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075576832, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074266112, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075838976, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1073741824, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075970048, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074266112, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076101120, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074790400, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076232192, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074266112, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076363264, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1073741824, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "]" ],
					"whole_uislot_data_count" : [ 1 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 17.0, 112.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 262.0, 217.0, 89.0, 22.0 ],
					"text" : "moz.ezbpf2slot"
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
					"fontsize" : 13.0,
					"gradient" : 1,
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 841.0, 43.0, 36.0, 23.0 ],
					"text" : "here",
					"textcolor" : [ 0.082, 0.553, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-1",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 81.0, 80.0, 552.0, 58.0 ],
					"text" : "In a way, the algorithm can be compared to a hybrid between euclidian distance (for quantities) and Levenshtein distance (for symbols, cf. Morphologie library), in the sense that it tries to identify and match similarities at different scales of the objects it analyses."
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"data" : [ 16524, "png", "IBkSG0fBZn....PCIgDQRA..AvB...PlHX....PkMbvA....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wY6clGWTU89G+CWX.GQBQQDwP.QjLDv8kDEIkUIyzJ+lhglZYZK+BsxH2MWQsxLKMM2vcyEbITTwMbWAEDDP.QDjMgQFXVYl6u+fl4ECycYXSD8790K9Ctmy8bOybu2m4bdNOmOOFQSSSCBDHPnY.TM0c.BDHPvPgXvh.ABMafXvh.ABMafXvh.ABMafXvh.ABMafXvh.ABMafXvh.ABMafXvh.ABMafXvh.ABMafXvh.ABMafXvh.ABMafXvh.ABMafXvh.ABMafXvh.ABMafXvh.gFHtwMtAxImbZp6FuTiQD8vh.g5OxkKGCZPCB8pW8Babiarot67RKlzT2AHP3kAN4IOIRN4jgBEJfb4xgYlYVScW5kRHSIj.g5IJUpD6d26FsqcsCxkKGW+5WuotK8RKDCVDHTO4bm6bnzRKEt4lavYmcFG6XGqotK8RKjoDRfP8jctychgLjgfN0oNAiLxHryctSTRIkf1zl1zT20doCxHrHPndvMtwMPt4lKF+3GOBIjPvnG8ngIlXBt7kubScW6kRHFrHPndv1111Pu6cugCN3...DJTH5cu6MNwINQSbO6kSHFrHPnNRJojBt+8uOBMzP043AETPHiLx.EVXgMQ8rWdgXvh.g5HaaaaCuwa7FnacqaPtb43jm7jPrXwn28t2vbyMGwFarM0cwW5fXvh.g5.4jSN3V25VZGcUokVJ1vF1.xKu7.EEEdq25svIO4Iah6ku7AwfEAB0AhLxHQG6XGQe6aeAPUQ5tRkJAEUUuREXfAhG+3Gi7xKulxt4KcPLXQfPsjRJoDbtycNL9wOdsGqxJqDpUqFlZpo..vM2bCsoMsA+6+9uMUcyWJgXvh.gZI6ae6Cst0sFCaXCS6wnnnPaaaagPgB0drgLjgP7iUCLDCVDHTKPpTo33G+33C9fOP6z+..d8W+0whW7hg0Vas1i4u+9iBJn.jQFYzTzUeoDhAKBDpEb3CeXPQQg24cdGcNt.ABfCN3fNFwb1YmQG5PGHwjUCHDCVDHXfnVsZbfCb.LxQNRCVMFF9vGNt3EuHTqVcibu6UCHFrHPv.4XG6XnhJp.iYLiQuxTqVMTpTodG2O+7CkVZoHkTR44QW7kdHFrHPv.4m+4eFN5nin0st05U1MtwMvblybz631ZqsvQGcDae6a+4QW7kdHFrHPv.3F23FH0TSE1XiMLVdN4jCdvCd.ik0m9zGb7iebHWt7Fyt3qDPLXQffAv1111PqZUqPaaaaYrb4xkiVzhVvXYctycFUTQEHgDRnwrK9JADCVDHvCIlXhHszRC8rm8jUmsKWtbXrwFyXYlXhIPtb4Hpnhpwra9JADA7i.AdX6ae63Mey2DicrikUQ4yc2cGlat4LVlBEJf81aOhO93I58d8DxHrHPfCxN6rQBIj.BMzPw.G3.gqt5Ji0qu8suXricrLVlmd5IV9xWNnoowktzkZL6tuzCwfEABbv1291gCN3.5YO6YctMr0VagO93C7vCOH6sv5IDCVDHvBEVXg3RW5R5rImqODbvAijRJIHVr3Fj16UQHFrHPfE16d2KZSaZC71auA.ve+2+MxJqrXrt24N2A26d2iy1qe8qevTSMEm+7muAuu9pBDCVDHv.hEKFQGczXricrfhhBpUqFG9vGFO9wOlw5u6cuabjibDFKK1XiE6bm6DlYlYn28t2H5nitwrq+RMDCVDHv.G5PGBlZpoHv.CT6wTnPAqwZkDIRXMrFt5UuJtxUtB.pZZgokVZD8duNBwfEAB0.4xkiCe3Ci28ceWsgffToRgRkJQKaYKY7bTnPgVw6qlHQhDsF57vCOPqZUqH5jUcDhAKBDpAm7jmDxjICiZTiRmi6hKtvZjt2pV0Jzt10NFKSpToZE1OABDfANvAhXhIlF1N8qHPBbTBDpFpUqF6cu6E95qu5rImM2bywpW8p0QQQqNe8W+0vBKrfwx5RW5hNkEbvAiXhIFjc1YqMeFRvvfXvh.gpQbwEGJpnhvG8QejdkwVjrC.Xu81yZYe5m9o57+t5pqvJqrBm4LmAexm7I08N6qfPlRHABUicricfAMnAAas01Fr1jhhRGkHkhhBd6s23rm8rMXWiWUfXvh.g+iDSLQDe7wi.BH.8JSoRkn3hKlUkCUpTo0JUE0e+8GEVXgH8zSuN2eeUDhAKBD9OhLxHQwEWLRJojzqr6e+6iu8a+VTQEUnWYxkKGKdwKl0.GMmbxQuna2YmcFsu8smjrUqkPLXQf..xHiLPBIj.5RW5BiiTprxJCkTRILdtJTn.26d2CkUVYLV9RVxRvYNyYz63CaXCCW3BWn90weEChAKBDPU9txImbB1ZqsLFqUJTn.Farw53KJMnRkJ..FiCK0pUiRKsTFul94me3YO6YHwDSrd16e0AhAKBuxSgEVHt7kuLlvDl.LyLyXb0.qrxJg.ABfIln+BqWyr9LSkyTDxamc1AGbvARZ.qV.IrFH7JO6bm6D1XiMXPCZPnEsnELFhBt4laXJSYJPf.A5UlPgBwHFwHPG5PGzqLUpTAiM1XFieqJpnBTPAEfrxJKDVXgwXaSPWLhllltotSPfPSEhEKFe3G9g3K+xuDAETPM3suZ0pQbwEGbyM2zSsRyN6rwDm3DgDIRv5W+5Qu6cuavu9urAYJgDdkl8u+8CgBEBe802Fk1mhhBCdvClQoUtxJqDVZoknKcoK3XG6XMJW+W1fXvhvqrnIwPLlwLlljoioPgBnRkJ3u+9iae6ayXHSPPWHFrH7JKG+3GGpToR6lbVpToXUqZUH6ryVu5dsqcMbvCdPFamJpnBDarwxXlelKrzRKQ+5W+fO93CTpTIt4MuYs+CwqXPLXQ3URTqVM1291G72e+0tpfRkJEm+7mmw3s5BW3B3zm9zL1VO7gODqZUqBJTnPuxDIRDVyZVCiidxN6rCyctyE1au8vM2biLsPC.hAKBuRxxW9xQ94mOF23Fm1ioVsZnVsZFCAA4xkypRMTd4kiJqrRFCqgm9zmhniNZdy5yAETP3d26dD8dmGHFrZDnjRJgnnjufyAO3Ag6t6tNNCuxJqjUCOxkKmwXvBnJCVlXhIL5GLYxjwZ.mVcFv.F.L1XiwEu3EqkeRd0BhAqFXjKWNl5TmJ9fO3CPd4kWSc2g.CDe7wihJpHLjgLDcNtolZJ5Se5CrzRK06b5XG6H5RW5BisGEEEqh2mLYxfQFYDixmbIkTh1nbWnPgn28t2jz.FOPLX0.yO8S+Dnoowq8ZuFlxTlBuSEfvye1xV1BjISldgZPaZSavBVvBf0VasdmSngFJBIjPXr8Fv.F.V5RWJik0pV0JzidzCFGc1ku7kwpW8p09+AFXfHszRi08rHAhAqFT1912Nt5UuJhHhHvRW5Rw8t28vhVzhZp6VDpFolZpH4jSFCcnCkQCSrEdCBEJjUeXITnPXmc1wXYt3hKXtyctLdtO6YOSmePqu8sunksrkLtQoITEDCVMPbkqbErksrELqYMK3ryNC2c2c3me9gMu4MiCbfCzT28H7er8sucz0t1Ur0stU3t6t2ne8nnnX0Pmb4x0ljKzT2ALfAfScpS0n2uZtBwfUC.4kWdXQKZQXLiYLve+8W6wm9zmNr0VawpV0pvctycZB6gD.p59z0u90wDlvDfPgB0yQ3UTQErJndEVXgrFXmxkKuNu5du1q8Z57+AETPH6ryF4me90o16kcHFrpmHUpT78e+2CGbvAL0oNUcJq6cu6XaaaaHv.CDyctykrxgMwryctSzgNzALvANPFK+1291XAKXALV1JVwJXcpZqbkqDyXFyfwxDKVLiAhJ.P.AD.97O+y04Xt6t6vJqrhjrUYAhAq5IKcoKExkKGcnCc.6bm6TmxDHP.7zSOQ3gGNryN6vO9i+XsNZnIzvPIkTBN6YOq13tJmbxQOg5SrXwPlLYLd94latPpToL1tQEUT31291LNJqyblyfUspUwXaZmc1gt0sto2wG7fGLwOVr.wfU8fsu8siqbkqfHhHB3ryNi+8e+WFMHIPf.rzktTTXgEhHhHhlfdJg8u+8iV0pVA+7yOjWd4g4N24hhKtXcpiLYxX0o6pTohQeQs0stU3jSNgN24Niye9yqW4kTRI3YO6Y0p9ZfAFHxO+7QVYkUs57dU.hAq5HZbx929seKbvAGvvG9vgXwhQBIjfd0UsZ0nfBJ.gGd33zm9zDmv+bFoRkhie7iiQO5QCJJJs5PUMGgkRkJY0A4LYvpvBKDQGczXFyXFn28t2L5rbkJUxZ.mxFN6ryvVasEG+3GuVcduJ.wfUc.MNYezidzZcxts1ZK5V25FiYzWJJJr90udjPBIf+u+u+Or90udhS3eNx1291AMMMF4HGI.pRkDLwDSzyo6d6s2HrvBiw1XJSYJ5sphadyaFsu8sGd6s2Hf.B.omd55ECUJTnPmUBr5ryctSDUTQwXY93iOjndmAHFrpknwI6t5pq3K+xuTmxl9zmtNqRX0wau8Fm3Dm.93iOHv.CDyYNyg3D9mCje94iUspUoylbViAqZNxGas0VVC0gfBJHcxUg4kWd3rm8rXJSYJ..vCO7.lZpo3pW8p5bdADP.ZqSM4ZW6ZHkTRgwxBHf.PIkTBqYhmWUgXvpVxxV1xfb4xYb0jbwEWXU0HGwHFAL0TSw92+9w29seK5PG5.wI7OG3l27lfllVGA5yd6sGScpSkyL4Le7W+0eA6s2d3s2dCfpBdTO8zS8VcOtdlPoRkLtQqAH58NaPLXUKHxHiDm8rmEibjiDst0stVctBEJDu+6+93gO7g..Dmv+bhMsoMAiLxHchDcqs1ZDTPAw5T03iryNabwKdQ8Bik.CLPFmVHavkS9ApJYqd4Ke4ZUBZ8kcHFrLPz3j8ILgIf+4e9GjQFYvZcEKVLiibZzidzZ8Qh0VaM9oe5mvoO8ow92+9az52uJyMtwMPN4jC5PG5.upk..vwN1wXbAQDKVL15V2p1vVXiabivImbRu34pG8nGPf.A5MsP1nG8nGLFVC..QGcznyctyPpTo3F23FFT68p.DCVF.4kWdXwKdwXTiZT3y9rOCspUshycU+u9q+JiO3KPf.cFYl6t6N9hu3Kve7G+AhO93aT56uJy1111vfG7fQ3gGNqq9W04JW4JLp5mEWbwXu6cuPrXwHiLx.W8pWEe5m9o5UOMSKr5qV392+9YLbG.pxmmZlRY0QsZ0HxHiD4lat3Mdi2fnfCUChAKdPtb4X1yd1nKcoKZilYe7wGb9yedV8+j0VaMhJpnLngxqYkFm+7mOwI7MfjRJof6e+6iO+y+bDP.AnyHrRM0Twt28t06bTnPAi9TRgBEfhhBlZpoXiabivUWcE8su8kwqa.AD.RM0T0NsvyblyvXnt.T0Ofw1H+TnPAL0TSQfAFHt0stEQ0O9OHFr3gkrjkfJpnBrnEsHsOb4qu9h10t1gm9zmx34LhQLBTZokxZnKjSN4fctycp0fWXgEFr0VaINguAjssssgt0stAWc0U8J6t28t3HG4H5c7JpnBFEuOMFrRM0TwMu4Mwm8YeFqW2d0qdoyzBUoREqNVmMToRk1LM8PFxPfJUpvku7kqUswKqPLXwAQFYj3xW9xXoKco5LUN6s2drhUrBXiM1v34Yu81iN24NiXiMVFKWf.AHxHiDW5RWR6+SbBeCG4jSN3l27l3i+3OlwxkJUJLxHiz63t5pqn6cu65cbSM0TzktzEDYjQB2byM3omdx50tlSKrlJxfFTqVMRM0TYcCU2t10Nzl1zFHTnP3latQVsv+ChAKV3F23FXyadyXVyZVL9qzVXgEb5H2u4a9FVy0c1Zqs3sdq2RmokXs0ViEsnEgSe5SyZ1YgfgwN1wNf81aO5ae6KRLwDwd26d0o7xJqLFMhL8oOcDbvAq2wc0UWQHgDBRKsz3bzUZPyzBEIRD5ZW6JbvAGzqNRkJEye9yGImbx5Ul.ABvxV1xfGd3A..BN3fQRIkDQu2AwfEijWd4g4Mu4gQO5Qi.BHf5Ta3hKtvodKMtwMN7nG8HcVAHO8zS7EewWf0st0QhD95HkTRI37m+7ZUGzacqaomSqsxJqXTti4xmRaaaaC8rm8Dt4la71G5Se5CLwDSvUu5UQ3gGNiNVWtb4LtYp0f0Vas1Pdne8qePf.AjHeGDCV5gFmr6pqthgLjgv4p2UbwEi3hKt5Tbx3ryNiwMtwgJqrRcNtFmvSjil5F6YO6Ast0sFCaXCC.Uc+rlw5zG9geH91u8aM317N24NH4jSVu3thMLyLyPO5QOPzQGMnnnXzHnZ0pAMMMi9LqlHTnPzidzCxpEBhAK8XYKaYn7xKGKYIKAwGe7X0qd0rZP5IO4IXEqXEH2byk01SjHQr5H8O9i+XF0lovBKLz912dLm4LGhS3qETQEUfie7iiwN1wp8XZxZMUGABDv3TBSO8zgHQhz63qacqCuwa7FL5Z.1vO+7S6zBYhJqrRXlYlwnAK0pUq2z+dm24cPZokldJLwqZPLXUMz3H7UrhU.yM2b3iO9fhJpHV2OWt4lanksrkbJosKe4KGG9vGtV0Oz3CCM6CNBFFG9vGFlXhIXDiXDZOlM1XC5ZW6JumqRkJwJVwJvst0sz4323F2.26d2CCdvCtV0W5W+5GLwDSvAO3AY7G7rxJqP3gGNbzQG0qr7yOe70e8WqiQKO7vCzxV1RbtyctZU+3kMHFr9Ot10tlVmr6hKt...GbvA3jSNwpAGJJJ3iO9fSe5Sy5nvZe6aOuxDhb4x067s1ZqwhW7hQLwDCwI7F.JUpDG7fGDu669t5L5oQO5QqmpdJRjH8FASkUVIJojRz69vF23FwvG9v0YTaFBlYlYvCO7.+y+7OLNJYyLyLzyd1SFCnUwhEiG+3GCUpToS8I58NPsSnddIk7yOervEtPLpQMJ8bx968duGhKt3X8b8yO+vst0sPwEWLig4PvAGLhN5nw8t28X0gs6cu6EkWd4X5Se55bbO8zSL8oOcrt0sNdch+q5DSLw.IRjfO3C9.cNNSS86W+0eE1Ymc53SJlx5ywEWb3gO7gXNyYN0o9T.AD.hO934ThYXBYxjASLwD8lJavAGLl1zlFVyZVCrzRKaVtGCUoREbwEWz5iwZKuxavRtb43a9luAN5ni5IWL.UEjnd4kWrd9N4jSX0qd0rty+cwEWfSN4Dt3EuHqFr5PG5.hHhHvnF0nzKcQ89u+6izSOc7i+3Oh+9u+aFSMUD.10t1E70WegEVXAu0M+7ymwMut.ABPKaYK09+aZSaBCYHCgwvRvPne8qevXiMFwEWbLtZypUqlQGxyldc00t1UDTPAgKdwKBSM0TVelSy4UWMnw24yU47U1yd1yvQO5QwPFxP3bieyF0ZCVG9vGFQGczPgBE7JOGxkKGzzz7FouZBhOZZZVqiXwhQKaYKYLC5Vy1hq1o5WOfpbb9MtwMvO7C+.iO7PQQw6mS9dI4a9luQuUCr5LzgNTr8sucryctSFW8pYMqYgoO8oiQLhQ.Wc0Uz5V2Zd+L1P.MMMJu7xQqZUqXLPKqIFx280VToREjISFq2CLxHiPokVJdxSdBiI5TQhDAiM1XctGUYkUp2yjlZpoHrvBSq+thM1XQt4lKVxRVRctuqYZgm7jmTOCV4kWdXqacqXlybl5M5qN1wNhO7C+P8bHu.ABPHgDBt10tFnoowJW4JY7GvTpTIJpnhXMWIxGxkKGkVZo5n+WFZ4JUpDO8oOE1XiM589jZ0pQ1YmMjHQRcxXEPcvfU6ZW6fJUpvst0sv3F23X0.hwFaLN6YOKDKVLd228c0Y930j6e+6CarwF8xDuZPkJUXaaaavO+7CcpSchUK+xjIC4latvQGcjSCaEWbwPhDInScpSnqcsqn6cu6H1XiEScpS0f1U+0V3a0kDHP.F6XGK1111FDIRjd+5u.ABv7l27f2d6MdzidDl9zmtAsYdqunToRr6cua7lu4ah92+9y48PEJT.YxjoWZqp9RIkTB9m+4ePHgDBqels2d6g+96Od1ydldSKOhHh.ctycFSdxSV6wXRtiEHPf1UrUsZ03u+6+F93iO04W50fe94GV9xWNDKVrNFMexSdBN24NGl4Lmodmic1YGqYYZQhDgm7jm.KrvBV+QvG7fGf4Mu4gcsqcwngAwhEizRKMzyd1SFedOojRBqYMqA+8e+2LNU16d26he4W9EricrC8N+zRKMrrksLr10tV8detvBKDyd1yFqbkqjw9sgPs1f0fFzfP4kWNJojRPXgEFmVJUnPAxO+7w27MeCms4jlzjP+5W+vnF0nXrb4xkiye9yiILgIvpXnA.jXhIhkrjkfkrjkvpwOfpj11DSLQLqYMKbricLHUpTTVYkg6bm6fd1ydx34bsqcMXpolxZ44jSNHyLyjwfDzPXXCaXvbyMm0uOs2d6wm8YeFV8pWMr0Va4Mlfzr4a456ghKtXXhIlvo1dYokVhKbgKfoO8oyoeXRM0TwpV0pzlKFqIhDIBaZSaBSbhSrVMsVwhEiae6aiQO5QyYPat3EuXjQFYf4O+4qywyM2bQG5PGz4XezG8Qnyctyr1VwDSLnvBKTmzHeckALfA.SLwD8lVX4kWNLwDSp0ZxU94mOnnn377prxJ4LwW7fG7.rhUrBr4MuYFmcfBEJXMbL.pZfAkUVYPkJU5YvRy0loAUnVsZTVYkw4rM3i57vILj4GqI333qNRkJk23Mhlll2qYkUVIjHQBu0SpToPhDI..3wO9wZcHNWNW+V25VXsqcsr11ZBAAtR.lEVXgrtq6EJTH7wGe3b5mSZRSB1ZqsXCaXC7tMMN4IOIual5su8sy6dW7+8+9enhJpf2PyvQGcDxjICQFYjLVt4laNhO93wN1wN3rcpIsnEs.lat47lAYDIRDiF6kKWNZUqZkNGyWe8EN6ryL1NpUqFacqaE95qurtWQqMT8oEVcXaiVyGETPAvRKsrNctZnxJqjynrG.0qYZXHtOntRcpWYpolZP6.8VzhVTmU0wpCEEErvBKpW2jpIZLj1oN0ITQEUfu3K9BchemZhu95KdxSdBRM0TYrbO7vCzhVzBNymbqbkqjwjTgghM1XCl1zlFb1Ym48ANu81ajYlYxY+wGe7A23F2.IlXhrVm1zl1fwN1wxYvwBT0KlgDRH3rm8rHmbxQuxEHP.F+3GOhIlXpUY0XABDf1291ya.SJQhDVM1aHRgbwEWLV1xVFN7gOLJszRwDm3DM39He3me9g6e+6qyFct8su8n+8u+LV+zSOcVeNo+8u+3+6+6+CScpSEVZokrdMqsYpmpCEEEmmOWkSQQwp6Xnnn3b6OYP8s5xI4omdhvBKLdc.9nF0n38FOEEErxJq37gJiM1X7i+3Ox39+p5XhIlv6lRFnpQyn4Wcae6aOjHQBrvBKfSN4DqmiKt3B5PG5.N1wNFikalYlAu7xK89kzpSaZSaXTVSpNJUpDYkUVrNxnoN0ohsu8sy6u9amc1g29sear0stUVaKM6MtMu4MyYaMtwMN8hkIl3se62FN6ryrJEJ95qunssss0ZEV8q+5ul2kAWf.ALNUyoLkofALfAv60nnhJBwDSLHxHiDiXDinAc0X0LsvpuW.6YO6Il0rlEi0+JW4JXW6ZWLVlKt3BBHf.PPAEDq9zyQGcDey27Mr99oolZpdi5rlWiu5q9JVcOQ25V2Xsb6s2d7Ue0Ww3TMszRKwW+0ec8ajqzu.PlYlIcYkUV8tcJu7xou6cuKsBEJ3rdO4IOgNszRilllltnhJhdIKYIzkVZo719G8nGkdoKcorV9CdvCn+hu3Kne5SeJikmTRIQ6me9Q+fG7.VaCIRjPOwINQ5ibjiva+gOxM2boCMzPou+8uOq04t28tzgFZnzEUTQ06qGMcUeexUac26dW5Ke4K2fbspN2+922f9LnPgB5MsoMQWPAEnywSHgDncwEWn8yO+LnmEpsDd3gSGVXgYP0ciabizSZRSpAuOnAMumnRkpFsqQiEuPXvpolpei6QO5QzRjHg05ISlLNamxKubNuVSdxSldG6XGbVmHhHB5O7C+PdM7VZokxacJpnh3rOqoNF5Cu7c8dQmxJqLZ+82e5jSNYcN9Uu5UoswFan+i+3OZTttm6bmiNf.Bf2mOnoooW6ZWK8TlxTXrLUpTo8uWEoNMkvBKrPblybFdctcJojhd6MKl37m+7L52CMnVsZDSLwv4JW.TkiWiIlX3UNYSO8zwUtxUz9+UeJjQDQDrtUXnnnvCe3CY0+BTTTPoRk3Dm3Dr5ioIO4IiJpnBN+tKjPBAhDIhS+OIVrXLu4MOr0stUVqCPUawmKe4KyopSXs0ViXiMVjc1YyYaIVrXjbxIy68c4xkiicrig7xKOFKWoRkH5nitVoFEbcMUqVMN1wNldOenToRDSLwni+ujKWNLxHizyGLwGe7vYmcFSXBSvf6S0Fzr2B0HZihDIh0O+lat45sxl.U84LqrxBUTQEH+7ym0uSDIRDNwINAqkWRIkfXhIFVcUPwEWLN4IOIqmOWkKRjHbxSdRFeGTpToH5nilUQKzPnNYvRyWX7gHQhPQEUDu06u9q+h2LChHQh3c4PyN6rwu+6+NuqfVLwDC1912Nik00t1U8xsbUmG+3Gie9m+YVSkSJTn.qacqCW+5Wmwx0r2D4xPts1ZKBHf.vsu8sYsNVXgEXnCcn3PG5P79heBIj.V9xWNmFxiN5nwxW9x4rcrvBKf6t6Nu9HTf.A3l27lrtowM1XiwgO7gwgNzg3rczfToRwhW7hQ5omNikWVYkg0t10p2yZpUqFImbx577fBEJ.MMsNeFjKWNN4IOIlxTlR8JWExEBEJDt6t6Z2KfFarwr535QO5Qiu5q9J8NNEEEbxImfEVXAr0VaY89fLYxX86J.frxJK76+9uCYxjwX4UTQEHiLxf03tSS4rcsyHiLX7c0JqrRjd5oW+zm9l5w7yFGN...H.jDQAQk3QSSSe1ydV5G8nGUuamhJpH5+4e9GdmBzcu6coO0oNk1++gO7gz2912llltJ+PM7gOb56d26x34Vd4kSGVXgo2TJpNqbkqjdW6ZWrV9W9keI8bm6b4rOJQhDd8IiLYxnG23FG8pW8p4rdETPAze+2+8z4latrVmjSNY5YMqY0f3KQM8MttO7nG8H5LyLSCpsTnPA8nG8nY0udRjHgde6aeFzzsJnfBnmwLlA8SdxSzdrHiLR524cdGVcEPCE0loE1Xhl2SZNN89WHLX0Tyt10tzwImyXFyfdyadyrVeIRjvoODjISFmO7GczQSO5QO5FjWPNxQNB8+6+8+38k.EJTvqeO3yPe0aqF6WtqISdxSl929seqd2NpTohtzRKU62ERjHg9cdm2gW+J1PfDIRnCN3foiN5nazuVurBQdYPUgafHQhzNT0vCObNkFYgBEx4zhLyLy3bqyLjgLDDVXgUuhUFMXu81CyLyLdGlsgD+KFZLykYlYh4Lm4XvY33FBryN63M3QMDnnnPqacq09cwt28tAEEE7yO+X0maMTT8oEpToRV8yYEUTAi2OyKu7PbwEGjJUJt10t1qjo9q5jAq7xKONcpmFtyctCmQOtghZ0pwt28tazjLX6ryNHUpTsNCzN6rqduGx3BgBEhAMnAYPa.zrxJKDczQy520N4jS3YO6YrFeX0DCYGJv2tN30e8WGO5QOB6ae6i215hW7hXCaXCrVd94mOt10tFusiO93CmYqFlPtb4Ht3hi0WrEKVr18oXkUVIJnfBpUsecA+82ejVZogktzkxZ7ns10tVF2YAwFarXaaaaHu7xCqd0ql0seiXwhQLwDScVsFJojR3bQ0zTNSHRjHDarwxpS2OyYNyyemteu6cOr0stUN2Lr..m5TmxfDetctycxpCZAp5EnHiLRdWEqhKtXr6cuadiB73iOdcRaR1au8PnPg0puHKt3hQTQEEqubqYkvpuRZa4kWNV6ZWKqNQs0st038du2CG5PGxfxpJ+4e9mblxnTpTI9ke4W3bQPL2bywXG6XwwO9w48yWKZQKvANvAPJojBikWPAEfEtvExoShApxfEaosqLxHCr+8ue8dAqvBKDqbkqTmWrkKWt1e3aW6ZWnEsnE3ce22E1YmcrtOQaHQSBp3bm6bnzRKkw5jYlYxXNurfBJ.snEsP6VqgMCJO5QOB+xu7Kr99YgEVH18t2MqFxSO8zwu+6+NqOamZpoxZ44jSNXcqacL9r3yd1yvZW6ZqWC7nNYvRsZ0FzFXTsZ07ZTSsZ03nG8nLltipNzFfrkjSN4f8rm8vqgmqbkqfnhJJs+eqacqQDQDgNQfqZ0pQN4jCqF+prxJwe8W+EmY028t28x4nPpnhJ3MTMb2c2wq+5uNqqpIPUhLnYlYFhHhH3cZZFarwXKaYKr9cj.ABPYkUFmiJBnJMF2Jqrh2sZTe6aegqt5J1zl1Dik6omdB6ryNrksrENaGtH93iGG7fGTuo7pPgBHQhDcl5cRIkDl+7mOxO+7wQNxQvDlvDpyRcRcAyM2b3t6tizRKMczdqpCSxeCPU+HY0mNKanVsZNGkb1YmM1yd1CTnPQc57qrxJYsb0pUyY6pPgh5kvCVm8gkgX.QiJNxGFxlkzP+PVW6WN6ry54CmUrhUvp7Faqs1BGczQbzidTVuNd4kW3BW3Brdy8hW7hXdyad79YKzPCEW6ZWiUe3XgEVfEtvEhLxHCr90udNaqwN1wBkJUx4lY9S9jOA4jSN37m+7rVGyLyLrvEtPCZauL4IOYjXhIx59vbxSdx35W+5rNJL93YO6YLtMTjISFnoo049pl3eJxHiDVXgEXjibj0oqY8g.CLPTQEUvpOCUpTIqkYu81CJJJzpV0p50dxiu2S36Yx5pQGC48StnN8ItUspUn8su87Vu1zl1f10t1wa836COEEEd8W+0Y8WjpNFxWHzUs5n7dMczQG4b5SAGbv3V25VrNUL+7yOHRjHVGElqt5JRIkT3byGC.LvANP3u+9y4nmb0UWwm9oeJtzktDmNmt0st0XjibjbFbqN4jSvKu7BG3.Gfy9kSN4Dm6+RM3omdhu5q9JVu+0+92e71u8aiG8nGwY6bsqcMFCv3hKtXVkIEMYOYMnQQON0oNEBMzPaTz+L9vCO7.uwa7FrZTZTiZTnW8pW5c7O+y+bLlwLF75u9qivCObXkUVw34ahIlvZYZfqY9zhVzBNkknVzhVf1111x3ORXpolBqrxJF+d0DSLAsssss9IhA0kkVTlLY5sWrXhxJqLV2WcUme3G9A5yd1yxaaw2xxe+6ee5oMsow6dAaW6ZWzye9yWmioRkJ8hKkjSNYZ+7yOs66Pl5Syblyjy8F3RW5RoO5QOJqk+Ye1mQu3EuXN6uZ5eFx1w3y9rOSuOa0jxJqL5Se5SyYXLTPAEPe5Se5maaADCIrK97O+yoW6ZWqdG+O+y+jwXQq7xKWu3kK5nil1QGcjdbiabMoauke3G9A5YNyY1nz1xjIiymISJojnm1zlFqgBiDIR3c+txV4xjIiNyLyjwuaUnPA8CdvCpWw+0KDwgkLYxZPd3QkJUFjgMYxjo2MqyctyQO24NWcNWUpTQOsoMM5HiLRNaK9hIKttAcjibD5PBIDCNFnjHQBmA24gNzgn+7O+yetFTfETPAzIjPBM5WmErfEv3K47E2aUmadyaR2st0McBb3lBN24NGcfAFXCVf5VaPy6IMG4Eh3vxLyLqAYn4ZzMKCIdip4VvnxJqDIjPB5rxITTTXtyctbJsI702MyLy3zot96u+HrvByf+7+Ue0WgwLlwvpy5M2byQd4kGmJNYCMYjQFXdyadFTbLUXgEZPqlIS3fCNv3VBiu3dq5b5SeZzm9zm5bVaogh9zm9.iM1Xb0qdUC9bptuPqWNt9+dOo4H04UIzPBZMkJU1fk4h4JCJ2PPm5TmfLYxzyuN1YmcrJF+MDnI+zYHqT0ZVyZPrwFKJojRvbm6bY76Cu7xKPQQgcu6cya6oVsZjd5oyYXfnToRjZpox48692+9CKrvBrsssMdul6ae6CKZQKh0xiM1Xwe9m+Iik4latUqB11ZtZW4me93Lm4LXRSZRMI9tp5Xt4lC2byM8xyfpUqFQEUT58CRYkUVXlyblPtb4Hu7xCKdwKlyUXt97tBeqRHekWWKyPnNcW6V25VH7vCm2K9t28twu9q+JusWgEVHuuz7se62hzRKMNaGlRw2Lgb4x0aY80DnnO4IOg2yulTbwEiCe3Cy5u5oToRbricr5ULYcvCdPbricLrvEtP7a+1ugG9vGhe629M8pmPgBw3F23vwO9w4cCpSQQge8W+UVEKNfpVoskrjkfXiMVNamPCMTCRwG7wGePBIj.qa96V25ViCdvCx3BQ3gGdnmlsCT02+LYPM1XiUmui1zl1D5XG6H7wGe3rO97B+82ebu6cOcdlUtb4Xsqcs58bXZokFxHiLfYlYFJszRw0u90YcyKmUVYgu669NNC8.tdOI0TSEyYNyg0yOkTRAyYNygwm2yJqrvblybXr8KojRvO7C+PsRwYqI0ICVkTRIrtasqN4lat7txO.Uk.A3ZIz0DSTZzgc1H8zSGyblyj2Xa5fG7f5oLABEJDevG7ALpDipUqFYjQFrNJCoRkhMrgMv5p8IPf.ru8sONiF8JpnBVWEv3iOdrt0sNL8oOcL9wOdLvANPLu4MObricLFayQLhQft28tiYO6Yya.Y5s2diibjiv501BKr.d3gGHxHijyQYMzgNTzqd0K7vG9PNudt4lanW8pWrpxo8rm8Dt6t63u+6+VuxLyLyXbUICO7vYTcLRO8z0FeeZBSigO7gWmCehFZ5Se5CLxHizouqIfPq4JpVTQEoyJ2w0HDKqrx3LPrSIkTvLm4LYMV7DIRDRJoj3LR2SJojXbkFKqrxPRIkDiOqHSlLjTRI87OR2ALLQpmhhxfBxshJpHdGYjgb8jHQBdxSdBuA0ZwEWrdV4onnvTm5TYLoYpToRr7kubVCRR6s2d3fCNvYJouu8subpwPwDSLXAKXA5Ud94mOlyblCBLv.w6+9uuNs2Tm5Twu7K+hdObJTnPrrksLzxV1RVmdkFF4HGIZYKaI14N2Iq04i+3OFO6YOC+6+9urVGABDfEtvEhAO3Ay40Cnp37p7xKmUMP6S9jOAokVZb9RmFTpTId3CeHiOenToRsS09u9q+BN5niHv.CDssssk2184AVXgEn6cu65HmQxjIiwrhSQEUjN9chKeXw26JRjHA4lat0q1fqx4R5zMxHid9qo6.Fd.Z1Pgg9A0PS3m0lL6gYlYF5Tm5DmFjBHf.vUtxUX8WOBJnfPIkTBquD1st0MjZpopyHhjJUJl8rmMbxImXL+08QezGgAO3Ai4N24p2HjDHP.9rO6yvcu6cwctyc37yVHgDBxN6rY89kM1XCF0nFEuiLwPW7DWbwErxUtRV01a2byMDVXgwXNNTpTo539.MeeyjFrqIgclSN4fKe4KioLkof1zl1zfjMbZnHf.BPOM6pCcnC5EqR8nG8.AGbv..vJqrBCYHCg0DAig7dGWFULjcnBaky24ZnASNaTmLX0ktzE7du26waRnvKu7BCe3Cm6Nv+kAN3psDHP.F23FGr2d64suYHFhLjQ9USF4HGIxJqrXMnLG5PGJbyM2X0OUN6ryvKu7h0URyUWcEcnCcPmHm+m9oeBhEKF+zO8Sr1em8rmMrzRKYLh48zSOgGd3AuA.p+96OBO7v4rNe7G+wFThnvPfhhB1ZqsbpNDCaXCiw62G7fGDqacqS6+KQhDXlYlw3Kut6t6XHCYH3O+y+Dt3hKrlkZZJoO8oO..ZmVX6ZW6PDQDgd4JRe7wGDTPAAfp7252+8eOq4Sx1291i.BH.dGoCa75u9qi.CLPVelSS4L09su8sGAFXfLtpsVXgEHnfBh2fZkSZpiqBZZZ5ScpSQ+vG9v5c6TTQEQuu8sOdiooDRHAF0jnbyMW5ie7iyZPuMoIMI5+4e9GVaWCIlr3pusm8rGs5x0l27loG9vGNqAsZ04IO4IzAETPLF7jabiaj96+9um21ngjniNZN0Sr5C6XG6f9+8+9eZ++xKub5CcnCwZPPlVZoQ+1u8aqUfFeQju669N5u669tmaWuBJn.58rm8PDvul6b0qdU5QNxQxZPH9nG8nFrrKCSTd4kSmTRIQepScJ5gNzgxaz+Wct90uN8PG5PoO9wOtNGO5nilNnfBhS0FsglyctyQ6qu9xYzRqgie7iSmTRIwZ44lat57c9Uu5UoCLv.M3.sclyblzewW7EFTcap3zm9zzAETPMaClymm7BQfi9hB1au8n7xKm0E.vd6suAMe0USL2bygolZJhHhHPHgDRsZ426ae6KlxTlBVyZViN9ZxWe8EsqcsyfhQpJpnBrgMrAdyd0+0e8WbtROCdvCFN3fC7lfL.pRyz9ke4WX0uF+6+9u5D2V1XiMfll1fBR0TRIEDe7wioMsowacaJY.CX.fllF27l2D.Pum+jKWNhN5n0t52RkJEIlXhMpwk3KpTmLXke94aPBD18t28LHwYiOTqVM1+92eil.9oAqrxJHPff5kxVlSN4vn1LoA4xkiCe3CyXXDHVrXDd3gi9zm9fIO4IWqu1ie7iGCdvCFgGd3ZaeJJJLgILAbgKbAb9yedNumITnPDWbwwoTuHTnPbhSbBcjmmZBEEEl3DmHt8suMmYCIfpRRqO9wOl037ZnCcnH0TSUaRH0VasESbhSjyrdrF94e9mQ25V2fat4Fu0soDMAQ5IO4IwctycvhVzhzwXTokVJV+5WuV8y5gO7gXAKXALpYV.U8bDe2q4BQhDg3hKNNCqA1DlSwhEi3hKNFMlJWtbbwKdQd0qNtnNYvJwDSDabiaj2UR3Dm3DFjpTt6cuaNWAJkJUhst0sx6C+EWbw3.G3.7FE9IlXhLFhBlYlYvEWbgy38RoRkHiLxf0ecSlLYXyadyrF+SZhB8ZlgnUqVMBO7vgPgBYL3HMTXxI7CYHCAgDRHXkqbkbJLeTTTX7ie7H1Xik0uqsvBKPvAGL1+92Omixpe8qeXFyXF7FA+N3fCXHCYHHxHijwuSc1Ymwa8VuE1xV1BTqVMDJTHF6XGq1XRJ0TSE6cu6UuyKkTRAQEUTn6cu6bd8eQg.BH.jRJofzRKM7vG9PcLV7zm9THUpTsNqlKMmBnJCZqXEqfSA76.G3.bJPeQDQDbF3nqZUqhwxe3CeHV0pVEiaMrm9zmhHhHhm+ANpgrrmFZ8zrUD3Klanoo48WLxImbvN1wN3Mltt3EuH9m+4ez63TTT7pwSUVYkXgKbg3bm6bLVtKt3BryN6XUVZDHP.Fv.FfdaIi0rl0fLyLSrxUtRCVa0YByLyLr7kubjYlYpcWFHPf.L9wOdz8t2cdEJOe80WXiM1fcricvZc9vO7CgJUp3TSsDHP.BJnfLns0TngFJ5Uu5EqQt8Dm3DgwFaLiFQiKt3Xbzdqe8qGBDHnYydlSyzBu6cuKL0TS0wPed4kGDJTHig4AavUrHlc1Yicricv522FRnIvV6y241jr0b.Z3iCK9ZOC45Yn0iqXAol5mTMQnPgvd6smyXxxWe8EW5RWh0g9FTPAgbxIGsip7vG9v3Dm3DXQKZQMH6aQas0Vr3EuXDUTQoigyO4S9DjYlYxoN6SQQgu4a9F3hKtvZcrvBKvW8UeUCl+7ryN6vW9keIqFWbvAGvJVwJXTm8EIRjduHeqacKjRJoTq26gMkXt4lit28ti3hKNXrwFqSHEnRkJz4N2YsGyDSLAsrksrIU.+ZpZ65r.9YHByWaZSaLnnJ94s.9UapGSLxQNRb+6eeVc76vF1vva9luIqizyEWbAd6s2PjHQHwDSDqcsqESe5SG8t28tN2mpI8t28VqS30nzmt5pqnW8pWZctKWm6G7Ae.m0YXCaXve+82f5K4kWd06LrSaZSazNpCM9IDnJelTSk2XCaXCne8qevQGcrQKwn1XvvF1vPEUTgdwt3fFzfvrm8r09+cpScByYNygSA7iOe7w0y+lZporFiW.UIfeVZokLFGVZt1rIfeVZok0ueDotrzhRjHwfR7oO8oO0fD5OCQ.+JnfB3MtQLTA7aO6YOrJxcFhVAoPgB5oLkovY9kiu9pJUpnyM2boCN3foW4JWIm0s9v7m+7oeu268z9cxBVvBnCO7vaztdLwpW8pM3qY4kWNu5Y10u900FZC+we7Gz+4e9mZK6pW8pzCaXCiNyLyj9AO3A79rvKRTd4kSGXfARetyct5U6HSlL56e+6yZ4Fh.9kVZow58gxKubViOPYxjw54pPgB5zRKsl+B3WYkUlAGWMbgBEJnKnfB38A9xKubVUB0G7fGPGZngxqfvkat4VudYPlLYzSbhSrQWr8jISFcngFJ8LlwLnoooou7kuLs+96OmOPqAEJTvqhwpPgBd+d31291z95qu7JxepTohN7vCm9e+2+k05r+8ue58su8QGbvASmYlYRKQhDctWMoIMIdUb0WjYVyZVM5A5qg9dxKh7BQbXYgEVTubzrFDHP.rwFa3ct8lat4rpY0VZokHmbxg2UxvN6riygMyG+zO8SnrxJCKcoKsQMqsXlYlgktzkhLyLS7y+7OiANvAhtzktvnZHTSxO+7w28ceGmJyQxImLBKrv3bJe8rm8Dd3gGrpPCZfhhB1XiMXqacqrtRuO5QOB6YO6AUVYkH+7yGBEJTqOGu3EuHxImbvm9oeJue1dQE+7yObu6cO81uj0zY00GmWanum7hH0odrRkJMHIhPtb40qXtn5zXKfeZvbyMGlat43wO9w061JqrxBG3.GPOez82+8eiqd0qhku7kWuL5YnXmc1g4O+4iidzihniNZL0oNU7fG7.7y+7Oy42ocricD.fyfNsKcoKnzRKE6YO6gy9vjlzjfToR4MV5F+3GODKVLqYinwMtwgJpnBFWIp+5u9K3iO9znlDbarwZqsFETPAZ2agxkKGye9yWmDYRd4kGhHhHXUFkTqVc858N9DnStJmuys9ZOnNYv5t28t5EbaLwANvAvF23F4s8Jt3h4U.+l8rmMdvCd.msiRkJQIkTBuNwWpTor5PbMKergDI0JUpD26d2iyXxZKaYK5HpcwFarXG6XGX1yd1btRbMzz+92eL4IOYrpUsJXpolhEsnEgSdxShKbgKv54PQQgIMoIgqcsqwZbkYt4lqUv.4ZTVt4laXYKaY7twWs1ZqwHFwHvYO6YY79ns1ZKF9vGNZUqZE7vCOPgEVHTqVMNyYNCxO+7wTlxT3r8eQGmbxIzidzCsR4iBEJPZoklNeWTZokh3hKNVCKgbxIGLu4MONSxubcuJ8zSmy2uSM0TwhVzhX79S1YmMVzhVDqB32BW3Be9mHUKt3h4U8OApZ36FhP+snEsHdEvuryNaTd4kyY6jYlYh4Mu4gxJqLNqWTQEEVyZVCqkOgILACJfCUnPAVzhVDt7kuLik6pqthV25Vq8guLxHCrrksLLtwMtlDMEe7ie7vKu7B+3O9ivQGcDd6s2XG6XGbZfefCbf3Mey2Dm8rmk05DbvAi1111hKcoKw402Zqs1fl96DlvDvLlwLXs7O9i+XDbvACkJUhYMqYg6bm6fsrks.+7yuWnjNl5Bst0sFiYLiAIlXhZkRGkJUpWHjv0z4DIRDmRJzCdvCvblybXcVRkTRIH93im0mKJt3hQBIj.qB3WMyMBZPlLYHgDRnNqo+.0i3vpgRFWTqVsAkXBLjqmDIRP1YmMuB3WQEUDmS4ye+82f1NGlat4vd6sm0fDkhhBu8a+13BW3Bn3hKFyd1yF8oO8AScpSk21twhe3G9A7Zu1qge3G9ADRHgfm9zmx4OVPQQge7G+Q7tu66xZcDJTHV9xWN7xKuZP5iVXgEvM2bi0mcrwFavm7IeB.pJ5ouzktDJt3hwDm3DaPt9M03kWdA0pUiqe8qiRKsTnPgB8BOn5i36oQ7D4pM3S5ndkV.+LDiQFx0yPaqZS83i24cdGjXhIxpNXEXfAht10thu669NHTnPL24N2FjqacEMQB+CdvCvAO3Agqt5p18nFaXs0Vya.sZmc1wYx2r5r+8ueCRMQ4B0pUiacqagJpnBbnCcHDbvA2ntwzedR02agsqcsCgFZn5DbrVYkUXPCZPrJfeFB787e8IyOy06pzFvNVgKpyB3269tuaCh.9YHHPf.DRHgvn7E2Ty.Fv.P6ae6YUO2syN6fEVXAxO+7wxW9xM3zQUiI1ZqsX9ye9HpnhBojRJZ2XwOuH4jS1fRNIxkKGm4LmgwotTQEUfe+2+csYd6PCMzFitZSF95qu3N24NPnPg3i+3OVmQkXmc1gYO6Yy5B1z111V3me9w46mbYTwN6rC94mebJfer09sqcsCCe3CmUA7ye+8mHfeZnnhJhdO6YO7FCUIjPBbFqOkWd4zaZSah0.qql7nG8HViEoCcnCQ6iO9PeyadSCpsddxt10tn6QO5Acu6cuMnDgZt4lK8oN0o3L9ct+8uO8ktzk3rcxLyLo8yO+3M.IkHQB86+9uO8N1wNXsc5Tm5D8W+0eMu88lanIHRqMZhlgRQEUD892+9aVJfeuPrQq70WeaPZGqs1ZL1wNVdqmmd5I7zSOYsb4xki8u+8i25sdKzst0MdaO1jt43iOdr10tV7EewWzftsaZn3i9nOBokVZ3O9i+.ae6aGqd0qly5WQEUf0st0Aas0V3t6tyXcxO+7wu9q+JbwEWX0A3N4jSXnCcn3nG8nvau8l0qmPgBw67NuCN3AOHdu268zaa1De7wCyM2bjat4B4xk2fDKeunf4laNdy27Mw5W+5QN4jCu9ks1BEEEmav8FZzLZMYxjAqrxJLpQMp5z8KinoqGaptWRQpToXbiabX5Se50Yio4me9XpScpvKu7Be+2+8Mv8vFNjKWNlvDl.dxSdBF9vGNmSUvHiLBQEUT30dsWCu8a+1LtJQJUpDG5PGBt3hKnO8oOLVGiLxHTVYkg7xKO3hKtvoSXkJUJNzgND5e+6O5ZW6pNs2YO6YwXFyXPrwFK9nO5iLnerp4DZD2PZZ5FLet1Tgl9ebwEGdi23MvgNzgpSNeuNMBqBKrPbu6cO3s2dy4EMkTRARjHodO5BMRPiWd40yEGqJTnPzxV1x5TRUUrXw31291XSaZSvd6sGgEVXMB8vFNLyLyv5V25vF23FgHQh37ECJJJzu90ODSLwfTSMUzwN1Q8bfJEEE5Se5CtzktD5PG5.rzRKYzIqlXhInScpS7FHgZVoUEJTnS3pPSSiQNxQhoMsog1111hLyLyZ4m7W7wSO8jW4.p4DpUqFIlXhvd6suNuRgFrAKM5bi.ABvsu8swF23FQ+5W+folZJiOPZlYlgCe3CiBJn.z6d2aNi90nhJJ7lu4aht0stwXvpUYkUh+3O9Cz912dzl1zFFqCEEEd5SeJt7kuL70WeQKZQKXreQQQgjSNYTXgEhgNzgxZeu5wgEeBBX0aaQhDgYNyYBqrxJsZxzK5XiM1f4Lm4Xv0O5niFt5pqLlTSAp56qSdxSBu7xKCdkCqOL1wNVNEzNBuX.EEEmthwPvfmRXrwFK1vF1.ToREd5SeJxImbf6t6Nq+hLEEExJqrfBEJfqt5JmKk40u90QG6XGQm5TmXbJDz+mvl04N2YV+EaJJJTZokhjSNYzm9zGVMTXrwFizSOcHRjHz291WVEaLM9Ln1JEFJTn.xjIC+xu7KuvKMuDHzbCC1fU94mORLwD09BtQFYDuwFkFiY7UuSe5SCWbwE3niNxZc4qsLxHiPQEUDtzktDBHf.fPgBYrtFYjQ3t28tnfBJ.96u+rZvxP66Lcdcsqck0QePf.g5NDmtSf.glMz7SeIHPfvqrPLXQf.glMPLXQf.glMPLXQf.glMPLXQf.glMPLXQf.glMPLXQf.glMPLXQPZGAtA...vJIQTPTg.glMPLXQf.glMPLXQf.glMPLXQf.glMPLXQf.glMPLXQf.glM7+OrhSOKqXlah.....jTQNQjqBAlf" ],
					"embed" : 1,
					"id" : "obj-48",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 641.0, 73.0, 218.0, 71.0 ],
					"pic" : "/Volumes/Data/Desktop/300px-Dynamic_time_warping.png"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 850.0, 20.0, 55.0, 19.0 ],
					"text" : "FastFTW"
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
					"fontsize" : 13.0,
					"gradient" : 1,
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 783.0, 43.0, 36.0, 23.0 ],
					"text" : "here",
					"textcolor" : [ 0.082, 0.553, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 2,
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
						"rect" : [ 34.0, 79.0, 564.0, 359.0 ],
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
									"id" : "obj-1",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 329.0, 137.0, 173.0, 21.0 ],
									"text" : "https://pypi.org/project/fastdtw/",
									"textcolor" : [ 0.270588248968124, 0.329411774873734, 0.996078431606293, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 328.999974943469965, 58.000000354100401, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
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
									"id" : "obj-2",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 58.0, 122.0, 363.0, 21.0 ],
									"text" : "https://towardsdatascience.com/dynamic-time-warping-3933f25fcdd",
									"textcolor" : [ 0.270588248968124, 0.329411774873734, 0.996078431606293, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 7.608435672091255,
									"id" : "obj-21",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 179.304690004098347, 231.56385721005023, 94.0, 25.0 ],
									"text" : ";\rmax launchbrowser $1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-17",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 57.999974943469965, 43.000000354100401, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"midpoints" : [ 67.5, 173.531928605025115, 188.804690004098347, 173.531928605025115 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 783.0, 71.0, 77.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p links"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-2",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 7.999940276145935, 43.508006930351257, 446.0, 32.0 ],
					"text" : "Dynamic time warping (or DTW) allows to measure the similarity of two lists of values or time series with different length."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Menlo",
					"fontsize" : 31.55611167716577,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6.666606903076172, 2.508007049560547, 388.0, 43.0 ],
					"text" : "Dynamic time warping"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-9",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 527.0, 20.0, 386.0, 45.0 ],
					"text" : "This is an experimental port of Kazuaki Tanida's        \nimplementation from Python to CommonLisp. \nFor more explanations and examples see      and     ."
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"midpoints" : [ 26.5, 209.999999284744263, 271.5, 209.999999284744263 ],
					"order" : 0,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"order" : 1,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-131", 1 ],
					"source" : [ "obj-26", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"hidden" : 1,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 1 ],
					"hidden" : 1,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"hidden" : 1,
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"midpoints" : [ 206.5, 203.999999284744263, 401.5, 203.999999284744263 ],
					"order" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 1 ],
					"order" : 1,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-84", 1 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-13::obj-32" : [ "rslider[1]", "rslider[1]", 0 ],
			"obj-13::obj-89" : [ "rslider[2]", "rslider[1]", 0 ],
			"obj-13::obj-9::obj-32" : [ "rslider[4]", "rslider[1]", 0 ],
			"obj-13::obj-9::obj-89" : [ "rslider[3]", "rslider[1]", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "bach.+.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.-.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.<=.mxo",
				"type" : "iLaX"
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
				"name" : "bach.belong.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.change.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.collect.mxo",
				"type" : "iLaX"
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
				"name" : "bach.filternull.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../bach/patchers",
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
				"name" : "bach.graph.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.group.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.interp.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.intersection.mxo",
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
				"patcherrelativepath" : "../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.mapelem.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.maximum.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.minmax.mxo",
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
				"name" : "bach.pick.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.portal.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.postpend.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
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
				"name" : "bach.rev.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.rminus.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.round.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.slice.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.slot.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.thin.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.times.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.trans.mxo",
				"type" : "iLaX"
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
				"patcherrelativepath" : "../../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bpatcher-resize.js",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../../patchers/utilities",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "extended-double.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "get_object-coord.js",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../../patchers/utilities",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "help.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.expr.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../../../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.multiple-value-bind.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../../../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.quickeval.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../../../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.quote.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../../../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "load_MOZ_helpfile.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mac_or_win.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp",
				"patcherrelativepath" : "../../../../../patchers/pw4m_lisp",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "make_path_once.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp",
				"patcherrelativepath" : "../../../../../patchers/pw4m_lisp",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.detect2lisp.antenna.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.ezbpf2slot.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.graph_view.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/moz_modules",
				"patcherrelativepath" : "../../../../../patchers/moz_modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.init-unless.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.maxverbang.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.mouse-is-inside.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.update-ui.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.eval-box.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp",
				"patcherrelativepath" : "../../../../../patchers/pw4m_lisp",
				"type" : "JSON",
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
		"boxgroups" : [ 			{
				"boxes" : [ "obj-30", "obj-9", "obj-4", "obj-5", "obj-10" ]
			}
 ],
		"styles" : [ 			{
				"name" : "newobjYellow-1",
				"default" : 				{
					"accentcolor" : [ 0.82517, 0.78181, 0.059545, 1.0 ],
					"fontsize" : [ 12.059008 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
