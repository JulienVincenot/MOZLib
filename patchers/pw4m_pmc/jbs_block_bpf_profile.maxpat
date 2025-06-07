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
		"rect" : [ 421.0, -1001.0, 458.0, 746.0 ],
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
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "", "", "" ],
					"patching_rect" : [ 19.166605631510407, 48.0, 167.0, 23.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80300
					}
,
					"text" : "bach.args 2 @ins 1 @out t"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
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
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 50.0, 135.0, 32.0, 22.0 ],
									"text" : "t b b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 50.0, 100.0, 34.0, 22.0 ],
									"text" : "sel 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 63.0, 168.5, 81.0, 22.0 ],
									"text" : "clear, 0 0, 1 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-5",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.000000035156233, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-7",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.000000035156233, 250.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-10",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 85.000000035156233, 250.5, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 228.99987796484379, 277.5, 94.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p delete"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-8",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 83.49993896484375, 98.0, 142.0, 21.0 ],
					"text" : "linear 0 1 0.5 2 0.75 0.5 1 1"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.0,
					"id" : "obj-9",
					"linecount" : 3,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 236.49993896484375, 78.0, 202.0, 45.0 ],
					"text" : "curve 0. 0. 0. 0.198238 0.654762 0.35 0.421439 0.113095 -0.795 0.537445 1. 0.5 0.782673 0. 0.695 1. 1. 0.4"
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
							"minor" : 6,
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
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 666.0, 476.0, 155.0, 22.0 ],
									"text" : "bach.scale 0. 1. 0. 1 @out t"
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
											"minor" : 6,
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
									"patching_rect" : [ 33.5, 367.0, 155.0, 22.0 ],
									"text" : "bach.scale 0. 1. 0. 1 @out t"
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
									"patching_rect" : [ 666.0, 524.0, 329.5, 22.0 ],
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
									"patching_rect" : [ 821.25, 432.0, 227.0, 22.0 ],
									"text" : "bach.scale 0. 1. 0. 1. @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-87",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 34.5, 397.0, 228.5, 22.0 ],
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
									"patching_rect" : [ 244.25, 337.0, 158.0, 22.0 ],
									"text" : "bach.scale 0. 1. 0. 1. @out t"
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
											"minor" : 6,
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
									"patching_rect" : [ 623.0, 563.0, 74.0, 22.0 ],
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
									"destination" : [ "obj-95", 0 ],
									"source" : [ "obj-11", 0 ]
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
									"destination" : [ "obj-87", 0 ],
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
									"destination" : [ "obj-87", 1 ],
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
									"midpoints" : [ 44.0, 425.0, 512.0, 425.0 ],
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
									"destination" : [ "obj-95", 1 ],
									"source" : [ "obj-97", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "MOZ-numint",
								"default" : 								{
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"fontsize" : [ 17.846569953152443 ],
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
					"patching_rect" : [ 68.49993896484375, 136.0, 172.0, 22.0 ],
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
					"clickedimage" : 1,
					"id" : "obj-14",
					"maxclass" : "pictctrl",
					"name" : "erase.png",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 228.9998779296875, 254.3828125, 37.0, 19.763053894042969 ],
					"presentation" : 1,
					"presentation_rect" : [ 11.5714111328125, 32.0, 27.63909912109375, 14.763053894042969 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "float" ],
					"patching_rect" : [ 136.333251953125, 275.5, 39.0, 22.0 ],
					"text" : "t f f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 136.333251953125, 462.0, 93.0, 22.0 ],
					"text" : "join @triggers 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "listdump", "bang", "clear" ],
					"patching_rect" : [ 68.333251953125, 186.0, 99.0, 22.0 ],
					"text" : "t listdump b clear"
				}

			}
, 			{
				"box" : 				{
					"addpoints" : [ 0.002, 0.002437968015931, 0, 0.004, 0.004919603874556, 0, 0.006, 0.007445689735637, 0, 0.008, 0.01001702176865, 0, 0.01, 0.012634410403717, 0, 0.012, 0.01529868058704, 0, 0.014, 0.018010672040904, 0, 0.016, 0.020771239528342, 0, 0.018, 0.023581253122537, 0, 0.02, 0.026441598481053, 0, 0.022, 0.029353177124973, 0, 0.024, 0.03231690672304, 0, 0.026, 0.03533372138089, 0, 0.028, 0.038404571935461, 0, 0.03, 0.041530426254673, 0, 0.032, 0.044712269542486, 0, 0.034, 0.047951104649413, 0, 0.036, 0.051247952388596, 0, 0.038, 0.054603851857547, 0, 0.04, 0.058019860765649, 0, 0.042, 0.061497055767524, 0, 0.044, 0.065036532802373, 0, 0.046, 0.068639407439392, 0, 0.048, 0.072306815229375, 0, 0.05, 0.076039912062618, 0, 0.052, 0.079839874533232, 0, 0.054, 0.083707900309979, 0, 0.056, 0.087645208513751, 0, 0.058, 0.091653040101814, 0, 0.06, 0.095732658258934, 0, 0.062, 0.099885348795498, 0, 0.064, 0.104112420552784, 0, 0.066, 0.108415205815476, 0, 0.068, 0.112795060731571, 0, 0.07, 0.117253365739812, 0, 0.072, 0.121791526004769, 0, 0.074, 0.126410971859724, 0, 0.076, 0.131113159257474, 0, 0.078, 0.135899570229226, 0, 0.08, 0.140771713351694, 0, 0.082, 0.145731124222574, 0, 0.084, 0.150779365944535, 0, 0.086, 0.155918029617873, 0, 0.088, 0.161148734841993, 0, 0.09, 0.166473130225873, 0, 0.092, 0.171892893907673, 0, 0.094, 0.177409734083647, 0, 0.096, 0.183025389546531, 0, 0.098, 0.188741630233573, 0, 0.1, 0.194560257784385, 0, 0.102, 0.200483106108777, 0, 0.104, 0.206512041964767, 0, 0.106, 0.21264896554695, 0, 0.108, 0.218895811085393, 0, 0.11, 0.225254547455266, 0, 0.112, 0.231727178797394, 0, 0.114, 0.238315745149913, 0, 0.116, 0.245022323091255, 0, 0.118, 0.251849026394637, 0, 0.12, 0.25879800669428, 0, 0.122, 0.26587145416356, 0, 0.124, 0.273071598205301, 0, 0.126, 0.280400708154443, 0, 0.128, 0.287861093993281, 0, 0.13, 0.29545510707953, 0, 0.132, 0.30318514088742, 0, 0.134, 0.31105363176207, 0, 0.136, 0.319063059687373, 0, 0.138, 0.327215949067634, 0, 0.14, 0.335514869523213, 0, 0.142, 0.343962436700412, 0, 0.144, 0.352561313095872, 0, 0.146, 0.361314208895741, 0, 0.148, 0.370223882829862, 0, 0.15, 0.379293143041269, 0, 0.152, 0.388524847971259, 0, 0.154, 0.397921907260306, 0, 0.156, 0.407487282665125, 0, 0.158, 0.417223988992152, 0, 0.16, 0.427135095047751, 0, 0.162, 0.437223724605433, 0, 0.164, 0.44749305739041, 0, 0.166, 0.457946330081774, 0, 0.168, 0.46858683733263, 0, 0.17, 0.479417932808506, 0, 0.172, 0.490443030244355, 0, 0.174, 0.501665604520493, 0, 0.176, 0.513089192757809, 0, 0.178, 0.524717395432593, 0, 0.18, 0.53655387751133, 0, 0.182, 0.548602369605818, 0, 0.184, 0.560866669148986, 0, 0.186, 0.573350641591757, 0, 0.188, 0.586058221621362, 0, 0.19, 0.598993414401473, 0, 0.192, 0.612160296834543, 0, 0.194, 0.625563018846761, 0, 0.196, 0.639205804696023, 0, 0.198, 0.653092954303332, 0, 0.2, 0.620356591455663, 0, 0.202, 0.583943648891394, 0, 0.204, 0.550143863640906, 0, 0.206, 0.518769703726125, 0, 0.208, 0.489647095311208, 0, 0.21, 0.462614456885437, 0, 0.212, 0.437521802757513, 0, 0.214, 0.414229910887152, 0, 0.216, 0.392609550436846, 0, 0.218, 0.372540764757998, 0, 0.22, 0.353912205833218, 0, 0.222, 0.33662051648204, 0, 0.224, 0.320569756902354, 0, 0.226, 0.305670872365817, 0, 0.228, 0.291841199113843, 0, 0.23, 0.279004005712729, 0, 0.232, 0.267088067323218, 0, 0.234, 0.256027270522392, 0, 0.236, 0.245760246485338, 0, 0.238, 0.236230030491354, 0, 0.24, 0.227383745865527, 0, 0.242, 0.219172310602092, 0, 0.244, 0.211550165041829, 0, 0.246, 0.204475019092551, 0, 0.248, 0.197907617590204, 0, 0.25, 0.191811522498706, 0, 0.252, 0.186152910740111, 0, 0.254, 0.1809003865334, 0, 0.256, 0.176024807200682, 0, 0.258, 0.171499121474329, 0, 0.26, 0.16729821940793, 0, 0.262, 0.163398793058301, 0, 0.264, 0.159779207165595, 0, 0.266, 0.156419379113983, 0, 0.268, 0.153300667506906, 0, 0.27, 0.150405768738662, 0, 0.272, 0.147718620988494, 0, 0.274, 0.145224315104489, 0, 0.276, 0.142909011882851, 0, 0.278, 0.140759865283588, 0, 0.28, 0.138764951156594, 0, 0.282, 0.136913201082659, 0, 0.284, 0.135194340962356, 0, 0.286, 0.133598834012065, 0, 0.288, 0.132117827850854, 0, 0.29, 0.130743105384653, 0, 0.292, 0.129467039215197, 0, 0.294, 0.128282549320789, 0, 0.296, 0.127183063774086, 0, 0.298, 0.126162482278948, 0, 0.3, 0.125215142324058, 0, 0.302, 0.124335787765497, 0, 0.304, 0.123519539663989, 0, 0.306, 0.122761869214989, 0, 0.308, 0.122058572621432, 0, 0.31, 0.121405747769728, 0, 0.312, 0.120799772579592, 0, 0.314, 0.12023728490759, 0, 0.316, 0.119715163892895, 0, 0.318, 0.119230512641754, 0, 0.32, 0.118780642154605, 0, 0.322, 0.118363056406643, 0, 0.324, 0.117975438499086, 0, 0.326, 0.117615637804277, 0, 0.328, 0.117281658033319, 0, 0.33, 0.116971646160027, 0, 0.332, 0.116683882139752, 0, 0.334, 0.116416769366019, 0, 0.336, 0.11616882581205, 0, 0.338, 0.115938675808008, 0, 0.34, 0.115725042408336, 0, 0.342, 0.115526740306865, 0, 0.344, 0.115342669260352, 0, 0.346, 0.11517180798398, 0, 0.348, 0.115013208484948, 0, 0.35, 0.1148659908027, 0, 0.352, 0.114729338126629, 0, 0.354, 0.114602492264145, 0, 0.356, 0.114484749433988, 0, 0.358, 0.114375456361421, 0, 0.36, 0.114274006653652, 0, 0.362, 0.114179837435378, 0, 0.364, 0.114092426225772, 0, 0.366, 0.114011288039591, 0, 0.368, 0.113935972696326, 0, 0.37, 0.113866062322455, 0, 0.372, 0.113801169032948, 0, 0.374, 0.113740932779157, 0, 0.376, 0.113685019351156, 0, 0.378, 0.113633118523428, 0, 0.38, 0.113584942333646, 0, 0.382, 0.113540223484958, 0, 0.384, 0.113498713862942, 0, 0.386, 0.11346018315899, 0, 0.388, 0.11342441759248, 0, 0.39, 0.113391218724652, 0, 0.392, 0.11336040235761, 0, 0.394, 0.113331797512331, 0, 0.396, 0.113305245480018, 0, 0.398, 0.113280598941537, 0, 0.4, 0.113257721150038, 0, 0.402, 0.113236485172246, 0, 0.404, 0.113216773184188, 0, 0.406, 0.113198475817474, 0, 0.408, 0.113181491552485, 0, 0.41, 0.113165726155105, 0, 0.412, 0.113151092153887, 0, 0.414, 0.11313750835473, 0, 0.416, 0.113124899390388, 0, 0.418, 0.113113195302309, 0, 0.42, 0.113102331152482, 0, 0.422, 0.113868269751401, 0, 0.424, 0.116712363832787, 0, 0.426, 0.119698018483844, 0, 0.428, 0.12283227967222, 0, 0.43, 0.126122544068165, 0, 0.432, 0.129576576500233, 0, 0.434, 0.133202528279817, 0, 0.436, 0.13700895643776, 0, 0.438, 0.141004843918436, 0, 0.44, 0.14519962077897, 0, 0.442, 0.149603186443612, 0, 0.444, 0.154225933065786, 0, 0.446, 0.159078770052959, 0, 0.448, 0.164173149812196, 0, 0.45, 0.169521094777154, 0, 0.452, 0.175135225780318, 0, 0.454, 0.181028791837413, 0, 0.456, 0.187215701414293, 0, 0.458, 0.1937105552501, 0, 0.46, 0.200528680814132, 0, 0.462, 0.207686168477769, 0, 0.464, 0.215199909486789, 0, 0.466, 0.223087635823707, 0, 0.468, 0.231367962054198, 0, 0.47, 0.240060429256368, 0, 0.472, 0.249185551136539, 0, 0.474, 0.258764862440375, 0, 0.476, 0.268820969773606, 0, 0.478, 0.279377604952269, 0, 0.48, 0.290459681008392, 0, 0.482, 0.302093350983265, 0, 0.484, 0.314306069647063, 0, 0.486, 0.327126658290478, 0, 0.488, 0.340585372741249, 0, 0.49, 0.35471397476612, 0, 0.492, 0.369545807026722, 0, 0.494, 0.385115871766278, 0, 0.496, 0.401460913412811, 0, 0.498, 0.418619505293819, 0, 0.5, 0.436632140667033, 0, 0.502, 0.455541328282101, 0, 0.504, 0.475391692698713, 0, 0.506, 0.496230079597908, 0, 0.508, 0.518105666335105, 0, 0.51, 0.541070077995737, 0, 0.512, 0.565177509227387, 0, 0.514, 0.590484852135938, 0, 0.516, 0.617051830547562, 0, 0.518, 0.644941140953406, 0, 0.52, 0.674218600469585, 0, 0.522, 0.704953302161667, 0, 0.524, 0.737217778100206, 0, 0.526, 0.771088170532115, 0, 0.528, 0.806644411571855, 0, 0.53, 0.843970411836472, 0, 0.532, 0.883154258469667, 0, 0.534, 0.924288423022233, 0, 0.536, 0.96746997967941, 0, 0.538, 0.999946031559569, 0, 0.54, 0.999745944704426, 0, 0.542, 0.999536779862039, 0, 0.544, 0.99931812516201, 0, 0.546, 0.999089550047289, 0, 0.548, 0.998850604426347, 0, 0.55, 0.998600817786902, 0, 0.552, 0.998339698269417, 0, 0.554, 0.998066731698575, 0, 0.556, 0.997781380570804, 0, 0.558, 0.997483082995871, 0, 0.56, 0.997171251590451, 0, 0.562, 0.996845272321501, 0, 0.564, 0.996504503297155, 0, 0.566, 0.996148273502765, 0, 0.568, 0.995775881479592, 0, 0.57, 0.995386593943548, 0, 0.572, 0.994979644341279, 0, 0.574, 0.994554231340722, 0, 0.576, 0.994109517253197, 0, 0.578, 0.993644626383888, 0, 0.58, 0.993158643307505, 0, 0.582, 0.992650611065698, 0, 0.584, 0.992119529282693, 0, 0.586, 0.991564352195435, 0, 0.588, 0.990983986594355, 0, 0.59, 0.990377289670711, 0, 0.592, 0.989743066766263, 0, 0.594, 0.989080069020846, 0, 0.596, 0.988386990913221, 0, 0.598, 0.987662467690346, 0, 0.6, 0.986905072680012, 0, 0.602, 0.986113314481563, 0, 0.604, 0.985285634029147, 0, 0.606, 0.984420401521731, 0, 0.608, 0.983515913213827, 0, 0.61, 0.982570388060621, 0, 0.612, 0.981581964210877, 0, 0.614, 0.980548695340738, 0, 0.616, 0.979468546821177, 0, 0.618, 0.978339391711577, 0, 0.62, 0.977159006571527, 0, 0.622, 0.975925067082606, 0, 0.624, 0.974635143471528, 0, 0.626, 0.973286695725625, 0, 0.628, 0.97187706859126, 0, 0.63, 0.970403486345323, 0, 0.632, 0.968863047329498, 0, 0.634, 0.967252718236557, 0, 0.636, 0.965569328137413, 0, 0.638, 0.96380956223719, 0, 0.64, 0.961969955347995, 0, 0.642, 0.960046885065552, 0, 0.644, 0.958036564636262, 0, 0.646, 0.955935035500628, 0, 0.648, 0.953738159498391, 0, 0.65, 0.951441610719994, 0, 0.652, 0.949040866988355, 0, 0.654, 0.946531200954165, 0, 0.656, 0.943907670787176, 0, 0.658, 0.941165110445148, 0, 0.66, 0.938298119501302, 0, 0.662, 0.935301052510238, 0, 0.664, 0.932168007891382, 0, 0.666, 0.928892816308074, 0, 0.668, 0.925469028519412, 0, 0.67, 0.921889902680931, 0, 0.672, 0.918148391069114, 0, 0.674, 0.914237126203583, 0, 0.676, 0.910148406339658, 0, 0.678, 0.905874180302712, 0, 0.68, 0.901406031634445, 0, 0.682, 0.896735162019884, 0, 0.684, 0.891852373962456, 0, 0.686, 0.886748052673024, 0, 0.688, 0.881412147137229, 0, 0.69, 0.875834150323847, 0, 0.692, 0.870003078495198, 0, 0.694, 0.863907449578867, 0, 0.696, 0.857535260558136, 0, 0.698, 0.85087396383662, 0, 0.7, 0.843910442530564, 0, 0.702, 0.83663098464014, 0, 0.704, 0.829021256048894, 0, 0.706, 0.821066272298164, 0, 0.708, 0.81275036908091, 0, 0.71, 0.804057171396831, 0, 0.712, 0.794969561308047, 0, 0.714, 0.785469644231845, 0, 0.716, 0.775538713704126, 0, 0.718, 0.765157214544157, 0, 0.72, 0.754304704348094, 0, 0.722, 0.742959813235472, 0, 0.724, 0.731100201769365, 0, 0.726, 0.718702516967391, 0, 0.728, 0.705742346316915, 0, 0.73, 0.692194169703912, 0, 0.732, 0.678031309160841, 0, 0.734, 0.663225876334554, 0, 0.736, 0.647748717570822, 0, 0.738, 0.631569356507331, 0, 0.74, 0.614655934062107, 0, 0.742, 0.596975145699202, 0, 0.744, 0.57849217584811, 0, 0.746, 0.559170629347781, 0, 0.748, 0.538972459780224, 0, 0.75, 0.5178578945526, 0, 0.752, 0.495785356580264, 0, 0.754, 0.47271138241655, 0, 0.756, 0.448590536668091, 0, 0.758, 0.423375322527135, 0, 0.76, 0.397016088244692, 0, 0.762, 0.369460929360352, 0, 0.764, 0.34065558649624, 0, 0.766, 0.310543338513863, 0, 0.768, 0.279064890823457, 0, 0.77, 0.246158258625902, 0, 0.772, 0.211758644857298, 0, 0.774, 0.175798312595858, 0, 0.776, 0.138206451679865, 0, 0.778, 0.098909039274068, 0, 0.78, 0.057828694109929, 0, 0.782, 0.014884524112724, 0, 0.784, 0.001845333439805, 0, 0.786, 0.004670834053207, 0, 0.788, 0.007550489108145, 0, 0.79, 0.010485336545831, 0, 0.792, 0.013476434200992, 0, 0.794, 0.016524860183149, 0, 0.796, 0.019631713265212, 0, 0.798, 0.022798113279523, 0, 0.8, 0.026025201521483, 0, 0.802, 0.029314141160926, 0, 0.804, 0.032666117661368, 0, 0.806, 0.036082339207291, 0, 0.808, 0.039564037139631, 0, 0.81, 0.043112466399588, 0, 0.812, 0.046728905980969, 0, 0.814, 0.05041465939118, 0, 0.816, 0.054171055121062, 0, 0.818, 0.057999447123737, 0, 0.82, 0.061901215302618, 0, 0.822, 0.065877766008789, 0, 0.824, 0.069930532547901, 0, 0.826, 0.074060975696799, 0, 0.828, 0.07827058423004, 0, 0.83, 0.082560875456507, 0, 0.832, 0.086933395766304, 0, 0.834, 0.091389721188142, 0, 0.836, 0.095931457957397, 0, 0.838, 0.100560243095062, 0, 0.84, 0.105277744997794, 0, 0.842, 0.11008566403927, 0, 0.844, 0.114985733183069, 0, 0.846, 0.119979718607298, 0, 0.848, 0.125069420341196, 0, 0.85, 0.130256672913933, 0, 0.852, 0.135543346015849, 0, 0.854, 0.14093134517236, 0, 0.856, 0.146422612430788, 0, 0.858, 0.152019127060351, 0, 0.86, 0.157722906265568, 0, 0.862, 0.16353600591334, 0, 0.864, 0.169460521273967, 0, 0.866, 0.175498587776362, 0, 0.868, 0.181652381777749, 0, 0.87, 0.187924121348103, 0, 0.872, 0.194316067069635, 0, 0.874, 0.200830522851589, 0, 0.876, 0.207469836760667, 0, 0.878, 0.214236401867362, 0, 0.88, 0.221132657108514, 0, 0.882, 0.228161088166404, 0, 0.884, 0.235324228364685, 0, 0.886, 0.242624659581497, 0, 0.888, 0.250065013180077, 0, 0.89, 0.257647970957202, 0, 0.892, 0.265376266109819, 0, 0.894, 0.273252684220196, 0, 0.896, 0.281280064259952, 0, 0.898, 0.289461299613341, 0, 0.9, 0.297799339120134, 0, 0.902, 0.306297188138504, 0, 0.904, 0.314957909628271, 0, 0.906, 0.323784625254915, 0, 0.908, 0.332780516514749, 0, 0.91, 0.341948825881652, 0, 0.912, 0.351292857975788, 0, 0.914, 0.360815980754719, 0, 0.916, 0.370521626727351, 0, 0.918, 0.380413294191145, 0, 0.92, 0.390494548493042, 0, 0.922, 0.400769023314552, 0, 0.924, 0.411240421981482, 0, 0.926, 0.421912518798753, 0, 0.928, 0.432789160410814, 0, 0.93, 0.443874267188121, 0, 0.932, 0.455171834640196, 0, 0.934, 0.466685934855765, 0, 0.936, 0.478420717970496, 0, 0.938, 0.490380413662878, 0, 0.94, 0.502569332678758, 0, 0.942, 0.514991868385106, 0, 0.944, 0.52765249835356, 0, 0.946, 0.540555785974315, 0, 0.948, 0.553706382100951, 0, 0.95, 0.567109026726785, 0, 0.952, 0.580768550693349, 0, 0.954, 0.594689877431618, 0, 0.956, 0.608878024736609, 0, 0.958, 0.623338106575987, 0, 0.96, 0.638075334933346, 0, 0.962, 0.653095021686816, 0, 0.964, 0.668402580523663, 0, 0.966, 0.684003528891605, 0, 0.968, 0.699903489987513, 0, 0.97, 0.716108194784233, 0, 0.972, 0.732623484096258, 0, 0.974, 0.749455310684984, 0, 0.976, 0.76660974140432, 0, 0.978, 0.784092959387425, 0, 0.98, 0.801911266275349, 0, 0.982, 0.820071084488394, 0, 0.984, 0.838578959541009, 0, 0.986, 0.857441562401051, 0, 0.988, 0.876665691894263, 0, 0.99, 0.89625827715484, 0, 0.992, 0.916226380122962, 0, 0.994, 0.936577198090197, 0, 0.996, 0.957318066293688, 0, 0.998, 0.978456460560059, 0, 1.0, 1.0, 0 ],
					"classic_curve" : 1,
					"domain" : 1.0,
					"id" : "obj-61",
					"maxclass" : "function",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "", "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 136.333251953125, 498.0, 123.0, 53.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 136.333251953125, 248.5, 39.0, 22.0 ],
					"text" : "/ 500."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "int" ],
					"patching_rect" : [ 108.333251953125, 218.0, 47.0, 22.0 ],
					"text" : "uzi 500"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 356.333251953125, 462.0, 22.0, 22.0 ],
					"text" : "t b"
				}

			}
, 			{
				"box" : 				{
					"addpoints_with_curve" : [ 0.0, 0.0, 0, 0.0, 0.198238, 0.654762, 0, 0.35, 0.421439, 0.113095, 0, -0.795, 0.537445, 1.0, 0, 0.5, 0.782673, 0.0, 0, 0.695, 1.0, 1.0, 0, 0.4 ],
					"classic_curve" : 1,
					"domain" : 1.0,
					"id" : "obj-23",
					"legend" : 0,
					"linecolor" : [ 1.0, 0.941176470588235, 0.941176470588235, 1.0 ],
					"maxclass" : "function",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "float", "", "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 136.333251953125, 323.5, 239.0, 109.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 43.0, -1.0, 128.0, 50.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 205.66656494140625, 611.0, 57.0, 22.0 ],
					"text" : "pw.quote"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 205.66656494140625, 558.0, 79.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80003
					}
,
					"text" : "bach.group 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 205.66656494140625, 584.0, 64.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80003
					}
,
					"text" : "bach.wrap"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 284.33319091796875, 48.0, 72.0, 22.0 ],
					"text" : "patcherargs"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 284.33319091796875, 17.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-3",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 205.66656494140625, 642.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-2",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 19.166605631510407, 15.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Menlo Regular",
					"fontsize" : 9.0,
					"id" : "obj-151",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 62.0, 15.0, 46.0, 27.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ -3.0, -2.0, 46.0, 27.0 ],
					"text" : "BPF PROFILE",
					"textjustification" : 2
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"midpoints" : [ 313.49987796484379, 311.0, 145.833251953125, 311.0 ],
					"source" : [ "obj-11", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"midpoints" : [ 238.49987796484379, 302.0, 184.99993896484375, 302.0, 184.99993896484375, 174.0, 77.833251953125, 174.0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-23", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 1 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
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
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-5", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"midpoints" : [ 127.333272298177079, 87.0, 53.0, 87.0, 53.0, 173.0, 77.833251953125, 173.0 ],
					"source" : [ "obj-5", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"midpoints" : [ 365.833251953125, 493.0, 410.333251953125, 493.0, 410.333251953125, 176.0, 77.833251953125, 176.0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-56", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-58", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-61", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-63", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"midpoints" : [ 157.833251953125, 243.0, 121.99993896484375, 243.0, 121.99993896484375, 492.0, 145.833251953125, 492.0 ],
					"source" : [ "obj-63", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"midpoints" : [ 77.833251953125, 492.0, 145.833251953125, 492.0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"midpoints" : [ 165.833251953125, 309.0, 121.99993896484375, 309.0, 121.99993896484375, 448.0, 145.833251953125, 448.0 ],
					"source" : [ "obj-67", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"midpoints" : [ 92.99993896484375, 126.0, 80.0, 126.0, 80.0, 132.0, 77.99993896484375, 132.0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"midpoints" : [ 245.99993896484375, 126.0, 80.0, 126.0, 80.0, 132.0, 77.99993896484375, 132.0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "bach.args.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.eq.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.expr.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.group.mxo",
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
				"name" : "bach.mapelem.mxo",
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
				"name" : "bach.pick.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.portal.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.reg.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.scale.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.wrap.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "erase.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "pw.quote.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_code_generators_legacy",
				"patcherrelativepath" : "../pw4m_lisp_code_generators_legacy",
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
					"fontsize" : [ 16.95834 ],
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
					"fontsize" : [ 22.062093999999998 ]
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
						"color" : [ 0.996078, 0.996078, 0.996078, 1.0 ],
						"color1" : [ 0.996078, 0.996078, 0.996078, 1.0 ],
						"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
						"proportion" : 0.5,
						"type" : "color"
					}
,
					"color" : [ 0.996078, 0.996078, 0.996078, 1.0 ],
					"elementcolor" : [ 0.996078, 0.996078, 0.996078, 1.0 ],
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
