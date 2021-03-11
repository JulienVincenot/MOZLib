{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 79.0, 879.0, 588.0 ],
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
		"description" : "1439 x 760, containing 26 objects",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"showontab" : 1,
		"assistshowspatchername" : 0,
		"title" : "TIMEtap",
		"boxes" : [ 			{
				"box" : 				{
					"fontsize" : 8.0,
					"hidden" : 1,
					"id" : "obj-99",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 337.5, 13.6875, 124.0, 17.0 ],
					"text" : "moz.resolution-helpfiles-moz 879 588"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.0,
					"hidden" : 1,
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 337.5, 36.833070721870399, 48.0, 17.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.0,
					"hidden" : 1,
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 509.0, 245.16668701171875, 49.0, 17.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-42",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 561.0, 276.0, 227.0, 45.0 ],
					"text" : "Of course, you can choose to use \nboth parameters or only onsets.\nJust try closing the gate !",
					"textcolor" : [ 0.50196099281311, 0.50196099281311, 0.50196099281311, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 534.0, 328.0, 91.0, 22.0 ],
					"text" : "print @popup 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 274.0, 328.0, 91.0, 22.0 ],
					"text" : "print @popup 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 509.0, 265.5, 20.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 509.0, 299.0, 32.0, 22.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.365857360152589,
					"hidden" : 1,
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 0.0, 26.0, 879.0, 562.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 4,
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
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 80.0, 79.0, 22.0 ],
													"text" : "prepend help"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica Neue",
													"fontsize" : 12.0,
													"hidden" : 1,
													"id" : "obj-66",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 233.0, 109.2236328125, 55.0, 22.0 ],
													"text" : "pcontrol"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-68",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 39.999999812499993, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-66", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-68", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 789.0, 264.0, 19.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p"
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
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"gradient" : 1,
									"id" : "obj-2",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 789.0, 241.0, 88.0, 21.0 ],
									"text" : "cage.agogics",
									"textcolor" : [ 0.270588248968124, 0.329411774873734, 0.996078431606293, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 4,
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
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 80.0, 79.0, 22.0 ],
													"text" : "prepend help"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Helvetica Neue",
													"fontsize" : 12.0,
													"hidden" : 1,
													"id" : "obj-66",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 233.0, 109.2236328125, 55.0, 22.0 ],
													"text" : "pcontrol"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-68",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 39.999999812499993, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-66", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-68", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 690.0, 268.0, 19.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p"
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
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"gradient" : 1,
									"id" : "obj-7",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 690.0, 241.0, 95.0, 21.0 ],
									"text" : "cage.timewarp",
									"textcolor" : [ 0.270588248968124, 0.329411774873734, 0.996078431606293, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-19",
									"linecount" : 6,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 305.0, 95.0, 254.0, 83.0 ],
									"text" : "The abstraction below returns \nthe retrograde of TIMEtap's outputs. \nYet somehow it does not produce\na very convincing reverse effect... can you study the abstraction \nand figure out why?",
									"textcolor" : [ 0.200000002980232, 0.200000002980232, 0.200000002980232, 1.0 ],
									"varname" : "autohelp_top_digest[3]"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 11.360543353578029,
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 1,
											"revision" : 4,
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
													"fontname" : "Menlo Regular",
													"fontsize" : 11.0,
													"id" : "obj-1",
													"linecount" : 11,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 322.0, 80.000000011718754, 278.0, 160.0 ],
													"text" : "This abstraction does not produce\na 100% convincing reverse effect on onsets and durations... why is that?\n\nStudy the objects bach.x2dx, bach.dx2x\nand bach.rev first to see if you can\nunderstand.\n\nA clue can be found in the helpfile of the cage.rev object, which achieves exactly what we want !\n",
													"textcolor" : [ 0.200000002980232, 0.200000002980232, 0.200000002980232, 1.0 ],
													"varname" : "autohelp_top_digest[3]"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 479.0, 211.0, 55.0, 22.0 ],
													"text" : "cage.rev"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 194.0, 124.0, 93.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80005
													}
,
													"text" : "bach.rev @out t"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 95.0, 63.0, 22.0 ],
													"text" : "bach.x2dx"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 156.0, 129.0, 22.0 ],
													"text" : "bach.dx2x @triggers 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 124.0, 93.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80005
													}
,
													"text" : "bach.rev @out t"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-13",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.000000011718754, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-14",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 194.0, 40.000000011718754, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-16",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 238.000000011718726, 30.0, 30.0 ]
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
													"patching_rect" : [ 194.0, 238.000000011718726, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 1 ],
													"midpoints" : [ 59.5, 152.166656494140625, 169.5, 152.166656494140625 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "MOZ-numint",
												"default" : 												{
													"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : [ 16.95833875454338 ],
													"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
													"fontname" : [ "Menlo Regular" ]
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
													"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
													"fontface" : [ 2 ],
													"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
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
													"fontname" : [ "Menlo Regular" ]
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
													"textcolor_inverse" : [ 0.92549, 0.364706, 0.341176, 1.0 ],
													"fontsize" : [ 13.0 ],
													"fontname" : [ "Arial" ]
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
													"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
													"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
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
													"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ],
													"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
 ]
									}
,
									"patching_rect" : [ 344.0, 300.344244425163936, 126.0, 21.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p retrogradeVSreverse"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-9",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "moz.time_view.maxpat",
									"numinlets" : 4,
									"numoutlets" : 4,
									"offset" : [ -6.0, -146.0 ],
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 30.0, 338.0, 766.0, 200.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-5",
									"linecount" : 8,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 567.75, 152.0, 293.0, 109.0 ],
									"text" : "More advanced transformation techniques \nof onsets and durations are available \nin the cage package, which goes beyond \nthe scope of MOZ'Lib. \nThey can be applied by putting for instance\none of the following objects between two TIMEview or SCOREview modules\nSee for instance :              /",
									"textcolor" : [ 0.200000002980232, 0.200000002980232, 0.200000002980232, 1.0 ],
									"varname" : "autohelp_top_digest[2]"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-3",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "moz.time_tap.maxpat",
									"numinlets" : 0,
									"numoutlets" : 2,
									"offset" : [ -7.0, -8.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 344.0, 179.5, 125.5, 111.5 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-1",
									"linecount" : 6,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 26.0, 53.6875, 227.0, 83.0 ],
									"text" : "The module itself includes\na stretch parameter (default 1.)\nFor instance, a stretch of 0.5 \nwould divide onsets and durations\nby two, making the result twice\nas fast !",
									"textcolor" : [ 0.200000002980232, 0.200000002980232, 0.200000002980232, 1.0 ],
									"varname" : "autohelp_top_digest[1]"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-30",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 26.0, 20.6875, 558.0, 19.0 ],
									"text" : "It is possible to transform the output of TIMEtap, here are a few examples.",
									"textcolor" : [ 0.200000002980232, 0.200000002980232, 0.200000002980232, 1.0 ],
									"varname" : "autohelp_top_digest"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 136.5, 269.0, 91.0, 22.0 ],
									"text" : "print @popup 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 30.0, 310.0, 91.0, 22.0 ],
									"text" : "print @popup 1"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-56",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "moz.time_tap.maxpat",
									"numinlets" : 0,
									"numoutlets" : 2,
									"offset" : [ -7.0, -8.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 30.0, 146.0, 125.5, 111.5 ],
									"viewvisibility" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 2 ],
									"midpoints" : [ 460.5, 329.172122212581939, 537.5, 329.172122212581939 ],
									"source" : [ "obj-18", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"midpoints" : [ 353.5, 329.172122212581939, 288.5, 329.172122212581939 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 1 ],
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"midpoints" : [ 39.5, 254.25, 39.5, 254.25 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-56", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"hidden" : 1,
									"source" : [ "obj-7", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "MOZ-numint",
								"default" : 								{
									"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : [ 16.95833875454338 ],
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"fontname" : [ "Menlo Regular" ]
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
									"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"fontface" : [ 2 ],
									"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
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
									"fontname" : [ "Menlo Regular" ]
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
									"textcolor_inverse" : [ 0.92549, 0.364706, 0.341176, 1.0 ],
									"fontsize" : [ 13.0 ],
									"fontname" : [ "Arial" ]
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
									"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
									"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
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
									"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ],
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 668.25, 54.321163366336634, 81.0, 19.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p transformations"
				}

			}
, 			{
				"box" : 				{
					"border" : 2.600000000000001,
					"id" : "obj-33",
					"linecolor" : [ 0.847058823529412, 0.552941176470588, 0.015686274509804, 1.0 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 267.0, 169.16668701171875, 113.0, 5.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-14",
					"linecount" : 8,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 418.0, 150.5, 459.0, 109.0 ],
					"text" : "1) select a key to tap rhythmic sequences (default spacebar)\n   Type any key you would like to use, then click the √ button. \n   The selected key appears on the right, and blinks when depressed.\n\n2) start/stop recording a rhythmic sequence\n   \n3) callback (green) \n   (see Overview)",
					"textcolor" : [ 0.50196099281311, 0.50196099281311, 0.50196099281311, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "moz_three.png" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-16",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "moz_helpnum.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 2.0, 3.0 ],
					"patching_rect" : [ 387.5, 236.44873046875, 25.170344022373683, 25.71795654296875 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ "moz_two.png" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-18",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "moz_helpnum.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 2.0, 3.0 ],
					"patching_rect" : [ 232.829655977626317, 236.44873046875, 25.170344022373683, 25.71795654296875 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ "moz_one.png" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-25",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "moz_helpnum.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 2.0, 3.0 ],
					"patching_rect" : [ 310.914827988813158, 141.44873046875, 25.170344022373683, 25.71795654296875 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 36.0,
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 121.0, 6.6875, 73.0, 47.0 ],
					"text" : "tap",
					"textcolor" : [ 0.200000002980232, 0.200000002980232, 0.200000002980232, 1.0 ],
					"varname" : "autohelp_top_digest[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-30",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 11.0, 65.6875, 558.0, 71.0 ],
					"text" : "Allows to easily record sequences of onsets and durations,\nspecifically formatted for the TIMEview module, by tapping on a given key.\n\nThe module records onsets (when a key is depressed) and durations (how long).\nBoth parameters are returned separately by the first and second outlets.",
					"textcolor" : [ 0.200000002980232, 0.200000002980232, 0.200000002980232, 1.0 ],
					"varname" : "autohelp_top_digest"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 48.0,
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 6.0, 9.6875, 124.0, 60.0 ],
					"text" : "TIME",
					"textcolor" : [ 0.200000002980232, 0.200000002980232, 0.200000002980232, 1.0 ],
					"varname" : "autohelp_top_digest[2]"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-56",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "moz.time_tap.maxpat",
					"numinlets" : 0,
					"numoutlets" : 2,
					"offset" : [ -7.0, -8.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 260.0, 174.0, 125.5, 111.5 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.429433174252367,
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 11.0, 332.416986457668997, 234.0, 21.0 ],
					"text" : "6000 7200 4900 8200 3900 6000 6100 7200"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-3",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "moz.time_view.maxpat",
					"numinlets" : 4,
					"numoutlets" : 4,
					"offset" : [ -6.0, -146.0 ],
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 11.0, 359.83331298828125, 766.0, 200.0 ],
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 2 ],
					"midpoints" : [ 518.5, 339.916656494140625, 518.5, 339.916656494140625 ],
					"order" : 1,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"midpoints" : [ 518.5, 324.0, 543.5, 324.0 ],
					"order" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"hidden" : 1,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 1 ],
					"midpoints" : [ 269.5, 322.166656494140625, 269.5, 322.166656494140625 ],
					"order" : 1,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 1 ],
					"midpoints" : [ 376.0, 291.75, 531.5, 291.75 ],
					"source" : [ "obj-56", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"midpoints" : [ 269.5, 306.25, 283.5, 306.25 ],
					"order" : 0,
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-9", 0 ]
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
				"name" : "moz.time_view.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/moz_modules",
				"patcherrelativepath" : "../../patchers/moz_modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.prepend.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "open-doc-double.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "save-double.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "sendback.png",
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
				"patcherrelativepath" : "../../patchers/utilities",
				"type" : "JSON",
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
				"name" : "moz.sendto_ezmidi_instr.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.dx2x.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.filternull.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.x2dx.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sendback-selec.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "bach.repeat.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.time_tap.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/moz_modules",
				"patcherrelativepath" : "../../patchers/moz_modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz_264.ui-record.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../media",
				"type" : "PNG",
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
				"name" : "moz_helpnum.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz_one.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "moz_two.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "moz_three.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "cage.rev.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/cage/patchers",
				"patcherrelativepath" : "../../../cage/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cage.inferheadersyms.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/cage/patchers",
				"patcherrelativepath" : "../../../cage/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.sliceheader.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.mapchord.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.filter.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.+.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.split.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.change.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.lookup.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
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
				"name" : "bach.belong.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.tierev.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.replace.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.sum.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.div.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cage.checkbachversion.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/cage/patchers",
				"patcherrelativepath" : "../../../cage/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.resolution-helpfiles-moz.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../patchers/utilities",
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
				"name" : "bach.iter.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.collect.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.join.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.args.mxo",
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
				"name" : "bach.wrap.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.length.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.flat.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.roll.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.keys.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.playkeys.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.sort.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.pad.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.expr.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.eq.mxo",
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
				"name" : "bach.transcribe.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.rev.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.is.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.pick.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.slice.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.neq.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.subs.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.find.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.pack.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.trans.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.rot.mxo",
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
				"name" : "bach.score.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.depth.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.group.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.contains.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.print.mxo",
				"type" : "iLaX"
			}
 ],
		"snippetinfo" : 		{
			"name" : "time_view",
			"objects" : "jpatcher, message, comment, live.line, gate, toggle, print, loadmess, thispatcher",
			"tags" : "",
			"description" : "1439 x 760, containing 26 objects",
			"image" : "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L6DmTERERERExAuoORMREREREfECas5ERERERES8gJozERERERERL6DmTERERERExAuoORMREREREfECas5ERERERES8gJozERERERERL6DmTERERERExAuoORMREREREfECas5ERERERES8gJozERERERERL6DmTERERERExAuoORMREREREfECas5ERERERES8gJozERERERERL6DmTERERERExAuoORMREREREfECas5ERERERES8gJozERERERERL6DmTERERERExAuoORMREREREfECas5ERERERES8gJozERERERERL6DmTERERERExAuoORMREREREfECas5ERERERES8gJozERERERERL6DmTERERERExAuoORMREREREfECas5ERERERES8gJozERERERERL6DmTERERERExAuoORMREREREfECas5ERERERES8gJozERERERERL6DmTERERERExAuoORMREREREfECas5ERERERES8gJozERERERERL6DmTERERERExAuoORMREREREfECas5ERERERES8gJozERERERERL6DmTERERERExAuoORMREREREfECas5ERERERES8gJozERERERERL6DmTERERERExAsYYmJiXP9+MDQ01BO1iIiIiIjILRQTE+PpEuQK/w/tzTleS0F5/wAAAABJRU5ErkJggg=="
		}
,
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "MOZ-numint",
				"default" : 				{
					"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : [ 16.95833875454338 ],
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"fontname" : [ "Menlo Regular" ]
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
					"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"fontface" : [ 2 ],
					"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
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
					"fontname" : [ "Menlo Regular" ]
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
					"textcolor_inverse" : [ 0.92549, 0.364706, 0.341176, 1.0 ],
					"fontsize" : [ 13.0 ],
					"fontname" : [ "Arial" ]
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
					"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
					"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
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
					"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ],
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
