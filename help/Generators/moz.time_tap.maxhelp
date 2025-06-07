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
					"patching_rect" : [ 337.5, 13.6875, 141.0, 17.0 ],
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
							"minor" : 6,
							"revision" : 5,
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
									"textcolor" : [ 0.082, 0.553, 1.0, 1.0 ]
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
									"textcolor" : [ 0.082, 0.553, 1.0, 1.0 ]
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
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "The abstraction below returns \nthe retrograde of TIMEtap's outputs. \nYet somehow it does not produce\na very convincing reverse effect... can you study the abstraction \nand figure out why?",
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
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "moz.time_view.maxpat",
									"numinlets" : 4,
									"numoutlets" : 5,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 30.0, 338.0, 766.0, 202.0 ],
									"varname" : "bp1142318946367",
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
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "More advanced transformation techniques \nof onsets and durations are available \nin the cage package, which goes beyond \nthe scope of MOZ'Lib. \nThey can be applied by putting for instance\none of the following objects between two TIMEview or SCOREview modules\nSee for instance :              /",
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
									"lockedsize" : 0,
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
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "The module itself includes\na stretch parameter (default 1.)\nFor instance, a stretch of 0.5 \nwould divide onsets and durations\nby two, making the result twice\nas fast !",
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
									"saved_attribute_attributes" : 									{
										"textcolor" : 										{
											"expression" : "themecolor.theme_textcolor"
										}

									}
,
									"text" : "It is possible to transform the output of TIMEtap, here are a few examples.",
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
									"patching_rect" : [ 30.0, 308.0, 91.0, 22.0 ],
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
									"lockedsize" : 0,
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
					"patching_rect" : [ 267.0, 169.16668701171875, 113.0, 5.0 ],
					"saved_attribute_attributes" : 					{
						"linecolor" : 						{
							"expression" : ""
						}

					}

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
					"lockedsize" : 0,
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
					"lockedsize" : 0,
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
					"lockedsize" : 0,
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
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.theme_textcolor"
						}

					}
,
					"text" : "tap",
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
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.theme_textcolor"
						}

					}
,
					"text" : "Allows to easily record sequences of onsets and durations,\nspecifically formatted for the TIMEview module, by tapping on a given key.\n\nThe module records onsets (when a key is depressed) and durations (how long).\nBoth parameters are returned separately by the first and second outlets.",
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
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.theme_textcolor"
						}

					}
,
					"text" : "TIME",
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
					"lockedsize" : 0,
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
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "moz.time_view.maxpat",
					"numinlets" : 4,
					"numoutlets" : 5,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "", "", "" ],
					"patching_rect" : [ 11.0, 359.0, 766.0, 202.0 ],
					"varname" : "bp447359523680",
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
				"name" : "bach.+.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.args.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.belong.maxpat",
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
				"patcherrelativepath" : "../../../bach/patchers",
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
				"name" : "bach.eq.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.expr.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.filter.maxpat",
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
				"name" : "bach.mapelem.mxo",
				"type" : "iLaX"
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
				"name" : "bach.pack.mxo",
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
				"name" : "bach.prepend.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.print.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.reg.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.repeat.maxpat",
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
				"name" : "bach.rev.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.rminus.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.roll.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.rot.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.round.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
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
				"name" : "bach.sliceheader.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.sort.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.split.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
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
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.thin.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.tierev.maxpat",
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
				"name" : "bach.trans.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.transcribe.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.wrap.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.x2dx.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bpatcher-resize-gizmo.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bpatcher-resize.js",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../patchers/utilities",
				"type" : "TEXT",
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
				"name" : "cage.inferheadersyms.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/cage/patchers",
				"patcherrelativepath" : "../../../cage/patchers",
				"type" : "JSON",
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
				"name" : "key_trigger.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../patchers/utilities",
				"type" : "JSON",
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
				"name" : "moz.maxverbang.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.play_hover_title.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../patchers/utilities",
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
				"name" : "moz.sendto_ezmidi_instr.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../patchers/utilities",
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
				"name" : "moz.time_view.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/moz_modules",
				"patcherrelativepath" : "../../patchers/moz_modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.update-ui.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../patchers/utilities",
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
				"name" : "moz_three.png",
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
				"name" : "sendback-selec.png",
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
				"name" : "thru.maxpat",
				"bootpath" : "C74:/patchers/m4l/Pluggo for Live resources/patches",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"snippetinfo" : 		{
			"name" : "time_view",
			"objects" : "jpatcher, message, comment, live.line, gate, toggle, print, loadmess, thispatcher",
			"tags" : "",
			"description" : "1439 x 760, containing 26 objects",
			"image" : "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ZWVlygO+4cGPMF999RWurq6cOXOG7t27M23aNGxsbPjpp5/49NNPyczMxN/fH61Wy1dffWWyfkz9bWfPno2DgwOnTp2qcDwZY6yfMkWn0/G///u/xMTE4O3tjbu7OwMGDKB3795G239MTAyHDh3i008/BSAlJYWpU6cqbXHx4sUcOnQId3d3RowYoTybripletiVK1eYO3cu//jHP+jcubPR9lqV7xMhhBB/DBYPa1yyZAm9e/cmKiqKpUuX4uHhATx4XtT58+f55JNP+PLLL9m4caNyj8O///1vhg8fTkREBBqNRm/IYVhYGM899xzbtm1j7dq1yjOTNBoN33zzDZ06dSIzM1NZ39ramvDwcN566y06dOhAeHi4EpgBfPnll4wbN67CPUNJSUns2rWLf/3rX0RFRSlfzra2towfP569e/eyfv16Tp48SUxMTGXrTxEQEMCOHTsoKioCICIiAj8/P5PbmCrToUOH+PXXX9mwYQOTJ09myZIler+2p6amsm/fPqZMmcKOHTto2bIlGRkZDB48mIEDB5Kdnc1nn33Gd999p9TrvHnziImJ4eOPP2bRokXcvn2b7t27Ex4eTsuWLRk/fjzh4eGEhIQAEBISQnh4OABfffUV4eHhShDz9ddf4+npSUREBMOHD2fOnDmUlJRQXFzMsmXLmDx5MmFhYaSlpVlUf3PmzOHLL7/E3t6e8PBwwsPDUavVpKSksGXLFubPn8+yZcuIi4vTG3qYmZnJ1q1bGT58OJGRkcpJlDGmygRw584dVq5cSb9+/di0aZOy3FRbrk4qlYoXX3yR+fPn07Fjxwo/FsycOZPRo0czevRo5s+fD0D79u2JiIhQ7tHbtWuXMjOlsePJWJkaNmyoXBVOSUkhJyeHS5cuUVRUZDLINtX2jLVlU20lPz+f27dvK+/T09Mtur+suv9OmZmZSlv47bffOHz4MPDgIdQ7duwAHgSvO3bsMHuSbqrttWjRgnXr1rFv3z769eunBA35+flcuHCBl19+mY0bN3Ljxg3lPjhTfW/37t355ptvUKvV5OfnK3koKCggMTGRnj17smnTJuLj40lKSgIeBJgBAQGEh4dTXFzMrVu3zNaPqX4qPT2d69evGzyejDHWT5ny008/cezYMVasWMGkSZM4efIk9+7dU9Iz1P47duzI0aNHlbT37duHj48PDg4OHDx4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XI0dO1ajR4+u7s2p8d555x3NmTNHZWVlmjt3rjZs2KATJ07onXfe0aBBg1RWVqZ+/fpp+PDhevzxx2U0GnXkyBG9/PLL2rVrl0pLS3Xw4EFNmzaNds1awmsTyz/+8Q9dunRJ69ev1549e5Sdna0hQ4bo/PnzWrNmjRITE9WuXTslJibq/fff16OPPqrp06dr8eLFCgwMVFxcnO6991516dKF8wo84Ouvv5a/v7/WrFmjzZs36/z583rooYeUk5Ojr7/+WqtWrVJYWJg+//xzvffee/r73/+u+vXry263KzIyUv3799e9996rzp07V/em1ApJSUkKCwvTJ598orVr18rpdOrBBx/U4cOHtWPHDq1fv14BAQFauXKlbrnlFn3++ecaM2aMVq1apaZNm7r2R8eOHat7U2qFNWvWqE2bNlq+fLk++eQTBQUFKT4+XmlpaUpPT9dXX32ly5cva/369br33nu1YsUKhYWFac+ePbr99tvVp08f9ejRo8JrIqJyPvnkE8XFxWnu3LlavHixwsPDNWjQIH3zzTfKy8vT119/rZMnT2rXrl06ffq0XnzxRfn6+srhcKhdu3bq27evunXrVuE1FlE5V8PvtGnTtGDBAsXExKh///76+uuvVVpaqo0bNyojI0M7duxQenq6unfvrunTp2vYsGFq3769+vTpo27dulV4DUhUzOl06uOPP9aoUaP0P//zP5o/f77atm2r3r17a926dQoKCtK6deuUkpKipKQkffbZZ3r22Wf1wgsv6NZbb1XHjh11//33q1u3bhVeKxIVs9ls+uijj/TCCy9oxIgRmj9/vrp06aIePXros88+U1RUlFauXKn169erXr162rZtm958803FxMRo2LBhuuuuu1z7o0WLFtW9OfAQr00tOTk5CgkJUYsWLeTv7y8fHx8tXbpU6enpstlsioiIUGRkpH744Qfl5eWpT58+io6OVmFhoZo2baolS5bIZDJV6kruqFhOTo4aNWqkFi1ayGg0ql69elq6dKnrqGR4eLjCw8N1/PhxTZkyRZ06ddLw4cNVWlqqO++8U4sWLXL98oPrZ7FY1KRJEzVv3lx2u931d/5qiA4LC1OTJk1ksVg0e/Zs5efn6/HHH1d8fLx69+6t7t27U07hQbm5uWrSpIluu+02lZSUqHnz5lq0aJFWrVqlunXrKiwsTI0aNZLF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"
		}
,
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
