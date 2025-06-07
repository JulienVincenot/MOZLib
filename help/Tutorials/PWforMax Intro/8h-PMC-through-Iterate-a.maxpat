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
					"border" : 2.0,
					"id" : "obj-13",
					"linecolor" : [ 1.0, 0.490196, 0.262745, 1.0 ],
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 226.0, 549.0, 605.0, 5.0 ],
					"saved_attribute_attributes" : 					{
						"linecolor" : 						{
							"expression" : "themecolor.live_alert"
						}

					}

				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-7",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 125.0, 290.0, 631.0, 45.0 ],
					"text" : "B) the more classical, \"deffered time\" approach, which requires a little bit of hacking \nbut should be much more agile, precise and, at the end of the day, actually faster to produce results than the real-time approach ! This is the one we will examine here."
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 1,
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
									"id" : "obj-2",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 75.0, 97.0, 22.0 ],
									"text" : "pmc.looper"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 109.2236328125, 79.0, 22.0 ],
									"text" : "prepend help"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Helvetica Neue",
									"fontsize" : 12.0,
									"hidden" : 1,
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 139.2236328125, 55.0, 22.0 ],
									"text" : "pcontrol"
								}

							}
, 							{
								"box" : 								{
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
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"hidden" : 1,
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 722.0, 478.0, 19.0, 22.0 ],
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
					"fontsize" : 12.0,
					"gradient" : 1,
					"id" : "obj-67",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 720.0, 454.0, 74.0, 22.0 ],
					"text" : "PMClooper",
					"textcolor" : [ 0.082, 0.553, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 381.0, 455.0, 108.0, 19.0 ],
					"text" : "hybrid approach"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-11",
					"linecount" : 7,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 196.0, 455.0, 651.0, 96.0 ],
					"text" : "C) ...and lately, a sort of hybrid approach was introduced to MOZ'Lib with the           .\n\nBased on solution B (and ITERATE), the new module offers a more friendly interface,\nbut also reveals many possibilities that were not easily imaginable before, even in PWGL...!\n\nIt can still be interesting to study these older examples to understand everything better,\nbut if you're not interested in all the specifics you can just switch to the new implementation !"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-12",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4.403301239013672, 46.508007049560547, 692.0, 45.0 ],
					"text" : "First of all, bad news ! You cannot directly loop MOZ boxes involving constraints. \nThis is because they already are a mix of both Max/bach and shell/Lisp worlds,\nwhich operate at different speeds, or more precisely in different threads. They are 'asynchronous'."
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-9",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 277.0, 290.0, 167.0, 19.0 ],
					"text" : "\"deffered time\" approach"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 95.403301239013672, 164.508007049560547, 128.0, 19.0 ],
					"text" : "real-time approach"
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
					"patching_rect" : [ 256.0, 346.0, 426.0, 19.0 ],
					"text" : "This example patch is bigger than usual, double click to open !"
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
					"text" : "(a)"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 25.11386731398316,
					"id" : "obj-1",
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
						"rect" : [ 34.0, 79.0, 1084.0, 744.0 ],
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
									"hidden" : 1,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 784.5, 39.0, 54.0, 22.0 ],
									"text" : "deferlow"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 713.0, 314.0, 166.0, 22.0 ],
									"text" : "loadmess to_chord zoom 150"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-18",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 38.666674137115479, 24.0, 134.0, 32.0 ],
									"text" : "Now click this one to see the result:"
								}

							}
, 							{
								"box" : 								{
									"args" : [ "moz_five.png" ],
									"bgmode" : 0,
									"border" : 0,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-15",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "moz_helpnum.maxpat",
									"numinlets" : 0,
									"numoutlets" : 0,
									"offset" : [ 2.0, 3.0 ],
									"patching_rect" : [ 14.666674137115479, 27.0, 33.0, 33.71795654296875 ],
									"viewvisibility" : 1
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
									"id" : "obj-14",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "moz_helpnum.maxpat",
									"numinlets" : 0,
									"numoutlets" : 0,
									"offset" : [ 2.0, 3.0 ],
									"patching_rect" : [ 75.666674137115479, 314.0, 33.0, 33.71795654296875 ],
									"viewvisibility" : 1
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
									"id" : "obj-13",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "moz_helpnum.maxpat",
									"numinlets" : 0,
									"numoutlets" : 0,
									"offset" : [ 2.0, 3.0 ],
									"patching_rect" : [ 132.166674137115479, 197.182037353515625, 33.0, 33.71795654296875 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-6",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 745.5, 85.78204345703125, 187.0, 32.0 ],
									"text" : "Open the subpatcher to see which rules are applied."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 411.33331298828125, 13.5, 128.0, 19.0 ],
									"text" : "First, click here:"
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
									"id" : "obj-3",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "moz_helpnum.maxpat",
									"numinlets" : 0,
									"numoutlets" : 0,
									"offset" : [ 2.0, 3.0 ],
									"patching_rect" : [ 721.666674137115479, 87.78204345703125, 33.0, 33.71795654296875 ],
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
									"patching_rect" : [ 387.33331298828125, 11.0, 33.0, 33.71795654296875 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-10",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 137.875, 388.0, 340.0, 32.0 ],
									"text" : "Be aware that in the final code for this example, \nthe two variables are used more than once !"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 162.166674137115479, 394.0, 89.0, 22.0 ],
									"text" : "loadmess clear"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Menlo Regular",
									"fontsize" : 15.789473684210531,
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 232.041674137115479, 258.066660493612289, 21.125, 25.0 ],
									"text" : "^"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-7",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 721.666674137115479, 116.78204345703125, 346.0, 71.0 ],
									"text" : "This should be seem pretty straightforward : \na 'profile rule' and a 'no local repetition rule',\nboth using the JBS-rules module.\nNote this module is scripted and therefore quite difficult to control in real-time..."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-99",
									"linecount" : 5,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 99.666674137115479, 314.0, 415.0, 71.0 ],
									"text" : "loop.iterate defines two variables to be looped in parallel, 'range' and 'length_mel'.\nAll you need to do is replace certain parts of your code \nwith these variable names (+ smaller changes) to make those rules dynamic."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-98",
									"maxclass" : "newobj",
									"numinlets" : 1,
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
													"id" : "obj-70",
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
																	"id" : "obj-57",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "bang", "" ],
																	"patching_rect" : [ 50.0, 129.0, 111.0, 22.0 ],
																	"text" : "t b l"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-56",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 156.0, 29.5, 22.0 ],
																	"text" : "FG"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-54",
																	"maxclass" : "newobj",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 186.0, 111.0, 22.0 ],
																	"text" : "bach.repeat @out t"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-53",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 212.0, 81.0, 22.0 ],
																	"text" : "prepend clefs"
																}

															}
, 															{
																"box" : 																{
																	"id" : "obj-50",
																	"maxclass" : "newobj",
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"outlettype" : [ "int" ],
																	"patching_rect" : [ 50.0, 100.0, 71.0, 22.0 ],
																	"saved_object_attributes" : 																	{
																		"versionnumber" : 80104
																	}
,
																	"text" : "bach.length"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-68",
																	"index" : 1,
																	"maxclass" : "inlet",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-69",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 50.0, 294.0, 30.0, 30.0 ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-57", 0 ],
																	"source" : [ "obj-50", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-69", 0 ],
																	"source" : [ "obj-53", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-53", 0 ],
																	"source" : [ "obj-54", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-54", 0 ],
																	"source" : [ "obj-56", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-54", 1 ],
																	"source" : [ "obj-57", 1 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-56", 0 ],
																	"source" : [ "obj-57", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-50", 0 ],
																	"source" : [ "obj-68", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 60.5, 236.0, 60.0, 22.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p clefsFG"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-43",
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
													"id" : "obj-42",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 134.0, 64.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80104
													}
,
													"text" : "bach.flat 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-36",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "", "" ],
													"patching_rect" : [ 50.0, 168.0, 40.0, 22.0 ],
													"text" : "t b l l"
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
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-96",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 234.0, 322.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-97",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 164.0, 318.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-70", 0 ],
													"source" : [ "obj-36", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-96", 0 ],
													"source" : [ "obj-36", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-97", 0 ],
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"source" : [ "obj-42", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"source" : [ "obj-43", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-97", 0 ],
													"source" : [ "obj-70", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 0 ],
													"source" : [ "obj-95", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 10.666674137115479, 394.0, 103.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p display-as-parts"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-77",
									"linecount" : 4,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 259.166674137115479, 234.899993896484375, 260.0, 58.0 ],
									"text" : "If you retrieve this code into a bach.reg @embed 1, it will be safely\nmemorized into your patch and you can \nmodify it at will."
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-76",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 156.166674137115479, 188.899993896484375, 359.0, 45.0 ],
									"text" : "As you may know, the second outlet of the chainedPMC \nreturns its code output (CLUSTERengine has one too),\nthat is the complete Lisp code prior to execution."
								}

							}
, 							{
								"box" : 								{
									"fontface" : 1,
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-75",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 232.875, 267.0, 446.0, 32.0 ],
									"text" : "|\n|_________________________________________________________________"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-71",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 680.875, 282.0, 117.0, 22.0 ],
									"reg_data_0000000000" : [ "[", "omcs::pmc", "[", "quote", "[", "[", 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, "]", "[", 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, "]", "[", 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, "]", "[", 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, "]", "[", 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, "]", "[", 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, "]", "[", 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, "]", "[", 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, "]", "[", 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, "]", "[", 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, "]", "[", 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, "]", "[", 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, "]", "[", 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, "]", "[", 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, "]", "]", "]", "[", "pw::backquote", "[", "pw::%@", "[", "jbs-constraints::collect-true/false-rules", "[", "jbs-constraints::no-local-repetition-rule", ":true/false", 1, "]", "]", "]", "]", ":heuristic-rules", "[", "pw::backquote", "[", "pw::%@", "[", "jbs-constraints::collect-heuristic-rules", "[", "jbs-constraints::mk-profile-rule", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078853632, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079115776, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076625408, "[", "quote", "[", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3539053052, 1063281229, "_x_x_x_x_bach_float64_x_x_x_x_", 481636428, 1063516362, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3539053052, 1064329805, "_x_x_x_x_bach_float64_x_x_x_x_", 469894091, 1064576660, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3161095930, 1064866676, "_x_x_x_x_bach_float64_x_x_x_x_", 512906215, 1065254751, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3539053052, 1065378381, "_x_x_x_x_bach_float64_x_x_x_x_", 3878848387, 1065649101, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1202590843, 1065646817, "_x_x_x_x_bach_float64_x_x_x_x_", 3689404909, 1066000401, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3161095930, 1065915252, "_x_x_x_x_bach_float64_x_x_x_x_", 643344255, 1066357994, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 824633721, 1066183688, "_x_x_x_x_bach_float64_x_x_x_x_", 3180602171, 1066561891, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3539053052, 1066426957, "_x_x_x_x_bach_float64_x_x_x_x_", 1239608919, 1066747150, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2370821948, 1066561175, "_x_x_x_x_bach_float64_x_x_x_x_", 467077446, 1066935727, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1202590843, 1066695393, "_x_x_x_x_bach_float64_x_x_x_x_", 2733349837, 1067127681, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 34359738, 1066829611, "_x_x_x_x_bach_float64_x_x_x_x_", 1596214677, 1067323074, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3161095930, 1066963828, "_x_x_x_x_bach_float64_x_x_x_x_", 1928820776, 1067486167, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1992864826, 1067098046, "_x_x_x_x_bach_float64_x_x_x_x_", 4086154698, 1067587394, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 824633721, 1067232264, "_x_x_x_x_bach_float64_x_x_x_x_", 2566232303, 1067690435, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3951369912, 1067366481, "_x_x_x_x_bach_float64_x_x_x_x_", 3709535038, 1067795321, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3539053052, 1067475533, "_x_x_x_x_bach_float64_x_x_x_x_", 3470028734, 1067902086, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2954937500, 1067542642, "_x_x_x_x_bach_float64_x_x_x_x_", 344815492, 1068010764, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2370821948, 1067609751, "_x_x_x_x_bach_float64_x_x_x_x_", 4009619883, 1068121387, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1786706395, 1067676860, "_x_x_x_x_bach_float64_x_x_x_x_", 1005418019, 1068233993, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1202590843, 1067743969, "_x_x_x_x_bach_float64_x_x_x_x_", 2030275819, 1068348615, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 618475291, 1067811078, "_x_x_x_x_bach_float64_x_x_x_x_", 3332686708, 1068465290, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 34359738, 1067878187, "_x_x_x_x_bach_float64_x_x_x_x_", 4117656009, 1068541499, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3745211482, 1067945295, "_x_x_x_x_bach_float64_x_x_x_x_", 707478525, 1068601946, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3161095930, 1068012404, "_x_x_x_x_bach_float64_x_x_x_x_", 246425066, 1068663475, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1068079513, "_x_x_x_x_bach_float64_x_x_x_x_", 125823433, 1068726106, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1992864826, 1068146622, "_x_x_x_x_bach_float64_x_x_x_x_", 3523835723, 1068789858, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1408749273, 1068213731, "_x_x_x_x_bach_float64_x_x_x_x_", 2252310836, 1068854753, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 824633721, 1068280840, "_x_x_x_x_bach_float64_x_x_x_x_", 2553788558, 1068920810, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 240518169, 1068347949, "_x_x_x_x_bach_float64_x_x_x_x_", 3654350605, 1068988050, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3951369912, 1068415057, "_x_x_x_x_bach_float64_x_x_x_x_", 2086771334, 1069056495, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3367254360, 1068482166, "_x_x_x_x_bach_float64_x_x_x_x_", 309140619, 1069126166, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3539053052, 1068524109, "_x_x_x_x_bach_float64_x_x_x_x_", 2439098630, 1069197084, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1099511628, 1068557664, "_x_x_x_x_bach_float64_x_x_x_x_", 1398659104, 1069269273, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2954937500, 1068591218, "_x_x_x_x_bach_float64_x_x_x_x_", 419303429, 1069342755, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 515396076, 1068624773, "_x_x_x_x_bach_float64_x_x_x_x_", 187878267, 1069417553, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2370821948, 1068658327, "_x_x_x_x_bach_float64_x_x_x_x_", 3172914074, 1069493690, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4226247819, 1068691881, "_x_x_x_x_bach_float64_x_x_x_x_", 385817994, 1069559356, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1786706395, 1068725436, "_x_x_x_x_bach_float64_x_x_x_x_", 3851093269, 1069598800, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3642132267, 1068758990, "_x_x_x_x_bach_float64_x_x_x_x_", 953574860, 1069638952, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1202590843, 1068792545, "_x_x_x_x_bach_float64_x_x_x_x_", 3095794057, 1069679822, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3058016715, 1068826099, "_x_x_x_x_bach_float64_x_x_x_x_", 1178979159, 1069721425, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 618475291, 1068859654, "_x_x_x_x_bach_float64_x_x_x_x_", 4275198652, 1069763772, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2473901163, 1068893208, "_x_x_x_x_bach_float64_x_x_x_x_", 990405391, 1069806879, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 34359738, 1068926763, "_x_x_x_x_bach_float64_x_x_x_x_", 2432177348, 1069850757, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1889785610, 1068960317, "_x_x_x_x_bach_float64_x_x_x_x_", 3573403344, 1069895421, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3745211482, 1068993871, "_x_x_x_x_bach_float64_x_x_x_x_", 450873040, 1069940886, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1305670058, 1069027426, "_x_x_x_x_bach_float64_x_x_x_x_", 3069234978, 1069987164, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3161095930, 1069060980, "_x_x_x_x_bach_float64_x_x_x_x_", 1060655675, 1070034272, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 721554506, 1069094535, "_x_x_x_x_bach_float64_x_x_x_x_", 2359270180, 1070082223, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1069128089, "_x_x_x_x_bach_float64_x_x_x_x_", 3156509576, 1070131033, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 137438954, 1069161644, "_x_x_x_x_bach_float64_x_x_x_x_", 806461420, 1070180718, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1992864826, 1069195198, "_x_x_x_x_bach_float64_x_x_x_x_", 2436629356, 1070231292, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3848290697, 1069228752, "_x_x_x_x_bach_float64_x_x_x_x_", 3494294634, 1070282772, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1408749273, 1069262307, "_x_x_x_x_bach_float64_x_x_x_x_", 652995715, 1070335175, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3264175145, 1069295861, "_x_x_x_x_bach_float64_x_x_x_x_", 424427060, 1070388516, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 824633721, 1069329416, "_x_x_x_x_bach_float64_x_x_x_x_", 2000927538, 1070442812, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2680059593, 1069362970, "_x_x_x_x_bach_float64_x_x_x_x_", 1573205811, 1070498081, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 240518169, 1069396525, "_x_x_x_x_bach_float64_x_x_x_x_", 943440628, 1070554340, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2095944041, 1069430079, "_x_x_x_x_bach_float64_x_x_x_x_", 1626947067, 1070603851, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3951369912, 1069463633, "_x_x_x_x_bach_float64_x_x_x_x_", 2210490161, 1070632997, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1511828488, 1069497188, "_x_x_x_x_bach_float64_x_x_x_x_", 3022299920, 1070662665, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3367254360, 1069530742, "_x_x_x_x_bach_float64_x_x_x_x_", 1274054321, 1070692865, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2611340116, 1069555908, "_x_x_x_x_bach_float64_x_x_x_x_", 3486718924, 1070723605, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3539053052, 1069572685, "_x_x_x_x_bach_float64_x_x_x_x_", 4028595118, 1070754896, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 171798692, 1069589463, "_x_x_x_x_bach_float64_x_x_x_x_", 2308304838, 1070786748, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1099511628, 1069606240, "_x_x_x_x_bach_float64_x_x_x_x_", 2788141026, 1070819170, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2027224564, 1069623017, "_x_x_x_x_bach_float64_x_x_x_x_", 2112755303, 1070852173, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2954937500, 1069639794, "_x_x_x_x_bach_float64_x_x_x_x_", 2007892854, 1070885767, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3882650436, 1069656571, "_x_x_x_x_bach_float64_x_x_x_x_", 704538589, 1070919963, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 515396076, 1069673349, "_x_x_x_x_bach_float64_x_x_x_x_", 1543184716, 1070954771, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1443109012, 1069690126, "_x_x_x_x_bach_float64_x_x_x_x_", 103518518, 1070990203, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2370821948, 1069706903, "_x_x_x_x_bach_float64_x_x_x_x_", 1399142589, 1071026269, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3298534883, 1069723680, "_x_x_x_x_bach_float64_x_x_x_x_", 2712822644, 1071062981, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4226247819, 1069740457, "_x_x_x_x_bach_float64_x_x_x_x_", 2201809914, 1071100351, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1069757235, "_x_x_x_x_bach_float64_x_x_x_x_", 3208471853, 1071138390, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1786706395, 1069774012, "_x_x_x_x_bach_float64_x_x_x_x_", 1391334219, 1071177111, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2714419331, 1069790789, "_x_x_x_x_bach_float64_x_x_x_x_", 1921179800, 1071216525, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3642132267, 1069807566, "_x_x_x_x_bach_float64_x_x_x_x_", 2317699492, 1071256645, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 274877907, 1069824344, "_x_x_x_x_bach_float64_x_x_x_x_", 1056243013, 1071297484, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1202590843, 1069841121, "_x_x_x_x_bach_float64_x_x_x_x_", 1879903583, 1071339054, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2130303779, 1069857898, "_x_x_x_x_bach_float64_x_x_x_x_", 932039972, 1071381369, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3058016715, 1069874675, "_x_x_x_x_bach_float64_x_x_x_x_", 3953881724, 1071424441, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3985729651, 1069891452, "_x_x_x_x_bach_float64_x_x_x_x_", 532779110, 1071468286, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 618475291, 1069908230, "_x_x_x_x_bach_float64_x_x_x_x_", 2775285885, 1071512915, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1546188227, 1069925007, "_x_x_x_x_bach_float64_x_x_x_x_", 2376192586, 1071558344, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2473901163, 1069941784, "_x_x_x_x_bach_float64_x_x_x_x_", 702338906, 1071604587, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3401614099, 1069958561, "_x_x_x_x_bach_float64_x_x_x_x_", 111030750, 1071648165, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 34359738, 1069975339, "_x_x_x_x_bach_float64_x_x_x_x_", 114978097, 1071672122, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 962072674, 1069992116, "_x_x_x_x_bach_float64_x_x_x_x_", 580964134, 1071696508, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1889785610, 1070008893, "_x_x_x_x_bach_float64_x_x_x_x_", 160333878, 1071721331, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2817498546, 1070025670, "_x_x_x_x_bach_float64_x_x_x_x_", 2390680078, 1071746598, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3745211482, 1070042447, "_x_x_x_x_bach_float64_x_x_x_x_", 2821532096, 1071772318, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 377957122, 1070059225, "_x_x_x_x_bach_float64_x_x_x_x_", 1910038251, 1071798499, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1305670058, 1070076002, "_x_x_x_x_bach_float64_x_x_x_x_", 736972077, 1071825149, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2233382994, 1070092779, "_x_x_x_x_bach_float64_x_x_x_x_", 1017902434, 1071852276, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3161095930, 1070109556, "_x_x_x_x_bach_float64_x_x_x_x_", 819596393, 1071879889, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4088808866, 1070126333, "_x_x_x_x_bach_float64_x_x_x_x_", 3161527669, 1071907996, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 721554506, 1070143111, "_x_x_x_x_bach_float64_x_x_x_x_", 3142755879, 1071936607, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1649267442, 1070159888, "_x_x_x_x_bach_float64_x_x_x_x_", 838820605, 1071965731, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1070176665, "_x_x_x_x_bach_float64_x_x_x_x_", 285548440, 1071897078, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3504693314, 1070193442, "_x_x_x_x_bach_float64_x_x_x_x_", 2539012376, 1071820714, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 137438954, 1070210220, "_x_x_x_x_bach_float64_x_x_x_x_", 1305336142, 1071749831, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1065151890, 1070226997, "_x_x_x_x_bach_float64_x_x_x_x_", 3958708513, 1071684034, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1992864826, 1070243774, "_x_x_x_x_bach_float64_x_x_x_x_", 3309066925, 1071601248, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2920577761, 1070260551, "_x_x_x_x_bach_float64_x_x_x_x_", 2864624722, 1071487865, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3848290697, 1070277328, "_x_x_x_x_bach_float64_x_x_x_x_", 1921538511, 1071382619, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 481036337, 1070294106, "_x_x_x_x_bach_float64_x_x_x_x_", 739394191, 1071284926, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1408749273, 1070310883, "_x_x_x_x_bach_float64_x_x_x_x_", 3469626901, 1071194243, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2336462209, 1070327660, "_x_x_x_x_bach_float64_x_x_x_x_", 943980258, 1071110069, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3264175145, 1070344437, "_x_x_x_x_bach_float64_x_x_x_x_", 1634557567, 1071031935, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4191888081, 1070361214, "_x_x_x_x_bach_float64_x_x_x_x_", 3344760264, 1070959408, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 824633721, 1070377992, "_x_x_x_x_bach_float64_x_x_x_x_", 58645940, 1070892087, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1752346657, 1070394769, "_x_x_x_x_bach_float64_x_x_x_x_", 2416552344, 1070829596, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2680059593, 1070411546, "_x_x_x_x_bach_float64_x_x_x_x_", 3044307120, 1070771590, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3607772529, 1070428323, "_x_x_x_x_bach_float64_x_x_x_x_", 2650754690, 1070717747, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 240518169, 1070445101, "_x_x_x_x_bach_float64_x_x_x_x_", 2358478386, 1070667768, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1168231105, 1070461878, "_x_x_x_x_bach_float64_x_x_x_x_", 879871938, 1070621376, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2095944041, 1070478655, "_x_x_x_x_bach_float64_x_x_x_x_", 1588059347, 1070560530, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3023656977, 1070495432, "_x_x_x_x_bach_float64_x_x_x_x_", 530943936, 1070480585, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3951369912, 1070512209, "_x_x_x_x_bach_float64_x_x_x_x_", 470889597, 1070406377, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 584115552, 1070528987, "_x_x_x_x_bach_float64_x_x_x_x_", 2568799314, 1070337494, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1511828488, 1070545764, "_x_x_x_x_bach_float64_x_x_x_x_", 1747498520, 1070273555, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2439541424, 1070562541, "_x_x_x_x_bach_float64_x_x_x_x_", 3354197342, 1070214204, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3367254360, 1070579318, "_x_x_x_x_bach_float64_x_x_x_x_", 1821831182, 1070159113, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1070596096, "_x_x_x_x_bach_float64_x_x_x_x_", 2886754126, 1070107975, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2611340116, 1070604484, "_x_x_x_x_bach_float64_x_x_x_x_", 3419901120, 1070060507, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 927712936, 1070612873, "_x_x_x_x_bach_float64_x_x_x_x_", 1845449400, 1070016446, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3539053052, 1070621261, "_x_x_x_x_bach_float64_x_x_x_x_", 454760136, 1069975547, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1855425872, 1070629650, "_x_x_x_x_bach_float64_x_x_x_x_", 3875746401, 1069937582, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 171798692, 1070638039, "_x_x_x_x_bach_float64_x_x_x_x_", 780443302, 1069902343, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2783138808, 1070646427, "_x_x_x_x_bach_float64_x_x_x_x_", 1815221588, 1069869632, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1099511628, 1070654816, "_x_x_x_x_bach_float64_x_x_x_x_", 581809025, 1069839269, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3710851744, 1070663204, "_x_x_x_x_bach_float64_x_x_x_x_", 3672156642, 1069811084, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2027224564, 1070671593, "_x_x_x_x_bach_float64_x_x_x_x_", 884135201, 1069784923, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 343597384, 1070679982, "_x_x_x_x_bach_float64_x_x_x_x_", 149839758, 1069760639, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2954937500, 1070688370, "_x_x_x_x_bach_float64_x_x_x_x_", 2601775446, 1069738097, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1271310320, 1070696759, "_x_x_x_x_bach_float64_x_x_x_x_", 3657078930, 1069717173, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3882650436, 1070705147, "_x_x_x_x_bach_float64_x_x_x_x_", 2922092072, 1069697751, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2199023256, 1070713536, "_x_x_x_x_bach_float64_x_x_x_x_", 1425915524, 1069679723, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 515396076, 1070721925, "_x_x_x_x_bach_float64_x_x_x_x_", 3347462337, 1069662988, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3126736192, 1070730313, "_x_x_x_x_bach_float64_x_x_x_x_", 746927446, 1069647455, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1443109012, 1070738702, "_x_x_x_x_bach_float64_x_x_x_x_", 1417990106, 1069633036, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4054449128, 1070747090, "_x_x_x_x_bach_float64_x_x_x_x_", 1064225381, 1069619652, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2370821948, 1070755479, "_x_x_x_x_bach_float64_x_x_x_x_", 2867544777, 1069607228, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 687194767, 1070763868, "_x_x_x_x_bach_float64_x_x_x_x_", 2833710089, 1069595696, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3298534883, 1070772256, "_x_x_x_x_bach_float64_x_x_x_x_", 1034644373, 1069584992, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1614907703, 1070780645, "_x_x_x_x_bach_float64_x_x_x_x_", 83720795, 1069575056, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4226247819, 1070789033, "_x_x_x_x_bach_float64_x_x_x_x_", 3720471635, 1069565832, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2542620639, 1070797422, "_x_x_x_x_bach_float64_x_x_x_x_", 2611963075, 1069557271, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1070805811, "_x_x_x_x_bach_float64_x_x_x_x_", 3198121682, 1069549324, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3470333575, 1070814199, "_x_x_x_x_bach_float64_x_x_x_x_", 1579997771, 1069536376, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1786706395, 1070822588, "_x_x_x_x_bach_float64_x_x_x_x_", 4282783811, 1069522681, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 103079215, 1070830977, "_x_x_x_x_bach_float64_x_x_x_x_", 1702454687, 1069509970, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2714419331, 1070839365, "_x_x_x_x_bach_float64_x_x_x_x_", 161153392, 1069498171, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1030792151, 1070847754, "_x_x_x_x_bach_float64_x_x_x_x_", 1949804510, 1069487218, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3642132267, 1070856142, "_x_x_x_x_bach_float64_x_x_x_x_", 3768055088, 1069477051, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1958505087, 1070864531, "_x_x_x_x_bach_float64_x_x_x_x_", 3866106996, 1069467614, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 274877907, 1070872920, "_x_x_x_x_bach_float64_x_x_x_x_", 700537056, 1069458855, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2886218023, 1070881308, "_x_x_x_x_bach_float64_x_x_x_x_", 276516182, 1069450724, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1202590843, 1070889697, "_x_x_x_x_bach_float64_x_x_x_x_", 2104733742, 1069443176, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3813930959, 1070898085, "_x_x_x_x_bach_float64_x_x_x_x_", 2421306886, 1069436170, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2130303779, 1070906474, "_x_x_x_x_bach_float64_x_x_x_x_", 1779808186, 1069429667, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 446676599, 1070914863, "_x_x_x_x_bach_float64_x_x_x_x_", 4124973002, 1069423630, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3058016715, 1070923251, "_x_x_x_x_bach_float64_x_x_x_x_", 3047979897, 1069418027, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1374389535, 1070931640, "_x_x_x_x_bach_float64_x_x_x_x_", 2463173830, 1069412826, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3985729651, 1070940028, "_x_x_x_x_bach_float64_x_x_x_x_", 2982327198, 1069407998, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2302102471, 1070948417, "_x_x_x_x_bach_float64_x_x_x_x_", 1226968576, 1069403517, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 618475291, 1070956806, "_x_x_x_x_bach_float64_x_x_x_x_", 2074963749, 1069399357, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3229815407, 1070965194, "_x_x_x_x_bach_float64_x_x_x_x_", 888134454, 1069395496, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1546188227, 1070973583, "_x_x_x_x_bach_float64_x_x_x_x_", 142136845, 1069391912, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4157528343, 1070981971, "_x_x_x_x_bach_float64_x_x_x_x_", 326005988, 1069388585, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2473901163, 1070990360, "_x_x_x_x_bach_float64_x_x_x_x_", 3763239542, 1069385496, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 790273983, 1070998749, "_x_x_x_x_bach_float64_x_x_x_x_", 1287020281, 1069382630, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3401614099, 1071007137, "_x_x_x_x_bach_float64_x_x_x_x_", 1896679042, 1069379969, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1717986919, 1071015526, "_x_x_x_x_bach_float64_x_x_x_x_", 2313917553, 1069377499, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 34359738, 1071023915, "_x_x_x_x_bach_float64_x_x_x_x_", 3810870721, 1069375206, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2645699854, 1071032303, "_x_x_x_x_bach_float64_x_x_x_x_", 3293612390, 1069373078, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 962072674, 1071040692, "_x_x_x_x_bach_float64_x_x_x_x_", 1588965680, 1069371103, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3573412790, 1071049080, "_x_x_x_x_bach_float64_x_x_x_x_", 3163132299, 1069369269, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1889785610, 1071057469, "_x_x_x_x_bach_float64_x_x_x_x_", 2975612402, 1069367567, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 206158430, 1071065858, "_x_x_x_x_bach_float64_x_x_x_x_", 3416638854, 1069365987, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2817498546, 1071074246, "_x_x_x_x_bach_float64_x_x_x_x_", 1197238642, 1069364521, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1133871366, 1071082635, "_x_x_x_x_bach_float64_x_x_x_x_", 25247717, 1069363160, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3745211482, 1071091023, "_x_x_x_x_bach_float64_x_x_x_x_", 1821480036, 1069361896, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2061584302, 1071099412, "_x_x_x_x_bach_float64_x_x_x_x_", 2244778776, 1069360723, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 377957122, 1071107801, "_x_x_x_x_bach_float64_x_x_x_x_", 3409853016, 1069359634, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2989297238, 1071116189, "_x_x_x_x_bach_float64_x_x_x_x_", 847300004, 1069358624, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1305670058, 1071124578, "_x_x_x_x_bach_float64_x_x_x_x_", 539527434, 1069357686, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3917010174, 1071132966, "_x_x_x_x_bach_float64_x_x_x_x_", 1607267633, 1069356815, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2233382994, 1071141355, "_x_x_x_x_bach_float64_x_x_x_x_", 480517170, 1069356007, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 549755814, 1071149744, "_x_x_x_x_bach_float64_x_x_x_x_", 3668311835, 1069355256, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3161095930, 1071158132, "_x_x_x_x_bach_float64_x_x_x_x_", 1882057987, 1069354560, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1477468750, 1071166521, "_x_x_x_x_bach_float64_x_x_x_x_", 1107856, 1069353914, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4088808866, 1071174909, "_x_x_x_x_bach_float64_x_x_x_x_", 4095780617, 1069353313, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2405181686, 1071183298, "_x_x_x_x_bach_float64_x_x_x_x_", 4162024039, 1069352756, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 721554506, 1071191687, "_x_x_x_x_bach_float64_x_x_x_x_", 4106850041, 1069352239, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3332894622, 1071200075, "_x_x_x_x_bach_float64_x_x_x_x_", 199856168, 1069351760, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1649267442, 1071208464, "_x_x_x_x_bach_float64_x_x_x_x_", 2479704916, 1069351314, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4260607558, 1071216852, "_x_x_x_x_bach_float64_x_x_x_x_", 330933830, 1069350901, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1071225241, "_x_x_x_x_bach_float64_x_x_x_x_", 1079763195, 1069350517, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 893353198, 1071233630, "_x_x_x_x_bach_float64_x_x_x_x_", 4169621082, 1069350160, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3504693314, 1071242018, "_x_x_x_x_bach_float64_x_x_x_x_", 1110395610, 1069349830, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1821066134, 1071250407, "_x_x_x_x_bach_float64_x_x_x_x_", 1201132879, 1069349523, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 137438954, 1071258796, "_x_x_x_x_bach_float64_x_x_x_x_", 1421540582, 1069349238, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2748779070, 1071267184, "_x_x_x_x_bach_float64_x_x_x_x_", 3571269793, 1069348973, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1065151890, 1071275573, "_x_x_x_x_bach_float64_x_x_x_x_", 1347338427, 1069348728, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3676492006, 1071283961, "_x_x_x_x_bach_float64_x_x_x_x_", 1783996765, 1069348500, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1992864826, 1071292350, "_x_x_x_x_bach_float64_x_x_x_x_", 3745429697, 1069348288, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 309237645, 1071300739, "_x_x_x_x_bach_float64_x_x_x_x_", 2190592303, 1069348092, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2920577761, 1071309127, "_x_x_x_x_bach_float64_x_x_x_x_", 1030142421, 1069347910, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1236950581, 1071317516, "_x_x_x_x_bach_float64_x_x_x_x_", 2393007694, 1069360760, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3848290697, 1071325904, "_x_x_x_x_bach_float64_x_x_x_x_", 2310233928, 1069408476, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2164663517, 1071334293, "_x_x_x_x_bach_float64_x_x_x_x_", 2194193298, 1069458567, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 481036337, 1071342682, "_x_x_x_x_bach_float64_x_x_x_x_", 2954221265, 1069511151, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3092376453, 1071351070, "_x_x_x_x_bach_float64_x_x_x_x_", 2500317614, 1069556936, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1408749273, 1071359459, "_x_x_x_x_bach_float64_x_x_x_x_", 456307923, 1069585911, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4020089389, 1071367847, "_x_x_x_x_bach_float64_x_x_x_x_", 3411699983, 1069616327, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2336462209, 1071376236, "_x_x_x_x_bach_float64_x_x_x_x_", 1838441178, 1069648258, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 652835029, 1071384625, "_x_x_x_x_bach_float64_x_x_x_x_", 1553631154, 1069681778, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3264175145, 1071393013, "_x_x_x_x_bach_float64_x_x_x_x_", 3008467549, 1069716966, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1580547965, 1071401402, "_x_x_x_x_bach_float64_x_x_x_x_", 2090044354, 1069753906, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4191888081, 1071409790, "_x_x_x_x_bach_float64_x_x_x_x_", 3847960472, 1069792684, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2508260901, 1071418179, "_x_x_x_x_bach_float64_x_x_x_x_", 1903084612, 1069833393, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 824633721, 1071426568, "_x_x_x_x_bach_float64_x_x_x_x_", 849973101, 1069876128, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1071434956, "_x_x_x_x_bach_float64_x_x_x_x_", 50751016, 1069920990, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1752346657, 1071443345, "_x_x_x_x_bach_float64_x_x_x_x_", 3247264061, 1069968084, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 68719477, 1071451734, "_x_x_x_x_bach_float64_x_x_x_x_", 2454306037, 1070017523, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2680059593, 1071460122, "_x_x_x_x_bach_float64_x_x_x_x_", 560963756, 1070069423, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 996432413, 1071468511, "_x_x_x_x_bach_float64_x_x_x_x_", 3923261184, 1070123905, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3607772529, 1071476899, "_x_x_x_x_bach_float64_x_x_x_x_", 2130762790, 1070181100, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1924145349, 1071485288, "_x_x_x_x_bach_float64_x_x_x_x_", 3669542578, 1070241141, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 240518169, 1071493677, "_x_x_x_x_bach_float64_x_x_x_x_", 2930542757, 1070304171, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2851858285, 1071502065, "_x_x_x_x_bach_float64_x_x_x_x_", 3120602266, 1070370338, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1168231105, 1071510454, "_x_x_x_x_bach_float64_x_x_x_x_", 590263960, 1070439799, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3779571221, 1071518842, "_x_x_x_x_bach_float64_x_x_x_x_", 3596362517, 1070512716, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2095944041, 1071527231, "_x_x_x_x_bach_float64_x_x_x_x_", 3898749596, 1070589263, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 412316861, 1071535620, "_x_x_x_x_bach_float64_x_x_x_x_", 2137146158, 1070632858, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3023656977, 1071544008, "_x_x_x_x_bach_float64_x_x_x_x_", 3731490408, 1070675036, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1340029797, 1071552397, "_x_x_x_x_bach_float64_x_x_x_x_", 2602585784, 1070719314, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3951369912, 1071560785, "_x_x_x_x_bach_float64_x_x_x_x_", 867120502, 1070765796, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2267742732, 1071569174, "_x_x_x_x_bach_float64_x_x_x_x_", 1504967330, 1070814591, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 584115552, 1071577563, "_x_x_x_x_bach_float64_x_x_x_x_", 881090878, 1070865815, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3195455668, 1071585951, "_x_x_x_x_bach_float64_x_x_x_x_", 2797631686, 1070919588, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1511828488, 1071594340, "_x_x_x_x_bach_float64_x_x_x_x_", 2539313996, 1070976038, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4123168604, 1071602728, "_x_x_x_x_bach_float64_x_x_x_x_", 1044610929, 1071035298, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2439541424, 1071611117, "_x_x_x_x_bach_float64_x_x_x_x_", 1961062349, 1071097507, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 755914244, 1071619506, "_x_x_x_x_bach_float64_x_x_x_x_", 177866557, 1071162813, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3367254360, 1071627894, "_x_x_x_x_bach_float64_x_x_x_x_", 493796712, 1071231369, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1683627180, 1071636283, "_x_x_x_x_bach_float64_x_x_x_x_", 1999444230, 1071303337, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1071644672, "_x_x_x_x_bach_float64_x_x_x_x_", 4012050504, 1071378887, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1305670058, 1071648866, "_x_x_x_x_bach_float64_x_x_x_x_", 3502025844, 1071458198, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2611340116, 1071653060, "_x_x_x_x_bach_float64_x_x_x_x_", 1195087452, 1071541457, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3917010174, 1071657254, "_x_x_x_x_bach_float64_x_x_x_x_", 3469379331, 1071628859, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 927712936, 1071661449, "_x_x_x_x_bach_float64_x_x_x_x_", 1436091028, 1071682642, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2233382994, 1071665643, "_x_x_x_x_bach_float64_x_x_x_x_", 842710878, 1071730802, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3539053052, 1071669837, "_x_x_x_x_bach_float64_x_x_x_x_", 617750444, 1071781359, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 549755814, 1071674032, "_x_x_x_x_bach_float64_x_x_x_x_", 2098635207, 1071834432, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1855425872, 1071678226, "_x_x_x_x_bach_float64_x_x_x_x_", 2063888466, 1071890147, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3161095930, 1071682420, "_x_x_x_x_bach_float64_x_x_x_x_", 2592582780, 1071948635, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 171798692, 1071686615, "_x_x_x_x_bach_float64_x_x_x_x_", 3807110514, 1072010034, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1477468750, 1071690809, "_x_x_x_x_bach_float64_x_x_x_x_", 977255148, 1072074490, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2783138808, 1071695003, "_x_x_x_x_bach_float64_x_x_x_x_", 3168734110, 1072142153, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4088808866, 1071699197, "_x_x_x_x_bach_float64_x_x_x_x_", 425235120, 1072213185, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1099511628, 1071703392, "_x_x_x_x_bach_float64_x_x_x_x_", 4041636122, 1072287751, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2405181686, 1071707586, "_x_x_x_x_bach_float64_x_x_x_x_", 1018438452, 1072366030, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3710851744, 1071711780, "_x_x_x_x_bach_float64_x_x_x_x_", 3090049354, 1072448204, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 721554506, 1071715975, "_x_x_x_x_bach_float64_x_x_x_x_", 1352562172, 1072534469, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2027224564, 1071720169, "_x_x_x_x_bach_float64_x_x_x_x_", 2589112088, 1072625027, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3332894622, 1071724363, "_x_x_x_x_bach_float64_x_x_x_x_", 3521775318, 1072693134, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 343597384, 1071728558, "_x_x_x_x_bach_float64_x_x_x_x_", 890899812, 1072692715, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1649267442, 1071732752, "_x_x_x_x_bach_float64_x_x_x_x_", 2392130286, 1072692276, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2954937500, 1071736946, "_x_x_x_x_bach_float64_x_x_x_x_", 20700713, 1072691818, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4260607558, 1071741140, "_x_x_x_x_bach_float64_x_x_x_x_", 2783399819, 1072691338, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1271310320, 1071745335, "_x_x_x_x_bach_float64_x_x_x_x_", 2331196245, 1072690837, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1071749529, "_x_x_x_x_bach_float64_x_x_x_x_", 3016026693, 1072690313, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3882650436, 1071753723, "_x_x_x_x_bach_float64_x_x_x_x_", 407614316, 1072689766, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 893353198, 1071757918, "_x_x_x_x_bach_float64_x_x_x_x_", 2759581467, 1072689193, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2199023256, 1071762112, "_x_x_x_x_bach_float64_x_x_x_x_", 935559080, 1072688595, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3504693314, 1071766306, "_x_x_x_x_bach_float64_x_x_x_x_", 2759391749, 1072687969, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 515396076, 1071770501, "_x_x_x_x_bach_float64_x_x_x_x_", 2940400827, 1072687315, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1821066134, 1071774695, "_x_x_x_x_bach_float64_x_x_x_x_", 242835646, 1072686632, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3126736192, 1071778889, "_x_x_x_x_bach_float64_x_x_x_x_", 1769950161, 1072685917, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 137438954, 1071783084, "_x_x_x_x_bach_float64_x_x_x_x_", 1477781730, 1072685170, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1443109012, 1071787278, "_x_x_x_x_bach_float64_x_x_x_x_", 1638086306, 1072684389, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2748779070, 1071791472, "_x_x_x_x_bach_float64_x_x_x_x_", 4235962606, 1072683572, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4054449128, 1071795666, "_x_x_x_x_bach_float64_x_x_x_x_", 2366911814, 1072682719, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1065151890, 1071799861, "_x_x_x_x_bach_float64_x_x_x_x_", 1698078278, 1072681827, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2370821948, 1071804055, "_x_x_x_x_bach_float64_x_x_x_x_", 3274167712, 1072680894, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3676492005, 1071808249, "_x_x_x_x_bach_float64_x_x_x_x_", 3502589740, 1072679919, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 687194767, 1071812444, "_x_x_x_x_bach_float64_x_x_x_x_", 2727860951, 1072678900, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1992864825, 1071816638, "_x_x_x_x_bach_float64_x_x_x_x_", 920401401, 1072677835, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3298534883, 1071820832, "_x_x_x_x_bach_float64_x_x_x_x_", 1954529057, 1072676721, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 309237645, 1071825027, "_x_x_x_x_bach_float64_x_x_x_x_", 705815001, 1072675557, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1614907703, 1071829221, "_x_x_x_x_bach_float64_x_x_x_x_", 212404707, 1072674340, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2920577761, 1071833415, "_x_x_x_x_bach_float64_x_x_x_x_", 3065694016, 1072673067, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4226247819, 1071837609, "_x_x_x_x_bach_float64_x_x_x_x_", 2800125408, 1072671737, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1236950581, 1071841804, "_x_x_x_x_bach_float64_x_x_x_x_", 1051868438, 1072670347, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2542620639, 1071845998, "_x_x_x_x_bach_float64_x_x_x_x_", 3241702348, 1072668893, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3848290697, 1071850192, "_x_x_x_x_bach_float64_x_x_x_x_", 1371991842, 1072667374, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1071854387, "_x_x_x_x_bach_float64_x_x_x_x_", 4067252564, 1072665785, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2164663517, 1071858581, "_x_x_x_x_bach_float64_x_x_x_x_", 2189108923, 1072664125, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3470333575, 1071862775, "_x_x_x_x_bach_float64_x_x_x_x_", 3169580615, 1072662389, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 481036337, 1071866970, "_x_x_x_x_bach_float64_x_x_x_x_", 918659578, 1072660575, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1786706395, 1071871164, "_x_x_x_x_bach_float64_x_x_x_x_", 1565207218, 1072658678, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3092376453, 1071875358, "_x_x_x_x_bach_float64_x_x_x_x_", 1951899886, 1072656695, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 103079215, 1071879553, "_x_x_x_x_bach_float64_x_x_x_x_", 2488541715, 1072654622, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1408749273, 1071883747, "_x_x_x_x_bach_float64_x_x_x_x_", 2824075082, 1072652455, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2714419331, 1071887941, "_x_x_x_x_bach_float64_x_x_x_x_", 1812060127, 1072650190, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4020089389, 1071892135, "_x_x_x_x_bach_float64_x_x_x_x_", 1769555375, 1072647822, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1030792151, 1071896330, "_x_x_x_x_bach_float64_x_x_x_x_", 4144426502, 1072645346, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2336462209, 1071900524, "_x_x_x_x_bach_float64_x_x_x_x_", 885976257, 1072642759, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3642132267, 1071904718, "_x_x_x_x_bach_float64_x_x_x_x_", 173523563, 1072640054, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 652835029, 1071908913, "_x_x_x_x_bach_float64_x_x_x_x_", 603504689, 1072637226, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1958505087, 1071913107, "_x_x_x_x_bach_float64_x_x_x_x_", 4029324848, 1072634269, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3264175145, 1071917301, "_x_x_x_x_bach_float64_x_x_x_x_", 2629362085, 1072631179, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 274877907, 1071921496, "_x_x_x_x_bach_float64_x_x_x_x_", 332572857, 1072627949, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1580547965, 1071925690, "_x_x_x_x_bach_float64_x_x_x_x_", 4177092914, 1072624571, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2886218023, 1071929884, "_x_x_x_x_bach_float64_x_x_x_x_", 2781601346, 1072621041, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4191888081, 1071934078, "_x_x_x_x_bach_float64_x_x_x_x_", 648818577, 1072617351, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1202590843, 1071938273, "_x_x_x_x_bach_float64_x_x_x_x_", 926845170, 1072613493, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2508260901, 1071942467, "_x_x_x_x_bach_float64_x_x_x_x_", 1052735109, 1072609460, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3813930959, 1071946661, "_x_x_x_x_bach_float64_x_x_x_x_", 1278182548, 1072605244, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 824633721, 1071950856, "_x_x_x_x_bach_float64_x_x_x_x_", 307391728, 1072600837, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2130303779, 1071955050, "_x_x_x_x_bach_float64_x_x_x_x_", 3816801588, 1072596229, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1071959244, "_x_x_x_x_bach_float64_x_x_x_x_", 2906853866, 1072591413, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 446676599, 1071963439, "_x_x_x_x_bach_float64_x_x_x_x_", 4090038783, 1072586378, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1752346657, 1071967633, "_x_x_x_x_bach_float64_x_x_x_x_", 3440884829, 1072581115, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3058016715, 1071971827, "_x_x_x_x_bach_float64_x_x_x_x_", 3691982524, 1072575613, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 68719477, 1071976022, "_x_x_x_x_bach_float64_x_x_x_x_", 1261433024, 1072569862, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1374389535, 1071980216, "_x_x_x_x_bach_float64_x_x_x_x_", 3341091117, 1072563849, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2680059593, 1071984410, "_x_x_x_x_bach_float64_x_x_x_x_", 2030978157, 1072557564, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3985729651, 1071988604, "_x_x_x_x_bach_float64_x_x_x_x_", 8956845, 1072550994, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 996432413, 1071992799, "_x_x_x_x_bach_float64_x_x_x_x_", 1836124760, 1072544125, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2302102471, 1071996993, "_x_x_x_x_bach_float64_x_x_x_x_", 962491611, 1072536945, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3607772529, 1072001187, "_x_x_x_x_bach_float64_x_x_x_x_", 1087430402, 1072529439, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 618475291, 1072005382, "_x_x_x_x_bach_float64_x_x_x_x_", 3155200548, 1072521592, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1924145349, 1072009576, "_x_x_x_x_bach_float64_x_x_x_x_", 934980431, 1072513390, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3229815407, 1072013770, "_x_x_x_x_bach_float64_x_x_x_x_", 2365032449, 1072504815, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 240518169, 1072017965, "_x_x_x_x_bach_float64_x_x_x_x_", 3646299215, 1072495851, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1546188227, 1072022159, "_x_x_x_x_bach_float64_x_x_x_x_", 1984507846, 1072486481, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2851858285, 1072026353, "_x_x_x_x_bach_float64_x_x_x_x_", 4030828197, 1072476685, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4157528343, 1072030547, "_x_x_x_x_bach_float64_x_x_x_x_", 4250987312, 1072466445, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1168231105, 1072034742, "_x_x_x_x_bach_float64_x_x_x_x_", 1942009569, 1072455741, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2473901163, 1072038936, "_x_x_x_x_bach_float64_x_x_x_x_", 1061686426, 1072444551, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3779571221, 1072043130, "_x_x_x_x_bach_float64_x_x_x_x_", 1460374589, 1072432853, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 790273983, 1072047325, "_x_x_x_x_bach_float64_x_x_x_x_", 2989608031, 1072420624, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2095944041, 1072051519, "_x_x_x_x_bach_float64_x_x_x_x_", 1012320445, 1072407841, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3401614099, 1072055713, "_x_x_x_x_bach_float64_x_x_x_x_", 3379065585, 1072394477, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 412316861, 1072059908, "_x_x_x_x_bach_float64_x_x_x_x_", 150357762, 1072380508, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1717986919, 1072064102, "_x_x_x_x_bach_float64_x_x_x_x_", 2028830267, 1072365904, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3023656977, 1072068296, "_x_x_x_x_bach_float64_x_x_x_x_", 1471885460, 1072350638, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 34359738, 1072072491, "_x_x_x_x_bach_float64_x_x_x_x_", 2513266467, 1072334679, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1340029796, 1072076685, "_x_x_x_x_bach_float64_x_x_x_x_", 3328954584, 1072317996, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2645699854, 1072080879, "_x_x_x_x_bach_float64_x_x_x_x_", 266368582, 1072300557, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3951369912, 1072085073, "_x_x_x_x_bach_float64_x_x_x_x_", 451440610, 1072282326, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 962072674, 1072089268, "_x_x_x_x_bach_float64_x_x_x_x_", 23348702, 1072263268, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2267742732, 1072093462, "_x_x_x_x_bach_float64_x_x_x_x_", 1010778042, 1072243345, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3573412790, 1072097656, "_x_x_x_x_bach_float64_x_x_x_x_", 2424603682, 1072222518, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 584115552, 1072101851, "_x_x_x_x_bach_float64_x_x_x_x_", 4221075422, 1072200746, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1889785610, 1072106045, "_x_x_x_x_bach_float64_x_x_x_x_", 2660015040, 1072177987, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3195455668, 1072110239, "_x_x_x_x_bach_float64_x_x_x_x_", 2827146742, 1072154195, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 206158430, 1072114434, "_x_x_x_x_bach_float64_x_x_x_x_", 1075206526, 1072129324, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1511828488, 1072118628, "_x_x_x_x_bach_float64_x_x_x_x_", 1807593672, 1072103324, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2817498546, 1072122822, "_x_x_x_x_bach_float64_x_x_x_x_", 4179274664, 1072076144, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4123168604, 1072127016, "_x_x_x_x_bach_float64_x_x_x_x_", 1663796880, 1072047732, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1133871366, 1072131211, "_x_x_x_x_bach_float64_x_x_x_x_", 3075494119, 1072018030, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2439541424, 1072135405, "_x_x_x_x_bach_float64_x_x_x_x_", 2031548572, 1071986981, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3745211482, 1072139599, "_x_x_x_x_bach_float64_x_x_x_x_", 2227159946, 1071954523, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 755914244, 1072143794, "_x_x_x_x_bach_float64_x_x_x_x_", 4033567262, 1071920592, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2061584302, 1072147988, "_x_x_x_x_bach_float64_x_x_x_x_", 3957512642, 1071885122, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3367254360, 1072152182, "_x_x_x_x_bach_float64_x_x_x_x_", 2666115431, 1071848043, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 377957122, 1072156377, "_x_x_x_x_bach_float64_x_x_x_x_", 101207536, 1071809282, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1683627180, 1072160571, "_x_x_x_x_bach_float64_x_x_x_x_", 3451770546, 1071768761, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2989297238, 1072164765, "_x_x_x_x_bach_float64_x_x_x_x_", 738618484, 1071726403, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072168960, "_x_x_x_x_bach_float64_x_x_x_x_", 3089270224, 1071682122, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1305670058, 1072173154, "_x_x_x_x_bach_float64_x_x_x_x_", 2165720196, 1071626994, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2611340116, 1072177348, "_x_x_x_x_bach_float64_x_x_x_x_", 1039877146, 1071530215, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3917010174, 1072181542, "_x_x_x_x_bach_float64_x_x_x_x_", 353514984, 1071429045, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 927712936, 1072185737, "_x_x_x_x_bach_float64_x_x_x_x_", 3473670122, 1071323284, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2233382994, 1072189931, "_x_x_x_x_bach_float64_x_x_x_x_", 717212564, 1071212726, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3539053052, 1072194125, "_x_x_x_x_bach_float64_x_x_x_x_", 1949313180, 1071097151, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 549755814, 1072198320, "_x_x_x_x_bach_float64_x_x_x_x_", 382524930, 1070976333, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1855425872, 1072202514, "_x_x_x_x_bach_float64_x_x_x_x_", 716838842, 1070850033, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3161095930, 1072206708, "_x_x_x_x_bach_float64_x_x_x_x_", 4242742162, 1070718002, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 171798692, 1072210903, "_x_x_x_x_bach_float64_x_x_x_x_", 590881448, 1070563869, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1477468750, 1072215097, "_x_x_x_x_bach_float64_x_x_x_x_", 1126651904, 1070275304, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2783138808, 1072219291, "_x_x_x_x_bach_float64_x_x_x_x_", 564479452, 1069973647, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4088808866, 1072223485, "_x_x_x_x_bach_float64_x_x_x_x_", 3204961856, 1069658303, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1099511628, 1072227680, "_x_x_x_x_bach_float64_x_x_x_x_", 1358298544, 1069109786, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2405181686, 1072231874, "_x_x_x_x_bach_float64_x_x_x_x_", 4226936816, 1068342200, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3710851744, 1072236068, "_x_x_x_x_bach_float64_x_x_x_x_", 37671168, 1066302407, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 721554506, 1072240263, "_x_x_x_x_bach_float64_x_x_x_x_", 2978751213, 1063140323, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2027224564, 1072244457, "_x_x_x_x_bach_float64_x_x_x_x_", 2014223848, 1064509881, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3332894622, 1072248651, "_x_x_x_x_bach_float64_x_x_x_x_", 4238135463, 1065282882, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 343597384, 1072252846, "_x_x_x_x_bach_float64_x_x_x_x_", 208292255, 1065711958, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1649267442, 1072257040, "_x_x_x_x_bach_float64_x_x_x_x_", 1632081898, 1066113416, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2954937500, 1072261234, "_x_x_x_x_bach_float64_x_x_x_x_", 2554002201, 1066462180, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4260607558, 1072265428, "_x_x_x_x_bach_float64_x_x_x_x_", 4190179289, 1066670677, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1271310320, 1072269623, "_x_x_x_x_bach_float64_x_x_x_x_", 2076754520, 1066883171, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1072273817, "_x_x_x_x_bach_float64_x_x_x_x_", 3047183991, 1067099737, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3882650436, 1072278011, "_x_x_x_x_bach_float64_x_x_x_x_", 3059929757, 1067320454, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 893353198, 1072282206, "_x_x_x_x_bach_float64_x_x_x_x_", 102101493, 1067497885, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2199023256, 1072286400, "_x_x_x_x_bach_float64_x_x_x_x_", 1706527929, 1067612514, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3504693314, 1072290594, "_x_x_x_x_bach_float64_x_x_x_x_", 3409547800, 1067729340, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 515396076, 1072294789, "_x_x_x_x_bach_float64_x_x_x_x_", 1383654930, 1067848406, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1821066134, 1072298983, "_x_x_x_x_bach_float64_x_x_x_x_", 3857622924, 1067969753, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3126736192, 1072303177, "_x_x_x_x_bach_float64_x_x_x_x_", 1118171131, 1068093427, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 137438954, 1072307372, "_x_x_x_x_bach_float64_x_x_x_x_", 4232380779, 1068219470, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1443109012, 1072311566, "_x_x_x_x_bach_float64_x_x_x_x_", 2167030163, 1068347930, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2748779070, 1072315760, "_x_x_x_x_bach_float64_x_x_x_x_", 513631152, 1068478852, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4054449128, 1072319954, "_x_x_x_x_bach_float64_x_x_x_x_", 2190119395, 1068555613, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1065151890, 1072324149, "_x_x_x_x_bach_float64_x_x_x_x_", 2789801024, 1068623607, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2370821948, 1072328343, "_x_x_x_x_bach_float64_x_x_x_x_", 4236710164, 1068692904, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3676492006, 1072332537, "_x_x_x_x_bach_float64_x_x_x_x_", 2139209750, 1068763530, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 687194768, 1072336732, "_x_x_x_x_bach_float64_x_x_x_x_", 2751712152, 1068835509, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1992864826, 1072340926, "_x_x_x_x_bach_float64_x_x_x_x_", 1539250868, 1068908868, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3298534883, 1072345120, "_x_x_x_x_bach_float64_x_x_x_x_", 397513129, 1068983633, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 309237645, 1072349315 ],
									"reg_data_0000000001" : [ "_x_x_x_x_bach_float64_x_x_x_x_", 3398805936, 1069059830, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1614907703, 1072353509, "_x_x_x_x_bach_float64_x_x_x_x_", 3948871832, 1069137488, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2920577761, 1072357703, "_x_x_x_x_bach_float64_x_x_x_x_", 2009275541, 1069216635, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4226247819, 1072361897, "_x_x_x_x_bach_float64_x_x_x_x_", 4140736190, 1069297298, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1236950581, 1072366092, "_x_x_x_x_bach_float64_x_x_x_x_", 2072453618, 1069379508, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2542620639, 1072370286, "_x_x_x_x_bach_float64_x_x_x_x_", 2811888673, 1069463293, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3848290697, 1072374480, "_x_x_x_x_bach_float64_x_x_x_x_", 1460415653, 1069548102, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1072378675, "_x_x_x_x_bach_float64_x_x_x_x_", 723526774, 1069591616, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2164663517, 1072382869, "_x_x_x_x_bach_float64_x_x_x_x_", 4280945605, 1069635963, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3470333575, 1072387063, "_x_x_x_x_bach_float64_x_x_x_x_", 3477049282, 1069681161, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 481036337, 1072391258, "_x_x_x_x_bach_float64_x_x_x_x_", 3856957133, 1069727225, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1786706395, 1072395452, "_x_x_x_x_bach_float64_x_x_x_x_", 3716914004, 1069774172, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3092376453, 1072399646, "_x_x_x_x_bach_float64_x_x_x_x_", 2719928034, 1069822019, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 103079215, 1072403841, "_x_x_x_x_bach_float64_x_x_x_x_", 1921966480, 1069870783, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1408749273, 1072408035, "_x_x_x_x_bach_float64_x_x_x_x_", 3798653614, 1069920481, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2714419331, 1072412229, "_x_x_x_x_bach_float64_x_x_x_x_", 3682545722, 1069971132, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4020089389, 1072416423, "_x_x_x_x_bach_float64_x_x_x_x_", 2675764096, 1070022754, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1030792151, 1072420618, "_x_x_x_x_bach_float64_x_x_x_x_", 3383290353, 1070075365, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2336462209, 1072424812, "_x_x_x_x_bach_float64_x_x_x_x_", 1351836136, 1070128985, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3642132267, 1072429006, "_x_x_x_x_bach_float64_x_x_x_x_", 2279068669, 1070183632, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 652835029, 1072433201, "_x_x_x_x_bach_float64_x_x_x_x_", 568693303, 1070239327, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1958505087, 1072437395, "_x_x_x_x_bach_float64_x_x_x_x_", 835782450, 1070296089, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3264175145, 1072441589, "_x_x_x_x_bach_float64_x_x_x_x_", 757983300, 1070353939, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 274877907, 1072445784, "_x_x_x_x_bach_float64_x_x_x_x_", 3992092216, 1070412897, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1580547965, 1072449978, "_x_x_x_x_bach_float64_x_x_x_x_", 3026465126, 1070472986, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2886218023, 1072454172, "_x_x_x_x_bach_float64_x_x_x_x_", 688752233, 1070534227, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4191888081, 1072458366, "_x_x_x_x_bach_float64_x_x_x_x_", 2942229761, 1070596368, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1202590843, 1072462561, "_x_x_x_x_bach_float64_x_x_x_x_", 3930658186, 1070628173, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2508260901, 1072466755, "_x_x_x_x_bach_float64_x_x_x_x_", 3154436491, 1070660588, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3813930959, 1072470949, "_x_x_x_x_bach_float64_x_x_x_x_", 3549513459, 1070693624, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 824633721, 1072475144, "_x_x_x_x_bach_float64_x_x_x_x_", 423680374, 1070727294, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2130303779, 1072479338, "_x_x_x_x_bach_float64_x_x_x_x_", 2949841234, 1070761608, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1072483532, "_x_x_x_x_bach_float64_x_x_x_x_", 4120028701, 1070796580, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 446676599, 1072487727, "_x_x_x_x_bach_float64_x_x_x_x_", 2239387699, 1070832223, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1752346657, 1072491921, "_x_x_x_x_bach_float64_x_x_x_x_", 945689499, 1070868549, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3058016715, 1072496115, "_x_x_x_x_bach_float64_x_x_x_x_", 639285230, 1070905571, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 68719477, 1072500310, "_x_x_x_x_bach_float64_x_x_x_x_", 2798342469, 1070943302, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1374389535, 1072504504, "_x_x_x_x_bach_float64_x_x_x_x_", 1409568397, 1070981757, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2680059593, 1072508698, "_x_x_x_x_bach_float64_x_x_x_x_", 169132719, 1071020949, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3985729651, 1072512892, "_x_x_x_x_bach_float64_x_x_x_x_", 3914190273, 1071060891, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 996432413, 1072517087, "_x_x_x_x_bach_float64_x_x_x_x_", 1464880353, 1071101600, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2302102471, 1072521281, "_x_x_x_x_bach_float64_x_x_x_x_", 6352671, 1071143089, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3607772529, 1072525475, "_x_x_x_x_bach_float64_x_x_x_x_", 3636645698, 1071185372, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 618475291, 1072529670, "_x_x_x_x_bach_float64_x_x_x_x_", 504934910, 1071228467, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1924145349, 1072533864, "_x_x_x_x_bach_float64_x_x_x_x_", 1489832320, 1071272387, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3229815407, 1072538058, "_x_x_x_x_bach_float64_x_x_x_x_", 1568726859, 1071317149, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 240518169, 1072542253, "_x_x_x_x_bach_float64_x_x_x_x_", 1317127816, 1071362769, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1546188227, 1072546447, "_x_x_x_x_bach_float64_x_x_x_x_", 2638674164, 1071409263, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2851858285, 1072550641, "_x_x_x_x_bach_float64_x_x_x_x_", 200655351, 1071456649, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4157528343, 1072554835, "_x_x_x_x_bach_float64_x_x_x_x_", 2934790986, 1071504942, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1168231105, 1072559030, "_x_x_x_x_bach_float64_x_x_x_x_", 3998900276, 1071554161, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2473901163, 1072563224, "_x_x_x_x_bach_float64_x_x_x_x_", 2278685726, 1071604324, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3779571221, 1072567418, "_x_x_x_x_bach_float64_x_x_x_x_", 1207598442, 1071650060, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 790273983, 1072571613, "_x_x_x_x_bach_float64_x_x_x_x_", 973959264, 1071676112, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2095944041, 1072575807, "_x_x_x_x_bach_float64_x_x_x_x_", 2114099576, 1071702663, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3401614099, 1072580001, "_x_x_x_x_bach_float64_x_x_x_x_", 2781711186, 1071729723, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 412316861, 1072584196, "_x_x_x_x_bach_float64_x_x_x_x_", 1918286040, 1071757302, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1717986919, 1072588390, "_x_x_x_x_bach_float64_x_x_x_x_", 3563182736, 1071785409, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3023656977, 1072592584, "_x_x_x_x_bach_float64_x_x_x_x_", 3984113275, 1071814055, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 34359739, 1072596779, "_x_x_x_x_bach_float64_x_x_x_x_", 282761206, 1071843251, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1340029797, 1072600973, "_x_x_x_x_bach_float64_x_x_x_x_", 3295667685, 1071873005, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2645699855, 1072605167, "_x_x_x_x_bach_float64_x_x_x_x_", 3250783623, 1071903330, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3951369912, 1072609361, "_x_x_x_x_bach_float64_x_x_x_x_", 4143810806, 1071934236, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 962072674, 1072613556, "_x_x_x_x_bach_float64_x_x_x_x_", 2280286396, 1071965735, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2267742732, 1072617750, "_x_x_x_x_bach_float64_x_x_x_x_", 3472697358, 1071997837, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3573412790, 1072621944, "_x_x_x_x_bach_float64_x_x_x_x_", 1583219812, 1072030555, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 584115552, 1072626139, "_x_x_x_x_bach_float64_x_x_x_x_", 16468161, 1072063900, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1889785610, 1072630333, "_x_x_x_x_bach_float64_x_x_x_x_", 3147816513, 1072097883, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3195455668, 1072634527, "_x_x_x_x_bach_float64_x_x_x_x_", 3457102656, 1072132518, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 206158430, 1072638722, "_x_x_x_x_bach_float64_x_x_x_x_", 3022427052, 1072167817, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1511828488, 1072642916, "_x_x_x_x_bach_float64_x_x_x_x_", 654576867, 1072203793, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2817498546, 1072647110, "_x_x_x_x_bach_float64_x_x_x_x_", 506656922, 1072240458, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4123168604, 1072651304, "_x_x_x_x_bach_float64_x_x_x_x_", 3504228941, 1072277825, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1133871366, 1072655499, "_x_x_x_x_bach_float64_x_x_x_x_", 3070802851, 1072315909, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2439541424, 1072659693, "_x_x_x_x_bach_float64_x_x_x_x_", 2328556664, 1072354723, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3745211482, 1072663887, "_x_x_x_x_bach_float64_x_x_x_x_", 1234684941, 1072394281, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 755914244, 1072668082, "_x_x_x_x_bach_float64_x_x_x_x_", 898023704, 1072434597, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2061584302, 1072672276, "_x_x_x_x_bach_float64_x_x_x_x_", 3601123173, 1072475685, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3367254360, 1072676470, "_x_x_x_x_bach_float64_x_x_x_x_", 4232808938, 1072517561, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 377957122, 1072680665, "_x_x_x_x_bach_float64_x_x_x_x_", 3196010808, 1072560240, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1683627180, 1072684859, "_x_x_x_x_bach_float64_x_x_x_x_", 2136161854, 1072603737, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2989297238, 1072689053, "_x_x_x_x_bach_float64_x_x_x_x_", 3965012652, 1072648067, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "]", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, ":heuristic", 100, "]", "]", "]", "]", ":rnd?", "t", ":sols-mode", 1, "]" ],
									"reg_data_count" : [ 2 ],
									"saved_object_attributes" : 									{
										"embed" : 1,
										"versionnumber" : 80104
									}
,
									"text" : "bach.reg @embed 1",
									"textcolor" : [ 0.952941176470588, 0.564705882352941, 0.098039215686275, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 176.166674137115479, 28.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 308.166674137115479, 109.0, 75.0, 22.0 ],
									"text" : "4 6 10 15 21"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 270.166674137115479, 77.586193711292481, 67.0, 22.0 ],
									"text" : "length_mel"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 270.166674137115479, 138.919527084362244, 57.0, 22.0 ],
									"text" : "lisp.for-in"
								}

							}
, 							{
								"box" : 								{
									"bwcompatibility" : 80104,
									"clefs" : [ "FG", "FG", "FG", "FG", "FG" ],
									"defaultnoteslots" : [ "null" ],
									"enharmonictable" : [ "default", "default", "default", "default", "default" ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidevoices" : [ 0, 0, 0, 0, 0 ],
									"id" : "obj-34",
									"keys" : [ "CM", "CM", "CM", "CM", "CM" ],
									"loop" : [ 0.0, 1000.0 ],
									"maxclass" : "bach.roll",
									"midichannels" : [ 1, 2, 3, 4, 5 ],
									"notationstyles" : [ "et", "et", "et", "et", "et" ],
									"numinlets" : 6,
									"numoutlets" : 8,
									"numparts" : [ 1, 1, 1, 1, 1 ],
									"numvoices" : 5,
									"out" : "nnnnnnnn",
									"outlettype" : [ "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 10.666674137115479, 429.0, 494.0, 306.0 ],
									"pitcheditrange" : [ "null" ],
									"stafflines" : [ 5, 5, 5, 5, 5 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"versionnumber" : 80900,
									"voicenames" : [ "[", "]", "[", "]", "[", "]", "[", "]", "[", "]" ],
									"voicespacing" : [ 0.0, 30.0, 30.0, 30.0, 30.0, 30.0 ],
									"whole_roll_data_0000000000" : [ "roll", "[", "slotinfo", "[", 1, "[", "name", "velocity envelope", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 2, "[", "name", "slot function", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 3, "[", "name", "slot intlist", "]", "[", "type", "intlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 4, "[", "name", "slot floatlist", "]", "[", "type", "floatlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 5, "[", "name", "slot int", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 6, "[", "name", "slot float", "]", "[", "type", "float", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 7, "[", "name", "slot text", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 8, "[", "name", "slot filelist", "]", "[", "type", "filelist", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080213504, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 9, "[", "name", "slot spat", "]", "[", "type", "spat", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076101120, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 10, "[", "name", "slot llll", "]", "[", "type", "llll", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 11, "[", "name", "slot 11", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 12, "[", "name", "slot 12", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 13, "[", "name", "slot 13", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 14, "[", "name", "slot 14", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 15, "[", "name", "slot 15", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 16, "[", "name", "slot 16", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 17, "[", "name", "slot 17", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 18, "[", "name", "slot 18", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 19, "[", "name", "slot 19", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 20, "[", "name", "dynamics", "]", "[", "type", "dynamics", "]", "[", "key", "d", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 21, "[", "name", "lyrics", "]", "[", "type", "text", "]", "[", "key", "l", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 22, "[", "name", "articulations", "]", "[", "type", "articulations", "]", "[", "key", "a", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 23, "[", "name", "notehead", "]", "[", "type", "notehead", "]", "[", "key", "h", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 24, "[", "name", "annotation", "]", "[", "type", "text", "]", "[", "key", "t", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 25, "[", "name", "slot 25", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 26, "[", "name", "slot 26", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 27, "[", "name", "slot 27", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 28, "[", "name", "slot 28", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 29, "[", "name", "slot 29", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 30, "[", "name", "slot 30", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "]", "[", "commands", "[", 1, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 2, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 3, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 4, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 5, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "]", "[", "groups", "]", "[", "markers", "]", "[", "midichannels", 1, 2, 3, 4, 5, "]", "[", "articulationinfo", "]", "[", "noteheadinfo", "]", "[", 0, "]", "[", 0, "]", "[", 0, "]", "[", 0, "]", "[", 0, "]" ],
									"whole_roll_data_count" : [ 1 ],
									"zoom" : 42.578125
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 10.666674137115479, 359.0, 80.0, 22.0 ],
									"text" : "lisp.quickeval"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 48.666674137115479, 109.0, 212.0, 22.0 ],
									"text" : "(48 55) (48 60) (48 72) (48 84) (48 96)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 10.666674137115479, 77.586193711292481, 39.0, 22.0 ],
									"text" : "range"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 10.666674137115479, 248.919527084362244, 73.0, 22.0 ],
									"text" : "lisp.iterate 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 134.166674137115479, 265.399993896484375, 97.0, 22.0 ],
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
									"patching_rect" : [ 10.666674137115479, 138.919527084362244, 57.0, 22.0 ],
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
									"patching_rect" : [ 134.166674137115479, 239.0, 117.0, 22.0 ],
									"reg_data_0000000000" : [ "[", "omcs::pmc", "[", "pw::create-list", "length_mel", "[", "pw::arithm-ser", "[", "nth", 0, "range", "]", 1, "[", "nth", 1, "range", "]", "]", "]", "[", "pw::backquote", "[", "pw::%@", "[", "jbs-constraints::collect-true/false-rules", "[", "jbs-constraints::no-local-repetition-rule", ":true/false", 1, "]", "]", "]", "]", ":heuristic-rules", "[", "pw::backquote", "[", "pw::%@", "[", "jbs-constraints::collect-heuristic-rules", "[", "jbs-constraints::mk-profile-rule", "[", "nth", 0, "range", "]", "[", "nth", 1, "range", "]", "length_mel", "[", "quote", "[", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3539053052, 1063281229, "_x_x_x_x_bach_float64_x_x_x_x_", 1217434250, 1063516379, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3539053052, 1064329805, "_x_x_x_x_bach_float64_x_x_x_x_", 1904903895, 1064576766, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3161095930, 1064866676, "_x_x_x_x_bach_float64_x_x_x_x_", 1741076663, 1065254834, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3539053052, 1065378381, "_x_x_x_x_bach_float64_x_x_x_x_", 4214977825, 1065649098, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1202590843, 1065646817, "_x_x_x_x_bach_float64_x_x_x_x_", 3330970476, 1066000346, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3161095930, 1065915252, "_x_x_x_x_bach_float64_x_x_x_x_", 88785564, 1066358037, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 824633721, 1066183688, "_x_x_x_x_bach_float64_x_x_x_x_", 3219095168, 1066561913, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3539053052, 1066426957, "_x_x_x_x_bach_float64_x_x_x_x_", 919741477, 1066747134, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2370821947, 1066561175, "_x_x_x_x_bach_float64_x_x_x_x_", 523917291, 1066935710, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1202590843, 1066695393, "_x_x_x_x_bach_float64_x_x_x_x_", 2499189930, 1067127708, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 34359738, 1066829611, "_x_x_x_x_bach_float64_x_x_x_x_", 2083024779, 1067323062, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3161095930, 1066963828, "_x_x_x_x_bach_float64_x_x_x_x_", 2486545546, 1067486170, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1992864825, 1067098046, "_x_x_x_x_bach_float64_x_x_x_x_", 1289727139, 1067587404, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 824633721, 1067232264, "_x_x_x_x_bach_float64_x_x_x_x_", 4127291773, 1067690449, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3951369912, 1067366481, "_x_x_x_x_bach_float64_x_x_x_x_", 2409304854, 1067795307, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3539053052, 1067475533, "_x_x_x_x_bach_float64_x_x_x_x_", 3279568308, 1067902077, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2954937500, 1067542642, "_x_x_x_x_bach_float64_x_x_x_x_", 2443114837, 1068010760, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2370821947, 1067609751, "_x_x_x_x_bach_float64_x_x_x_x_", 2281211750, 1068121389, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1786706395, 1067676860, "_x_x_x_x_bach_float64_x_x_x_x_", 880159058, 1068233998, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1202590843, 1067743969, "_x_x_x_x_bach_float64_x_x_x_x_", 621224070, 1068348620, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 618475291, 1067811078, "_x_x_x_x_bach_float64_x_x_x_x_", 3885674093, 1068465288, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 34359738, 1067878187, "_x_x_x_x_bach_float64_x_x_x_x_", 3423054575, 1068541507, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3745211482, 1067945295, "_x_x_x_x_bach_float64_x_x_x_x_", 1413147320, 1068601939, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3161095930, 1068012404, "_x_x_x_x_bach_float64_x_x_x_x_", 675649895, 1068663478, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1068079513, "_x_x_x_x_bach_float64_x_x_x_x_", 2167412296, 1068726107, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1992864825, 1068146622, "_x_x_x_x_bach_float64_x_x_x_x_", 3974734534, 1068789860, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1408749273, 1068213731, "_x_x_x_x_bach_float64_x_x_x_x_", 845799320, 1068854755, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 824633721, 1068280840, "_x_x_x_x_bach_float64_x_x_x_x_", 413691250, 1068920807, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 240518169, 1068347949, "_x_x_x_x_bach_float64_x_x_x_x_", 764710337, 1068988050, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3951369912, 1068415057, "_x_x_x_x_bach_float64_x_x_x_x_", 942006587, 1069056501, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3367254360, 1068482166, "_x_x_x_x_bach_float64_x_x_x_x_", 945580000, 1069126160, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3539053052, 1068524109, "_x_x_x_x_bach_float64_x_x_x_x_", 2199847889, 1069197077, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1099511628, 1068557664, "_x_x_x_x_bach_float64_x_x_x_x_", 3747960261, 1069269269, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2954937500, 1068591218, "_x_x_x_x_bach_float64_x_x_x_x_", 338099826, 1069342754, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 515396076, 1068624773, "_x_x_x_x_bach_float64_x_x_x_x_", 3898318476, 1069417546, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2370821947, 1068658327, "_x_x_x_x_bach_float64_x_x_x_x_", 2968131639, 1069493698, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4226247819, 1068691881, "_x_x_x_x_bach_float64_x_x_x_x_", 1399678302, 1069559356, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1786706395, 1068725436, "_x_x_x_x_bach_float64_x_x_x_x_", 2408205343, 1069598799, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3642132267, 1068758990, "_x_x_x_x_bach_float64_x_x_x_x_", 3552796947, 1069638955, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1202590843, 1068792545, "_x_x_x_x_bach_float64_x_x_x_x_", 538485820, 1069679825, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3058016715, 1068826099, "_x_x_x_x_bach_float64_x_x_x_x_", 998356558, 1069721424, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 618475291, 1068859654, "_x_x_x_x_bach_float64_x_x_x_x_", 3975559168, 1069763769, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2473901162, 1068893208, "_x_x_x_x_bach_float64_x_x_x_x_", 4218276360, 1069806878, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 34359738, 1068926763, "_x_x_x_x_bach_float64_x_x_x_x_", 3395566784, 1069850759, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1889785610, 1068960317, "_x_x_x_x_bach_float64_x_x_x_x_", 3176489093, 1069895420, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3745211482, 1068993871, "_x_x_x_x_bach_float64_x_x_x_x_", 4273251941, 1069940886, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1305670058, 1069027426, "_x_x_x_x_bach_float64_x_x_x_x_", 4059946686, 1069987166, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3161095930, 1069060980, "_x_x_x_x_bach_float64_x_x_x_x_", 4205631976, 1070034268, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 721554506, 1069094535, "_x_x_x_x_bach_float64_x_x_x_x_", 2796607825, 1070082226, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1069128089, "_x_x_x_x_bach_float64_x_x_x_x_", 2458782878, 1070131031, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 137438953, 1069161644, "_x_x_x_x_bach_float64_x_x_x_x_", 1278457145, 1070180717, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1992864825, 1069195198, "_x_x_x_x_bach_float64_x_x_x_x_", 924689279, 1070231292, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3848290697, 1069228752, "_x_x_x_x_bach_float64_x_x_x_x_", 440629285, 1070282773, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1408749273, 1069262307, "_x_x_x_x_bach_float64_x_x_x_x_", 3164394465, 1070335176, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3264175145, 1069295861, "_x_x_x_x_bach_float64_x_x_x_x_", 3844167529, 1070388519, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 824633721, 1069329416, "_x_x_x_x_bach_float64_x_x_x_x_", 4149007127, 1070442810, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2680059593, 1069362970, "_x_x_x_x_bach_float64_x_x_x_x_", 2165213273, 1070498083, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 240518169, 1069396525, "_x_x_x_x_bach_float64_x_x_x_x_", 2187753261, 1070554337, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2095944040, 1069430079, "_x_x_x_x_bach_float64_x_x_x_x_", 1151463552, 1070603851, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3951369912, 1069463633, "_x_x_x_x_bach_float64_x_x_x_x_", 2089896726, 1070632997, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1511828488, 1069497188, "_x_x_x_x_bach_float64_x_x_x_x_", 3430751157, 1070662663, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3367254360, 1069530742, "_x_x_x_x_bach_float64_x_x_x_x_", 4217176848, 1070692866, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2611340116, 1069555908, "_x_x_x_x_bach_float64_x_x_x_x_", 154206506, 1070723607, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3539053052, 1069572685, "_x_x_x_x_bach_float64_x_x_x_x_", 2335362697, 1070754896, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 171798692, 1069589463, "_x_x_x_x_bach_float64_x_x_x_x_", 379331512, 1070786748, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1099511628, 1069606240, "_x_x_x_x_bach_float64_x_x_x_x_", 250138895, 1070819170, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2027224564, 1069623017, "_x_x_x_x_bach_float64_x_x_x_x_", 156405529, 1070852175, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2954937500, 1069639794, "_x_x_x_x_bach_float64_x_x_x_x_", 932660738, 1070885767, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3882650436, 1069656571, "_x_x_x_x_bach_float64_x_x_x_x_", 1622054529, 1070919963, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 515396076, 1069673349, "_x_x_x_x_bach_float64_x_x_x_x_", 3893645552, 1070954771, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1443109011, 1069690126, "_x_x_x_x_bach_float64_x_x_x_x_", 826557866, 1070990201, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2370821947, 1069706903, "_x_x_x_x_bach_float64_x_x_x_x_", 53876070, 1071026268, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3298534883, 1069723680, "_x_x_x_x_bach_float64_x_x_x_x_", 3244658814, 1071062980, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4226247819, 1069740457, "_x_x_x_x_bach_float64_x_x_x_x_", 17592186, 1071100352, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1069757235, "_x_x_x_x_bach_float64_x_x_x_x_", 631669430, 1071138390, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1786706395, 1069774012, "_x_x_x_x_bach_float64_x_x_x_x_", 4130040552, 1071177111, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2714419331, 1069790789, "_x_x_x_x_bach_float64_x_x_x_x_", 3591829610, 1071216525, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3642132267, 1069807566, "_x_x_x_x_bach_float64_x_x_x_x_", 1520624581, 1071256644, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 274877907, 1069824344, "_x_x_x_x_bach_float64_x_x_x_x_", 1254542767, 1071297484, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1202590843, 1069841121, "_x_x_x_x_bach_float64_x_x_x_x_", 167675523, 1071339054, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2130303779, 1069857898, "_x_x_x_x_bach_float64_x_x_x_x_", 1598140151, 1071381370, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3058016715, 1069874675, "_x_x_x_x_bach_float64_x_x_x_x_", 2920028005, 1071424441, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3985729651, 1069891452, "_x_x_x_x_bach_float64_x_x_x_x_", 3176489093, 1071468284, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 618475291, 1069908230, "_x_x_x_x_bach_float64_x_x_x_x_", 1410673418, 1071512916, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1546188227, 1069925007, "_x_x_x_x_bach_float64_x_x_x_x_", 3586606930, 1071558344, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2473901162, 1069941784, "_x_x_x_x_bach_float64_x_x_x_x_", 157505041, 1071604587, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3401614098, 1069958561, "_x_x_x_x_bach_float64_x_x_x_x_", 3673193470, 1071648165, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 34359738, 1069975339, "_x_x_x_x_bach_float64_x_x_x_x_", 2673737401, 1071672121, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 962072674, 1069992116, "_x_x_x_x_bach_float64_x_x_x_x_", 1314191273, 1071696507, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1889785610, 1070008893, "_x_x_x_x_bach_float64_x_x_x_x_", 1263613738, 1071721331, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2817498546, 1070025670, "_x_x_x_x_bach_float64_x_x_x_x_", 3356534122, 1071746597, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3745211482, 1070042447, "_x_x_x_x_bach_float64_x_x_x_x_", 1506605808, 1071772319, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 377957122, 1070059225, "_x_x_x_x_bach_float64_x_x_x_x_", 843325419, 1071798500, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1305670058, 1070076002, "_x_x_x_x_bach_float64_x_x_x_x_", 3035751604, 1071825148, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2233382994, 1070092779, "_x_x_x_x_bach_float64_x_x_x_x_", 1580273087, 1071852275, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3161095930, 1070109556, "_x_x_x_x_bach_float64_x_x_x_x_", 2440915814, 1071879888, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4088808866, 1070126333, "_x_x_x_x_bach_float64_x_x_x_x_", 2991771139, 1071907996, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 721554506, 1070143111, "_x_x_x_x_bach_float64_x_x_x_x_", 606930419, 1071936608, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1649267442, 1070159888, "_x_x_x_x_bach_float64_x_x_x_x_", 1250419599, 1071965731, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1070176665, "_x_x_x_x_bach_float64_x_x_x_x_", 3965388686, 1071897078, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3504693314, 1070193442, "_x_x_x_x_bach_float64_x_x_x_x_", 1406550250, 1071820715, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 137438953, 1070210220, "_x_x_x_x_bach_float64_x_x_x_x_", 2533549668, 1071749831, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1065151889, 1070226997, "_x_x_x_x_bach_float64_x_x_x_x_", 2332339040, 1071684035, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1992864825, 1070243774, "_x_x_x_x_bach_float64_x_x_x_x_", 1592092837, 1071601248, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2920577761, 1070260551, "_x_x_x_x_bach_float64_x_x_x_x_", 3224042971, 1071487863, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3848290697, 1070277328, "_x_x_x_x_bach_float64_x_x_x_x_", 1179775977, 1071382620, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 481036337, 1070294106, "_x_x_x_x_bach_float64_x_x_x_x_", 2344708546, 1071284926, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1408749273, 1070310883, "_x_x_x_x_bach_float64_x_x_x_x_", 2978302122, 1071194245, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2336462209, 1070327660, "_x_x_x_x_bach_float64_x_x_x_x_", 886756128, 1071110070, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3264175145, 1070344437, "_x_x_x_x_bach_float64_x_x_x_x_", 2221563244, 1071031934, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4191888081, 1070361214, "_x_x_x_x_bach_float64_x_x_x_x_", 3465110895, 1070959410, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 824633721, 1070377992, "_x_x_x_x_bach_float64_x_x_x_x_", 142936512, 1070892088, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1752346657, 1070394769, "_x_x_x_x_bach_float64_x_x_x_x_", 420838076, 1070829597, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2680059593, 1070411546, "_x_x_x_x_bach_float64_x_x_x_x_", 3752358308, 1070771589, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3607772529, 1070428323, "_x_x_x_x_bach_float64_x_x_x_x_", 2547843319, 1070717747, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 240518169, 1070445101, "_x_x_x_x_bach_float64_x_x_x_x_", 1145691116, 1070667768, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1168231105, 1070461878, "_x_x_x_x_bach_float64_x_x_x_x_", 301541064, 1070621375, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2095944040, 1070478655, "_x_x_x_x_bach_float64_x_x_x_x_", 1297423721, 1070560528, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3023656976, 1070495432, "_x_x_x_x_bach_float64_x_x_x_x_", 3727344418, 1070480584, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3951369912, 1070512209, "_x_x_x_x_bach_float64_x_x_x_x_", 1037114343, 1070406379, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 584115552, 1070528987, "_x_x_x_x_bach_float64_x_x_x_x_", 4263081459, 1070337491, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1511828488, 1070545764, "_x_x_x_x_bach_float64_x_x_x_x_", 96207267, 1070273554, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2439541424, 1070562541, "_x_x_x_x_bach_float64_x_x_x_x_", 2666315697, 1070214204, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3367254360, 1070579318, "_x_x_x_x_bach_float64_x_x_x_x_", 2714694209, 1070159116, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1070596096, "_x_x_x_x_bach_float64_x_x_x_x_", 2910682157, 1070107979, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2611340116, 1070604484, "_x_x_x_x_bach_float64_x_x_x_x_", 2340860256, 1070060508, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 927712936, 1070612873, "_x_x_x_x_bach_float64_x_x_x_x_", 804017878, 1070016443, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3539053052, 1070621261, "_x_x_x_x_bach_float64_x_x_x_x_", 3106120348, 1069975548, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1855425872, 1070629650, "_x_x_x_x_bach_float64_x_x_x_x_", 3794139750, 1069937581, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 171798692, 1070638039, "_x_x_x_x_bach_float64_x_x_x_x_", 1465374122, 1069902341, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2783138808, 1070646427, "_x_x_x_x_bach_float64_x_x_x_x_", 681147453, 1069869634, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1099511628, 1070654816, "_x_x_x_x_bach_float64_x_x_x_x_", 1707816436, 1069839267, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3710851744, 1070663204, "_x_x_x_x_bach_float64_x_x_x_x_", 2898037773, 1069811081, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2027224564, 1070671593, "_x_x_x_x_bach_float64_x_x_x_x_", 4273526819, 1069784925, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 343597384, 1070679982, "_x_x_x_x_bach_float64_x_x_x_x_", 4186940279, 1069760640, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2954937500, 1070688370, "_x_x_x_x_bach_float64_x_x_x_x_", 3372202162, 1069738100, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1271310320, 1070696759, "_x_x_x_x_bach_float64_x_x_x_x_", 894177831, 1069717171, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3882650436, 1070705147, "_x_x_x_x_bach_float64_x_x_x_x_", 2493967250, 1069697751, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2199023256, 1070713536, "_x_x_x_x_bach_float64_x_x_x_x_", 1984618488, 1069679724, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 515396076, 1070721925, "_x_x_x_x_bach_float64_x_x_x_x_", 812264215, 1069662989, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3126736191, 1070730313, "_x_x_x_x_bach_float64_x_x_x_x_", 2092095750, 1069647453, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1443109011, 1070738702, "_x_x_x_x_bach_float64_x_x_x_x_", 2018428471, 1069633033, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4054449127, 1070747090, "_x_x_x_x_bach_float64_x_x_x_x_", 2749603703, 1069619653, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2370821947, 1070755479, "_x_x_x_x_bach_float64_x_x_x_x_", 479936826, 1069607230, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 687194767, 1070763868, "_x_x_x_x_bach_float64_x_x_x_x_", 3331795110, 1069595695, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3298534883, 1070772256, "_x_x_x_x_bach_float64_x_x_x_x_", 3916735296, 1069584991, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1614907703, 1070780645, "_x_x_x_x_bach_float64_x_x_x_x_", 3436248715, 1069575059, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4226247819, 1070789033, "_x_x_x_x_bach_float64_x_x_x_x_", 1422768046, 1069565832, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2542620639, 1070797422, "_x_x_x_x_bach_float64_x_x_x_x_", 2415901924, 1069557267, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1070805811, "_x_x_x_x_bach_float64_x_x_x_x_", 2365324389, 1069549323, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3470333575, 1070814199, "_x_x_x_x_bach_float64_x_x_x_x_", 3988203552, 1069536379, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1786706395, 1070822588, "_x_x_x_x_bach_float64_x_x_x_x_", 3093750843, 1069522689, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 103079215, 1070830977, "_x_x_x_x_bach_float64_x_x_x_x_", 2536573325, 1069509972, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2714419331, 1070839365, "_x_x_x_x_bach_float64_x_x_x_x_", 892253686, 1069498178, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1030792151, 1070847754, "_x_x_x_x_bach_float64_x_x_x_x_", 2945041895, 1069487222, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3642132267, 1070856142, "_x_x_x_x_bach_float64_x_x_x_x_", 2975553343, 1069477055, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1958505087, 1070864531, "_x_x_x_x_bach_float64_x_x_x_x_", 516220709, 1069467610, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 274877907, 1070872920, "_x_x_x_x_bach_float64_x_x_x_x_", 1775711279, 1069458852, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2886218023, 1070881308, "_x_x_x_x_bach_float64_x_x_x_x_", 1034640442, 1069450732, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1202590843, 1070889697, "_x_x_x_x_bach_float64_x_x_x_x_", 2120408174, 1069443182, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3813930959, 1070898085, "_x_x_x_x_bach_float64_x_x_x_x_", 2651747168, 1069436169, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2130303779, 1070906474, "_x_x_x_x_bach_float64_x_x_x_x_", 247390116, 1069429660, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 446676599, 1070914863, "_x_x_x_x_bach_float64_x_x_x_x_", 159154308, 1069423637, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3058016715, 1070923251, "_x_x_x_x_bach_float64_x_x_x_x_", 1919472424, 1069418033, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1374389535, 1070931640, "_x_x_x_x_bach_float64_x_x_x_x_", 2190227163, 1069412832, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3985729651, 1070940028, "_x_x_x_x_bach_float64_x_x_x_x_", 2885118511, 1069408000, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2302102471, 1070948417, "_x_x_x_x_bach_float64_x_x_x_x_", 666029169, 1069403521, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 618475291, 1070956806, "_x_x_x_x_bach_float64_x_x_x_x_", 1741626418, 1069399360, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3229815407, 1070965194, "_x_x_x_x_bach_float64_x_x_x_x_", 2773792959, 1069395501, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1546188227, 1070973583, "_x_x_x_x_bach_float64_x_x_x_x_", 1381261482, 1069391911, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4157528343, 1070981971, "_x_x_x_x_bach_float64_x_x_x_x_", 1858999285, 1069388589, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2473901162, 1070990360, "_x_x_x_x_bach_float64_x_x_x_x_", 1825739058, 1069385502, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 790273982, 1070998749, "_x_x_x_x_bach_float64_x_x_x_x_", 2238330796, 1069382633, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3401614098, 1071007137, "_x_x_x_x_bach_float64_x_x_x_x_", 4053624494, 1069379965, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1071015526, "_x_x_x_x_bach_float64_x_x_x_x_", 2976652854, 1069377499, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 34359738, 1071023915, "_x_x_x_x_bach_float64_x_x_x_x_", 921115866, 1069375201, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2645699854, 1071032303, "_x_x_x_x_bach_float64_x_x_x_x_", 2181980825, 1069373070, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 962072674, 1071040692, "_x_x_x_x_bach_float64_x_x_x_x_", 2464280436, 1069371107, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3573412790, 1071049080, "_x_x_x_x_bach_float64_x_x_x_x_", 343597384, 1069369262, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1889785610, 1071057469, "_x_x_x_x_bach_float64_x_x_x_x_", 2496166273, 1069367567, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 206158430, 1071065858, "_x_x_x_x_bach_float64_x_x_x_x_", 2245752500, 1069365990, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2817498546, 1071074246, "_x_x_x_x_bach_float64_x_x_x_x_", 549206058, 1069364514, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1133871366, 1071082635, "_x_x_x_x_bach_float64_x_x_x_x_", 744644250, 1069363155, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3745211482, 1071091023, "_x_x_x_x_bach_float64_x_x_x_x_", 3788917069, 1069361896, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2061584302, 1071099412, "_x_x_x_x_bach_float64_x_x_x_x_", 2048939918, 1069360722, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 377957122, 1071107801, "_x_x_x_x_bach_float64_x_x_x_x_", 4114647389, 1069359631, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2989297238, 1071116189, "_x_x_x_x_bach_float64_x_x_x_x_", 1396104889, 1069358625, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1305670058, 1071124578, "_x_x_x_x_bach_float64_x_x_x_x_", 3440097005, 1069357685, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3917010174, 1071132966, "_x_x_x_x_bach_float64_x_x_x_x_", 1656689145, 1069356813, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2233382994, 1071141355, "_x_x_x_x_bach_float64_x_x_x_x_", 340848605, 1069356008, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 549755814, 1071149744, "_x_x_x_x_bach_float64_x_x_x_x_", 449425378, 1069355253, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3161095930, 1071158132, "_x_x_x_x_bach_float64_x_x_x_x_", 1025569471, 1069354565, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1477468750, 1071166521, "_x_x_x_x_bach_float64_x_x_x_x_", 3982980872, 1069353910, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4088808866, 1071174909, "_x_x_x_x_bach_float64_x_x_x_x_", 4069842290, 1069353306, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2405181686, 1071183298, "_x_x_x_x_bach_float64_x_x_x_x_", 1286153727, 1069352753, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 721554506, 1071191687, "_x_x_x_x_bach_float64_x_x_x_x_", 883732471, 1069352233, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3332894622, 1071200075, "_x_x_x_x_bach_float64_x_x_x_x_", 1905728529, 1069351763, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1649267442, 1071208464, "_x_x_x_x_bach_float64_x_x_x_x_", 1970874593, 1069351310, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4260607558, 1071216852, "_x_x_x_x_bach_float64_x_x_x_x_", 3460437971, 1069350907, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1071225241, "_x_x_x_x_bach_float64_x_x_x_x_", 3993151354, 1069350521, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 893353198, 1071233630, "_x_x_x_x_bach_float64_x_x_x_x_", 3569014744, 1069350152, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3504693314, 1071242018, "_x_x_x_x_bach_float64_x_x_x_x_", 274328151, 1069349834, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1821066134, 1071250407, "_x_x_x_x_bach_float64_x_x_x_x_", 1274608854, 1069349515, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 137438953, 1071258796, "_x_x_x_x_bach_float64_x_x_x_x_", 361189570, 1069349230, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2748779069, 1071267184, "_x_x_x_x_bach_float64_x_x_x_x_", 1829037593, 1069348978, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1065151889, 1071275573, "_x_x_x_x_bach_float64_x_x_x_x_", 3296885616, 1069348726, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3676492005, 1071283961, "_x_x_x_x_bach_float64_x_x_x_x_", 2851033651, 1069348508, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1992864825, 1071292350, "_x_x_x_x_bach_float64_x_x_x_x_", 2405181686, 1069348290, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 309237645, 1071300739, "_x_x_x_x_bach_float64_x_x_x_x_", 1002479727, 1069348089, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2920577761, 1071309127, "_x_x_x_x_bach_float64_x_x_x_x_", 2937895069, 1069347904, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1236950581, 1071317516, "_x_x_x_x_bach_float64_x_x_x_x_", 135239930, 1069360756, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3848290697, 1071325904, "_x_x_x_x_bach_float64_x_x_x_x_", 1863122453, 1069408470, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2164663517, 1071334293, "_x_x_x_x_bach_float64_x_x_x_x_", 862291994, 1069458567, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 481036337, 1071342682, "_x_x_x_x_bach_float64_x_x_x_x_", 4276550476, 1069511146, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3092376453, 1071351070, "_x_x_x_x_bach_float64_x_x_x_x_", 1747123977, 1069556940, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1408749273, 1071359459, "_x_x_x_x_bach_float64_x_x_x_x_", 2829593174, 1069585914, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4020089389, 1071367847, "_x_x_x_x_bach_float64_x_x_x_x_", 3227341505, 1069616331, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2336462209, 1071376236, "_x_x_x_x_bach_float64_x_x_x_x_", 3407936290, 1069648258, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 652835029, 1071384625, "_x_x_x_x_bach_float64_x_x_x_x_", 2882094854, 1069681779, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3264175145, 1071393013, "_x_x_x_x_bach_float64_x_x_x_x_", 3786443168, 1069716969, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1580547965, 1071401402, "_x_x_x_x_bach_float64_x_x_x_x_", 3962639907, 1069753904, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4191888081, 1071409790, "_x_x_x_x_bach_float64_x_x_x_x_", 1964552401, 1069792685, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2508260901, 1071418179, "_x_x_x_x_bach_float64_x_x_x_x_", 1597865273, 1069833395, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 824633721, 1071426568, "_x_x_x_x_bach_float64_x_x_x_x_", 4042354500, 1069876126, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1071434956, "_x_x_x_x_bach_float64_x_x_x_x_", 931011471, 1069920989, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1752346657, 1071443345, "_x_x_x_x_bach_float64_x_x_x_x_", 3702605407, 1069968082, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 68719477, 1071451734, "_x_x_x_x_bach_float64_x_x_x_x_", 1364219052, 1070017525, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2680059593, 1071460122, "_x_x_x_x_bach_float64_x_x_x_x_", 2728712982, 1070069425, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 996432413, 1071468511, "_x_x_x_x_bach_float64_x_x_x_x_", 2767195889, 1070123909, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3607772529, 1071476899, "_x_x_x_x_bach_float64_x_x_x_x_", 745743762, 1070181103, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1924145349, 1071485288, "_x_x_x_x_bach_float64_x_x_x_x_", 1894458535, 1070241140, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 240518169, 1071493677, "_x_x_x_x_bach_float64_x_x_x_x_", 1896657558, 1070304172, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2851858285, 1071502065, "_x_x_x_x_bach_float64_x_x_x_x_", 3356534122, 1070370341, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1168231105, 1071510454, "_x_x_x_x_bach_float64_x_x_x_x_", 1957405575, 1070439799, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3779571220, 1071518842, "_x_x_x_x_bach_float64_x_x_x_x_", 1015673866, 1070512713, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2095944040, 1071527231, "_x_x_x_x_bach_float64_x_x_x_x_", 2890890947, 1070589267, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 412316860, 1071535620, "_x_x_x_x_bach_float64_x_x_x_x_", 320232762, 1070632859, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3023656976, 1071544008, "_x_x_x_x_bach_float64_x_x_x_x_", 4276000720, 1070675036, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1340029796, 1071552397, "_x_x_x_x_bach_float64_x_x_x_x_", 1129198442, 1070719316, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3951369912, 1071560785, "_x_x_x_x_bach_float64_x_x_x_x_", 2318595145, 1070765797, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2267742732, 1071569174, "_x_x_x_x_bach_float64_x_x_x_x_", 3772149517, 1070814589, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 584115552, 1071577563, "_x_x_x_x_bach_float64_x_x_x_x_", 3921408220, 1070865814, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3195455668, 1071585951, "_x_x_x_x_bach_float64_x_x_x_x_", 363388593, 1070919590, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1511828488, 1071594340, "_x_x_x_x_bach_float64_x_x_x_x_", 119571890, 1070976037, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4123168604, 1071602728, "_x_x_x_x_bach_float64_x_x_x_x_", 1499184104, 1071035298, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2439541424, 1071611117, "_x_x_x_x_bach_float64_x_x_x_x_", 1142392581, 1071097508, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 755914244, 1071619506, "_x_x_x_x_bach_float64_x_x_x_x_", 2487919936, 1071162813, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3367254360, 1071627894, "_x_x_x_x_bach_float64_x_x_x_x_", 2053612843, 1071231369, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1683627180, 1071636283, "_x_x_x_x_bach_float64_x_x_x_x_", 2321343924, 1071303339, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1071644672, "_x_x_x_x_bach_float64_x_x_x_x_", 1478018506, 1071378887, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1305670058, 1071648866, "_x_x_x_x_bach_float64_x_x_x_x_", 1883188540, 1071458197, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2611340116, 1071653060, "_x_x_x_x_bach_float64_x_x_x_x_", 2435968011, 1071541458, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3917010174, 1071657254, "_x_x_x_x_bach_float64_x_x_x_x_", 2035470901, 1071628859, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 927712936, 1071661449, "_x_x_x_x_bach_float64_x_x_x_x_", 146509924, 1071682643, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2233382994, 1071665643, "_x_x_x_x_bach_float64_x_x_x_x_", 140187733, 1071730802, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3539053052, 1071669837, "_x_x_x_x_bach_float64_x_x_x_x_", 743269860, 1071781360, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 549755814, 1071674032, "_x_x_x_x_bach_float64_x_x_x_x_", 3430476279, 1071834432, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1855425872, 1071678226, "_x_x_x_x_bach_float64_x_x_x_x_", 3590180343, 1071890147, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3161095930, 1071682420, "_x_x_x_x_bach_float64_x_x_x_x_", 1322987366, 1071948635, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 171798692, 1071686615, "_x_x_x_x_bach_float64_x_x_x_x_", 3110793273, 1072010035, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1477468750, 1071690809, "_x_x_x_x_bach_float64_x_x_x_x_", 2550592099, 1072074489, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2783138808, 1071695003, "_x_x_x_x_bach_float64_x_x_x_x_", 872462477, 1072142154, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4088808866, 1071699197, "_x_x_x_x_bach_float64_x_x_x_x_", 3184185674, 1072213184, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1099511628, 1071703392, "_x_x_x_x_bach_float64_x_x_x_x_", 334526413, 1072287751, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2405181686, 1071707586, "_x_x_x_x_bach_float64_x_x_x_x_", 1603912587, 1072366029, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3710851744, 1071711780, "_x_x_x_x_bach_float64_x_x_x_x_", 761961558, 1072448204, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 721554506, 1071715975, "_x_x_x_x_bach_float64_x_x_x_x_", 1837283930, 1072534468, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2027224564, 1071720169, "_x_x_x_x_bach_float64_x_x_x_x_", 2772143692, 1072625027, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3332894622, 1071724363, "_x_x_x_x_bach_float64_x_x_x_x_", 3237511988, 1072693134, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 343597384, 1071728558, "_x_x_x_x_bach_float64_x_x_x_x_", 1388958064, 1072692715, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1649267442, 1071732752, "_x_x_x_x_bach_float64_x_x_x_x_", 79989471, 1072692277, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2954937500, 1071736946, "_x_x_x_x_bach_float64_x_x_x_x_", 3188308843, 1072691817, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4260607558, 1071741140, "_x_x_x_x_bach_float64_x_x_x_x_", 2541246250, 1072691339, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1271310320, 1071745335, "_x_x_x_x_bach_float64_x_x_x_x_", 1599239663, 1072690838, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1071749529, "_x_x_x_x_bach_float64_x_x_x_x_", 362289081, 1072690314, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3882650436, 1071753723, "_x_x_x_x_bach_float64_x_x_x_x_", 3125361802, 1072689766, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 893353198, 1071757918, "_x_x_x_x_bach_float64_x_x_x_x_", 881258570, 1072689194, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2199023256, 1071762112, "_x_x_x_x_bach_float64_x_x_x_x_", 1802649314, 1072688594, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3504693314, 1071766306, "_x_x_x_x_bach_float64_x_x_x_x_", 2011831401, 1072687969, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 515396076, 1071770501, "_x_x_x_x_bach_float64_x_x_x_x_", 674275506, 1072687315, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1821066134, 1071774695, "_x_x_x_x_bach_float64_x_x_x_x_", 2084948924, 1072686631, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3126736191, 1071778889, "_x_x_x_x_bach_float64_x_x_x_x_", 1948884360, 1072685918, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 137438953, 1071783084, "_x_x_x_x_bach_float64_x_x_x_x_", 3309255122, 1072685169, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1443109011, 1071787278, "_x_x_x_x_bach_float64_x_x_x_x_", 2705623238, 1072684389, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2748779069, 1071791472, "_x_x_x_x_bach_float64_x_x_x_x_", 3598426680, 1072683573, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4054449127, 1071795666, "_x_x_x_x_bach_float64_x_x_x_x_", 1275433488, 1072682720, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1065151889, 1071799861, "_x_x_x_x_bach_float64_x_x_x_x_", 3909313593, 1072681826, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2370821947, 1071804055, "_x_x_x_x_bach_float64_x_x_x_x_", 3327397064, 1072680895, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3676492005, 1071808249, "_x_x_x_x_bach_float64_x_x_x_x_", 2572857209, 1072679920, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 687194767, 1071812444, "_x_x_x_x_bach_float64_x_x_x_x_", 1645694029, 1072678901, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1992864825, 1071816638, "_x_x_x_x_bach_float64_x_x_x_x_", 128642860, 1072677836, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3298534883, 1071820832, "_x_x_x_x_bach_float64_x_x_x_x_", 1899406337, 1072676722, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 309237645, 1071825027, "_x_x_x_x_bach_float64_x_x_x_x_", 1828487837, 1072675556, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1614907703, 1071829221, "_x_x_x_x_bach_float64_x_x_x_x_", 333152023, 1072674340, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2920577761, 1071833415, "_x_x_x_x_bach_float64_x_x_x_x_", 456572203, 1072673067, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4226247819, 1071837609, "_x_x_x_x_bach_float64_x_x_x_x_", 2198748378, 1072671737, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1236950581, 1071841804, "_x_x_x_x_bach_float64_x_x_x_x_", 430183924, 1072670347, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2542620639, 1071845998, "_x_x_x_x_bach_float64_x_x_x_x_", 3323548773, 1072668893, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3848290697, 1071850192, "_x_x_x_x_bach_float64_x_x_x_x_", 1454379006, 1072667373, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1071854387, "_x_x_x_x_bach_float64_x_x_x_x_", 3412609215, 1072665785, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2164663517, 1071858581, "_x_x_x_x_bach_float64_x_x_x_x_", 3651478116, 1072664124, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3470333575, 1071862775, "_x_x_x_x_bach_float64_x_x_x_x_", 2170985709, 1072662390, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 481036337, 1071866970, "_x_x_x_x_bach_float64_x_x_x_x_", 1597040639, 1072660574, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1786706395, 1071871164, "_x_x_x_x_bach_float64_x_x_x_x_", 2346907569, 1072658678, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3092376453, 1071875358, "_x_x_x_x_bach_float64_x_x_x_x_", 2751527849, 1072656694, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 103079215, 1071879553, "_x_x_x_x_bach_float64_x_x_x_x_", 2810901476, 1072654622, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1408749273, 1071883747, "_x_x_x_x_bach_float64_x_x_x_x_", 1273234465, 1072652456, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2714419331, 1071887941, "_x_x_x_x_bach_float64_x_x_x_x_", 1598964785, 1072650191, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4020089389, 1071892135, "_x_x_x_x_bach_float64_x_x_x_x_", 2536298447, 1072647821, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1030792151, 1071896330, "_x_x_x_x_bach_float64_x_x_x_x_", 4085235453, 1072645346, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2336462209, 1071900524, "_x_x_x_x_bach_float64_x_x_x_x_", 281749855, 1072642759, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3642132267, 1071904718, "_x_x_x_x_bach_float64_x_x_x_x_", 3176214215, 1072640053, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 652835029, 1071908913, "_x_x_x_x_bach_float64_x_x_x_x_", 3344164616, 1072637226, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1958505087, 1071913107, "_x_x_x_x_bach_float64_x_x_x_x_", 3411509703, 1072634269, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3264175145, 1071917301, "_x_x_x_x_bach_float64_x_x_x_x_", 2543720151, 1072631178, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 274877907, 1071921496, "_x_x_x_x_bach_float64_x_x_x_x_", 4201233930, 1072627948, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1580547965, 1071925690, "_x_x_x_x_bach_float64_x_x_x_x_", 2420025093, 1072624572, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2886218023, 1071929884, "_x_x_x_x_bach_float64_x_x_x_x_", 4120969581, 1072621040, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4191888081, 1071934078, "_x_x_x_x_bach_float64_x_x_x_x_", 296868139, 1072617352, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1202590843, 1071938273, "_x_x_x_x_bach_float64_x_x_x_x_", 1329034680, 1072613493, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2508260901, 1071942467, "_x_x_x_x_bach_float64_x_x_x_x_", 2087972581, 1072609460, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3813930959, 1071946661, "_x_x_x_x_bach_float64_x_x_x_x_", 904623192, 1072605245, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 824633721, 1071950856, "_x_x_x_x_bach_float64_x_x_x_x_", 4282597790, 1072600836, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2130303779, 1071955050, "_x_x_x_x_bach_float64_x_x_x_x_", 2380167796, 1072596229, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1071959244, "_x_x_x_x_bach_float64_x_x_x_x_", 2118209151, 1072591414, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 446676599, 1071963439, "_x_x_x_x_bach_float64_x_x_x_x_", 993133878, 1072586379, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1752346657, 1071967633, "_x_x_x_x_bach_float64_x_x_x_x_", 1630850622, 1072581115, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3058016715, 1071971827, "_x_x_x_x_bach_float64_x_x_x_x_", 2362300732, 1072575614, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 68719477, 1071976022, "_x_x_x_x_bach_float64_x_x_x_x_", 266631570, 1072569862, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1374389535, 1071980216, "_x_x_x_x_bach_float64_x_x_x_x_", 2264719075, 1072563849, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2680059593, 1071984410, "_x_x_x_x_bach_float64_x_x_x_x_", 1558007977, 1072557564, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3985729651, 1071988604, "_x_x_x_x_bach_float64_x_x_x_x_", 4232844889, 1072550993, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 996432413, 1071992799, "_x_x_x_x_bach_float64_x_x_x_x_", 3490674540, 1072544125, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2302102471, 1071996993, "_x_x_x_x_bach_float64_x_x_x_x_", 705611587, 1072536945, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3607772529, 1072001187, "_x_x_x_x_bach_float64_x_x_x_x_", 1964002645, 1072529439, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 618475291, 1072005382, "_x_x_x_x_bach_float64_x_x_x_x_", 3927730412, 1072521591, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1924145349, 1072009576, "_x_x_x_x_bach_float64_x_x_x_x_", 4093206912, 1072513389, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3229815407, 1072013770, "_x_x_x_x_bach_float64_x_x_x_x_", 3000017476, 1072504814, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 240518169, 1072017965, "_x_x_x_x_bach_float64_x_x_x_x_", 2022276761, 1072495851, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1546188227, 1072022159, "_x_x_x_x_bach_float64_x_x_x_x_", 1699570099, 1072486481, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2851858285, 1072026353, "_x_x_x_x_bach_float64_x_x_x_x_", 2571482819, 1072476685, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4157528343, 1072030547, "_x_x_x_x_bach_float64_x_x_x_x_", 882632959, 1072466445, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1168231105, 1072034742, "_x_x_x_x_bach_float64_x_x_x_x_", 1467573145, 1072455741, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2473901162, 1072038936, "_x_x_x_x_bach_float64_x_x_x_x_", 4031359383, 1072444550, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3779571220, 1072043130, "_x_x_x_x_bach_float64_x_x_x_x_", 106377750, 1072432853, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 790273982, 1072047325, "_x_x_x_x_bach_float64_x_x_x_x_", 2282586139, 1072420624, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2095944040, 1072051519, "_x_x_x_x_bach_float64_x_x_x_x_", 1257841302, 1072407840, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3401614098, 1072055713, "_x_x_x_x_bach_float64_x_x_x_x_", 1032166541, 1072394477, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 412316860, 1072059908, "_x_x_x_x_bach_float64_x_x_x_x_", 476088535, 1072380508, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1072064102, "_x_x_x_x_bach_float64_x_x_x_x_", 2337836599, 1072365903, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3023656976, 1072068296, "_x_x_x_x_bach_float64_x_x_x_x_", 1610234779, 1072350638, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 34359738, 1072072491, "_x_x_x_x_bach_float64_x_x_x_x_", 206983064, 1072334679, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1340029796, 1072076685, "_x_x_x_x_bach_float64_x_x_x_x_", 876310767, 1072317996, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2645699854, 1072080879, "_x_x_x_x_bach_float64_x_x_x_x_", 1236950581, 1072300556, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3951369912, 1072085073, "_x_x_x_x_bach_float64_x_x_x_x_", 3202602494, 1072282325, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 962072674, 1072089268, "_x_x_x_x_bach_float64_x_x_x_x_", 3974734534, 1072263268, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2267742732, 1072093462, "_x_x_x_x_bach_float64_x_x_x_x_", 4215252703, 1072243345, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3573412790, 1072097656, "_x_x_x_x_bach_float64_x_x_x_x_", 708360366, 1072222519, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 584115552, 1072101851, "_x_x_x_x_bach_float64_x_x_x_x_", 2288633453, 1072200746, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1889785610, 1072106045, "_x_x_x_x_bach_float64_x_x_x_x_", 1028043372, 1072177988, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3195455668, 1072110239, "_x_x_x_x_bach_float64_x_x_x_x_", 214404767, 1072154196, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 206158430, 1072114434, "_x_x_x_x_bach_float64_x_x_x_x_", 3552796947, 1072129323, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1511828488, 1072118628, "_x_x_x_x_bach_float64_x_x_x_x_", 1863397331, 1072103325, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2817498546, 1072122822, "_x_x_x_x_bach_float64_x_x_x_x_", 1059929209, 1072076144, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4123168604, 1072127016, "_x_x_x_x_bach_float64_x_x_x_x_", 135239930, 1072047732, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1133871366, 1072131211, "_x_x_x_x_bach_float64_x_x_x_x_", 290820826, 1072018030, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2439541424, 1072135405, "_x_x_x_x_bach_float64_x_x_x_x_", 3145427889, 1071986981, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3745211482, 1072139599, "_x_x_x_x_bach_float64_x_x_x_x_", 476088535, 1071954524, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 755914244, 1072143794, "_x_x_x_x_bach_float64_x_x_x_x_", 822434698, 1071920592, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2061584302, 1072147988, "_x_x_x_x_bach_float64_x_x_x_x_", 256461087, 1071885123, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3367254360, 1072152182, "_x_x_x_x_bach_float64_x_x_x_x_", 1353773692, 1071848043, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 377957122, 1072156377, "_x_x_x_x_bach_float64_x_x_x_x_", 2812275866, 1071809281, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1683627180, 1072160571, "_x_x_x_x_bach_float64_x_x_x_x_", 2495341639, 1071768762, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2989297238, 1072164765, "_x_x_x_x_bach_float64_x_x_x_x_", 892253686, 1071726402, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072168960, "_x_x_x_x_bach_float64_x_x_x_x_", 4039055965, 1071682122, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1305670058, 1072173154, "_x_x_x_x_bach_float64_x_x_x_x_", 37108517, 1071626993, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2611340116, 1072177348, "_x_x_x_x_bach_float64_x_x_x_x_", 2740807610, 1071530213, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3917010174, 1072181542, "_x_x_x_x_bach_float64_x_x_x_x_", 110226041, 1071429047, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 927712936, 1072185737, "_x_x_x_x_bach_float64_x_x_x_x_", 1958505087, 1071323283, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2233382994, 1072189931, "_x_x_x_x_bach_float64_x_x_x_x_", 3422504819, 1071212725, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3539053052, 1072194125, "_x_x_x_x_bach_float64_x_x_x_x_", 3221843947, 1071097151, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 549755814, 1072198320, "_x_x_x_x_bach_float64_x_x_x_x_", 3536579151, 1070976334, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1855425872, 1072202514, "_x_x_x_x_bach_float64_x_x_x_x_", 3208649808, 1070850031, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3161095930, 1072206708, "_x_x_x_x_bach_float64_x_x_x_x_", 1914524622, 1070718003, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 171798692, 1072210903, "_x_x_x_x_bach_float64_x_x_x_x_", 4157803220, 1070563866, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1477468750, 1072215097, "_x_x_x_x_bach_float64_x_x_x_x_", 1037114343, 1070275307, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2783138808, 1072219291, "_x_x_x_x_bach_float64_x_x_x_x_", 2186928628, 1069973644, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4088808866, 1072223485, "_x_x_x_x_bach_float64_x_x_x_x_", 4111348854, 1069658299, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1099511628, 1072227680, "_x_x_x_x_bach_float64_x_x_x_x_", 2823270982, 1069109785, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2405181686, 1072231874, "_x_x_x_x_bach_float64_x_x_x_x_", 1065701645, 1068342211, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3710851744, 1072236068, "_x_x_x_x_bach_float64_x_x_x_x_", 3785068779, 1066302470, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 721554506, 1072240263, "_x_x_x_x_bach_float64_x_x_x_x_", 2857355843, 1063139965, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2027224564, 1072244457, "_x_x_x_x_bach_float64_x_x_x_x_", 64321430, 1064509926, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3332894622, 1072248651, "_x_x_x_x_bach_float64_x_x_x_x_", 2975553343, 1065282751, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 343597384, 1072252846, "_x_x_x_x_bach_float64_x_x_x_x_", 3771324883, 1065711912, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1649267442, 1072257040, "_x_x_x_x_bach_float64_x_x_x_x_", 440354407, 1066113358, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2954937500, 1072261234, "_x_x_x_x_bach_float64_x_x_x_x_", 4198760029, 1066462189, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4260607558, 1072265428, "_x_x_x_x_bach_float64_x_x_x_x_", 936509029, 1066670697, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1271310320, 1072269623, "_x_x_x_x_bach_float64_x_x_x_x_", 3785893412, 1066883163, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1072273817, "_x_x_x_x_bach_float64_x_x_x_x_", 797145930, 1067099724, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3882650436, 1072278011, "_x_x_x_x_bach_float64_x_x_x_x_", 1027768494, 1067320445, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 893353198, 1072282206, "_x_x_x_x_bach_float64_x_x_x_x_", 325180564, 1067497881, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2199023256, 1072286400, "_x_x_x_x_bach_float64_x_x_x_x_", 66245576, 1067612503, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3504693314, 1072290594, "_x_x_x_x_bach_float64_x_x_x_x_", 2352130250, 1067729339, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 515396076, 1072294789, "_x_x_x_x_bach_float64_x_x_x_x_", 2887867290, 1067848390, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1821066134, 1072298983, "_x_x_x_x_bach_float64_x_x_x_x_", 227324029, 1067969757, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3126736191, 1072303177, "_x_x_x_x_bach_float64_x_x_x_x_", 2960435058, 1068093438, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 137438953, 1072307372, "_x_x_x_x_bach_float64_x_x_x_x_", 583565796, 1068219469, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1443109011, 1072311566, "_x_x_x_x_bach_float64_x_x_x_x_", 2154218157, 1068347915, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2748779069, 1072315760, "_x_x_x_x_bach_float64_x_x_x_x_", 3844992162, 1068478844, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4054449127, 1072319954, "_x_x_x_x_bach_float64_x_x_x_x_", 1871093913, 1068555617, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1065151889, 1072324149, "_x_x_x_x_bach_float64_x_x_x_x_", 2113536226, 1068623615, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2370821947, 1072328343, "_x_x_x_x_bach_float64_x_x_x_x_", 1692973029, 1068692905, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3676492005, 1072332537, "_x_x_x_x_bach_float64_x_x_x_x_", 2033821633, 1068763537, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 687194767, 1072336732, "_x_x_x_x_bach_float64_x_x_x_x_", 3136082040, 1068835511, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1992864825, 1072340926, "_x_x_x_x_bach_float64_x_x_x_x_", 3086054261, 1068908861, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3298534883, 1072345120, "_x_x_x_x_bach_float64_x_x_x_x_", 3308155610, 1068983637, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 309237645, 1072349315, "_x_x_x_x_bach_float64_x_x_x_x_", 464268785, 1069059823, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1614907703, 1072353509, "_x_x_x_x_bach_float64_x_x_x_x_", 3611895697, 1069137484, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2920577761, 1072357703, "_x_x_x_x_bach_float64_x_x_x_x_", 3204251761, 1069216639, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4226247819, 1072361897, "_x_x_x_x_bach_float64_x_x_x_x_", 2579454279, 1069297304, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1236950581, 1072366092, "_x_x_x_x_bach_float64_x_x_x_x_", 4118770558, 1069379512, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2542620639, 1072370286, "_x_x_x_x_bach_float64_x_x_x_x_", 1613533314, 1069463298, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3848290697, 1072374480, "_x_x_x_x_bach_float64_x_x_x_x_", 3495897221, 1069548098, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1072378675, "_x_x_x_x_bach_float64_x_x_x_x_", 3918109686, 1069591618, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2164663517, 1072382869, "_x_x_x_x_bach_float64_x_x_x_x_", 404345401, 1069635961, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3470333575, 1072387063, "_x_x_x_x_bach_float64_x_x_x_x_", 3925806267, 1069681158, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 481036337, 1072391258, "_x_x_x_x_bach_float64_x_x_x_x_", 640740401, 1069727229, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1786706395, 1072395452, "_x_x_x_x_bach_float64_x_x_x_x_", 3434049691, 1069774171, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3092376453, 1072399646, "_x_x_x_x_bach_float64_x_x_x_x_", 1802099558, 1069822020, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 103079215, 1072403841, "_x_x_x_x_bach_float64_x_x_x_x_", 1708915947, 1069870783, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1408749273, 1072408035, "_x_x_x_x_bach_float64_x_x_x_x_", 3866707517, 1069920485, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2714419331, 1072412229, "_x_x_x_x_bach_float64_x_x_x_x_", 1354598325, 1069971136, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4020089389, 1072416423, "_x_x_x_x_bach_float64_x_x_x_x_", 1805672971, 1070022751, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1030792151, 1072420618, "_x_x_x_x_bach_float64_x_x_x_x_", 3306231465, 1070075364, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2336462209, 1072424812, "_x_x_x_x_bach_float64_x_x_x_x_", 3230365162, 1070128984, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3642132267, 1072429006, "_x_x_x_x_bach_float64_x_x_x_x_", 2290282721, 1070183636, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 652835029, 1072433201, "_x_x_x_x_bach_float64_x_x_x_x_", 2155042790, 1070239328, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1958505087, 1072437395, "_x_x_x_x_bach_float64_x_x_x_x_", 3536854029, 1070296085, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3264175145, 1072441589, "_x_x_x_x_bach_float64_x_x_x_x_", 227049151, 1070353942, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 274877907, 1072445784, "_x_x_x_x_bach_float64_x_x_x_x_", 815562750, 1070412897, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1580547965, 1072449978, "_x_x_x_x_bach_float64_x_x_x_x_", 3388694837, 1070472984, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2886218023, 1072454172, "_x_x_x_x_bach_float64_x_x_x_x_", 68719477, 1070534230, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4191888081, 1072458366, "_x_x_x_x_bach_float64_x_x_x_x_", 2704798604, 1070596368, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1202590843, 1072462561, "_x_x_x_x_bach_float64_x_x_x_x_", 158879430, 1070628174, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2508260901, 1072466755, "_x_x_x_x_bach_float64_x_x_x_x_", 2655595459, 1070660587, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3813930959, 1072470949, "_x_x_x_x_bach_float64_x_x_x_x_", 648162105, 1070693626, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 824633721, 1072475144, "_x_x_x_x_bach_float64_x_x_x_x_", 3561043284, 1070727293, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2130303779, 1072479338, "_x_x_x_x_bach_float64_x_x_x_x_", 1847454413, 1070761607, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1072483532, "_x_x_x_x_bach_float64_x_x_x_x_", 2305950761, 1070796579, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 446676599, 1072487727, "_x_x_x_x_bach_float64_x_x_x_x_", 3145153011, 1070832222, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1752346657, 1072491921, "_x_x_x_x_bach_float64_x_x_x_x_", 2573681843, 1070868549, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3058016715, 1072496115, "_x_x_x_x_bach_float64_x_x_x_x_", 3095125232, 1070905572, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 68719477, 1072500310, "_x_x_x_x_bach_float64_x_x_x_x_", 2918103860, 1070943304, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1374389535, 1072504504, "_x_x_x_x_bach_float64_x_x_x_x_", 251238407, 1070981758, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2680059593, 1072508698, "_x_x_x_x_bach_float64_x_x_x_x_", 2727613471, 1071020949, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3985729651, 1072512892, "_x_x_x_x_bach_float64_x_x_x_x_", 4260882436, 1071060891, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 996432413, 1072517087, "_x_x_x_x_bach_float64_x_x_x_x_", 3894195308, 1071101601, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2302102471, 1072521281, "_x_x_x_x_bach_float64_x_x_x_x_", 3296610738, 1071143087, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3607772529, 1072525475, "_x_x_x_x_bach_float64_x_x_x_x_", 3180337383, 1071185374, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 618475291, 1072529670, "_x_x_x_x_bach_float64_x_x_x_x_", 84937273, 1071228467, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1924145349, 1072533864, "_x_x_x_x_bach_float64_x_x_x_x_", 2478024331, 1071272385, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3229815407, 1072538058, "_x_x_x_x_bach_float64_x_x_x_x_", 1647343296, 1071317151, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 240518169, 1072542253, "_x_x_x_x_bach_float64_x_x_x_x_", 2722390790, 1071362768, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1546188227, 1072546447, "_x_x_x_x_bach_float64_x_x_x_x_", 2120408174, 1071409262, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2851858285, 1072550641, "_x_x_x_x_bach_float64_x_x_x_x_", 3179512750, 1071456649, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4157528343, 1072554835, "_x_x_x_x_bach_float64_x_x_x_x_", 4108325197, 1071504942, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1168231105, 1072559030, "_x_x_x_x_bach_float64_x_x_x_x_", 489557552, 1071554163, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2473901162, 1072563224, "_x_x_x_x_bach_float64_x_x_x_x_", 3416732383, 1071604322, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3779571220, 1072567418, "_x_x_x_x_bach_float64_x_x_x_x_", 2506061878, 1071650059, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 790273982, 1072571613, "_x_x_x_x_bach_float64_x_x_x_x_", 2159440837, 1071676112, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2095944040, 1072575807, "_x_x_x_x_bach_float64_x_x_x_x_", 1920297058, 1071702662, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3401614098, 1072580001, "_x_x_x_x_bach_float64_x_x_x_x_", 414515884, 1071729724, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 412316860, 1072584196, "_x_x_x_x_bach_float64_x_x_x_x_", 2771593936, 1071757301, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1072588390, "_x_x_x_x_bach_float64_x_x_x_x_", 3322449261, 1071785409, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3023656976, 1072592584, "_x_x_x_x_bach_float64_x_x_x_x_", 3736140511, 1071814056, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 34359738, 1072596779, "_x_x_x_x_bach_float64_x_x_x_x_", 1386759041, 1071843251, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1340029796, 1072600973, "_x_x_x_x_bach_float64_x_x_x_x_", 3072860122, 1071873005, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2645699854, 1072605167, "_x_x_x_x_bach_float64_x_x_x_x_", 2290832476, 1071903330, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3951369912, 1072609361, "_x_x_x_x_bach_float64_x_x_x_x_", 1126999418, 1071934236, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 962072674, 1072613556, "_x_x_x_x_bach_float64_x_x_x_x_", 2084948924, 1071965735, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2267742732, 1072617750, "_x_x_x_x_bach_float64_x_x_x_x_", 2956037011, 1071997838, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3573412790, 1072621944, "_x_x_x_x_bach_float64_x_x_x_x_", 1531619697, 1072030556, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 584115552, 1072626139, "_x_x_x_x_bach_float64_x_x_x_x_", 4192987593, 1072063898, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1889785610, 1072630333, "_x_x_x_x_bach_float64_x_x_x_x_", 1393356110, 1072097883, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3195455668, 1072634527, "_x_x_x_x_bach_float64_x_x_x_x_", 3391718494, 1072132517, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 206158430, 1072638722, "_x_x_x_x_bach_float64_x_x_x_x_", 224025494, 1072167817, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1511828488, 1072642916, "_x_x_x_x_bach_float64_x_x_x_x_", 2983799680, 1072203793, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2817498546, 1072647110, "_x_x_x_x_bach_float64_x_x_x_x_", 872462477, 1072240458, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4123168604, 1072651304, "_x_x_x_x_bach_float64_x_x_x_x_", 1105833820, 1072277825, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1133871366, 1072655499, "_x_x_x_x_bach_float64_x_x_x_x_", 2309799052, 1072315909, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2439541424, 1072659693, "_x_x_x_x_bach_float64_x_x_x_x_", 2692978854, 1072354723, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3745211482, 1072663887, "_x_x_x_x_bach_float64_x_x_x_x_", 881258570, 1072394282, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 755914244, 1072668082, "_x_x_x_x_bach_float64_x_x_x_x_", 3673193470, 1072434597, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2061584302, 1072672276, "_x_x_x_x_bach_float64_x_x_x_x_", 1104734308, 1072475685, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3367254360, 1072676470, "_x_x_x_x_bach_float64_x_x_x_x_", 808965680, 1072517561, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 377957122, 1072680665, "_x_x_x_x_bach_float64_x_x_x_x_", 1411772930, 1072560240, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1683627180, 1072684859, "_x_x_x_x_bach_float64_x_x_x_x_", 1539041401, 1072603737, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 2989297238, 1072689053, "_x_x_x_x_bach_float64_x_x_x_x_", 4111623732, 1072648066, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "]", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, ":heuristic", 100, "]", "]", "]", "]", ":rnd?", "t", ":sols-mode", 1, "]" ],
									"reg_data_count" : [ 1 ],
									"saved_object_attributes" : 									{
										"embed" : 1,
										"versionnumber" : 80104
									}
,
									"text" : "bach.reg @embed 1",
									"textcolor" : [ 0.952941176470588, 0.564705882352941, 0.098039215686275, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 20.381673730416114,
									"id" : "obj-22",
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
										"rect" : [ 34.0, 79.0, 844.0, 562.0 ],
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
													"id" : "obj-10",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 509.4375, 204.5, 70.0, 22.0 ],
													"text" : "loadmess 2"
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
													"lockedsize" : 0,
													"maxclass" : "bpatcher",
													"name" : "pmc.jbs_rules.maxpat",
													"numinlets" : 9,
													"numoutlets" : 3,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 467.0, 235.0, 356.0, 203.0 ],
													"varname" : "pmc_jbs_rules[2]",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-54",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 360.25, 204.5, 81.0, 22.0 ],
													"text" : "r umenu_inlet"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-53",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 304.625, 179.5, 67.0, 22.0 ],
													"text" : "r float_inlet"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-52",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 238.25, 197.5, 61.0, 22.0 ],
													"text" : "r bpf_inlet"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-51",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 144.0, 197.5, 57.0, 22.0 ],
													"text" : "r int_inlet"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 135.0, 117.5, 119.0, 22.0 ],
													"text" : "48 72 27 nil nil 1 100"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 8,
													"outlettype" : [ "", "", "", "", "", "", "", "" ],
													"patching_rect" : [ 135.0, 148.5, 316.5, 22.0 ],
													"text" : "unjoin 7"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 72.4375, 125.5, 39.0, 22.0 ],
													"text" : "t b 91"
												}

											}
, 											{
												"box" : 												{
													"fontsize" : 11.311656894501649,
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 72.4375, 100.0, 55.0, 21.0 ],
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
													"id" : "obj-19",
													"lockeddragscroll" : 0,
													"lockedsize" : 0,
													"maxclass" : "bpatcher",
													"name" : "pmc.jbs_rules.maxpat",
													"numinlets" : 9,
													"numoutlets" : 3,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 50.0, 235.0, 356.0, 203.0 ],
													"varname" : "pmc_jbs_rules[1]",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-15",
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
													"id" : "obj-18",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 218.0, 40.0, 30.0, 30.0 ]
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
													"patching_rect" : [ 467.0, 515.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 1 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 1 ],
													"source" : [ "obj-13", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"midpoints" : [ 81.9375, 157.5, 131.21875, 157.5, 131.21875, 105.5, 144.5, 105.5 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 4 ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"midpoints" : [ 59.5, 453.0, 457.0, 453.0, 457.0, 225.0, 476.5, 225.0 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 8 ],
													"source" : [ "obj-38", 6 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 7 ],
													"source" : [ "obj-38", 5 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 4 ],
													"source" : [ "obj-38", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 3 ],
													"source" : [ "obj-38", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 2 ],
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 2 ],
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 5 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 6 ],
													"source" : [ "obj-53", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 7 ],
													"source" : [ "obj-54", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 540.0, 168.0, 94.0, 31.0 ],
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
									"id" : "obj-11",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 681.0, 173.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 784.5, 11.0, 77.0, 22.0 ],
									"text" : "loadmess 14"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 628.0, 76.5, 41.0, 22.0 ],
									"text" : "set $1"
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
									"patching_rect" : [ 540.0, 11.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 540.0, 332.0, 93.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80005
									}
,
									"text" : "bach.flat @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 675.5, 39.0, 29.5, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 540.0, 306.0, 66.0, 22.0 ],
									"text" : "bach.* 100"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-16",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "moz.chord_view.maxpat",
									"numinlets" : 2,
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 540.0, 359.0, 683.0, 202.0 ],
									"varname" : "bp1329398304391",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "number",
									"mousefilter" : 1,
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 675.5, 11.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 540.0, 39.0, 131.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80104
									}
,
									"text" : "bach.arithmser 48 96 1"
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
									"patching_rect" : [ 540.0, 215.0, 161.0, 60.0 ],
									"varname" : "bp501532213311",
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
									"patching_rect" : [ 540.0, 103.0, 107.0, 47.0 ],
									"varname" : "bp1346528124568",
									"viewvisibility" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"hidden" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 1 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"midpoints" : [ 685.0, 71.25, 637.5, 71.25 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 1 ],
									"midpoints" : [ 695.5, 160.868644067796595, 624.5, 160.868644067796595 ],
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"hidden" : 1,
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 1 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"order" : 1,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"order" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-22", 0 ]
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
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-71", 0 ],
									"source" : [ "obj-24", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-30", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 2 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"hidden" : 1,
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 1 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-98", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 1 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"order" : 0,
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"order" : 1,
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 1 ],
									"midpoints" : [ 279.666674137115479, 173.919527084362244, 47.166674137115479, 173.919527084362244 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"midpoints" : [ 185.666674137115479, 67.29309685564624, 20.166674137115479, 67.29309685564624 ],
									"order" : 1,
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"midpoints" : [ 185.666674137115479, 67.79309685564624, 279.666674137115479, 67.79309685564624 ],
									"order" : 0,
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"hidden" : 1,
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 2 ],
									"midpoints" : [ 104.166674137115479, 424.0, 210.166674137115479, 424.0 ],
									"source" : [ "obj-98", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-98", 0 ]
								}

							}
 ],
						"boxgroups" : [ 							{
								"boxes" : [ "obj-75", "obj-8" ]
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
					"patching_rect" : [ 366.0, 367.0, 205.0, 37.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p PMC-exampleA"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-2",
					"linecount" : 9,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 48.403301239013672, 113.508007049560547, 631.0, 122.0 ],
					"text" : "Then how can we generate different results dynamically, like we could in PWGL for instance? \n\nThere are actually two ways to do that :\n\nA) the real-time approach : you can use a reasonably fast metro to trigger evaluations \nand modulate your parameters on the fly, by hand or with little pieces of Max patch... \nIt will be slow bust most of the time it should work fine. \n\nBut that should be unsatisfying for many users who want a more programmatic approach..."
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
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"hidden" : 1,
					"source" : [ "obj-67", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-1::obj-22::obj-19::obj-64" : [ "live.text[3]", "live.text", 0 ],
			"obj-1::obj-22::obj-19::obj-85" : [ "live.text[2]", "live.text", 0 ],
			"obj-1::obj-22::obj-7::obj-64" : [ "live.text[4]", "live.text", 0 ],
			"obj-1::obj-22::obj-7::obj-85" : [ "live.text[5]", "live.text", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"parameter_overrides" : 			{
				"obj-1::obj-22::obj-7::obj-64" : 				{
					"parameter_longname" : "live.text[4]"
				}
,
				"obj-1::obj-22::obj-7::obj-85" : 				{
					"parameter_longname" : "live.text[5]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
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
				"name" : "bach.scale.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
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
				"name" : "jbs_block_bpf_profile.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_pmc",
				"patcherrelativepath" : "../../../patchers/pw4m_pmc",
				"type" : "JSON",
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
				"name" : "moz.update-ui.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz_five.png",
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
		"boxgroups" : [ 			{
				"boxes" : [ "obj-2", "obj-8" ]
			}
, 			{
				"boxes" : [ "obj-9", "obj-7" ]
			}
, 			{
				"boxes" : [ "obj-11", "obj-10", "obj-69", "obj-67" ]
			}
 ],
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
