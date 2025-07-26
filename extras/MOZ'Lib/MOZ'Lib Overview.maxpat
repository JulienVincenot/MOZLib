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
		"rect" : [ 34.0, 79.0, 1270.0, 660.0 ],
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
		"enablehscroll" : 0,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"title" : "MOZ'Lib Overview",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-103",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 625.0, 271.5, 119.0, 22.0 ],
					"text" : "metro 300 @active 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 625.0, 296.5, 90.0, 22.0 ],
					"text" : "window getsize"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
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
						"rect" : [ 913.0, -785.0, 640.0, 480.0 ],
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
									"id" : "obj-16",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 323.0, 298.0, 108.0, 22.0 ],
									"text" : "306 577 29 161"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 463.0, 203.0, 92.0, 35.0 ],
									"text" : "340 656 1333 900"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 344.0, 171.0, 92.0, 22.0 ],
									"text" : "34 79 1304 739"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 389.0, 242.0, 100.0, 22.0 ],
									"text" : "bach.!- @out m"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"linecount" : 2,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 457.0, 162.0, 135.0, 33.0 ],
									"text" : "actually floating window\nis at 340 656 1333 900"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 127.0, 246.0, 185.0, 22.0 ],
									"text" : "s main_coord_update_float_wind"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 50.0, 106.0, 326.0, 21.0 ],
									"text" : "route flags size title notitle"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 78.0, 79.0, 21.0 ],
									"text" : "route window"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-34",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 1 ],
									"source" : [ "obj-10", 0 ]
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
									"destination" : [ "obj-10", 1 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-27", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 270.25, 363.0, 222.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p update_floating_windows_coordinates"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 476.0, 271.5, 147.0, 22.0 ],
					"text" : "r back_to_overview_focus"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 476.0, 299.5, 33.0, 22.0 ],
					"text" : "front"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-12",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 334.0, 65.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 315.0, 66.0, 945.69188312195115, 5.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 8.0,
					"hidden" : 1,
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 427.0, 274.0, 41.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1038.0, 19.702096939086914, 39.0, 17.0 ],
					"text" : "onecopy"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1251.5, 306.5, 301.0, 22.0 ],
					"text" : "\"~/Documents/Max 8/Packages/MOZLib/help/Tutorials\""
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 1251.5, 336.0, 140.0, 23.0 ],
					"text" : "conformpath max boot"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 222.0, 529.0, 77.0, 22.0 ],
					"text" : "bach.change"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-107",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
						"rect" : [ 34.0, 79.0, 655.0, 674.0 ],
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
									"id" : "obj-32",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 427.0, 381.5, 70.0, 47.0 ],
									"text" : "keep\nmaxhelp\nextension..."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 94.5, 418.0, 29.5, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 207.5, 483.0, 159.5, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 105.0, 516.0, 29.5, 22.0 ],
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 105.0, 549.0, 262.0, 22.0 ],
									"text" : "switch"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 105.0, 483.0, 29.5, 22.0 ],
									"text" : "&&"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 508.0, 394.0, 29.0, 22.0 ],
									"text" : "thru"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 556.5, 349.850781381130219, 29.5, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 508.25, 349.850781381130219, 29.5, 22.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 411.75, 310.999188381130239, 212.0, 23.0 ],
									"text" : "regexp .+\\\\.(?i:maxhelp?|maxhelp?)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 94.5, 390.0, 29.0, 22.0 ],
									"text" : "thru"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-110",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 27.0, 167.618215047350077, 55.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"versionnumber" : 80300
									}
,
									"text" : "bach.reg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-167",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 27.0, 119.509765625, 133.0, 35.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.mapelem @maxdepth 1 @out nt"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-166",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 185.0, 126.009765625, 55.0, 22.0 ],
									"text" : "strippath"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-79",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 27.0, 88.0, 57.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.thin"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 27.0, 58.0, 201.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.join"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-104",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 26.999969500000134, 12.999979746139502, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-105",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 208.999969500000134, 12.999979746139502, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-106",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 26.999969500000134, 621.850809746139475, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 27.0, 583.850781381130219, 175.5, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.collect"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 207.5, 450.0, 67.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 134.0, 262.850781381130219, 83.0, 22.0 ],
									"text" : "t l l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 306.0, 349.850781381130219, 29.5, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 259.25, 349.850781381130219, 29.5, 22.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 133.5, 231.850781381130219, 93.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.iter @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 27.0, 201.850781381130219, 125.5, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 165.75, 310.999188381130239, 206.0, 23.0 ],
									"text" : "regexp .+\\\\.(?i:maxpat?|maxhelp?)"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-112",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 207.5, 516.0, 96.0, 22.0 ],
									"text" : "regexp (.+)\\\\..+$"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"source" : [ "obj-104", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 1 ],
									"source" : [ "obj-105", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-110", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 1 ],
									"source" : [ "obj-112", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-12", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-12", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-14", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-14", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-167", 1 ],
									"source" : [ "obj-166", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-110", 0 ],
									"source" : [ "obj-167", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-166", 0 ],
									"source" : [ "obj-167", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 1 ],
									"midpoints" : [ 517.5, 476.0, 125.0, 476.0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 1 ],
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
									"destination" : [ "obj-112", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 2 ],
									"source" : [ "obj-27", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-29", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"midpoints" : [ 104.0, 444.5, 217.0, 444.5 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"midpoints" : [ 268.75, 380.425390690565109, 104.0, 380.425390690565109 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"midpoints" : [ 315.5, 380.425390690565109, 104.0, 380.425390690565109 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-7", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"midpoints" : [ 207.5, 296.0, 421.25, 296.0 ],
									"source" : [ "obj-7", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 1 ],
									"midpoints" : [ 143.5, 429.0, 265.0, 429.0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-167", 0 ],
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"source" : [ "obj-82", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1177.385528499999964, 602.333333253860474, 201.0, 49.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p get_file_names_remdup+keep_only_maxpat-help+remove_extension"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-102",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1396.385528499999964, 198.202096939086914, 67.0, 22.0 ],
					"text" : "delay 2500"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1522.885528499999964, 200.5, 32.0, 22.0 ],
					"text" : "print"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-70",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1246.57600432149502, 198.202096939086914, 54.0, 22.0 ],
					"text" : "delay 50"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 995.885528499999964, 28.0, 29.0, 22.0 ],
					"text" : "thru"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 1177.385528499999964, 698.0, 110.999999500000058, 22.0 ],
					"text" : "t l b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1269.385528000000022, 761.0, 29.0, 22.0 ],
					"text" : "thru"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-131",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1269.385528000000022, 726.0, 55.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"versionnumber" : 80300
					}
,
					"text" : "bach.reg"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
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
						"rect" : [ 642.0, 80.0, 1212.0, 787.0 ],
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
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 34.0, 1131.375, 95.0, 22.0 ],
									"text" : "bach.replace nil"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-64",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 888.0, 1167.25, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 805.0, 1018.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.length"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 774.0, 969.375, 714.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.collect"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 207.0, 707.0, 111.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.keys filename"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 207.0, 778.375, 466.0, 22.0 ],
									"text" : "bach.belong"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 20.447866582516895,
									"id" : "obj-33",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 260.5, 804.375, 137.0, 29.0 ],
									"text" : "long list 0 or 1"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 19.248794679747455,
									"id" : "obj-28",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 921.5, 490.375, 47.0, 28.0 ],
									"text" : "TAG"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 18.184899170162801,
									"id" : "obj-25",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 82.5, 185.836538461538453, 82.5, 27.0 ],
									"text" : "TREE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 174.5, 864.375, 29.5, 22.0 ],
									"text" : "> 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 34.0, 1097.375, 95.0, 22.0 ],
									"text" : "bach.replace nil"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 34.0, 1063.375, 95.0, 22.0 ],
									"text" : "bach.replace nil"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 34.0, 1025.375, 95.0, 22.0 ],
									"text" : "bach.replace nil"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 105.5, 399.375, 55.5, 22.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 174.5, 909.375, 88.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 141.5, 522.375, 167.5, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 174.5, 832.375, 101.0, 22.0 ],
									"text" : "bach.sum @out t"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 207.0, 648.375, 78.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.slice -1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 174.5, 804.375, 84.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.collect"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 207.0, 678.375, 102.0, 22.0 ],
									"text" : "bach.lookup"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 207.0, 621.375, 200.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.iter @maxdepth 1 @unwrap 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 174.5, 587.375, 51.5, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 141.5, 553.375, 106.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.find filename"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 141.5, 459.375, 78.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.slice -1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 141.5, 490.375, 196.0, 22.0 ],
									"text" : "bach.lookup"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 141.5, 430.375, 273.0, 22.0 ],
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
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 793.5, 835.375, 237.0, 22.0 ],
									"text" : "bach.belong"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 780.0, 751.375, 32.5, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 765.0, 909.375, 34.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 793.5, 786.375, 111.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.keys filename"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 34.0, 189.375, 46.5, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 34.0, 975.375, 714.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.collect"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 105.5, 366.375, 689.5, 22.0 ],
									"text" : "gate 2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 105.5, 336.375, 109.0, 22.0 ],
									"text" : "expr ($i1 == 3) + 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 105.5, 309.375, 70.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.depth"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 61.5, 267.375, 63.0, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 34.0, 145.25, 258.0, 22.0 ],
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
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 34.0, 105.875, 870.5, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 61.5, 237.375, 686.5, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.iter @maxdepth -3"
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
									"patching_rect" : [ 318.5, 19.5, 25.0, 25.0 ],
									"varname" : "u242007684"
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
									"patching_rect" : [ 34.0, 19.5, 25.0, 25.0 ],
									"varname" : "u311007683"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-22",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 34.0, 1176.25, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-10", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-16", 1 ]
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
									"order" : 1,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-18", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"order" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 1 ],
									"order" : 1,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 1 ],
									"order" : 0,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 1 ],
									"order" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 1 ],
									"order" : 1,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 1 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 1 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 1 ],
									"midpoints" : [ 115.0, 896.0, 253.0, 896.0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-35", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-36", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 1 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"midpoints" : [ 803.0, 890.875, 774.5, 890.875 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 1 ],
									"source" : [ "obj-48", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-49", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 2 ],
									"source" : [ "obj-6", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 1 ],
									"source" : [ "obj-6", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.028281, 0.0, 0.9 ],
									"destination" : [ "obj-30", 1 ],
									"midpoints" : [ 895.0, 539.0, 440.0, 539.0 ],
									"order" : 1,
									"source" : [ "obj-7", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.028281, 0.0, 0.9 ],
									"destination" : [ "obj-40", 1 ],
									"midpoints" : [ 895.0, 417.625, 912.0, 417.625 ],
									"order" : 0,
									"source" : [ "obj-7", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-9", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 1 ],
									"midpoints" : [ 71.0, 297.0, 785.5, 297.0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1177.385528000000022, 789.0, 111.0, 23.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p filter_from_tags"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-215",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1292.385528499999964, 154.202096939086914, 31.0, 22.0 ],
					"text" : "stop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-213",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1321.385528499999964, 198.202096939086914, 67.0, 22.0 ],
					"text" : "delay 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-205",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 953.0, 112.0, 22.0, 22.0 ],
					"text" : "t b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-172",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
									"id" : "obj-158",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 365.0, 99.0, 29.5, 22.0 ],
									"text" : "!- 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-154",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 365.385528499999964, 236.0, 171.0, 22.0 ],
									"text" : "textcolor 0.463 0.459 0.459 $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-150",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 238.5, 269.0, 72.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-149",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 64.5, 225.0, 81.0, 22.0 ],
									"text" : "1 result found"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-147",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 166.5, 150.0, 29.5, 22.0 ],
									"text" : "int"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-146",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 50.0, 143.0, 44.0, 22.0 ],
									"text" : "sel 1 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-142",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 55.5, 116.0, 33.0, 22.0 ],
									"text" : "== 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-139",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 131.385528499999964, 180.509765625, 137.0, 22.0 ],
									"text" : "sprintf %ld results found"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-169",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 145.5, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-170",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 365.385498000000098, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-171",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 295.942749000000049, 351.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-150", 0 ],
									"source" : [ "obj-139", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-146", 0 ],
									"source" : [ "obj-142", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-147", 0 ],
									"source" : [ "obj-146", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-149", 0 ],
									"source" : [ "obj-146", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-139", 0 ],
									"source" : [ "obj-147", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-150", 0 ],
									"source" : [ "obj-149", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-171", 0 ],
									"source" : [ "obj-150", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-171", 0 ],
									"source" : [ "obj-154", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-154", 0 ],
									"source" : [ "obj-158", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-142", 0 ],
									"order" : 1,
									"source" : [ "obj-169", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-147", 1 ],
									"order" : 0,
									"source" : [ "obj-169", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-158", 0 ],
									"source" : [ "obj-170", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1273.0, 814.0, 180.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p how-many-results"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-155",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 995.885528499999964, 142.0, 29.0, 22.0 ],
					"text" : "thru"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-151",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1273.0, 841.0, 147.228942999999987, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 174.0, 64.0, 108.04925537109375, 21.0 ],
					"text" : "2 results found",
					"textcolor" : [ 0.463, 0.459, 0.459, 0.0 ],
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-133",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 1079.385528499999964, 308.5, 29.5, 22.0 ],
					"text" : "t l b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-128",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 6,
					"outlettype" : [ "signal", "bang", "int", "float", "", "list" ],
					"patching_rect" : [ 1026.885528499999964, 280.5, 71.5, 22.0 ],
					"text" : "typeroute~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-124",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "bang" ],
					"patching_rect" : [ 1155.885528499999964, 223.0, 42.0, 22.0 ],
					"text" : "t b b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-119",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1026.885528499999964, 250.0, 59.0, 22.0 ],
					"text" : "route text"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-118",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1027.385528499999964, 112.0, 29.5, 22.0 ],
					"text" : "0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-116",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 995.885528499999964, 112.0, 29.5, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-114",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1047.75, 28.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-113",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1292.385528499999964, 76.0, 171.0, 22.0 ],
					"text" : "textcolor 0.463 0.459 0.459 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-109",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1088.75, 115.5, 29.5, 22.0 ],
					"text" : "set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1086.885528499999964, 440.0, 201.614471500000036, 22.0 ],
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-83",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1178.0, 306.5, 37.0, 22.0 ],
					"text" : "pizza"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-84",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1178.0, 336.5, 53.0, 22.0 ],
					"text" : "lisp.expr"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-85",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1139.0, 306.5, 29.5, 22.0 ],
					"text" : "toto"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1251.5, 277.0999955534935, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1114.0, 394.0, 156.5, 22.0 ],
					"text" : "join"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1251.5, 368.0, 57.0, 22.0 ],
					"text" : "tosymbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1114.0, 368.0, 57.0, 22.0 ],
					"text" : "tosymbol"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-90",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1139.0, 336.5, 35.0, 22.0 ],
					"text" : "trace"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1359.385528499999964, 569.333333253860474, 72.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80300
					}
,
					"text" : "bach.collect"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1269.385528499999964, 533.333333253860474, 57.0, 22.0 ],
					"text" : "tosymbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1269.5, 465.333333253860474, 125.0, 22.0 ],
					"text" : "pkill, grep -i -l -r $1 $2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 1269.385528499999964, 505.333333253860474, 109.0, 22.0 ],
					"saved_object_attributes" : 					{
						"forkmode" : 1,
						"shell" : "(default)"
					}
,
					"text" : "shell @forkmode 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1087.385528499999964, 533.333333253860474, 57.0, 22.0 ],
					"text" : "tosymbol"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1177.385528499999964, 569.333333253860474, 72.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80300
					}
,
					"text" : "bach.collect"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-97",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1087.0, 465.333333253860474, 144.0, 22.0 ],
					"text" : "pkill, mdfind $1 -onlyin $2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 1087.385528499999964, 505.333333253860474, 109.0, 22.0 ],
					"saved_object_attributes" : 					{
						"forkmode" : 1,
						"shell" : "(default)"
					}
,
					"text" : "shell @forkmode 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 266.4375, 472.0, 116.125, 22.0 ],
					"text" : "t b b l"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
					"bgoncolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
					"id" : "obj-41",
					"legacytextcolor" : 1,
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"outputmode" : 0,
					"parameter_enable" : 0,
					"patching_rect" : [ 1167.656207999999879, 28.0, 47.343792000000121, 26.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 280.4296875, 65.0, 17.687583923339844, 18.886842727661133 ],
					"textcolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
					"textoncolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
					"textovercolor" : [ 0.698039, 0.698039, 0.698039, 0.0 ],
					"usebgoncolor" : 1,
					"usetextovercolor" : 1
				}

			}
, 			{
				"box" : 				{
					"data" : [ 334, "", "IBkSG0fBZn....PCIgDQRA...z....PCHX....fbqSNe....DLmPIQEBHf.B7g.YHB..ATPRDEDUnDYiR1qhCCCDD9yhC0JPBWJCpV3zZxyeJxCfw0KXW5HAtUMNEIwXcv8yzM6NCLiz1ruuuyajRIDQHmyTJEzZMVqkPHfy49Hil8WfwwQlmm4mf264xkKzzzfB3OM.vxxBiii.fJkRUFZaaqDelOOOSJkPIhTIXXXfXLB.wXjgggJihH7UNmOFrtthHBgP.q0hwXPDg000CM4bFUoTphyzzDaaaXLF111XZZpZeoTPo05pgwX7vfwXNh5Gn0ZTVqspSgP.QDtc61QTO2Iq0RyiGO1ue+dkwyc367qWuhx4bz00U8XbFm4ccc3btWet88838d9M38d566AdeF8Yw+816IvJO7nFlSJCY.....PRE4DQtJDXBB" ],
					"embed" : 1,
					"id" : "obj-45",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 1185.291736499999843, 32.5, 18.0, 17.0 ],
					"pic" : "Macintosh HD:/Users/danieleghisi/Documents/bach_STUFF/Screen shot 2013-06-16 at 19.13.11.png",
					"presentation" : 1,
					"presentation_rect" : [ 280.4296875, 68.0, 18.0, 17.0 ]
				}

			}
, 			{
				"box" : 				{
					"data" : [ 349, "", "IBkSG0fBZn....PCIgDQRA...z....PCHX....fbqSNe....DLmPIQEBHf.B7g.YHB..APQRDEDUnDYiQ9iiBBDGE9CWnwDN.1PFS3.XoPrh+bCfShb.1CfWC5lKfgBZsxPgG.nxNRLV.c+1JvL3lc8U9l7Mu48FKQDAfllFpppnqqCQDTJEooora2NVJKQDQq0TUU81g.jllRVVlgm8TB111jkkw986AfKWtvzk466aj3W999e222SddNQQQ333fiiCa2tk0qWysa23wiGDFFNCspssE.BBBd6oMkZWWmg+pesHKKtkkIjRol6vRM4444YBEGGC.Zsl55ZFFFXXXf55ZzZMhHb3vAyj+uIGfMa1vwiGw008ED75ycZXTJEIIITVVxymOM.mg9KUTTX.9Qq2oSmv00k62uy0qWA4C033nb97YQDQ9APDlNaYTRQvwC....PRE4DQtJDXBB" ],
					"embed" : 1,
					"id" : "obj-43",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 1291.146316321495306, 37.5, 17.0, 15.0 ],
					"pic" : "Macintosh HD:/Users/danieleghisi/Documents/bach_STUFF/Screen shot 2013-06-16 at 19.13.08.png",
					"presentation" : 1,
					"presentation_rect" : [ 48.0, 69.0, 17.0, 15.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-44",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1292.385528499999964, 101.202096939086914, 147.228942999999987, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 61.4296875, 64.0, 221.79925537109375, 21.0 ],
					"text" : "Search here...",
					"textcolor" : [ 0.463, 0.459, 0.459, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"autoscroll" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"border" : 0.0,
					"bordercolor" : [ 0.5, 0.5, 0.5, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-51",
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1026.885528499999964, 179.5, 148.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 61.4296875, 66.0, 222.5703125, 19.0 ],
					"rounded" : 0.0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontsize" : 13.827049315276165,
					"hidden" : 1,
					"id" : "obj-11",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 388.75, 585.843097686767578, 213.0, 37.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 7.25, 613.5, 143.0, 37.0 ],
					"text" : "a few more patches\nfor \"debugging tips\"",
					"textcolor" : [ 1.0, 0.054901960784314, 0.054901960784314, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 296.0, 758.0, 73.0, 22.0 ],
					"text" : "loadmess 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 477.875, 800.418215953340678, 60.0, 22.0 ],
					"text" : "zl change"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"hidden" : 1,
					"id" : "obj-50",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 349.75, 800.418215953340678, 37.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 206.0, 621.0, 37.0, 20.0 ],
					"text" : "zoom"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 388.75, 853.418215953340678, 29.5, 22.0 ],
					"text" : "f 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 388.75, 800.418215953340678, 29.5, 22.0 ],
					"text" : "t b l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 388.75, 880.418215953340678, 140.0, 22.0 ],
					"text" : "zoomfactor $1, offset 0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 388.75, 911.418215953340678, 70.0, 22.0 ],
					"text" : "s zoomhelp"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"format" : 6,
					"hidden" : 1,
					"id" : "obj-62",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 296.0, 800.418215953340678, 57.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 152.25, 621.0, 57.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-35",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 477.875, 827.418215953340678, 75.0, 23.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-36",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 388.75, 758.0, 201.0, 23.0 ],
					"text" : "script sendbox viewer replace $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 170.214843999999971, 934.509765625, 74.0, 22.0 ],
					"text" : "s open_help"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 388.75, 690.509765625, 72.0, 22.0 ],
					"text" : "r open_help"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.714843999999971, 826.509765625, 74.0, 22.0 ],
					"text" : "s open_help"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 65.714843999999971, 542.0, 42.0, 22.0 ],
					"text" : "click 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 65.714843999999971, 512.0, 48.0, 22.0 ],
					"text" : "del 100"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-64",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 143.857421999999985, 558.509765625, 67.0, 23.0 ],
					"text" : "close 1 -1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 65.714843999999971, 472.0, 175.285156000000029, 22.0 ],
					"text" : "t b b l"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 16.714843999999971, 770.509765625, 56.0, 22.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-98",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 16.714843999999971, 739.009765625, 56.0, 22.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-96",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 16.714843999999971, 798.509765625, 140.0, 23.0 ],
					"text" : "1-Welcome-to-MOZLib"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 16.714843999999971, 712.509765625, 64.0, 23.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 65.714843999999971, 301.0, 143.0, 22.0 ],
					"text" : "loadmess bang @defer 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 506.205840500000022, 909.01953125, 343.0, 22.0 ],
					"text" : "1-Welcome-to-MOZLib"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 18.714843999999971, 558.509765625, 35.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 170.214843999999971, 757.509765625, 86.0, 23.0 ],
					"text" : "bach.change"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 170.214843999999971, 875.509765625, 36.0, 23.0 ],
					"text" : "gate"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 183.714843999999971, 844.509765625, 68.0, 23.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80001
					}
,
					"text" : "bach.== 3"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "bang" ],
					"patching_rect" : [ 170.214843999999971, 790.509765625, 46.0, 23.0 ],
					"text" : "t l l b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 183.714843999999971, 817.509765625, 75.0, 23.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80001
					}
,
					"text" : "bach.depth"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 170.214843999999971, 905.509765625, 162.0, 23.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80105
					}
,
					"text" : "bach.keys filename @out t"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 170.214843999999971, 724.509765625, 81.0, 23.0 ],
					"text" : "bach.lookup"
				}

			}
, 			{
				"box" : 				{
					"alternatecolor" : [ 1.0, 0.964705882352941, 0.882352941176471, 1.0 ],
					"clickedstripcolor" : [ 1.0, 0.756862745098039, 0.011764705882353, 1.0 ],
					"clickedtextcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"firsteleminllllisllllname" : 1,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 14.0,
					"hint" : "",
					"hoverstripcolor" : [ 0.870588235294118, 0.866666666666667, 0.866666666666667, 1.0 ],
					"hovertextcolor" : [ 0.129411764705882, 0.129411764705882, 0.129411764705882, 1.0 ],
					"id" : "obj-10",
					"maxclass" : "bach.tree",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 5,
					"onlyclickonleaves" : 1,
					"out" : "nnnn",
					"outlettype" : [ "", "", "", "", "bang" ],
					"patching_rect" : [ 65.714843999999971, 598.509765625, 228.0, 97.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 87.0, 304.429687999999999, 504.0 ],
					"preventedit" : 1,
					"textcolor" : [ 0.349019607843137, 0.349019607843137, 0.349019607843137, 1.0 ],
					"textdecayfactor" : 0.94,
					"tree_openstate_data_0000000000" : [ 0, "[", 0, 0, 0, 0, 0, 0, "[", 0, 0, 0, 0, "]", 0, "]", "[", 0, 0, 0, 0, 0, "[", 0, 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "]", 0, 0, "[", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "]", 0, "[", 0, 0, 0, 0, "]", "]", "[", 0, 0, 0, "[", 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, "[", 0, 0, 0, 0, 0, "]", 0, "[", 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, 0, 0, 0, "[", 0, 0, 0, 0, 0, "]", "]", "[", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, 0, "]", "[", 0, 0, "[", 0, 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, "]", "]", "[", 0, 0, "[", 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, 0, 0, 0, 0, "]", "]", "[", 0, 0, "[", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, "]", "]", "[", 0, 0, 0, 0, 0, 0, 0, "]", "]", "[", 0, 0, 0, "[", 0, 0, 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, 0, 0, 0, 0, "]", "]", "[", 0, 0, 0, "[", 0, 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, 0, 0, "]", "]", "[", 0, 0, 0, "[", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, "]", "[", 0, 0, "[", 0, 0, 0, 0, 0, "]", 0, "]", "]", "[", 0, 0, 0, "]", "[", 0, 0, 0, "]", "]", "[", 0, 0, 0, "[", 0, 0, "[", 0, 0, 0, 0, "]", "[", 0, 0, 0, 0, 0, 0, 0, "]", "]", "[", 0, 0, 0, 0, "]", "]" ],
					"tree_openstate_data_count" : [ 1 ],
					"versionnumber" : 80900,
					"whole_tree_data_0000000000" : [ "Welcome to MOZ'Lib !", "[", "MOZ'Lib Intro", "Quick Demo", "Fantastic modules...", "Little manual of collapsology...", "Program flow and the “callback” button", "[", "LISP inside !", "But what is Lisp to begin with?", "Lisp in Max: why and how", "]", "Beyond MOZ'Lib", "]", "[", "PWforMax Intro", "PatchWork for Max ?!", "pw.eval-box", "Save Lisp and Die...", "[", "Basics of Max Lisping", "Static Lisping", "Dynamic Lisping", "Backquote (& Macros)", "Tips: Make your code dynamic easily !", "]", "[", "Lisp scripting boxes...", "lisp.quickeval", "lisp.quickeval @randompath", "lisp.quickeval code_snippets", "BPFs & pw.sample", "lisp.expr", "lisp.lambda", "Don't forget your quotes...!", "Old style evaluation : lisp.antenna 🤯", "Utilities: lisp.print & lisp.docstring", "]", "...and a few more modules !", "PWConstraints Intro", "[", "Iterate tools", "Don't Loop, Iterate !", "The problem with quotes...", "Parallel iterations", "for-previous: a case study", "for-wind", "in-circular-list", "Conditionals (with WHEN)", "A few more Iterate features", "PMC through iterate (a)", "PMC through iterate (b)", "]", "PC-set-theory", "[", "Debugging tips", "Trace", "Dtrace", "]", "]", "[", "PWforMax Libraries", "Introduction to guest libraries", "[", "Chréode & Transkaija (TODO)", "Introduction", "A few words on Chréode", "A few words on Transkaija", "]", "[", "CLUSTERengine", "Introduction", "chained?!", "[", "demos", "demo [a]", "demo [b]", "demo [c]", "]", "under the hood...", "[", "CLUSTERengine module", "Main engine interface", "stop rules", "code snippets", "]", "[", "Domains", "Domain Intro", "Rhythm domain", "Pitch domain", "Interval motifs", "Metric domain", "Chaining domains", "[", "Motifs selectors", "Rhythm motifs selector", "Pitch motifs selector", "Motifs selectors example", "]", "]", "[", "Rules Interface", "Rules Intro", "Writing rules in pure Lisp", "Writing rules with scripting boxes", "Accessor scopes", "Accessor parameters", "mode?", "Print is always pretty", "Lambda-rule tester", "Loop & Collect", "]", "[", "Debugging Tools", "Debug Intro", "code snippets (advanced)", "CLUSTERdebug", "CLUSTERpreferences", "]", "[", "Rules for one engine", "[", "Index rules (one engine)", "Index rules Intro (one engine)", "example [a]", "example [b]", "example [c]", "]", "[", "Wildcard rules (one engine)", "Wildcard rules Intro (one engine)", "example [a]", "example [b]", "example [c]", "]", "[", "Timepoints rules", "Timepoints rules Intro (one engine)", "example", "]", "[", "only-m-motifs", "only-m-motifs Intro (one engine)", "example", "]", "[", "predefine-meter", "predefine-meter Intro (one engine)", "example", "]", "[", "PMC rules", "PMC rules Intro (one engine)", "example [a]", "example [b]", "]", "]", "[", "Rules for one voice", "[", "Index rules", "Index rules Intro (one voice)", "example", "]", "[", "Wildcard rules", "Wildcard rules Intro (one voice)", "example [a]", "example [b]", "example [c]", "]", "[", "mel-interval", "mel-interval Intro (one voice)", "example", "]", "[", "Metric rules", "Metric rules Intro (one voice)", "example [a]", "example [b]", "example [c]", "example [d]", "example [e]", "example [f]", "]", "]", "[", "Rules between voices", "[", "Pitch vs. Pitch", "Pitch vs. Pitch Intro (multiple voices)", "example [a]", "example [b]", "example [c]", "example [d]", "example [e]", "example [f]", "example [g]", "]", "[", "Rhythm vs. Rhythm", "Rhythm vs. Rhythm Intro (multiple voices)", "example [a]", "example [b]", "example [c]", "example [d]", "example [e]", "]", "[", "List-all-events", "List-all-events Intro (multiple voices)", "example", "]", "[", "Multidomains Intro", "Multidomains Intro (multiple voices)", "real voices?", "example", "]", "]", "[", "Utilities", "key_trigger", "moz.textfield", "moz.mute_score_filter", "Lisp domain generators", "Multiple code snippets", "]", "]", "[", "JBScmi", "Introduction to JBScmi", "[", "Write music entities", "About the Max port", "Write music entities", "Write music entities with slots", "Loop example (a)", "Loop example (b)", "]", "[", "Pitch", "Harmonic fields", "Tonal answer", "Find-all-intervals", "]", "[", "Matrix", "Numeric comment", "Numeric comment sort", "All to one / All to X", "All matrix readings", "Print lists / Print matrix", "]", "[", "Special combinations", "All possibilities", "Circular pitch permutations", "Circular groups permutations", "]", "[", "Grouping", "Groups: group-list", "Groups: group-equals", "Groups: all-sub-groups", "Groups: all-given-sub-groups", "Groups: grouping-in/excluding-given-element", "Groups: all-groups-by-all-elements", "Groups: chaining-groups", "Segmentations: min-max-segmentations", "Segmentations: on-new-old-segmentations", "Segmentations: on-new-old-new/old-segmentations", "]", "[", "Utilities", "Utilities (a) List elements", "Utilities (b) Members in sublists", "Utilities (c) List readings", "Utilities (d) Index-substitute", "Utilities (e) Numerical series", "Utilities (f) Get-index", "Utilities (g) Identity-index", "]", "]", "[", "JBSprofile", "Introduction to JBSprofile", "[", "Perturbations", "Alea-perturbation", "Control-perturbation", "Compression-expansion", "Hybridating-profile", "]", "[", "Reflexions", "Reflexion", "Double-reflexion", "Multi-reflexion", "]", "[", "Derivations", "Arithmetic-derivation", "Mean-derivation", "Average-derivation", "Barycentre-derivation", "Min-Max-points", "]", "[", "Integrations", "Arithmetic-integration", "Geometric-integration", "Barycentre-integration", "]", "[", "Interpolations", "Dynamic-interpolation", "Multi-interpolation", "BPF-interpolation", "Profile-interpolation", "]", "[", "Utilities", "Notes-change", "Range-approx", "Weight-average", "BPF-collector", "Four-forms", "]", "]", "[", "JBSconstraints (cleanup in progress)", "Introduction to JBSconstraints", "[", "Introduction to constraints", "chainedPMC", "Create candidates", "Rules", "Logical conflict & heuristic rules", "First musical example", "Specific candidates", "Heuristic rules", "Heuristic rules & weights", "Heuristic rules & several weights", "Ergonomic disposition [a] : JBSrules", "Ergonomic disposition [b] : JBScollect", "]", "[", "Generic rules", "Generic rules", "Generic rules with chainedPMC", "Generic rules: pitch candidates", "Several no-repetition rules on durations", "Several no-repetition rules on intervals", "Modulo-x-repetition rules", "Not-consecutive rules", "Not-repeated-element-sub-group rule", "Not-repeated-list-sub-group rule", "Item-sub-group-member rule", "Allowed-chain rules", "Length rules", "Index rules", "Index-length rule", "Index-Nth rule", "Index-applied-sum rule", "Member rules", "Not-higher/lower-than rules", "Count-common-elements rule", "Count-any-element rule", "]", "[", "Interval rules", "Interval rules", "Several no-interval-repetition rules", "Several allowed-intervals rules", "No-consecutive-equal-intervals rule", "Obliged-interval-chain rules", "Repeat-interval rule", "Repeat-resulting-interval rule", "Index-interval rules", "Not-bigger/smaller-interval rules", "Resulting-interval rules", "Jump-resolution rule", "Do-reach-that-interval rule", "Apply-interval-sum rule", "Apply-interval-global-sum rule", "Not-complementary-interval rule", "Interval-structure rules", "Count-positive/negative-intervals rules", "]", "[", "Pitch rules", "Pitch rules", "Allowed-pitch rules", "Allowed-pitch-structure/class rules", "Not-allowed-pitch-structure/class rules", "Index-pitch rules", "Any-note-repeated rule", "Count-this-note/modulo rules", "Not-repeated-modulo12 rules", "Mk-profile-pitch rule", "Mk-profile-pitch-modulo rule", "]", "[", "Shaping rules", "Shaping rules", "Ascending/descending rules", "Ascending/descending-sub-group rules", "Mk-fix-profile rule", "Mk-profile rule", "Sub-group-mk-profile rule", "Direct-analysis rule", "Energy-profile rule", "]", "[", "Pattern rules", "Pattern rules", "Ptrn-find rules", "Find-this-ptrn-n-times rule", "No-shape-pattern-lcl-repetition rule", "More-first-repeated-than-second rule", "Repeated-pattern rule", "Always-more-little-included rule", "]", "[", "Distance rules", "Distance rules", "Distance rule", "Dynamic distance rule", "Resemblance rule", "]", "[", "Structure rules", "Structure rules", "Mk-symbol-structure rule", "Find-apply-sum rules", "Length-sub-group-applied-sum rule", "Structured-order-sum rule", "Count-positive/negative rules", "No-consecutive-rests/pulses rules", "Alternating-positive/negative rule", "Alternating-plus/minus-first-or-last-elmt rules", "]", "[", "Matrix rules", "Matrix rules", "Mk-latin-matrix rule", "Chain-common-element-lists rule", "Chain-more-little-included-common-lists rule", "]", "[", "Utilities", "Utilities (a)", "Utilities (b)", "Utilities (c)", "]", "[", "Examples", "[", "Special combinations", "Always 3 given elements (a)", "Always 3 given elements (b)", "Always 3 given elements (c)", "]", "Structure 2", "]", "]", "[", "FVmorphologie (TODO)", "To be done...", "]", "[", "JVcomponents (TODO)", "To be done...", "]", "]", "[", "MOZ Tools", "Intro", "[", "Analysis", "[", "Self-similarity matrix", "Intro Self-similarity matrix", "Equality lambdas", "]", "[", "Dynamic time warping", "Intro Dynamic time warping", "DTW Profile interpolation", "DTW Chord interpolation", "DTW Pitch profile interpolation", "DTW Melodic interpolation (pitch & rhythm)", "]", "]", "[", "Score processing", "moz.rebeam", "moz.score_rot", "]", "]" ],
					"whole_tree_data_count" : [ 1 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 1,
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
						"rect" : [ 661.0, 79.0, 644.0, 654.0 ],
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
									"id" : "obj-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 41.5, 219.0, 150.0, 20.0 ],
									"text" : "depth != 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 105.5, 219.0, 150.0, 20.0 ],
									"text" : "depth == 3"
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
									"patching_rect" : [ 57.5, 11.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 227.0, 409.0, 32.5, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 227.0, 435.0, 87.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.keys title"
								}

							}
, 							{
								"box" : 								{
									"comment" : "The help dictionary in llll form",
									"id" : "obj-21",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 247.25, 596.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "", "" ],
									"patching_rect" : [ 57.5, 46.0, 46.0, 22.0 ],
									"text" : "t b l l"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 71.0, 104.0, 32.5, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 71.0, 195.0, 44.0, 22.0 ],
									"text" : "gate 2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 12.5, 528.0, 361.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.collect 2"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 105.5, 165.0, 109.0, 22.0 ],
									"text" : "expr ($i1 == 3) + 1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 105.5, 138.0, 70.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.depth"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 71.0, 76.0, 139.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.iter @maxdepth -3"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-17",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 17.5, 596.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 3 ],
									"source" : [ "obj-1", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-10", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 2 ],
									"order" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"order" : 1,
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
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-16", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 2 ],
									"source" : [ "obj-33", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-9", 1 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 222.0, 565.0, 105.0, 23.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p helpllll2tree"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-4",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 351.0, 65.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 315.0, 66.0, 5.0, 586.5 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 357.25, 295.0, 59.0, 22.0 ],
					"text" : "1270 660"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 270.25, 240.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-34",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 112.901314111499858, 333.0, 45.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 249.785556793212891, 610.5, 45.0, 20.0 ],
					"text" : "update"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-20",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 89.714843999999971, 331.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 260.285556793212891, 628.5, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 108.714843999999971, 432.0, 22.0, 22.0 ],
					"text" : "t b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 65.714843999999971, 368.0, 131.0, 22.0 ],
					"text" : "read Tutorials-Menu.txt"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 65.714843999999971, 404.0, 62.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80105
					}
,
					"text" : "bach.read"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.0,
					"hidden" : 1,
					"id" : "obj-99",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 270.25, 274.0, 146.0, 17.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 1093.25, 19.702096939086914, 146.0, 17.0 ],
					"text" : "moz.resolution-helpfiles-moz 1270 660"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.906625047099247,
					"hidden" : 1,
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 270.25, 340.5, 59.999999999999886, 18.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 2,
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-55",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 112.901314111499858, 107.230158470385106, 287.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 163.762953844084336, 36.487653732299805, 287.0, 19.0 ],
					"text" : "a project by Julien Vincenot (since 2015) ",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Menlo Regular",
					"fontsize" : 31.556111999999999,
					"id" : "obj-56",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 9.423917060628419, 68.202096939086914, 389.0, 43.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 60.285556793212891, 1.202096939086914, 331.0, 43.0 ],
					"text" : "MOZ'Lib Overview"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 40.714843999999971, 897.581784046659322, 72.0, 22.0 ],
					"text" : "r open_help"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"hyperlinkcolor" : [ 0.949019607843137, 0.56078431372549, 0.094117647058824, 1.0 ],
					"id" : "obj-78",
					"linkstart" : [ "O" ],
					"maxclass" : "bach.hypercomment",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 16.714843999999971, 870.581784046659322, 133.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 174.0, 590.0, 130.0, 21.0 ],
					"text" : "Open separate patch"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 16.714843999999971, 909.0, 22.0, 22.0 ],
					"text" : "t b"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-46",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 16.714843999999971, 965.0, 54.0, 23.0 ],
					"text" : "load $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 16.714843999999971, 993.0, 58.0, 23.0 ],
					"text" : "pcontrol"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 16.714843999999971, 935.708008000000063, 43.0, 23.0 ],
					"text" : "zl reg"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-1",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "1-Welcome-to-MOZLib.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 0.0, 0.0 ],
					"patching_rect" : [ 1712.0, 164.357221603393555, 621.0, 350.96654275092942 ],
					"presentation" : 1,
					"presentation_rect" : [ 306.429687999999999, 56.0, 954.262195121951208, 589.96654275092942 ],
					"varname" : "viewer",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"data" : [ 48127, "png", "IBkSG0fBZn....PCIgDQRA..APO..D.8HX....vxV+sh....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI68dGmsTUk22e2U3D69z4tuQtjybADDQDDUDDQEUTDdDyiwGiiIFG0YbFGcvYzWygYLLXXFkAQLfOCC5n.JHFwgLJwK2PmCmSexUs2u+Qk1041ceSc3zM0O9zbOmp10NU0o9sVq8ZuVhy67NO0u6286nqt5hDjfDjfDjfDr5ByLyLbpm5ohn2d6U0We8giiyJceJAIHAIHAIHA6ivxxhIlXBDGxgbHpU5NSBRPBRPBRPBNvfwJcGHAIHAIHAIHAG3HgPOAIHAIHAIXM.RHzSPBRPBRPBVCfDB8DjfDjfDjf0.HgPOAIHAIHAIXM.RHzSPBRPBRPBVCfDB8DjfDjfDjf0.HgPOAIHAIHAIXM.RHzSPBRPBRPBVCfDB8DjfDjfDjf0.vZktCLWPoRhFsOdCI2yaewJ08lUh1MoMSZy1w1UoTHDBxjIClllya8OuD5Bg.WWWpVsZXks+f82qakrtWsUuKk08ps5cortWsUuGn08BcsImK4bImaOet8zu+VvyK.AhvxoTJ1912N0pUCSSy47RlWBcGGGxjICG4QdjXZZhTJ2q5f60c1k4xmT2I08imq6kBgFZmrpR6TeAh5OAuHtcnuztf1o9ypk9hooINNNryctSjR49NgtTJwvvfN6rSrrrBIzWnFcAmbTfh8uqck3bsa8m8my0t0eR5qqb80CjWbs2ds6MkawpLIs29PcoVn27tDzdKh0UR6EuboSmlToRMuW27l9TWrL49hIZG5CK0HYLt1.qUGisqiq1w9Uf14si8Mn8cNqcGqj8w8TaOuZnqTJLLLHe97K5cpDjfDjfDjfDr3hjssVBRPBRPBRvZ.jPnmfDjfDjfDrF.ID5IHAIHAIHAqAPBgdBRPBRPBRvZ.jPnmfDjfDjfDrF.ID5IHAIHAIHAqAPBgdBRPBRPBRvZ.jPnmfDjfDjfDrF.ID5IHAIHAIHAqAvdL8otVI8ykz9IseR6mfDjfUqPHDjJUpEL7utfD5JkhlMatGiGwGnY5o8lXi6RcarV+7sC8gU6meOUl106AK1Y4skiw4hQczNzFqVlqVLpij1XoqMLLLv00k65ttKlc1Yw11dNul4kPuYylzQGcvocZmVrrsVBRvZMD7Cm14DowxIV1yFXKh0U6T6o+7zZwwWqk6.ICEt+zdsa00RY6EPn633fgw7uR4yKgtggANNNricrCLLLh0.KUoVxk5yuR116oy+301dOc9j91hy01NZB+1w9zhIVqO9BviGFmsKiwzoSOu4BcXARepf2fnVsZ62Md6bZlKosSZ6U6sch0DRvZMj7L8AFVv0PWHDjMa1kq9RBRPBRPBRPB1OQx1VKAIHAIHAIXM.RHzSPBRPBRPBVCfDB8DjfDjfDjf0.XOFXYVMAWohZNJbb89toAj1RfsYhiVjf4GJETyQQoZRp4nPo.aSHeJCxmVfkQxyOIHAIn8Gq5IzE.RELcUIRkh0WvhBYEHPP45R1UQWbjR5NqAVFBZO17AInc.BAzvQwLUkzSNCdZGQF1bOVXaJX5JRt2QZvCLVSLMDTHShwrRPBRP6MVUSnK.bjJloljM2sEO2iOOmyQkkCqeKLMDr8oc3W9f03ZuixbO6pAcl1fz1BZS1RgIXEDBATttjFtvyeq44kcZcvIuozLXmlfITqljGZbGtg6qJeseUQdzIcn2bljrqZRPBRP6JVv8gd6NjJESTVxYe3Y3C+b6kSdyoooqBWInPgkPfskfGcxlbE2vz7e76lkNRaPFqDM0e7NZ5pnTcIulSuS96et8RG4LnREOStKUfsof7oDXk1fa7dpv63ZlfsMoC8jyH4YmDjfDzVByd5omOzJcmX+EyTUwS5fyvm8kzOG2FSwzkkTooh5NJZ3.0c797561hm1QjkGbLG9e2QCxXajno0iigRASUQxK7DyyG6EzGYrELYIOs0kJPA3JgpMUzrojidioXiEL4F+y0nbCIoR7IiDjfDzFhUslbuVSE4SK3u7o2EG95rYrYb2MSoq.bjvnEcYvNM48e9cycObCdnwaRO4l+vmWBVaipMkzeGl7ZN8NoPNCFcF24sr0cfRkkbAGWNt96oJeyeSIxYyiqEHrcILXtufUi8YX0Y+d0XeFZu62A4E.KKqC7rs1AZGYo.SNqKOqiuSdRGbFpTUtGWW7IK6xQs9T7rO1b7Q9ASRCGIcmVhGse7In14aryGVszmCdvbkp+JPwHyH472Z2bBaLMUpsvIcHgvS3wNRavS6HRy24WOFSNihL1s+L56uyw6KgeykhxtZoN2aJavy56u04hQV6ZeobKUkc0R+beorKFYks8kqQHDToREjR47Vl4kPWoTXZZRgBENfdnZw9bAG2bVEm0QaQWYTL8dQ3l2QByVUxa5rJPFaA+f6Qx1qjgr1B5Km.Ky41Y4l29n.Dr7OtSN2924LDdlQerxJDEc3YcR0n6zRlr5d9GbJfpMb3X2XGb1O4SkoqaPN63OrztNt2SkcestOPQRcu7V2HVn2RsXT8K9099iPP6OswRccuXNFLMMwwwg+ve3OPoRk12SepNNNjMaVNgS3DBSep6OR7uTcM8T0hCeSiiAShqzjV0xdtvr0kzaNC9.Out4M9TM32Ld2bi6HO+lGsIBTLTASLDLmD6KGi81o42kyxuTdMAaqwQK4PUG3rN7L7ROQAmXWSxzUqgqZu7GbJOsxssLwno.Ci4tsmq9zdJqo0tc+X+MKus+btj1ZsS+HYLuz2VMa1DKq42v5y6YrssoVsZba21ssO2g1Ww9Scsioc3Y2UuHNxtwP3hbunJLDBJUWwrMTj21kKXyivYMfA++RUiO+MMCW0unJcj1f96vb+teMWncqdVLqq1s5IntDBOIkmprKUpJ4jO3z7FeJE3EeR4n+NMY55VzPt24bjBfT117m1UY94258SCGIYs221W5qzySKGleewBOdK60kLGu1rcWJZSSSyU10PewDwLgJRdvwZRs5JrMET2Yu+EVJELaCAyV2fL1vk7jxyEbrY3a8amkuzunH2wNav.cXRGoE6UBJruzuaGpmUqs+dKLDddn9NmwgCtur7Ndgcwq4I2IcVvjYK5xHkwmveeoVUj01.GQJDVPtrFKJOaruhUK2CRPBRvxOV0tOzKVSxgzmEeiWwfbjCZyDkmemaRo.CCn2bduDdpJxc67cjVP9NMYrIc3KbyE4ybiyPkFRVeWqZ2H.OtDBfgK5hgA7xehcv65b5lCaSonZIWJVSEiD2T.or7DFbOQNaJfd5vjuzMOCu8u6DzWdC5H8JCodBRPBRvbgUs6CcKCXWEkjMkfm9QjEg.ZNO69nr1BxXK3W9f0oTMIG95SQNKAUa5E2tCt1Yq3EhXOmSHGmwAkl6aDGticTmz1FjNIXzzVCCgWbGXaS4votkz7ubo8ya8Y1C8jQvnS4RCWu6yA2u6OuAYrELSUUnkXzImED2qLjJOmp6rNtbjyPv2+NJSJKCRYknwbBRPBZOvpVBcSgGA6ctiFXaJ3zN3LXZ3EatCLKoToHWJCJj0fq+dpv+2qZb9V+lYYzhNzWdSN70YSdaAUZ38lbg.p5nnVMIGyFSwK9DyioPvs7v0XlZdacoDz9ACAL9rtTrtj27Y0EekW5.brGTFlXFGJooUtRA82gAc1gI241qy6+GMIe8e8rr4dr33WeZxXKvz.RYJHssW7a2T3k3VLDBbbAkihm9wmCbgq6NKS1TFII+mDjfDzVfUsD5f2KdqzTws9P0YjRtr0MlltxXPSeKpmKkAkpK4K7KJxUbCSyzUk3Hge58Uke3cVgGYbG1Re1bHqKE13EvQD9BJTppj7oL37Ng7bpaJM2ytZvcuKunLWpDs0aKPfGr+XS4v5JXwm9h6m2642MFHXrhN.BDBOA65LiA8zsE+4c0fq35ml2+OZRt4GnF6bFW98aqNCWxywJEBA0bT7Pi6v0cWUoyLFbn8aSo5RLDBZ5pP3Bm6IjmJ0k7ee2UHeZijLxVBRPBVwwp10PO.BfJMULZIW9Nu5A4hO0N7hZb.C1sIeueeYtju1HzUVCJjwvyLp9IliQK4xl51hWwSpSdimYA1zf1L8LNT2Ix7rlFP+cYxTEc4idCSyW5WVDCALPGlIqe5JHLDPo5RFeVIO2iOG+Sufd4n1TZlbZGZpYdcaSn2tsnTIW9W9kE4yeyE4QlnIC1oIclwvyAI8SRKC1oAcm0DSCnRCEOvXM43VeJtlW6ProdsX3YbvPHPpTzUFCxl0f252db9b23Lr4d8xRaIORjfDjfUJrpVC8.XY3oU0Et07b7aLEUp68Z07YM4Ots57CtixzWdiXdHrsofdyaR4FJt96oBW+8Vk9xZvodnYHqkmY3EBB0VuPVSd1mTdNw0khe4CViGcRG5JahI3WIfP343aJfO342Ce5Wb+LXmVLxzdGKPq79xYRG4M3Gc6k4McUiyW8WUBSCAanq3juorDjxDJ2Pw3yJY7xRlstjNyXveZrl7qezZbgGedFrSqPM0q4nvVH34ch4YaS4vM8mpQmYMvLwKzSvZLn7yuAJTHgP+MYg9yq7AP735Pk7xIVy3B2VFvtQupTXY38Ba0tGgWQpfNRaPmYLXGS6vq7aLJ+r6uJenmSOrg9sYpYbngi29We5JRrpK44bJ44vGvhW02bLtsGtFaoOaLEjnY1xH11jNbbqOEehKpONmiOGkm0kIJ6hgv69rg.VWu1LSIWd+euI3KeKEwzPvgzmcnY5aElFBxkZ2eqyA0iE2xCViW5UNJWyqcHFpSKFonCFFBlppK8YXxW9xFfJMTbU+tYYK8aSh02SvpInTdB.qvywOq4pntqhFtJZJUXJDXY38aDSg2uuL7iyCs9ntBEtJu5zU484lJEtJE1FBxXHHsoAoM8pKAdueMAKNXMCgNLOjp6EOqnTdlPutihuxsVja8gqwG941KuvSoCbpKYhxtHDBbkvHi4vQs9T7i++tN9K9Viw2+OVlM1qEYrVb1y5IXtg.vQpXaS5v4er43q8xFf02uMiOkCtRBMEdGoMniBlbK2aUdmWyD7adjZrwtsHisHTyg8Ubv8YyO4dqvK6qOJW8ewPLPmlLVIWLLDLwrtzemlbkuhAoRCE+n6rLGR+ycXYLAIXkFRex6ltPklRlsgGQdNaAoLEj2VvgzsEClyjdRaPuYLourlzcZC5zxftRYPdKCrMDj1PfcPXNU5ILcCWEUZpnlihxNRlplKSUWxT0kLdcGFslKiT0gQq4PIWEUckzTonCKC5vxfTFBLVhCWsqkwp90PG7HjmnrK+quzA3RehwWC8u6uaVdMeqwnmbFXtWn5jg.FsjKMcU7ZOiB72bA8v.caw3S6QbDXN2g5zBPwa6pmfO2MMCCzoIExjrujWJPXfhYJGtrmTm7keo8SVaCFtnSnz8JELTAuH72m7mMMe3+qooRSIaraq8Xh6YuAJE7Hi2jK4T6fuyqYHZ5pXhY8H0kREC0kEyVWxy6KNL27CTkCse6jmERvJNjJENtP4lJltpDSgmUI6MmAGb2VrktrXKcawQziEGTWVrtblzWFS5IsIhTFdl9DAd1ZGPJhrmdruqc7XeWD84FRbqKYh5tLVUGd3YaxetTSdvR049K1fGX1FLdCGl0QRFSAcaaRZeB9Dr2gkUMzWpxvVgqWyBT8J0dW66pfA5vfZNJ9b2zLbyOPU93uv93b2ZNlonK0Z5oM3HEcnm7l7YurAXy8Zw6+GNI0cTze9UNR8UKYbs8EXHfh0TL1rRdmOyt4S7h5CGGkmCpY3oUfkAzWOF7vC2f280NAeu+vrzWmlrgBF35tvYSsEB5ymBgfM0iAW0utHYsT7u8JFjtyYvzUUXXHXjYbXc8Xw29UOHm6maWb+izfM2sAG.MeaIVIdFak545UisqBvUInZSAkpKv1RPO4L3nGzhsttTbD8awINXJNp9sXccXRpbVfsg2K9j.N.MAeakirlCBchYoerbPm.WJ79fNItz6eU9eW3mnRLsMXvzlLXgzbbCI.gWa6VwgsWtI2wL032NYUt8oqxcLSM1QUGbTR51PQZTXvA9xatbdeMnsNPyvjAI5krYyhoo47VWyKgtPHv00kJUpLuMxhQXnbwJTVVshKNttwimmBCTRIUqVkLBOuWdeoergNg67wlkm8mcV9meA8xe4ynKrDVLaCg2ZnVwk7NJduO2dYK8Xwa5plfsOUCFHmB09gQiZWlOaGpCgvymHltlfxML3i8B5l26EzK0pHY5Jtgj44rgNyn36+6mk280NIO3XMYy8YikgmI3OP5GAWaXF9y.17fFbk2VY5L6j7YdI8PAITpNXXHX3obX88ay+9qbPdt+qiwDUcYf7ANe2J2b5Rw0sZNiAtVpsD3w8VqohYpafiqhNsc3XK3vIMnjie8V7j1XJNj9sHeAKvR.Mvm3VA0bQVVBJ7ItQiPlnsKB.BEpfsIjdZmV3Gft7Ol2a+7VfbA9jZBPIUfRFwHK8ZGg.LsLYK8jkszWNddGl.p5xCUrF+7wlkaalFbGMsXXkI1llzmsAY7s1pZglqV.S2ub8LvhUlJ0vv.oTxi7HOBUqVcdSPKyKgdylMIa1rbrG6wFls01WvhYdfcOcMJELSCA81aIbqWEvyzqx50nmd5ly7L2BcXqvPDWiq8FXZHX5pR922Nz8CXyqdqyPpJ0XhxdZlUoghlSzjK4Lxyl60l+5arCZZ0IquSOycs+9h7kq4u101xzPvnkUznQS9KO4I4EtUWJUxkxMjgl4t6rBxjwju882G+K2WJN3i0kSqSS+LX1Ry3RHfFtvuujfu1cWkWyILNNRIUa5QpOxDNbhGjIW0qaK72da8Stz1TH8bGZYWN+MxRMVJ05YoVipkLKG5KP4RQ86JUTweWYjxPvQ0iAmv5jbBCTmisyRbvEZfQm9NMRc7HwKKQ4phz1lfHmX.QLHB92.G80mLtE2VmvKVqv9z3gaMXB0NETJQ7mCCLopgmusHbkPSoe83Qfcn8jiCsuN3uPInbSC9cjieYMA2xz0Xj5MYfTVzksYX2qUrV5Yxfzm5d54oEzj6BgfzoSikkEttycbUckNsxE7xaoqXNHP8F7NNN3Hj6l2Gu21VYD.1v+3MTge8cOCe7Kvl00iMCOsievFAFcbWNiizlu9Po4098pw8uiFr4tMwUM204d639wiojPCgW1zqPVK9RWbddRaAlbRnoqWDaSJ8R0sRoh2w2cF912cY1PW1jKE7viuz2+EBnVS3cd2MXpgM3c8rKf6TtzvO9EL1LvYb3t7FJNBukuaQ5KumGzumV1mkxysTmk11Wp+j5beubd9tCTothwK4ob0QLjIm4Qjhy9nRwy3PSw56SA1RnoEzT.SIP5qocnIxEddhtWi3ucxTQsgJ7TAZ2pBI+CJS3wD9ZiGH7bvqeC55AGJPl.gOkuJpxBNue2wSf.EnjRvwicW.jW.mMU3rQwuQUiqd7o4Z20T7fyVir1VzusYPucQet+.orAB0sX09YxjgToRMukYdcJNcStq2oNPwRg1BJEL9rN7u8p1LuxyrGFaZGOmhqGa9t+5o4R+JaKLfgr+1+DnvQJX7YM3ocrcx+9qZ.1v.1L5DNwJ2fco3WbOE44+uLBSU1kMzi0h95ntZHias+1GMEv1m1gdxYx095Ghy935fwmIZGDHUJVW2VTtpjW02ZL9t+tRLPGRrMidYzRY+K75AlsghhML4e+UMD+eNqBL9XMC6m1lPO4U79u1w4idcSwf8Zsr2GWNwpo9Z.Z26yBeUca3nXhYkzrthMMfIm0Qkhm0wmly+nSwPq21yL5kUPCARGABYDQJJAJoO4bf0t8WeaAQqINReR+fxoDdDqJPn63aA0gxqcBXs8JGzpywETO5q+dXYvqMics3WW5kSaM5EBAXZBFFLxLU3a7XSwWe6SvcWrJckxhdSYFZ3f8+4812mK1iVPb9HzWMg.ub+KbI8yK6z6LxK26xjq81Kyq9aMJExbfGdNCD97gGuIG85Rw29UOHmzgmkwGuYnGvCvfCXyu+OWkK7KMLST1KZzk3wy6YDPlWHiA+n2z54zN5rL1nMC+woRAC0qECOYStzu1nbS+4prk9rBiq+K2HHFx6Jgq6MsNN6SHOiLZSeMcTjOsAcjyfW+2bL9x2RQN39rSBvFIXOhf2yTrphIJJoirBN8ivlK5IjlK3DSyV1rMjR.ypfJRjN9F5VoH15ei.jQDyDnXQKD5QDxQDpQWmHtF9JUKd1tNAtuYDZwg4THhVedId9WjOosGgt90noAuTuMTDWP..aav1jREqyW3QGiu3iNFOZkFr9r1jyvfEY8nVUf0Tg5LU3+KBgqoyhU8CbXCXyCNdSN2O6t3m9GKS+CXioQj1WiNVSNkiHK+f2v5nu7lriYbRB1H6AXJfcLiKcj1fq8MrNNsiJhLOXY7FZ.KtusWmy6ysKtoGnJGR+1dASlUn9rT4E+BbUJtrqbTtuGsFC0mUny3MacIMpq3yeI8yy43ywiLYyDB8DLuPH.oDFdFIO7vtzUVAusKHK++t7t4m795l2zKoC1xlsfxRji5hphDkDe1Mo+657SFQ9OmIPgx2l1h.SZKDglNW4a.dA.FQeNzUNCrWt9hnKz9qkEWO9tUS36Xb9K6i+0p+NYUXujVNhV86YS+vKzqMDnZ3.kqQmYr3xO9Mys9TNZdyGxfLQCGdzZMVTe2+pErlgPe9dodfYqVLequT4EAwJ2PwE8kGlq+OL6bRpepGQFt1W+PzcVSFojaBo97.SArqhtj0Vv075Fhy3XywXiEQlaZ.CzuE2x8Tky6yuKt2gaxg0lD7VbUvF5xhgK5xk90Fkwm1g00kERo258OYYWrMEbku7A4T1bZ19TIB2kf3vP.NtJ113Rdzwc4j2hEe5WSGbyent4S+VKvY8DS6oY6HtnJ44XaAVABAgD3y8ZmpBs+tJjPrUBVUHsrPizLpN0IsEwaKsxRfawYDkgCiQ7G1Gh9bnvFw5yQ0uJx67BWfcgRub9D6yViMjKMetS9P4mdZGImVgb7PkqQEW4ZGRt8BrlZrNeqO4RgVQRErgt7RPKWxWcj3j59kYzwc3zN5b70e4C..SUY2cLuGuCCALxrtXaBW8qcHdpmP9XlY2P.82uM2verLO2uztXrRtrkdauVBCoB1ReV7+t857xtxQooih95vDoxamPL7LNze2V70eECxPcZxXylHbWB7d1toihGZDWFdZEm2Vs4ZdmE3W922EusWVd13FLgIbQNtKRGeRPT9qQrJFwWnFsAjdDPTKzUtUinzizUnQHG6QRivkz1u7hHB3PlecsoUZUf2GhSp6Yh+HMyEQsotF+s7xZA50aKVHHpo75a0aBUqyYs9d3WbFGCW9gsdFugCizvweeOs1GqsHzmiiIVfycfBoBVWAMR8euOot1OzFerlbdmbG7Yu39oTMuj9QhYW8fgvSHGkB9OdUCwy3Dyy3Zj4BfAFvl+m+WuLlWSWXiso9ifRAGR+17ee2U3M7sGCaage1byOvyLoCG2AmlOyE2OMbTTtw9SjJHAqEfNQ93EUbwmQZ9u9fcxO9uq.WzyICXCpc4frnLbakER71ByqNgnH5Hn70.N35TsPBp+rW.wdLnu9kh4J4pnhqkd3mUZFPWiLNfvOnuFZYf3lre2sIPK1nW+M5BU7C4uElUkqiggfqXqGB+fmvgSWVF7PUa73heuslHaqAdoP0K3XywIs4zQYasLF7mFoI+f6nB1lh8pP+59JT.cl1fYqq3Z9ik4jWWJ15glgpU7bICoBZVWxS9nxhPBW2cUg7oRxe1B7tmMUEIegKY.t3mRAlXrl3psbYCLfE2zcUgK9qNBMbhDdpcEBfNxZvM8mpgRBm2VyiSSEN9NLY8ZRN4CKCxlv0cmkoPVyDg6dbDDBujexiMgj5MfWzSNEelWWdd2uzbbnGpETRgrnBb7bjrfqw+p03CEQVwN1CPh.mAOr7.9dIdXI7NmpkqCcZ031uWncLgemxie1276pf5DM914p928.8R31Xqkwgtk5iKASP4okiIh1Vb.3JQ33xQzaAtn96heyzyxcTpJ8XulJ8kraXMuF5KGPpfg5zir4R+ZivMdWUXf9s7ktFZ3.yVxkOvEzCugyr.aeZm1ZhokCzTpX3hN7AN+d3Ue1EXpIZFR7AQqY9E+UFgpMTs8j4f2ye1lBVe2V7Q9umlu7MNCc2sUn40a5BkK4xG7B5gW7SnC11jMSL89iCPvs3cMojcNgjmySvlq+C0IemOTAdpOkTvrJji3hxwW6Ts0UVSW2PD5HawzbMxYznkqQXDHHfV8pEjsB0lWu5DQ0umSnoZkyMrmDnsMwpyVcWtf1O1hDDqt1sddqD2AGLzrD5UdKRfH7CrWUpwAWHG+zm3QyENPW7vUp6GuRVah0VD5yw8oVdleICAj5MbgW1WeTt6GoNC0qk+d3GOOdtghO8Kted9mfWNz9wqZmo.drob3u3IWf+1maOTtjKMbTgKK2f8Zwu99qxK9qLByVWx56p8mLO.JEjKkftxZv64Zmfa7tqv.8D8bPo5daj2O6E2GG+FRwNS1ADqogg.lprhGYXImxgYx24uJO+f+gN3rOqTPIIxQk9qOtuCfg1ZR6iPGIK.5OuDDVUEAmJP2d8kzIPPg3LxJs08tUc3C9rlUx0DXvmXVDThHGtSu9BMkery0h11ZMa7ehqhuDCwdQdfvCBMgATZUutfKfpZcxlxju+obj7xVWu7nUarOEOHVMg0VD5y0AWtXzIxQ4FonKW1UNJCOYSFpKuswjgPvjU7734uxkM.m1Vd7oGOKDviMoCm+wjiO6KoOZ1TQo5xvPZ3f8Zw87X04h+JivTUbYCc0dtl4KDjJnmbFzTBuk+yw4wFqIC1YzyAiVxg00qMewKc.xZavzUSbVx0ZvP.0ap3A2kjdxK3S8lxxO6epSdQO2zPCOOVW5p7C6pLGDqDokrl4rC0jVzJAK34zbQBEnutItuV8K...H.jDQAQ0JQDgmxur5lqOzI6B1v3hfs6VTGKlGvqAUTiDMHBJSqD0ABmnOtCFi5j9gsmZA71Yu9mRqhTgZvGW.HU8lHLD7MOwCiKYnd3QpUetqyU4XMEg9tQoGrNOKiPpfszqE2wNpyq7aLFkaHou7lguLejRNzeAS92d4CvV50hQebjGOaHfcNsCacio3qdYdjYST1MLWlOTWVLxTNbYW4nryhqtCHOREr9BlbeC2j21UONNREExXDFi4GaJGdJGSV9GuvdYpJRp4j3jbqkvNlPRoJJdaWXJt4OdG71dkYw1VfZWRjMhbXs3ugRE5.awsdWbWGS2AzB+HZZ16+k.spC4aCJafhsAZ5FpAruCsIB+p11LK37ADs90Pri0hYy86.hXVWPE6ZC68JsQX31pKpuE2o9hYhhHASBigr5SHQCXUilfgf+8S7v376s.Oh+dU2K7gu53u8D1idHv9SLfd4NsCpTJjtRjs91eeI0jRWbcMVRkdIdp1D1TWBtg6pDuwukhq7ULDERaPo59j5S6xQu4z7YeI8yK4qLBSWtI4SK1uLCzpkT7ng.lnhhA6LEesW1.rg9rX3o7hE9JeMZKVtNW1WcX9iOTE1T+1TqdiEk1dwB6Os6.Ygu+ucRde83xG+EOH0ZZhizKYsLyzt75eZcwctql749oSv55ZtCwxqESKtKEXkNjcZHTTogISU1hy73r3u8Ujgm4S0FZnfQb8hq5szGC01M5CDoUrGiZf11BemxQA9DfhnqvmSLbaaiW4CLZtPnEBYzuVg92E6tYza8YOgxO5uoYxcgxKptEL1huv4gCIk+4zsbdv6nUF97w98k.KQDL3BizbA8IsAZXnIWe40Ud8UU3w7FmpFMwLcJ9FG+gxy3Ob+7mJUlgrLaaipb5wAdgPfkk0B9b9BRnqTpcKorrXkN3VrOuksDgQKT1JubWdpTov1RPJy495WJFSBAbDYgq9tb4v+IU4u8BxSCWEM7yvqiOoCOqsliO3EzGen+6xzeNycSS8104580qUHfpMEPll7EtnLbRGRZFYB2Px7b1JRmwlO3M3xue7BbxGSuyq+ErTMlWptVgPv52jheviBm2Cmiy6HavHS5sDC0ZJISMA+iO2B7vyXwcMQVNndLvUSvzEq90hQZjscoLsasWfl16ZRXcTiW5SYBdKOeHUeVvXpv0HOFaKwUJUmoS3qVcvFCKFOoFokPohRhJZb0A7YJet1nfKiHjKLn8iZkvVv+SZaUsfKOTk6nuEyG2B6fB+qQ4SFKBpwXDx5WutbMwT1W0RgTwqiXSlw9tWYEgSFgSZP8lLPVatpS7H3MV0jNyjgbwu0LuXk54NCCCbcc4Nti6fYmcVrsm6.q0Bl9T6niN3jNoSZAy1ZsCPATrgICLvX3TeFBFVN0qSgtJvS9zORrMTXYr7poi.3DbfarHbh+oY3Eb3yv3yBRk.WETrnKuymVdJkdybi6rC1TA0dTK8UiZqo.1UIAu9sVhmywMMiOYPZ.DRYAclC9J+tTbqyLDm6SFrzh3dq1Qv9PelZB9r+gpr47SvwLnfgK4Yslop3xP4gu7kMDuieVOLUUECjWDiTekD6MYSpGuTGy04MLfxUUryIgmwIYw6742fC9fMfhJjCK0L8q2KlC48zdetvm7SayZEUVgxKdpq2OBNe.gMQ4f7POROb8r8emRnJ79TqA7e9BBHBID0Y68IlioodPa4WzfDAidWLnNCTKOzT3wWi+VFMwtlPk2Cr6unkhGadRneBMx6nCqKbgR.hFNbrckm2tgCW9NGkM4mFVmOr+9ry9RJzcgJSPxRywwASy4OL4LuD5A4e0G9ge3vjq99amwq.DSVv8m5X9mzfIqnX5MlByCyF72G5l11TsREt268dHko2VJZo3G0KTYLDvrMf23c4PpKIGWvIlmQlz0WqUHmM7VN4Y3+4OtM9I2YC1PWl6UuLeodbrX8BRSCAOxjNbAGaVt3CuGJUIHpS6ERW6oaK95+hh7N9tiPu4DLlUbIkWsLN2Sm2P.6rnhh6HK+vW+fzWdyP+GXrJBVe2U3kr9g4R+2FiBYLniVVBlCj9P6hPfsK8iECHD99DxjJPBu2KIMefKIE46wBF0FoTzhGJExrDJLanFiHhHxBcDMesyUygRvAeI76QEJj6Uqvg43b+uEDk1hDh.eOfWa+siWEo7IYUh3Lpglx1.+LklFIbnV5AERDcRcKDn0VgWqRqGqehvIg.ILhOOD1F5GK34sPqADTmBTFBDMaxEYzjuzvame5jEYiYR01Z58.ACRmNMFsZIZMLuD5FFF333v1111Vz5TKUqwkBurdUkJCgvrW.uTZpvzjFMpvvCOLoLEjxZoo82SvP.EKq3s+cqxQOTJNzArY3Y7V+3IpBC0kh+tyQvE9klhGtrftyZrj5LXKWq0ngPvDkcoubF72e98QJKASUMJNT2eO17+bmU3se0iiMRLjFrb57oKWyCB+08bCcI3l+SU38bsSx+5Ke.x0vfpM8lOlnnhWzo2CenQj7A9gSR9zlXNOKQz9aeHAKNPH.WWEO5vJN5Mavm9smky6YlBlQgZJIJChz5MNyq247YMhhg5QZWGyDyATv9bigj2glzVqTADz9oJU8ld2ty6SrITZIEEeIGh37DgGNnNBpRgvWvCcuZWi6tUhXkJxb6Q9sllI38mKBm.BpCYv+pMX1MU0iINf9fbtF4dsTP+vwEQtr7oNtCky51+y3ZHH6BPVtZ.K3ZnKDBxjIyxUeY+FJEjNsKFFsjvoUJLLLHc5TXarxQnCvF5Ad3Ib3sc0iy095WGExXPoZduLerhRNmSpKthWnh21UONck2B60.t9dSWE0bU7wdACvwdv4Xjw8168RkhgJXwiLRCdCe6wnoDVeA6Usdz99B1bOB9p+pRbBaHEu0mU2zXbGj.N9Acl2+yoWtyc0jq52MKG5f1qYV5g0Jvv.JUQwniq3k7zs4y+NyR+awvyo2bvSiUkG4jRSkzXVs1PEkKwmGnS1EPNqy26qnYnYrC4QCqx.Fe8UIOh.VooJptygGXG9Pc5CxQ4BUj4pUDYt9.wLD9ZUKEwnRCLDgBeM4C2+c5CVkujNdye3O+EN90DDPWfl3lrP63gCU8Al+XSFYzekPfndCNt95l2vF5mq3QGlCKa51Vsz2avpawQZAy069BdPekFREr4ts3Ge2U3C8imhb4Mw1L5bklwk254zEupSuSdrIV8GzYD.aeJGd8OkB7RexEXpocB0zHeJCD.u6qcRdnwax5WEDE3VrfskfdyYvG35lja7tpP+goaUufNiTBe9Koe15lRwi83v3TP6LLMfQlRw3yn3i75RyU8Omm9WmAxcHQ5R3aSU3S.1J4UHKmHjxjnCEUFsWZ4UCZlNVHh6acBHXakomjUDBBKqdcERt6S3IBx5YgMazm7JmJp3F5uKMfnmHAVBJe.YpHx75Q8Cg120UqOHPx3ao.sIM8wPvHQOsoqsFA61bWPcDtjAsTWJEfTxaeSCvlxjhhsw9J1dCVaQnOGjBsSDiFBX8Er3S7yllu2ucV5sGqPSbUtgDWGEehWTebhaNM6X5UuuL2P.6XFGNkCJM+COudnYcIM7CqkFBnytL4S9yllq4ONKGTaVlSaoFJEzUVCZ5Buwuy3riQaFKcqN5LNzW2V7kurAIepf8o+JcuNAFB3gFVR9TvO5Cmi+52QVnrB4XROhNQKbN9HfLJlkzg3DKZjd5ZKqut2AlT26+GPxF0hAZBGq8HhLVDrNxhHNTQ.Yr10oWW58ifuozNuJtqnGVGZ71ZCOU7Inv5OR.C8wZ30nux75xYDJrPf4BZoQ0+VPP0Quc0ujlMYcE5fW055iwZ3rplTb0beeOiVV+mUZnvKrfl1Rve40LN2+iUmg51L7k4iWxkd61hO4E0GB7BWrq1dWtP.EqIIkofO0KpO5oKKlnrKBgWviYfdr3WcuU4e35mlA5vbIIg4ztifHJ38ORCdiemwAEzUtnzs5nS5voczY4S9h5ioqJ8Vm8U5N8iSQv79CtcImvlM3l9rcvE77SA6ThrhJLNoGxPqyuDpacKu8QDm.TujQZAqoOsHhVMx5wJc6PGVsAVGHpFzNYnG1E8hQkREu7AZNqS.qmZT0znNtl4sLosaj2ZZ7G6b9BqLOZPieOSELlCtlfNbrx2hI1Qi3tEnG64819fRdkC0K8YaQk8fCf2Ni0TD5yoI2Cr+TaBjJXfNLYGS6xa4+bbp2PQW4L82kHBlXRGd5mXddmOitYjocaKDDYeAtRXrht7AN+d3LO97LdrfGiIEm0k200NAkaHCibZOdDdQTPatt6nL+0+vIIamlj1Ou6pTvLS3vq5rKva+o0E6bJmUcOGrV.BA3HgGd6tbAmlE2zWnCNpiyD0ipYhcesgUJeMmE5DbADkQpUFxWFbiVCQ457vJHbEviY1Ycsv00JWSPBggVePWilvxE2bAdQmN+kIvuL5QpMPirW2L7gmq0wRv.s0DjZbgCDsdb8kmX2L6gHZL0pF+gWiBcARhD1ZtfeAL.Z5vg2Udd18VfwZ3rpU.50VD5yA6vbJv2JLjJ3f50he58VkOvOZRxly.K+0S2QB0l0k2+ytGN8CKypp0Q0P.O5jM44t077dO2tobQGb8E101DRm0f+lqaR9UOTM13pvXz9hMLEv551hO1OYZt5asH8zuWvhPHfpNRpWVx+7KrOdZGUV11pnmCVKffXw911tKupmUJ9wex7zU+Bj6T5SPK7WKbzsJbL34WWZgFUcBRgPyIwioie3GDBceCy++Kz38TQZVqmCxEAmRyZAQaKMcqCDQJpaUgHtYMB0Vz3NPnfVEpHnODTPcg.T9ZhqhEQcTg8Yz0ZVqD5BvD8JCQ3br2WUwJarkOP2Tsh4XLo.kTAVl7BGnajvpVGiaMEg9bi1y2BJv6k4elabFttaeV5qmHmiZ5JtjKuAehKpORaInXs1eSuaHfQK4E+0+Tu39.CnTMYnWs2aOVbM+1R7E+EEYCcaknwIdulIeJA4SI3sb0iyc+P0XvdiVO8oJ6hcZC9Lu39o2bFLYEY6jwlVyBCATothcLrh20KIM+aej7fg.4HJuSFyltd+SDuk2dJOf+NP653zWAl7UqQEdNtUjyzEP7JBIO00HF.gQbMX8zv1ur5jrZZdGrl4Z8ZzoJCzoNnshDFItxQ5BdnIgQLgQBcGdMAa.89k9eZYrsPgfTgBcDWPDZ43s91jVTiKTq9f+UiIW+FnqKOst6jiHaZJ4r5z43VSQnuZx7sAuL2xTv66GLIiMoC82QTRbY7Ic3LNtbb4ma2L1Lts0ZyJ.p0Twr0k7O+B5iCaSoYjoiR5JqqfEOxtZvk+8mjzVBxZmvJE.oBFrSSFeVI+EeqwnREW5uSs0SeJGNgCKC+sO6dXpxt331F+fvZ.XHfx0UrqQk728JSyG+CjCpqPNkDLATAjcwMGc.4sRDmfIPyyVIiiz9TE8WnF2QZepzpifFQoUWs5DcZMZKZ0Frj.d+aXc6KDfRuBCIv0dVSivUz53KPCZQXqDIHg+.IHX1nqEdr9JQVpHTqe84JgWeM1S+56mODDKJ7zpY4EZGS2zE5c.GW5MaZNkNywrtqN0QesCgt98RMD4MjsePpf0Uvj6ZmM3u45lDqzFdqiJdqEc0htb4mW2b1GU11dSuuiIc3McVE3ROiNY5IaFaKpAv6weKpMXmO9YKps2BoBN3ds3W+P03se0SfUJCxY64eAJETbZGdyO8t3heBcjX58kPDnY9vio3i7pyvey6LqWHbsnmyuExtJHbcv0IWi8Q+xpqWHLWuKJ5.h.hIsKRKht6axZ8e73qkpQz0FjiyaUrhfXytRqCuaaGLif9QjdupXBtDoMqRL2icQfSt4exf0kWeIGBI2aQ3GsHtCPbe4O5yQkWsalOWWnAuAnP6dl+EEM2EI4Rj.UVlbpcli5x1eqhNWXOls0VMg4jPeYuWruAkB1P2V7Ut0R7LOpr7hN8NYjwZhPHXlptrtds4SbQ8w4941EyT02QxVo6zZvP.aaJGdBGbZ9nO+9volWp.0v2zdc1kIepqeZ9t+wY4f5IYcyWHro9r3qbKE4LNzL7peFcQsQZBBnhuCDdEO+d42ss5L1rtzeGlK6VjpcNzsdf12DBnRCXWiCezWcZdeu8rvLJjkUZDcAskHxDxAD2QrN6FQW32Uw+bz4iHWziYJfVnpNTHBzHLas9iqQsHHOrFZ8.zBUqwYhCyeKZyGH.UPrZ2Wo1fsYav56qTpHqD32VgZsGztsNtTQMuPuQUZscriGDU4heON161aM56nzDZQ6zAeNzV.AEPKlzehcjkTRIkq2XdCvWqT+Vv11dAi5i6wrsViFycJrb4.6KSZUq4hiiKsRgqTRpWulm1NqfQJtEBFB.GW9K+O2Im7F1.aYf7LdYoWb9dJGNkiJKu2ysadeW8vX1EwhkuqjujUfWvPIkYZ9rWb+zUASFd7lgd09PcI3mc6Sxe82aXxa.Ma3Pikwta6LAzbACAXiKuiq5w3DWmjmvgVfQJ58bvHEc3P2XJ9nWXe7R+Z6.S2pjxZu2.a6MyEqFyzYKF0kP.MbfcMoEevWZJdeu0zvzRjUHbaj4qPte4CVk43+ePm3Pnocc.ZQqPo+wBUcNn1ZggCsntt1V1Jzo6BYGEZdIuu109UuGQpHTq6XbigBjnogquZ95jqJs5R0x4f.sgiRYogZU6eA5Iel3by9kNlxyhnIcsiqyy2pYPhBmrQRSnzlu85y9kIb5VEtCi.E35vgmOCGyf8yLtRxaHZKdVN3XkJUBGGm4MdtOuD5RoDKKKV25VGFFFysGju.ctkxzQ4bgNqBE5z.oqS3wbccIc5zbHGxg3EdXW.B8U5wxQJfGZRIes6NM+COKWrq3hiRfTAUK5v+2mRdtkcbH7HylkAyO2ViX4r+5e.dzIc4s9DJyYbj1L9jQaQsNSIooJGeiGXib3GyfrotmeSsub+rR6b8ZHfGcJE+ma2jmvQLMYMqRUGCDBASMkCW5Imh69hNRtgczGGT2Bj9Sp6o5scLVt2NzmBV+3GcTAu8stKt7Ww3PI7Hy0HrzWdVE9Zlh+47YWCLGd3nJl4c0n8aQCTOdEecF8IwBMtrHpFUgEHRSTc5+.x3vXztPq7spnilxrgwLcUT1PKnC507ZBTnTgIWI8.gmn0JNnK0hF3JBL+t.kz+Y.sjnRrLEmeMqDQof0viqS36OeDz+zlU0krHTnFhU69EQfWazvgMkNEO0sdB7vXRA+kAXk9Y0fjk1se62N0qWeemP200kb4xwQezG8dU5SceQanE6xpTP2MLnyBShqyL348JAD5YYKGzfHUPJSk10rx0emqxJDPW8J3m7XN7DuiI44ervny3c7YpJYcEf22ypW9q944niLRVHkyVN5udYOL3YcrBdyOUEkJUCWoABg2VTKWFAe3edC9eGMKG1PoPtHkMvVLKq94aWddPHf9Sav07GZvFEyxa8okh5S4ooWcGE0ZBW9SOC+4ePM9y6pAC56HkKG820hmSHfGbWJtzyxhK+0TFpHPVF+XJNQZ1oaxWk.gtJlZDFAZHG4.WAZnpoudnRmdGKhCJPxgn.RiPJhYN+VgtrAwCqqBBcfOBzd0+35jS9L+BsJS6WEDr16QIOkHgKD980XxmnkzVzqS+os4IlrqqosPa9SnMWIAQTVoSevGDm4iMoD1nw0oOFAulPAgg7VCCOmR99tOt0olkAsm+TU5JwytRobdyE5vBPnaaaSsZ03Vu0acdu38mN0hEZsMFaVWdVc0O1GS2PcOgORkJEkmcVt0a8OiqDxre3c0KmiECALVYEumGMMOg255Y8cYvDy5Yx0oqZvYrtYXckuet5atLGTe6aqG8h83nVSEyTSxG7jGBgQWTwwv2xgJ5sGatleyr7gu1goPJWFyNdp.8.EqDOesb1FBgWz16CrsL7D2zF4zO7LLxjdKkwLMLXnLU3EuwI3R+IiRmoMVPKOsPsyABVIzXYwtMMMfcLphm3QYveyKoCnYZjULPXn6vW9DXsjGSC3EzI+h5nZeKT613ZnqBHxBzxTSgx.p4nlW2z9Qsk97QHunVEES6XAdbhful390m.DFJPFXt.MMyiQtG0OCsIP7grll5QBBnagfX28BGJpHALTwy5bQBDnh9W8qMFgevgDs1oiW.kVeKbMEDgyIBAfgfLMavzkJR9zo3.AA4B8EqmcWnbgNrWrF5sqqCYqSPAdlYralgBcYfj8uIU8qY43kXqq.7mGtAe7+mo4S+RG.6JRbTdA4BxYwe842O+hGxgxNJ5L8JylTPHfcTrIu9yrGdNmR2L0Lt9+dSQ+cZxCsyFb4e+IHssAckOwQ31SXtdtJeNOmM7c+8Fmq+Mud5JqIyTUhPnXhRvK9LFj21iI3SeiyvAWvdAWBlDr6vP.COshC8fDbs+C4oqMZhbTIXn6hZZZaqw6D+kLBeR6cWizHE.8EPvfnTApF+YnF3ZZHGkmx0OVPU60YTguvSSqYMq.nqHaXcAwV+ZctwnpxuSEH3huEJBIZCB9KZKhtP6RiL+MQl1OfSVqOHP4aNcsIL85g3GWqCra2BBgr0qIR7HQvgCH08aCkul+dNcuW82W5TXXZgk0pK+FeAYDDBAFFFs8+IDd+0JBd9zPHvPrXzNhk7+PHXccYwUdak3lu6Jza2VguLYrhtbRGVVdimUWLQY4xR+o0+7rVfhCtuT7ddl8fzAZ3uZLoLEXZavG9+ZJdvwZxPcZ5KMbxeK3874.RErots3VdvZ7Qt9oHSKQSvl0k7tNmt43VeJFurKyS0jf4.BATrpGi227ckkMdTlnFSFmXfHEBC3NhIzjJdgZc5WHz3jBX6B757fxP.AmX2qA8PrZfRjAWtPPrKye6eEUtVjpnkdenkyEnujx9J7Jn00AO7ZzTaVOvrEyVEZL6gZ7huP.hn9HBeAFBYYaoeFdnVyJcAkqkNdPePDct3VYQEM9zm+1sVv67oMhezUKXsy9PedP3C4qzcj8AjKsfJMTbE+jooYCI4R48jmTA0JK4M+TKvor4zL1rt61KRVpgTASUwk25YWfCeSoX7RdjIJkhd51h+q+2xbU+gxrgtSzL+.EBf00kEelapH+W+wxzWWVgqy9jkcYiCXy69b5lZMUIAbl8A33BiMshO9qIMmwyvFFQyaz0Iw2ctvvupSVGvotaaY6VcPrPxpn.thtI20478VKdgtB+w5JdqGsVRXM1KBTwhk6dcif+q0QRv3Qy10AD8wD9Hx867laD6F4rtO8GW1kn.YSnyDtfPy1BwxTZANhXHSr1jeP4IR.G89dKyOstE3BquvpY0oDxqoHz28UGHLpKupBJkW1355umJ7MtsRzYWlgVZZlptzeOV7tNmtogihlKirlBALbIGNyCMCutyr.UJ458hGEzYFCJW1kO1OYZjJ09k+Jjf3PgWzDTofO30MISLiCcqkHeltnKurSqCd9aMO6bljzr5dCLDv1FQxq5br4M9xy.Sp71o.ZproSiIT5rzZuiQ+XDmaVEpjqRulHnzgKctPud7ESP+bw6LDt22CZWQT.UMj5Wn0oDZu+KTqYs9TPeTi7MLPvP.IueNSm.Rdsuq0uBpuPN0vNg13K1Ki0duUr4XQn.BAlCuUIpZU3icS3IcE3DZGu01kVOtOQuBbaSWp48DVaQnuR2AVDgkofNRavm3mMC6ZzlzSGFQuHeFWtzSoCtvSHO6ZY7E40a5MC+ddlcSmcXFFq1EBHWAS9p2RIto+bUVeAqEUmf6wyHHZB962Vc9z+7YHcVCL8+Ua8ldgG1+pysaFnCyUEw7+URXHfcMkjiYKF7+2aIKHAYUcxAeyxpwNqqOoNYZriEvt0B4gB+04NjqVmQKN4ZT8o2hwMmuWrde9TPIPKXORo.sx8z1d2aqXZWG1RszezJi2uyizRWOdyGLZB+rlV65q4f.7sbf905IDhmPLsn4bPUDPpGHPQX6ozlWh2ehrhud8ohMlCSZLsNlQQI2UmBHulhPuU38aLwpx0WTo7Ryp26Navm7mOC1YLB2pZ0bjHLf2yyrK5MmAkpuzG2gEBXmEc3hO4N3BOo7L0zNHDduvp+NL4g2dC9T23LzcNiUk+PncGCUvju3unH+5+TU5ufYno2GqnKOgCKCu4mZAFa1Ueoa2kSTsghFMgu3aJK8rECTSIiogWHutV7LOPi5.MmiHvizDN5cLgkHRC4PB3HaxqhcLzJOw0tLfzuEyLFnAuH7OkVlaSqOD6oAQjYvEZl.2++quN8AGOz42TZjkhngtH3yBu4fHBWchRg+40mS0LI.AySpntqe8Da71ZhnI9HadExYNuf3MztesJEEckXtJT730TD5yuVgq9tw.dO1MTWl7kukRba2eU5qKOysZHDLVQWNsiHKulmbmLZok90RuXUIqufEu6yoaPBM7WyVaSvHsfO9+yL7vi2jdyYlPprDfNRavLUk7QugowwQQV+XjuBnZEWdymcW7jOjLLbwUmZVrTCg.14nJd6OuTb1mqMLpTeaUGy73gJ+4yM58O9F0tEE9hqWndCFwIozHAC5Lwz8VEQNFWaQQKlON9ZAqhniiZTcSvKhrwfNgcqZtFywLU5o6UhsV3J8NiP6eDs5.YBsygF4bKBEXHH9CqhHqLDTt.AghAMS4q43Bwhs65RAE6XwOk220DZRH.ojQZzDyUg+NZsEg9bbf4xxKqlPGoMnXMIWwOYZjtDloxjJndUIu0mVWbBav2SmWB6GiOqKugyr.a8PR6I.gva+U1a2Vbi2UE95+5Rr9tRRKpKUPp7h4++36pBW4upDEJDEK2KVUR2cZx6+Y0MJTTqYxcAcXHfgmRxwbHF7gdMYfZJjNZEnExTcMP8dGuHj8VmjJllzsVAyysfn0AWWSd++zh+36lSb4ahf.M1iT3MRz.AAZpq7LytNINpvsGVfvIAztABbn6865csf+mPibMvJQTDOJF...B.IQTPTAQBpnaMgHChGs+80GPANymJruBDEy70KmH93b2Hi0DEKV4lSzx4TwuRuOJnbSGFqgC1qBMs6ZJB84Dq9tmDCdaeIS9g2YE91+lRTnayvsw1zUbYCCXye4SuapzPsj3HGBgWdN+T1RZdKO0BTqrL72A4SaPy5R9GugootiJza7SvRCLMfNy3YMjGc3FzmleUL4LN7bNoN3k+D6jcLcRFYSGMcgJUfq3kmgN1hIpozzNskxFxWHz070SO2nzGJ6llpQqBsOQkt1hAGJ7iJBWbcctDfv0KV2x4AMZH6ZDIXfI2AcAQzW9ffAkvuZhLzNglUWa08MzpGswU35MKhOzBH4C19YsJXPj.PQiMcOnW2r7wz.qER6VEzPedOLuoGV1nk2HlwKzliP3MVCi3eAcTSAaqdSlnoColmvqZ6LV80iW.LW7Y5+jb0JrLEjyVv+zOcZFeBG5NWzKxKNiKu7SqCN+iM2RhmN2zUQCWEuqmQ2zaOVLc0fsoFzQWVbk+pRbC2aE13BDq1SvhCTJnu7l7mFsA+y+zYvJUzdSuoKHap3u575lCtO6j8ltOLDv1FUxK7Ls3Bu.MSsCQw7buuAPXnaM.QuSQQXxMAesb0I1zI5CzRVqd1MEtCIFUDYI6HsnUFywE3KHP.wutgrCVWdu0SWEwQ523AZOqBc.MMhQcxUcAUZgbN9xADePEZt6v9WjvDdsSjfNAB1D2GChpVk1WB7rdOGLTEqdiYYCEQj3sH0khn6i5AdG8ga3f2xjGnZc1Q8ljcUnTwKogAmkynLWrnZm1SEAOp5s8pVd6OKlXfNDbGaqFe5e9T7geQ8iQUugXklRJzgEu2mY27KevpLaM2EssLlg.1wTN7BOoN4+yo1ASOcTxWouNLX66pF+S2vjjOEHTJjswQVvkZrbNtGHO7Uuko3Yezo34bxcxvSIwP.iWxkCcio3xO2t4M8eLJcX6E1fWLvJ880821uVCEosM4u+xx.oEnlT5oYVPrUW2z0hcmTKL.w.DyQsDwUJTemWMWD4dQir.l7fstVDIcHIjt5w5jqADkFQJ2uaMll86iwKqBMR.Al2KroBH1BB4q9Did9ydT.jIf72Kx1ozjfHXdHxhAdSUQlXHPA.zlyDwpXk1DsV5lQ6BCD7YN0KKVrfWehIZtt0k3P.9oF1ffLiBg+j6sO9T3L6rTSlYE8494psykKGlllya+ZdIzEBAtttToRk85XQ6dSYVJtFkBpV0glNcRL0R7Wm250qSsFRLU66FjX4ZLsmtNg.5oCAetabJddGWZNsCqivTq43y3xYczY4Ud5E3S+ylhCp642uO2W5ikZnn+Ns48dtcCFDlmyMMDXkRwm3mNMOvHM4fGzNRB34ndaWlCWs1VsdM4EPUkKexeQcdZGUGzYZnbC.ALaQWdcmQGbc2SctwGnAGTO6aVNYgeFbtO29y0rbTeFB3AFVva343vw+DEv3JOMeCzliHxNuWxKzHZzzHTi6IhyskXztHp757SgZASvGhaSfvHeVXLFW0hMu81K7ZgPFB63ADlDz+D9wq8fXQu.ccbBzPWeI.7JleTcyOqqEypDhnLfVXreuURce9gXbLAyqgFUOZLoTsHLjvW..cR2fQjHr.sHriFyrNBH00SmbwjJyuXgBin0tRI33Ro0uYNwNGhAmiLf095yl6oeuu2VeFFFHkRdvG7AoRkJyaHocdIza1rI4xkist0shooIR4tu0n1eeQ3h80qTvz0MXiapDMaTBTd1grYiljKWVdxm9oSMWAoMUy40ef19KWWuogfsMCb8i5xoc3SfsPhix.WI3TqIu4ytGdP4ghvNKYL2yaksEp8MDBdrhvEeXSxoskxL1LtXHDHUJFLmK2+XE39L1JW34CYm+j+yb1lARWtZa9uc55ehBA6njfq6QmhK4HmfYq6EFYKWWRG1RthKZ8b4255oizFjwJ5k+6sXwRyjUx5otiAa7PT7AtzG.pOMxl19qapV8pQ1FOnwnqVaDefdl8LRPffuOGZRFV+5RE3SRpoMYHgnvSTAjAllNHRjqhHnC32BhQ752a0kEPpI7gJPfEstSPGWFowtPo8boRSrEAZ82ngSz0EkxWCDdH9VnSyJFAyOZFmPm.V2ZAgoaUMM4CpmVLgQ38f.gy1ssjPXeOHrzJhpWEfofoq6viZlhMzadxMmlCXk4YZCCCbbb1ikauxj6y2Kd1SIuk46bK1oVNkBpVSfSSmHIAABzPuZ0JToo.WKUKWW6Peee6ZrUB9F+xFbh4c34eRoYjo7737Ip.Gw5L3b1bY9L+xoXK8H1MMy1WZqh0jzadSt3iwhFM8pKg.xYKPgAejqeBt2GqDaVKmbumZq8kzY5d64VouerRUeBATpN7AtWWNtWcWb7aHMCWzaIQFuhIG+Fc3Il993J9ok3vGvbNuGs+f8mWlsudMKFkWHfGXmRdiWfMCbXofwsakKp0JI90GRtFmSNjOz2r0A79QQWMzzNUqwBHZCHr03RB3UQDQ7FX16V5jQlJNj.TigtUMbEw0rNlvIZVdHndh327ITCNUnIGB9ldbuKpmIBZOMEmU9ZKqK7htl0QBCE8bsf.qcnErY0sFf17ezDsPuZieSHT69f4HgVBgQa5McJt0QFmq92beLjs4db4p16Rs2QV2dw345rYyhss89tI2CRep21sca60lb+.AGH0uBXrhN7rGbHrN0gf5NfBrssnVsJb6298yr0cIWpE1j6K0iw8FrGMQCJ1UQIeLJvy3H2H4SaPkFd2eban3b23z7wFc67a2lhBYLlGYLWXXHDryIZxe0EzCan60wnSKBWNqBcYw+wsVhu4MuSFHujGbhkV+prc3dBzd1ODn3QlRxU7Sfu0qdPRaInoK3pfFUU7FNcK912VE9Sa2g0WX40oEWomuZ3.oLT7ZeF++ydu4QaIG2044mHx7t9t22VsWRpJoRRVxVxRpjkj2Aa7FfWXqsg131M1rz.8vvReZlllS2zPOmgyYlgoogYltoaiw3ErwlAvzXrwxXYYjk0do8caopjp85s+t6Ylw7GYFYF48cuu066cWp364T068xLxH9Ew8lw2e+9EQ76mKnDn7fjbTdDLXqS3FCIeVQDYSY9qBi+mTD+lWKh+Iw86lZGnKTTMIHwBWHg+IgLLjDO0l4FCqUamvlj5mTd.HY86SjSCqai6j5JNbMJDlDHBCkGLKut3AI8OggOFhszVXpTPBYsvzM4l2KE6uw3VrxOFEm19byva.I9LXEkJrdBT7UmYIvMCEymcSM241IVOJFzUBckRgTJoToR8dIqGCkBpF3Gl32M5rJkBGojwFqHJ2f0jPeXAWdA3ddwF7Yu+k3m66aBpbAODBXlJAbcWYY9W7V1K+1eo4XeEyztgGqKrPs.t1CWfe92xdnYij2vJWPvry4wu2+v7TLeFFujcms2uwktKEegGZYdeu5h7Adck4LWHLuoOWEeNv9xyuy6cu7A+DmCkzgLCg6Z2MCD.mb1.9wdiY3nu1bvbI67a88gDi9LIBTQtmNjjNwUtoVSb8yGZZd7eztxBwmCbzDwIkQSBqzW2jKMkKlMaTcrMWKVpD4Lt6YHrjXkarEuQqDmP6AfXk.TIJIfBgTfJZ83MGufDh2j0V2PclDifSoYSjJIQj5s4w.Chdyyhe50A2n75wvTdjvvh9NswBiTzXEj4ZstbcodsF7MlcIlLiqg2AFtvnACWDZm7R0keeXGRBC3Ler6dQlYVOJmO4qdspEvG40VlWw9xv7U23gDVAgYSsO7qsDGdeYYNccnfhkb3Se+KyCchFrucXK9rnyHqqfLNB9c+pyyEl0ioLRdKKLuO+32VI9wtow3kmyaEFUMpB+fv82z+zumLPAApVXXQonMhrj4+impOdbRk7+qvzdc4TwVWKZ+4Mz.HIgsn4YLrVLcil1BashBBs6nitioGDDsqvQZ2ImP2pRE05Rcn8zD+.qfJSzg4O065dsWMDfx3LrG1NIRTr7JDoNg.5wfze2LZLIN33DVOlxsvbvs89MQOSpHLmxXvy7mQiNYc3qNyR7jUpyj5yB5PHFsHz6vEDhU5cngcnHL9o+fuTS9LOvxTrTRTCatpAb3CjkOxqqLyVciG83lsZ.W+AyxG91JSipAwiciWPxYNeK9iu6EY7BxgRsWGEgRA6qrCO7K0feuu9BjyHV5WuU.HD7q9Vmfx4CWZlKFvBUTbzqxgevayElOI.oBDQDoLboc3k0DNIYuLR9s1Izh3Jh4CfHxGQpnL2p3K7HqQaKdmaHGgWMw01ZEOVwJqaXIoPPRCaNuWRmwPtHoL5FUjXAqVIBy.XSrE1wsSRmRuo4Dhjw6TYxMcEFO.R5+YVaF8Yy9ZJ8dhGnL+PDiqQrbkh.ORymDkMB2Lo34ym+LyiRwPcPYZjhPuylgOD+oyp.AgQMrO92dIN84aw3ER9nrQ0.9v2VYt9CjkY1fj5KVOf+4u1xbI6ICyWKw577iI4SceKyidplrqwrwq8AIn.163N7GcWKxc+z0XOS3PPz9dY14830eME3CdKk3LK3Mh91PZL+RJdmG0kbWpDppckLo7fsImjIQdaa08X9hjwMCyrMH6SYg3JHtwnDFeBD+qQVfZHansn2jPJVvCIM00n4uo0zHt+pSVJpDxMAZKoSK+ItvO78dswPwwskXhVUJhxDClBuXhQTIBhYlfyfgm1dzUPfGGVXMZOU6EJkQaZKyijk3xE0lpU1Njykma9Jb6yrD6I6vc3qdjhPuSePjRQtQHn.1UQGdrS0jO88uLEhhdbP3Zfev8lgO5quLKTKXc00E.yVwma7RxxO4sVhZFVmOQQIuzYawm3dVhoJLLlChF8Q4nj2x+GesnX9ua3mRsB.7T7+z2yDbvIcYw5a+Ylu9IZ4qnXA36+03FldTi1fVwV9oIEnciFUIb4w7xFlhKRQODS.tBificDfISng.psJOsGiiQBYaRCIhuio3IV4+KZ6gL6qoBjKZAVEUzTpRzFAYjk2XLdkpdSW9TcKQ5eGigiXWxuBYNs06Bim0Dq0bZII0EieZ9vQZzID.R3SbxY4bMZQQmgaJwgaouMXnHbLFkIeT.STPxe58tDm3rsXxhIebVqR.enasL27kkiKr7ZaktBX4FJ9nu9xr+ckgEqkLwetBR9j26R7TmoISUbysy4sX6EAJ3Rlvgu7SVk+5GYYlXBWzoX0KrnOW2UjiepWWYtvx98aQcaEUpAupC4va3UJgkC2bWlDcJZiyPQ5cetl3osMjS35tGsauMddM4ph1MtOITvnmWRXvDZZ4c6xGI2Js0+oXYUI68Mi2H01kZprR35iGx5lxs8pjXutfDYRf1J7UlBTS0EaeREQ6afNy0Y2TeJCW2a5t7XsWTFxufjPimJodL+7BymkzJjzAYL4CNEj0gKrPM9rmdd1cVWF1U2cjgPuSj4we4aDlUepBRdpyzhO48tD4Lb69R0CXO6xkel2v3TooZU2.aBBylZulCkiehWSIpZDGvmrnju6oaxm79VJbCWs81crXKfLNgTF+eemKRkJ9LVzo5vWAd0B3m+MMNuh8kg41D6shgEL2xJt0WgCY2mCT2v0zFbBZ2MqLbCMjLOQJRnjeMljINfjDy5jPykZbUSPpzzXpT0ULekt3wDbF6XdQxZQqepXRaQBIo1BbSmBnh+61NFdhj51DwNtOpOJTZk.Rq1fH9Y0JUXXAbJYRjLFn6WFqO9JzdwnURRZJIZ+j1CAlD3FL3ldEnMS6SkM4ziGtR9idoY3Ep1fwGh2LbZLxPnCc2k6c6diBPALUQIep6eI9NmpYZqzW1m2+QGia9xxxrU6tkYAJnVqPqy28TtrT8jQqr4B8.vycduT0sECdPAruwc4Ne957Yu+kozDIYluYqDvks+L7y8FGm4WmKCyvF7C.WG30dMNPVQXJR0riZL+9JiwZhz+sgmZ0zYImmbi06VaVt9GQS3Da4uJJfqD21oYVSERTiusHUQia+nJt8nUWrBJwxgQJI0r2YjfTZ2xVkLrFhCBMnRYkchhOpDqbIQlSz.JsE2ob+tdcrSo4DopuziO5wzn6na+XWla77s6cCgY+0rZMF7x4xYluJ+2OwLr6g70NWiQpYn6TFUSqM6nLlnfjm+7d7It2kHaNCqzanX2S6x6+nkV00Nctp9bSWZV9QtwwRYc9TEk7LmrAel6eY1kwZzawfKbDPwrB9ubWgGowIJHiIapsb.ejWWYt0CkiyuNVFlgM34qX5xBN5U5.0BZ2.MRwBEQJD6MWzIvIsixMNXTs+89NXIexF8RkpLg0qHN9k2dBgQkxe+FsqgnJDIVjmTLiLUll3UnRyyYHiZK2iqTi1HVkACqoUwRhAgZjrj1A3ZkURNRbJQmlI1340xY6e9D0gTIcp31H9it1TFItsDIJAY5RVcXjMAZOKH.GA+9e2yywq0hIFArNGF0HzuHkvQofoKJ4y9.KyS+xMXJCKoaUKfezabLtxcmgk5.otfvc19OxMNF6cZWVtQhkKYxJ3O4dVhWXFuT6hdKFbgBXOkb3gNQC9iu6kHeIY77YKVKfom1ke1233TaMVFlgAnC8z5+0nEbvoEbk6WBsnMKGiHnLLiaEJznIFCM8NoLQb0JU55KrzwBSpJzrnorxEM2eaxUzeHTFazNwJ8vnoAJIACFc4z+Q6+dRMDS9lpOaLDHRd+2zX1zOSTRjQRjmETsUVS42z03I+HkBF.lt+OlJOdyNHhItaW+rTcQooaUhHtMeBS4HuKO9YWj+aGeF1WVG7a66RCp+asvZFK26TRYYyhsqTQmRA9ddgwq5NX1gefO99934sytkG1IS8dEbfuyoqym89mme6e38BUCu9B0B3ptjr7de0E42+qNC4mN85fubi.trIyvO5MVhVMRFelrnjG63U4ybOyR4LJZzn6ic8iTLX+JsFNLzWEBHmHf+y29Y38cctbU6uDyF44kpK4y+jiVh+n6ZdN1KrH6orCc7klsYrcDZXmYVedyuphL1TRnUDIppMBJgwb9hv+HdCfaZ0NsQJ2tE3PaVLa7Ckw85jhCPGcIdHImH891R2zwJiHhyzYhHK70qpdhK6M5OFjZJQReLzy25NbR+M7JFZxn6WJMopQbPOtpzssJY+BzVcGNtpydZFiIwtPPEa4tdA+SzQJsa7C6a55wPSByMPPpAvH+MD4segTBMaxu4SbRlqQSNbgr36uyrYQ2peuWJkqZcrlD585Ti31U8l2KCtttol7KL70JnP97THHfh45rUlaVYcmtOtZ2W.HJn3e7jtbtEBXrrgoTy.EnZEvO9MWlu3SKIeFGxE8otT.0mKf2+qwkq8.NbgkBIsUJHSV3NdQWZlaObU6a02LbaG8y9wX6nlrd74Tb6mLKW6ga.KG.BIKUWw9lRvOyadu76k8Pb3oc6nBCq2Id5WkqSkcWy3xsciK.YmAVzMbReCx.curStZNlDUkXUb7CZB88MIsiuVDgWT8oIXS61dMwRxl0SIzjjpnxm17UC62SEVX0q2c7mehHh23mRf1G4JyNWPDYtxLPnFQkaxCaXRbrhC59dGBupgbyZkMh0ZnskUncitDwCTlWVY9gf4WOEgKggv3QWQuH9OEFOejxFJE3BeqFkY1q9l3G6UpVyjvBz++dtTJw22mG4QdDVZokBCy4c.qZ5SsToRbzidTxjIyNhFLaEqeluoKWxkNKMaNC5zmpmmG4xkiWyMeyrPKGJrNRonaVzurXrcb1JB91mdF9gtpEY4FgZyM6R9baG1kOxa6p3NdohbfRgaJpVABNPSEenW+4wuUEBhF2JjQw4WPwiU4.bqGs.imweUIz2owfxX8FE6jxs.Xrojb6GuF+.WdENzjBlqV374KujGefWSYt+J6hStfhIxu9jwsR1xa6ttCTJFarrb38VEjJBBR3ZhcGs1JWSqoQ6PbCqliiO4wsdhwphHxLc1USkTDyfFSpHQWzCJLNOz5TwRHWiwF5x3WTQBe6GiZQpZQ2dJC41f7jj5PqrQrk5lxpd3IfDSi0bu5i2FJDAQJLHIkbsB9IS40n8z4i83OaZSNQQRBdI9dhT+tdYCPSrm3FgP0BTIOa5LCmBYdWN2hM3W6Iu.MxjCYxVLYa462ZuRrUqagPfuuOMa1DGmtud+ckP2wwgVsZwy9rO6pJPq2TH21YYT.WX4.d8ExSlqKOzJ7EWGGWZ0rIOwS9DLSEEkxIheApeJuaWkQHfytT.erYyx63vSSgLPcOE9HPlQxQKcR9+7AlkcOljrNvIlym260mmqeWSyhMbhpGX7Rt7o91U3O+e3QXekjq3k0Aw99NQYFjjk0SYTJEmY1.t4h6m+C+H6BY8Vn.p56xdGuIGX4GjO9e2br+c6tVuRjB86LoVmfe.b947oxsMNjoLBge764qHMjpIWhYsLiS3Qz.wjPQj4ZqbgXxbMDnuW6JMztGBDFRioYsIdGPawYJkChKmJlb0zSA5MDVJCgMjkDwQG7bDoaWh5.p1DasEvFDkwOtJxRYgNKpEIP5AIoBkudT1LOrqVIotDHPjHns+kQyA6f1tlhXku5z5kGeEEHyHAGI+u7Dmg664OGGLujy092MFfgPHHa1rHkce+L0UBcsI9m9zmdaQ3ZGa0IIN2hdToxtPJKBD5MAgTPPP.yM6bLyxdznKtbuWKK8ZrQjm7n3q+T03q+LE48bSiQsnjxwRUT7Vu5rbz86y256Tk8MtCUq5wOzqpLt4cnUUO.HmKznghO+CtH0qUilYc53j8CyiQa15Xq3N39ADBASNkOetGbY9oe8kYei6DkvdTzpgfO5adu74eTeloR.SLjejD87UTtLrqIxB9FAlDklfLBoL1Sk1J5HR63O5zVVig06FOttLIFUq2o2IJJjTXUp1NVI.Ua0QaVOGq7gHbOeoouRRGpIMkPDYgcLAWHcZbc2lrmZy3QLmdRNdeECUgBgvnfwFyqst1PfExP4wvf4n1REOHKTFeVgH5u0dy..YJ4OVYl3w+jnXmR+Ysf30xOd7V.TLCepG+r7IN9bbnIJhy.v6n8ZrpqgtPHHWtb6TxxlFJEjMmCRGmU7xfTHHa1LjIqjriHoO0UCY.NeEO9yenk48bCEw0Iz5kZsTr2c6xG51lju4247LWMAuwqZL9Ae0kY4nnGlRASVxg+9mnJ202sN6ehr33L58k9KlvTEc3YNSS9bO3x7u9cOEDk87lqZ.G4.Y4exQKwu6WcNlrvvcD.To.GGnTAL7gJIDdl7MBCxJCinSsjq5aJRe6zjSoetTBi4CnsfFULY4JpCcwMrRMlnjPxbymKQgkDoJ9LjqDqfvCDIyMJzo8Tc6l9rsaRvarJDgsfoNJwt+1PnDgqet1S.o8zQpQvjFHHocRF1RFyRjRL1HecZdov1vrth80Qob7bmYY9UdzSyTYcvUHZe3ej.iVLbc5Sn1UKcDGJBO1R29SWk68EpGlHUh560WNf22MLF23kjipy4w6+nkXhIchyBW5vX7ewwpvRMTjwRlOzCAP47R9L2+xb9K3w34i9PVA9MB3Ccqk3PS4xRqxoXXXAo91ppMR6nqESZmhnNhURasd70SegDiELaIQp1Qz97LwjcIgAUgw+hUtvjjFH7nZoE5zVvaRLFmuxM8pPzN7yLcsFGs4Dw+U7emZCnILdnnVwLotjtuGM9HLKHFwncCEaLDujgwP2uKDhTkIl31T90AmmXYWE2O0GeNylL0wfqnKsp0hO78cBVrU.SmczMhWNZPnmRyZiW.I02MunAExH3rK4yW3gp.YDwoCvkpGvd2sKuiqs.YF2genanHMMxY5SWTxibhF72+TUY2iMbawlEgPArqwb3Qd4F7EN1xgmK8nWLlsR.upKKG+v23Xgw6+g7WTRYzbpW7ixX4lS5a9OgJ9nXEd+HROg4SG86ltUN5pqX8t02pcARoaxnmSYx6jTGIhtwDaZhKCWNnshVeb2LqkU7tqHQZScF6i96U3jg36Y7rZkfDDtt2XR3G5h83UafjLrVrBGs2tZ4MVADU3lsyj3Nk+00JoXpnkJpHgZHID.xnO6DJjYc.GI+h26Kw8bgpbnhYF5i+BqFFMHziPW2XOC4STsQgdR7+lGqBuvoSBGrJBio2uiqs.+FuqI4vS6xBUSNpZxbR9KejJ7xy4EGGvsX3GRATLqjO88uLKrfOikK7Eh.EfmhOzsVl8U1YnNeoKDgYVsZMIl8ocZ23+us4CzjRwtk2zhZBe2P6BYUzEBsvVyHGyTmXEbpfmtw8Ho3wDjwtjlDdpXhWwJdtjzXZbuGMkdG+DLt7p3+zz6.B8FsSXHSI+Yptf4VaWHEw0cbrZW2bFdQPY7L5fPiYTs2bnKwyAIwv9Xp+3wIwJ7jfd7KNMsp.giDJ5xevwNMeruybbYkxNxajxH0r1cLzudQFYtFimWxyc9V7+2CWgLERBaqyUIfa5Rywuz26DrPsfXsUmnffScgV7W+nUYhg70S0hzPArmxNbOuPc9hOREFqbRLd+BK6ysdE43ce8iw4VZ30JcgPPSOEyubnUdwm..U3umvoDa1swO6TRUQjbVqigoaqay.BQ6kSEyLllNkztCVPhm.TwmdasiCVAmd69zOkxJ55QX3UgXi7SH.iod0CQlKLdztbKkGNzVOixfrVWqQd2HNptkPcqKpvTPZqeGmfYh+XwXDHZ4.hkEodbzP4rzCDwb9RAP4L7EepKvu7wNC6sXFxLr9k6M.FcHz6DCTx2wtnCBBI0+D26Rb7yzhwKjXUliDx5HngWxKR4y6vW3XU3IOcSlp3nQbM1hD3HgrtB9j26RTqR.EyF9AuezJt7gtsRLYAIMZMbpJmT.MZAyrjJLf129B2JHY2mCwF5ogoSbSH3Uod9z9clTVTKL96NYYqlf1HKmzdilPUY5kYwJJVjUtocEMlj3X5J9DBv1mITIRVVAMYc3XhBSQM7GpDitS5LFiOh3eMY7JQwmDipicKPZYo8Yj0WIB..f.PRDEDUNMhzsAZEJzZ2Xjvajpjqo+bchb7.u3B7Sd2uLimwgxYt3vHkQGBcVcWtewvGlsibtBVnV.u7bdjKZCtIDfWP34SWOgVNWAKW0m+GOVEy2CsXDBJEruxNbmOec9xOdEJaXk9rK4ya4pJv67UVfyMjlzVzGYqW5BAfuBoLcpJ0zlNyqq+ag9BlV5YZYrF5y1drw5hU72wbdFVlF6h61hRLwbi51KguxXSwosX0n+RHIqoSGzDzoqcMYZ6pEPJqpgztcOoNMxKcQVpqulY5QMQJWgpGQVZqhaS8uq2nao6CoyTboMt2PoASnL7HiPgX7L77mdYdu2wIvWA6MuyH85lahQJB81g9kpgwIn1pntW3DZ+FuyI4lurrLWstuKlCTgmmzW2kmmIJHoo2EIe6+hL3Fkuz+D22x30HHND.2xGvE9mcakIuqfVCoy9kOG7RmK.VTAYR1I2oljSYn3eD6mYFPKwxbiiXV78RaRrRSjnM5WYPYFa7pZEKydRMPrmCzw373isVLAWRo637XFVUux.xRR8lZ.HVwgDqeCCEr53LmvTDhOS3IJsj7b5.pivrd0kOprhjAiNyFGKulafNcEjHyoTUIk.pGH.w3Y4kNeMdGe0Wjy2vmKsnK9CmecdSgQJB8XMiMt1Eij4JETsY.2xgywG3lKgTJvaUhbus7gLNB9nu9x7pNPVp0pyo+PKFtgRA6abG9ZOcMt8mpFSNtarU5yujOu8qo.eeuhBCsoV0R4E7rmLfklKjP2jAMgOHsEywtEVjPdJH4rLKTIENsagMz.vv0zZl6jyhcbStBuTadF3S1M3hzJFPBUdbZXIEYenK0EQj2oMlMowh2I5oHFMXDEXvFX5OCi1JpNhOw.BMua6tOmj.zS7XZxXVhRSj30BCK0STzIotTwWSq3f9h5MhWnk4u7L04c82ebNdEOthRYtnhLGVGImkgIzMWtOLN4zVAAQwO32xUWfIKJYwZAqoazq0JfKYBWdSGIOO5IaDGChsXzBYcC27Xex6aI99uthj0AZE.M7fIGWxOwsTha+oqguJIoULnD67WK4HaF33mKfG63d7FtrrvxDQ.YvPZlTRTFjQQKPbnBNFDZwV+BqvX2X4pMxKQhrFGfTztYNxPZyv2pJ1zW53jXI4z6zqFtYhXIrDoIpi0WPPTHSMI1lGKc5kHnsPvVpgKidRb8oT.xXq1imjMd3T2ISTXRWeoTLPuI7Bzj25L1VhrIBLH0UjzWEFJ4LlCO+oVjefuzw44WrIGpbVp2r4FJjFucfd86NYylcUmWdUIzUJEMZznmJPaWnVcOZ0pPGcLUiFMndMOxNZ4PhthV9JZ1JfqX5owUJh23SqF77gbEEb4SKnVs5jEINxt+EmgULnPN0OwDYU7W9f04qdK43cciSx4VHb2subEedGWaQd0Gvgic7JrqRcdyQtdTzqWTlMZc3HfEWJf68oaxa36KSDW7JC6qoH5TlWOgT2r7w5Czl6vieJy070T2AsElp1HJiZ2vS1lfUty0aytWUab8p1b+sxz6jBhSRInSwpI0JjnffHR1LmyLwIBIT+BiigWb8EpIRpweQb7bOr8LId0QutjOKLN66ZESzwzcyxnh1o6FJBDN1E09nPLlKGeA3CdOKyYcKwMc3UZYd+36i8x1Qes4medZ0pUWim6ckPOHHfLYxvd26dQJkolHbq1w2Nt+DUgcuGv2OIyfEDDfqiCG4HGghKCkxNXJ68566E.M8g8LcK78agwqNcEJf.eONvd2E27MePJkUQm3yGD5e16uwte6WSJDbxkD7DsZx6z+7HTAnDRpzHf8UJfO5a+J4y7b6lCVRQv5HKPMn.AvYWzkEcq.K9cQ3DfxWFe2jXstlpIsKzi8ttAIebECFrl5XNtgkhoMHMp7hUn.f4l.SpaUkQwEIxRZ4HklGIRbfoExhjJJ9ohTXPncpuQ6YJlpjDBidHPY3VBc5dMzi2hjwJ8nPfVQhvmI1qEZYPq.Sp1NpOEs0zM2bfIERu65MLQOZ7WH.JJ4YmWxu4wKSwqXZ9gJHwuGoz9fz2scbbvyyiicriQ85023D5999TnPANxQNBtttq6zm550BndY4TJHeCIiO9R36OK5zmZPP.RGW16d2ChxNTzc8EdK6G8gdY47C.GeAKzXQ78Ccc5ZsOmjhPK6Wngjb4xR1LoIz2o5Cse8d62SFL+7Zmnbs+Ld9R9B2acdG6Kfqc+YXtpgVa0zSxa4xU7YejywKLuOExr5o9wsqTl5lsdazRvW7N83i7ZC3PWsD07DadaLghlaHtxhMhDchAIlPEZyhbhMUVXP7zI2wmjCxStfJEqkJU8mlGKg7MwiBpDhMiG23S4XtbUPLsajrZrl9s6R9De+GRFmt5M7NfHQGEkoJFIBooNHwFUSTFVKvnsRK3HLVVAcFkSnaLCh7veUgzUBEyvW6ImmO5cMKUTRNPN3rc4qM6zeOb6nd0Wqa4BcXUHzyjIC0qWm69tu6AJ2T1MY4rK5y0oljr27dQzxGkBbccwqUKdfG394klyHNV2GjucRDnTLe0.td2o4cck6FWY.MWC8wx5JnYfKesG9k4du+EXxhx0gc88NLHLtsZXPV91bxlhyNuhuzUdPd0WddHJa6sTKIGY75rmluLegGXY1+TqdpUseXEyp0lJkhybV3u3tGmesapHhEBH0l1Jl7T65XhsvN1DT8EZiYJgXsMxagImeBUX3uYRbax.mbjyRYTebsjXCarA2FtiVuV7su10IUPjE2F6vtDmOj7+wZxflSO88Dpzc935HdstMkbgwy1llSZOUDKNIZAovvZeCRbkH851KTJHPfLqDx6xm79mg+k+imAkRwtyIXwVroP+xR7MS6tZoNUXcjs0VqJXPAttBDRYpWd0arKWWWbbAW2gi9Ru.ECB3NdtF7LmsE2vklkysX2YzE.iWPxc9r03a+BMobwbjK6fi6l1owfjq11NQYkOeoGuB+rugxTHifZsT3GnvMmK+Du18ve2ynHatgu8RwXSo3K7O5wuxOpOxBBTUi38TfpsthoknwdrV01cDs8rlVMG4x3XxSCRakHwcwZRPzOmAQdrdDDYIs1hVC2iGdSU7CGKhPaDqjVAr39TaZkn2s3AoBZqIsCZWf2VVYSaStvvCEgk1nOm3dbkTDmM0zJmHzUfweqTltb2TYgjMGGJPVxATv+gu9Y324Algoy4vj4jDnFwNxVaRrliAwGGhA3+gv3aWp1k+n9.8e4bm7ekxI4EmsE+mti4YtJ9rmRNcbMwcjggEzWdVO98uiE3rK4Swrx9t72W+9zEIXpBRdnWtIeimuFkGKYpfkpDv26Ukma9xxw7qR7KXPE6prf68Y74u4tZASkPbD9KPD8SjAjFtvViX1+1tjYwhuPhowBAIGMMioiT5X3Zr0nhXKOSYXsHhXMUNcUy8FNGmPaoqH9GnoiiI4i8BwJkYAsc+Tec2nMS23F0aR.ohT8f1FSDzl.DU1neOI.3XDHWieFQR4HTYDo.DSjgEq5yO4W7j7ae+yv9K5FSlaQHFoTpwdr0RfTJnbNI+0ORE9W8WNCuvLsX2kcXpBRJmWP47BlpnjcMlCO9oZxu1e4LbGOWMFOujKh3ztnFtRAs7U7+3wphxKJhoBTqkhcMoKu6qqHUZtd1RkCVv0Ax5B+9+MMg4THKJhsRNgnvvGvPaltm3tcyfBCFt4NsExFOpHh3sMexG6YaUHAUb.ooME.zUnvndiiXbZkQLrzO0mNBRedwMITMIHED4A.iNPJkDDw0eXWJcpeMdgDjlxcRcDGJYL8BQrgUIhDwWKxGABCx8XuT.RWALUFd3STk21m+D7m8rKwgK6RAm0duAcwFFoNG5cBCaSF0KQVGAikUxe0iTguyE73G9FJxsbnbr+wcQoTbxE74ddw57W+HU4YNWSFOmDWYhK1rXzFJfcUzgu9yTiG9kavMbIYYlJgVjGzRwa6ZJve3c5P0VJJjY34MIkB1+zRtyGym+7uRK9w+fYQTMHl2zvw2gPD4tbUHYol7V6EchHcR8dgdgeiY5Id2hCFFYqsZOtsRZZyGOtr5+TY3R6X28GU2FJerh2Viz3PD8Ppn9PX8JPuVzo0AIo9zajOgoRIw8Qy0cOcclTNsBG5Mgmoq7M5OsM9GqyRzxWDmXZJ5.RAe7u8r7a7Mu.KzJfqbxvTfpcdpUhQJB81sPOQCycbQYf.JBiS6tNN7XmpIOwoaxtGyINwbrbi.tPk.jBXpBNISvXwEMnXNAGeVO9ROQUN5UjGhHzWnpOW+Ayxsb3b7UepZTHyvUB6wQBkJH325OqNu22nKE2sD0rAqpF9lj1ZRNk9nX0FujYlMqcWrGxwY3Lb8tS2LzlpLZMQ6sdJd+jJVz9bbIqocBup.UP6Kwf1xcEh.SegarjCFMr.h1Q5Iq8e5lMx0+AQRchGxaupR8Kwg0ln9q43Z5XqiJL0rNgKKNmG+5esyy+sGcQlJuCWZIWqU4qBFsb4dGt1Eqj4ZnH7HoMYAIEyJXtp9b7Y83Dy4wh0CnbNg0M6WDCkBJjQvc7r0X9E8Hma3WDZE.4KJ4sd0Eno2vma2UJXuSJ3YNd.+V+o0ghfLiNknJRsjswA+DymmD2hG9CQLKYxFf2XcgisxNgIUkJJyj1R8T2SStE0FlwP9zVkn8ItV3Ms7MbW6Guy2iqaUpkv1nISmZRwnphjOkH.itc3pIXHJItoOLpuEVe50GWktBiDa8fWrxGBC0RhjaYAGXRWtimZYdKepWl+nGYQtzxtLYd65kuVXzmPmNns6EovUJXrbRlnfjwyKoX1gucvrE8dLYAIO5IaxC8RMYhhISI32LfumqJOGbBGpzb3aywoTvA2qfeu+5l70+RMgCFMSPTPIQS.p2b5FFZmlHVX3ZaSKkMddcYa2g9ZudoChMgOWaVUqOW6DkjTZmfUXViIctj6oIZC6HhTxbZ2cmt9RVy5j4ISHhCqGcdMOQElXkGzdVvPof35Sq2jvHAtFOVnE3DcRTBEBIH1UFZ4o327u877C94NEO0bM4HSlIbo.sShulXjhPuqL5VXgEcEYcDLes.9FOWsTyHrP0.t9Clka6xywBCg61c.JjUPgrvG4OnFW3YCPtWIFbVw+R7xEqLrjVSho8Xd5vbVad0pMSc0PWVEFjZpXC6iaeCEChI7vXJMEgQGMSkGLZNkfTWvLMppLc0uolJQ+PXx1a3H.yAlXZ43hFoPPzRRDqPAIOqJoAfHK2S4t.sxUDcbzlzkuwisLu4O9I4+s+w4XxBNbIkbsFisAvHEgtoGpzWvzyTVXgEqDJBc69274qyrK5S9H2t6E.YxK4s9JJrlAlnAUDnfCNsjSbNEefe6pPEExokn7QuhtoogSQLZtTCgkzzE0oh7ZFmWsDxvzDrzAx3NZ0olQOlO03X1k1K6ojck4jcZiykw1TG+forPFc3vkjXKernZpcSzimbf4QXzWiEYAQteWkpeFqjf1x8n9tHmDwdxvLK5y+ye9yw67ybZdny0fiLcFJ5Z2E6aTLZQn2tWo5OhgEVLzgoJJ4wNUSdfSzfwMb6tWi.9dupBbYSMb51cHLTHej8K4NNlGez+WqBtfbBADDt5swNlNhzQYXIdLQUzQMKorQD7wj4DaEcn01ZKXayZBU5eMdS0E0NIsWzkDoum143JzqysQsoBPaKs4kEZh93kUHQHL0IQuv8FQ8cizJqHsrXpXPav7bpG+HJiVSIP5.xc6BYD7m7Mlm2v+0Sxe32dA1cQGNz3tqz3LKVWnmuK26WgHyvW1VYaqegQEDj53drdpuQALJzOFE5Cvfc+P.L6Rdb6O4h7NutBwWewZA7pNPVdsGNGegGbAxNoy.yZYtQFOEBX+6F9S9aaPd2l7+6+twPV1gfk0lppLBU5h30fVyCY55acTbKdOooWOYCx4zt3Vj9nhEoUPrk7By.DazFjK00RnX0oaTy0HPHza1OChXCuEnGlLOlbwxiv3HtY1hwgtUQx55qHUYDZkDRbnQxwdyzKGIKTdXvsZLev2iux8MO+t+CKv27YqgrfjCLlCpVsX4lq6OV2RXP68w0i7TrXQbbb5ZY6JgtPHv22mpUqFGBU6TYVuXiFAt1nkudcOZ0Le5mK52a1pIMZzjFNxsU4XPotMK6544F16iV4XsK+5ot1ua.O54yvLKoHuKT2Kzs6xLv67UUluxyKYxIcI0jzaf1ZyJecs9Bu459YjBXe6C9L2qhK8imk+s+BMQJaRvhgdjHwc1oh.6I+tg6tUJR696HjXwazYWO1BYRQtZZsr4lUWgQLl2bNaSWWGSbF92IaJOQ7yJPjRFw3YRRvJIZgD1+RVCbSYPshjjRRGQmM2DlBjghLwGGMAPYfrNblYmjO1CK4ydrkoQ9cya86wAGQ2i+E6XeepGWe8x1RJkDDDvy9rOKUqVEW2NSc2UB8VsZQwhE4nG8n333PPP2c2VuLbYtYqqYq6vUe4UnYy4PoBeA02yCGoC25sbKbfkyP4r8FWF1qCOnWLUeaGgV0A4961Q8omvtWKCAJnRS3Yl+Tba6cYp6EN8P0kax220Vl22RWCMBbIuyJeOZyZsyVwJoMyyJDv0bMvW7ojn9ueN9M+INEx8nPc9zkIoQRVN5jephIVQnsiWfdCdE6lcsGlispVe7zzMRhq5MLnsKWSknHg9VBVoWGiZmU1wosiMWzki8bPZmwKzJGXHH51TqQP3sMsFWXHygEPJAFSBYD7RuXS9zOgja+TRl2ykibISSg1VmbUrGGFN99zV8YWuOmdLYsJ+p5xckRQylMWAg95M0WtUu2F4YlupfpUagTeXIU5IwTr3hKxbKHvKa+S9FzZK8Ki6Hs0.d8sS1V8q5a8NwwKOuOWieIdC+vShplOBAT22gCOoOhy9H7kd3pboSs9b69f5DjBA34C+6tOIeqGD93+F4Y+WoChSqBWF5HyX0tZVShFV+jX4pHzU5hnaXLZGqHPJq5I4ZoBVMsY4b6a7sz9KfXkATskivSb2ejK5EF2RYjuyM0kvPoACt5jNZhPXnEA5JM1s6oxtZJPHAJKgLRNwKzj+nu0x7oev5bhEBX5buHikQw4Uo5UcECpeOpe7rEJTfLYxrwc4dlLYnQiFb+2+8uoEtcxDcw4VviaL+z39VtDDM8QAHkNnB73oe5mlm9LMX5w1di1U8yD6Q+pss84Qq1U3Evc7Lv4VnLkxInRSUna2yI4Mc4R9Te6ZTMu6p5efggDbiP.W1zvW9AE7V+k84+xuZAdKusLHlGBVVQpCldmrdN5hJ8AZO5R5ymdZFbhO1ap1ppTq4tY9RuCyWmzrF0hPDugyhyDZPre4MUEHwB6D4OVXM9Syl1jCOgLGHHHzpwDw.UfJLtqGkQzdlmqIeh6sJe1GrFGeVO1UIIW9jBftqP3vv2c5WHNV.rJj9ckPWoTHkRJUpTuWx1FPAeexlMaZqRhVquhEJvXi4PwhCWguRKrXmF6trhm9bs3ddw579twwnRz4UqY0.dqWSIdE6eIlsR.kyOZb.YtxC.m3BA7d9Mqvu9ili+8+T4Qd.Ibt.BhNpdBMqVaoFU8um3idElLnsycZRrpToJggB.h35IYpLkQ6XZotVjBudp1SoOpaIl9qhOG6Iwl937pdTY0q8dxlfyPmFS4IVdin5yIQLlCTKfu8iUmO48Tk+lGsNmZAe1UIIGY2lmmbicLuE8TLZ7V4p.yyMpEVXwpCoTPkFJ9FOasTWe4FAbU6ICutKOOKTe373q0IDnfCLsLLtu+IZva+WsBey6pErWIxoh1rbZhq1cSMZxtPSwElWDQn0yBQJxPSBz3PNa7RPGmmxR1HYopyj6EGDZDIYorX2kGdmTRkYlaKVuAy+AnLR9JgsejhEBi1RKEJABo.4DRj6wg5MT7495U3G6ObVdO++LC+WuqJ3ofqX2tLdd45x05Vr0wHcxYIk6rrvBKVWnTNA+iem5bxY8XphRVtQna2E4EbqGNGep6aojcu8H.BTvX4EbEGTv27I7389uwie52cV9W+9ywAtZGXYEAKkPlFa9rAY2JVlYEDHTHMm8QkVYfzrbQqKdRij108Q+swRkm5IisnWPTFeSDEE2LdfNz1oBcNBU7lryzOmBk4lkSgnfDJ3.0U7Leml7W9vM3u5XM3QNQKB.1WYIGonMBu0OvHDgdmNE5VxbKrXihwyK44OeKN1K0f2yMLFK2Hz2ypFJtwKIK6srCM7TjeHJkptVPO2wg1ijJMT7e5unIewukG+b+fY4m4cmkcc4RnpB0hztm0SPJKpUITzJRSRGU1Xuq2tk3pzbv50oNdIrUou1J6Ghj+O94h9kf1W6biJQ0lxAj3keYQATPBdv4NkG29STm+1i0fu4yzjSsP.kyK3.S5fTXJGVrSiQHB8NXgNrh0uxBKrX0gTHnZSEOzK2j2yMUJ1Z7pMB3Z2WVNxtyvSclljeHKkptdPfJL9uejCJX9kU7u4OtN+oesl7AeaY4e9aOCW1U4DxAtHPyHZx3itlAQKID0ItBOpbhj0vNYGtuh8xdaqidxMCofS1fTQYlUDcfHVmxRSVecc.zIMIdJW1GnPJEPQAjMjDe1y5y25davW8QaxW+oawyeVOBTvdJK4J18n22CFVwHEgd6HdCcL5XHgEVrsCQ3x+xidxlznQ.YbBCvLM7Trmwc3FujrbuuXClpX+VR29fRASLlfIGSvomUw+tOdc93e4l79dct79eyY3MdStH1uDQCfkB.+jM5VnqqipGZy373Hylw0EIEzbisILtWLYc75cmN2paH4Q+uYjJHwW8wWSkRsfvi6alHRbgDpq3kNkO22yzf63oZw25YawydZep0RwziI3fS4X894.HFoHzM1zkVXgEaALQAIO4oaxKbgVbk6NCyUK.u.fLBN5klCoXIBTQDAivPALUIASWVvRUU7G7Eaxe5s2hW6qzg2ws3x65lc45uJGDkDH7ApnfnPWplfWa8dbhPwbu8Xry0Sbydh02o1zblvz5cQjc35cbt4Bsa3ldHj6WJHLxtkkP2ni.7TzbFEO7S6w887s39dNOtuuqGG+7AzJPw3EDr2wkViiFvwnEgdGXy0wYFqO2svh0Ox6J3TK3wSdlVbsGHKDso28qGvQurrr+wcndKEEydwwL7JETpffxEEzxC9lOlGesGzi+ulVvscMt7FtNGdyWmCG8JbH2zBDYiNe30TPcRbWtw7PIFVKLVX7H2j21FfSoRH9Sd3j+VXTwwFxKEIGioLfHWjU3s.ZBUlMfm3IawSbbet+uqGO9I74oNoOKTITQhIKJ3.SMxePnFovHEgdmfP66JKrvh0MjhvfJyCdhF7idKIwhhZMUb06ICW4dxvwdoFTLaeTH6CPo.WGX+SEZsZsFJ9JOPK9aumVLQIAW6kJ4UcEN75eENbMGRx0b.I6ZORHGPFQXnPsIPKU3+7LIoS9Y5MltH1E7wVzaZ4tPDd.jc.gKPFI3pfVZxaEKMqhW379b7yDvS7R973mHfu6Y744OS.yWILdxmKSHId4cYIwGVwHEgd2LB2xmagEaLHDPFG3QOUCpTwmrtBZ5ongmhcMgKG8Ryxc9b0XWaxnu3fVltZy.kJjDb+SEFnTZ4AO5K3y8+r97w+JJFunfCuWIWwdkbkGTxUd.IW99jbfoErmwEr2IE3VLhLVJBmMNZS+HjpUNwkR.AQ+TA3G8ufP27O27AL2hvom2iyMW.m7BA7BmSw28zAbpYC3Typ3bKDPfJr4xkAFuffKYZQa8qdymMiBeFOnAQTrMnaXMik6qVRYoWfd0G5sZ4gum+JViGg.788okmGdQZC2O9h1EKsY+pcssYuGtAJt+muNOyoGma7vkXlk8vWA3H3ltzbPy5r3RMvI5rJscE1NGlp2x4gx4Cq2V9Jd1WBdzuihf.f.P5B6ZbISWRvjkDgqOeIASUVvjiAEyIHeVAEyJvwAHZMuUJEMaAM7flsfkpqXwpvRUUL6xJlcIEKUUwhUUbgEC+cHb+sIEBxkIrt2S411M7HvyqmOLLT8Y1vR8tdpqUkPWHD355tilV41r2qbP.4xmmfNjPJFarwX7wyQ4hc1URC5oZugk6MnHG6z2aPQN518VKs56FBTvBMjbN+VHCphNvR1b4V7Ztr771eS2DdhLj2YsUxXPIkz1OkEg.BBhHk8flsTLW.LaUPUg3fQm9nuo2G5wqItH8OkB8IRPfy3vjSA6wUvqJCj0E8Ssi2O2oJ6l8YFT9t3ForNNN366ywN1wXokVhLYxzwxspoO0xkKyMey2Lttt366uta7dA1nVhLWCWNxAVDuVmgvzmpfffvCuw0ccWGicY4nb1UuOrSaw0ntEdWL0liR8Qy5spTxSb9446+xMtVq.Nxtb4FNTYdnyHoX90mmu1IyRdaW2qWTuBfbRHWtdWcFCuPEFZzKqydzyNrbudY8pSGra05THDDDDDm8S6F5JgtqqKMa1jG6wdLjR4lJULtSVtyrT.G7UmC2iVFgW34.UJC2ooO4S9D73m1ioMrPePrOXKWuobCxxV+nbaEh+ysnGtmYb9YuoCQgLJp0RgmRxjkjDb1GkuwWYV16t6r0B8JLJmAtr8sgSzu5aYylEor6aZwtRnKDB788YlYlIkVF8KrVs+7K3QkJkQHmfvcJBDE0EnxxKyBKz.WuQ2zm55FBwPwlDby3d6MRY5EXn3ya1Zx4Ayo36NK7rmsI27kkkZsTDD4W3a6JmjwltE4xKw0Y3XrvBKFkwZtF5YyNbbtTxjUfiiapC5odsmbcyPlLAjYDLTUZgEamvUByTIfG8TM3VNRhOhCZFl80lpnjVAgGkKKrvh9KFoNvgczwhQabDKrvhMNjRAUaFvyctVfgU3M7TbIS3vdK6PSuMuK8svBK5cXzgPOd6glFBiaagEVrwf.v0Qvwm0CuZgw0c.Z5CSWTxQ1cFp1ZzI+nagECyXzgPG5XBT0F5WsvhsFJkSxKLioCwMl...H.jDQAQkGmeYex4FphbSeE4GygqXWtTuo8kKKrXP.iVD514UrvhdNx6J3jK3wYVzm7t5ifS38NxtxPVWA9A1W9rvh9MFsHzwZHtEVzqgiLLxj8cuPKjl6l8VJtx83xjEjgYhMKrvh9JFoHz6DhBMxVXgEaR3HErTi.d9K3ElsthPSOEW9zYXphN34aUk1BK52XjhPucWtmNiEYgEVrYfT.AJEuvLs.OU7lcuomh8TRxgm1kZsrD5VXQ+FiVD5c7BBKitEVrEQorRdwY7XdiMFWCeESVxgqX2tTwtw3rvh9NFoRepc7XqY4yGJgM0KNXg7YD7hyzhyurOGd5LTskB+..WAWwtbixLipMzxa0O+Lte+8Ka6aa+MCxkK2VK8oVud8MUC2qwZE9JqWqEMZlAy.ap9QZ1rI0pUi5tiV5uLHfgkve5ESX63yDQ.b14C36d9lb06KGTKZWv4o3J2cFJkUQiVdjoKg.10RlFUuuPHVWgN6dQHMdX+9qUY52x2l495O+2p0u9dW3BWfVsZ0034dWY3788Ia1rbkW4UthjyxFUX1IJyzUEbYWV.99dnsIWawvQthqfkGSxT4UqZcrQkk06Dm6DuL2qJyfjrrdJiUVVekYqRxGnfEZ5Rsryfp0bnm5nQslbMGrDuy25aFDBxHsdVwhsFLIAGTv5UwLSzdlVaq7NnTJwyyi4medpWu9FmPOHH.WWWtjK4Rv00kfffXAasvNUYLuuXLGFe7ZDDLClwGNkBlXhwYW94Xhtj9TGj5SqmxzukkNkh.2psU+tOscTlAEYYiL43pU1iOuhmYJEhqwEpEds.gCkyDvbm6kXlJATbMR7ZaWosxA86aksM28Gjks059855VoT333z0bgNrJD5Yxjg50qy25a8sV0FsWiMqlYmdAOF+FJi6a7RPenXERIBfG8QeTt6uaM1SIaFjncLnoI7ECXXcL+Ly1hm6f6B3f3J8vK.THIuiOUN+I3oe4FL8X6Lui0OWpGaaaa6cp10zBeoTtlxxZls0VMsAFjPtbN3lwEkxXSvoBWG8rYyPtbAjM6H0l5OF10w1hcBTrbVlstfJ07wUJvKPQKeESVPxksmw3QOKjOucepXgE8ZrdmieMe6angrPzoHEWXBTUuQ4FZ5KVXw.Hx5BmaIeVpQ.imWBdPKeESTxg8TRRc6YQ2BK5qXjwj03DvRWN5ZVXgEaMj0Qv4W1mkpqvUFswSU.NB1aImnMNT+UFsvhKlwHCgtF5XIiIr74VXwVGNRAUZn3bK6GmFUA.eE6abWJjQPfkQ2BK5aXDhPWz4Dyh.KitEVzCfTB0Zo3LK5gPZ7RU.bfwcHeFA1jtlEVz+vHDgdXrbu8cPrkO2BK5MvQ.UaFv4VxGLBfLp.ESOljrNVBcKrnehQJBcMrD3VXQuGRgfl9goRUyYNBTvXYk3LRNahEVL7fQpWA6V9P2to3rvhsNDhvnuX0lAozZNPEFq2y4JHvZhtEVz2vHCgtdWt2o8jikO2BK5QPPXlUyOLspBPP.jyUvXYk3Y4ysvh9FFYHzgNacNXsP2BK5UvUJnZSE3oRHzUJx4JnXVQXFXyBKrnufdVXcpeGNKUJUGkAAgVsGDn5ZYFDgUN6cXXPFggC4zqUKluRC77UHEB.EApPKzyJ7nZs5TPNXGhkGFFmaGCixLXk6dEzI2kBEJfiiSWkutRnKDB788oVsZqZlhoWkww1pkqYSOZ0xMJ1vEWJP.99dzpUSZ0p65urQhhb8prg0pUttkJ91J0YpxDVvdV8sta2d73rsbquxsUhRhlOqpfhrEyPCOU7AE0OPQVG3R12tXu08Y2EW6Hy3l4d855yduAyOeVuobzgg60KRYpPX1VKHHfm9oeZVd4k6ZHYuqLbMa1jRkJwq407ZRks05knWFJVmugC2vdpiu+4iN5LBBTA36q3FugaffCjmIysy5Ovc5PMqs8rs2VstWKKSVnoC6eppzn0ovQp.j3EnHqTwq7pubVX7RLUNusTarUK+fRaztgPCq8icxxqGyF152qmrR4VoMzoO0fffU8c4U0B8ff.Vd4kwwwgfffMcphaybuM5yLSUXtLAHDQSdoBih6Rgf4laNNyYDzH+NmLtYetgg6MnHG6z2aPQN1n2qWk9TAX1pAr3kjEuaXujyQRC+PehMVdGdwm6o3q8.KykNo6Ftc2pxkst580istF7pqBEJPlLY13tbOSlLznQCd3G9gWUWtuUQupdO6hdr2VkPHNTjmjCkYoTvIN9w4wdxkYukSVau9QhZw1liVsY+pc6mIYHke.KVUPSOEkykDO2EtRx4pnYSO7VcCziwnPxRpW1GtXLEgZQmwp84wpozPWIz04e0wFarsljsCgw78IWtbQGasvNrBEJf74yQwhATr3f8l0wBKFzgqq.kPlJhvomewwQhvwAGG66YVXQ+.iTGaMXkGcMqdmVXQuCJU34O2z.BsGwTJ66aVXQ+DiTD5Zx71mTw5MIKrn2gNleD5RPcxBKrXmCiTD5PWB8q63RgEVL5htofrpqg1IKrvhcBLxPnqCfLcxLAqE5VXQuA537PzAII88rtb2BK5qXjgPWOSRmWCc6zLVXQOCcRCYU2C8xVXgE6LXzgPGyITL2wNV5bKrn2htPcmNLMZgEVrCiQJB8ttwbrSxXgE8FnByK51WorvhAOLRQnGuK2aa1F6jOVXQuAdAJJmSRtLh3yhti.77TTskBG6KaVXQeC8rrs1fB5nA5cXC7XgEVrwgWfhoGSRwLBZ5GdMGGAUZpXtp9jwYiGGtsX0gc7r2gg8wRoTt4hk6PXm222umKTcpc1pnUK+vroVaUk.A9ddzpYmy1Z8qOfss6neaOJ0t5IQpMeSFyIGEx4PskCiwqYjBlshGmdlkoY8FTsCoO0dQnEcPnNrxPuqN5GxPmxra6zxvVoNz4TktU9UMzupy+paTAnej9C8yDP4xYB4y0SnoB6GkKWlcsqbLUI41hbzyquvatyzVCHoRvAg5amrs1oqud0jNmbIIu5qoB3WE+fPhaUfGsvkq55tYl3xETLSmN5na71eyJy11J0CsoVxwQ0wiczw9M4y0omwwwAOOOdnG5gXokVZim9T877nb4xwoO0dok58ZKHTJEK1xkWwj0PoNYb5SUoT3GDvQNxUvqoTYlL65LqQrMIi8ZXkwAy5rmWeawyD1VQdLeVEP1rNL8XtfwxX4HgpMUTokjbYj33n5IYytTs8.R1railk6zSNOpl4+1IqucR4XydusquCny9oMZz.W2t6X8tdGWWWZznAG6XGqq4m1s67h6ForyTM.+CkEtwoPJABB0zw0Qxy8bOG28iWKNaqscJGaGkcPQNrx7vobzqTvvO.lcwV7gtjKAxsOX4l.PtrY3ryWk67ttaj.Ycih9CC3QzIq7s0fU917XiJaZR8LYxr0xG5KrvBaqoO0dEpTwmZ0J.LEgNYJLrUIDBZ1nNUpTgpNC16AvA8w30Kz8iMR+YPquOnIOaFzq6Cs7UD3pXeSlG7L7Xm.lulhr4GiBYDjwtU2svh9BVUFNsFACCHSFIRGmUFNJQgiiCtYxfqqMsNZgEaVDnf7YDLUQIDXbCALaUeZ5onXVKYtEVzuvH04PeEPEtK2sgACKrXqi.Ej0AlpnC9lIDcof4pFPSeER6qZVXQeCiTD5JcjhaE4OUrGDcKrXK.+.EyVwmpMULddIAlVnKg4pFPCuA+klyBKFkwf8hJuIfpCATZ6TLVXwlCBfJMCntmhqZOY38b8EY5hRp0JTCYGAfmhytjemyS5VXgE6XXjiPuSvZzfEVrwg.Xg5ALVVA+Bu4I3CbyiwkOsK08TTqkBg.jBP4qvKPgJXMqRKrvhsQLRQnGlOzSakf0pAKrXygkaFPgLB92+CLE+zuwwIHPwR0UzxKQIYeEzvC9mcak4QNYSdo47X77iTqjmEVLzfQl27zKSt4RkqLuoEVXw5Fs7U36C+KdSiyG80WlkqEvEVNbcxMeeJPAKUOf21qr.+V+.SQgLBp1zZptEVzOvHkE5PWRNKc45VXgEqDJf5sTbcGHK+j2RI7Cfps59aPAJnZs.d6WaAdyWYd9ROQUJjwtTWVjF54gWnV.UZFD58zsv2QTpviV834ELVNYmSc1WjgQJBcU6lnCVqysvhMHTpvrp1q+H43.S3xRMVcKtEhPB+oJJ464pJve+SUi.kBGKitEQPJfZsTLes.t9CjkCOsKAJ0VhDVJD3qT7nmrImdQe1WYabFYjhPG5tE5aEazG1S4dVXwFAg4.AEGdZWxmQvR0WOOC3HDb46xEoPge.H1F7K1nTFraPtc60scSOEMBj7q+Nllew273Lcwvi93VYwYbhxm.O24aw+1+lY4u6wVj8LFrYshaX3y3b4xgT18UJeUC8q999Tu953s4UA6TmK0Z07odCUTaZz9.sZ0hZ0pQsLqr6NLbtYsxXuAVYb8g.UXZZzQnRkDVVMDkOjvUphe+qS8kMaVlaX7YWOeVNr0m1rO6YWVwG9FD7a8iLNdUTLa0fs7FVVQ3b8upCkiO1+zcwGvuHmphKimaiIyq086WOq4804Skyd1yRiFMvwoydiXUy1Z4xkiK+xubbbbHvHRRrdmzYmrbK1PvUuq.PzHRVCKquuOG9vGha16HrqBISMMH1G5msYutbCxx15sbiBxltrqmL9jFJDTokjR6dAZzXVBy0QqwDOnnQyVHJtGdiuoqgrRUnBAWDiMaNvXTyifdABNTffO7q+7nprLyTwAw5TQw0DJ3bWnE6cB3i9VtT9XO93bfw5cYFz3lYK7YR2RtYaDnSepW3BWHTY6MJgt9g16d26pl9T2pY5od18yIYrwZAzH9aJJUXZbrP97TpTAFK+J6CCLx+l3959W+p8s2e349anr2FvxMf+g5A7ttzrTHqjJMW8m20Q.BAeim7B73O44Yx7hTdJqWjQ3FDpiKVZidoLzzOTgO+itaBDYQH5wmBBg.xlgYO6KwcdmyxQ1cZZs94Xw588t0qLjISlUM+pzUB8LYxP8504ttq6puow3FQ61Yq3yhWZNBtsCgzQB95zMmCO2y8r7Mum44.SLbjnYrvh9Mp2RwW9bt7teE6mezadLp64i+pLO7Tkb3we4l7Wc+miSeg5TsP+YCJMHrjEVYHsLzvSgfvMZ41lbID34G.dsvyakxv1M5V6rZq2curczXMy1Z4ymumJPaWnPfOYykcEWWofrYyRgBEHe9Qt8.nEVrsf74CiO6+d+CyyUu2L7purrL+RAzxWE6pTAfiDldLGtvh97+9Wadd4ETr6IJfb.fPwhAC3pL+Fy1jwg5k2vwoqti9hALxDXY..cxYw.hN7aVXgEqMlnfjG+zM4W5KbA95OYMJmWvtJIY5hQ+aLISOlCO0YBKyW7Qqv3EjVxbKrnOgQHSVEorbH8c.ankwBK1XvQDlpTO1K0fe9O244ce8E4Mcj7bnoyfiDNyh9b+GuAeoGuBOy4ZQ47RxH2NNrZVXgEqGLxPnqIwUsOchvFwprvhMCTDFPP10XNLes.93e6k3y+PUHeFABBOawK1H.oPvzEcBSTK8ag1BKtHFiLD5PWhTbXc1tEVrUQobRJlUQSOX45g6NNoTvD4k3Hs9.yBKFDvnCgdDqcGmTwZ4fEVrkgTHHeFvphrEVLXhQpMEW2B6q1oervBKrvhQcLRQnCcgT2xnagEVXgEi3XjhPWuF5qj.2xnagEVXgEi1XjgPOYWt286YgEVXgEVLphdxlhaPHYBnTADzI4P.fBUfJUBlYmFCBiQlvJOqMFzjoAM4YqhQs9y1IFlGqZ5EkOABBPrcYdkTRKOOnREpMVtg5wqNAch9Ie97333z092Zl9TaznQ7C2qxBTaGkwyK.OOOTJh9RSjLi.kJ.eeeBB5bctSHyloAus61xVFaY1LO2F4YFDS2jCZ06f33vV4Y2r0qWz7t4xWMjzc6fTuVM1+91O2za5J4RJ6upxiFCSigNNN366yS9jOIKu7xcMAszUB8lMaRoRk3Vu0aEWW29p0sqGT0SxAGyCG2ygmuGfDkRQqVM4pupqh2ZlwY5Njs05mXPHAJrQvvl7BCWx7frrtgxVa1xFFfq1.FI1uk2sqxpTJjAZiYpFsQm1Y9d9lJSC1iKq1x5sZ8JkR777v22eUS3KckPWJk366yryNKRorqD5qU58b0vl8Y6z8VpA3Lohf.PJzcXARoCyO+7b7SLOUKNXHq8q6YkmKNk0dg6G2obg4nT6rS512A4wMsK2q+ZuLxjo.zXavvp7E3rm8r7v28o4r6YkIoqtgs6wsdU8a5xcWW2MtK2cccoYyl7DOwSDWY6DXy1NKTyG+8lCe+KCoSFnU.BA355v4N2o4Ye5YYwI5b2seXYzEKsY+pcuXoM6ms61A5GyyLJM9MPBmjkrcEgl6dETA355.4KPtbCNwKMs048xuisZJIz0dtRoPJkTrXwdlfrchVh.xmykvvBWjqVHrejMaFxWn.EJL37AsEVXgEWr.o.b2NC1+BQX8yfmBZ6jxyHywVCrQJNKrvBKFzfT.0aoXw5AHyrwVO40CD.DnXlp9HFoXz13Xjp62kbyhEVXgEVzmfqTvxMC3y8fKCYkrmxN3HA2Mv+b5BSUfRwdlvgkWzm+tmnJSTXjhRaCiQKePqhVeg1LIWXSNKVXgEVzWfP.6dLG9ydfkYxBR9kdKSvtGyA+f02JpK.Vtgh.kBGgH9YTJX+S4xBKGvuvm677jmtE6ojy1XOYvGiTD55OnMOG5I+sEVXgEVzOPNWAimWx+4uwh7kexZbnoC2o1AqAitTH3zK3wa8UTfem28TTskBO+PK128tb4wOdC9HepywCbhFb3oyv14xzOLfQFB8tF5WE1jyhEVXgE8SDnfLNB1+3N7xy6wydtVq47xBBOxasZDvu122DTHqjEq6SNWASNkC29iTge5Oy44zK3yQ1cFTari9+HIFYHzgjjyhIrb4VXgEVL3fwyKY77qc4jB3Emwiep2z37Ausxb9k7oTNAiU1g+j6bQ9U9Kt.AJ3xm1E+K1YxivHEgd2fkT2BKrvhgKToohcMljew273nBfIxKIaVA+NewY4+3WdNlnfjIKHsj4FXjhPuy6xcg0k6VXgEVLDAo.Nyhd7K+Vlfa8JyCA.9vO6m977w9VKx9mvkwxJVy0f+hMLRQnCPG1j6VXgEaiXTKyVsdfsOu8AAv7MB3PS4x+x2z3PQAm5kZvO0m5bb6OQUN3ztjwIfVd6Hhy.0m0NNNqZfpYUIzUJEdda+iZ8hArlMCnYyfUbr0DBhxZbMoYytmfYFT9PaPPNFDjAXvPNrxvJQuNys0uelcx1ZXtO0s606aGXtEf+Uu8I4pu9r7XORM9o9zyvwd4lbE6qvFdmrOp74jPHnUqVDDDz0mYMC8qkKWNU1hoW+Adup9J7+e6cuEqjbbde.+eUU2ysyk8b1ab2k21CEohtPo0bI0EDFXK3.EinXACjff3DXG6GhcxSAAVIHAJOZ+fUP.DhQ.BPbBbPdIBvvxIvHQNAQN1DTTPlVbEEoHk0RQvaq3t7vcO641bo6tpJOL6r7r6N8LSOSeo5Z9+CfTTmt5p9pdt7McOSWeQ.GecAjRIritNLV.iwf0WaUb1yz.md8wunC3Byo57Xk1eOTIv6tmA61e3KRO25RrdKAh0t8yk7w9KquYyhtbUV22eWnOp7weXGTpiuTHvMGHwS2nK9W+EtN9KeiN327RmEq9vmG+8ufDY8y1V0OOJudLbTwR669c+tX+82O6kO033Xr95qim7Iex6n7otnmsPQs+80Rb7lIHH7m.sNB.JXgEIwI3rm8L3B+TGGmnUR0G+YrrJVHwPIs+GDA7qcQfO9YDPqA9F+HKt76awlMW7k+wk88OK8w7LVyRombd11xT+UDUuOWd9lGik1XwM5A7e4WbM7L+vt3W9qsKBZ793Tq.b4sq93qJ6OiwfACFfffzuv5otkvvPLXv.77O+ym4545zBrhXeNLxhyrtBQerSff0C.RrP.AZznAdy27Mwy7LuLN2wT2y9UVwWYrOk4XMK6yaeiD7O4QNI97ej0.FXwW6+y13a7cNDOvlYa0bxklSU09T1iUQvUJZFtPbvX3Cbz3Xu9F7zORS7bu5g3q7MODIIwXiVV716TrwpKdr3nFUw1BBBluuCcgP.iwftc6VpkO04U+AVLno5Hw5sdiLg.5DMFLX.FLXx+fB7USaNWTeeQAARraTHvAMfIxhXqBAARnTkyxyHerln5kiGZwNCBvuyyzEgJfSrRS9KYOCl3OJtQehf5f.sAJkB1w7abWojHHPUalK9BoT9AeEbVKDBIjxg+CQDc2BjB7N2LAJIP6PISlmQdUFtwsRwcGaiHhHmkECW22G8eSYi2bpRevZ493VZYHhHh7adSBcfI7I5XFchHh7bdUB8g0C868Oy74DQD467mD5iY0C510GclQmHhHOm+jP+Vr3dOiblOmHhHeme8qbeb+QAXF8THE.QZKt5dZ.a9ekLh1IAcir.JAjRAd+C0HZmDbk7cXHh.fwN70zmYcEBUrRjsLxaRnK.9fuCcwX1FcO5mXwZMk3W7hsgPfb+M.t9gZ7vGO.Q8MvDawO8i1BRAvIVobVXYHZYhRBjnAd92pO5FYQnhuy2xlZUB8ot1Hmxuy8QqabtzxfoKX2tZb9iGf+q+JmFHP.ab5Uit4gPJvdcM3F6l.H.9R+rafu7O2huNtSDcuDMkHpqAepe62.uy9QXyN4yGbtLe85QKBXUw6S35iYqVsFt.pkx9Lwk9UsVi986O0ArrVtImz3zKxfVBELl6ZYpUHPRRBh61E8aN9JTSVFm7TUONIIZLHRhqenFMTBzONmex7s9jTR4vweu9FfAfqXDDU.5DYvd8A173m.2mzfi0Z1q3dtx1lk2SzUh0xbLG8AbtxUtBFLXPpKe1olPOIIAMa1DO5i9nS7SDj0.snZ6.s.q1vhFM6dqZ39v1Zhhv4N24vS9YeDb5Ni+LPyR8nMOhUWos6GIw4OVBr1cf1XF6xl6BwNl+uLYNQEBs1.gPhG6C+XX8tgX0PSs6pgMpVbTmh6Y4DdWz4iRJQbRBt5UuJLFS1SnOZm1XiMtc4ScdKGbSa64R+pEnQnABQ263KR2BKBTRzHrABC0Ed7NZ64cI0aQ12z11t8.haYwIOQ.fB.ISb3yNk.c2MA610.H.N6wB.ZIy+urdhHflBrdWK9Auz2GWd6Db7N26MwzrjXgswcaSiFMPiFMx9kbuQiFnWud3Ye1msVTs05EYvwZqPum3gP3oZCDML4spQS7Nuy6fu8ybMbeaNaWx8Ygqe7XVb3.CNbyP76d5Si.o.w57MQ6gQF7y7nswiclPXM.+O99GhW+8iwJM7t6VRhpbMBDnWrA2XudvFqQudK16Q4ZuG2hFOK5kyeQZadYZmsepIzsVKjRI5zoSgDX4MQnEsaJfPHuyIr0hvvPDtxJnSmZ0uAvB2pc.NLwh+w+21dr2+9KJ6dI3+vu9YwE+vsA5av+9+rcw+2meeHVmONPTdydqeuJOvFJrwJg7BgsDxqdm0ztOzcrOnoyPaABTBb9SjeW4hi5JJAVsg.PagwXw8sV.ZrYHt+M7pm1QjygIyWN4cW6yw87XlOmHhHemWkPeX4P2dumQNynSDQjmyuRnOLi98f4yIhHx24MIzGkzlWxchHhVF4MIzAlvZVBynSDQjmyqRne6hyxcQvL5DQD447pD5ocF571ViHhHem2cCAOtEHkQkVUpboM.q0RBrtBxARzHX389NQDQ4uYNgtqrX4Oo0HciQbuItECK4WFqAFS9TdPcgiE0gXPIz3UtRWr0KKfI1h2a2AH.IHNGqpa0giCKKw.QzrYdd8pPHPylMm3RN6DSnasVDEEMSqk6E81mVaFVPTtUMQufJMe4w1WlFiMNl.+dufE+G+KN.BHPyv13wdf12924PcYdT2Gi7b8ola2s2NDS9WLjq+b4pd7c0sqTJn0Z7xu7KiCN3.DFN9U2yTSnGGGiUWcU7o9TeJDFFBsVmVScBwFABj.c5bMDG0G.JXs.l98w8e+2O9betOANUa2dN3aDBAzFKLF.H.TR.4sdxZcnf+3SlVQcHKk3w7pRRUUsqrFy69430w4v7ztYspQVmmCyZ6xZ4fMs1IkRjjj.sVCoL8e5aolPWJkPq03pW8pPJk2y.UzkezrtsHMPfzhnOg5NpUrhv.r2t6hW6x2.Gr1DG1JozlVk8MmStw9VFwkKeI4c4XCv8iO.Fi4EWMFG8ACZ1rIBBBxd4SMHH.www3xW9xk1YSsHiwfDKBTBLH5AfR0A.5gElkf.r2duOdyW+pHJkxmZUdlhU0XWUk9upzxzw5QiaUeLmHWhO75g4t7oJDBztc6BInxahDKBj.BgD2wuLNqEgAJDzpMZ0x69Q8SDQDAfkj6CcttxPDQjuyaRnO5dM+dubDbchiHhH+m2jPG3nmgt3C9CB+36MgHhHZR7tuTY272nHQTQPH.dmcRPTrsdd5IF.gB3g1L.ARAL7MvnEf+jPezhDmMkk9UhHuhwZgQC7K8oWCmccE5kiq.gkkFJfdwV7+5GzEcisnghuaEM+7mD5.C+NzGyelWwch7OZyvaW0u7eiMvG5i1FX2Z3BGUaIr6pwexO5sw6enAMZy2rhledSBcA.LfWxchVVH.fT.7S1MAen2OAu290uD5q0Tf26.ML1gyEhVD0wu0oIaLkaM95DhHh7cdyYnC.j1BniXLEgMhn4mKrDYZrVnMVb+GSAbp.b5FUPPrnGFZKwCGB.qAIZCxZAgzEdbXQw4vrKHHXwp1Zwww4dPMKx5AnXsEZCt2RjpP.iQCc+9XvfwuzuVFwWYiw2hgw2GHOqVa4YaM1g+q+M+u2FO3ed.5FYF036bemXGemsXpQjHascXwaN812HPftQVzKxfVAy9iqiNdjGUmr4ssEQeOpMYc4Fut014su62uOLFSp66DW5WMQHkhF..rgdIQTPTkRI1byMG6NOuk.u4Yayx9jXF9OgMZ.6QSpqSvpqrBN6C8P3bqKtm8qLiw53XMuaadKkm95wppdrlm0hg7d8anH5Og.3EuQBdtehAAY5WHt3H+6o1rYt+N5+kE2J+ucrMC..FCPfB3hepPDHwLcaqUDqqFtzi0iq5jIfH2+tSco47z5yQUasW3EdAr+96m8xmZRRBVas0vEtvEloxm57bFCy6YYLt8SaEHw.zp06h3jtXzTyFEgM1XS7w+3mFmpU1uZC4YLxwxuFq4c+xx9bz1VVGOlmJ+17Vs3xi9aUAvpMK23KWGKMv0tpadrsrGqhppDVUGmN5UZXQ5OgP.iwfnnHDDj9EVehUas986iuy246j5Nmkfpn2+XsEwZK1+QOMZbt1.CF9APDsaiqcsqg+z+e+.7faN8ex.4wkxrJON3R8Aig7qOVj8uHu77KiUvNNtE63M54qKKy4rLtJkZ99NzGcfMJJZ9htRl1.jjXgIkO0WhVCst5urik0X5hK2stXLUmwimDQG0DOkUgP.kRUVwxBwJrPZFy8rF.j2ZdTWlKDQDQYkWcenaOx+9ntmeXJDQDQdFuIgt.CuOzS4jzIhHh7ZdQBcA.h0.2rmAZCtyD5RfnDKzwFlmmHhHuUsOgt..6Ov.swh+tWbE7gNYH50e38gtE.1XKd3iGfispB6zKiKCSDQDQ0Dhs1ZqZ82t7gQFzNTf+o+LGC+i9qtNjRfCGXu8B5TnDPoD3a7C5heq+3cvUtoFazo1+4XHhHhtC05LaCRrHPJv+xO+l323u9FHPcmIyA.hzC+t0+68oWE+VewiiM6HwgQ7L0IhHxuTqSnueeC97ej13W8yrJ5Gaw98uyj4.C+Et2O1h8NvfegO4J3W8ytF5GOrnNPDQD4KpsIzGjXwZsj3u0GuCZEJw98M2Sx7QFkTG.3K93cv4Od.5FwD5DQD4Opzxm5hrjT1K1fsNQHd7y0.8hMS+1LWL7L5O+IBwek6KDWd6XrZS96deDWu5hsrwWd7nJlGKKiYUMtbLqtwrc61PoTo1tItzup0ZzqWuBYs0cQ6qCNTCwFsvlsECuU0lAIFfi0VfNJM5cXOzO7dm940bbXUYLm5KG53N6qpsel29ZQq9Utv1bk3nH1lqDGEw1x59LZYG2Uh+Iss4s5Ql0wRJkvXL3sdq2B850K0BzRpIziiiQ61swG4i7Ql3mHHKAZdsOBg.6M.3Q1zBnNDFSLlkUSFqwfnDIdjG8CiOqH.mpS5yoxZd3ZiQQGSkUxHWadW0iQV6mx7rSJ6yDxNbPK9wYFqzVEw3Vl33U7imRoPRRxXKsrG0DqG5Bg.c5zAAAAoV9TKyxY2Q2VyPItY+D7V6nwm79tcwUah5zPf26.CdqcRPnTAyspa5tdIHjaiOFrHaadKWqrcrcrctU6Z0pEZznQ1uj6MZz.862Gequ02ZpCZUT0mLFKtYeKdxUNK9zO7IPujDDOgj5RAPqUBvewqb.98+SdMHrZzJr9UrVpqUXKF2kq5TbWWhUFm4qztb6y69VTboimKzYnKkRrxJqTHA1hR..SfA+2+9cwW7StBtvC1DWeOMziYtJ.vIWUgqrcL9cet8.TMwlqn3RAKQYfTLrLE+l2HFVMpm2iLF.Un.O7lCeqO+3mdHQCUqWo3r.XmtZ7YOeK7U+6bB7QeflXPOC5FObMcWJ.ZGJP61Jb8cSv+7+vqie+KcHNwJRnjLcNQYQj1hVAB7O3oVEazVh9I0u25nSCId2cSvW66d...ee.xqTqSnK.Phwhc5ZvEevl3W+oWCO8izBmai.D1P.ahEWaOM9tucD9O+s2Cey+xdX0lRzJPvOYNQYz98M33qHwK8kePz3zg.GNC+vUbMqGfq8i6iK9UdGXAPq.lPm7GU58g9hxBf.o.GeEEdwqL.+y9ChvEevl3SbtFXi1RzMxhW8ZQ34eyAX2dFrQGIBUhx3G3JQdGoX3ON723FI37XX0Mrt4j8L3s2IABAffuO.4Yp0IzAFlTWJ.1niBwIV7m+lCvy7Z8g1XgTBzLPfNgRbhUTPHJk6VEhHhnRWsOg9HB.zHPfPk.q25N+6NzORQhpsLX3qkdfMTnwIBvoOr9cF5XcEN6dZ9A6Iuj2jPeDgXVVhYHhxp1ABjX.9Re8qi0ZJQz3tkRbbMCD35GZPnj+B2I+Ss9GEGQT4QH.LFf29lIPqu2JaXcf0.zHTfGXCdaqQ9Gu6LzIhJFV6vj5Ozl0+21fIxIeT8+UlDQD4D7kpDnqZZqZcSMgdd+.TU9.9x5XW0i+x3XuLNmKBtzxt4x.d7t7MKGyGUaUBCCmX6mXBcq0hjjj4JHVjsWj8cQucFaEy1YrsXaeQei5YY+yi1TViSY0l7bsI2kZSQNN285U9xx7dRsQJkPq03kdoWBGbvAHLLbr6yDKepqt5p3BW3BHHH31Ulr5fQeZFe5LUHprLKutIOZSYMN4UaVlhki92Kq3Mu5GW43adFqiRnmjj.oL8hnPpIzGU+Ueq25stcwUedCp591Wz9nLdxA2d8d6E4XTjevV9glcO7wD2wnStbz+8hPHDnYylPoRuJglZBcoThjjD7FuwabGAUYop+tb33ywuJGypd9SEO9XLk2l32gtPHPqVslTSHhHhHGPcrhFSDQDQ2ElPmHhHxCvD5DQDQd.lPmHhHxCvD5DQDQd.lPmHhHxCvD5DQDQd.lPmHhHxCvxmJQzLqNrrhVGhQf5QbVGhQ.2MNGEW4UsEYgq1ZwwwN6AqIoNFyYgOO+3by8T1UMLeocYoRr4xyCWuctZrcz0w8EYdL5ue3gGBsVmZ6RMgtwXPPP.1XiMfTJm4xYWQUlI8gs4Zwyx97XYXNNZ6KC0hANl9y34S0OjzN67rLdiJVZuvK7BX+82O6kOUsViNc5fO1G6igvvPn056X6Y4LMx5YkTjseYIV37rXa+396t9w7o8ljyaECbd1VYNVtz1bk3nr2lqDGk81xy9yZsPq0olLG.Pr0VaUXWCvh5xKx9sdEqrequ86hpRNC1gCb4OtbL8pwrpF2IMlRobw9Nzc02nnHTjWxEWt+H2DeblHJKlZ4SkuoBQtCqEvhacVn0LiN0.YcL3IpFf21ZDUSHE.6Nvf9QVHqoqfDV.rQaIZnDvr7bw+HpTvD5DUSr8AZ7k9Y2.etOZar6A5ouCNFkT.o.327OdG7CuZLNV6Z5mJgHGESnSTMQ2HK9zmuI9o+zqAb83pNbxNk.PB767mtK5EawwZW0ADQ9ElPmnZBkDXmtFfcRv6sa86LzCUCOK8X8v4BQT9hIzIpFQIAPf.MTUcjjcgJATRADhg+39HhxWLgNQ0DV6n6w554szlPL7G1W8KxIpdnPWXYHhxOwZKt+MBvwZKQht98xVwsRl+16nQ2XCB38uFQ4JdF5DUSzLPfWa6XzqFeaqAKvlqvaaMhJBkRB8koUatrhGalLd74CnAvJgC+Gf5ywl6NNsZCFTR+l9ppiQU4iMKay4kgi0ipCCsa2FJkJ0wM0D5Bg.ZsFc61clp7MKx2oWUruKKi4hrutvXlk9wEhWWbLy6woLqXbKa8WYNVtZrezpSVcK1Kp9aTEO80e8WGc61EAAiO0cpIziiiQmNcvi+3ONBBBfwXRMHxZPWT6aYOl4QY9aY33zht+736huuyR+l2msA6O+t+Jh9LO6OeZ9JkRjjjL01M0K4tRofRoRsltNKAVUW14pC8mqDGL1qlwpHi844Mgpqk715XbTj8sqDGyZ6qyOWsLhi1saivvvT22T+Utm0K49hvEuEbbsXhwyjw3IctTrLOp6w+Hbd3VpiyioEyodF5VqERoDqt5p4dPQDQDQ4q55M+BQDQDcDLgNQDQjGfIzIhHh7.LgNQDQjGfIzIhHh7.LgNQDQjGfIzIhHh7.LgNQDQjGfkOUhnkR0kpUGQiL2qTbiXs1J4I9KKi4x13tLMWqpwsJST4xKmlL1letb7sLEaipqJoYhIzGkLeRqk6KRYUcQpNTre8uXpt0uPHvj5YWYtVDkfVenctbrUUsykisJqcS404ExXdWsSJkPq03EewWDGbvAHLLbr6yDKepqt5p3Idhm.AAAPq0yTP3xr..KgWlsk0Ks3x17tnluSqe41ydEzaV2eWctwsO8smGUWtiVW3MFChiigRoRs8olPWoTHNNFu1q8ZiszolmAaQ2FWoO7swoNEqK6iyx1GtIO4xWRWZ4RylMgTl9uk8TSnO5T7uxUtRgW9TyBWIN.XrLNtRb.TLwx7bYKq5iIU83SDUNl32gtPHPylMKqXgHhHhlS79PmHhHxCvD5DQDQd.lPmHhHxCvD5DQDQd.lPmHhHxCvD5DQDQd.VbVHJERAP+XK1quAxZ5sxswBrRCAVskDZSUGMDQEIlPmnTDosX8VRr0ICpsICURA1smF2rqAApZ5mJgHZlvD5Dkh2cWM9U9Lcv+oe4Sg2eu5YsL3jmLDek+naf+U+gWGacpwWPGlUt1xGKimIiwyjUGimFMZrXUasnnHmahSKN9X5zkbXLRhaBDJQy.CpkGwZHgUm.b3gn6JMlZyyqJx0hTM4pqsQHDNU7TGaiKEK4QaFssYY4SeV5mc2cWjjjj554dpIzMFCBBBv4N24fTJuip9x7DPK51Ye6G8cQ+h97LteutJ7Ha0C5C2C8ik0xD5qeyCv4dfGD+09BW.makjpNbla000i95ZbCTOicWLlGWwMabsYRjRIRRRvktzkvfACxdBcsVi1saiG6wdroV9TyxY6snkTPN1brm0RV3hN1G1S.kPC0FA3Tgt2aTLS1PBkY.9Iu60PiMx9GIYdKOjEUYmbYHdpSwZd2uG8DGm2xRqKc7IOi0Qu2WZ0BcfIjPOLLD862GO2y8bU5kmspuzvb7Wder+p6FisLqiW372G14.cs7Lz273g3a+JWEu9KsMN73S+RtWjphydppNiMNW4Xlmi6nKY+jJcp..hs1ZqI99TocFQhgizhDmD4zjRAhRrnajs19TcqEnUn.sCEvTG+DIDQyro9qbeV+gdPjuwZABjBrZMuBBKDLYNQKC3ssFQSfP.n3GnkHpFfK8qDQDQd.lPmHhHxCvD5DQDQd.lPmHhHxCvD5DQDQd.lPmHhHxCvD5DQDQdfB49PupWxNKR95byWmW.96bqtLubk3zEhCWHF.Xbb2bg3XVhgNc5.kRkZaSMgtPHfVqQ2tcmZoeKqqjbEc6Kiwnt296dexqRInO09xXLbs4v79574o55w9q76uxbrbgXnLGqw82mkxm5r72kRILFCt7kuL51sKBBFep6TSnGGGiNc5fKbgKfff.XLlzZ5LEbYE6mxquX+3+8SV1mE8rU39y8eQ12YobiVTiuqt+SqnrLxTuj6Zs91ms9rN3Kx1X+4u8WQT1CKyRdXcM9lVImcdLO8WYsObrpWikqGetzX0tcaDFFlZaRsZqkkK4dVU0E6kpb74bu5rrN9U87tLrLLGSyx5beYadOKy2TOCcq0BoThUWc0bMnHhHhn7Gus0HhHh7.LgNQDQjGfIzIhHh7.LgNQDQjGfIzIhHh7.LgNQDQjGfIzIhHh7.LgNQDQjGnPp1ZDQz7vEp5UjevGetjPHl3JF2DSnOo0.5p3fEGS+ZLqpwki47qrVtMKiwonGCe5XUYMN9xXTDiyzRlCLkD52cGTlk1NtMtMWXaSZ60o3rJpzarsEa4w0Ga6rTtQK5XvEaqTJgVqw26688v96uOBCCGa6mX4Scs0VCOwS7DHLLL0ps1j3RWxCWIVbg3nJOa7w8jYW3XB.iioM1y61bw9cQioxrJ5Mss4S86hDOKRL458qPHfwXPTTDTJUp6SpIzUJEhhhvq7JuBjR4s67Y8Malk1U18kcXCKswyU6q5brmm8UcN1yZek0OjvxVkrJK3wlIiGelr443ynSFpQiFSr1nmZB8Qmh+1auc50dUG9ANFayGeI1xxk2KO3KG2Hhpul52gdiFMJqXgHhHhlS79PmHhHxCvD5DQDQd.lPmHhHxCvD5DQDQd.tzuRNkPEv1GXvN6qAR+1szsoAN0wTXyNRDm8kuAhHZtvD5jS4c2Uie9GuC9B+Tqf8OvT0gybYs1R70d98wy9i6iiuRc8SkPDU2vD5jSY+Cz3yb9V3W5W3D.WMppCm4yIBwK8NCv+yWpKSnSDUZXBcxsDHvM6Y.tVDduqmT0Qyb4zZKNXfEREWPWHhJOLgN4Vr29eg5c5PKFMOpSbg0ydFCU+3ORUUk.OZQZop4RwPylMWrxm5fACxTkugnERuXnLQ.MSv5gwUczLeZB.cDL8Ff98ymeUbU8q+xikR2hd69xX3BwPUNFBg31Ivp6yy7phwMZ623F2.wwwotdtmZBciwfvvPb1yd16n3rrHAyhzlp9AFeqOb03rajE+jlg3e2y0.QQi44bhidl6iouEG8+IkwVLqae95ilgBXtuyh+l+bInc3Q5oJ7w0p9CDTD7w4zxB9XW1nTJjjjf81aOzue+TSnK1ZqsFal533Xr5pqhKbgKffffYt7oVlUBKeu5b4hiWQGSAJA14PMtwgZnTh63pVaS6RXmWsIm5Ks1hStlBGqkDw5EqbPNqsYRsadtjgtXIMstEW4wqUbs4TQuuEYLWji8jds2QuhCKZeKDhIeEARKg9nNJIIe+gI4BeeDksks4Lmuz3TUmU1x13trN1993Nsj4.yP0VKHf+t4nxAuLbDQz7apYq4axRDQD493Z4NQDQjGfIzIhHh7.LgNQDQjGfIzIhHh7.LgNQDQjGfIzIhHh7.LgNQDQjGfIzIhHh7.45x.WcbIvrtEy0s3EfwbYoNEytdr55wG.iw7fqGe.ePLJDBztcanTpTi6TSnKDBn0ZzqWuYtT1cz8cVw9LasMOp.ZYssKy8YQL9UQbl0U7w4suJyssrEGB.HkB7t6awgCrPJAN25RzNDPabiXrn1VcMNF82lTIHeV96RoDFiA+ve3ODc61M0kj8TSnGEEgUVYEbwKdQDDD.iwj5DYdUzKqrEY+Wmi8ht+Yr6m8+7d1LYc+JqwonGqw8l3KRLZAPTBv+vm1fG8DVzOVfu9qJv6rm.cByd7k13TF62x1XMoWWNK4VGUnzlVLMwyP2Zsna2tPoToNn4cYxqHJ6dtvXw3vMiikk47hboEyiKKoKzGtPLrH8g1Xwt8r3K+IOI9Le3N.6avW8q+d3ad4A3Lqk8eNT08iGtVeTFwP61sQXXX1uj6gggXvfA3RW5R2S8XsJTEiKmq943x4JUGKunRo.JkA6zOD3fFX+C0PCIBUBHkU+uuY9bshwnSt9nW99zjZBcq0BoThUVYk7OBIhHJarVHExgeY52hPHgTHchD5TwYV+vR7YADQDQd.lPmHhHxCvD5DQDQd.lPmHhHxCvD5DQDQd.lPmHhHxCjqqk6T8hT.Dos3J2TCK3mtiHWl1ZA5YvfDKfb3qee28RvAWOF8hsvXsPJE39OlBgJALt+xTNkyXB8kX8hs3Xsk3W6o6.kP.MeG.hbVF.zKxhyttBC5aPrF3u8EVAO9Yaf0aIgRJPrwh+rK2CGFYQCEWnWV1H1Zqs36hujZ6Cz3IdfF3Y9W7..ABfn7e85mHJmH.fPfc2WitQFHEBbeqqF9ZWiEnoDnmAO4u8aiWa6Xb7UT.ndTQw7UGsvlkGONHkxItHyLwyP2ZsScgiupdxRULt91bMNRit8Ad+alflABzKluvmn5.kb3ap+d6qu8eakFFraeChRRfQmfjjE60y44R4Zd0WK6wzbWbVFs1w1nQiYZ.c4RXmODGEwXsZefydxga2vOEOQ0ZZsABg.W7ItHNW2.rZ38dxX4YYzsJ2GeYLl08QoTHIIAW5RWB6u+9HLLbrsK0D5IIIXs0VCW7hWDgggPq0o0zIpHOq15ZeWz8+r122bfDOxlw3jmba.oEPyuyMhbZRA1emDbPeCjRAtuMC.ZbqK4dHv5C.NX+8v6eSf3ltQkDrtrMWINF21DBAzZMFLXPp0BcfIjPOHH.CFL.u3K9hyTUdYVCzxnsb7ms10Mxf2cME9plUgRJPhlmkNQtpg0CcK94+DqfG4TgXPjA+dO6d3J6lfNgBzHPf9wVboWdabiCRP6Fk68sRcrZqUmhYgPfvvv466PWHDvXLXmc1YtF35l5XLCrXwcaEv16avuwev0G9tE0yCADsbvBftF7QOSC7I1pIvdV7u8adS7J+nd.qot8qgeni2.mbil71VaIzD+QwMtuCcxuzTBr0IUUcXPDMEFqE60yhVgB.8vqx9CrQ.dqSFhSsl5tZaEEjTkhqkHDQDQd.lPmHhHxCvD5DQDQd.lPmHhHxCvD5DQDQd.lPmHhHxCvD5DQDQd.V9TIhn5.6v6E8i2QBrgBqo.BT.bAdjFgIzc.r7FR9jp74y97Xar.RXv25GeHRrZzsmA6bPDTHAwwUWoO1mOl6Ji8nhkVylMmbw3Js5g9nk90986e6NqtyGlCShuO+.3brLMuUwuhd6U4XOssWr8Mf.Bbv.Chz.RAvpsjHT9AqLbt5wsk2Gyl9qkmk8eT8Te6s2FCFL.J03WcOmX0VqYyl3AevGDJk510E8EM.yRab09x2Gu7ru78wKO6qhLlbkOjPUZzYTcziEE8YYM5MhySV6vkscfgI0I+mTJQRRBtwMtALFS1SnOZmNyYNCBBBtcBcfo+hfY4IvKZeTFiQdzGt1XLOkNvrNFE01ck9nNNFyaRE6vcN2hikosO5Ja5BOew22NrVLsixUQLdzqtcdz+AAAoVKzAlvkbeTGDEEwuiWhnbkKbECp5XfiOG+7delZ0VqYylYdPIhHhnxEuOzIhHh7.LgNQDQjGfIzIhHh7.LgNQDQjGfIzIhHh7.LgNQDQjGfIzIhHh7.LgNQDQjGfIzIhHh7.4R4S0kWZXYrkctZbA3twlqFW.tcrMu7w4zciyw5u7d90tcanTpT62TSnKDBn05Yp7o56U3phZ7JxxtWQzWtXLkm8kuNdYcMidd6qhpLSV1ay0hmkg4AimIuMkRAsViW8UeUbvAGjZAZI0D5QQQX0UWEO0S8T2S0VqHT0KT9GkKEK.tU7vXY7boXA3ChmwUxPmUY4rKx5Yhv9l8cZaedKus4cbuHUqv7NtGU9TMFCjxz+lxSMgtTJgVqwMu4Mui5g9rFHbatw1l28stzmbay11xyK8WQcYRqa8aQ12LlK99sH667teG8AcZ0pEBBBRs+Ss7od2Wx8ooJNCENlbLqqiaYNlt1UOfFO93zxm79w7TOCcq0BoThNc5jqCHQDQDk+3ssFQDQjGfIzIhHh7.LgNQDQjGfIzIhHh7.LgNQDQjGfIzIhHh7.LgNQDQjGfIzIhHh7.LgNQDQjGfIzIhHh7.xc2cWDDjKkEchHhHpjEDDfc2cWHepm5ov0u90q53gHhHhlCW+5WGO0S8T3+OP9QfBqNY52zB....PRE4DQtJDXBB" ],
					"embed" : 1,
					"forceaspect" : 1,
					"id" : "obj-39",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 403.160932603393576, 74.357221603393555, 41.285556793212891, 41.285556793212891 ],
					"pic" : "",
					"presentation" : 1,
					"presentation_rect" : [ 0.0, -0.440681457519531, 58.285556793212891, 58.285556793212891 ]
				}

			}
, 			{
				"box" : 				{
					"autoscroll" : 0,
					"background" : 1,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-52",
					"ignoreclick" : 1,
					"keymode" : 1,
					"lines" : 1,
					"maxclass" : "textedit",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1283.57600432149502, 32.5, 186.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 43.0, 64.0, 260.5703125, 21.0 ],
					"rounded" : 20.0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-10", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"source" : [ "obj-100", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-107", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-109", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-113", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-109", 0 ],
					"order" : 0,
					"source" : [ "obj-114", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-116", 0 ],
					"order" : 1,
					"source" : [ "obj-114", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-155", 0 ],
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-155", 0 ],
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-128", 0 ],
					"source" : [ "obj-119", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"order" : 0,
					"source" : [ "obj-124", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-213", 0 ],
					"source" : [ "obj-124", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-215", 0 ],
					"source" : [ "obj-124", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"order" : 1,
					"source" : [ "obj-124", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 0 ],
					"source" : [ "obj-128", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-133", 0 ],
					"source" : [ "obj-128", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"midpoints" : [ 1046.885528499999964, 304.0, 918.0, 304.0, 918.0, 14.0, 1005.385528499999964, 14.0 ],
					"source" : [ "obj-128", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-131", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-118", 0 ],
					"midpoints" : [ 1099.385528499999964, 352.0, 877.010528499999964, 352.0, 877.010528499999964, 94.0, 1036.885528499999964, 94.0 ],
					"source" : [ "obj-133", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"source" : [ "obj-133", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 1 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"order" : 1,
					"source" : [ "obj-155", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-172", 1 ],
					"midpoints" : [ 1005.385528499999964, 422.166666746139526, 1443.5, 422.166666746139526 ],
					"order" : 0,
					"source" : [ "obj-155", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 1 ],
					"midpoints" : [ 1278.885528499999964, 561.833333253860474, 1395.385528499999964, 561.833333253860474 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-151", 0 ],
					"source" : [ "obj-172", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 1 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"order" : 1,
					"source" : [ "obj-2", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-131", 1 ],
					"midpoints" : [ 231.5, 516.0, 1074.0, 516.0, 1074.0, 691.0, 1314.885528000000022, 691.0 ],
					"order" : 0,
					"source" : [ "obj-2", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-205", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-213", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"order" : 0,
					"source" : [ "obj-215", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-213", 0 ],
					"order" : 1,
					"source" : [ "obj-215", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-70", 0 ],
					"order" : 2,
					"source" : [ "obj-215", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 1 ],
					"order" : 0,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"order" : 1,
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-172", 0 ],
					"source" : [ "obj-30", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"midpoints" : [ 118.214843999999971, 459.0, 144.714843999999971, 459.0, 144.714843999999971, 398.0, 75.214843999999971, 398.0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-131", 0 ],
					"source" : [ "obj-38", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.080776169896126, 0.0, 0.700722098350525, 1.0 ],
					"destination" : [ "obj-116", 0 ],
					"midpoints" : [ 1005.385528499999964, 52.0, 1005.385528499999964, 52.0 ],
					"order" : 0,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.080776169896126, 0.0, 0.700722098350525, 1.0 ],
					"destination" : [ "obj-205", 0 ],
					"order" : 1,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.69213193655014, 0.0, 0.014276148751378, 1.0 ],
					"destination" : [ "obj-109", 0 ],
					"order" : 0,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.69213193655014, 0.0, 0.014276148751378, 1.0 ],
					"destination" : [ "obj-116", 0 ],
					"order" : 1,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.69213193655014, 0.0, 0.014276148751378, 1.0 ],
					"destination" : [ "obj-205", 0 ],
					"order" : 2,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-119", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-124", 0 ],
					"source" : [ "obj-51", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"midpoints" : [ 485.5, 330.5, 279.75, 330.5 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"source" : [ "obj-59", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 1 ],
					"midpoints" : [ 179.714843999999971, 869.509765625, 196.714843999999971, 869.509765625 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-61", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"midpoints" : [ 305.5, 847.418215953340678, 398.25, 847.418215953340678 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 1 ],
					"midpoints" : [ 317.5, 714.509765625, 241.714843999999971, 714.509765625 ],
					"source" : [ "obj-69", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-70", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-79", 0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"source" : [ "obj-77", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 1 ],
					"midpoints" : [ 1096.885528499999964, 561.833333253860474, 1213.385528499999964, 561.833333253860474 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"source" : [ "obj-84", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"midpoints" : [ 1123.5, 430.399999618530273, 1096.385528499999964, 430.399999618530273 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 1 ],
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"source" : [ "obj-89", 0 ]
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
					"destination" : [ "obj-89", 0 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"midpoints" : [ 634.5, 329.0, 279.75, 329.0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 1 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-94", 0 ],
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-94", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-107", 0 ],
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 1 ],
					"source" : [ "obj-99", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"hidden" : 1,
					"midpoints" : [ 279.75, 315.25, 279.75, 315.25 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "7i-lisp.antenna.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/help/Tutorials/PWforMax Intro",
				"patcherrelativepath" : "../../help/Tutorials/PWforMax Intro",
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
				"name" : "bach.hypercomment.mxo",
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
				"name" : "bach.pick.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.portal.mxo",
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
				"name" : "bach.round.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.slice.mxo",
				"type" : "iLaX"
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
				"name" : "bach.times.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.tree.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "get_object-coord.js",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../patchers/utilities",
				"type" : "TEXT",
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
				"name" : "lisp.antenna.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.expr.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.for-fromto.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.for-in.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.iterate.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.print.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.quickeval.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.quote.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mac_or_win.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp",
				"patcherrelativepath" : "../../patchers/pw4m_lisp",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "make_path_once.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp",
				"patcherrelativepath" : "../../patchers/pw4m_lisp",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.detect2lisp.antenna.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.init-unless.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.mouse-is-inside?.maxpat",
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
				"name" : "pw.eval-box.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp",
				"patcherrelativepath" : "../../patchers/pw4m_lisp",
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
				"boxes" : [ "obj-20", "obj-34" ]
			}
, 			{
				"boxes" : [ "obj-55", "obj-56" ]
			}
 ],
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
 ],
		"saved_attribute_attributes" : 		{
			"editing_bgcolor" : 			{
				"expression" : "themecolor.theme_editing_bgcolor"
			}
,
			"locked_bgcolor" : 			{
				"expression" : "themecolor.theme_locked_bgcolor"
			}

		}

	}

}
