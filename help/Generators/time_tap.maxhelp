{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 0,
			"revision" : 5,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 79.0, 880.0, 590.0 ],
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
		"boxes" : [ 			{
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
							"minor" : 0,
							"revision" : 5,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 105.0, 880.0, 564.0 ],
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
											"minor" : 0,
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
									"patching_rect" : [ 721.0, 278.0, 19.0, 22.0 ],
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
									"patching_rect" : [ 721.0, 255.0, 88.0, 21.0 ],
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
											"minor" : 0,
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
									"patching_rect" : [ 614.0, 282.0, 19.0, 22.0 ],
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
									"patching_rect" : [ 614.0, 255.0, 95.0, 21.0 ],
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
											"minor" : 0,
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
													"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontsize" : [ 16.95833875454338 ],
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
													"fontname" : [ "Menlo Regular" ],
													"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
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
													"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
													"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
													"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ],
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
													"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ]
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
									"name" : "time_view.maxpat",
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
									"text" : "More advanced transformation techniques \nof onsets and durations are available \nin the cage package, which goes beyond \nthe scope of MOZ'Lib. \nThey can be applied by putting for instance\none of the following objects between two TIMEview or SCOREview modules\n(see their helpfiles).",
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
									"name" : "time_tap.maxpat",
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
									"name" : "time_tap.maxpat",
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
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : [ 16.95833875454338 ],
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
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
									"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ],
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
									"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ]
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
					"text" : "1) start/stop recording a rhythmic sequence\n\n2) select a key to tap rhythmic sequences (default spacebar)\n   Type any key you would like to use, then click the √ button. \n   The selected key appears on the right, and blinks when depressed.\n   \n3) callback (green) \n   (see Overview)",
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
					"patching_rect" : [ 306.829655977626317, 141.44873046875, 25.170344022373683, 25.71795654296875 ],
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
					"patching_rect" : [ 232.829655977626317, 236.44873046875, 25.170344022373683, 25.71795654296875 ],
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
					"text" : "Allows to easily record sequences of onsets and durations,\nspecifically formated for the TIMEview module, by tapping on a given key.\n\nThe module records onsets (when a key is depressed) and durations (how long).\nBoth parameters are returned separately by the first and second outlets.",
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
					"name" : "time_tap.maxpat",
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
					"name" : "time_view.maxpat",
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
 ],
		"dependency_cache" : [ 			{
				"name" : "time_view.maxpat",
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
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/moz_dependencies",
				"patcherrelativepath" : "../../patchers/moz_dependencies",
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
				"name" : "sendto_ezmidi_instr.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/moz_dependencies",
				"patcherrelativepath" : "../../patchers/moz_dependencies",
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
				"name" : "time_tap.maxpat",
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
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/moz_dependencies",
				"patcherrelativepath" : "../../patchers/moz_dependencies",
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
			"objects" : "jpatcher, message, comment, live.line, gate, toggle, print, loadmess",
			"tags" : "",
			"description" : "1439 x 760, containing 26 objects",
			"image" : "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"
		}
,
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "MOZ-numint",
				"default" : 				{
					"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : [ 16.95833875454338 ],
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
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
					"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ],
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
					"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
