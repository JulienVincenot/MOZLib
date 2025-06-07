{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 3,
			"revision" : 1,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 79.0, 903.0, 716.0 ],
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
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 397.0, 382.423728593220346, 117.0, 22.0 ],
					"text" : "loadmess collapse 1"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "SWAM", "Kontakt", "Pianoteq" ],
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-19",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "moz.ezmidi_instr.maxpat",
					"numinlets" : 5,
					"numoutlets" : 6,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "", "" ],
					"patching_rect" : [ 397.0, 413.0, 172.0, 56.0 ],
					"varname" : "bp986815081187",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 195.0, 451.0, 166.0, 22.0 ],
					"text" : "loadmess to_chord zoom 140"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
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
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 173.0, 482.0, 683.0, 202.0 ],
					"varname" : "bp224884993393[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 173.0, 357.0, 54.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80105
					}
,
					"text" : "bach.flat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 13.0, 451.0, 54.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80105
					}
,
					"text" : "bach.flat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 13.0, 328.0, 66.0, 22.0 ],
					"text" : "bach.* 100"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 13.0, 451.0, 117.0, 22.0 ],
					"text" : "loadmess collapse 2"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-8",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "moz.chord_view.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 13.0, 482.0, 151.0, 202.0 ],
					"varname" : "bp224884993393",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-6",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "moz.nth.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 13.0, 388.0, 120.0, 58.0 ],
					"varname" : "bp1128618952597",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 23.944572036176975,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 3,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 291.0, 259.0, 844.0, 719.0 ],
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
									"fontsize" : 12.0,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 92.125, 100.0, 82.0, 22.0 ],
									"text" : "loadmess 119"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-8",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "pmc.jbs_rules.maxpat",
									"numinlets" : 9,
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 141.0, 356.0, 203.0 ],
									"varname" : "pmc_jbs_rules[2]",
									"viewvisibility" : 1
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
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 39.999996779661302, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 391.364406779661294, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 1 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 13.0, 213.923728593220346, 109.0, 35.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p RULES"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 13.0, 357.0, 64.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80105
					}
,
					"text" : "bach.flat 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 13.0, 40.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"embed" : 1,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-55",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ -7.0, -6.0 ],
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 3,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 308.0, -909.0, 850.0, 783.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-72",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 976.0, 415.5, 442.0, 49.0 ],
									"text" : "\"If you want to know how MOZsafe works, please refer to the Modules Finder in the Extras menu -> MOZ'Lib. This module is not an abstraction, therefore there is no way to call its helpfile directly like every other module :)\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 976.0, 358.0, 32.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1196.0, 385.0, 29.5, 22.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 1097.0, 354.5, 118.0, 22.0 ],
									"text" : "bach.filternull @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1097.0, 278.5, 105.0, 35.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80103
									}
,
									"text" : "bach.value moz.safe-printed?"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "bang" ],
									"patching_rect" : [ 881.0, 198.0, 235.0, 22.0 ],
									"text" : "t b b b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 881.0, 278.5, 166.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80103
									}
,
									"text" : "bach.value moz.safe-printed?"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 976.0, 477.882797241210938, 109.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80103
									}
,
									"text" : "bach.print MOZ'Lib"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 881.0, 244.0, 29.5, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 881.0, 158.5, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 35.299999999999955, 361.0, 54.0, 22.0 ],
									"text" : "deferlow"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 35.299999999999955, 332.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 232.0, 304.0, 64.299999999999955, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 460.5, 722.382795556587212, 33.0, 22.0 ],
									"text" : "-7 -6"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 398.5, 612.5, 44.0, 22.0 ],
									"text" : "sel 1 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "pictctrl",
									"mode" : 1,
									"name" : "safe-key.png",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 377.5, 70.5, 52.0, 52.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 14.568377079080982, 14.285714285714285, 40.0, 40.0 ],
									"threshold" : 200.099999999999994
								}

							}
, 							{
								"box" : 								{
									"angle" : 270.0,
									"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"bordercolor" : [ 1.0, 1.0, 1.0, 1.0 ],
									"id" : "obj-46",
									"maxclass" : "panel",
									"mode" : 0,
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 377.5, 70.5, 51.5, 51.5 ],
									"presentation" : 1,
									"presentation_rect" : [ 14.568377079080982, 14.285714285714285, 40.0, 40.0 ],
									"proportion" : 0.5,
									"rounded" : 0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 321.0, 42.0, 72.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 321.0, 6.0, 29.5, 22.0 ],
									"text" : "!- 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 321.0, 134.0, 29.5, 22.0 ],
									"text" : "!- 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 280.0, 209.0, 65.0, 22.0 ],
									"text" : "route state"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 520.0, 521.882797241210938, 92.0, 22.0 ],
									"text" : "prepend hidden"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 391.0, 566.882797241210938, 92.0, 22.0 ],
									"text" : "prepend hidden"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 464.0, 527.882797241210938, 29.5, 22.0 ],
									"text" : "!- 1"
								}

							}
, 							{
								"box" : 								{
									"border" : 2.0,
									"id" : "obj-23",
									"linecolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 621.0, 263.5, 91.0, 5.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.299999999999955, 2.285714285714285, 91.0, 5.0 ],
									"saved_attribute_attributes" : 									{
										"linecolor" : 										{
											"expression" : ""
										}

									}

								}

							}
, 							{
								"box" : 								{
									"border" : 2.0,
									"id" : "obj-24",
									"linecolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 621.0, 254.0, 88.0, 5.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.299999999999955, 22.285714285714285, 88.0, 5.0 ],
									"saved_attribute_attributes" : 									{
										"linecolor" : 										{
											"expression" : ""
										}

									}

								}

							}
, 							{
								"box" : 								{
									"border" : 2.0,
									"id" : "obj-21",
									"linecolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 621.0, 242.5, 91.0, 5.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.299999999999955, 14.285714285714285, 91.0, 5.0 ],
									"saved_attribute_attributes" : 									{
										"linecolor" : 										{
											"expression" : ""
										}

									}

								}

							}
, 							{
								"box" : 								{
									"border" : 2.0,
									"id" : "obj-22",
									"linecolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 621.0, 233.0, 88.0, 5.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.299999999999955, -1.714285714285715, 88.0, 5.0 ],
									"saved_attribute_attributes" : 									{
										"linecolor" : 										{
											"expression" : ""
										}

									}

								}

							}
, 							{
								"box" : 								{
									"border" : 2.0,
									"id" : "obj-19",
									"linecolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 621.0, 218.5, 91.0, 5.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.299999999999955, 26.285714285714285, 91.0, 5.0 ],
									"saved_attribute_attributes" : 									{
										"linecolor" : 										{
											"expression" : ""
										}

									}

								}

							}
, 							{
								"box" : 								{
									"border" : 2.0,
									"id" : "obj-20",
									"linecolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 621.0, 209.0, 88.0, 5.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.299999999999955, 18.285714285714285, 88.0, 5.0 ],
									"saved_attribute_attributes" : 									{
										"linecolor" : 										{
											"expression" : ""
										}

									}

								}

							}
, 							{
								"box" : 								{
									"border" : 2.0,
									"id" : "obj-17",
									"linecolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 621.0, 195.5, 91.0, 5.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.299999999999955, 10.285714285714285, 91.0, 5.0 ],
									"saved_attribute_attributes" : 									{
										"linecolor" : 										{
											"expression" : ""
										}

									}

								}

							}
, 							{
								"box" : 								{
									"border" : 2.0,
									"id" : "obj-18",
									"linecolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 621.0, 186.0, 88.0, 5.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 0.299999999999955, 6.285714285714285, 88.0, 5.0 ],
									"saved_attribute_attributes" : 									{
										"linecolor" : 										{
											"expression" : ""
										}

									}

								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 176.299999999999955, 304.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"border" : 3.0,
									"hidden" : 1,
									"id" : "obj-14",
									"linecolor" : [ 0.0, 0.627450980392157, 1.0, 1.0 ],
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 538.0, 186.0, 5.0, 81.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 92.547016632647797, 0.0, 5.0, 81.0 ],
									"saved_attribute_attributes" : 									{
										"linecolor" : 										{
											"expression" : ""
										}

									}

								}

							}
, 							{
								"box" : 								{
									"border" : 3.0,
									"hidden" : 1,
									"id" : "obj-15",
									"linecolor" : [ 0.0, 0.627450980392157, 1.0, 1.0 ],
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 526.0, 186.0, 5.0, 81.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 81.728639553566822, 0.0, 5.0, 81.0 ],
									"saved_attribute_attributes" : 									{
										"linecolor" : 										{
											"expression" : ""
										}

									}

								}

							}
, 							{
								"box" : 								{
									"border" : 3.0,
									"hidden" : 1,
									"id" : "obj-16",
									"linecolor" : [ 0.0, 0.627450980392157, 1.0, 1.0 ],
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 515.0, 186.0, 5.0, 81.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 70.910262474485847, 0.0, 5.0, 81.0 ],
									"saved_attribute_attributes" : 									{
										"linecolor" : 										{
											"expression" : ""
										}

									}

								}

							}
, 							{
								"box" : 								{
									"border" : 3.0,
									"hidden" : 1,
									"id" : "obj-11",
									"linecolor" : [ 0.0, 0.627450980392157, 1.0, 1.0 ],
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 517.0, 186.0, 5.0, 81.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 60.09188539540488, 0.0, 5.0, 81.0 ],
									"saved_attribute_attributes" : 									{
										"linecolor" : 										{
											"expression" : ""
										}

									}

								}

							}
, 							{
								"box" : 								{
									"border" : 3.0,
									"hidden" : 1,
									"id" : "obj-12",
									"linecolor" : [ 0.0, 0.627450980392157, 1.0, 1.0 ],
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 505.0, 186.0, 5.0, 81.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 49.273508316323898, 0.0, 5.0, 81.0 ],
									"saved_attribute_attributes" : 									{
										"linecolor" : 										{
											"expression" : ""
										}

									}

								}

							}
, 							{
								"box" : 								{
									"border" : 3.0,
									"hidden" : 1,
									"id" : "obj-13",
									"linecolor" : [ 0.0, 0.627450980392157, 1.0, 1.0 ],
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 494.0, 186.0, 5.0, 81.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 38.455131237242924, 0.0, 5.0, 81.0 ],
									"saved_attribute_attributes" : 									{
										"linecolor" : 										{
											"expression" : ""
										}

									}

								}

							}
, 							{
								"box" : 								{
									"border" : 3.0,
									"hidden" : 1,
									"id" : "obj-10",
									"linecolor" : [ 0.0, 0.627450980392157, 1.0, 1.0 ],
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 575.333333333333258, 187.5, 5.0, 81.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 27.636754158161949, 0.0, 5.0, 81.0 ],
									"saved_attribute_attributes" : 									{
										"linecolor" : 										{
											"expression" : ""
										}

									}

								}

							}
, 							{
								"box" : 								{
									"border" : 3.0,
									"hidden" : 1,
									"id" : "obj-9",
									"linecolor" : [ 0.0, 0.627450980392157, 1.0, 1.0 ],
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 474.0, 186.0, 5.0, 81.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 16.818377079080975, 0.0, 5.0, 81.0 ],
									"saved_attribute_attributes" : 									{
										"linecolor" : 										{
											"expression" : ""
										}

									}

								}

							}
, 							{
								"box" : 								{
									"border" : 3.0,
									"hidden" : 1,
									"id" : "obj-8",
									"linecolor" : [ 0.0, 0.627450980392157, 1.0, 1.0 ],
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 463.0, 186.0, 5.0, 81.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 6.0, 0.0, 5.0, 81.0 ],
									"saved_attribute_attributes" : 									{
										"linecolor" : 										{
											"expression" : ""
										}

									}

								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 498.5, 722.382795556587212, 29.5, 22.0 ],
									"text" : "0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 466.0, 766.382795556587212, 85.0, 22.0 ],
									"text" : "prepend offset"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 466.333333412806269, 794.174087524414062, 67.0, 22.0 ],
									"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
									"text" : "thispatcher"
								}

							}
, 							{
								"box" : 								{
									"handoff" : "",
									"hilite" : 0,
									"id" : "obj-33",
									"maxclass" : "ubutton",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "bang", "", "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 300.0, 521.882797241210938, 33.0, 42.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 347.5, 701.674087524414062, 52.0, 22.0 ],
									"text" : "70 70"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "bang" ],
									"patching_rect" : [ 275.0, 667.882797241210938, 210.0, 22.0 ],
									"text" : "bpatcher-resize-gizmo (70 70) (55 55)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 486.0, 604.882797241210938, 47.0, 22.0 ],
									"text" : "getsize"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 275.0, 593.882797241210938, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 486.0, 634.882797241210938, 103.0, 22.0 ],
									"saved_object_attributes" : 									{
										"filename" : "bpatcher-resize",
										"parameter_enable" : 0
									}
,
									"text" : "js bpatcher-resize"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 694.299999999999955, 370.0, 116.0, 22.0 ],
									"text" : "gate 1 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "Replace data content (like bach.reg right inlet) only if moz.safe is unlocked. Otherwise its content remains protected.",
									"id" : "obj-1",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 791.299999999999955, 165.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"color" : [ 0.501960784313725, 0.501960784313725, 0.501960784313725, 0.0 ],
									"fontsize" : 66.138384235750223,
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 104.299999999999955, 409.0, 609.0, 82.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 5.299999999999955, 1.0, 611.700000000000045, 82.0 ],
									"reg_data_0000000000" : [ "[", 61, 67, 68, 63, 71, 64, 60, "]", "[", 60, 65, 61, 66, 71, 63, 68, "]", "[", 60, 64, 63, 62, 72, 65, 67, "]", "[", 60, 67, 63, 68, 64, 62, 72, "]", "[", 61, 71, 70, 60, 68, 72, 69, "]", "[", 61, 65, 62, 67, 71, 63, 72, "]", "[", 61, 62, 65, 71, 68, 63, 64, "]", "[", 60, 68, 66, 72, 71, 62, 65, "]", "[", 61, 65, 69, 60, 68, 72, 63, "]", "[", 60, 62, 66, 70, 69, 72, 65, "]", "[", 61, 67, 68, 65, 71, 60, 62, "]", "[", 61, 67, 63, 64, 69, 65, 71, "]", "[", 61, 70, 65, 62, 63, 67, 60, "]", "[", 61, 71, 63, 68, 62, 64, 72, "]", "[", 61, 64, 65, 68, 67, 70, 60, "]", "[", 61, 71, 64, 72, 69, 67, 70, "]", "[", 60, 63, 68, 71, 69, 67, 66, "]", "[", 61, 71, 62, 63, 68, 60, 69, "]", "[", 61, 69, 66, 70, 68, 71, 64, "]", "[", 61, 65, 66, 72, 71, 64, 70, "]", "[", 61, 64, 66, 65, 60, 62, 67, "]", "[", 61, 64, 67, 60, 72, 70, 62, "]", "[", 61, 69, 66, 67, 62, 68, 64, "]", "[", 61, 62, 70, 60, 65, 66, 72, "]", "[", 61, 63, 70, 65, 66, 60, 69, "]", "[", 61, 70, 67, 71, 72, 66, 64, "]", "[", 61, 70, 63, 65, 60, 68, 64, "]", "[", 61, 60, 67, 68, 65, 62, 63, "]", "[", 61, 71, 63, 72, 70, 62, 65, "]", "[", 61, 64, 69, 67, 70, 71, 68, "]", "[", 61, 64, 69, 63, 65, 71, 60, "]", "[", 60, 61, 66, 65, 67, 71, 70, "]", "[", 60, 64, 62, 72, 71, 70, 67, "]", "[", 60, 72, 65, 66, 67, 70, 63, "]", "[", 60, 65, 61, 62, 71, 64, 70, "]", "[", 61, 68, 65, 60, 66, 64, 69, "]", "[", 61, 68, 70, 72, 65, 62, 66, "]", "[", 60, 72, 63, 64, 65, 62, 66, "]", "[", 60, 62, 69, 72, 65, 68, 63, "]", "[", 61, 71, 64, 67, 68, 66, 72, "]", "[", 61, 64, 62, 72, 60, 67, 70, "]", "[", 61, 67, 70, 63, 71, 72, 68, "]", "[", 61, 62, 60, 66, 65, 70, 68, "]", "[", 61, 65, 68, 71, 67, 63, 72, "]", "[", 61, 68, 60, 71, 64, 66, 67, "]", "[", 61, 63, 66, 60, 70, 68, 67, "]", "[", 60, 64, 69, 68, 62, 71, 61, "]", "[", 61, 60, 68, 62, 67, 72, 70, "]", "[", 60, 62, 68, 69, 64, 72, 63, "]", "[", 60, 72, 66, 71, 62, 69, 61, "]", "[", 61, 70, 69, 68, 60, 65, 67, "]", "[", 60, 67, 65, 63, 72, 71, 66, "]", "[", 60, 69, 72, 64, 67, 62, 61, "]", "[", 61, 60, 72, 70, 62, 63, 67, "]", "[", 61, 65, 62, 72, 67, 66, 60, "]", "[", 61, 66, 60, 71, 62, 70, 63, "]", "[", 61, 64, 60, 69, 70, 68, 67, "]", "[", 61, 70, 69, 64, 68, 67, 62, "]", "[", 61, 72, 63, 60, 62, 71, 69, "]", "[", 61, 72, 60, 68, 62, 63, 64, "]", "[", 60, 65, 64, 62, 67, 61, 71, "]", "[", 60, 69, 72, 70, 68, 61, 71, "]", "[", 60, 67, 69, 72, 66, 61, 62, "]", "[", 60, 68, 67, 72, 64, 71, 66, "]", "[", 60, 64, 63, 72, 70, 61, 65, "]", "[", 61, 64, 63, 70, 71, 62, 68, "]", "[", 61, 62, 71, 64, 63, 67, 60, "]", "[", 60, 71, 70, 69, 62, 67, 66, "]", "[", 60, 66, 65, 68, 61, 64, 69, "]", "[", 61, 66, 64, 63, 68, 62, 70, "]", "[", 61, 63, 70, 62, 65, 68, 64, "]", "[", 60, 68, 71, 62, 61, 66, 64, "]", "[", 61, 64, 65, 72, 70, 69, 71, "]", "[", 60, 70, 61, 65, 67, 66, 63, "]", "[", 60, 72, 62, 67, 64, 66, 61, "]", "[", 61, 72, 62, 69, 71, 60, 63, "]", "[", 60, 66, 67, 64, 62, 72, 71, "]", "[", 61, 70, 72, 60, 62, 67, 66, "]", "[", 60, 72, 64, 65, 61, 71, 69, "]", "[", 61, 68, 69, 72, 64, 62, 65, "]", "[", 61, 62, 60, 68, 72, 65, 66, "]", "[", 61, 62, 72, 69, 68, 70, 71, "]", "[", 60, 68, 72, 71, 70, 65, 67, "]", "[", 60, 64, 66, 67, 71, 62, 72, "]", "[", 60, 64, 66, 62, 68, 72, 71, "]", "[", 60, 72, 64, 62, 65, 70, 69, "]", "[", 61, 66, 72, 62, 70, 60, 67, "]", "[", 61, 62, 66, 69, 64, 72, 63, "]", "[", 61, 66, 65, 60, 72, 70, 63, "]", "[", 60, 70, 69, 67, 71, 62, 72, "]", "[", 61, 62, 65, 64, 68, 70, 60, "]", "[", 61, 62, 67, 72, 68, 64, 66, "]", "[", 60, 69, 62, 71, 70, 63, 66, "]", "[", 61, 72, 66, 71, 64, 67, 68, "]", "[", 60, 71, 68, 62, 70, 63, 65, "]", "[", 61, 70, 71, 65, 62, 69, 64, "]", "[", 61, 66, 65, 71, 64, 67, 62, "]", "[", 60, 68, 71, 64, 70, 63, 61, "]", "[", 60, 64, 71, 70, 69, 61, 72, "]", "[", 61, 64, 62, 69, 63, 72, 71, "]", "[", 60, 71, 68, 62, 72, 64, 69, "]", "[", 61, 64, 70, 69, 62, 66, 63, "]", "[", 60, 65, 67, 64, 62, 66, 61, "]", "[", 61, 63, 72, 65, 67, 60, 64, "]", "[", 61, 69, 64, 71, 62, 72, 67, "]", "[", 60, 71, 68, 69, 64, 66, 67, "]", "[", 61, 68, 69, 65, 62, 63, 64, "]", "[", 60, 63, 71, 68, 69, 62, 70, "]", "[", 61, 69, 72, 67, 70, 65, 64, "]", "[", 60, 63, 71, 64, 68, 69, 66, "]", "[", 61, 72, 70, 64, 66, 65, 62, "]", "[", 61, 69, 67, 62, 60, 66, 65, "]", "[", 61, 70, 69, 62, 64, 66, 68, "]", "[", 61, 67, 64, 69, 70, 72, 63, "]", "[", 60, 65, 67, 64, 71, 61, 63, "]", "[", 60, 62, 71, 67, 63, 69, 64, "]", "[", 61, 66, 71, 63, 65, 72, 67, "]", "[", 60, 65, 72, 67, 63, 68, 62, "]", "[", 61, 69, 67, 72, 71, 70, 65, "]", "[", 60, 61, 72, 66, 62, 71, 69, "]", "[", 61, 71, 68, 72, 60, 69, 62, "]", "[", 60, 68, 61, 65, 69, 67, 70, "]", "[", 60, 62, 65, 68, 63, 71, 69, "]", "[", 61, 60, 71, 70, 65, 69, 66, "]", "[", 61, 62, 69, 72, 65, 64, 68, "]", "[", 60, 69, 70, 64, 71, 66, 63, "]", "[", 61, 64, 67, 60, 65, 66, 62, "]", "[", 60, 66, 64, 67, 62, 71, 70, "]", "[", 60, 68, 65, 62, 67, 72, 70, "]", "[", 60, 69, 72, 67, 71, 70, 61, "]", "[", 61, 66, 69, 71, 60, 65, 70, "]", "[", 60, 61, 72, 67, 65, 63, 70, "]", "[", 61, 67, 65, 60, 66, 64, 63, "]", "[", 61, 72, 71, 63, 68, 70, 62, "]", "[", 60, 69, 65, 61, 72, 63, 67, "]", "[", 60, 62, 64, 71, 69, 65, 70, "]", "[", 61, 68, 65, 67, 72, 66, 64, "]", "[", 61, 72, 64, 60, 67, 69, 66, "]", "[", 60, 68, 66, 62, 67, 64, 72, "]", "[", 60, 66, 68, 71, 69, 64, 72, "]", "[", 61, 65, 66, 71, 68, 63, 69, "]", "[", 61, 67, 70, 65, 68, 63, 62, "]", "[", 60, 66, 64, 62, 69, 70, 68, "]", "[", 60, 70, 63, 66, 72, 69, 67, "]", "[", 61, 66, 60, 71, 67, 68, 72, "]", "[", 60, 71, 66, 65, 63, 62, 61, "]", "[", 61, 71, 65, 63, 67, 68, 69, "]", "[", 61, 68, 66, 65, 60, 71, 70, "]", "[", 61, 64, 69, 68, 62, 63, 66, "]", "[", 60, 66, 69, 64, 67, 70, 72, "]", "[", 60, 72, 61, 64, 71, 62, 63, "]", "[", 60, 65, 68, 62, 61, 67, 63, "]", "[", 61, 60, 65, 62, 72, 71, 68, "]", "[", 60, 72, 69, 61, 67, 62, 66, "]", "[", 60, 68, 61, 70, 64, 69, 71, "]", "[", 60, 61, 71, 70, 68, 62, 65, "]", "[", 60, 67, 72, 64, 66, 71, 61, "]", "[", 61, 72, 69, 66, 60, 62, 64, "]", "[", 60, 66, 72, 64, 71, 61, 63, "]", "[", 61, 70, 60, 65, 71, 67, 68, "]", "[", 61, 69, 64, 65, 71, 72, 62, "]", "[", 61, 63, 70, 71, 64, 62, 72, "]", "[", 61, 63, 66, 69, 64, 67, 68, "]", "[", 60, 71, 65, 66, 63, 61, 64, "]", "[", 60, 66, 61, 69, 70, 62, 68, "]", "[", 61, 67, 64, 63, 65, 71, 70, "]", "[", 61, 70, 60, 65, 71, 68, 72, "]", "[", 61, 62, 72, 69, 63, 67, 64, "]", "[", 60, 70, 69, 64, 67, 66, 72, "]", "[", 61, 72, 71, 68, 66, 63, 60, "]", "[", 61, 66, 64, 63, 70, 72, 65, "]", "[", 61, 65, 67, 70, 68, 69, 64, "]", "[", 61, 65, 63, 69, 68, 72, 60, "]", "[", 61, 69, 68, 72, 65, 60, 66, "]", "[", 60, 62, 61, 63, 71, 72, 66, "]", "[", 60, 67, 68, 62, 64, 61, 72, "]", "[", 61, 62, 66, 70, 63, 72, 64, "]", "[", 60, 64, 69, 61, 67, 72, 71, "]", "[", 60, 71, 64, 67, 66, 61, 68, "]", "[", 60, 63, 69, 68, 67, 64, 66, "]", "[", 60, 61, 64, 71, 70, 66, 62, "]", "[", 61, 70, 62, 64, 66, 68, 65, "]", "[", 60, 70, 69, 65, 63, 62, 64, "]", "[", 60, 71, 66, 67, 69, 72, 62, "]", "[", 61, 71, 63, 64, 68, 70, 62, "]", "[", 61, 60, 72, 66, 71, 62, 67, "]", "[", 60, 62, 65, 64, 71, 63, 67, "]", "[", 61, 64, 68, 70, 69, 67, 62, "]", "[", 60, 72, 66, 64, 61, 63, 68, "]", "[", 61, 70, 67, 65, 71, 63, 62, "]", "[", 60, 62, 72, 71, 66, 61, 64, "]", "[", 61, 63, 69, 60, 72, 62, 67, "]", "[", 60, 65, 63, 72, 64, 71, 66, "]", "[", 60, 72, 69, 61, 68, 67, 70, "]", "[", 61, 72, 66, 68, 63, 64, 67, "]", "[", 60, 71, 62, 65, 66, 70, 63, "]", "[", 61, 62, 70, 69, 71, 65, 72, "]", "[", 60, 61, 70, 71, 63, 62, 68, "]", "[", 60, 72, 62, 69, 70, 68, 64, "]", "[", 61, 65, 66, 72, 64, 62, 70, "]", "[", 61, 67, 69, 65, 71, 68, 63, "]", "[", 60, 65, 67, 69, 71, 72, 61, "]", "[", 60, 62, 68, 64, 66, 72, 67, "]", "[", 60, 62, 66, 71, 69, 64, 65, "]", "[", 60, 71, 61, 66, 67, 68, 63, "]", "[", 60, 63, 69, 67, 68, 70, 64, "]", "[", 61, 72, 68, 67, 63, 70, 62, "]", "[", 60, 68, 71, 72, 65, 61, 64, "]", "[", 61, 63, 71, 65, 60, 69, 70, "]", "[", 60, 72, 71, 66, 61, 62, 67, "]", "[", 61, 69, 64, 70, 62, 60, 66, "]", "[", 60, 69, 71, 66, 72, 62, 63, "]", "[", 61, 66, 60, 65, 62, 68, 64, "]", "[", 60, 71, 68, 67, 72, 64, 65, "]", "[", 61, 66, 69, 68, 64, 60, 71, "]", "[", 61, 72, 60, 66, 68, 62, 71, "]", "[", 61, 64, 69, 65, 63, 66, 70, "]", "[", 60, 70, 62, 69, 68, 66, 63, "]", "[", 60, 70, 61, 62, 71, 67, 69, "]", "[", 60, 72, 65, 61, 64, 68, 63, "]", "[", 60, 66, 64, 72, 65, 71, 63, "]", "[", 60, 65, 68, 70, 61, 63, 67, "]", "[", 61, 66, 68, 65, 70, 62, 64, "]", "[", 60, 61, 65, 64, 71, 67, 69, "]", "[", 61, 64, 60, 63, 72, 62, 69, "]", "[", 61, 66, 69, 62, 67, 64, 70, "]", "[", 61, 64, 60, 67, 66, 65, 63, "]", "[", 60, 67, 70, 66, 71, 62, 65, "]", "[", 60, 62, 70, 67, 72, 66, 63, "]", "[", 61, 69, 65, 72, 62, 63, 71, "]", "[", 60, 71, 69, 65, 64, 70, 67, "]", "[", 61, 67, 60, 64, 69, 68, 63, "]", "[", 60, 65, 61, 68, 66, 62, 64, "]", "[", 60, 61, 70, 66, 63, 62, 67, "]", "[", 61, 67, 64, 71, 70, 72, 62, "]", "[", 60, 61, 68, 67, 63, 64, 70, "]", "[", 60, 64, 65, 70, 67, 68, 66, "]", "[", 60, 66, 64, 70, 69, 67, 68, "]", "[", 60, 71, 69, 65, 68, 63, 62, "]", "[", 61, 66, 60, 68, 70, 72, 69, "]", "[", 61, 69, 72, 62, 60, 63, 70, "]", "[", 61, 67, 71, 69, 62, 60, 64, "]", "[", 61, 65, 67, 69, 63, 70, 62, "]", "[", 60, 68, 63, 71, 66, 67, 65, "]", "[", 61, 67, 66, 60, 68, 63, 62, "]", "[", 60, 67, 69, 71, 61, 65, 70, "]", "[", 60, 69, 61, 68, 65, 72, 71, "]", "[", 61, 72, 69, 60, 63, 67, 62, "]", "[", 60, 70, 71, 69, 72, 66, 62, "]", "[", 61, 65, 69, 70, 63, 71, 60, "]", "[", 61, 66, 72, 69, 63, 60, 68, "]", "[", 60, 61, 67, 71, 70, 62, 66, "]", "[", 61, 69, 63, 71, 62, 60, 72, "]", "[", 61, 60, 71, 72, 63, 67, 70, "]", "[", 61, 64, 65, 62, 72, 70, 66, "]", "[", 61, 62, 63, 70, 68, 69, 72, "]", "[", 60, 69, 64, 62, 72, 65, 66, "]", "[", 60, 61, 71, 70, 69, 66, 64, "]", "[", 60, 72, 61, 67, 66, 71, 68, "]", "[", 61, 60, 71, 62, 68, 66, 63, "]", "[", 60, 69, 61, 68, 63, 67, 72, "]", "[", 61, 60, 66, 70, 64, 67, 68, "]", "[", 61, 68, 64, 67, 71, 60, 70, "]", "[", 60, 66, 64, 69, 62, 67, 71, "]", "[", 60, 71, 69, 72, 65, 64, 61, "]", "[", 60, 72, 69, 68, 62, 70, 71, "]", "[", 60, 62, 70, 69, 63, 65, 66, "]", "[", 61, 69, 65, 72, 68, 63, 71, "]", "[", 60, 68, 69, 71, 65, 72, 63, "]", "[", 61, 68, 63, 70, 60, 67, 62, "]", "[", 60, 69, 64, 63, 71, 61, 65, "]", "[", 61, 64, 72, 60, 69, 68, 71, "]", "[", 60, 70, 64, 65, 67, 69, 61, "]", "[", 61, 65, 60, 66, 68, 69, 70, "]", "[", 60, 62, 61, 70, 69, 63, 72, "]", "[", 60, 71, 66, 69, 61, 63, 70, "]", "[", 60, 68, 69, 67, 62, 72, 71, "]", "[", 60, 72, 70, 67, 64, 62, 61, "]", "[", 61, 65, 62, 71, 66, 63, 68, "]", "[", 60, 66, 71, 72, 64, 65, 69, "]", "[", 60, 71, 62, 69, 67, 70, 72, "]", "[", 61, 68, 69, 63, 62, 72, 66, "]", "[", 61, 65, 72, 60, 63, 66, 62, "]", "[", 60, 65, 62, 66, 67, 61, 64, "]", "[", 60, 66, 68, 67, 70, 65, 71, "]", "[", 60, 67, 71, 62, 61, 70, 68, "]", "[", 61, 68, 67, 70, 63, 66, 62, "]", "[", 61, 62, 71, 72, 69, 64, 68, "]", "[", 60, 71, 63, 69, 62, 70, 68, "]", "[", 60, 61, 69, 70, 68, 64, 67, "]", "[", 61, 66, 64, 62, 71, 65, 68, "]", "[", 60, 68, 63, 71, 64, 65, 67, "]", "[", 60, 61, 71, 63, 66, 62, 67, "]", "[", 61, 70, 63, 72, 68, 67, 65, "]", "[", 61, 71, 65, 70, 72, 63, 64, "]", "[", 60, 65, 63, 68, 69, 62, 70, "]", "[", 61, 65, 70, 63, 67, 64, 66, "]", "[", 60, 63, 70, 61, 66, 71, 67, "]", "[", 60, 62, 72, 66, 67, 64, 70, "]", "[", 60, 71, 61, 72, 70, 64, 66, "]", "[", 60, 62, 70, 63, 65, 66, 61, "]", "[", 60, 62, 66, 63, 72, 67, 71, "]", "[", 60, 61, 72, 70, 65, 63, 68, "]", "[", 61, 67, 66, 62, 63, 65, 69, "]", "[", 60, 69, 72, 63, 61, 71, 65, "]", "[", 60, 63, 65, 66, 69, 71, 70, "]", "[", 61, 69, 60, 71, 63, 64, 70, "]", "[", 61, 63, 64, 72, 70, 62, 69, "]", "[", 60, 67, 61, 71, 72, 68, 69, "]", "[", 61, 68, 62, 66, 71, 67, 60, "]", "[", 61, 71, 62, 70, 72, 63, 69, "]", "[", 61, 60, 63, 70, 72, 62, 66, "]", "[", 60, 70, 65, 67, 61, 71, 64, "]", "[", 61, 70, 62, 68, 67, 64, 72, "]", "[", 61, 67, 71, 63, 66, 65, 64, "]", "[", 60, 65, 62, 71, 66, 61, 63, "]", "[", 61, 69, 64, 71, 60, 65, 70, "]", "[", 61, 72, 65, 70, 62, 68, 66, "]", "[", 61, 69, 62, 66, 60, 64, 63, "]", "[", 61, 66, 63, 69, 62, 71, 60, "]", "[", 61, 63, 67, 62, 72, 69, 68, "]", "[", 60, 71, 61, 62, 68, 70, 64, "]", "[", 61, 63, 60, 65, 71, 67, 72, "]", "[", 61, 69, 67, 68, 66, 72, 70, "]", "[", 61, 60, 65, 66, 68, 63, 70, "]", "[", 60, 63, 71, 65, 70, 67, 72, "]", "[", 61, 70, 68, 66, 67, 64, 63, "]", "[", 61, 67, 63, 69, 65, 71, 64, "]", "[", 60, 64, 68, 63, 61, 70, 65, "]", "[", 61, 65, 66, 62, 70, 72, 60, "]", "[", 60, 66, 68, 65, 70, 71, 61, "]", "[", 60, 67, 66, 62, 65, 70, 61, "]", "[", 61, 71, 60, 68, 65, 62, 69, "]", "[", 60, 68, 63, 69, 64, 70, 62, "]", "[", 60, 71, 70, 64, 62, 66, 63, "]", "[", 60, 64, 69, 66, 70, 72, 63, "]", "[", 60, 70, 68, 65, 69, 67, 71, "]", "[", 60, 67, 72, 62, 68, 61, 63, "]", "[", 61, 67, 70, 66, 63, 62, 71, "]", "[", 61, 71, 60, 66, 70, 64, 67, "]", "[", 61, 62, 63, 60, 70, 69, 72, "]", "[", 61, 69, 60, 67, 66, 68, 72, "]", "[", 61, 66, 60, 71, 68, 64, 70, "]", "[", 61, 71, 72, 62, 67, 63, 69, "]", "[", 60, 63, 68, 65, 66, 70, 72, "]", "[", 60, 70, 66, 72, 68, 67, 63, "]", "[", 61, 62, 65, 72, 71, 68, 63, "]", "[", 61, 70, 65, 63, 60, 71, 67, "]", "[", 60, 61, 64, 71, 67, 66, 68, "]", "[", 61, 67, 71, 63, 72, 69, 62, "]", "[", 61, 63, 64, 69, 72, 62, 60, "]", "[", 60, 63, 72, 68, 71, 66, 61, "]", "[", 61, 60, 70, 71, 67, 62, 68, "]", "[", 60, 63, 62, 65, 70, 69, 72, "]", "[", 61, 63, 72, 65, 66, 64, 62, "]", "[", 61, 70, 66, 64, 69, 63, 71, "]", "[", 60, 61, 67, 71, 72, 65, 62, "]", "[", 61, 63, 68, 65, 62, 70, 69, "]", "[", 60, 67, 65, 62, 66, 69, 72, "]", "[", 60, 61, 64, 69, 71, 68, 65, "]", "[", 61, 71, 63, 67, 66, 62, 60, "]", "[", 60, 67, 65, 63, 69, 62, 66, "]", "[", 60, 64, 67, 68, 71, 66, 65, "]", "[", 61, 63, 71, 69, 70, 65, 64, "]", "[", 60, 63, 62, 69, 72, 61, 65, "]", "[", 60, 71, 72, 65, 66, 62, 70, "]", "[", 61, 62, 60, 63, 70, 68, 71, "]", "[", 60, 66, 70, 71, 65, 69, 63, "]", "[", 61, 71, 72, 67, 70, 66, 64, "]", "[", 60, 65, 63, 72, 69, 64, 62, "]", "[", 60, 64, 67, 66, 71, 69, 70, "]", "[", 60, 67, 71, 65, 69, 66, 70, "]", "[", 61, 71, 67, 63, 66, 60, 72, "]", "[", 61, 67, 71, 63, 69, 62, 64, "]", "[", 60, 63, 67, 66, 61, 68, 64, "]", "[", 60, 66, 72, 61, 67, 71, 65, "]", "[", 61, 70, 67, 60, 71, 69, 65, "]", "[", 60, 71, 68, 67, 69, 72, 66, "]", "[", 60, 64, 61, 65, 62, 72, 63, "]", "[", 60, 67, 63, 65, 70, 64, 68, "]", "[", 61, 67, 62, 66, 60, 70, 71, "]", "[", 61, 64, 66, 72, 68, 63, 60, "]", "[", 61, 65, 64, 60, 71, 68, 70, "]", "[", 60, 70, 71, 69, 64, 61, 66, "]", "[", 60, 69, 61, 71, 64, 67, 72, "]", "[", 60, 71, 69, 66, 63, 61, 72, "]", "[", 60, 62, 61, 68, 65, 67, 66, "]", "[", 60, 65, 69, 68, 66, 63, 72, "]", "[", 61, 60, 71, 62, 65, 64, 70, "]", "[", 60, 70, 65, 72, 71, 68, 69, "]", "[", 61, 72, 62, 68, 60, 70, 63, "]", "[", 60, 72, 61, 71, 66, 63, 68, "]", "[", 60, 67, 64, 69, 68, 63, 71, "]", "[", 60, 64, 67, 71, 62, 65, 63, "]", "[", 61, 60, 69, 71, 62, 64, 67, "]", "[", 61, 62, 64, 72, 65, 68, 71, "]", "[", 60, 69, 63, 67, 62, 70, 65, "]", "[", 60, 71, 61, 64, 63, 70, 68, "]", "[", 61, 71, 65, 68, 70, 72, 69, "]", "[", 60, 63, 67, 62, 64, 68, 71, "]", "[", 60, 65, 64, 68, 71, 67, 62, "]", "[", 61, 69, 67, 70, 66, 71, 62, "]", "[", 61, 72, 63, 71, 69, 64, 68, "]", "[", 61, 64, 66, 65, 60, 63, 70, "]", "[", 61, 62, 60, 65, 68, 63, 67, "]", "[", 61, 71, 72, 62, 67, 60, 68, "]", "[", 61, 69, 72, 65, 70, 67, 71, "]", "[", 60, 72, 68, 69, 63, 64, 65, "]", "[", 60, 71, 65, 66, 69, 63, 67, "]", "[", 61, 64, 63, 60, 70, 68, 62, "]", "[", 61, 65, 62, 69, 64, 72, 70, "]", "[", 60, 69, 70, 65, 66, 71, 61, "]", "[", 61, 60, 70, 63, 69, 71, 72, "]", "[", 60, 62, 61, 67, 68, 72, 65, "]", "[", 61, 63, 72, 71, 66, 64, 69, "]", "[", 60, 72, 61, 68, 65, 66, 70, "]", "[", 60, 72, 66, 61, 70, 62, 64, "]", "[", 60, 69, 66, 68, 62, 71, 63, "]", "[", 60, 68, 61, 66, 67, 64, 62, "]", "[", 60, 63, 65, 64, 69, 70, 72, "]", "[", 60, 69, 65, 71, 66, 62, 67, "]", "[", 61, 72, 69, 68, 65, 63, 67, "]", "[", 60, 70, 72, 64, 69, 71, 61, "]", "[", 61, 60, 66, 67, 64, 69, 71, "]", "[", 61, 65, 68, 70, 64, 67, 66, "]", "[", 61, 65, 66, 72, 62, 71, 70, "]", "[", 61, 67, 64, 69, 62, 60, 68, "]", "[", 61, 69, 66, 71, 70, 65, 63, "]", "[", 61, 68, 72, 70, 65, 66, 60, "]", "[", 61, 65, 72, 67, 60, 66, 64, "]", "[", 60, 67, 70, 72, 64, 65, 69, "]", "[", 60, 64, 71, 70, 72, 69, 66, "]", "[", 61, 71, 60, 66, 65, 67, 68, "]", "[", 60, 68, 64, 65, 69, 61, 62, "]", "[", 60, 72, 70, 67, 64, 61, 68, "]", "[", 61, 62, 60, 64, 72, 67, 63, "]", "[", 60, 65, 69, 64, 63, 68, 67, "]", "[", 61, 60, 63, 72, 69, 67, 62, "]", "[", 61, 60, 64, 71, 69, 70, 68, "]", "[", 60, 67, 69, 63, 72, 64, 70, "]", "[", 61, 63, 68, 72, 66, 71, 70, "]", "[", 60, 62, 66, 69, 61, 70, 72, "]", "[", 60, 62, 66, 64, 63, 68, 71, "]", "[", 60, 65, 62, 63, 70, 69, 64, "]", "[", 61, 63, 64, 67, 70, 68, 66, "]", "[", 60, 66, 61, 67, 69, 65, 64, "]", "[", 60, 71, 67, 65, 62, 61, 63, "]", "[", 61, 64, 71, 65, 72, 62, 63, "]", "[", 60, 69, 65, 72, 67, 70, 61, "]", "[", 60, 68, 65, 67, 61, 70, 72, "]", "[", 60, 65, 61, 72, 69, 68, 71, "]", "[", 61, 70, 60, 67, 64, 69, 71, "]", "[", 61, 70, 65, 71, 60, 63, 69, "]", "[", 60, 72, 64, 62, 70, 66, 61, "]", "[", 61, 68, 72, 70, 67, 66, 60, "]", "[" ],
									"reg_data_0000000001" : [ 61, 70, 69, 65, 62, 71, 64, "]", "[", 61, 64, 66, 70, 63, 67, 62, "]", "[", 60, 71, 67, 63, 61, 70, 68, "]", "[", 60, 62, 64, 71, 61, 70, 66, "]", "[", 60, 69, 72, 71, 64, 66, 63, "]", "[", 60, 68, 69, 61, 70, 64, 65, "]", "[", 60, 63, 67, 61, 71, 65, 69, "]", "[", 61, 68, 66, 62, 67, 65, 64, "]", "[", 61, 66, 67, 71, 70, 64, 69, "]", "[", 61, 71, 64, 72, 65, 69, 68, "]", "[", 60, 68, 61, 66, 63, 71, 70, "]", "[", 60, 67, 63, 68, 64, 61, 65, "]", "[", 61, 67, 70, 72, 64, 60, 69, "]", "[", 61, 67, 66, 62, 63, 64, 60, "]", "[", 60, 61, 67, 71, 69, 72, 68, "]", "[", 61, 68, 67, 70, 60, 72, 71, "]", "[", 60, 71, 66, 67, 70, 62, 65, "]", "[", 60, 61, 71, 66, 63, 72, 65, "]", "[", 60, 67, 63, 64, 61, 70, 66, "]", "[", 61, 65, 60, 66, 64, 70, 68, "]", "[", 60, 71, 62, 70, 64, 61, 67, "]", "[", 60, 61, 70, 63, 72, 64, 68, "]", "[", 60, 66, 61, 64, 72, 67, 65, "]", "[", 61, 67, 63, 72, 62, 65, 71, "]", "[", 61, 69, 72, 64, 66, 60, 65, "]", "[", 60, 68, 72, 71, 62, 65, 63, "]", "[", 60, 68, 63, 69, 66, 61, 72, "]", "[", 60, 72, 65, 69, 63, 68, 70, "]", "[", 60, 67, 63, 62, 64, 65, 68, "]", "[", 61, 62, 72, 71, 68, 60, 64, "]", "[", 61, 63, 62, 70, 67, 64, 66, "]", "[", 61, 71, 65, 64, 68, 60, 67, "]", "[", 61, 62, 63, 60, 65, 67, 70, "]", "[", 60, 63, 68, 61, 64, 67, 72, "]", "[", 60, 62, 61, 71, 67, 66, 70, "]", "[", 61, 72, 62, 66, 68, 64, 67, "]", "[", 61, 70, 63, 71, 66, 68, 62, "]", "[", 61, 71, 63, 64, 69, 60, 72, "]", "[", 61, 65, 67, 69, 62, 64, 71, "]", "[", 61, 62, 64, 63, 71, 72, 67, "]", "[", 61, 67, 69, 68, 65, 60, 63, "]", "[", 61, 70, 69, 60, 71, 68, 62, "]", "[", 60, 70, 64, 66, 61, 63, 65, "]", "[", 61, 69, 66, 63, 72, 71, 64, "]", "[", 61, 70, 63, 64, 62, 60, 67, "]", "[", 60, 64, 61, 62, 72, 69, 68, "]", "[", 60, 72, 71, 68, 69, 64, 62, "]", "[", 61, 67, 62, 70, 69, 63, 65, "]", "[", 60, 65, 70, 66, 61, 62, 67, "]", "[", 60, 67, 71, 72, 64, 70, 63, "]", "[", 60, 69, 61, 67, 63, 70, 65, "]", "[", 60, 69, 62, 61, 64, 72, 67, "]", "[", 61, 65, 64, 69, 71, 68, 63, "]", "[", 61, 67, 64, 72, 69, 71, 65, "]", "[", 61, 65, 63, 67, 66, 70, 71, "]", "[", 60, 68, 70, 62, 72, 65, 67, "]", "[", 61, 71, 70, 66, 69, 60, 62, "]", "[", 61, 63, 62, 66, 69, 71, 70, "]", "[", 61, 64, 68, 69, 63, 65, 70, "]", "[", 61, 64, 68, 69, 63, 67, 66, "]", "[", 61, 60, 70, 62, 66, 67, 69, "]", "[", 60, 69, 71, 67, 70, 61, 62, "]", "[", 60, 69, 72, 64, 70, 67, 62, "]", "[", 61, 69, 71, 72, 68, 62, 63, "]", "[", 60, 63, 67, 70, 72, 69, 68, "]", "[", 61, 66, 62, 72, 63, 69, 67, "]", "[", 61, 60, 69, 71, 68, 65, 63, "]", "[", 60, 67, 65, 69, 64, 68, 66, "]", "[", 61, 64, 71, 72, 67, 68, 69, "]", "[", 60, 62, 70, 69, 68, 71, 66, "]", "[", 60, 66, 68, 62, 72, 65, 61, "]", "[", 60, 71, 62, 72, 64, 66, 65, "]", "[", 60, 63, 67, 68, 70, 71, 69, "]", "[", 60, 71, 62, 70, 66, 63, 68, "]", "[", 60, 72, 67, 62, 71, 61, 68, "]", "[", 60, 67, 72, 68, 63, 64, 71, "]", "[", 60, 64, 69, 68, 65, 70, 66, "]", "[", 61, 68, 71, 64, 66, 70, 62, "]", "[", 60, 61, 66, 69, 67, 62, 63, "]", "[", 61, 71, 66, 69, 64, 72, 70, "]", "[", 60, 69, 64, 63, 71, 70, 68, "]", "[", 60, 66, 64, 65, 71, 62, 72, "]", "[", 61, 67, 62, 66, 60, 69, 64, "]", "[", 60, 70, 72, 66, 62, 69, 65, "]", "[", 61, 70, 65, 67, 62, 72, 71, "]", "[", 60, 63, 71, 69, 65, 66, 70, "]", "[", 61, 60, 69, 68, 65, 63, 67, "]", "[", 60, 65, 64, 66, 62, 71, 72, "]", "[", 61, 69, 72, 63, 67, 60, 66, "]", "[", 60, 71, 67, 72, 65, 63, 64, "]", "[", 61, 71, 67, 70, 68, 72, 69, "]", "[", 61, 69, 67, 66, 64, 62, 63, "]", "[", 61, 69, 63, 64, 72, 62, 65, "]", "[", 60, 66, 63, 61, 71, 62, 65, "]", "[", 61, 66, 72, 63, 70, 62, 67, "]", "[", 60, 72, 64, 70, 66, 68, 71, "]", "[", 60, 64, 61, 69, 70, 67, 66, "]", "[", 61, 62, 67, 69, 65, 60, 63, "]", "[", 61, 62, 72, 66, 68, 65, 64, "]", "[", 60, 62, 61, 71, 63, 69, 68, "]", "[", 60, 61, 67, 63, 70, 68, 64, "]", "[", 61, 67, 72, 68, 71, 69, 60, "]", "[", 61, 71, 62, 70, 66, 64, 69, "]", "[", 60, 70, 63, 65, 72, 66, 69, "]", "[", 60, 65, 70, 72, 63, 69, 66, "]", "[", 60, 64, 72, 61, 62, 63, 67, "]", "[", 60, 63, 71, 72, 68, 65, 64, "]", "[", 61, 70, 66, 63, 68, 67, 71, "]", "[", 60, 71, 69, 65, 63, 68, 72, "]", "[", 61, 67, 65, 60, 69, 66, 62, "]", "[", 60, 69, 72, 66, 61, 71, 64, "]", "[", 61, 68, 65, 60, 69, 67, 70, "]", "[", 61, 66, 72, 63, 68, 69, 67, "]", "[", 61, 70, 67, 69, 60, 62, 71, "]", "[", 61, 68, 63, 64, 66, 60, 71, "]", "[", 61, 64, 69, 62, 72, 60, 68, "]", "[", 61, 68, 62, 71, 66, 64, 60, "]", "[", 60, 62, 64, 68, 72, 66, 70, "]", "[", 61, 62, 68, 60, 70, 65, 67, "]", "[", 61, 60, 71, 69, 66, 62, 64, "]", "[", 61, 62, 63, 66, 69, 71, 67, "]", "[", 61, 69, 65, 67, 70, 72, 64, "]", "[", 61, 68, 62, 65, 64, 63, 71, "]", "[", 60, 70, 67, 62, 68, 72, 69, "]", "[", 60, 62, 66, 61, 64, 69, 68, "]", "[", 60, 66, 67, 61, 71, 70, 68, "]", "[", 60, 65, 61, 62, 63, 67, 70, "]", "[", 60, 62, 66, 69, 71, 64, 61, "]", "[", 61, 64, 65, 69, 71, 62, 68, "]", "[", 61, 67, 68, 63, 62, 60, 72, "]", "[", 61, 71, 60, 70, 63, 64, 66, "]", "[", 60, 64, 63, 65, 62, 71, 67, "]", "[", 60, 61, 64, 62, 67, 66, 70, "]", "[", 60, 68, 64, 63, 66, 69, 65, "]", "[", 60, 72, 62, 64, 61, 67, 63, "]", "[", 61, 62, 63, 60, 67, 72, 68, "]", "[", 60, 64, 71, 68, 66, 72, 67, "]", "[", 60, 71, 68, 67, 70, 63, 64, "]", "[", 60, 65, 61, 68, 64, 71, 69, "]", "[", 60, 69, 71, 61, 64, 67, 72, "]", "[", 61, 65, 71, 60, 70, 68, 62, "]", "[", 60, 69, 63, 66, 62, 72, 67, "]", "[", 61, 65, 60, 69, 67, 64, 72, "]", "[", 61, 66, 62, 60, 63, 69, 72, "]", "[", 61, 64, 67, 72, 70, 63, 60, "]", "[", 60, 71, 68, 72, 66, 65, 64, "]", "[", 61, 66, 63, 60, 70, 69, 65, "]", "[", 60, 70, 66, 63, 61, 69, 64, "]", "[", 60, 61, 63, 67, 66, 72, 62, "]", "[", 61, 64, 71, 72, 70, 63, 67, "]", "[", 61, 72, 66, 65, 67, 63, 62, "]", "[", 61, 63, 60, 64, 70, 69, 65, "]", "[", 61, 71, 69, 65, 72, 67, 62, "]", "[", 61, 69, 72, 66, 68, 65, 71, "]", "[", 60, 72, 68, 70, 67, 65, 64, "]", "[", 61, 67, 62, 65, 64, 71, 66, "]", "[", 60, 61, 69, 62, 67, 63, 72, "]", "[", 60, 66, 64, 62, 69, 65, 72, "]", "[", 61, 66, 63, 65, 67, 72, 68, "]", "[", 60, 66, 61, 72, 69, 71, 70, "]", "[", 60, 69, 70, 62, 67, 68, 71, "]", "[", 61, 67, 65, 72, 71, 66, 60, "]", "[", 60, 64, 65, 63, 68, 61, 71, "]", "[", 61, 72, 63, 66, 68, 64, 67, "]", "[", 60, 65, 70, 64, 71, 62, 67, "]", "[", 61, 69, 67, 72, 63, 66, 65, "]", "[", 60, 67, 65, 66, 61, 63, 64, "]", "[", 61, 72, 68, 62, 70, 71, 64, "]", "[", 60, 64, 70, 68, 69, 72, 71, "]", "[", 61, 69, 68, 64, 66, 65, 62, "]", "[", 60, 62, 61, 66, 71, 67, 69, "]", "[", 61, 69, 70, 72, 71, 63, 62, "]", "[", 60, 72, 67, 71, 62, 66, 64, "]", "[", 60, 65, 71, 70, 64, 66, 61, "]", "[", 60, 66, 68, 69, 72, 62, 65, "]", "[", 60, 68, 72, 66, 65, 71, 62, "]", "[", 61, 69, 62, 60, 64, 63, 70, "]", "[", 61, 69, 72, 64, 67, 66, 62, "]", "[", 61, 60, 69, 64, 71, 67, 62, "]", "[", 60, 72, 71, 66, 65, 67, 69, "]", "[", 60, 69, 71, 62, 70, 67, 65, "]", "[", 60, 64, 68, 66, 70, 67, 65, "]", "[", 61, 65, 63, 70, 72, 71, 64, "]", "[", 60, 61, 67, 70, 63, 64, 71, "]", "[", 61, 65, 68, 64, 63, 67, 72, "]", "[", 61, 69, 65, 72, 68, 67, 66, "]", "[", 60, 64, 66, 71, 61, 63, 65, "]", "[", 60, 66, 70, 69, 65, 72, 71, "]", "[", 60, 67, 66, 65, 62, 68, 71, "]", "[", 60, 67, 64, 61, 65, 62, 69, "]", "[", 60, 61, 64, 62, 68, 69, 70, "]", "[", 61, 69, 66, 63, 70, 60, 71, "]", "[", 60, 67, 62, 61, 64, 69, 65, "]", "[", 61, 60, 65, 66, 64, 72, 69, "]", "[", 61, 72, 63, 71, 62, 60, 64, "]", "[", 61, 62, 66, 70, 69, 64, 72, "]", "[", 60, 63, 64, 65, 66, 67, 69, "]", "[", 60, 68, 61, 70, 64, 62, 72, "]", "[", 60, 61, 72, 71, 66, 67, 68, "]", "[", 60, 68, 70, 64, 61, 63, 62, "]", "[", 60, 63, 69, 71, 70, 62, 61, "]", "[", 60, 63, 70, 65, 68, 61, 72, "]", "[", 61, 60, 64, 68, 71, 63, 70, "]", "[", 60, 69, 70, 71, 64, 61, 72, "]", "[", 61, 70, 65, 72, 60, 69, 62, "]", "[", 61, 62, 69, 68, 60, 63, 66, "]", "[", 61, 60, 68, 66, 63, 69, 71, "]", "[", 61, 71, 60, 64, 68, 69, 72, "]", "[", 60, 65, 72, 71, 63, 67, 68, "]", "[", 60, 72, 70, 64, 68, 66, 62, "]", "[", 60, 64, 69, 62, 68, 63, 71, "]", "[", 61, 72, 70, 69, 66, 60, 63, "]", "[", 60, 67, 64, 62, 65, 61, 71, "]", "[", 61, 67, 70, 63, 68, 66, 72, "]", "[", 61, 66, 71, 72, 68, 70, 67, "]", "[", 61, 69, 60, 66, 64, 70, 71, "]", "[", 60, 70, 63, 64, 67, 71, 65, "]", "[", 61, 64, 62, 67, 60, 66, 65, "]", "[", 60, 67, 64, 70, 66, 69, 72, "]", "[", 60, 62, 61, 63, 71, 66, 65, "]", "[", 61, 69, 62, 66, 71, 67, 68, "]", "[", 61, 67, 70, 71, 68, 72, 60, "]", "[", 60, 64, 66, 71, 67, 63, 72, "]", "[", 60, 69, 65, 70, 62, 64, 66, "]", "[", 61, 68, 64, 62, 63, 71, 70, "]", "[", 61, 64, 66, 60, 71, 62, 72, "]", "[", 60, 63, 61, 67, 68, 71, 69, "]", "[", 61, 64, 72, 66, 62, 71, 68, "]", "[", 61, 70, 68, 72, 63, 65, 64, "]", "[", 60, 61, 63, 66, 65, 67, 69, "]", "[", 61, 72, 66, 63, 60, 64, 65, "]", "[", 60, 65, 68, 69, 66, 67, 70, "]", "[", 60, 69, 71, 62, 70, 61, 64, "]", "[", 60, 71, 67, 61, 66, 68, 72, "]", "[", 60, 71, 65, 63, 64, 67, 69, "]", "[", 60, 72, 66, 65, 68, 71, 61, "]", "[", 61, 72, 69, 64, 62, 66, 60, "]", "[", 61, 62, 69, 64, 67, 66, 71, "]", "[", 61, 65, 70, 67, 66, 68, 63, "]", "[", 61, 64, 62, 69, 66, 60, 70, "]", "[", 60, 62, 70, 72, 68, 65, 63, "]", "[", 60, 61, 72, 63, 64, 70, 65, "]", "[", 61, 60, 72, 68, 70, 62, 64, "]", "[", 61, 65, 67, 63, 72, 60, 62, "]", "[", 61, 62, 72, 65, 63, 66, 71, "]", "[", 61, 63, 64, 72, 65, 71, 60, "]", "[", 60, 64, 67, 65, 62, 68, 63, "]", "[", 60, 61, 69, 71, 66, 64, 63, "]", "[", 61, 68, 60, 63, 71, 64, 70, "]", "[", 61, 70, 63, 60, 64, 67, 66, "]", "[", 60, 64, 62, 63, 70, 65, 71, "]", "[", 60, 67, 61, 66, 69, 68, 65, "]", "[", 60, 69, 61, 70, 65, 67, 71, "]", "[", 61, 69, 70, 66, 72, 64, 62, "]", "[", 61, 68, 62, 60, 70, 63, 69, "]", "[", 60, 71, 64, 63, 61, 72, 67, "]", "[", 61, 72, 67, 69, 62, 60, 64, "]", "[", 60, 62, 70, 71, 68, 64, 66, "]", "[", 60, 67, 63, 68, 72, 62, 64, "]", "[", 60, 70, 62, 63, 68, 72, 64, "]", "[", 61, 64, 70, 71, 66, 60, 68, "]", "[", 60, 61, 71, 68, 63, 66, 69, "]", "[", 60, 70, 61, 67, 68, 65, 69, "]", "[", 61, 72, 68, 62, 66, 67, 70, "]", "[", 60, 66, 62, 70, 65, 61, 68, "]", "[", 60, 67, 69, 63, 62, 68, 70, "]", "[", 60, 72, 66, 65, 67, 70, 64, "]", "[", 61, 65, 63, 67, 68, 66, 70, "]", "[", 61, 69, 64, 62, 71, 63, 72, "]", "[", 61, 69, 71, 68, 63, 60, 67, "]", "[", 60, 64, 70, 69, 65, 63, 67, "]", "[", 61, 65, 60, 62, 63, 67, 66, "]", "[", 60, 64, 72, 67, 68, 71, 61, "]", "[", 61, 66, 67, 70, 69, 68, 65, "]", "[", 61, 65, 68, 67, 70, 66, 63, "]", "[", 61, 65, 62, 70, 72, 69, 66, "]", "[", 61, 62, 72, 65, 69, 71, 66, "]", "[", 60, 63, 72, 68, 64, 71, 67, "]", "[", 60, 61, 65, 71, 68, 62, 70, "]", "[", 61, 63, 72, 68, 65, 60, 70, "]", "[", 60, 68, 71, 72, 61, 64, 63, "]", "[", 60, 69, 64, 70, 61, 72, 71, "]", "[", 60, 68, 70, 69, 65, 62, 67, "]", "[", 60, 69, 70, 62, 65, 71, 64, "]", "[", 60, 70, 63, 65, 71, 67, 68, "]", "[", 61, 60, 62, 64, 69, 66, 70, "]", "[", 60, 66, 68, 70, 72, 71, 65, "]", "[", 60, 65, 71, 70, 64, 72, 61, "]", "[", 61, 69, 64, 67, 62, 70, 71, "]", "[", 61, 69, 63, 66, 62, 71, 70, "]", "[", 61, 67, 71, 60, 64, 62, 72, "]", "[", 60, 63, 72, 64, 70, 71, 69, "]", "[", 61, 68, 62, 65, 63, 70, 64, "]", "[", 60, 63, 61, 62, 72, 64, 71, "]", "[", 60, 64, 70, 72, 65, 69, 62, "]", "[", 61, 63, 66, 67, 69, 70, 72, "]", "[", 60, 72, 64, 71, 66, 69, 63, "]", "[", 60, 61, 69, 66, 62, 67, 70, "]", "[", 61, 70, 67, 71, 63, 60, 68, "]", "[", 60, 70, 68, 71, 72, 61, 64, "]", "[", 61, 63, 71, 72, 65, 67, 60, "]", "[", 60, 61, 65, 72, 64, 66, 63, "]", "[", 60, 71, 69, 72, 67, 62, 61, "]", "[", 60, 71, 68, 64, 61, 69, 65, "]", "[", 60, 70, 68, 69, 63, 71, 62, "]", "[", 60, 71, 66, 70, 68, 64, 63, "]", "[", 60, 72, 71, 62, 68, 69, 67, "]", "[", 61, 71, 66, 65, 60, 63, 69, "]", "[", 60, 65, 72, 64, 70, 63, 69, "]", "[", 61, 62, 63, 72, 66, 68, 69, "]", "[", 61, 68, 60, 72, 67, 69, 64, "]", "[", 60, 65, 64, 70, 61, 71, 69, "]", "[", 61, 60, 70, 65, 71, 67, 66, "]", "[", 60, 70, 71, 69, 62, 65, 63, "]", "[", 60, 63, 68, 69, 62, 66, 61, "]", "[", 60, 71, 61, 69, 67, 70, 68, "]", "[", 61, 68, 63, 65, 71, 67, 69, "]", "[", 61, 71, 72, 67, 70, 64, 63, "]", "[", 61, 67, 68, 71, 64, 69, 70, "]", "[", 60, 68, 61, 72, 66, 67, 71, "]", "[", 61, 72, 64, 65, 71, 62, 68, "]", "[", 61, 60, 64, 66, 68, 67, 69, "]", "[", 60, 61, 69, 64, 63, 67, 62, "]", "[", 61, 71, 62, 64, 65, 66, 68, "]", "[", 61, 66, 70, 65, 62, 64, 69, "]", "[", 61, 63, 72, 66, 64, 69, 67, "]", "[", 60, 65, 69, 63, 62, 67, 68, "]", "[", 60, 72, 67, 69, 68, 61, 64, "]", "[", 61, 64, 72, 62, 68, 69, 66, "]", "[", 61, 64, 71, 72, 62, 63, 65, "]", "[", 60, 65, 62, 61, 72, 64, 66, "]", "[", 61, 71, 62, 72, 64, 60, 65, "]", "[", 61, 65, 69, 66, 70, 67, 68, "]", "[", 61, 63, 68, 71, 64, 70, 62, "]", "[", 60, 63, 68, 72, 69, 61, 67, "]", "[", 61, 66, 62, 65, 63, 67, 71, "]", "[", 61, 67, 69, 72, 62, 60, 71, "]", "[", 61, 64, 62, 69, 63, 72, 65, "]", "[", 61, 62, 72, 70, 60, 68, 64, "]", "[", 60, 70, 71, 66, 67, 61, 64, "]", "[", 60, 71, 62, 66, 64, 63, 65, "]", "[", 60, 70, 72, 63, 65, 71, 66, "]", "[", 60, 69, 71, 68, 66, 64, 63, "]", "[", 60, 70, 64, 62, 63, 66, 67, "]", "[", 61, 60, 67, 63, 68, 64, 66, "]", "[", 60, 65, 64, 66, 68, 69, 61, "]", "[", 60, 71, 68, 66, 63, 64, 62, "]", "[", 60, 64, 62, 70, 71, 61, 66, "]", "[", 60, 61, 65, 70, 68, 63, 72, "]", "[", 61, 64, 71, 70, 60, 62, 69, "]", "[", 60, 68, 65, 64, 70, 67, 69, "]", "[", 61, 70, 71, 60, 72, 64, 65, "]", "[", 61, 63, 71, 62, 69, 68, 72, "]", "[", 61, 70, 62, 67, 63, 72, 65, "]", "[", 61, 60, 67, 63, 69, 71, 64, "]", "[", 60, 68, 67, 61, 70, 65, 69, "]", "[", 60, 70, 62, 67, 65, 71, 61, "]", "[", 60, 72, 67, 69, 63, 62, 68, "]", "[", 61, 65, 63, 68, 60, 71, 67, "]", "[", 60, 62, 67, 64, 68, 71, 65, "]", "[", 61, 63, 60, 67, 66, 65, 69, "]", "[", 60, 72, 63, 62, 70, 68, 66, "]", "[", 60, 62, 69, 63, 66, 71, 65, "]", "[", 61, 67, 63, 60, 70, 68, 71, "]", "[", 60, 64, 69, 71, 66, 62, 68, "]", "[", 60, 70, 72, 65, 63, 71, 64, "]", "[", 60, 65, 68, 63, 69, 66, 64, "]", "[", 61, 64, 72, 71, 67, 60, 63, "]", "[", 60, 64, 70, 66, 63, 67, 71, "]", "[", 61, 63, 66, 62, 70, 64, 69, "]", "[", 61, 71, 72, 66, 70, 68, 65, "]", "[", 60, 66, 61, 63, 71, 69, 72, "]", "[", 60, 66, 62, 70, 71, 68, 61, "]", "[", 61, 67, 60, 66, 71, 72, 65, "]", "[", 60, 72, 70, 67, 62, 65, 71, "]", "[", 60, 64, 72, 69, 61, 68, 70, "]", "[", 61, 71, 65, 64, 63, 60, 62, "]", "[", 61, 70, 71, 64, 66, 72, 62, "]", "[", 61, 62, 68, 72, 60, 67, 63, "]", "[", 61, 68, 67, 70, 72, 66, 64, "]", "[", 61, 66, 60, 72, 62, 69, 71, "]", "[", 60, 61, 68, 62, 65, 67, 71, "]", "[", 60, 70, 66, 61, 69, 68, 64, "]", "[", 61, 70, 66, 63, 65, 69, 68, "]", "[", 61, 72, 63, 64, 69, 60, 67, "]", "[", 61, 67, 71, 64, 68, 69, 63, "]", "[", 61, 62, 71, 63, 65, 60, 66, "]", "[", 61, 62, 71, 72, 64, 69, 70, "]", "[", 61, 71, 67, 68, 62, 69, 72, "]", "[", 61, 71, 70, 62, 64, 69, 66, "]", "[", 60, 70, 64, 69, 71, 66, 63, "]", "[", 61, 67, 60, 62, 65, 71, 72, "]", "[", 60, 66, 71, 65, 72, 67, 69, "]", "[", 60, 69, 66, 61, 65, 71, 63, "]", "[", 60, 63, 66, 61, 70, 65, 67, "]", "[", 61, 68, 67, 71, 72, 63, 69, "]", "[", 60, 68, 66, 70, 71, 69, 61, "]", "[", 60, 70, 68, 65, 67, 62, 69, "]", "[", 61, 67, 62, 70, 63, 69, 72, "]", "[", 61, 71, 60, 67, 68, 64, 62, "]", "[", 60, 72, 70, 67, 63, 66, 71, "]", "[", 61, 71, 72, 68, 67, 60, 69, "]", "[", 61, 69, 65, 68, 72, 60, 62, "]", "[", 60, 63, 70, 61, 65, 71, 62, "]", "[", 60, 65, 62, 67, 68, 66, 70, "]", "[", 61, 62, 72, 63, 60, 70, 67, "]", "[", 61, 65, 63, 71, 68, 66, 62, "]", "[", 60, 69, 68, 64, 66, 63, 72, "]", "[", 61, 63, 60, 71, 62, 67, 70, "]", "[", 61, 67, 65, 69, 66, 70, 60, "]", "[", 61, 67, 72, 60, 64, 63, 71, "]", "[", 60, 64, 63, 67, 71, 61, 72, "]", "[", 60, 68, 66, 72, 69, 67, 65, "]", "[", 60, 69, 71, 65, 72, 63, 61, "]", "[", 60, 70, 68, 64, 63, 61, 67, "]", "[", 60, 61, 63, 64, 69, 65, 72, "]", "[", 61, 69, 71, 72, 64, 67, 70, "]", "[", 61, 67, 72, 71, 60, 66, 62, "]", "[", 60, 65, 71, 63, 67, 72, 61, "]", "[", 61, 63, 67, 66, 65, 62, 60, "]", "[", 61, 64, 70, 66, 67, 60, 62, "]", "[", 61, 66, 71, 64, 72, 60, 69, "]", "[", 60, 69, 64, 66, 61, 71, 62, "]", "[", 60, 67, 65, 63, 70, 68, 69, "]", "[", 61, 69, 68, 66, 64, 60, 67, "]", "[", 61, 71, 67, 70, 60, 68, 63, "]", "[", 61, 67, 60, 68, 72, 63, 64, "]", "[", 61, 62, 66, 69, 70, 71, 60, "]", "[", 61, 72, 63, 62, 67, 70, 60, "]", "[", 60, 61, 69, 70, 71, 72, 62, "]", "[", 60, 71, 64, 72, 67, 68, 62, "]", "[", 61, 65, 71, 68, 66, 64, 72, "]", "[", 61, 72, 65, 64, 69, 67, 62, "]", "[", 61, 63, 62, 72, 69, 65, 70, "]", "[", 60, 61, 70, 71, 69, 66, 63, "]", "[", 61, 63, 62, 65, 72, 60, 64, "]", "[", 61, 64, 69, 72, 65, 66, 71, "]", "[", 60, 64, 65, 70, 71, 66, 62, "]", "[", 60, 68, 69, 65, 71, 66, 62, "]", "[", 61, 60, 66, 67, 69, 62, 70, "]", "[", 61, 64, 66, 72, 63, 70, 68, "]", "[", 61, 63, 67, 65, 64, 60, 71, "]", "[", 60, 70, 68, 65, 62, 72, 69, "]", "[", 61, 62, 70, 60, 72, 71, 68, "]", "[", 61, 69, 60, 64, 68, 70, 66, "]", "[", 60, 72, 61, 67, 62, 66, 71, "]", "[", 61, 66, 62, 60, 63, 70, 72, "]", "[", 61, 62, 69, 72, 70, 64, 67, "]", "[", 61, 72, 68, 63, 67, 71, 70, "]", "[", 61, 68, 63, 67, 62, 65, 70, "]", "[", 60, 70, 62, 72, 68, 61, 63, "]", "[", 61, 67, 70, 64, 63, 71, 66, "]", "[", 61, 64, 65, 68, 60, 67, 71, "]", "[", 60, 65, 70, 68, 64, 67, 71, "]", "[", 61, 66, 67, 63, 71, 69, 68, "]", "[", 60 ],
									"reg_data_0000000002" : [ 68, 67, 65, 71, 70, 66, "]", "[", 60, 67, 72, 71, 65, 61, 66, "]", "[", 61, 62, 68, 70, 65, 67, 71, "]", "[", 61, 63, 72, 66, 71, 60, 67, "]", "[", 60, 68, 61, 63, 72, 66, 65, "]", "[", 60, 69, 72, 67, 61, 71, 65, "]", "[", 60, 69, 72, 70, 63, 66, 71, "]", "[", 61, 70, 72, 66, 69, 63, 64, "]", "[", 61, 63, 64, 71, 66, 67, 72, "]", "[", 61, 62, 71, 70, 66, 72, 63, "]", "[", 61, 67, 70, 69, 64, 72, 68, "]", "[", 60, 64, 69, 63, 70, 66, 61, "]", "[", 61, 69, 65, 72, 67, 60, 68, "]", "[", 61, 64, 62, 63, 71, 65, 66, "]", "[", 60, 65, 70, 66, 71, 62, 67, "]", "[", 61, 63, 70, 69, 71, 66, 62, "]", "[", 60, 71, 70, 65, 68, 61, 64, "]", "[", 61, 66, 62, 68, 72, 70, 69, "]", "[", 61, 60, 70, 72, 71, 67, 64, "]", "[", 60, 72, 69, 64, 63, 62, 65, "]", "[", 60, 63, 69, 68, 64, 61, 72, "]", "[", 61, 63, 66, 72, 68, 69, 71, "]", "[", 60, 64, 69, 71, 65, 61, 63, "]", "[", 60, 65, 72, 70, 71, 63, 66, "]", "[", 61, 66, 68, 71, 69, 63, 62, "]", "[", 61, 67, 63, 60, 68, 69, 62, "]", "[", 60, 61, 64, 62, 68, 66, 65, "]", "[", 60, 70, 61, 71, 67, 62, 64, "]", "[", 60, 68, 72, 61, 65, 63, 64, "]", "[", 60, 67, 69, 64, 63, 71, 65, "]", "[", 61, 62, 66, 65, 72, 63, 69, "]", "[", 60, 65, 72, 68, 69, 66, 70, "]", "[", 61, 62, 67, 60, 68, 63, 69, "]", "[", 61, 66, 64, 71, 68, 63, 69, "]", "[", 60, 72, 70, 69, 65, 61, 63, "]", "[", 61, 72, 67, 65, 68, 69, 70, "]", "[", 61, 67, 62, 65, 71, 72, 64, "]", "[", 61, 72, 69, 62, 63, 65, 71, "]", "[", 60, 70, 68, 69, 72, 64, 65, "]", "[", 61, 71, 62, 70, 65, 72, 66, "]", "[", 60, 72, 61, 65, 67, 63, 71, "]", "[", 61, 68, 64, 69, 66, 71, 60, "]", "[", 60, 70, 71, 64, 61, 62, 67, "]", "[", 60, 70, 66, 67, 72, 63, 69, "]", "[", 61, 66, 68, 69, 72, 60, 71, "]", "[", 61, 63, 64, 68, 69, 70, 66, "]", "[", 61, 64, 68, 60, 69, 70, 65, "]", "[", 61, 66, 64, 72, 60, 70, 67, "]", "[", 61, 66, 64, 62, 71, 69, 70, "]", "[", 60, 65, 71, 69, 72, 61, 70, "]", "[", 61, 70, 62, 63, 69, 66, 71, "]", "[", 61, 65, 62, 67, 70, 71, 69, "]", "[", 61, 63, 71, 67, 72, 66, 64, "]", "[", 61, 69, 65, 63, 67, 70, 64, "]", "[", 60, 67, 71, 62, 70, 69, 63, "]", "[", 60, 64, 67, 71, 72, 70, 65, "]", "[", 61, 63, 71, 64, 72, 62, 70, "]", "[", 60, 66, 68, 63, 69, 64, 67, "]", "[", 60, 70, 63, 69, 64, 68, 72, "]", "[", 61, 69, 62, 68, 60, 63, 70, "]", "[", 60, 61, 68, 62, 70, 71, 69, "]", "[", 61, 71, 67, 60, 66, 62, 65, "]", "[", 60, 61, 68, 65, 62, 69, 71, "]", "[", 60, 68, 62, 65, 66, 72, 63, "]", "[", 60, 61, 67, 71, 72, 69, 68, "]", "[", 60, 63, 62, 72, 66, 65, 68, "]", "[", 60, 68, 64, 72, 67, 71, 66, "]", "[", 61, 68, 64, 69, 72, 70, 66, "]", "[", 60, 64, 61, 67, 70, 63, 62, "]", "[", 61, 66, 72, 70, 71, 68, 67, "]", "[", 61, 65, 63, 62, 71, 68, 69, "]", "[", 60, 67, 62, 68, 72, 63, 69, "]", "[", 61, 64, 66, 71, 68, 62, 67, "]", "[", 60, 62, 67, 63, 64, 72, 61, "]", "[", 60, 67, 62, 72, 65, 66, 71, "]", "[", 61, 62, 67, 63, 64, 72, 71, "]", "[", 60, 70, 67, 61, 72, 68, 65, "]", "[", 61, 72, 64, 66, 63, 70, 60, "]", "[", 60, 66, 61, 70, 71, 69, 65, "]", "[", 60, 71, 65, 69, 67, 68, 66, "]", "[", 60, 72, 61, 71, 64, 62, 66, "]", "[", 60, 65, 66, 64, 62, 61, 72, "]", "[", 60, 68, 72, 61, 67, 71, 69, "]", "[", 60, 61, 65, 64, 62, 70, 66, "]", "[", 61, 68, 63, 60, 67, 62, 72, "]", "[", 61, 68, 72, 62, 70, 63, 60, "]", "[", 60, 71, 68, 61, 69, 62, 65, "]", "[", 60, 62, 65, 70, 67, 71, 72, "]", "[", 60, 65, 70, 64, 69, 68, 67, "]", "[", 61, 69, 68, 66, 67, 63, 71, "]" ],
									"reg_data_count" : [ 3 ],
									"saved_object_attributes" : 									{
										"embed" : 1,
										"versionnumber" : 80103
									}
,
									"text" : "bach.reg @embed 1",
									"textcolor" : [ 0.968627450980392, 0.968627450980392, 0.968627450980392, 0.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontface" : 3,
									"fontsize" : 20.4648056791887,
									"id" : "obj-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 278.0, 435.500000000000057, 301.0, 29.0 ],
									"text" : "invisible bach.reg here !!!",
									"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.934066654505603,
									"id" : "obj-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 69.5, 35.0, 172.0, 21.0 ],
									"presentation" : 1,
									"presentation_rect" : [ 52.0, 99.599999999999994, 43.0, 21.0 ],
									"text" : "Lock?"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 6,
									"outlettype" : [ "signal", "bang", "int", "float", "", "list" ],
									"patching_rect" : [ 63.5, 145.0, 235.5, 22.0 ],
									"text" : "typeroute~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 23.299999999999955, 267.0, 70.0, 22.0 ],
									"text" : "loadmess 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 176.299999999999955, 337.0, 29.5, 22.0 ],
									"text" : "!- 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 176.299999999999955, 370.0, 120.0, 22.0 ],
									"text" : "gate 1 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "Bang data out or, if moz.safe is unlocked, replace its memory content (like a bach.reg). A state 0 / 1 message will toggle the state (locked or unlocked) of the module. ",
									"id" : "obj-52",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 63.50001199999997, 59.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "Data out",
									"id" : "obj-53",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 104.299999999999955, 541.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 1 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"order" : 0,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 3,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"order" : 5,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"order" : 6,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"order" : 1,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"order" : 2,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"order" : 4,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"order" : 8,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"order" : 7,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-27", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"order" : 0,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"order" : 1,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"order" : 6,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"order" : 7,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"order" : 4,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"order" : 5,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"order" : 2,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"order" : 3,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"order" : 0,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"order" : 1,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 1 ],
									"source" : [ "obj-29", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-29", 0 ]
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
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-33", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"order" : 1,
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"order" : 0,
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"order" : 0,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"order" : 1,
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"order" : 1,
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"midpoints" : [ 185.799999999999955, 364.0, 703.799999999999955, 364.0 ],
									"order" : 0,
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-44", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"midpoints" : [ 246.199999999999989, 260.0, 241.5, 260.0 ],
									"source" : [ "obj-44", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"midpoints" : [ 202.900000000000006, 260.0, 241.5, 260.0 ],
									"source" : [ "obj-44", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"midpoints" : [ 159.599999999999994, 260.0, 241.5, 260.0 ],
									"source" : [ "obj-44", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-44", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-47", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 1 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"order" : 0,
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"order" : 2,
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"order" : 1,
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"order" : 3,
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 1 ],
									"source" : [ "obj-56", 0 ]
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
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-62", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 1 ],
									"source" : [ "obj-62", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"source" : [ "obj-66", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"source" : [ "obj-7", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"source" : [ "obj-72", 0 ]
								}

							}
 ],
						"boxgroups" : [ 							{
								"boxes" : [ "obj-70", "obj-46" ]
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
					"patching_rect" : [ 13.0, 100.0, 55.0, 55.0 ],
					"varname" : "bp687778364745",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 3,
							"revision" : 1,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 79.0, 909.0, 787.0 ],
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
									"id" : "obj-42",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 399.0, 142.702096939086914, 107.0, 20.0 ],
									"text" : "iterated <--- model"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 175.0, 444.0, 243.0, 20.0 ],
									"text" : "Be aware this takes a little time to evaluate !"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 95.0, 449.0, 50.0, 35.0 ],
									"text" : "bach.llll 169628"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 91.0, 382.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 23.0, 413.0, 80.0, 22.0 ],
									"text" : "lisp.quickeval"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 23.0, 473.0, 64.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80105
									}
,
									"text" : "bach.flat 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"linecount" : 7,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 179.233381450176239, 187.0, 280.0, 100.0 ],
									"text" : "This allows to repeat the chainedPMC execution \nwith always a different random seed.\n\nWhy? When using the solutions n message of chainedPMC, even with rdn? set to 1, you will always get solutions that start from the same \"zone\" of research (which is indeed random)."
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 15.492025695571929,
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 179.233381450176239, 324.145199208724762, 149.0, 26.0 ],
									"reg_data_0000000000" : [ "[", "omcs::pmc", "[", "quote", "[", "[", 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, "]", "[", 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, "]", "[", 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, "]", "[", 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, "]", "[", 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, "]", "[", 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, "]", "[", 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, "]", "]", "]", "[", "pw::backquote", "[", "pw::%@", "[", "jbs-constraints::collect-true/false-rules", "[", "jbs-constraints::no-repetition-rule", ":true/false", 1, "]", "[", "jbs-constraints::index-rule", "[", "quote", "i1", "]", "[", "quote", "[", 60, 61, "]", "]", ":true/false", 1, "]", "]", "]", "]", ":heuristic-rules", "[", "]", ":rnd?", "t", ":sols-mode", 1, "]" ],
									"reg_data_count" : [ 1 ],
									"saved_object_attributes" : 									{
										"embed" : 1,
										"versionnumber" : 80105
									}
,
									"text" : "bach.reg @embed 1",
									"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 515.0, 715.274971963428925, 135.0, 22.0 ],
									"text" : "61 67 72 63 68 60 70"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 515.0, 9.274971963428925, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 15.492025695571929,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 657.875, 672.724124505801683, 149.0, 26.0 ],
									"reg_data_0000000000" : [ "[", "omcs::pmc", "[", "quote", "[", "[", 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, "]", "[", 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, "]", "[", 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, "]", "[", 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, "]", "[", 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, "]", "[", 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, "]", "[", 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, "]", "]", "]", "[", "pw::backquote", "[", "pw::%@", "[", "jbs-constraints::collect-true/false-rules", "[", "jbs-constraints::no-repetition-rule", ":true/false", 1, "]", "[", "jbs-constraints::index-rule", "[", "quote", "i1", "]", "[", "quote", "[", 60, 61, "]", "]", ":true/false", 1, "]", "]", "]", "]", ":heuristic-rules", "[", "]", ":rnd?", "t", ":sols-mode", 1, "]" ],
									"reg_data_count" : [ 1 ],
									"saved_object_attributes" : 									{
										"embed" : 1,
										"versionnumber" : 80105
									}
,
									"text" : "bach.reg @embed 1",
									"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-109",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 23.0, 250.0, 29.5, 22.0 ],
									"text" : "j"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-110",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 23.0, 334.274971963428925, 63.0, 22.0 ],
									"text" : "lisp.iterate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-112",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 179.233381450176239, 365.274971844219635, 97.0, 22.0 ],
									"text" : "lisp.expr collect l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-113",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 23.0, 285.145199208724762, 122.0, 22.0 ],
									"text" : "lisp.for-fromto 1 1000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 731.0, 582.274971963428925, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 641.0, 299.274971963428925, 47.0, 22.0 ],
									"text" : "(60 61)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 546.625, 269.274971963428925, 77.0, 22.0 ],
									"text" : "loadmess 20"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 546.625, 299.274971963428925, 29.5, 22.0 ],
									"text" : "t b i"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-6",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "pmc.jbs_rules.maxpat",
									"numinlets" : 9,
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 515.0, 334.0, 356.0, 203.0 ],
									"varname" : "pmc_jbs_rules[1]",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 554.0, 169.274971963428925, 117.0, 22.0 ],
									"text" : "loadmess collapse 1"
								}

							}
, 							{
								"box" : 								{
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
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 515.0, 207.0, 356.0, 54.0 ],
									"varname" : "pmc_jbs_rules[3]",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 588.0, 71.274971963428925, 89.0, 22.0 ],
									"text" : "loadmess set 7"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 515.0, 672.724124505801683, 103.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80105
									}
,
									"text" : "bach.flat 2 @out t"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-13",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "pmc.domain.maxpat",
									"numinlets" : 2,
									"numoutlets" : 1,
									"offset" : [ -65.0, -114.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 515.0, 104.977068902515839, 107.0, 47.0 ],
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
									"id" : "obj-18",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "pmc.engine.maxpat",
									"numinlets" : 2,
									"numoutlets" : 2,
									"offset" : [ -2.0, -4.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 515.0, 596.224124505801683, 161.875, 60.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 515.0, 37.274971963428925, 131.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80105
									}
,
									"text" : "bach.arithmser 60 72 1"
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
									"patching_rect" : [ 23.0, 4.99999959136963, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 23.0, 748.1010445913696, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 1 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"source" : [ "obj-109", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-110", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-110", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-110", 1 ],
									"source" : [ "obj-112", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-110", 0 ],
									"source" : [ "obj-113", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 3 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 1 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 1 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-18", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-109", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-112", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"order" : 1,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 1 ],
									"order" : 0,
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 1 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"source" : [ "obj-9", 1 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 13.0, 68.803145000000001, 52.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p LISTS"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 101.0, 126.702096939086914, 89.0, 22.0 ],
					"text" : "loadmess set 4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 132.0, 213.923728593220346, 68.0, 22.0 ],
					"text" : "key_trigger"
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
					"name" : "pmc.domain.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ -65.0, -114.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 13.0, 157.702096939086914, 107.0, 47.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-18",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "pmc.engine.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : [ -2.0, -4.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 13.0, 258.949152542372758, 161.875, 60.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-1",
					"linecount" : 23,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 293.0, 74.423728593220346, 545.0, 301.0 ],
					"text" : "CHAIN-COMMON-ELEMENT-LISTS-RULE [1] looks for solutions of lists of lists in which the end of a sub-list in equal to the beginning of the following list.\n\nFirst, open the abstraction [2] called in this patch 'LISTS'. Can you understand it or no? If not, please go back to the tutorials 1.01 and re-do them again. \nIn any case this abstractions asks for an arbitrary number of solutions (defined in with the PWGL-REPEAT [3]) in which the first element has to be either 60 or 61, without any repetitions, and the length of each solution is 7.\n\nIn [a] you set HOW MANY LAST elements of a sub-list have to be included in the HOW MANY FIRST elements of the following one. \n \nIn this case I put 2. That means that the 2 last elements of the first sub-group list have to be equal with the 2 first elements of the second sub-list; then the 2 last elements of the second sub-list have to be equal to the 2 last elements of the third list, and so on.\n\nIf you evaluate the CHORD-EDITOR [5], you can see each sub list (one by one) throughout the CHORD-EDITOR option using your up and down keyboard shortcuts. \n\nIf you evaluate the CHORD-EDITOR [6] you can see all the solutions in one piece.\n\nATTENTION : IN THE HEURISTIC MODE IT DOES NOT WORK. WHY???"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Menlo Regular",
					"fontsize" : 31.556111999999999,
					"id" : "obj-35",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 4.423917060628419, 2.202096939086914, 597.0, 43.0 ],
					"text" : "Chain-common-element-lists rule"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"midpoints" : [ 22.5, 353.5, 182.5, 353.5 ],
					"order" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"order" : 1,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"hidden" : 1,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-13", 0 ]
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
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"hidden" : 1,
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-21", 0 ]
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
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"midpoints" : [ 141.5, 252.474576271186379, 22.5, 252.474576271186379 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"hidden" : 1,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-19::obj-23" : [ "vst~[6]", "vst~[1]", 0 ],
			"obj-5::obj-6::obj-184::obj-120" : [ "textedit[5]", "textedit", 0 ],
			"obj-5::obj-6::obj-188::obj-120" : [ "textedit[1]", "textedit", 0 ],
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
				"name" : "Pianoteq 5.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../../../../../Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "bach.append.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.approx.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../bach/patchers",
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
				"patcherrelativepath" : "../../../../../../bach/patchers",
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
				"patcherrelativepath" : "../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
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
				"name" : "bach.gcd.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
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
				"patcherrelativepath" : "../../../../../../bach/patchers",
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
				"patcherrelativepath" : "../../../../../../bach/patchers",
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
				"patcherrelativepath" : "../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.prepend.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../bach/patchers",
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
				"patcherrelativepath" : "../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.rminus.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../bach/patchers",
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
				"patcherrelativepath" : "../../../../../../bach/patchers",
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
				"patcherrelativepath" : "../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.sum.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
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
				"name" : "erase.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../../../media",
				"type" : "PNG",
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
				"name" : "jbs_block_list.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_pmc",
				"patcherrelativepath" : "../../../../../patchers/pw4m_pmc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jbs_block_null.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_pmc",
				"patcherrelativepath" : "../../../../../patchers/pw4m_pmc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jbs_block_num.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_pmc",
				"patcherrelativepath" : "../../../../../patchers/pw4m_pmc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "key_trigger.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.backquote.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../../../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.docstring.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../../../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
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
				"name" : "lisp.for-fromto.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../../../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.iterate.maxpat",
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
				"name" : "moz.chord_view.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/moz_modules",
				"patcherrelativepath" : "../../../../../patchers/moz_modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.ezmidi_instr.maxpat",
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
				"name" : "moz.midi_ez-anything.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.midi_meter.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.nth.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/moz_modules",
				"patcherrelativepath" : "../../../../../patchers/moz_modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.play_hover_title.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.reconstruct-lllls-from-print.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.sendto_ezmidi_instr.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.textfield.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "open-doc-double.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "pmc.domain.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_pmc",
				"patcherrelativepath" : "../../../../../patchers/pw4m_pmc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pmc.engine.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_pmc",
				"patcherrelativepath" : "../../../../../patchers/pw4m_pmc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pmc.jbs_rules.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_pmc",
				"patcherrelativepath" : "../../../../../patchers/pw4m_pmc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pmcyes.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "pw.backquote.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_code_generators_legacy",
				"patcherrelativepath" : "../../../../../patchers/pw4m_lisp_code_generators_legacy",
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
				"name" : "pw.quote.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_code_generators_legacy",
				"patcherrelativepath" : "../../../../../patchers/pw4m_lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "refresh_vst.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "rule_number_splitter.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_pmc",
				"patcherrelativepath" : "../../../../../patchers/pw4m_pmc",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "safe-key.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "save-double.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "sendback-selec.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "sendback.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../../../media",
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
