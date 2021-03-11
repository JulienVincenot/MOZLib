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
		"rect" : [ 502.0, 108.0, 652.0, 758.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
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
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 552.333333253860474, 105.999998315376274, 29.5, 22.0 ],
					"text" : "0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 552.333333253860474, 131.999998315376274, 85.0, 22.0 ],
					"text" : "prepend offset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 552.666666666666742, 159.791290283203125, 67.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"handoff" : "",
					"hilite" : 0,
					"id" : "obj-50",
					"maxclass" : "ubutton",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 337.0, -3.0, 33.0, 42.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.333333015441895, -2.166666984558105, 112.0, 26.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 414.166666666666742, 109.791290283203125, 52.0, 22.0 ],
					"text" : "222 55"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "bang" ],
					"patching_rect" : [ 341.666666666666742, 76.0, 230.0, 22.0 ],
					"text" : "bpatcher-resize-gizmo (217 177) (217 54)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 552.666666666666742, 13.0, 47.0, 22.0 ],
					"text" : "getsize"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 341.666666666666742, 47.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 552.666666666666742, 43.0, 103.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "bpatcher-resize",
						"parameter_enable" : 0
					}
,
					"text" : "js bpatcher-resize"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 167.57144199999999, 47.0, 83.0, 22.0 ],
					"text" : "route collapse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 429.0, 563.5, 77.0, 22.0 ],
					"text" : "loadmess 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 232.0, 345.0, 174.571441999999934, 22.0 ],
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 387.571441999999934, 527.0, 71.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80005
					}
,
					"text" : "bach.length"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 429.0, 617.66668701171875, 29.5, 22.0 ],
					"text" : "* 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 497.0, 290.5, 118.0, 22.0 ],
					"text" : "linear 0 0 1000 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "dump" ],
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
						"rect" : [ 34.0, 79.0, 1298.0, 655.0 ],
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
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 839.25, 508.0, 161.0, 22.0 ],
									"text" : "bach.round 0.000001 @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 666.0, 508.0, 161.0, 22.0 ],
									"text" : "bach.round 0.000001 @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 244.25, 370.0, 161.0, 22.0 ],
									"text" : "bach.round 0.000001 @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 34.0, 370.0, 161.0, 22.0 ],
									"text" : "bach.round 0.000001 @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 666.0, 476.0, 139.0, 22.0 ],
									"text" : "bach.scale 0. 1. 0. 1000."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 860.5, 250.0, 80.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80003
									}
,
									"text" : "bach.minmax"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
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
										"rect" : [ 59.0, 104.0, 909.0, 480.0 ],
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
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 12.0, 104.505859375, 165.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80003
													}
,
													"text" : "bach.mapelem @maxdepth 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 188.5, 104.505859375, 139.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80003
													}
,
													"text" : "bach.nth 1 1 @unwrap 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-4",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 12.0, 190.69873046875, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-47",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 331.0, 104.505859375, 165.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80003
													}
,
													"text" : "bach.mapelem @maxdepth 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-44",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 507.5, 104.505859375, 139.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80003
													}
,
													"text" : "bach.nth 1 2 @unwrap 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-62",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 331.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-63",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 331.0, 190.69873046875, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-1", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 1 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 1 ],
													"source" : [ "obj-44", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 0 ],
													"source" : [ "obj-47", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-63", 0 ],
													"source" : [ "obj-47", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"order" : 1,
													"source" : [ "obj-62", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 0 ],
													"order" : 0,
													"source" : [ "obj-62", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 860.5, 222.494140625, 109.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p separate-params"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 34.0, 342.0, 139.0, 22.0 ],
									"text" : "bach.scale 0. 1. 0. 1000."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 198.5, 250.0, 80.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80003
									}
,
									"text" : "bach.minmax"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-95",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 666.0, 536.0, 365.5, 22.0 ],
									"text" : "join 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-96",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 666.0, 386.0, 360.5, 22.0 ],
									"text" : "unjoin 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-97",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 821.25, 468.0, 139.0, 22.0 ],
									"text" : "bach.scale 0. 1. 0. 1000."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-87",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 34.0, 396.0, 228.5, 22.0 ],
									"text" : "join"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 34.0, 303.0, 81.0, 22.0 ],
									"text" : "unjoin"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-76",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 244.25, 337.0, 139.0, 22.0 ],
									"text" : "bach.scale 0. 1. 0. 1000."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 603.0, 191.0, 276.5, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-71",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 946.5, 250.0, 80.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80003
									}
,
									"text" : "bach.minmax"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
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
										"rect" : [ 59.0, 104.0, 909.0, 480.0 ],
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
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 12.0, 104.505859375, 165.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80003
													}
,
													"text" : "bach.mapelem @maxdepth 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 188.5, 104.505859375, 139.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80003
													}
,
													"text" : "bach.nth 1 1 @unwrap 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-4",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 12.0, 190.69873046875, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-47",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 331.0, 104.505859375, 165.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80003
													}
,
													"text" : "bach.mapelem @maxdepth 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-44",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 507.5, 104.505859375, 139.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80003
													}
,
													"text" : "bach.nth 1 2 @unwrap 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-62",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 331.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-63",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 331.0, 190.69873046875, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-1", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 1 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 1 ],
													"source" : [ "obj-44", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 0 ],
													"source" : [ "obj-47", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-63", 0 ],
													"source" : [ "obj-47", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"order" : 1,
													"source" : [ "obj-62", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 0 ],
													"order" : 0,
													"source" : [ "obj-62", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 198.5, 222.494140625, 109.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p separate-params"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 288.5, 250.0, 80.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80003
									}
,
									"text" : "bach.minmax"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 34.0, 191.0, 183.5, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "dump" ],
									"patching_rect" : [ 15.0, 432.0, 55.0, 22.0 ],
									"text" : "t b dump"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-35",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 502.5, 549.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"linecount" : 4,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 34.0, 230.0, 100.0, 62.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80003
									}
,
									"text" : "bach.iter @maxdepth 1 @unwrap 1 @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 34.0, 165.0, 79.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80003
									}
,
									"text" : "bach.group 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 666.0, 564.0, 74.0, 22.0 ],
									"text" : "prepend xyc"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "", "clear" ],
									"patching_rect" : [ 15.0, 68.0, 57.0, 22.0 ],
									"text" : "t b l clear"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 34.0, 115.0, 1157.0, 22.0 ],
									"text" : "route linear curve"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"linecount" : 4,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 603.0, 230.0, 87.0, 62.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80003
									}
,
									"text" : "bach.iter @maxdepth 1 @unwrap 1 @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 603.0, 165.0, 79.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80003
									}
,
									"text" : "bach.group 3"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 556.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 5.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 1 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-95", 1 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-95", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-18", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-23", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"midpoints" : [ 62.5, 101.5, 512.0, 101.5 ],
									"source" : [ "obj-23", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-40", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-48", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 2 ],
									"source" : [ "obj-51", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 1 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 2 ],
									"source" : [ "obj-6", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 1 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-64", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 2 ],
									"source" : [ "obj-71", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 1 ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-72", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 2 ],
									"source" : [ "obj-8", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 1 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"source" : [ "obj-82", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"midpoints" : [ 43.5, 425.0, 512.0, 425.0 ],
									"source" : [ "obj-87", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"source" : [ "obj-9", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-95", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-96", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-95", 2 ],
									"source" : [ "obj-96", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 0 ],
									"source" : [ "obj-96", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-97", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "MOZ-numint",
								"default" : 								{
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"fontsize" : [ 17.846569953152443 ],
									"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ]
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
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
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
									"fontname" : [ "Menlo Regular" ],
									"fontface" : [ 2 ],
									"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
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
									"textcolor_inverse" : [ 0.92549, 0.364706, 0.341176, 1.0 ],
									"fontname" : [ "Arial" ],
									"fontsize" : [ 13.0 ]
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
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
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
									"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
									"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
									"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 478.0, 328.471343994140625, 172.0, 22.0 ],
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
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 523.0, 463.471343994140625, 29.5, 22.0 ],
					"text" : "- 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 523.0, 623.471343994140625, 81.0, 22.0 ],
					"text" : "zl 1000 group"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 478.0, 386.5, 34.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "int" ],
					"patching_rect" : [ 493.0, 425.5, 54.0, 22.0 ],
					"text" : "uzi 1000"
				}

			}
, 			{
				"box" : 				{
					"addpoints_with_curve" : [ 0.0, 0.0, 0, 0.0, 1000.0, 1000.0, 0, 0.0 ],
					"id" : "obj-29",
					"legend" : 0,
					"linecolor" : [ 0.952941176470588, 0.564705882352941, 0.098039215686275, 1.0 ],
					"maxclass" : "function",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "", "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 527.0, 499.0, 200.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.333333015441895, 54.833335876464844, 211.0, 85.333335876464844 ],
					"range" : [ 0.0, 1000.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
						"rect" : [ 34.0, 80.0, 1372.0, 783.0 ],
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
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 284.0, 581.0, 57.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80005
									}
,
									"text" : "bach.join"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 233.0, 634.0, 211.0, 23.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.collect @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 433.0, 577.0, 32.0, 22.0 ],
									"text" : "print"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 233.0, 358.0, 29.5, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 280.0, 389.0, 179.0, 23.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.iter @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 280.0, 321.0, 57.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"versionnumber" : 80001
									}
,
									"text" : "bach.reg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-88",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 664.904723999999987, 635.0, 76.0, 22.0 ],
									"text" : "zl rev 10000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 664.904723999999987, 603.0, 100.0, 22.0 ],
									"text" : "zl 10000 group 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 664.904723999999987, 572.0, 220.595276000000013, 22.0 ],
									"text" : "zl 10000 lace"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 866.5, 447.0, 109.0, 22.0 ],
									"text" : "if $i1 >= 2 then $i1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 669.571411000000012, 426.0, 79.5, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-87",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 866.5, 530.0, 95.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.flat @out t"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1013.0, 455.0, 83.0, 19.0 ],
									"text" : "loadmess (1000)"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.0,
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 983.0, 426.0, 63.0, 19.0 ],
									"text" : "loadmess (0)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-85",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 866.5, 409.0, 73.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.length"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-84",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 866.5, 497.0, 83.0, 22.0 ],
									"text" : "bach.interp 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "", "clear" ],
									"patching_rect" : [ 649.571411000000012, 135.0, 59.0, 22.0 ],
									"text" : "t b l clear"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 664.904723999999987, 532.0, 109.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.portal @out t"
								}

							}
, 							{
								"box" : 								{
									"addpoints" : [ 0.0, 0.0, 0, 1.001001001001001, 1.0, 0, 2.002002002002002, 2.0, 0, 3.003003003003003, 3.0, 0, 4.004004004004004, 4.0, 0, 5.005005005005005, 5.0, 0, 6.006006006006006, 6.0, 0, 7.007007007007007, 7.0, 0, 8.008008008008009, 8.0, 0, 9.009009009009009, 9.0, 0, 10.01001001001001, 10.0, 0, 11.011011011011011, 11.0, 0, 12.012012012012011, 12.0, 0, 13.013013013013014, 13.0, 0, 14.014014014014014, 14.0, 0, 15.015015015015015, 15.0, 0, 16.016016016016017, 16.0, 0, 17.017017017017018, 17.0, 0, 18.018018018018019, 18.0, 0, 19.019019019019019, 19.0, 0, 20.02002002002002, 20.0, 0, 21.021021021021024, 21.0, 0, 22.022022022022021, 22.0, 0, 23.023023023023026, 23.0, 0, 24.024024024024023, 24.0, 0, 25.025025025025027, 25.0, 0, 26.026026026026027, 26.0, 0, 27.027027027027028, 27.0, 0, 28.028028028028029, 28.0, 0, 29.029029029029029, 29.0, 0, 30.03003003003003, 30.0, 0, 31.031031031031034, 31.0, 0, 32.032032032032035, 32.0, 0, 33.033033033033028, 33.0, 0, 34.034034034034036, 34.0, 0, 35.035035035035037, 35.0, 0, 36.036036036036037, 36.0, 0, 37.037037037037038, 37.0, 0, 38.038038038038039, 38.0, 0, 39.039039039039039, 39.0, 0, 40.04004004004004, 40.0, 0, 41.041041041041041, 41.0, 0, 42.042042042042048, 42.0, 0, 43.043043043043042, 43.0, 0, 44.044044044044043, 44.0, 0, 45.045045045045043, 45.0, 0, 46.046046046046051, 46.0, 0, 47.047047047047052, 47.0, 0, 48.048048048048045, 48.0, 0, 49.049049049049046, 49.0, 0, 50.050050050050054, 50.0, 0, 51.051051051051054, 51.0, 0, 52.052052052052055, 52.0, 0, 53.053053053053048, 53.0, 0, 54.054054054054056, 54.0, 0, 55.055055055055057, 55.0, 0, 56.056056056056057, 56.0, 0, 57.057057057057058, 57.0, 0, 58.058058058058059, 58.0, 0, 59.059059059059059, 59.0, 0, 60.06006006006006, 60.0, 0, 61.061061061061061, 61.0, 0, 62.062062062062068, 62.0, 0, 63.063063063063055, 63.0, 0, 64.06406406406407, 64.0, 0, 65.06506506506507, 65.0, 0, 66.066066066066057, 66.0, 0, 67.067067067067072, 67.0, 0, 68.068068068068072, 68.0, 0, 69.069069069069073, 69.0, 0, 70.070070070070074, 70.0, 0, 71.07107107107106, 71.0, 0, 72.072072072072075, 72.0, 0, 73.073073073073076, 73.0, 0, 74.074074074074076, 74.0, 0, 75.075075075075077, 75.0, 0, 76.076076076076077, 76.0, 0, 77.077077077077078, 77.0, 0, 78.078078078078079, 78.0, 0, 79.079079079079079, 79.0, 0, 80.08008008008008, 80.0, 0, 81.081081081081081, 81.0, 0, 82.082082082082081, 82.0, 0, 83.083083083083082, 83.0, 0, 84.084084084084097, 84.0, 0, 85.085085085085083, 85.0, 0, 86.086086086086084, 86.0, 0, 87.087087087087085, 87.0, 0, 88.088088088088085, 88.0, 0, 89.0890890890891, 89.0, 0, 90.090090090090087, 90.0, 0, 91.091091091091087, 91.0, 0, 92.092092092092102, 92.0, 0, 93.093093093093088, 93.0, 0, 94.094094094094103, 94.0, 0, 95.09509509509509, 95.0, 0, 96.09609609609609, 96.0, 0, 97.097097097097105, 97.0, 0, 98.098098098098092, 98.0, 0, 99.099099099099107, 99.0, 0, 100.100100100100107, 100.0, 0, 101.101101101101094, 101.0, 0, 102.102102102102108, 102.0, 0, 103.103103103103095, 103.0, 0, 104.10410410410411, 104.0, 0, 105.10510510510511, 105.0, 0, 106.106106106106097, 106.0, 0, 107.107107107107112, 107.0, 0, 108.108108108108112, 108.0, 0, 109.109109109109113, 109.0, 0, 110.110110110110114, 110.0, 0, 111.1111111111111, 111.0, 0, 112.112112112112115, 112.0, 0, 113.113113113113116, 113.0, 0, 114.114114114114116, 114.0, 0, 115.115115115115117, 115.0, 0, 116.116116116116117, 116.0, 0, 117.117117117117118, 117.0, 0, 118.118118118118119, 118.0, 0, 119.119119119119119, 119.0, 0, 120.12012012012012, 120.0, 0, 121.121121121121121, 121.0, 0, 122.122122122122121, 122.0, 0, 123.123123123123122, 123.0, 0, 124.124124124124137, 124.0, 0, 125.125125125125138, 125.0, 0, 126.12612612612611, 126.0, 0, 127.127127127127125, 127.0, 0, 128.128128128128139, 128.0, 0, 129.129129129129126, 129.0, 0, 130.130130130130141, 130.0, 0, 131.131131131131127, 131.0, 0, 132.132132132132114, 132.0, 0, 133.133133133133128, 133.0, 0, 134.134134134134143, 134.0, 0, 135.13513513513513, 135.0, 0, 136.136136136136145, 136.0, 0, 137.137137137137131, 137.0, 0, 138.138138138138146, 138.0, 0, 139.139139139139132, 139.0, 0, 140.140140140140147, 140.0, 0, 141.141141141141162, 141.0, 0, 142.14214214214212, 142.0, 0, 143.143143143143135, 143.0, 0, 144.14414414414415, 144.0, 0, 145.145145145145136, 145.0, 0, 146.146146146146151, 146.0, 0, 147.147147147147138, 147.0, 0, 148.148148148148152, 148.0, 0, 149.149149149149139, 149.0, 0, 150.150150150150154, 150.0, 0, 151.151151151151169, 151.0, 0, 152.152152152152155, 152.0, 0, 153.153153153153141, 153.0, 0, 154.154154154154156, 154.0, 0, 155.155155155155143, 155.0, 0, 156.156156156156158, 156.0, 0, 157.157157157157172, 157.0, 0, 158.158158158158159, 158.0, 0, 159.159159159159145, 159.0, 0, 160.16016016016016, 160.0, 0, 161.161161161161175, 161.0, 0, 162.162162162162161, 162.0, 0, 163.163163163163148, 163.0, 0, 164.164164164164163, 164.0, 0, 165.165165165165149, 165.0, 0, 166.166166166166164, 166.0, 0, 167.167167167167179, 167.0, 0, 168.168168168168194, 168.0, 0, 169.169169169169152, 169.0, 0, 170.170170170170167, 170.0, 0, 171.171171171171181, 171.0, 0, 172.172172172172168, 172.0, 0, 173.173173173173183, 173.0, 0, 174.174174174174169, 174.0, 0, 175.175175175175156, 175.0, 0, 176.17617617617617, 176.0, 0, 177.177177177177185, 177.0, 0, 178.1781781781782, 178.0, 0, 179.179179179179158, 179.0, 0, 180.180180180180173, 180.0, 0, 181.181181181181188, 181.0, 0, 182.182182182182174, 182.0, 0, 183.183183183183189, 183.0, 0, 184.184184184184204, 184.0, 0, 185.185185185185162, 185.0, 0, 186.186186186186177, 186.0, 0, 187.187187187187192, 187.0, 0, 188.188188188188207, 188.0, 0, 189.189189189189193, 189.0, 0, 190.190190190190179, 190.0, 0, 191.191191191191194, 191.0, 0, 192.192192192192181, 192.0, 0, 193.193193193193196, 193.0, 0, 194.19419419419421, 194.0, 0, 195.195195195195168, 195.0, 0, 196.196196196196183, 196.0, 0, 197.197197197197198, 197.0, 0, 198.198198198198213, 198.0, 0, 199.199199199199199, 199.0, 0, 200.200200200200214, 200.0, 0, 201.201201201201201, 201.0, 0, 202.202202202202187, 202.0, 0, 203.203203203203202, 203.0, 0, 204.204204204204217, 204.0, 0, 205.205205205205203, 205.0, 0, 206.20620620620619, 206.0, 0, 207.207207207207205, 207.0, 0, 208.20820820820822, 208.0, 0, 209.209209209209206, 209.0, 0, 210.210210210210221, 210.0, 0, 211.211211211211236, 211.0, 0, 212.212212212212194, 212.0, 0, 213.213213213213209, 213.0, 0, 214.214214214214223, 214.0, 0, 215.21521521521521, 215.0, 0, 216.216216216216225, 216.0, 0, 217.217217217217211, 217.0, 0, 218.218218218218226, 218.0, 0, 219.219219219219212, 219.0, 0, 220.220220220220227, 220.0, 0, 221.221221221221242, 221.0, 0, 222.2222222222222, 222.0, 0, 223.223223223223215, 223.0, 0, 224.22422422422423, 224.0, 0, 225.225225225225216, 225.0, 0, 226.226226226226231, 226.0, 0, 227.227227227227246, 227.0, 0, 228.228228228228232, 228.0, 0, 229.229229229229219, 229.0, 0, 230.230230230230234, 230.0, 0, 231.231231231231249, 231.0, 0, 232.232232232232235, 232.0, 0, 233.233233233233221, 233.0, 0, 234.234234234234236, 234.0, 0, 235.235235235235223, 235.0, 0, 236.236236236236238, 236.0, 0, 237.237237237237252, 237.0, 0, 238.238238238238239, 238.0, 0, 239.239239239239225, 239.0, 0, 240.24024024024024, 240.0, 0, 241.241241241241255, 241.0, 0, 242.242242242242241, 242.0, 0, 243.243243243243256, 243.0, 0, 244.244244244244243, 244.0, 0, 245.245245245245229, 245.0, 0, 246.246246246246244, 246.0, 0, 247.247247247247259, 247.0, 0, 248.248248248248274, 248.0, 0, 249.249249249249232, 249.0, 0, 250.250250250250275, 250.0, 0, 251.251251251251261, 251.0, 0, 252.252252252252219, 252.0, 0, 253.253253253253263, 253.0, 0, 254.254254254254249, 254.0, 0, 255.255255255255264, 255.0, 0, 256.256256256256279, 256.0, 0, 257.257257257257208, 257.0, 0, 258.258258258258252, 258.0, 0, 259.259259259259238, 259.0, 0, 260.260260260260281, 260.0, 0, 261.261261261261268, 261.0, 0, 262.262262262262254, 262.0, 0, 263.263263263263298, 263.0, 0, 264.264264264264227, 264.0, 0, 265.265265265265271, 265.0, 0, 266.266266266266257, 266.0, 0, 267.2672672672673, 267.0, 0, 268.268268268268287, 268.0, 0, 269.269269269269273, 269.0, 0, 270.27027027027026, 270.0, 0, 271.271271271271246, 271.0, 0, 272.272272272272289, 272.0, 0, 273.273273273273276, 273.0, 0, 274.274274274274262, 274.0, 0, 275.275275275275305, 275.0, 0, 276.276276276276292, 276.0, 0, 277.277277277277278, 277.0, 0, 278.278278278278265, 278.0, 0, 279.279279279279251, 279.0, 0, 280.280280280280294, 280.0, 0, 281.281281281281281, 281.0, 0, 282.282282282282324, 282.0, 0, 283.283283283283311, 283.0, 0, 284.28428428428424, 284.0, 0, 285.285285285285283, 285.0, 0, 286.28628628628627, 286.0, 0, 287.287287287287313, 287.0, 0, 288.2882882882883, 288.0, 0, 289.289289289289286, 289.0, 0, 290.290290290290272, 290.0, 0, 291.291291291291259, 291.0, 0, 292.292292292292302, 292.0, 0, 293.293293293293289, 293.0, 0, 294.294294294294275, 294.0, 0, 295.295295295295318, 295.0, 0, 296.296296296296305, 296.0, 0, 297.297297297297291, 297.0, 0, 298.298298298298278, 298.0, 0, 299.299299299299321, 299.0, 0, 300.300300300300307, 300.0, 0, 301.301301301301294, 301.0, 0, 302.302302302302337, 302.0, 0, 303.303303303303323, 303.0, 0, 304.30430430430431, 304.0, 0, 305.305305305305296, 305.0, 0, 306.306306306306283, 306.0, 0, 307.307307307307326, 307.0, 0, 308.308308308308312, 308.0, 0, 309.309309309309356, 309.0, 0, 310.310310310310285, 310.0, 0, 311.311311311311272, 311.0, 0, 312.312312312312315, 312.0, 0, 313.313313313313301, 313.0, 0, 314.314314314314345, 314.0, 0, 315.315315315315331, 315.0, 0, 316.316316316316318, 316.0, 0, 317.317317317317304, 317.0, 0, 318.31831831831829, 318.0, 0, 319.319319319319334, 319.0, 0, 320.32032032032032, 320.0, 0, 321.321321321321307, 321.0, 0, 322.32232232232235, 322.0, 0, 323.323323323323336, 323.0, 0, 324.324324324324323, 324.0, 0, 325.325325325325309, 325.0, 0, 326.326326326326296, 326.0, 0, 327.327327327327339, 327.0, 0, 328.328328328328325, 328.0, 0, 329.329329329329369, 329.0, 0, 330.330330330330298, 330.0, 0, 331.331331331331342, 331.0, 0, 332.332332332332328, 332.0, 0, 333.333333333333314, 333.0, 0, 334.334334334334358, 334.0, 0, 335.335335335335344, 335.0, 0, 336.336336336336387, 336.0, 0, 337.337337337337317, 337.0, 0, 338.338338338338303, 338.0, 0, 339.339339339339347, 339.0, 0, 340.340340340340333, 340.0, 0, 341.341341341341376, 341.0, 0, 342.342342342342363, 342.0, 0, 343.343343343343349, 343.0, 0, 344.344344344344336, 344.0, 0, 345.345345345345322, 345.0, 0, 346.346346346346365, 346.0, 0, 347.347347347347352, 347.0, 0, 348.348348348348338, 348.0, 0, 349.349349349349382, 349.0, 0, 350.350350350350311, 350.0, 0, 351.351351351351354, 351.0, 0, 352.352352352352341, 352.0, 0, 353.353353353353327, 353.0, 0, 354.354354354354371, 354.0, 0, 355.355355355355357, 355.0, 0, 356.3563563563564, 356.0, 0, 357.35735735735733, 357.0, 0, 358.358358358358316, 358.0, 0, 359.35935935935936, 359.0, 0, 360.360360360360346, 360.0, 0, 361.361361361361389, 361.0, 0, 362.362362362362376, 362.0, 0, 363.363363363363362, 363.0, 0, 364.364364364364349, 364.0, 0, 365.365365365365335, 365.0, 0, 366.366366366366378, 366.0, 0, 367.367367367367365, 367.0, 0, 368.368368368368408, 368.0, 0, 369.369369369369394, 369.0, 0, 370.370370370370324, 370.0, 0, 371.371371371371367, 371.0, 0, 372.372372372372354, 372.0, 0, 373.373373373373397, 373.0, 0, 374.374374374374383, 374.0, 0, 375.37537537537537, 375.0, 0, 376.376376376376413, 376.0, 0, 377.377377377377343, 377.0, 0, 378.378378378378386, 378.0, 0, 379.379379379379372, 379.0, 0, 380.380380380380359, 380.0, 0, 381.381381381381402, 381.0, 0, 382.382382382382389, 382.0, 0, 383.383383383383375, 383.0, 0, 384.384384384384362, 384.0, 0, 385.385385385385348, 385.0, 0, 386.386386386386391, 386.0, 0, 387.387387387387378, 387.0, 0, 388.388388388388421, 388.0, 0, 389.389389389389407, 389.0, 0, 390.390390390390337, 390.0, 0, 391.39139139139138, 391.0, 0, 392.392392392392367, 392.0, 0, 393.39339339339341, 393.0, 0, 394.394394394394396, 394.0, 0, 395.39539539539544, 395.0, 0, 396.396396396396426, 396.0, 0, 397.397397397397356, 397.0, 0, 398.398398398398399, 398.0, 0, 399.399399399399385, 399.0, 0, 400.400400400400429, 400.0, 0, 401.401401401401415, 401.0, 0, 402.402402402402402, 402.0, 0, 403.403403403403388, 403.0, 0, 404.404404404404374, 404.0, 0, 405.405405405405418, 405.0, 0, 406.406406406406404, 406.0, 0, 407.407407407407391, 407.0, 0, 408.408408408408434, 408.0, 0, 409.40940940940942, 409.0, 0, 410.410410410410407, 410.0, 0, 411.411411411411393, 411.0, 0, 412.41241241241238, 412.0, 0, 413.413413413413423, 413.0, 0, 414.414414414414409, 414.0, 0, 415.415415415415453, 415.0, 0, 416.416416416416439, 416.0, 0, 417.417417417417369, 417.0, 0, 418.418418418418412, 418.0, 0, 419.419419419419398, 419.0, 0, 420.420420420420442, 420.0, 0, 421.421421421421428, 421.0, 0, 422.422422422422471, 422.0, 0, 423.423423423423401, 423.0, 0, 424.424424424424387, 424.0, 0, 425.425425425425431, 425.0, 0, 426.426426426426417, 426.0, 0, 427.42742742742746, 427.0, 0, 428.428428428428447, 428.0, 0, 429.429429429429433, 429.0, 0, 430.43043043043042, 430.0, 0, 431.431431431431406, 431.0, 0, 432.432432432432449, 432.0, 0, 433.433433433433436, 433.0, 0, 434.434434434434422, 434.0, 0, 435.435435435435465, 435.0, 0, 436.436436436436452, 436.0, 0, 437.437437437437438, 437.0, 0, 438.438438438438425, 438.0, 0, 439.439439439439411, 439.0, 0, 440.440440440440454, 440.0, 0, 441.441441441441441, 441.0, 0, 442.442442442442484, 442.0, 0, 443.443443443443414, 443.0, 0, 444.4444444444444, 444.0, 0, 445.445445445445444, 445.0, 0, 446.44644644644643, 446.0, 0, 447.447447447447473, 447.0, 0, 448.44844844844846, 448.0, 0, 449.449449449449446, 449.0, 0, 450.450450450450433, 450.0, 0, 451.451451451451419, 451.0, 0, 452.452452452452462, 452.0, 0, 453.453453453453449, 453.0, 0, 454.454454454454492, 454.0, 0, 455.455455455455478, 455.0, 0, 456.456456456456465, 456.0, 0, 457.457457457457451, 457.0, 0, 458.458458458458438, 458.0, 0, 459.459459459459481, 459.0, 0, 460.460460460460467, 460.0, 0, 461.461461461461454, 461.0, 0, 462.462462462462497, 462.0, 0, 463.463463463463427, 463.0, 0, 464.46446446446447, 464.0, 0, 465.465465465465456, 465.0, 0, 466.466466466466443, 466.0, 0, 467.467467467467486, 467.0, 0, 468.468468468468473, 468.0, 0, 469.469469469469516, 469.0, 0, 470.470470470470445, 470.0, 0, 471.471471471471432, 471.0, 0, 472.472472472472475, 472.0, 0, 473.473473473473462, 473.0, 0, 474.474474474474505, 474.0, 0, 475.475475475475491, 475.0, 0, 476.476476476476478, 476.0, 0, 477.477477477477464, 477.0, 0, 478.478478478478451, 478.0, 0, 479.479479479479494, 479.0, 0, 480.48048048048048, 480.0, 0, 481.481481481481467, 481.0, 0, 482.48248248248251, 482.0, 0, 483.48348348348344, 483.0, 0, 484.484484484484483, 484.0, 0, 485.485485485485469, 485.0, 0, 486.486486486486513, 486.0, 0, 487.487487487487499, 487.0, 0, 488.488488488488485, 488.0, 0, 489.489489489489529, 489.0, 0, 490.490490490490458, 490.0, 0, 491.491491491491502, 491.0, 0, 492.492492492492488, 492.0, 0, 493.493493493493474, 493.0, 0, 494.494494494494518, 494.0, 0, 495.495495495495504, 495.0, 0, 496.496496496496547, 496.0, 0, 497.497497497497477, 497.0, 0, 498.498498498498464, 498.0, 0, 499.499499499499507, 499.0, 0, 500.50050050050055, 500.0, 0, 501.501501501501536, 501.0, 0, 502.502502502502523, 502.0, 0, 503.503503503503453, 503.0, 0, 504.504504504504439, 504.0, 0, 505.505505505505539, 505.0, 0, 506.506506506506526, 506.0, 0, 507.507507507507512, 507.0, 0, 508.508508508508498, 508.0, 0, 509.509509509509485, 509.0, 0, 510.510510510510528, 510.0, 0, 511.511511511511515, 511.0, 0, 512.512512512512558, 512.0, 0, 513.513513513513431, 513.0, 0, 514.514514514514417, 514.0, 0, 515.515515515515517, 515.0, 0, 516.516516516516504, 516.0, 0, 517.51751751751749, 517.0, 0, 518.518518518518476, 518.0, 0, 519.519519519519463, 519.0, 0, 520.520520520520563, 520.0, 0, 521.521521521521549, 521.0, 0, 522.522522522522536, 522.0, 0, 523.523523523523522, 523.0, 0, 524.524524524524509, 524.0, 0, 525.525525525525609, 525.0, 0, 526.526526526526595, 526.0, 0, 527.527527527527468, 527.0, 0, 528.528528528528454, 528.0, 0, 529.529529529529441, 529.0, 0, 530.530530530530541, 530.0, 0, 531.531531531531527, 531.0, 0, 532.532532532532514, 532.0, 0, 533.5335335335335, 533.0, 0, 534.5345345345346, 534.0, 0, 535.535535535535587, 535.0, 0, 536.536536536536573, 536.0, 0, 537.53753753753756, 537.0, 0, 538.538538538538546, 538.0, 0, 539.539539539539646, 539.0, 0, 540.540540540540519, 540.0, 0, 541.541541541541505, 541.0, 0, 542.542542542542492, 542.0, 0, 543.543543543543478, 543.0, 0, 544.544544544544578, 544.0, 0, 545.545545545545565, 545.0, 0, 546.546546546546551, 546.0, 0, 547.547547547547538, 547.0, 0, 548.548548548548524, 548.0, 0, 549.549549549549624, 549.0, 0, 550.550550550550611, 550.0, 0, 551.551551551551597, 551.0, 0, 552.552552552552584, 552.0, 0, 553.553553553553456, 553.0, 0, 554.554554554554556, 554.0, 0, 555.555555555555543, 555.0, 0, 556.556556556556529, 556.0, 0, 557.557557557557516, 557.0, 0, 558.558558558558502, 558.0, 0, 559.559559559559602, 559.0, 0, 560.560560560560589, 560.0, 0, 561.561561561561575, 561.0, 0, 562.562562562562562, 562.0, 0, 563.563563563563548, 563.0, 0, 564.564564564564648, 564.0, 0, 565.565565565565635, 565.0, 0, 566.566566566566621, 566.0, 0, 567.567567567567494, 567.0, 0, 568.56856856856848, 568.0, 0, 569.56956956956958, 569.0, 0, 570.570570570570567, 570.0, 0, 571.571571571571553, 571.0, 0, 572.57257257257254, 572.0, 0, 573.573573573573526, 573.0, 0, 574.574574574574626, 574.0, 0, 575.575575575575613, 575.0, 0, 576.576576576576599, 576.0, 0, 577.577577577577586, 577.0, 0, 578.578578578578572, 578.0, 0, 579.579579579579672, 579.0, 0, 580.580580580580545, 580.0, 0, 581.581581581581531, 581.0, 0, 582.582582582582518, 582.0, 0, 583.583583583583504, 583.0, 0, 584.584584584584604, 584.0, 0, 585.585585585585591, 585.0, 0, 586.586586586586577, 586.0, 0, 587.587587587587564, 587.0, 0, 588.58858858858855, 588.0, 0, 589.58958958958965, 589.0, 0, 590.590590590590637, 590.0, 0, 591.591591591591623, 591.0, 0, 592.592592592592609, 592.0, 0, 593.593593593593482, 593.0, 0, 594.594594594594582, 594.0, 0, 595.595595595595569, 595.0, 0, 596.596596596596555, 596.0, 0, 597.597597597597542, 597.0, 0, 598.598598598598642, 598.0, 0, 599.599599599599628, 599.0, 0, 600.600600600600615, 600.0, 0, 601.601601601601601, 601.0, 0, 602.602602602602587, 602.0, 0, 603.603603603603688, 603.0, 0, 604.604604604604674, 604.0, 0, 605.60560560560566, 605.0, 0, 606.606606606606647, 606.0, 0, 607.60760760760752, 607.0, 0, 608.60860860860862, 608.0, 0, 609.609609609609606, 609.0, 0, 610.610610610610593, 610.0, 0, 611.611611611611579, 611.0, 0, 612.612612612612565, 612.0, 0, 613.613613613613666, 613.0, 0, 614.614614614614652, 614.0, 0, 615.615615615615638, 615.0, 0, 616.616616616616625, 616.0, 0, 617.617617617617611, 617.0, 0, 618.618618618618711, 618.0, 0, 619.619619619619698, 619.0, 0, 620.620620620620571, 620.0, 0, 621.621621621621557, 621.0, 0, 622.622622622622544, 622.0, 0, 623.623623623623644, 623.0, 0, 624.62462462462463, 624.0, 0, 625.625625625625617, 625.0, 0, 626.626626626626603, 626.0, 0, 627.627627627627589, 627.0, 0, 628.62862862862869, 628.0, 0, 629.629629629629676, 629.0, 0, 630.630630630630662, 630.0, 0, 631.631631631631649, 631.0, 0, 632.632632632632635, 632.0, 0, 633.633633633633622, 633.0, 0, 634.634634634634608, 634.0, 0, 635.635635635635595, 635.0, 0, 636.636636636636581, 636.0, 0, 637.637637637637567, 637.0, 0, 638.638638638638668, 638.0, 0, 639.639639639639654, 639.0, 0, 640.64064064064064, 640.0, 0, 641.641641641641627, 641.0, 0, 642.642642642642613, 642.0, 0, 643.643643643643713, 643.0, 0, 644.6446446446447, 644.0, 0, 645.645645645645686, 645.0, 0, 646.646646646646673, 646.0, 0, 647.647647647647545, 647.0, 0, 648.648648648648646, 648.0, 0, 649.649649649649632, 649.0, 0, 650.650650650650618, 650.0, 0, 651.651651651651605, 651.0, 0, 652.652652652652591, 652.0, 0, 653.653653653653691, 653.0, 0, 654.654654654654678, 654.0, 0, 655.655655655655664, 655.0, 0, 656.656656656656651, 656.0, 0, 657.657657657657751, 657.0, 0, 658.658658658658737, 658.0, 0, 659.659659659659724, 659.0, 0, 660.660660660660596, 660.0, 0, 661.661661661661583, 661.0, 0, 662.662662662662683, 662.0, 0, 663.663663663663669, 663.0, 0, 664.664664664664656, 664.0, 0, 665.665665665665642, 665.0, 0, 666.666666666666629, 666.0, 0, 667.667667667667729, 667.0, 0, 668.668668668668715, 668.0, 0, 669.669669669669702, 669.0, 0, 670.670670670670688, 670.0, 0, 671.671671671671675, 671.0, 0, 672.672672672672775, 672.0, 0, 673.673673673673647, 673.0, 0, 674.674674674674634, 674.0, 0, 675.67567567567562, 675.0, 0, 676.676676676676607, 676.0, 0, 677.677677677677707, 677.0, 0, 678.678678678678693, 678.0, 0, 679.67967967967968, 679.0, 0, 680.680680680680666, 680.0, 0, 681.681681681681653, 681.0, 0, 682.682682682682753, 682.0, 0, 683.683683683683739, 683.0, 0, 684.684684684684726, 684.0, 0, 685.685685685685712, 685.0, 0, 686.686686686686699, 686.0, 0, 687.687687687687685, 687.0, 0, 688.688688688688671, 688.0, 0, 689.689689689689658, 689.0, 0, 690.690690690690644, 690.0, 0, 691.691691691691631, 691.0, 0, 692.692692692692731, 692.0, 0, 693.693693693693717, 693.0, 0, 694.694694694694704, 694.0, 0, 695.69569569569569, 695.0, 0, 696.696696696696677, 696.0, 0, 697.697697697697777, 697.0, 0, 698.698698698698763, 698.0, 0, 699.69969969969975, 699.0, 0, 700.700700700700622, 700.0, 0, 701.701701701701609, 701.0, 0, 702.702702702702709, 702.0, 0, 703.703703703703695, 703.0, 0, 704.704704704704682, 704.0, 0, 705.705705705705668, 705.0, 0, 706.706706706706655, 706.0, 0, 707.707707707707755, 707.0, 0, 708.708708708708741, 708.0, 0, 709.709709709709728, 709.0, 0, 710.710710710710714, 710.0, 0, 711.7117117117117, 711.0, 0, 712.712712712712801, 712.0, 0, 713.713713713713673, 713.0, 0, 714.71471471471466, 714.0, 0, 715.715715715715646, 715.0, 0, 716.716716716716633, 716.0, 0, 717.717717717717733, 717.0, 0, 718.718718718718719, 718.0, 0, 719.719719719719706, 719.0, 0, 720.720720720720692, 720.0, 0, 721.721721721721792, 721.0, 0, 722.722722722722779, 722.0, 0, 723.723723723723765, 723.0, 0, 724.724724724724751, 724.0, 0, 725.725725725725738, 725.0, 0, 726.726726726726724, 726.0, 0, 727.727727727727711, 727.0, 0, 728.728728728728697, 728.0, 0, 729.729729729729684, 729.0, 0, 730.73073073073067, 730.0, 0, 731.73173173173177, 731.0, 0, 732.732732732732757, 732.0, 0, 733.733733733733743, 733.0, 0, 734.734734734734729, 734.0, 0, 735.735735735735716, 735.0, 0, 736.736736736736816, 736.0, 0, 737.737737737737802, 737.0, 0, 738.738738738738789, 738.0, 0, 739.739739739739775, 739.0, 0, 740.740740740740648, 740.0, 0, 741.741741741741748, 741.0, 0, 742.742742742742735, 742.0, 0, 743.743743743743721, 743.0, 0, 744.744744744744708, 744.0, 0, 745.745745745745694, 745.0, 0, 746.746746746746794, 746.0, 0, 747.747747747747781, 747.0, 0, 748.748748748748767, 748.0, 0, 749.749749749749753, 749.0, 0, 750.75075075075074, 750.0, 0, 751.75175175175184, 751.0, 0, 752.752752752752826, 752.0, 0, 753.753753753753699, 753.0, 0, 754.754754754754686, 754.0, 0, 755.755755755755672, 755.0, 0, 756.756756756756772, 756.0, 0, 757.757757757757759, 757.0, 0, 758.758758758758745, 758.0, 0, 759.759759759759731, 759.0, 0, 760.760760760760718, 760.0, 0, 761.761761761761818, 761.0, 0, 762.762762762762804, 762.0, 0, 763.763763763763791, 763.0, 0, 764.764764764764777, 764.0, 0, 765.765765765765764, 765.0, 0, 766.76676676676675, 766.0, 0, 767.767767767767737, 767.0, 0, 768.768768768768723, 768.0, 0, 769.769769769769709, 769.0, 0, 770.770770770770696, 770.0, 0, 771.771771771771796, 771.0, 0, 772.772772772772782, 772.0, 0, 773.773773773773769, 773.0, 0, 774.774774774774755, 774.0, 0, 775.775775775775742, 775.0, 0, 776.776776776776842, 776.0, 0, 777.777777777777828, 777.0, 0, 778.778778778778815, 778.0, 0, 779.779779779779801, 779.0, 0, 780.780780780780674, 780.0, 0, 781.781781781781774, 781.0, 0, 782.78278278278276, 782.0, 0, 783.783783783783747, 783.0, 0, 784.784784784784733, 784.0, 0, 785.785785785785833, 785.0, 0, 786.78678678678682, 786.0, 0, 787.787787787787806, 787.0, 0, 788.788788788788793, 788.0, 0, 789.789789789789779, 789.0, 0, 790.790790790790879, 790.0, 0, 791.791791791791866, 791.0, 0, 792.792792792792852, 792.0, 0, 793.793793793793725, 793.0, 0, 794.794794794794711, 794.0, 0, 795.795795795795812, 795.0, 0, 796.796796796796798, 796.0, 0, 797.797797797797784, 797.0, 0, 798.798798798798771, 798.0, 0, 799.799799799799757, 799.0, 0, 800.800800800800857, 800.0, 0, 801.801801801801844, 801.0, 0, 802.80280280280283, 802.0, 0, 803.803803803803817, 803.0, 0, 804.804804804804803, 804.0, 0, 805.805805805805903, 805.0, 0, 806.806806806806776, 806.0, 0, 807.807807807807762, 807.0, 0, 808.808808808808749, 808.0, 0, 809.809809809809735, 809.0, 0, 810.810810810810835, 810.0, 0, 811.811811811811822, 811.0, 0, 812.812812812812808, 812.0, 0, 813.813813813813795, 813.0, 0, 814.814814814814781, 814.0, 0, 815.815815815815881, 815.0, 0, 816.816816816816868, 816.0, 0, 817.817817817817854, 817.0, 0, 818.818818818818841, 818.0, 0, 819.819819819819827, 819.0, 0, 820.820820820820813, 820.0, 0, 821.8218218218218, 821.0, 0, 822.822822822822786, 822.0, 0, 823.823823823823773, 823.0, 0, 824.824824824824759, 824.0, 0, 825.825825825825859, 825.0, 0, 826.826826826826846, 826.0, 0, 827.827827827827832, 827.0, 0, 828.828828828828819, 828.0, 0, 829.829829829829805, 829.0, 0, 830.830830830830905, 830.0, 0, 831.831831831831892, 831.0, 0, 832.832832832832878, 832.0, 0, 833.833833833833751, 833.0, 0, 834.834834834834737, 834.0, 0, 835.835835835835837, 835.0, 0, 836.836836836836824, 836.0, 0, 837.83783783783781, 837.0, 0, 838.838838838838797, 838.0, 0, 839.839839839839783, 839.0, 0, 840.840840840840883, 840.0, 0, 841.84184184184187, 841.0, 0, 842.842842842842856, 842.0, 0, 843.843843843843842, 843.0, 0, 844.844844844844943, 844.0, 0, 845.845845845845929, 845.0, 0, 846.846846846846802, 846.0, 0, 847.847847847847788, 847.0, 0, 848.848848848848775, 848.0, 0, 849.849849849849875, 849.0, 0, 850.850850850850861, 850.0, 0, 851.851851851851848, 851.0, 0, 852.852852852852834, 852.0, 0, 853.853853853853821, 853.0, 0, 854.854854854854921, 854.0, 0, 855.855855855855907, 855.0, 0, 856.856856856856894, 856.0, 0, 857.85785785785788, 857.0, 0, 858.858858858858866, 858.0, 0, 859.859859859859853, 859.0, 0, 860.860860860860839, 860.0, 0, 861.861861861861826, 861.0, 0, 862.862862862862812, 862.0, 0, 863.863863863863799, 863.0, 0, 864.864864864864899, 864.0, 0, 865.865865865865885, 865.0, 0, 866.866866866866872, 866.0, 0, 867.867867867867858, 867.0, 0, 868.868868868868844, 868.0, 0, 869.869869869869945, 869.0, 0, 870.870870870870931, 870.0, 0, 871.871871871871917, 871.0, 0, 872.872872872872904, 872.0, 0, 873.873873873873777, 873.0, 0, 874.874874874874877, 874.0, 0, 875.875875875875863, 875.0, 0, 876.87687687687685, 876.0, 0, 877.877877877877836, 877.0, 0, 878.878878878878822, 878.0, 0, 879.879879879879923, 879.0, 0, 880.880880880880909, 880.0, 0, 881.881881881881895, 881.0, 0, 882.882882882882882, 882.0, 0, 883.883883883883868, 883.0, 0, 884.884884884884968, 884.0, 0, 885.885885885885955, 885.0, 0, 886.886886886886828, 886.0, 0, 887.887887887887814, 887.0, 0, 888.8888888888888, 888.0, 0, 889.889889889889901, 889.0, 0, 890.890890890890887, 890.0, 0, 891.891891891891873, 891.0, 0, 892.89289289289286, 892.0, 0, 893.893893893893846, 893.0, 0, 894.894894894894946, 894.0, 0, 895.895895895895933, 895.0, 0, 896.896896896896919, 896.0, 0, 897.897897897897906, 897.0, 0, 898.898898898898892, 898.0, 0, 899.899899899899992, 899.0, 0, 900.900900900900865, 900.0, 0, 901.901901901901851, 901.0, 0, 902.902902902902838, 902.0, 0, 903.903903903903824, 903.0, 0, 904.904904904904924, 904.0, 0, 905.905905905905911, 905.0, 0, 906.906906906906897, 906.0, 0, 907.907907907907884, 907.0, 0, 908.908908908908984, 908.0, 0, 909.90990990990997, 909.0, 0, 910.910910910910957, 910.0, 0, 911.911911911911943, 911.0, 0, 912.91291291291293, 912.0, 0, 913.913913913913916, 913.0, 0, 914.914914914914903, 914.0, 0, 915.915915915915889, 915.0, 0, 916.916916916916875, 916.0, 0, 917.917917917917862, 917.0, 0, 918.918918918918962, 918.0, 0, 919.919919919919948, 919.0, 0, 920.920920920920935, 920.0, 0, 921.921921921921921, 921.0, 0, 922.922922922922908, 922.0, 0, 923.923923923924008, 923.0, 0, 924.924924924924994, 924.0, 0, 925.925925925925981, 925.0, 0, 926.926926926926853, 926.0, 0, 927.92792792792784, 927.0, 0, 928.92892892892894, 928.0, 0, 929.929929929929926, 929.0, 0, 930.930930930930913, 930.0, 0, 931.931931931931899, 931.0, 0, 932.932932932932886, 932.0, 0, 933.933933933933986, 933.0, 0, 934.934934934934972, 934.0, 0, 935.935935935935959, 935.0, 0, 936.936936936936945, 936.0, 0, 937.937937937937932, 937.0, 0, 938.938938938939032, 938.0, 0, 939.939939939939904, 939.0, 0, 940.940940940940891, 940.0, 0, 941.941941941941877, 941.0, 0, 942.942942942942864, 942.0, 0, 943.943943943943964, 943.0, 0, 944.94494494494495, 944.0, 0, 945.945945945945937, 945.0, 0, 946.946946946946923, 946.0, 0, 947.94794794794791, 947.0, 0, 948.94894894894901, 948.0, 0, 949.949949949949996, 949.0, 0, 950.950950950950983, 950.0, 0, 951.951951951951969, 951.0, 0, 952.952952952952955, 952.0, 0, 953.953953953953942, 953.0, 0, 954.954954954954928, 954.0, 0, 955.955955955955915, 955.0, 0, 956.956956956956901, 956.0, 0, 957.957957957957888, 957.0, 0, 958.958958958958988, 958.0, 0, 959.959959959959974, 959.0, 0, 960.960960960960961, 960.0, 0, 961.961961961961947, 961.0, 0, 962.962962962962933, 962.0, 0, 963.963963963964034, 963.0, 0, 964.96496496496502, 964.0, 0, 965.965965965966006, 965.0, 0, 966.966966966966879, 966.0, 0, 967.967967967967866, 967.0, 0, 968.968968968968966, 968.0, 0, 969.969969969969952, 969.0, 0, 970.970970970970939, 970.0, 0, 971.971971971971925, 971.0, 0, 972.972972972973025, 972.0, 0, 973.973973973974012, 973.0, 0, 974.974974974974998, 974.0, 0, 975.975975975975985, 975.0, 0, 976.976976976976971, 976.0, 0, 977.977977977978071, 977.0, 0, 978.978978978979058, 978.0, 0, 979.979979979980044, 979.0, 0, 980.980980980980917, 980.0, 0, 981.981981981981903, 981.0, 0, 982.982982982983003, 982.0, 0, 983.98398398398399, 983.0, 0, 984.984984984984976, 984.0, 0, 985.985985985985963, 985.0, 0, 986.986986986986949, 986.0, 0, 987.987987987988049, 987.0, 0, 988.988988988989036, 988.0, 0, 989.989989989990022, 989.0, 0, 990.990990990991008, 990.0, 0, 991.991991991991995, 991.0, 0, 992.992992992993095, 992.0, 0, 993.993993993993968, 993.0, 0, 994.994994994994954, 994.0, 0, 995.995995995995941, 995.0, 0, 996.996996996996927, 996.0, 0, 997.997997997998027, 997.0, 0, 998.998998998999014, 998.0, 0, 1000.0, 999.0, 0 ],
									"id" : "obj-16",
									"maxclass" : "function",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "float", "", "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 340.0, 447.0, 200.0, 100.0 ],
									"range" : [ 0.0, 1000.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 649.571411000000012, 106.528656000000012, 70.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.portal"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 280.0, 100.0, 29.5, 22.0 ],
									"text" : "int"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 280.0, 280.0, 95.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.flat @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 280.0, 134.0, 109.0, 22.0 ],
									"text" : "if $i1 >= 2 then $i1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 352.5, 211.528656000000012, 83.0, 19.0 ],
									"text" : "loadmess (1000)"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.0,
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 322.5, 182.528656000000012, 63.0, 19.0 ],
									"text" : "loadmess (0)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 280.0, 240.0, 83.0, 22.0 ],
									"text" : "bach.interp 1."
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-48",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 280.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-49",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 649.571411000000012, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-50",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 400.666666666666686, 753.333374000000049, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 1 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 1,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"order" : 0,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.009877, 0.009877, 1.0 ],
									"destination" : [ "obj-36", 2 ],
									"source" : [ "obj-15", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 1 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-16", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 3 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 2 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 2 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 3 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-80", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-80", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 0 ],
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-85", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 1 ],
									"source" : [ "obj-87", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-88", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 0 ],
									"midpoints" : [ 739.571411000000012, 522.0, 850.785645000000045, 522.0, 850.785645000000045, 398.0, 876.0, 398.0 ],
									"source" : [ "obj-9", 1 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 429.0, 656.471343994140625, 113.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p bach_bpf_sample"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.89030236326877,
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 136.428558349609375, 145.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 50.0, 129.0, 67.0, 22.0 ],
									"text" : "sel 1 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-35",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 74.0, 212.0, 204.0, 22.0 ],
									"text" : "script sendtoback #0ubutton_deviate"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-36",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 177.0, 203.0, 22.0 ],
									"text" : "script bringtofront #0ubutton_deviate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "int", "int", "int", "int", "int" ],
									"patching_rect" : [ 50.0, 100.0, 74.0, 22.0 ],
									"text" : "modifiers 50"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-45",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 56.000000349609365, 294.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-39", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 122.57144199999999, 221.010752688172033, 73.428558349609375, 18.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p init_shift_click"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 7.616180091036625,
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 122.57144199999999, 241.999992370605469, 49.428558349609375, 17.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"comment" : "break-point function to deviate the incoming profile — flat list of points in function format either linear (prepend linear + 2 values X Y per point) or curve (prepend curve, 3 values X-Y-exp per point) ",
					"id" : "obj-20",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 478.0, 206.999992370605469, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "deviation index between -1 and 1. (init 0)",
					"id" : "obj-3",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 327.238112999999998, 174.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"forceaspect" : 1,
					"id" : "obj-8",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 107.0, 181.666635513305664, 23.790697674418652, 27.159292035398284 ],
					"pic" : "scheme-hex.png",
					"presentation" : 1,
					"presentation_rect" : [ 96.0, 0.833333015441895, 14.155038759689972, 16.159292035398288 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 19.238112999999998, 599.5, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 179.733734130859375, 143.988250732421875, 5.0, 29.5 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 33.238112999999998, 646.0, 226.0, 22.0 ],
					"text" : "load_MOZ_helpfile moz.deviate.maxhelp"
				}

			}
, 			{
				"box" : 				{
					"clickedimage" : 1,
					"id" : "obj-22",
					"maxclass" : "pictctrl",
					"name" : "help.png",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 33.238112999999998, 618.16082763671875, 21.0, 20.80096435546875 ],
					"presentation" : 1,
					"presentation_rect" : [ 188.733734130859375, 147.8419189453125, 19.990030288696289, 19.792673110961914 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 412.571441650390625, 235.999992370605469, 32.0, 22.0 ],
					"text" : "t b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 412.571441650390625, 206.999992370605469, 34.0, 22.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"clickedimage" : 1,
					"id" : "obj-14",
					"maxclass" : "pictctrl",
					"name" : "erase.png",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 412.571441650390625, 180.999984741210938, 37.0, 19.763053894042969 ],
					"presentation" : 1,
					"presentation_rect" : [ 108.333328247070312, 149.725189208984375, 37.0, 19.763053894042969 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 14.0,
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 18.533329010009766, 510.61669921875, 51.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.333333015441895, 148.106719970703125, 51.0, 23.0 ],
					"text" : "lisp:"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 68.0, 556.66668701171875, 34.0, 22.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"clickedimage" : 1,
					"id" : "obj-32",
					"maxclass" : "pictctrl",
					"name" : "stop_process.png",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 68.0, 506.66668701171875, 37.0, 37.5 ],
					"presentation" : 1,
					"presentation_rect" : [ 54.633331298828125, 148.106719970703125, 24.0, 23.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 22.062094355029235,
					"id" : "obj-123",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 12.0, 181.666635513305664, 101.0, 31.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.333333015441895, -2.166666984558105, 101.0, 31.0 ],
					"text" : "DEVIATE"
				}

			}
, 			{
				"box" : 				{
					"contdata" : 1,
					"id" : "obj-2",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"orientation" : 0,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 12.0, 320.0, 160.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.333333015441895, 25.833332061767578, 211.0, 24.333333969116211 ],
					"slidercolor" : [ 0.952941176470588, 0.564705882352941, 0.098039215686275, 1.0 ],
					"thickness" : 3
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 12.0, 241.999992370605469, 60.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"handoff" : "",
					"id" : "obj-4",
					"maxclass" : "ubutton",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 172.904785000000004, 467.981200999999999, 35.0, 18.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Bold",
					"fontsize" : 10.375007,
					"id" : "obj-71",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 172.904785000000004, 467.981200999999999, 38.0, 19.0 ],
					"text" : "kill",
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 231.57144199999999, 283.0, 71.0, 22.0 ],
					"text" : "bach.round"
				}

			}
, 			{
				"box" : 				{
					"comment" : "flat list of midicents",
					"id" : "obj-19",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 178.238112999999998, 593.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "flat list of midicents",
					"id" : "obj-18",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 167.57144199999999, 6.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 12.0, 416.0, 30.0, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 429.0, 688.0, 30.0, 22.0 ],
					"text" : "t b l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 12.0, 383.166626000000008, 41.0, 22.0 ],
					"text" : "round"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 12.0, 350.166626000000008, 35.0, 22.0 ],
					"text" : "* 60."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 12.0, 283.0, 29.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 231.57144199999999, 397.0, 96.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"versionnumber" : 80001
					}
,
					"text" : "bach.reg @out t"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
						"rect" : [ 269.0, 154.0, 1137.0, 783.0 ],
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
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 236.0, 498.67431600000009, 137.0, 22.0 ],
									"text" : "loadmess randompath 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 588.666687000000024, 358.0, 79.0, 22.0 ],
									"text" : "pw.g- 1 1000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 588.666687000000024, 433.0, 174.0, 22.0 ],
									"text" : "pw.x-transfer"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 708.0, 336.0, 141.0, 22.0 ],
									"text" : "pw.interpolation 0 1 10 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 588.666687000000024, 324.0, 59.0, 22.0 ],
									"text" : "pw.quote"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 588.666687000000024, 393.0, 88.0, 22.0 ],
									"text" : "pw.group-list 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 106.0, 260.0, 59.0, 22.0 ],
									"text" : "pw.quote"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 106.0, 214.0, 66.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.wrap"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 92.0, 468.0, 764.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.append 4 @set jbs-profile::control-perturbation @outwrap 1 @triggers 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 726.0, 532.518798999999944, 54.0, 33.0 ],
									"text" : "kill the process"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 81.695189999999997, 545.518798999999944, 76.0, 20.0 ],
									"text" : "bang to eval"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "bang" ],
									"patching_rect" : [ 59.0, 572.0, 355.0, 22.0 ],
									"text" : "pw.eval-box jbs-profile /temp/deviate-in.lisp /temp/deviate-out.lisp"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-87",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 412.299987999999985, 545.518798999999944, 223.0, 20.0 ],
									"text" : "<== send the code to be evaluated here"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 10.0, 484.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 789.333312999999976, 242.0, 56.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.flat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 789.333312999999976, 297.0, 73.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.length"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 588.666687000000024, 292.0, 66.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.wrap"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 59.0, 23.0, 25.0, 20.0 ],
									"text" : "list"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 836.0, 390.0, 30.0, 20.0 ],
									"text" : "fact"
								}

							}
, 							{
								"box" : 								{
									"annotation" : "debug?",
									"comment" : "",
									"id" : "obj-37",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 837.0, 414.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 587.666687000000024, 216.0, 41.0, 20.0 ],
									"text" : "profile"
								}

							}
, 							{
								"box" : 								{
									"annotation" : "rnd?",
									"comment" : "",
									"id" : "obj-4",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 588.666687000000024, 240.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "", "" ],
									"patching_rect" : [ 59.0, 108.0, 113.0, 22.0 ],
									"text" : "t b l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1406.0, 44.0, 237.0, 22.0 ],
									"text" : "sprintf (make-list %ld :initial-element '(%s))"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1406.0, 77.0, 59.0, 22.0 ],
									"text" : "tosymbol"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-44",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 59.0, 46.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-49",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 59.0, 616.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 1 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 2 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 2 ],
									"midpoints" : [ 19.5, 531.5, 404.5, 531.5 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 1 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 1 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 2 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 3 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-39", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"midpoints" : [ 162.5, 201.0, 798.833312999999976, 201.0 ],
									"source" : [ "obj-39", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "message001",
								"default" : 								{
									"textcolor_inverse" : [ 0.92549, 0.364706, 0.341176, 1.0 ],
									"fontname" : [ "Arial" ],
									"fontsize" : [ 13.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "orjan style",
								"default" : 								{
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
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
									"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
									"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
									"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 178.238112999999998, 495.0, 179.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p control-perturb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 128.166626000000008, 56.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.flat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 156.0, 107.0, 22.0 ],
									"text" : "bach.* 100 @out t"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-40",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-41",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 272.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 178.238112999999998, 544.0, 55.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p format"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 231.57144199999999, 219.0, 67.0, 22.0 ],
					"text" : "bach./ 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 231.57144199999999, 249.0, 125.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80001
					}
,
					"text" : "bach.flat @minlevel 2"
				}

			}
, 			{
				"box" : 				{
					"handoff" : "",
					"hltcolor" : [ 0.474509803921569, 0.694117647058824, 1.0, 0.0 ],
					"id" : "obj-27",
					"maxclass" : "ubutton",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 75.714279000000005, 241.999992370605469, 37.57144199999999, 15.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.333333015441895, 25.833332061767578, 211.0, 24.333333969116211 ],
					"varname" : "#0ubutton_deviate"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 422.071441650390625, 329.0, 201.702377319335938, 329.0, 201.702377319335938, 276.0, 21.5, 276.0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"source" : [ "obj-11", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-24", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 1 ],
					"source" : [ "obj-24", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 1 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"midpoints" : [ 487.5, 614.471343994140625, 532.5, 614.471343994140625 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-26", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-28", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"midpoints" : [ 717.5, 604.99999999414058, 471.0, 604.99999999414058, 471.0, 375.499999994140637, 487.5, 375.499999994140637 ],
					"source" : [ "obj-29", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 336.738112999999998, 311.5, 21.5, 311.5 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 2 ],
					"midpoints" : [ 449.5, 722.0, 365.285733333333383, 722.0, 365.285733333333383, 484.0, 294.404779666666684, 484.0 ],
					"source" : [ "obj-40", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"midpoints" : [ 438.5, 717.0, 375.119064500000036, 717.0, 375.119064500000036, 386.0, 241.07144199999999, 386.0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 3 ],
					"midpoints" : [ 32.5, 458.583312999999976, 347.738112999999998, 458.583312999999976 ],
					"source" : [ "obj-41", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"midpoints" : [ 21.5, 448.0, 131.285720999999995, 448.0, 131.285720999999995, 385.0, 241.07144199999999, 385.0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-50", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"midpoints" : [ 532.5, 493.235671994140603, 536.5, 493.235671994140603 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"midpoints" : [ 640.5, 494.235671997070312, 536.5, 494.235671997070312 ],
					"source" : [ "obj-58", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-61", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 1 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "bach.div.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.times.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.eval-box.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_code_generators_legacy",
				"patcherrelativepath" : "../pw4m_lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "make_path_once.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_code_generators_legacy",
				"patcherrelativepath" : "../pw4m_lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.quote.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_code_generators_legacy",
				"patcherrelativepath" : "../pw4m_lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.group-list.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_code_generators_legacy",
				"patcherrelativepath" : "../pw4m_lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.interpolation.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_code_generators_legacy",
				"patcherrelativepath" : "../pw4m_lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.x-transfer.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_code_generators_legacy",
				"patcherrelativepath" : "../pw4m_lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.g-.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_code_generators_legacy",
				"patcherrelativepath" : "../pw4m_lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.round.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "stop_process.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "erase.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "help.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "load_MOZ_helpfile.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "scheme-hex.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "bach.interp.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.scale.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bpatcher-resize.js",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../utilities",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "bpatcher-resize-gizmo.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.rminus.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.flat.mxo",
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
				"name" : "bach.wrap.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.length.mxo",
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
				"name" : "bach.collect.mxo",
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
				"name" : "bach.group.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.minmax.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.nth.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.mapelem.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.pick.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.eq.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.slice.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.keys.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "MOZ-numint",
				"default" : 				{
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontname" : [ "Menlo Regular" ],
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"fontsize" : [ 17.0 ],
					"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ]
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
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
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
					"fontname" : [ "Menlo Regular" ],
					"fontface" : [ 2 ],
					"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
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
					"textcolor_inverse" : [ 0.92549, 0.364706, 0.341176, 1.0 ],
					"fontname" : [ "Arial" ],
					"fontsize" : [ 13.0 ]
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
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
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
					"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
					"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
					"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
