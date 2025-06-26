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
		"rect" : [ 34.0, 79.0, 1372.0, 787.0 ],
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
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1490.0, 58.0, 117.0, 22.0 ],
					"text" : "loadmess collapse 1"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.415299520787888,
					"id" : "obj-26",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1659.0, 385.0, 195.0, 51.0 ],
					"text" : "resulting distances\n(except min-span-tree) \nare not relevant in this context !"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.433827042522694,
					"id" : "obj-24",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1627.0, 326.0, 194.0, 52.0 ],
					"text" : "inconclusive attempt\nwith dada.distances"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.433827042522694,
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1086.0, 373.0, 156.0, 29.0 ],
					"text" : "wrong distances"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 20.433827042522694,
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 566.0, 373.0, 170.0, 29.0 ],
					"text" : "correct distances"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-16",
					"linecount" : 16,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 72.0, 26.0, 375.0, 221.0 ],
					"text" : "This example require to install graphviz :\n- either through \"sudo port install graphviz\"\nor \"brew install graphviz\" on MacOS\n\nThis is to access a single function called \"neato\", which is used\nto redraw the dada.graph with correct relative distances\n(i.e. similarity in the spanning tree)\nsee https://graphviz.org/docs/layouts/neato/\n\nNote that depending on how you install, neato might be at a different address. This is \"solved\" in the neato_coordinates\nsubpatch, which makes multiple attempts on your machine and\nfinally returns the address of the installed version you have.\n\nTo test on Windows / WSL : sudo apt install graphviz\n+ find correct path"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1086.0, 144.0, 379.0, 22.0 ],
					"text" : "[ [ 0 1 1. ] [ 0 2 1. ] [ 0 3 1.414214 ] [ 1 2 1.414214 ] [ 1 3 1. ] [ 2 3 1. ] ]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1086.0, 104.0, 119.0, 22.0 ],
					"text" : "lisp.quickeval @out t"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1086.0, 53.0, 70.0, 22.0 ],
					"text" : "lisp.quote 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1086.0, 22.0, 117.0, 22.0 ],
					"text" : "(0 0) (0 1) (1 0) (1 1)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1086.0, 77.0, 262.0, 22.0 ],
					"text" : "lisp.expr fv-morphologie::dist-euclid a 'nil"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-27",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "lisp.lore.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 1489.0, 84.0, 109.0, 35.0 ],
					"varname" : "bp536454610741",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 930.0, 326.0, 55.0, 22.0 ],
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
					"id" : "obj-47",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 807.0, 306.0, 29.5, 22.0 ],
					"text" : "43"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 817.0, 278.0, 71.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80300
					}
,
					"text" : "bach.length"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 282.5, 510.0, 29.5, 22.0 ],
					"text" : "43"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 293.0, 481.0, 71.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80300
					}
,
					"text" : "bach.length"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 458.0, 222.0, 71.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80300
					}
,
					"text" : "bach.length"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 293.0, 454.0, 107.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80300
					}
,
					"text" : "bach.keys vertices"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 785.0, 179.0, 100.0, 22.0 ],
					"text" : "bach.ezmidiplay"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 153.0, 813.0, 100.0, 22.0 ],
					"text" : "bach.ezmidiplay"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 145.0, 473.0, 50.0, 22.0 ],
					"text" : "12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 1,
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
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 226.0, 192.0, 29.0, 22.0 ],
									"text" : "thru"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 307.0, 157.0, 50.0, 22.0 ],
									"text" : "0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 226.0, 127.0, 100.0, 22.0 ],
									"text" : "bach.filternull"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 226.0, 99.0, 100.0, 22.0 ],
									"text" : "bach.x2dx"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 108.2479248046875, 100.0, 49.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.mapelem @maxdepth 1 @unwrap 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-70",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 39.999999804687491, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-72",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 266.215575804687489, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 1 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-61", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-64", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-70", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 926.0, 185.0, 63.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p intervals"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 899.0, 228.0, 29.0, 22.0 ],
					"text" : "thru"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-71",
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
						"rect" : [ 262.0, -656.0, 640.0, 480.0 ],
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
									"id" : "obj-79",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 363.5, 82.0, 100.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.sort"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 300.5, 230.66666841506958, 109.0, 22.0 ],
									"text" : "bach.locate @out t"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 363.5, 39.99999319335177, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "bang" ],
									"patching_rect" : [ 49.0, 82.0, 297.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80106
									}
,
									"text" : "bach.keys hover click"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 188.0, 111.0, 137.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80106
									}
,
									"text" : "bach.keys vertex @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 49.0, 111.0, 137.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80106
									}
,
									"text" : "bach.keys vertex @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "int", "int" ],
									"patching_rect" : [ 49.0, 142.0, 61.0, 22.0 ],
									"text" : "change 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 49.0, 230.66666841506958, 81.0, 22.0 ],
									"text" : "to_chord play"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 49.0, 198.666664123535156, 270.5, 22.0 ],
									"text" : "t b l"
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
									"patching_rect" : [ 49.0, 39.99999319335177, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-69",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 300.5, 261.666680193351795, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-70",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 49.0, 261.666680193351795, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"source" : [ "obj-20", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-52", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"source" : [ "obj-79", 1 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 85.0, 439.0, 56.000002999999992, 22.0 ],
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
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 78.0, 568.0, 117.0, 22.0 ],
					"text" : "loadmess collapse 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-167",
					"maxclass" : "newobj",
					"numinlets" : 1,
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
									"id" : "obj-163",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 282.0, 108.0, 54.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80106
									}
,
									"text" : "bach.flat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-164",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 282.0, 137.5, 63.0, 22.0 ],
									"text" : "bach.x2dx"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-162",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 217.0, 108.0, 54.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80106
									}
,
									"text" : "bach.flat"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 224.0, 180.0, 84.0, 23.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.<="
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-160",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 217.0, 137.5, 63.0, 22.0 ],
									"text" : "bach.x2dx"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-154",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 55.0, 137.5, 58.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80106
									}
,
									"text" : "bach.sort"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-165",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 55.0, 40.064452999999958, 30.0, 30.0 ],
									"varname" : "u578003985"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-166",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 55.0, 270.576293999999962, 30.0, 30.0 ],
									"varname" : "u173003983"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-162", 0 ],
									"source" : [ "obj-154", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-163", 0 ],
									"source" : [ "obj-154", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-166", 0 ],
									"source" : [ "obj-154", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-160", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-160", 0 ],
									"source" : [ "obj-162", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-164", 0 ],
									"source" : [ "obj-163", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 1 ],
									"source" : [ "obj-164", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-154", 0 ],
									"source" : [ "obj-165", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-154", 1 ],
									"source" : [ "obj-24", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 102.0, 352.0, 78.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p sort_shape"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-155",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 21.0, 568.0, 54.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80106
					}
,
					"text" : "bach.flat"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-156",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "moz.nth.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 21.0, 499.0, 120.0, 58.0 ],
					"varname" : "bp653855722986[5]",
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
					"id" : "obj-157",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "moz.chord_view.maxpat",
					"numinlets" : 2,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 21.0, 606.0, 151.0, 202.0 ],
					"varname" : "bp348363866636[9]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
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
						"rect" : [ 34.0, 79.0, 701.0, 682.0 ],
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
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 217.0, 224.0, 225.0, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 16.0, 140.0, 220.0, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 16.0, 587.0, 170.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.collect"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 16.0, 386.0, 56.0, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 110.0, 508.0, 29.5, 22.0 ],
									"text" : "!- 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 110.0, 545.0, 32.0, 22.0 ],
									"text" : "gate"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 110.0, 478.0, 233.0, 22.0 ],
									"text" : "bach.belong"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 240.0, 454.0, 55.0, 22.0 ],
									"text" : "44 45 46"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 217.0, 418.0, 111.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.collect @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 263.0, 386.0, 80.0, 22.0 ],
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
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 263.0, 357.0, 34.0, 22.0 ],
									"text" : "sel 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 263.0, 327.0, 67.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.== nil"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 217.0, 252.0, 65.0, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 423.0, 418.0, 100.0, 22.0 ],
									"text" : "bach.replace nil"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 53.0, 418.0, 133.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.iter @maxdepth 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 53.0, 17.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 16.0, 65.0, 55.0, 22.0 ],
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
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 263.0, 284.0, 141.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.iter @maxdepth 1"
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
									"patching_rect" : [ 16.0, 621.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-9",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 423.0, 628.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 563.0, 274.0, 67.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.n2mc"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 563.0, 219.0, 69.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.pick 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 6,
									"outlettype" : [ "", "", "", "", "", "" ],
									"patching_rect" : [ 547.0, 189.0, 100.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.beatunbox"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 563.0, 328.0, 79.0, 22.0 ],
									"text" : "bach.filternull"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 423.0, 587.0, 55.0, 22.0 ],
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
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 563.0, 301.0, 114.0, 22.0 ],
									"text" : "moz.rem-local-dups"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 563.0, 246.0, 54.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.flat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "dump", "" ],
									"patching_rect" : [ 547.0, 59.0, 100.0, 22.0 ],
									"text" : "t dump l"
								}

							}
, 							{
								"box" : 								{
									"bwcompatibility" : 80300,
									"clefs" : [ "G", "F" ],
									"defaultnoteslots" : [ "null" ],
									"enharmonictable" : [ "default", "default" ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidevoices" : [ 0, 0 ],
									"id" : "obj-46",
									"keys" : [ "CM", "CM" ],
									"loop" : [ "[", 1, 1, 0, "]", "[", 1, 1, 0, "]" ],
									"maxclass" : "bach.score",
									"midichannels" : [ 1, 2 ],
									"notationstyles" : [ "et", "et" ],
									"numinlets" : 7,
									"numoutlets" : 9,
									"numparts" : [ 1, 1 ],
									"numvoices" : 2,
									"out" : "nnnnnnnnn",
									"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 547.0, 97.0, 94.0, 89.0 ],
									"pitcheditrange" : [ "null" ],
									"showmeasurenumbers" : [ 1, 1 ],
									"stafflines" : [ 5, 5 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"versionnumber" : 80900,
									"voicenames" : [ "[", "]", "[", "]" ],
									"voicespacing" : [ 0.0, 26.0, 26.0 ],
									"whole_score_data_0000000000" : [ "score", "[", "slotinfo", "[", 1, "[", "name", "velocity envelope", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 2, "[", "name", "slot function", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 3, "[", "name", "slot intlist", "]", "[", "type", "intlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 4, "[", "name", "slot floatlist", "]", "[", "type", "floatlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 5, "[", "name", "slot int", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 6, "[", "name", "slot float", "]", "[", "type", "float", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 7, "[", "name", "slot text", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 8, "[", "name", "slot filelist", "]", "[", "type", "filelist", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080213504, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 9, "[", "name", "slot spat", "]", "[", "type", "spat", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076101120, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 10, "[", "name", "slot llll", "]", "[", "type", "llll", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 11, "[", "name", "slot 11", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 12, "[", "name", "slot 12", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 13, "[", "name", "slot 13", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 14, "[", "name", "slot 14", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 15, "[", "name", "slot 15", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 16, "[", "name", "slot 16", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 17, "[", "name", "slot 17", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 18, "[", "name", "slot 18", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 19, "[", "name", "slot 19", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 20, "[", "name", "dynamics", "]", "[", "type", "dynamics", "]", "[", "key", "d", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079083008, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 21, "[", "name", "lyrics", "]", "[", "type", "text", "]", "[", "key", "l", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 22, "[", "name", "articulations", "]", "[", "type", "articulations", "]", "[", "key", "a", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 23, "[", "name", "notehead", "]", "[", "type", "notehead", "]", "[", "key", "h", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 24, "[", "name", "slot 24", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 25, "[", "name", "slot 25", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 26, "[", "name", "slot 26", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 27, "[", "name", "slot 27", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 28, "[", "name", "slot 28", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 29, "[", "name", "slot 29", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 30, "[", "name", "slot 30", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "]", "[", "commands", "[", 1, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 2, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 3, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 4, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 5, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "]", "[", "markers", "]", "[", "midichannels", 1, 2, "]", "[", "articulationinfo", "]", "[", "noteheadinfo", "]", "[", 0, "]", "[", 0, "]" ],
									"whole_score_data_count" : [ 1 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 217.0, 176.0, 230.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.mapelem @maxdepth 1 @unwrap 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 34.0, 214.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 34.0, 182.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.length"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 16.0, 99.0, 222.0, 23.0 ],
									"text" : "dada.segment @segmentsize beat*2"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-58",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 16.0, 14.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 1 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"order" : 1,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-10", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-14", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 1 ],
									"midpoints" : [ 62.5, 536.0, 132.5, 536.0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 2 ],
									"source" : [ "obj-14", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-20", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 1 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 1 ],
									"order" : 0,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 1 ],
									"order" : 1,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 1 ],
									"midpoints" : [ 119.5, 576.5, 101.0, 576.5 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-33", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 1 ],
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-45", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-47", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-5", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 458.0, 185.0, 78.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p slicing"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-57",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 458.0, 19.0, 41.0, 23.0 ],
					"text" : "dump"
				}

			}
, 			{
				"box" : 				{
					"bwcompatibility" : 70909,
					"clefs" : [ "G", "F" ],
					"constraintbeamsinspaces" : 0,
					"defaultnoteslots" : [ "null" ],
					"enharmonictable" : [ "default", "default" ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidevoices" : [ 0, 0 ],
					"id" : "obj-51",
					"keys" : [ "CM", "CM" ],
					"loop" : [ "[", 1, 1, 0, "]", "[", 1, 1, 0, "]" ],
					"maxclass" : "bach.score",
					"midichannels" : [ 1, 2 ],
					"notationstyles" : [ "et", "et" ],
					"numinlets" : 7,
					"numoutlets" : 9,
					"numparts" : [ 1, 1 ],
					"numvoices" : 2,
					"out" : "nnnnnnnnn",
					"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 458.0, 52.0, 393.0, 118.0 ],
					"pitcheditrange" : [ "null" ],
					"showmeasurenumbers" : [ 1, 1 ],
					"stafflines" : [ 5, 5 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"versionnumber" : 80900,
					"voicenames" : [ "[", "]", "[", "]" ],
					"voicespacing" : [ 0.0, 26.0, 26.0 ],
					"vzoom" : 70.0,
					"whole_score_data_0000000000" : [ "score", "[", "slotinfo", "[", 1, "[", "name", "velocity envelope", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 2, "[", "name", "slot function", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 3, "[", "name", "slot intlist", "]", "[", "type", "intlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 4, "[", "name", "slot floatlist", "]", "[", "type", "floatlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 5, "[", "name", "slot int", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 6, "[", "name", "slot float", "]", "[", "type", "float", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 7, "[", "name", "slot text", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 8, "[", "name", "slot filelist", "]", "[", "type", "filelist", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080213504, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 9, "[", "name", "slot spat", "]", "[", "type", "spat", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076101120, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 10, "[", "name", "slot llll", "]", "[", "type", "llll", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 11, "[", "name", "slot 11", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 12, "[", "name", "slot 12", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 13, "[", "name", "slot 13", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 14, "[", "name", "slot 14", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 15, "[", "name", "slot 15", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 16, "[", "name", "slot 16", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 17, "[", "name", "slot 17", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 18, "[", "name", "slot 18", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 19, "[", "name", "slot 19", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 20, "[", "name", "dynamics", "]", "[", "type", "dynamics", "]", "[", "key", "d", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079083008, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 21, "[", "name", "lyrics", "]", "[", "type", "text", "]", "[", "key", "l", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 22, "[", "name", "articulations", "]", "[", "type", "articulations", "]", "[", "key", "a", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 23, "[", "name", "notehead", "]", "[", "type", "notehead", "]", "[", "key", "h", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 24, "[", "name", "slot 24", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 25, "[", "name", "slot 25", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 26, "[", "name", "slot 26", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 27, "[", "name", "slot 27", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 28, "[", "name", "slot 28", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 29, "[", "name", "slot 29", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 30, "[", "name", "slot 30", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "]", "[", "commands", "[", 1, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 2, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 3, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 4, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 5, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "]", "[", "markers", "[", "[", 1, 1, "1/16", "]", "[", "marker", 1, "]", "none", "]", "[", "[", 1, 1, "7/16", "]", "[", "marker", 2, "]", "none", "]", "[", "[", 2, 2, "9/16", "]", "[", "marker", 3, "]", "none", "]", "]", "[", "midichannels", 1, 2, "]", "[", "articulationinfo", "]", "[", "noteheadinfo", "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 1, "]", "[", "1/16", "[", "C5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E5", 90, 0, 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "F5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "G5", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "C6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "B5", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "C6", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "D6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "C6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "D6", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "G6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "F6", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "G6", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "E6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "E6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "G6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "C6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F6", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "E6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "A5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "C6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "F#5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B5", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 9, "]", "[", "1/8", "[", "A5", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "D5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "3/16", "[", "C6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "B5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F#5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "E5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F#5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A5", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "G5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "B5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "D6", 90, 0, 0, "]", 0, "]", "[", "[", "leveltype", 1, "]", "[", "1/32", "[", "B5", 90, 0, 0, "]", 0, "]", "[", "1/32", "[", "C6", 90, 0, 0, "]", 0, "]", "]", "[", "1/16", "[", "D6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/8", "[", "B5", 90, 0, 0, "]", 0, "]", "[", "[", "leveltype", 1, "]", "[", "1/16", "[", "A5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G5", 90, 0, 0, "]", 0, "]", "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "G5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 1, "]", "[", "1/16", "[", "G5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B5", 90, 0, 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "C6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G5", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "F#5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 1, "]", "[", "1/16", "[", "A5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C6", 90, 0, 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "D6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A5", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "B5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 1, "]", "[", "1/16", "[", "D6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B5", 90, 0, 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "A5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D6", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "C6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 1, "]", "[", "1/16", "[", "E6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C6", 90, 0, 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "B5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "Db6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E6", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "D6", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "Db6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "D6", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "E6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "F6", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "A5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "B5", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "Db6", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "D6", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "F#5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "Ab5", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "A5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/8", "[", "B5", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "C6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "D6", 90, 1, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "D6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F#5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "Ab5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "A5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F#5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "Ab5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "E6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "D6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D6", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "C6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "Ab6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "A6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "Ab5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/8", "[", "C6", 90, 0, 0, "]", 0, "]", "[", "[", "leveltype", 1, "]", "[", "1/16", "[", "B5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A5", 90, 0, 0, "]", 0, "]", "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "A5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "E6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[" ],
					"whole_score_data_0000000001" : [ "F6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A6", 90, 0, 0, "]", 0, "]", "]", "[", "1/2", "[", "G6", 90, 1, 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "G6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "A6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E6", 90, 0, 0, "]", 0, "]", "]", "[", "1/2", "[", "F6", 90, 1, 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "F6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "D6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G6", 90, 0, 0, "]", 0, "]", "]", "[", "1/2", "[", "F6", 90, 1, 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "F6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "G6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D6", 90, 0, 0, "]", 0, "]", "]", "[", "1/2", "[", "E6", 90, 1, 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "E6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "F6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "D6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "A6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E6", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "F6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "C7", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/8", "[", "C7", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "G6", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/8", "[", "E6", 90, 0, 0, "]", 0, "]", "[", "[", "leveltype", 1, "]", "[", "1/16", "[", "D6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C6", 90, 0, 0, "]", 0, "]", "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "C6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "Bb5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "F5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "Bb5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "A5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "D5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C6", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B5", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", 1, "[", "E5", 90, 0, 0, "]", "[", "G5", 90, 0, 0, "]", "[", "C6", 90, 0, 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 1, "]", "[", "1/16", "[", "C4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E4", 90, 0, 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "F4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C4", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 9, "]", "[", "1/8", "[", "G4", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "G3", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 1, "]", "[", "1/16", "[", "G4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B4", 90, 0, 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "C5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G4", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "C5", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "B4", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "C5", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "D5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "E5", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "G4", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "A4", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "B4", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "C5", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "E4", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "F#4", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "G4", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/8", "[", "A4", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "B4", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "C5", 90, 1, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "C5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F#4", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "G4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F#4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D4", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "G4", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "B3", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "C4", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "D4", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "E4", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "F#4", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "G4", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "E4", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "3/16", "[", "B3", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C4", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/8", "[", "D4", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "D3", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 1, "]", "[", "1/16", "[", "G3", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A3", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B3", 90, 0, 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "C4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A3", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B3", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G3", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "D4", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "G4", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "F#4", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "G4", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "A4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F#4", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "G4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F#4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D4", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "A4", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "D5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "C5", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "D5", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "G4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "D5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "F5", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "E5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "F5", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "D5", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "E5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "E5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "G5", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "F5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "G5", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "E5", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "F5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "Bb5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "F5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "Bb5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "A5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "D5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G5", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "F5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "B4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "D5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A4", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "Ab4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C5", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 9, "]", "[", "1/8", "[", "B4", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "E4", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "3/16", "[", "D5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "C5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G4", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "F#4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "Ab4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B4", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "A4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "C5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "E5", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "A4", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "E5", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "E4", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 9, "]", "[", "1/8", "[", "A4", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "A3", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "-1/16", 0, "]", "[", "[", "leveltype", 1, "]", "[", "1/16", "[", "E5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C5", 90, 0, 0, "]", 0, "]", "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "B4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "Db5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E5", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "D5", 90, 1, 0, "]", 0, "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "D5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "D5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A4", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "B4", 90, 1, 0, "]", 0, "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "B4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B4", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "A4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "C5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "B4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D5", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "C5", 90, 1, 0, "]", 0, "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "C5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "Bb4", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "C5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "A4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "Bb4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "G4", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "A4", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "Bb4", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "A4", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "G4", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "F4", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "D5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "C5", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "Bb4", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "A4", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "F5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "E5", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "D5", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "E5", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F4", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "G4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D4", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "E4", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "C4", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 10, "]", "[", "1/8", "[", "D4", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "E4", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/16", "[", "F4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "D4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "E4", 90, 0, 0, "]", 0, "]", "[", "1/16", "[", "F4", 90, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 9, "]", "[", "1/8", "[", "G4", 90, 0, 0, "]", 0, "]", "[", "1/8", "[", "G3", 90, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", 1, "[", "C3", 90, 0, 0, "]", "[", "C4", 90, 0, 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]" ],
					"whole_score_data_count" : [ 2 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "maxdistedge",
					"id" : "obj-41",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1691.0, 452.0, 176.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"attr" : "showweights",
					"id" : "obj-40",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 754.0, 414.0, 128.0, 22.0 ],
					"text_width" : 94.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 430.0, 414.0, 61.0, 22.0 ],
					"text" : "autozoom"
				}

			}
, 			{
				"box" : 				{
					"attr" : "fontsize",
					"id" : "obj-21",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 631.0, 414.0, 118.0, 22.0 ],
					"text_width" : 72.0
				}

			}
, 			{
				"box" : 				{
					"attr" : "edgewidth",
					"id" : "obj-13",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 508.0, 414.0, 117.0, 22.0 ],
					"text_width" : 79.0
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 900.0, 91.0, 68.0, 22.0 ],
					"text" : "key_trigger"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "clear", "" ],
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
						"rect" : [ 34.0, 79.0, 1372.0, 787.0 ],
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
									"id" : "obj-75",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 655.0, 10.0, 100.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 346.0, 100.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"versionnumber" : 80900
									}
,
									"text" : "bach.reg @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 316.0, 22.0, 22.0 ],
									"text" : "t b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 737.0, 240.0, 100.0, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 736.0, 212.0, 101.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"versionnumber" : 80900
									}
,
									"text" : "bach.reg @out m"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 655.0, 152.0, 87.0, 22.0 ],
									"text" : "prepend which"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 655.0, 89.0, 100.0, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 655.0, 180.0, 100.0, 22.0 ],
									"saved_object_attributes" : 									{
										"shell" : "(default)"
									}
,
									"text" : "shell"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 655.0, 125.0, 181.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80900
									}
,
									"text" : "bach.step @out m"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 669.0, 34.0, 153.0, 20.0 ],
									"text" : "3 possible paths for neato :"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 655.0, 59.0, 352.0, 22.0 ],
									"text" : "/usr/local/bin/neato /opt/local/bin/neato /opt/homebrew/bin/neato"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 404.0, 286.0, 22.0 ],
									"text" : "append -Tdot /tmp/graph.dot > /tmp/graph-coord.dot"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 358.0, 522.0, 100.0, 22.0 ],
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
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 37.0, 515.0, 32.0, 22.0 ],
									"text" : "print"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 427.833333333333371, 782.967722370547563, 69.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.pick 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 427.833333333333371, 758.941915918934683, 65.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.trans"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 427.833333333333371, 734.916109467321803, 69.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.pick 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 427.833333333333371, 710.890303015708923, 65.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.trans"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-9",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 421.333344000000011, 827.156982812500019, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 225.333333333333371, 118.0, 100.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.join"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 225.333333333333371, 43.99999981250005, 100.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.slice -1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 49.0, 95.0, 100.0, 49.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.mapelem @maxdepth 1 @unwrap 1"
								}

							}
, 							{
								"box" : 								{
									"code" : "if $l1 == 0. then 0.05 else $l1 ",
									"id" : "obj-12",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 306.333333333333371, 70.666666626930237, 221.0, 35.0 ],
									"saved_object_attributes" : 									{
										"embed" : 1,
										"versionnumber" : 80300
									}
,
									"text" : "bach.eval if $l1 == 0. then 0.05 else $l1 @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-175",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "clear" ],
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
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 105.0, 78.0, 100.0, 22.0 ],
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 82.0, 115.0, 100.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 0,
														"versionnumber" : 80300
													}
,
													"text" : "bach.reg"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-171",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "clear" ],
													"patching_rect" : [ 50.0, 262.400000751018524, 100.0, 22.0 ],
													"text" : "t l clear"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-127",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 190.0, 144.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.pack vertices edges"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-120",
													"linecount" : 2,
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 222.0, 100.0, 35.0 ],
													"text" : "bach.prepend graph"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-172",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 363.99996954896551, 58.999976751018494, 30.0, 30.0 ],
													"varname" : "u807007147"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-173",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1046.199951000000056, 1324.59997599999997, 30.0, 30.0 ],
													"varname" : "u177007149"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-174",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 320.400000751018524, 30.0, 30.0 ],
													"varname" : "u612007130"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-127", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-171", 0 ],
													"source" : [ "obj-120", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-120", 0 ],
													"source" : [ "obj-127", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-174", 0 ],
													"source" : [ "obj-171", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-174", 0 ],
													"source" : [ "obj-171", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 1 ],
													"source" : [ "obj-172", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-173", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-127", 1 ],
													"source" : [ "obj-2", 1 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 225.333333333333371, 745.156968046592738, 156.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p vertices&edges"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-167",
									"maxclass" : "newobj",
									"numinlets" : 1,
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
										"rect" : [ 34.0, 79.0, 797.0, 787.0 ],
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
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 472.0, 429.0, 100.0, 22.0 ],
													"text" : "bach./ 10"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 281.0, 365.0, 100.0, 22.0 ],
													"text" : "+ 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-164",
													"linecount" : 2,
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 310.0, 463.0, 100.0, 35.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.rev @maxdepth 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-161",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 294.0, 426.666666626930237, 125.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.pack label coord"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-115",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 176.666666746139526, 312.000000953674316, 107.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.portal @out t"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-114",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 181.0, 362.666666626930237, 71.0, 22.0 ],
													"text" : "fromsymbol"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-111",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 82.0, 129.0, 100.0, 22.0 ],
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-110",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 519.0, 648.000002861022949, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.collect @inwrap 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-107",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 626.0, 374.666666626930237, 118.0, 22.0 ],
													"text" : "bach.filternull @out t"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-105",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 626.0, 445.666666626930237, 71.0, 22.0 ],
													"text" : "fromsymbol"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-103",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 626.0, 416.666666626930237, 40.0, 22.0 ],
													"text" : "itoa"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-102",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 626.0, 346.666666626930237, 54.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.flat"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-101",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 420.0, 379.166666626930237, 165.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.mapelem @maxdepth 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-93",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 418.0, 331.666666626930237, 115.0, 22.0 ],
													"text" : "bach.split 44 @out t"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-92",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 419.0, 279.666666626930237, 167.0, 22.0 ],
													"text" : "bach.sieve 60 @op < @out m"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-90",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"patching_rect" : [ 416.0, 245.666666626930237, 40.0, 22.0 ],
													"text" : "atoi"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-89",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 425.0, 208.666666626930237, 71.0, 22.0 ],
													"text" : "fromsymbol"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-84",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 173.0, 226.666666626930237, 79.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.pick 1 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-83",
													"maxclass" : "newobj",
													"numinlets" : 4,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 86.0, 100.0, 100.0, 22.0 ],
													"text" : "bach.replace nil"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-70",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 163.0, 160.666666626930237, 552.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.iter @maxdepth 1 @unwrap 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-65",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 251.0, 263.666666626930237, 115.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.pick 2 @out m"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-165",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 86.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-166",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 601.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-102", 0 ],
													"source" : [ "obj-101", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-161", 1 ],
													"source" : [ "obj-101", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-107", 0 ],
													"source" : [ "obj-102", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-105", 0 ],
													"source" : [ "obj-103", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-101", 1 ],
													"source" : [ "obj-105", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-103", 0 ],
													"source" : [ "obj-107", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-166", 0 ],
													"source" : [ "obj-110", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-110", 0 ],
													"source" : [ "obj-111", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-70", 0 ],
													"source" : [ "obj-111", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-161", 0 ],
													"source" : [ "obj-114", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 0 ],
													"source" : [ "obj-115", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-164", 0 ],
													"source" : [ "obj-161", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-110", 1 ],
													"source" : [ "obj-164", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-83", 0 ],
													"source" : [ "obj-165", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-89", 0 ],
													"source" : [ "obj-65", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-110", 2 ],
													"source" : [ "obj-70", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-84", 0 ],
													"source" : [ "obj-70", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-111", 0 ],
													"source" : [ "obj-83", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-115", 0 ],
													"source" : [ "obj-84", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-65", 0 ],
													"source" : [ "obj-84", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-90", 0 ],
													"source" : [ "obj-89", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-92", 0 ],
													"source" : [ "obj-90", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-93", 0 ],
													"source" : [ "obj-92", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-101", 0 ],
													"source" : [ "obj-93", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 436.333333333333371, 670.933638015708993, 126.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p vertices-coordinates"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-160",
									"maxclass" : "newobj",
									"numinlets" : 1,
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
													"id" : "obj-135",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 324.0, 171.0433349609375, 50.0, 22.0 ],
													"text" : "0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-136",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 246.0, 171.0433349609375, 50.0, 22.0 ],
													"text" : "1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-137",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 246.0, 138.0433349609375, 100.0, 22.0 ],
													"text" : "bach.filternull"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-138",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 238.0, 108.0433349609375, 100.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.find --"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-139",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 50.0, 168.0433349609375, 144.0, 22.0 ],
													"text" : "bach.sieve @maxdepth 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-158",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 39.999999960937544, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-159",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 262.047240960937415, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-139", 2 ],
													"source" : [ "obj-135", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-139", 2 ],
													"source" : [ "obj-136", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-135", 0 ],
													"source" : [ "obj-137", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-136", 0 ],
													"source" : [ "obj-137", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-137", 0 ],
													"source" : [ "obj-138", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-138", 0 ],
													"source" : [ "obj-139", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-159", 0 ],
													"source" : [ "obj-139", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-139", 0 ],
													"source" : [ "obj-158", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 225.333333333333371, 679.846968492546011, 104.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p remove-vertices"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-157",
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
										"rect" : [ 34.0, 79.0, 776.0, 675.0 ],
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
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 228.0, 286.0, 70.0, 22.0 ],
													"text" : "bach.locate"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 286.0, 70.0, 22.0 ],
													"text" : "bach.locate"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-4",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 335.500001430511475, 11.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-154",
													"linecount" : 2,
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 251.0, 454.0, 99.0, 35.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.pack weight"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-151",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 234.0, 237.666666626930237, 71.0, 22.0 ],
													"text" : "fromsymbol"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-148",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 323.0, 100.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.join"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-114",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 153.0, 237.666666626930237, 71.0, 22.0 ],
													"text" : "fromsymbol"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-111",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 82.0, 129.0, 100.0, 22.0 ],
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-110",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 519.0, 648.000002861022949, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.collect @inwrap 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-109",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 146.0, 469.666666626930237, 57.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.join"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-107",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 531.0, 363.666666626930237, 118.0, 22.0 ],
													"text" : "bach.filternull @out t"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-105",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 531.0, 419.666666626930237, 71.0, 22.0 ],
													"text" : "fromsymbol"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-103",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 531.0, 390.666666626930237, 40.0, 22.0 ],
													"text" : "itoa"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-102",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 531.0, 335.666666626930237, 54.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.flat"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-101",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 332.0, 378.666666626930237, 165.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.mapelem @maxdepth 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-93",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 332.0, 350.666666626930237, 115.0, 22.0 ],
													"text" : "bach.split 44 @out t"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-92",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 332.0, 324.666666626930237, 167.0, 22.0 ],
													"text" : "bach.sieve 60 @op < @out m"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-90",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "list" ],
													"patching_rect" : [ 332.0, 297.666666626930237, 40.0, 22.0 ],
													"text" : "atoi"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-89",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 332.0, 268.666666626930237, 71.0, 22.0 ],
													"text" : "fromsymbol"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-84",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 163.0, 193.666666626930237, 151.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.pick 1 3 4 @out mmn"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-83",
													"maxclass" : "newobj",
													"numinlets" : 4,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 86.0, 100.0, 100.0, 22.0 ],
													"text" : "bach.replace nil"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-70",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 163.0, 160.666666626930237, 552.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.iter @maxdepth 1 @unwrap 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-65",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 332.0, 244.666666626930237, 115.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.pick 1 @out m"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-155",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 86.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-156",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 601.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-102", 0 ],
													"source" : [ "obj-101", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-154", 0 ],
													"source" : [ "obj-101", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-107", 0 ],
													"source" : [ "obj-102", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-105", 0 ],
													"source" : [ "obj-103", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-101", 1 ],
													"source" : [ "obj-105", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-103", 0 ],
													"source" : [ "obj-107", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-110", 1 ],
													"source" : [ "obj-109", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-156", 0 ],
													"source" : [ "obj-110", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-110", 0 ],
													"source" : [ "obj-111", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-70", 0 ],
													"source" : [ "obj-111", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-114", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-109", 0 ],
													"source" : [ "obj-148", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-151", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-109", 1 ],
													"source" : [ "obj-154", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-83", 0 ],
													"source" : [ "obj-155", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-148", 1 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 1 ],
													"order" : 0,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 1 ],
													"order" : 1,
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-89", 0 ],
													"source" : [ "obj-65", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-110", 2 ],
													"source" : [ "obj-70", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-84", 0 ],
													"source" : [ "obj-70", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-111", 0 ],
													"source" : [ "obj-83", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 0 ],
													"source" : [ "obj-84", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-151", 0 ],
													"source" : [ "obj-84", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-65", 0 ],
													"source" : [ "obj-84", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-90", 0 ],
													"source" : [ "obj-89", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-148", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-92", 0 ],
													"source" : [ "obj-90", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-93", 0 ],
													"source" : [ "obj-92", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-101", 0 ],
													"source" : [ "obj-93", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 225.333333333333371, 710.890303015708923, 93.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p edges+weight"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-142",
									"maxclass" : "newobj",
									"numinlets" : 1,
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-81",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 324.0, 171.0433349609375, 50.0, 22.0 ],
													"text" : "1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-80",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 246.0, 171.0433349609375, 50.0, 22.0 ],
													"text" : "0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-78",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 246.0, 138.0433349609375, 100.0, 22.0 ],
													"text" : "bach.filternull"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-77",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 238.0, 108.0433349609375, 100.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.find --"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-75",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 50.0, 168.0433349609375, 144.0, 22.0 ],
													"text" : "bach.sieve @maxdepth 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-140",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 39.99999996093743, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-141",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 262.047240960937415, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-75", 0 ],
													"source" : [ "obj-140", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-141", 0 ],
													"source" : [ "obj-75", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-77", 0 ],
													"source" : [ "obj-75", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-78", 0 ],
													"source" : [ "obj-77", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-80", 0 ],
													"source" : [ "obj-78", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-81", 0 ],
													"source" : [ "obj-78", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-75", 2 ],
													"source" : [ "obj-80", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-75", 2 ],
													"source" : [ "obj-81", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 436.333333333333371, 639.890303492546082, 95.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p remove-edges"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 293.0, 639.890303492546082, 100.0, 22.0 ],
									"text" : "bach.split \\;"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 212.0, 611.890303492546082, 100.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.slice 9"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 212.0, 582.223636865615845, 100.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.slice -1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 131.0, 555.556970715522766, 100.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.slice 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 131.0, 501.180296143569876, 212.0, 22.0 ],
									"text" : "read /tmp/graph-coord.dot, bang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 131.0, 527.890304207801819, 100.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.read"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 50.0, 455.2236328125, 100.0, 22.0 ],
									"saved_object_attributes" : 									{
										"shell" : "(default)"
									}
,
									"text" : "shell"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 385.0, 210.2236328125, 134.0, 22.0 ],
									"text" : "\\\"plaintext\\\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 251.0, 210.2236328125, 103.0, 22.0 ],
									"text" : "sprintf symout %s"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 251.0, 169.7236328125, 134.0, 22.0 ],
									"text" : "\\\"/tmp/graph.svg\\\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 210.2236328125, 100.0, 22.0 ],
									"text" : "lisp.quote 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 284.7236328125, 80.0, 22.0 ],
									"text" : "lisp.quickeval"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 8,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 252.2236328125, 488.0, 22.0 ],
									"text" : "lisp.expr fv-morphologie::graph>dot graph 1 'nil path :shape plaintext :legend t @triggers 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 50.0, 169.7236328125, 100.0, 22.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 39.99999981250005, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-5",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 225.333344000000011, 827.156982812500019, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-157", 1 ],
									"order" : 1,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"order" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-167", 0 ],
									"source" : [ "obj-142", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-175", 1 ],
									"source" : [ "obj-157", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-157", 0 ],
									"source" : [ "obj-160", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"order" : 0,
									"source" : [ "obj-167", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-175", 0 ],
									"order" : 1,
									"source" : [ "obj-167", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-175", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-33", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"order" : 1,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"order" : 0,
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 3 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"source" : [ "obj-46", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 1 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 5 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 1 ],
									"source" : [ "obj-50", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"source" : [ "obj-52", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"order" : 0,
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-64", 0 ],
									"order" : 1,
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"midpoints" : [ 746.5, 270.0, 642.0, 270.0, 642.0, 120.0, 664.5, 120.0 ],
									"source" : [ "obj-61", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 1 ],
									"source" : [ "obj-61", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-64", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"source" : [ "obj-68", 1 ]
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
									"destination" : [ "obj-142", 0 ],
									"order" : 0,
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-160", 0 ],
									"order" : 1,
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-75", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 409.0, 376.0, 117.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p neato_coordinates"
				}

			}
, 			{
				"box" : 				{
					"axeslabelsfontsize" : -16.350000000000001,
					"center" : [ -2452.470077895993654, -1445.869666473236975 ],
					"edgewidth" : 2.0,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 10.0,
					"gridlabelsfontsize" : -37.0,
					"id" : "obj-117",
					"maxclass" : "dada.graph",
					"nodeshape" : 2,
					"notify" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"out" : "nn",
					"outlettype" : [ "", "", "bang" ],
					"patching_rect" : [ 409.0, 448.0, 442.0, 447.0 ],
					"showarrows" : 0,
					"showweights" : 1,
					"uigraph_data_0000000000" : [ "graph", "[", "vertices", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084858880, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1082037043, "]", "[", "label", 0, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1085103667, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083408896, "]", "[", "label", 41, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1085101977, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083410432, "]", "[", "label", 42, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1085064499, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1083218227, "]", "[", "label", 1, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1085036953, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1083615027, "]", "[", "label", 17, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1085190553, "_x_x_x_x_bach_float64_x_x_x_x_", 515396076, 1082548613, "]", "[", "label", 12, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1084939929, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1083853721, "]", "[", "label", 22, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1085222451, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084015616, "]", "[", "label", 38, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1085115033, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083609088, "]", "[", "label", 34, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1084995891, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1083495116, "]", "[", "label", 30, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1084996761, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1083722956, "]", "[", "label", 28, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1085071820, "_x_x_x_x_bach_float64_x_x_x_x_", 2233382994, 1079607787, "]", "[", "label", 2, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 3607772529, 1081175203, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1083562803, "]", "[", "label", 3, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080770560, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083469824, "]", "[", "label", 27, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1082337382, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1083904819, "]", "[", "label", 29, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1077608448, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1084284057, "]", "[", "label", 37, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 2061584302, 1082543124, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1083951923, "]", "[", "label", 36, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084023296, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1084056985, "]", "[", "label", 4, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1083669913, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1084068556, "]", "[", "label", 31, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1084370073, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084073472, "]", "[", "label", 26, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1083180339, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1084129996, "]", "[", "label", 33, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1084691660, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1083998617, "]", "[", "label", 5, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1084610918, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084125696, "]", "[", "label", 24, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084735232, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083920384, "]", "[", "label", 16, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1085353011, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1081741516, "]", "[", "label", 6, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1085479526, "_x_x_x_x_bach_float64_x_x_x_x_", 1030792151, 1081417482, "]", "[", "label", 39, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1085363097, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1077018624, "]", "[", "label", 8, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1084933171, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1084099174, "]", "[", "label", 7, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1084574259, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1083621068, "]", "[", "label", 9, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1085060505, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1084469452, "]", "[", "label", 10, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1085049446, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084268800, "]", "[", "label", 14, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085251584, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1084454502, "]", "[", "label", 40, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1085057740, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1083747123, "]", "[", "label", 11, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085111040, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1083708313, "]", "[", "label", 13, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1085298892, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1083625369, "]", "[", "label", 21, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1085400012, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1083769651, "]", "[", "label", 23, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1084950476, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1083586969, "]", "[", "label", 15, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1084841523, "_x_x_x_x_bach_float64_x_x_x_x_", 858993459, 1083231539, "]", "[", "label", 20, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1084994406, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1083497369, "]", "[", "label", 32, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084579328, "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1084371148, "]", "[", "label", 18, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1084560281, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1084654182, "]", "[", "label", 35, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085284480, "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1083794841, "]", "[", "label", 19, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 3264175145, 1082673397, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1084530432, "]", "[", "label", 25, "]", "]", "]", "[", "edges", "[", 1, 2, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076035584, "]", "]", "[", 2, 3, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1068079513, "]", "]", "[", 4, 5, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074790400, "]", "]", "[", 4, 6, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075052544, "]", "]", "[", 5, 2, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074266112, "]", "]", "[", 5, 7, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074266112, "]", "]", "[", 5, 8, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075314688, "]", "]", "[", 5, 9, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1073741824, "]", "]", "[", 5, 10, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1073741824, "]", "]", "[", 5, 11, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1073741824, "]", "]", "[", 12, 6, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075707904, "]", "]", "[", 13, 14, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1073217536, "]", "]", "[", 13, 15, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075314688, "]", "]", "[", 15, 16, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075904512, "]", "]", "[", 15, 17, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1073217536, "]", "]", "[", 18, 19, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074921472, "]", "]", "[", 18, 20, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075314688, "]", "]", "[", 19, 21, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075314688, "]", "]", "[", 22, 23, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074003968, "]", "]", "[", 22, 24, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1073217536, "]", "]", "[", 23, 20, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075183616, "]", "]", "[", 24, 7, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074921472, "]", "]", "[", 25, 6, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075445760, "]", "]", "[", 25, 26, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075314688, "]", "]", "[", 25, 27, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075052544, "]", "]", "[", 28, 7, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074528256, "]", "]", "[", 29, 24, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075052544, "]", "]", "[", 30, 31, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075052544, "]", "]", "[", 31, 7, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075052544, "]", "]", "[", 31, 32, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075314688, "]", "]", "[", 33, 5, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1073741824, "]", "]", "[", 34, 5, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1073741824, "]", "]", "[", 34, 35, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074921472, "]", "]", "[", 35, 36, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075052544, "]", "]", "[", 37, 5, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1073741824, "]", "]", "[", 37, 38, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074921472, "]", "]", "[", 10, 39, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1068079513, "]", "]", "[", 40, 23, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074921472, "]", "]", "[", 40, 41, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075445760, "]", "]", "[", 42, 9, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074921472, "]", "]", "[", 43, 21, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075838976, "]", "]", "[", 21, 17, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074921472, "]", "]", "]" ],
					"uigraph_data_count" : [ 1 ],
					"versionnumber" : 40000,
					"zoom" : 8.043981585673892
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1531.0, 269.0, 262.0, 20.0 ],
					"text" : "rescale edit-distance correction (0 = untouched)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 1479.0, 293.0, 100.0, 22.0 ],
					"text" : "/ 10."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 1479.0, 319.0, 100.0, 22.0 ],
					"text" : "t b l"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-28",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1479.0, 265.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1637.0, 452.0, 43.0, 22.0 ],
					"text" : "dump"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
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
						"rect" : [ 34.0, 79.0, 1372.0, 787.0 ],
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
									"comment" : "",
									"id" : "obj-1",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 642.333340406417847, 475.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 56.333340406417847, 400.0, 466.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.collect"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 382.333340406417847, 315.0, 100.0, 35.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.slice 1 @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 265.333340406417847, 315.0, 100.0, 35.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.slice 1 @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 265.333340406417847, 284.0, 136.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.pick 1 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-53",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 50.0, 245.0, 121.5, 22.0 ],
													"text" : "sqrt 0."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-46",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 174.0, 100.0, 100.0, 22.0 ],
													"text" : "unjoin"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-44",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 50.0, 100.0, 100.0, 22.0 ],
													"text" : "unjoin"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-43",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 50.0, 207.0, 121.5, 22.0 ],
													"text" : "+ 0."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-42",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 174.0, 174.0, 29.5, 22.0 ],
													"text" : "* 0."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-41",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 50.0, 174.0, 29.5, 22.0 ],
													"text" : "* 0."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-40",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 174.0, 141.0, 100.0, 22.0 ],
													"text" : "- 0."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-39",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 50.0, 141.0, 100.0, 22.0 ],
													"text" : "- 0."
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-54",
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
													"id" : "obj-55",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 174.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-56",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 327.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-41", 1 ],
													"order" : 0,
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-41", 0 ],
													"order" : 1,
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 1 ],
													"order" : 0,
													"source" : [ "obj-40", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"order" : 1,
													"source" : [ "obj-40", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 0 ],
													"source" : [ "obj-41", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 1 ],
													"source" : [ "obj-42", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-53", 0 ],
													"source" : [ "obj-43", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-44", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 0 ],
													"source" : [ "obj-44", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 1 ],
													"source" : [ "obj-46", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 1 ],
													"source" : [ "obj-46", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 0 ],
													"source" : [ "obj-53", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 0 ],
													"source" : [ "obj-54", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-46", 0 ],
													"source" : [ "obj-55", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 346.333340406417847, 357.0, 136.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p euclidian-distance"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.333340406417847, 131.0, 402.0, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 265.333340406417847, 256.0, 187.0, 22.0 ],
									"text" : "bach.lookup"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 50.0, 190.0, 100.0, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 265.333340406417847, 205.0, 290.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.iter @maxdepth 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
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
										"rect" : [ 84.0, 129.0, 640.0, 480.0 ],
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
													"id" : "obj-1",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 327.0, 238.5, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-28",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 126.0, 100.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.pick 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 100.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.trans"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 192.5, 70.0, 23.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80001
													}
,
													"text" : "bach.flat 1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 13.0,
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 165.0, 158.0, 23.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.comb 2 2 @repeat 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-29",
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
													"id" : "obj-30",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 260.5, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"order" : 0,
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"order" : 1,
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 50.0, 160.0, 565.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p all-couples-indexes"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
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
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 256.0, 187.0, 100.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.join 3"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"linecount" : 2,
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 263.0, 139.0, 100.0, 35.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.pick (2 2) (1 2) (1 3)"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"linecount" : 3,
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 51.0, 148.0, 100.0, 49.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.mapelem @maxdepth 1 @unwrap 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"linecount" : 2,
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 50.0, 100.0, 100.0, 35.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.keys vertices"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-17",
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
													"id" : "obj-20",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 51.0, 276.726440000000025, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 1 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-17", 0 ]
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
													"destination" : [ "obj-20", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-4", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 2 ],
													"source" : [ "obj-5", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 1 ],
													"source" : [ "obj-5", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 50.0, 100.0, 75.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p easy_dists"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-71",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 49.999996406417836, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-72",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 56.333340406417847, 482.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-31", 1 ]
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
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 2 ],
									"source" : [ "obj-32", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-33", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-59", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 1 ],
									"source" : [ "obj-35", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 1 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-59", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"source" : [ "obj-60", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 1 ],
									"source" : [ "obj-61", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 899.0, 873.0, 435.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p all_distances"
				}

			}
, 			{
				"box" : 				{
					"attr" : "table",
					"id" : "obj-19",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1479.0, 452.0, 150.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 4,
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
						"rect" : [ 34.0, 79.0, 1372.0, 787.0 ],
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
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
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
													"code" : "($l1:1 + 1) ($l1:2 + 1) $l1:3 ",
													"id" : "obj-21",
													"linecount" : 2,
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 172.0, 112.21826171875, 179.0, 35.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1,
														"versionnumber" : 80300
													}
,
													"text" : "bach.eval ($l1:1 + 1) ($l1:2 + 1) $l1:3"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"linecount" : 3,
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 50.0, 105.21826171875, 100.0, 49.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80300
													}
,
													"text" : "bach.mapelem @maxdepth 1 @unwrap 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-22",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 39.999999718749997, 30.0, 30.0 ]
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
													"patching_rect" : [ 50.0, 219.206054718750011, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 1 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-5", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 1095.0, 106.0, 74.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p indexes+1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-54",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 1063.5, 771.0, 100.0, 22.0 ],
									"text" : "+ 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 155.0, 59.0, 100.0, 22.0 ],
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
									"comment" : "",
									"id" : "obj-50",
									"index" : 4,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1259.5, -2.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 1063.5, 740.386352999999872, 100.0, 22.0 ],
									"text" : "* 0."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 237.0, 492.0, 100.0, 22.0 ],
									"text" : "thru"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 152.0, 542.0, 100.0, 22.0 ],
									"text" : "* 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1063.5, 706.0, 137.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.pick 3 @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1222.5, 673.0, 50.0, 22.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 1063.5, 606.0, 178.0, 22.0 ],
									"text" : "bach.filternull"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1063.5, 660.0, 137.0, 35.0 ],
									"text" : "bach.lookup @unwrap 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1063.5, 633.0, 100.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.pick 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1063.5, 582.0, 100.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.flat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "float" ],
									"patching_rect" : [ 1063.5, 808.386352999999872, 100.0, 22.0 ],
									"text" : "thru"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-35",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 919.0, 548.5, 308.0, 23.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.find a"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 914.0, 418.0, 234.0, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 914.0, 458.0, 100.0, 22.0 ],
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
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 684.0, 303.0, 100.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-2",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1127.5, 12.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 193.600000441074371, 263.400004148483276, 100.0, 22.0 ],
									"text" : "prepend count"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 154.399999856948853, 309.800004839897156, 100.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.group"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 474.700000464916229, 152.200002431869507, 100.0, 22.0 ],
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
									"comment" : "",
									"id" : "obj-28",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 636.5, 17.199999868869781, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 472.200000464916229, 280.00000011920929, 100.0, 35.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.mapelem @out nt"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 611.200000464916229, 285.613647119209304, 100.0, 22.0 ],
									"text" : "sprintf node_%ld"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 474.700000464916229, 189.399999916553497, 100.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.length"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 474.700000464916229, 221.400000035762787, 50.0, 22.0 ],
									"text" : "1 $1 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 474.200000464916229, 247.629211119209288, 100.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.arithmser"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 350.399999856948853, 449.0, 75.0, 22.0 ],
									"text" : "bach.lookup"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 928.5, 158.386353000000014, 41.0, 22.0 ],
									"text" : "erase"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "bang", "bang", "bang" ],
									"patching_rect" : [ 154.5, 92.0, 815.0, 22.0 ],
									"text" : "t l b b b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 195.399999856948853, 445.772704999999974, 136.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.mapelem @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 154.399999856948853, 617.772704999999974, 57.0, 22.0 ],
									"text" : "zl join"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 154.399999856948853, 649.772704999999974, 247.0, 22.0 ],
									"text" : "adddistanceentry dists nodes name $2 $3 $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 154.399999856948853, 361.772704999999974, 101.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.iter @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 511.5, 382.0, 155.0, 22.0 ],
									"text" : "addentry nodes [ name $1 ]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 511.5, 347.0, 101.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.iter @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"linecount" : 3,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 763.666666666666629, 128.386353000000014, 140.999999999999886, 49.0 ],
									"text" : "addtable nodes [name s], adddistancetable dists nodes"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-6",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 154.5, 12.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-9",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 763.666666666666629, 732.386352999999986, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
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
									"destination" : [ "obj-15", 0 ],
									"order" : 1,
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"order" : 0,
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-12", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-12", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-12", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 1 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-15", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"order" : 0,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"order" : 1,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 1 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-24", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"order" : 1,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"order" : 0,
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 1 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 1 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 1 ],
									"source" : [ "obj-30", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-35", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 1 ],
									"order" : 1,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 1 ],
									"order" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-42", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"midpoints" : [ 1232.0, 799.0, 1073.0, 799.0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 1 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 1 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-54", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 1479.0, 385.0, 113.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p build_letters_db"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 1479.0, 414.0, 151.0, 22.0 ],
					"text" : "dada.base mydisthelpdb"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "dump", "" ],
					"patching_rect" : [ 899.0, 409.0, 51.0, 22.0 ],
					"text" : "t dump l"
				}

			}
, 			{
				"box" : 				{
					"attr" : "autocoordalgo",
					"id" : "obj-3",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 958.0, 409.0, 266.0, 22.0 ]
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
					"id" : "obj-108",
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
							"minor" : 6,
							"revision" : 5,
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
									"reg_data_0000000000" : [ "[", 6000, 7200, 6600, 6000, 6100, 6300, 6600, 7200, "]", "[", 6000, 6100, 7000, 7500, 6000, 7000, 7800, 7500, "]", "[", 6000, 6100, 7000, 6800, 7000, 7200, 7300, 7500, 7600, 7500, "]", "[", 6400, 6500, 6600, 7000, 7800, 8500, 7200, 7700, 8400, "]", "[", 6600, 7800, 7200, 7300, 7500, 7600, 7200, 7300, 7200, 7000, 6900, "]", "[", 7200, 7000, 7500, 7600, 7200, 7000, 6900, "]", "[", 7200, 7300, 7200, 7800, 7300, 7200, 7000, 6900, "]", "[", 7500, 7600, 7500, 7400, 7200, 7100, 6900, 7100, "]", "[", 7000, 8000, 7900, 8200, 7100, 7900, 7100, "]", "[", 7200, 7000, 7200, 7100, 7200, 7600, 7200, "]", "[", 7300, 8500, 7300, 7800, 8500, 7200, 7100, 7800, 8400, "]", "[", 7300, 6300, 7200, 7000, 7200, 7300, 6300, 7500, 7300, 7500, "]", "[", 7100, 7300, 7700, 7100, 6300, 7000, 7200, 7300, 7500, "]", "[", 7300, 7800, 7600, 7500, 7300, 7500, 7300, "]", "[", 7000, 7600, 7800, 7600, 7300, 7000, 8500, "]", "[", 7000, 7300, 6000, 6200, 6300, 6700, 7800, "]", "[", 7600, 6300, 7500, 7300, 7800, 7200, 8400, "]", "[", 7300, 7500, 7300, 8700, 8800, 7500, 6900, "]", "[", 7300, 7700, 7500, 7100, 7300, 7400, 7300, "]", "[", 6500, 7700, 6500, 7100, 7700, 6500, 6800, "]", "[", 6500, 7700, 7300, 7100, 6500, 7300, 7700, "]", "[", 6500, 6300, 7300, 7100, 7700, 7200, 7100, 7200, 7300, 7100, "]", "[", 8400, 7100, 8300, 7100, 7200, 7300, 8400, "]", "[", 7300, 7100, 7000, 7300, 8300, 7000, 8300, 8500, "]", "[", 7000, 7200, 8500, 8400, 7000, 7200, 8300, 8400, 8500, "]", "[", 7000, 7300, 7500, 6200, 7500, 7600, 7200, "]", "[", 7100, 7200, 7400, 7500, 7100, 6800, 7700, 8300, 7100, "]" ],
									"reg_data_count" : [ 1 ],
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
									"outlettype" : [ "bang" ],
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
					"patching_rect" : [ 899.0, 118.0, 55.0, 55.0 ],
					"varname" : "bp1368683072736[1]",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"attr" : "notify",
					"id" : "obj-18",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1232.0, 409.0, 117.0, 22.0 ],
					"text_width" : 50.0
				}

			}
, 			{
				"box" : 				{
					"center" : [ 0.130007095230397, 0.13002907545529 ],
					"edgewidth" : 2.0,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-15",
					"maxclass" : "dada.graph",
					"nodeshape" : 2,
					"notify" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"out" : "nn",
					"outlettype" : [ "", "", "bang" ],
					"patching_rect" : [ 899.0, 448.0, 435.0, 414.0 ],
					"showarrows" : 0,
					"uigraph_data_0000000000" : [ "graph", "[", "vertices", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 3226009600, "_x_x_x_x_bach_float64_x_x_x_x_", 3870829212, 3225705543, "]", "[", "label", 0, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 927207176, 3223832429, "_x_x_x_x_bach_float64_x_x_x_x_", 2102073082, 3225574308, "]", "[", "label", 1, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 3819285113, 1076710784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 3226009600, "]", "[", "label", 2, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078525952, "_x_x_x_x_bach_float64_x_x_x_x_", 555899437, 1077457525, "]", "[", "label", 3, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 15106474, 1076519209, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078525952, "]", "[", "label", 4, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 4044965443, 3224400065, "_x_x_x_x_bach_float64_x_x_x_x_", 1592603926, 1078188446, "]", "[", "label", 5, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 3481656986, 1077614996, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 3226009600, "]", "[", "label", 6, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 3175678074, 3224560691, "_x_x_x_x_bach_float64_x_x_x_x_", 3954151446, 1076097134, "]", "[", "label", 7, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 2381820621, 1078255302, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 3226009600, "]", "[", "label", 8, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 1531511240, 3225491194, "_x_x_x_x_bach_float64_x_x_x_x_", 2598932898, 1078010907, "]", "[", "label", 9, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 2343418836, 1076395882, "_x_x_x_x_bach_float64_x_x_x_x_", 186911970, 1070806003, "]", "[", "label", 10, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 470711058, 3224959815, "_x_x_x_x_bach_float64_x_x_x_x_", 1168229458, 3225200080, "]", "[", "label", 11, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 1800029042, 1075854399, "_x_x_x_x_bach_float64_x_x_x_x_", 3793049938, 3225891110, "]", "[", "label", 12, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 1533500946, 3225644597, "_x_x_x_x_bach_float64_x_x_x_x_", 207366378, 3225663245, "]", "[", "label", 13, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 860539653, 3219385417, "_x_x_x_x_bach_float64_x_x_x_x_", 240279154, 3221364960, "]", "[", "label", 14, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 189773981, 3225793516, "_x_x_x_x_bach_float64_x_x_x_x_", 2337508332, 3223122856, "]", "[", "label", 15, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 3413483868, 3224876070, "_x_x_x_x_bach_float64_x_x_x_x_", 3974558481, 1077381186, "]", "[", "label", 16, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 1962595448, 3225469116, "_x_x_x_x_bach_float64_x_x_x_x_", 3833090258, 3224869854, "]", "[", "label", 17, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 3042202454, 3219999368, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078525952, "]", "[", "label", 18, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 3226009600, "_x_x_x_x_bach_float64_x_x_x_x_", 556909842, 3222920724, "]", "[", "label", 19, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 3226009600, "_x_x_x_x_bach_float64_x_x_x_x_", 3059033195, 1075201846, "]", "[", "label", 20, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 4275315346, 3225808389, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 3226009600, "]", "[", "label", 21, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 1044293656, 3224663230, "_x_x_x_x_bach_float64_x_x_x_x_", 4172967537, 1068000527, "]", "[", "label", 22, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 3226009600, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 3226009600, "]", "[", "label", 23, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 3628078843, 3222176860, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078525952, "]", "[", "label", 24, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078525952, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078525952, "]", "[", "label", 25, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 2362027990, 1076714199, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078525952, "]", "[", "label", 26, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078525952, "_x_x_x_x_bach_float64_x_x_x_x_", 3973178445, 1076813431, "]", "[", "label", 27, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 863491230, 3225975364, "_x_x_x_x_bach_float64_x_x_x_x_", 1420923931, 3224971933, "]", "[", "label", 28, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078525952, "_x_x_x_x_bach_float64_x_x_x_x_", 4186312530, 1078043077, "]", "[", "label", 29, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 1638046085, 3225198136, "_x_x_x_x_bach_float64_x_x_x_x_", 312516675, 3225672279, "]", "[", "label", 30, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 391484309, 1077719770, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078525952, "]", "[", "label", 31, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 2374454432, 3224998759, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 3226009600, "]", "[", "label", 32, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 4072134713, 1078260756, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078525952, "]", "[", "label", 33, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 847513030, 3225965744, "_x_x_x_x_bach_float64_x_x_x_x_", 314366182, 3224391690, "]", "[", "label", 34, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 1566481000, 3223911383, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078525952, "]", "[", "label", 35, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078525952, "_x_x_x_x_bach_float64_x_x_x_x_", 2703939479, 1078408218, "]", "[", "label", 36, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078525952, "_x_x_x_x_bach_float64_x_x_x_x_", 1153258103, 1078230956, "]", "[", "label", 37, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 198579508, 3225569567, "_x_x_x_x_bach_float64_x_x_x_x_", 3406910651, 3224295632, "]", "[", "label", 38, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 1860274704, 1078071159, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 3226009600, "]", "[", "label", 39, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 1454754190, 1076245739, "_x_x_x_x_bach_float64_x_x_x_x_", 973085286, 3223408099, "]", "[", "label", 40, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 3687480831, 3225913856, "_x_x_x_x_bach_float64_x_x_x_x_", 1012484868, 3225511690, "]", "[", "label", 41, "]", "]", "[", "[", "coord", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 3226009600, "_x_x_x_x_bach_float64_x_x_x_x_", 2841886422, 3225881931, "]", "[", "label", 42, "]", "]", "]", "[", "edges", "[", 1, 42, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1069128089, "]", "]", "[", 2, 18, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1069128089, "]", "]", "[", 2, 13, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 3, 13, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 4, 28, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 4, 30, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 5, 32, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 5, 27, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 6, 25, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 6, 17, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 7, 40, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 7, 9, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 7, 13, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 8, 23, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 10, 17, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 11, 15, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 12, 18, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 14, 22, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 14, 18, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 15, 41, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 15, 23, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 16, 21, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 16, 18, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 17, 23, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 18, 39, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 18, 42, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 18, 23, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 18, 35, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 18, 31, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 18, 29, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 19, 36, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 19, 25, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 20, 35, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 22, 24, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 25, 27, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 26, 34, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 30, 38, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 30, 37, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 31, 33, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 32, 34, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 34, 37, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "[", 42, 43, "[", "weight", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "]" ],
					"uigraph_data_count" : [ 1 ],
					"versionnumber" : 40000,
					"zoom" : 360.986766581632651
				}

			}
, 			{
				"box" : 				{
					"background" : 1,
					"center" : [ 6.135585591483753, -0.795376887031992 ],
					"contentfield" : [ "name" ],
					"database" : "mydisthelpdb",
					"distancetable" : "dists",
					"fontface" : 0,
					"fontname" : "Arial",
					"id" : "obj-12",
					"labelfield" : "node_id",
					"labelsize" : 16.629999999999999,
					"legendsize" : 14.0,
					"maxclass" : "dada.distances",
					"maxdistedge" : 150.0,
					"maxr" : 511.189999999999998,
					"minr" : 13.0,
					"numinlets" : 1,
					"numoutlets" : 4,
					"out" : "ttt",
					"outlettype" : [ "", "", "", "bang" ],
					"patching_rect" : [ 1479.0, 491.0, 405.0, 404.0 ],
					"query" : "SELECT * FROM nodes",
					"showgrid" : 0,
					"showgridlabels" : 0,
					"table" : "nodes",
					"versionnumber" : 40000,
					"zoom" : 61.141984152070791
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
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
						"rect" : [ 59.0, 104.0, 597.0, 431.0 ],
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
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 217.0, 275.0, 22.0 ],
									"text" : "lisp.expr fv-morphologie::minimum-spanning-tree l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 286.0, 64.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80106
									}
,
									"text" : "bach.flat 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 468.0, 286.0, 70.0, 22.0 ],
									"text" : "lisp.quote 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 252.0, 80.0, 22.0 ],
									"text" : "lisp.quickeval"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-10",
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
									"id" : "obj-11",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 468.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-12",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 468.0, 325.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-13",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 325.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
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
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 899.0, 278.0, 116.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p get_min-span-tree"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1059.0, 278.0, 262.0, 22.0 ],
					"text" : "lisp.expr fv-morphologie::edit-dist a 'nil 1 1 1 0.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
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
						"rect" : [ 84.0, 129.0, 442.0, 480.0 ],
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
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 52.0, 277.0322265625, 100.0, 22.0 ],
									"text" : "bach.- 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 322.0, 130.0, 55.0, 22.0 ],
									"text" : "bach.+ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 52.0, 144.0322265625, 183.0, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 52.0, 236.834472562500025, 58.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80106
									}
,
									"text" : "bach.sort"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 52.0, 171.834472562500025, 54.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80106
									}
,
									"text" : "bach.flat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 52.0, 206.834472562500025, 57.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80106
									}
,
									"text" : "bach.thin"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 52.0, 318.834472562499968, 183.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80106
									}
,
									"text" : "bach.pack vertices edges @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 322.0, 93.0, 72.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80106
									}
,
									"text" : "bach.slice 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 52.0, 106.834472562500025, 230.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80106
									}
,
									"text" : "bach.mapelem @maxdepth 1 @unwrap 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 52.0, 346.834472562499968, 87.0, 22.0 ],
									"text" : "prepend graph"
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
									"patching_rect" : [ 52.0, 39.999999562500022, 30.0, 30.0 ]
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
									"patching_rect" : [ 52.0, 428.834472562499968, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 1 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 1 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-36", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 899.0, 376.0, 149.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p minspantree2dadagraph"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 899.0, 326.0, 29.0, 22.0 ],
					"text" : "thru"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"midpoints" : [ 630.0, 908.5, 268.999999066244072, 908.5, 268.999999066244072, 396.564454311302143, 94.5, 396.564454311302143 ],
					"source" : [ "obj-117", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 0 ],
					"midpoints" : [ 517.5, 442.188334246139561, 418.5, 442.188334246139561 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"order" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 1,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-157", 0 ],
					"source" : [ "obj-155", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-155", 0 ],
					"source" : [ "obj-156", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"source" : [ "obj-157", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"midpoints" : [ 1241.5, 439.5, 908.5, 439.5 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 0 ],
					"midpoints" : [ 640.5, 442.188334246139561, 418.5, 442.188334246139561 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 1 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 3 ],
					"source" : [ "obj-29", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"midpoints" : [ 967.5, 439.5, 908.5, 439.5 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 0 ],
					"midpoints" : [ 763.5, 442.188334246139561, 418.5, 442.188334246139561 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 1 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 1 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 1 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-157", 0 ],
					"midpoints" : [ 87.5, 595.916667222976685, 30.5, 595.916667222976685 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"source" : [ "obj-51", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"midpoints" : [ 526.5, 213.75000137090683, 908.5, 213.75000137090683 ],
					"source" : [ "obj-59", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 2 ],
					"midpoints" : [ 908.5, 360.5, 1551.166666666666742, 360.5 ],
					"order" : 0,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"order" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"midpoints" : [ 908.5, 360.5, 418.5, 360.5 ],
					"order" : 2,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"order" : 0,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 0 ],
					"midpoints" : [ 908.5, 263.5, 30.5, 263.5 ],
					"order" : 2,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"midpoints" : [ 908.5, 263.5, 826.5, 263.5 ],
					"order" : 1,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-7", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-156", 1 ],
					"order" : 1,
					"source" : [ "obj-71", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-157", 0 ],
					"midpoints" : [ 94.5, 485.5, 8.0, 485.5, 8.0, 596.5, 30.5, 596.5 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 1 ],
					"order" : 0,
					"source" : [ "obj-71", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"midpoints" : [ 1324.5, 898.5, 1465.0, 898.5, 1465.0, 370.5, 1519.833333333333258, 370.5 ],
					"source" : [ "obj-73", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"midpoints" : [ 908.5, 907.5, 1465.0, 907.5, 1465.0, 379.5, 1488.5, 379.5 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-117", 0 ],
					"order" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 1 ],
					"midpoints" : [ 516.5, 404.608744901790715, 131.500002999999992, 404.608744901790715 ],
					"source" : [ "obj-8", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"order" : 1,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"source" : [ "obj-87", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "bach.+.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.-.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.<=.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.approx.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../bach/patchers",
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
				"name" : "bach.beatunbox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.belong.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.change.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.collect.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.comb.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.depth.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.div.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.dx2x.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../bach/patchers",
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
				"name" : "bach.ezmidiplay.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.filter.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.filternull.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../bach/patchers",
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
				"patcherrelativepath" : "../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.geq.mxo",
				"type" : "iLaX"
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
				"name" : "bach.locate.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.lookup.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.lt.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.mapelem.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.n2mc.mxo",
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
				"name" : "bach.postpend.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.prepend.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../bach/patchers",
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
				"patcherrelativepath" : "../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.replace.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../bach/patchers",
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
				"patcherrelativepath" : "../../../../../bach/patchers",
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
				"patcherrelativepath" : "../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.score.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.sieve.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.slice.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.sort.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.split.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.step.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.subs.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.thin.mxo",
				"type" : "iLaX"
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
				"name" : "bach.x2dx.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bpatcher-resize-gizmo.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bpatcher-resize.js",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../patchers/utilities",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "dada.base.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "dada.distances.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "dada.graph.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "dada.segment.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "erase.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "help.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "key_trigger.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.expr.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.lore.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_modules",
				"patcherrelativepath" : "../../../../patchers/pw4m_modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.quickeval.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.quote.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "load_MOZ_helpfile.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mac_or_win.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp",
				"patcherrelativepath" : "../../../../patchers/pw4m_lisp",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "make_path_once.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp",
				"patcherrelativepath" : "../../../../patchers/pw4m_lisp",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.chord_view.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/moz_modules",
				"patcherrelativepath" : "../../../../patchers/moz_modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.group-equals.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.init-unless.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.maxverbang.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.nth.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/moz_modules",
				"patcherrelativepath" : "../../../../patchers/moz_modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.play_hover_title.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.rem-local-dups.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.sendto_ezmidi_instr.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.update-ui.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "open-doc-double.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "pw.eval-box.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp",
				"patcherrelativepath" : "../../../../patchers/pw4m_lisp",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.quote.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_code_generators_legacy",
				"patcherrelativepath" : "../../../../patchers/pw4m_lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "safe-key.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "save-double.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "sendback-selec.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "sendback.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../../media",
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
		"autosave" : 0
	}

}
