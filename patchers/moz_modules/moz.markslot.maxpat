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
		"rect" : [ 209.0, -1001.0, 834.0, 787.0 ],
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
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 498.748613336323388, 202.0, 54.0, 22.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 251.375, 132.5, 80.125, 22.0 ],
					"text" : "t b b l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 539.248613336323388, 263.0, 29.5, 22.0 ],
					"text" : "null"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-110",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 222.875, 422.0, 43.0, 22.0 ],
					"text" : "t b l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-106",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 0.0, 392.0, 211.0, 22.0 ],
					"text" : "domain 0. 1019.905749, zoom 357.5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-103",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 312.5, 352.0, 144.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80300
					}
,
					"text" : "bach.join"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-102",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 312.5, 326.5, 122.0, 22.0 ],
					"text" : "bach.sieve 0 @op <="
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-97",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1118.25, 692.0, 87.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80105
					}
,
					"text" : "bach.pick (1 2)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 930.375, 692.0, 165.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80105
					}
,
					"text" : "bach.mapelem @maxdepth 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 930.375, 664.0, 73.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80105
					}
,
					"text" : "bach.keys 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-99",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 930.375, 636.0, 91.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80105
					}
,
					"text" : "bach.keys slots"
				}

			}
, 			{
				"box" : 				{
					"comment" : "BPF profile (flat list of Y values)",
					"id" : "obj-93",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 167.000000000000114, 828.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 246.875, 730.0, 100.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80300
					}
,
					"text" : "bach.thin"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 246.875, 698.0, 100.0, 22.0 ],
					"text" : "bach.round"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 246.875, 669.0, 146.0, 22.0 ],
					"text" : "bach.scale 0 1000 0 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-84",
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 104.0, 177.999999046325684, 603.0, 22.0 ],
									"text" : "\"Attention, your marker indices exceed the length of the bach.slot profile, and have been trimmed automatically.\""
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-79",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 104.0, 153.999999046325684, 100.0, 22.0 ],
									"text" : "sel 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 104.0, 201.999999046325684, 107.0, 22.0 ],
									"text" : "print moz.markslot"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 104.0, 128.80000638961792, 69.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.>"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 50.0, 100.0, 100.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.minmax"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-82",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 39.999999046325684, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-83",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 154.0, 39.999999046325684, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-57", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 1 ],
									"source" : [ "obj-83", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 478.5, 392.000000953674316, 206.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p error-marker-indices-exceed-length"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 498.748613336323388, 229.0, 100.0, 22.0 ],
					"text" : "t b b l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 437.5, 326.5, 100.0, 22.0 ],
					"text" : "bach.clip 0 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 312.5, 254.0, 55.0, 22.0 ],
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
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 312.5, 191.0, 100.0, 22.0 ],
					"text" : "bach.round"
				}

			}
, 			{
				"box" : 				{
					"comment" : "marker onsets",
					"id" : "obj-36",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 247.0, 828.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "bang when markers changed",
					"id" : "obj-35",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 697.927356020942398, 828.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 579.748613336323388, 291.0, 29.5, 22.0 ],
					"text" : "- 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 312.5, 392.0, 139.0, 22.0 ],
					"text" : "bach.scale 0 100 0 1000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "clearmarkers", "bang" ],
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
						"rect" : [ 59.0, 104.0, 333.0, 454.0 ],
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
									"id" : "obj-2",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 206.547606999999971, 408.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 66.0, 149.0, 100.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.thin"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "clearmarkers" ],
									"patching_rect" : [ 107.547619342803955, 328.0, 100.0, 22.0 ],
									"text" : "thru"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 66.547619342803955, 100.0, 100.0, 22.0 ],
									"text" : "bach.round"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "", "clearmarkers" ],
									"patching_rect" : [ 66.547619342803955, 183.0, 101.0, 22.0 ],
									"text" : "t b l clearmarkers"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 107.547619342803955, 285.0, 113.0, 22.0 ],
									"text" : "prepend addmarker"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 107.547619342803955, 251.0, 100.0, 22.0 ],
									"text" : "join"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 107.547619342803955, 221.0, 181.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.iter @out m"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-57",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 66.547606999999971, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-61",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 107.547606999999971, 408.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 1 ],
									"source" : [ "obj-17", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-39", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 76.047619342803955, 393.0, 216.047606999999971, 393.0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"midpoints" : [ 158.047619342803955, 212.0, 97.547619342803955, 212.0, 97.547619342803955, 317.0, 117.047619342803955, 317.0 ],
									"source" : [ "obj-39", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-61", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 312.5, 422.0, 121.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p insert-new-markers"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1107.375, 165.0, 29.0, 22.0 ],
					"text" : "thru"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 930.375, 165.0, 29.0, 22.0 ],
					"text" : "thru"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 579.748613336323388, 263.0, 71.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80300
					}
,
					"text" : "bach.length"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 246.875, 642.0, 100.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80300
					}
,
					"text" : "bach.pick 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 246.875, 615.0, 100.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80300
					}
,
					"text" : "bach.trans"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 246.875, 761.0, 100.0, 22.0 ],
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
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 246.875, 589.0, 109.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80300
					}
,
					"text" : "bach.keys markers"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 946.875, 108.500001684623726, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 946.875, 139.5, 117.0, 22.0 ],
					"reg_data_0000000000" : [ "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "_x_x_x_x_bach_float64_x_x_x_x_", 2072854296, 1067850739, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1073741824, "_x_x_x_x_bach_float64_x_x_x_x_", 2072854296, 1067850739, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074266112, "_x_x_x_x_bach_float64_x_x_x_x_", 2019253104, 1068903006, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074790400, "_x_x_x_x_bach_float64_x_x_x_x_", 2019253104, 1068903006, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075052544, "_x_x_x_x_bach_float64_x_x_x_x_", 710834267, 1066788406, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075314688, "_x_x_x_x_bach_float64_x_x_x_x_", 3063789151, 1066599494, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075576832, "_x_x_x_x_bach_float64_x_x_x_x_", 3063789151, 1066599494, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075838976, "_x_x_x_x_bach_float64_x_x_x_x_", 1142117703, 1069025245, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075970048, "_x_x_x_x_bach_float64_x_x_x_x_", 1142117703, 1069025245, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076101120, "_x_x_x_x_bach_float64_x_x_x_x_", 502476814, 1069401340, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076232192, "_x_x_x_x_bach_float64_x_x_x_x_", 1005778262, 1068787277, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076363264, "_x_x_x_x_bach_float64_x_x_x_x_", 1005778262, 1068787277, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076494336, "_x_x_x_x_bach_float64_x_x_x_x_", 434307093, 1068758068, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076625408, "_x_x_x_x_bach_float64_x_x_x_x_", 434307093, 1068758068, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076756480, "_x_x_x_x_bach_float64_x_x_x_x_", 3583308395, 1068842356, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076887552, "_x_x_x_x_bach_float64_x_x_x_x_", 357066401, 1069067205, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076953088, "_x_x_x_x_bach_float64_x_x_x_x_", 819685919, 1068990986, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1077018624, "_x_x_x_x_bach_float64_x_x_x_x_", 4075064970, 1068749343, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1077084160, "_x_x_x_x_bach_float64_x_x_x_x_", 4075064970, 1068749343, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1077149696, "_x_x_x_x_bach_float64_x_x_x_x_", 1595391372, 1069008820, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1077215232, "_x_x_x_x_bach_float64_x_x_x_x_", 1595391372, 1069008820, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1077280768, "_x_x_x_x_bach_float64_x_x_x_x_", 1125625029, 1069601081, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1077346304, "_x_x_x_x_bach_float64_x_x_x_x_", 2539047226, 1069417043, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1077411840, "_x_x_x_x_bach_float64_x_x_x_x_", 3688861511, 1069246452, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1077477376, "_x_x_x_x_bach_float64_x_x_x_x_", 3688861511, 1069246452, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1077542912, "_x_x_x_x_bach_float64_x_x_x_x_", 3051694523, 1069005330, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1077608448, "_x_x_x_x_bach_float64_x_x_x_x_", 1222382052, 1068835545, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1077673984, "_x_x_x_x_bach_float64_x_x_x_x_", 2659993505, 1068689499, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1077739520, "_x_x_x_x_bach_float64_x_x_x_x_", 1374389535, 1068572344, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1077805056, "_x_x_x_x_bach_float64_x_x_x_x_", 1374389535, 1068572344, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1077870592, "_x_x_x_x_bach_float64_x_x_x_x_", 727601820, 1068809121, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1077936128, "_x_x_x_x_bach_float64_x_x_x_x_", 2404357052, 1069029741, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1077968896, "_x_x_x_x_bach_float64_x_x_x_x_", 2404357052, 1069029741, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078001664, "_x_x_x_x_bach_float64_x_x_x_x_", 2973354319, 1069414023, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078034432, "_x_x_x_x_bach_float64_x_x_x_x_", 280100587, 1069613597, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078067200, "_x_x_x_x_bach_float64_x_x_x_x_", 2966207494, 1069798993, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078099968, "_x_x_x_x_bach_float64_x_x_x_x_", 2358177564, 1069803221, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078132736, "_x_x_x_x_bach_float64_x_x_x_x_", 2358177564, 1069803221, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078165504, "_x_x_x_x_bach_float64_x_x_x_x_", 3486276494, 1069894925, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078198272, "_x_x_x_x_bach_float64_x_x_x_x_", 214954523, 1070138338, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078231040, "_x_x_x_x_bach_float64_x_x_x_x_", 214954523, 1070138338, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078263808, "_x_x_x_x_bach_float64_x_x_x_x_", 3790291459, 1070154955, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078296576, "_x_x_x_x_bach_float64_x_x_x_x_", 3790291459, 1070154955, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078329344, "_x_x_x_x_bach_float64_x_x_x_x_", 2965932616, 1070348170, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078362112, "_x_x_x_x_bach_float64_x_x_x_x_", 1621779651, 1070617172, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078394880, "_x_x_x_x_bach_float64_x_x_x_x_", 1621779651, 1070617172, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078427648, "_x_x_x_x_bach_float64_x_x_x_x_", 500552669, 1070951819, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078460416, "_x_x_x_x_bach_float64_x_x_x_x_", 500552669, 1070951819, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078493184, "_x_x_x_x_bach_float64_x_x_x_x_", 2577530133, 1071634215, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078525952, "_x_x_x_x_bach_float64_x_x_x_x_", 2148170843, 1071811825, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078558720, "_x_x_x_x_bach_float64_x_x_x_x_", 2148170843, 1071811825, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078591488, "_x_x_x_x_bach_float64_x_x_x_x_", 3587981319, 1071925419, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078624256, "_x_x_x_x_bach_float64_x_x_x_x_", 3587981319, 1071925419, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078657024, "_x_x_x_x_bach_float64_x_x_x_x_", 3703979796, 1071940789, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078689792, "_x_x_x_x_bach_float64_x_x_x_x_", 702862808, 1071737259, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078722560, "_x_x_x_x_bach_float64_x_x_x_x_", 4092382279, 1071506712, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078755328, "_x_x_x_x_bach_float64_x_x_x_x_", 2809801965, 1070853634, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078788096, "_x_x_x_x_bach_float64_x_x_x_x_", 2809801965, 1070853634, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078820864, "_x_x_x_x_bach_float64_x_x_x_x_", 3175114703, 1070609689, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078853632, "_x_x_x_x_bach_float64_x_x_x_x_", 2501114075, 1070099213, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078886400, "_x_x_x_x_bach_float64_x_x_x_x_", 2501114075, 1070099213, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078919168, "_x_x_x_x_bach_float64_x_x_x_x_", 4046202790, 1069789824, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078951936, "_x_x_x_x_bach_float64_x_x_x_x_", 2532175279, 1069777124, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "_x_x_x_x_bach_float64_x_x_x_x_", 2061309424, 1069682509, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079001088, "_x_x_x_x_bach_float64_x_x_x_x_", 3103921325, 1069257156, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079017472, "_x_x_x_x_bach_float64_x_x_x_x_", 3103921325, 1069257156, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079033856, "_x_x_x_x_bach_float64_x_x_x_x_", 800444465, 1068636064, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079050240, "_x_x_x_x_bach_float64_x_x_x_x_", 2868076081, 1068853966, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079066624, "_x_x_x_x_bach_float64_x_x_x_x_", 1819141988, 1069196406, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079083008, "_x_x_x_x_bach_float64_x_x_x_x_", 4161651511, 1069166844, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079099392, "_x_x_x_x_bach_float64_x_x_x_x_", 4161651511, 1069166844, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079115776, "_x_x_x_x_bach_float64_x_x_x_x_", 1417820244, 1068572042, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079132160, "_x_x_x_x_bach_float64_x_x_x_x_", 449425378, 1067782389, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079148544, "_x_x_x_x_bach_float64_x_x_x_x_", 449425378, 1067782389, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079164928, "_x_x_x_x_bach_float64_x_x_x_x_", 980489494, 1068717769, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079181312, "_x_x_x_x_bach_float64_x_x_x_x_", 980489494, 1068717769, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079197696, "_x_x_x_x_bach_float64_x_x_x_x_", 1138819168, 1068275337, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079214080, "_x_x_x_x_bach_float64_x_x_x_x_", 3554446215, 1067654613, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079230464, "_x_x_x_x_bach_float64_x_x_x_x_", 3554446215, 1067654613, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079246848, "_x_x_x_x_bach_float64_x_x_x_x_", 384004436, 1068200947, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079263232, "_x_x_x_x_bach_float64_x_x_x_x_", 3876328244, 1068525082, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079279616, "_x_x_x_x_bach_float64_x_x_x_x_", 1675930599, 1068663159, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079296000, "_x_x_x_x_bach_float64_x_x_x_x_", 3181162017, 1068685875, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079312384, "_x_x_x_x_bach_float64_x_x_x_x_", 3181162017, 1068685875, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079328768, "_x_x_x_x_bach_float64_x_x_x_x_", 3405187511, 1068455356, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079345152, "_x_x_x_x_bach_float64_x_x_x_x_", 4029984994, 1068374691, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079361536, "_x_x_x_x_bach_float64_x_x_x_x_", 4029984994, 1068374691, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079377920, "_x_x_x_x_bach_float64_x_x_x_x_", 2840038535, 1068509060, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079394304, "_x_x_x_x_bach_float64_x_x_x_x_", 2840038535, 1068509060, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079410688, "_x_x_x_x_bach_float64_x_x_x_x_", 1275433488, 1068357344, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079427072, "_x_x_x_x_bach_float64_x_x_x_x_", 1275433488, 1068357344, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079443456, "_x_x_x_x_bach_float64_x_x_x_x_", 1783407860, 1068499816, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079459840, "_x_x_x_x_bach_float64_x_x_x_x_", 3835921191, 1068382677, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079476224, "_x_x_x_x_bach_float64_x_x_x_x_", 3835921191, 1068382677, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079492608, "_x_x_x_x_bach_float64_x_x_x_x_", 1497534837, 1068169976, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079508992, "_x_x_x_x_bach_float64_x_x_x_x_", 2786437343, 1067726319, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079525376, "_x_x_x_x_bach_float64_x_x_x_x_", 2786437343, 1067726319, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079541760, "_x_x_x_x_bach_float64_x_x_x_x_", 2786437343, 1067726319, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079558144, "_x_x_x_x_bach_float64_x_x_x_x_", 3026405755, 1067887246, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "_x_x_x_x_bach_float64_x_x_x_x_", 3026405755, 1067887246, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079590912, "_x_x_x_x_bach_float64_x_x_x_x_", 257560599, 1068115551, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079607296, "_x_x_x_x_bach_float64_x_x_x_x_", 879609302, 1068021632, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079623680, "_x_x_x_x_bach_float64_x_x_x_x_", 879609302, 1068021632, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079640064, "_x_x_x_x_bach_float64_x_x_x_x_", 1419469511, 1067898420, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079656448, "_x_x_x_x_bach_float64_x_x_x_x_", 1419469511, 1067898420, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079672832, "_x_x_x_x_bach_float64_x_x_x_x_", 1335631750, 1068280605, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079689216, "_x_x_x_x_bach_float64_x_x_x_x_", 3054993058, 1068444518, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079705600, "_x_x_x_x_bach_float64_x_x_x_x_", 3054993058, 1068444518, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079721984, "_x_x_x_x_bach_float64_x_x_x_x_", 3579734982, 1068510553, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "_x_x_x_x_bach_float64_x_x_x_x_", 3579734982, 1068510553, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079754752, "_x_x_x_x_bach_float64_x_x_x_x_", 1777360546, 1068523086, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079771136, "_x_x_x_x_bach_float64_x_x_x_x_", 2813925133, 1068645291, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079787520, "_x_x_x_x_bach_float64_x_x_x_x_", 2529701378, 1068690405, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079803904, "_x_x_x_x_bach_float64_x_x_x_x_", 2017054081, 1068053542, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079820288, "_x_x_x_x_bach_float64_x_x_x_x_", 2017054081, 1068053542, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079836672, "_x_x_x_x_bach_float64_x_x_x_x_", 3932953093, 1067854396, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079853056, "_x_x_x_x_bach_float64_x_x_x_x_", 3630862273, 1067813359, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079869440, "_x_x_x_x_bach_float64_x_x_x_x_", 3630862273, 1067813359, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079885824, "_x_x_x_x_bach_float64_x_x_x_x_", 1717712040, 1068025759, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079902208, "_x_x_x_x_bach_float64_x_x_x_x_", 117372866, 1067963885, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079918592, "_x_x_x_x_bach_float64_x_x_x_x_", 4185565889, 1067656861, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079934976, "_x_x_x_x_bach_float64_x_x_x_x_", 506325105, 1067480030, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079951360, "_x_x_x_x_bach_float64_x_x_x_x_", 506325105, 1067480030, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079967744, "_x_x_x_x_bach_float64_x_x_x_x_", 2263894442, 1068509748, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079984128, "_x_x_x_x_bach_float64_x_x_x_x_", 1896382680, 1068362981, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080000512, "_x_x_x_x_bach_float64_x_x_x_x_", 828207134, 1068350499, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "_x_x_x_x_bach_float64_x_x_x_x_", 4044278645, 1068129039, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080033280, "_x_x_x_x_bach_float64_x_x_x_x_", 4044278645, 1068129039, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080041472, "_x_x_x_x_bach_float64_x_x_x_x_", 3853513377, 1068624789, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080049664, "_x_x_x_x_bach_float64_x_x_x_x_", 4134713476, 1068722382, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080057856, "_x_x_x_x_bach_float64_x_x_x_x_", 4134713476, 1068722382, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080066048, "_x_x_x_x_bach_float64_x_x_x_x_", 3550597924, 1068527347, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080074240, "_x_x_x_x_bach_float64_x_x_x_x_", 3550597924, 1068527347, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080082432, "_x_x_x_x_bach_float64_x_x_x_x_", 4214153191, 1068738421, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080090624, "_x_x_x_x_bach_float64_x_x_x_x_", 1843881000, 1068791404, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080098816, "_x_x_x_x_bach_float64_x_x_x_x_", 1843881000, 1068791404, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080107008, "_x_x_x_x_bach_float64_x_x_x_x_", 1592367715, 1068889383, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080115200, "_x_x_x_x_bach_float64_x_x_x_x_", 1592367715, 1068889383, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080123392, "_x_x_x_x_bach_float64_x_x_x_x_", 1141018192, 1068862657, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080131584, "_x_x_x_x_bach_float64_x_x_x_x_", 299342041, 1069051015, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080139776, "_x_x_x_x_bach_float64_x_x_x_x_", 299342041, 1069051015, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080147968, "_x_x_x_x_bach_float64_x_x_x_x_", 3202052738, 1068891463, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080156160, "_x_x_x_x_bach_float64_x_x_x_x_", 509898517, 1068860409, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080164352, "_x_x_x_x_bach_float64_x_x_x_x_", 509898517, 1068860409, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080172544, "_x_x_x_x_bach_float64_x_x_x_x_", 101979703, 1068833381, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080180736, "_x_x_x_x_bach_float64_x_x_x_x_", 101979703, 1068833381, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080188928, "_x_x_x_x_bach_float64_x_x_x_x_", 2814749767, 1068701696, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080197120, "_x_x_x_x_bach_float64_x_x_x_x_", 2951364087, 1068521559, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080205312, "_x_x_x_x_bach_float64_x_x_x_x_", 2951364087, 1068521559, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080213504, "_x_x_x_x_bach_float64_x_x_x_x_", 2533824546, 1068710286, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080221696, "_x_x_x_x_bach_float64_x_x_x_x_", 2533824546, 1068710286, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080229888, "_x_x_x_x_bach_float64_x_x_x_x_", 1305120302, 1068815060, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080238080, "_x_x_x_x_bach_float64_x_x_x_x_", 799894709, 1068685842, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080246272, "_x_x_x_x_bach_float64_x_x_x_x_", 591537256, 1068677336, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080254464, "_x_x_x_x_bach_float64_x_x_x_x_", 3384296790, 1068774056, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080262656, "_x_x_x_x_bach_float64_x_x_x_x_", 1874392447, 1068781237, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080270848, "_x_x_x_x_bach_float64_x_x_x_x_", 2806228552, 1068817895, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080279040, "_x_x_x_x_bach_float64_x_x_x_x_", 539310453, 1068687654, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080287232, "_x_x_x_x_bach_float64_x_x_x_x_", 150907971, 1068597443, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080295424, "_x_x_x_x_bach_float64_x_x_x_x_", 365312738, 1068582679, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080303616, "_x_x_x_x_bach_float64_x_x_x_x_", 1253993011, 1068725822, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080311808, "_x_x_x_x_bach_float64_x_x_x_x_", 3011012593, 1068756742, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080320000, "_x_x_x_x_bach_float64_x_x_x_x_", 2678135447, 1068881833, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080328192, "_x_x_x_x_bach_float64_x_x_x_x_", 2678135447, 1068881833, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080336384, "_x_x_x_x_bach_float64_x_x_x_x_", 1410123663, 1068744646, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080344576, "_x_x_x_x_bach_float64_x_x_x_x_", 2195724721, 1068652908, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080352768, "_x_x_x_x_bach_float64_x_x_x_x_", 1506880686, 1068634470, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080360960, "_x_x_x_x_bach_float64_x_x_x_x_", 3354609976, 1068578484, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080369152, "_x_x_x_x_bach_float64_x_x_x_x_", 3354609976, 1068578484, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080377344, "_x_x_x_x_bach_float64_x_x_x_x_", 120396523, 1068345466, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080385536, "_x_x_x_x_bach_float64_x_x_x_x_", 2426072407, 1068243158, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080393728, "_x_x_x_x_bach_float64_x_x_x_x_", 3628113494, 1068324393, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080401920, "_x_x_x_x_bach_float64_x_x_x_x_", 171798692, 1068803031, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080410112, "_x_x_x_x_bach_float64_x_x_x_x_", 171798692, 1068803031, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080418304, "_x_x_x_x_bach_float64_x_x_x_x_", 2669064476, 1068785666, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080426496, "_x_x_x_x_bach_float64_x_x_x_x_", 3243559302, 1068672168, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080434688, "_x_x_x_x_bach_float64_x_x_x_x_", 3243559302, 1068672168, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080442880, "_x_x_x_x_bach_float64_x_x_x_x_", 1616556971, 1068534159, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080451072, "_x_x_x_x_bach_float64_x_x_x_x_", 1616556971, 1068534159, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080459264, "_x_x_x_x_bach_float64_x_x_x_x_", 496154622, 1068531995, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080467456, "_x_x_x_x_bach_float64_x_x_x_x_", 4147082982, 1068519881, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080475648, "_x_x_x_x_bach_float64_x_x_x_x_", 4147082982, 1068519881, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080483840, "_x_x_x_x_bach_float64_x_x_x_x_", 811714459, 1068533119, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080492032, "_x_x_x_x_bach_float64_x_x_x_x_", 3698207360, 1068662370, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080500224, "_x_x_x_x_bach_float64_x_x_x_x_", 3698207360, 1068662370, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080508416, "_x_x_x_x_bach_float64_x_x_x_x_", 2979126755, 1068498138, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080516608, "_x_x_x_x_bach_float64_x_x_x_x_", 2979126755, 1068498138, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080524800, "_x_x_x_x_bach_float64_x_x_x_x_", 232271831, 1068570331, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080532992, "_x_x_x_x_bach_float64_x_x_x_x_", 102804337, 1068627642, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080541184, "_x_x_x_x_bach_float64_x_x_x_x_", 102804337, 1068627642, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080549376, "_x_x_x_x_bach_float64_x_x_x_x_", 1692698151, 1068586722, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080557568, "_x_x_x_x_bach_float64_x_x_x_x_", 1692698151, 1068586722, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080565760, "_x_x_x_x_bach_float64_x_x_x_x_", 3421680186, 1068534880, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080573952, "_x_x_x_x_bach_float64_x_x_x_x_", 2089346971, 1068454551, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080582144, "_x_x_x_x_bach_float64_x_x_x_x_", 2089346971, 1068454551, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080590336, "_x_x_x_x_bach_float64_x_x_x_x_", 2068731128, 1068617290, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080598528, "_x_x_x_x_bach_float64_x_x_x_x_", 2068731128, 1068617290, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080606720, "_x_x_x_x_bach_float64_x_x_x_x_", 1645694029, 1068779509, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080614912, "_x_x_x_x_bach_float64_x_x_x_x_", 399947355, 1068854537, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080623104, "_x_x_x_x_bach_float64_x_x_x_x_", 399947355, 1068854537, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080631296, "_x_x_x_x_bach_float64_x_x_x_x_", 4198760029, 1069083629, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080639488, "_x_x_x_x_bach_float64_x_x_x_x_", 4198760029, 1069083629, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080647680, "_x_x_x_x_bach_float64_x_x_x_x_", 1902429994, 1069388287, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080655872, "_x_x_x_x_bach_float64_x_x_x_x_", 1180050855, 1069522723, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080664064, "_x_x_x_x_bach_float64_x_x_x_x_", 1180050855, 1069522723, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080672256, "_x_x_x_x_bach_float64_x_x_x_x_", 993408756, 1069776210, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080680448, "_x_x_x_x_bach_float64_x_x_x_x_", 3011837226, 1069992795, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080688640, "_x_x_x_x_bach_float64_x_x_x_x_", 3011837226, 1069992795, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080696832, "_x_x_x_x_bach_float64_x_x_x_x_", 3310354633, 1069964173, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080705024, "_x_x_x_x_bach_float64_x_x_x_x_", 3310354633, 1069964173, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080713216, "_x_x_x_x_bach_float64_x_x_x_x_", 2125905732, 1070845946, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080721408, "_x_x_x_x_bach_float64_x_x_x_x_", 58823872, 1071233626, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080729600, "_x_x_x_x_bach_float64_x_x_x_x_", 1427990727, 1071386701, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080737792, "_x_x_x_x_bach_float64_x_x_x_x_", 2647898878, 1071783463, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080745984, "_x_x_x_x_bach_float64_x_x_x_x_", 2647898878, 1071783463, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080754176, "_x_x_x_x_bach_float64_x_x_x_x_", 1558007977, 1072066044, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080762368, "_x_x_x_x_bach_float64_x_x_x_x_", 714407680, 1072297553, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080770560, "_x_x_x_x_bach_float64_x_x_x_x_", 108027017, 1072447359, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080778752, "_x_x_x_x_bach_float64_x_x_x_x_", 3415907750, 1072662029, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080786944, "_x_x_x_x_bach_float64_x_x_x_x_", 3415907750, 1072662029, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080795136, "_x_x_x_x_bach_float64_x_x_x_x_", 2837289755, 1072690110, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080803328, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080811520, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080819712, "_x_x_x_x_bach_float64_x_x_x_x_", 2802105383, 1072336958, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080827904, "_x_x_x_x_bach_float64_x_x_x_x_", 2964558226, 1072078247, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080836096, "_x_x_x_x_bach_float64_x_x_x_x_", 114898965, 1072087278, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080844288, "_x_x_x_x_bach_float64_x_x_x_x_", 75316547, 1072099582, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080852480, "_x_x_x_x_bach_float64_x_x_x_x_", 75316547, 1072099582, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080860672, "_x_x_x_x_bach_float64_x_x_x_x_", 2163564006, 1071990905, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080868864, "_x_x_x_x_bach_float64_x_x_x_x_", 2514308215, 1071919197, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080877056, "_x_x_x_x_bach_float64_x_x_x_x_", 317209105, 1071824142, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080885248, "_x_x_x_x_bach_float64_x_x_x_x_", 1474445093, 1071571372, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080893440, "_x_x_x_x_bach_float64_x_x_x_x_", 1474445093, 1071571372, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080901632, "_x_x_x_x_bach_float64_x_x_x_x_", 1882363907, 1071270720, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080909824, "_x_x_x_x_bach_float64_x_x_x_x_", 2660268383, 1071417122, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080918016, "_x_x_x_x_bach_float64_x_x_x_x_", 2660268383, 1071417122, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080926208, "_x_x_x_x_bach_float64_x_x_x_x_", 1433763163, 1072174752, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080934400, "_x_x_x_x_bach_float64_x_x_x_x_", 1433763163, 1072174752, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080942592, "_x_x_x_x_bach_float64_x_x_x_x_", 1224581075, 1072011537, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080950784, "_x_x_x_x_bach_float64_x_x_x_x_", 2500839197, 1071762502, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080958976, "_x_x_x_x_bach_float64_x_x_x_x_", 2500839197, 1071762502, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080967168, "_x_x_x_x_bach_float64_x_x_x_x_", 614077244, 1071748246, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080975360, "_x_x_x_x_bach_float64_x_x_x_x_", 769383262, 1071645129, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080983552, "_x_x_x_x_bach_float64_x_x_x_x_", 769383262, 1071645129, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080991744, "_x_x_x_x_bach_float64_x_x_x_x_", 1358171738, 1071154907, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080999936, "_x_x_x_x_bach_float64_x_x_x_x_", 1358171738, 1071154907, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081008128, "_x_x_x_x_bach_float64_x_x_x_x_", 1515127023, 1070771384, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081016320, "_x_x_x_x_bach_float64_x_x_x_x_", 979389982, 1070390189, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081024512, "_x_x_x_x_bach_float64_x_x_x_x_", 979389982, 1070390189, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081032704, "_x_x_x_x_bach_float64_x_x_x_x_", 979389982, 1070390189, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081040896, "_x_x_x_x_bach_float64_x_x_x_x_", 2695177878, 1069829083, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081049088, "_x_x_x_x_bach_float64_x_x_x_x_", 2695177878, 1069829083, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081057280, "_x_x_x_x_bach_float64_x_x_x_x_", 2186653750, 1070129605, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081065472, "_x_x_x_x_bach_float64_x_x_x_x_", 179220395, 1070686932, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081073664, "_x_x_x_x_bach_float64_x_x_x_x_", 179220395, 1070686932, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081081856, "_x_x_x_x_bach_float64_x_x_x_x_", 179220395, 1070686932, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081085952, "_x_x_x_x_bach_float64_x_x_x_x_", 3881825802, 1070976422, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081090048, "_x_x_x_x_bach_float64_x_x_x_x_", 3881825802, 1070976422, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081094144, "_x_x_x_x_bach_float64_x_x_x_x_", 1888960977, 1071001064, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081098240, "_x_x_x_x_bach_float64_x_x_x_x_", 1529420674, 1070918948, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081102336, "_x_x_x_x_bach_float64_x_x_x_x_", 1529420674, 1070918948, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081106432, "_x_x_x_x_bach_float64_x_x_x_x_", 1326560779, 1070871414, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081110528, "_x_x_x_x_bach_float64_x_x_x_x_", 1326560779, 1070871414, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081114624, "_x_x_x_x_bach_float64_x_x_x_x_", 726227430, 1070965182, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081118720, "_x_x_x_x_bach_float64_x_x_x_x_", 2464830192, 1071746161, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081122816, "_x_x_x_x_bach_float64_x_x_x_x_", 2464830192, 1071746161, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081126912, "_x_x_x_x_bach_float64_x_x_x_x_", 1025569471, 1072336453, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081131008, "_x_x_x_x_bach_float64_x_x_x_x_", 1025569471, 1072336453, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081135104, "_x_x_x_x_bach_float64_x_x_x_x_", 1025569471, 1072336453, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081139200, "_x_x_x_x_bach_float64_x_x_x_x_", 3831523145, 1072647525, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081143296, "_x_x_x_x_bach_float64_x_x_x_x_", 2592373540, 1072682273, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081147392, "_x_x_x_x_bach_float64_x_x_x_x_", 2592373540, 1072682273, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081151488, "_x_x_x_x_bach_float64_x_x_x_x_", 1935140465, 1072357504, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081155584, "_x_x_x_x_bach_float64_x_x_x_x_", 1935140465, 1072357504, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081159680, "_x_x_x_x_bach_float64_x_x_x_x_", 3094025721, 1072020936, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081163776, "_x_x_x_x_bach_float64_x_x_x_x_", 517045343, 1071653935, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081167872, "_x_x_x_x_bach_float64_x_x_x_x_", 517045343, 1071653935, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081171968, "_x_x_x_x_bach_float64_x_x_x_x_", 1229254000, 1070703688, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081176064, "_x_x_x_x_bach_float64_x_x_x_x_", 2219089343, 1069027711, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081180160, "_x_x_x_x_bach_float64_x_x_x_x_", 1781758593, 1067862718, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081184256, "_x_x_x_x_bach_float64_x_x_x_x_", 579167750, 1068093405, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081188352, "_x_x_x_x_bach_float64_x_x_x_x_", 579167750, 1068093405, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081192448, "_x_x_x_x_bach_float64_x_x_x_x_", 2552516244, 1068590698, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081196544, "_x_x_x_x_bach_float64_x_x_x_x_", 1955481430, 1067337222, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081200640, "_x_x_x_x_bach_float64_x_x_x_x_", 1955481430, 1067337222, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081204736, "_x_x_x_x_bach_float64_x_x_x_x_", 583565796, 1067695181, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081208832, "_x_x_x_x_bach_float64_x_x_x_x_", 583565796, 1067695181, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081212928, "_x_x_x_x_bach_float64_x_x_x_x_", 2695727633, 1068599657, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081217024, "_x_x_x_x_bach_float64_x_x_x_x_", 4223224162, 1067786012, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081221120, "_x_x_x_x_bach_float64_x_x_x_x_", 4223224162, 1067786012, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081225216, "_x_x_x_x_bach_float64_x_x_x_x_", 1864221965, 1066687474, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081229312, "_x_x_x_x_bach_float64_x_x_x_x_", 1864221965, 1066687474, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081233408, "_x_x_x_x_bach_float64_x_x_x_x_", 651460639, 1068756558, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081237504, "_x_x_x_x_bach_float64_x_x_x_x_", 3592104488, 1068308052, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081241600, "_x_x_x_x_bach_float64_x_x_x_x_", 3592104488, 1068308052, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081245696, "_x_x_x_x_bach_float64_x_x_x_x_", 3348012907, 1067865100, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081249792, "_x_x_x_x_bach_float64_x_x_x_x_", 862017116, 1068565952, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081253888, "_x_x_x_x_bach_float64_x_x_x_x_", 862017116, 1068565952, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081257984, "_x_x_x_x_bach_float64_x_x_x_x_", 3493148441, 1068617340, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081262080, "_x_x_x_x_bach_float64_x_x_x_x_", 3493148441, 1068617340, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081266176, "_x_x_x_x_bach_float64_x_x_x_x_", 575319459, 1068179707, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081270272, "_x_x_x_x_bach_float64_x_x_x_x_", 821060308, 1068211181, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081274368, "_x_x_x_x_bach_float64_x_x_x_x_", 821060308, 1068211181, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081278464, "_x_x_x_x_bach_float64_x_x_x_x_", 769658139, 1068802192, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081282560, "_x_x_x_x_bach_float64_x_x_x_x_", 769658139, 1068802192, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081286656, "_x_x_x_x_bach_float64_x_x_x_x_", 700663785, 1068626803, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081290752, "_x_x_x_x_bach_float64_x_x_x_x_", 3490949418, 1068554308, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081294848, "_x_x_x_x_bach_float64_x_x_x_x_", 3490949418, 1068554308, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081298944, "_x_x_x_x_bach_float64_x_x_x_x_", 4293867784, 1068598499, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081303040, "_x_x_x_x_bach_float64_x_x_x_x_", 4293867784, 1068598499, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081307136, "_x_x_x_x_bach_float64_x_x_x_x_", 2109687936, 1068447773, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081311232, "_x_x_x_x_bach_float64_x_x_x_x_", 2048665040, 1068468107, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081315328, "_x_x_x_x_bach_float64_x_x_x_x_", 213580134, 1068427775, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081319424, "_x_x_x_x_bach_float64_x_x_x_x_", 782577401, 1068025625, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081323520, "_x_x_x_x_bach_float64_x_x_x_x_", 782577401, 1068025625, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081327616, "_x_x_x_x_bach_float64_x_x_x_x_", 1587145035, 1068182626, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081331712, "_x_x_x_x_bach_float64_x_x_x_x_", 4082761552, 1068576739, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081335808, "_x_x_x_x_bach_float64_x_x_x_x_", 2884843633, 1068515385, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081339904, "_x_x_x_x_bach_float64_x_x_x_x_", 2144047674, 1068351304, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081344000, "_x_x_x_x_bach_float64_x_x_x_x_", 2716068599, 1068592879, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081348096, "_x_x_x_x_bach_float64_x_x_x_x_", 1476369238, 1068906781, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081352192, "_x_x_x_x_bach_float64_x_x_x_x_", 2895838750, 1068830545, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081356288, "_x_x_x_x_bach_float64_x_x_x_x_", 2895838750, 1068830545, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081360384, "_x_x_x_x_bach_float64_x_x_x_x_", 2459057756, 1068402206, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081364480, "_x_x_x_x_bach_float64_x_x_x_x_", 35459250, 1068565063, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081368576, "_x_x_x_x_bach_float64_x_x_x_x_", 1014299477, 1068671078, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081372672, "_x_x_x_x_bach_float64_x_x_x_x_", 1014299477, 1068671078, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081376768, "_x_x_x_x_bach_float64_x_x_x_x_", 3590180343, 1068613347, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081380864, "_x_x_x_x_bach_float64_x_x_x_x_", 752340831, 1068404119, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081384960, "_x_x_x_x_bach_float64_x_x_x_x_", 2582477936, 1068630309, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081389056, "_x_x_x_x_bach_float64_x_x_x_x_", 2582477936, 1068630309, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081393152, "_x_x_x_x_bach_float64_x_x_x_x_", 3475831133, 1068743555, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081397248, "_x_x_x_x_bach_float64_x_x_x_x_", 1260040325, 1068702552, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081401344, "_x_x_x_x_bach_float64_x_x_x_x_", 1260040325, 1068702552, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081405440, "_x_x_x_x_bach_float64_x_x_x_x_", 3236412476, 1068270706, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081409536, "_x_x_x_x_bach_float64_x_x_x_x_", 3236412476, 1068270706, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081413632, "_x_x_x_x_bach_float64_x_x_x_x_", 571746046, 1068634336, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081417728, "_x_x_x_x_bach_float64_x_x_x_x_", 3141029843, 1068911797, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081421824, "_x_x_x_x_bach_float64_x_x_x_x_", 3141029843, 1068911797, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081425920, "_x_x_x_x_bach_float64_x_x_x_x_", 2937070436, 1068767211, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081430016, "_x_x_x_x_bach_float64_x_x_x_x_", 1078346029, 1068508037, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081434112, "_x_x_x_x_bach_float64_x_x_x_x_", 3383747034, 1068561690, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081438208, "_x_x_x_x_bach_float64_x_x_x_x_", 3383747034, 1068561690, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081442304, "_x_x_x_x_bach_float64_x_x_x_x_", 3065163540, 1068703273, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081446400, "_x_x_x_x_bach_float64_x_x_x_x_", 3065163540, 1068703273, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081450496, "_x_x_x_x_bach_float64_x_x_x_x_", 616276267, 1068534478, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081454592, "_x_x_x_x_bach_float64_x_x_x_x_", 616276267, 1068534478, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081458688, "_x_x_x_x_bach_float64_x_x_x_x_", 646237959, 1068574089, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081462784, "_x_x_x_x_bach_float64_x_x_x_x_", 2761148575, 1068705387, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081466880, "_x_x_x_x_bach_float64_x_x_x_x_", 2761148575, 1068705387, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081470976, "_x_x_x_x_bach_float64_x_x_x_x_", 2251250058, 1068606066, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081475072, "_x_x_x_x_bach_float64_x_x_x_x_", 2251250058, 1068606066, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081479168, "_x_x_x_x_bach_float64_x_x_x_x_", 3081106459, 1068570431, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081483264, "_x_x_x_x_bach_float64_x_x_x_x_", 633593576, 1068670407, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081487360, "_x_x_x_x_bach_float64_x_x_x_x_", 633593576, 1068670407, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081491456, "_x_x_x_x_bach_float64_x_x_x_x_", 3453016267, 1068581118, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081495552, "_x_x_x_x_bach_float64_x_x_x_x_", 3675117616, 1068393750, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081499648, "_x_x_x_x_bach_float64_x_x_x_x_", 748767419, 1068334460, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081503744, "_x_x_x_x_bach_float64_x_x_x_x_", 3197104936, 1068553033, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081507840, "_x_x_x_x_bach_float64_x_x_x_x_", 2540146738, 1068531055, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081511936, "_x_x_x_x_bach_float64_x_x_x_x_", 2156692058, 1068517130, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081516032, "_x_x_x_x_bach_float64_x_x_x_x_", 2996993819, 1068584289, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081520128, "_x_x_x_x_bach_float64_x_x_x_x_", 216603791, 1068547212, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081524224, "_x_x_x_x_bach_float64_x_x_x_x_", 2009632378, 1068594473, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081528320, "_x_x_x_x_bach_float64_x_x_x_x_", 2009632378, 1068594473, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081532416, "_x_x_x_x_bach_float64_x_x_x_x_", 1760592994, 1068599523, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081536512, "_x_x_x_x_bach_float64_x_x_x_x_", 2406006319, 1068618263, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081540608, "_x_x_x_x_bach_float64_x_x_x_x_", 1951358261, 1068628061, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081544704, "_x_x_x_x_bach_float64_x_x_x_x_", 1451630227, 1068525351, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081548800, "_x_x_x_x_bach_float64_x_x_x_x_", 1451630227, 1068525351, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081552896, "_x_x_x_x_bach_float64_x_x_x_x_", 1593192349, 1068421500, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081556992, "_x_x_x_x_bach_float64_x_x_x_x_", 1065426767, 1068760316, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081561088, "_x_x_x_x_bach_float64_x_x_x_x_", 2406556075, 1068830629, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081565184, "_x_x_x_x_bach_float64_x_x_x_x_", 578617994, 1068667471, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081569280, "_x_x_x_x_bach_float64_x_x_x_x_", 578617994, 1068667471, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081573376, "_x_x_x_x_bach_float64_x_x_x_x_", 1803473947, 1068648999, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081577472, "_x_x_x_x_bach_float64_x_x_x_x_", 1154212331, 1068978705, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081581568, "_x_x_x_x_bach_float64_x_x_x_x_", 1154212331, 1068978705, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081585664, "_x_x_x_x_bach_float64_x_x_x_x_", 4271877552, 1069016755, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081589760, "_x_x_x_x_bach_float64_x_x_x_x_", 1358996372, 1068917552, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081593856, "_x_x_x_x_bach_float64_x_x_x_x_", 422487343, 1068910791, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081597952, "_x_x_x_x_bach_float64_x_x_x_x_", 1101710651, 1068882840, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081602048, "_x_x_x_x_bach_float64_x_x_x_x_", 1101710651, 1068882840, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081606144, "_x_x_x_x_bach_float64_x_x_x_x_", 1272684709, 1068868378, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081610240, "_x_x_x_x_bach_float64_x_x_x_x_", 1254267889, 1068832005, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081614336, "_x_x_x_x_bach_float64_x_x_x_x_", 1254267889, 1068832005, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081618432, "_x_x_x_x_bach_float64_x_x_x_x_", 1968675570, 1068763990, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081622528, "_x_x_x_x_bach_float64_x_x_x_x_", 1968675570, 1068763990, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081626624, "_x_x_x_x_bach_float64_x_x_x_x_", 953001703, 1068847373, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081630720, "_x_x_x_x_bach_float64_x_x_x_x_", 2498090418, 1068800128, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081634816, "_x_x_x_x_bach_float64_x_x_x_x_", 2498090418, 1068800128, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081638912, "_x_x_x_x_bach_float64_x_x_x_x_", 3307880732, 1068877454, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081643008, "_x_x_x_x_bach_float64_x_x_x_x_", 3307880732, 1068877454, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081647104, "_x_x_x_x_bach_float64_x_x_x_x_", 4212503924, 1069149899, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081651200, "_x_x_x_x_bach_float64_x_x_x_x_", 2346907569, 1069119734, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081655296, "_x_x_x_x_bach_float64_x_x_x_x_", 2346907569, 1069119734, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081659392, "_x_x_x_x_bach_float64_x_x_x_x_", 3030254046, 1069111664, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081663488, "_x_x_x_x_bach_float64_x_x_x_x_", 3030254046, 1069111664, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081667584, "_x_x_x_x_bach_float64_x_x_x_x_", 884007349, 1069196272, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081671680, "_x_x_x_x_bach_float64_x_x_x_x_", 4192987593, 1069213082, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081675776, "_x_x_x_x_bach_float64_x_x_x_x_", 4192987593, 1069213082, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081679872, "_x_x_x_x_bach_float64_x_x_x_x_", 3467584796, 1069228081, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081683968, "_x_x_x_x_bach_float64_x_x_x_x_", 3478030157, 1069330875, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081688064, "_x_x_x_x_bach_float64_x_x_x_x_", 2879620953, 1069381492, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081692160, "_x_x_x_x_bach_float64_x_x_x_x_", 342222994, 1069362635, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081696256, "_x_x_x_x_bach_float64_x_x_x_x_", 342222994, 1069362635, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081700352, "_x_x_x_x_bach_float64_x_x_x_x_", 1704517901, 1069220431, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081704448, "_x_x_x_x_bach_float64_x_x_x_x_", 2940643848, 1069099014, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081708544, "_x_x_x_x_bach_float64_x_x_x_x_", 3296060982, 1069030177, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081712640, "_x_x_x_x_bach_float64_x_x_x_x_", 3107494738, 1069064671, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081716736, "_x_x_x_x_bach_float64_x_x_x_x_", 3107494738, 1069064671, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081720832, "_x_x_x_x_bach_float64_x_x_x_x_", 3749609529, 1069119935, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081724928, "_x_x_x_x_bach_float64_x_x_x_x_", 3583858151, 1069054722, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081729024, "_x_x_x_x_bach_float64_x_x_x_x_", 2863952912, 1069096229, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081733120, "_x_x_x_x_bach_float64_x_x_x_x_", 3138006186, 1069316648, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081737216, "_x_x_x_x_bach_float64_x_x_x_x_", 3138006186, 1069316648, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081741312, "_x_x_x_x_bach_float64_x_x_x_x_", 3663022988, 1069619938, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081745408, "_x_x_x_x_bach_float64_x_x_x_x_", 2999467721, 1069933152, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081749504, "_x_x_x_x_bach_float64_x_x_x_x_", 2999467721, 1069933152, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081753600, "_x_x_x_x_bach_float64_x_x_x_x_", 4104476906, 1070149452, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081757696, "_x_x_x_x_bach_float64_x_x_x_x_", 4104476906, 1070149452, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081761792, "_x_x_x_x_bach_float64_x_x_x_x_", 208357453, 1070473530, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081765888, "_x_x_x_x_bach_float64_x_x_x_x_", 1073398227, 1070528903, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081769984, "_x_x_x_x_bach_float64_x_x_x_x_", 1073398227, 1070528903, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081774080, "_x_x_x_x_bach_float64_x_x_x_x_", 3823826563, 1070854049, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081778176, "_x_x_x_x_bach_float64_x_x_x_x_", 3934877238, 1072136621, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081782272, "_x_x_x_x_bach_float64_x_x_x_x_", 1247670820, 1072411229, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081786368, "_x_x_x_x_bach_float64_x_x_x_x_", 1953832163, 1072336220, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081790464, "_x_x_x_x_bach_float64_x_x_x_x_", 1953832163, 1072336220, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081794560, "_x_x_x_x_bach_float64_x_x_x_x_", 2734760296, 1072602059, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081798656, "_x_x_x_x_bach_float64_x_x_x_x_", 3501944534, 1072670556, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081802752, "_x_x_x_x_bach_float64_x_x_x_x_", 3501944534, 1072670556, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081806848, "_x_x_x_x_bach_float64_x_x_x_x_", 2241904209, 1070238724, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081810944, "_x_x_x_x_bach_float64_x_x_x_x_", 2241904209, 1070238724, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081815040, "_x_x_x_x_bach_float64_x_x_x_x_", 1140743314, 1069805050, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081819136, "_x_x_x_x_bach_float64_x_x_x_x_", 3505243069, 1069881520, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081823232, "_x_x_x_x_bach_float64_x_x_x_x_", 3505243069, 1069881520, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081827328, "_x_x_x_x_bach_float64_x_x_x_x_", 4068742779, 1069583934, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081831424, "_x_x_x_x_bach_float64_x_x_x_x_", 4068742779, 1069583934, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081835520, "_x_x_x_x_bach_float64_x_x_x_x_", 2270491511, 1069747420, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081839616, "_x_x_x_x_bach_float64_x_x_x_x_", 2773243203, 1069445279, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081843712, "_x_x_x_x_bach_float64_x_x_x_x_", 2773243203, 1069445279, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081847808, "_x_x_x_x_bach_float64_x_x_x_x_", 1243822529, 1068991355, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081851904, "_x_x_x_x_bach_float64_x_x_x_x_", 2439266546, 1068621350, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081856000, "_x_x_x_x_bach_float64_x_x_x_x_", 2439266546, 1068621350, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081860096, "_x_x_x_x_bach_float64_x_x_x_x_", 3027505267, 1067787690, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081864192, "_x_x_x_x_bach_float64_x_x_x_x_", 3027505267, 1067787690, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081868288, "_x_x_x_x_bach_float64_x_x_x_x_", 3151475203, 1067179583, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081872384, "_x_x_x_x_bach_float64_x_x_x_x_", 2764447110, 1066571711, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081876480, "_x_x_x_x_bach_float64_x_x_x_x_", 2764447110, 1066571711, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081880576, "_x_x_x_x_bach_float64_x_x_x_x_", 3965938441, 1066440580, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081884672, "_x_x_x_x_bach_float64_x_x_x_x_", 3965938441, 1066440580, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081888768, "_x_x_x_x_bach_float64_x_x_x_x_", 2806228552, 1066982887, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081892864, "_x_x_x_x_bach_float64_x_x_x_x_", 1035739953, 1067516168, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081896960, "_x_x_x_x_bach_float64_x_x_x_x_", 1035739953, 1067516168, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081901056, "_x_x_x_x_bach_float64_x_x_x_x_", 1411498052, 1067702697, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081905152, "_x_x_x_x_bach_float64_x_x_x_x_", 1411498052, 1067702697, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081909248, "_x_x_x_x_bach_float64_x_x_x_x_", 8521215, 1067858457, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081913344, "_x_x_x_x_bach_float64_x_x_x_x_", 3251805639, 1067925498, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081917440, "_x_x_x_x_bach_float64_x_x_x_x_", 3159171785, 1068055555, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081921536, "_x_x_x_x_bach_float64_x_x_x_x_", 1597590395, 1068809708, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081925632, "_x_x_x_x_bach_float64_x_x_x_x_", 1597590395, 1068809708, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081929728, "_x_x_x_x_bach_float64_x_x_x_x_", 1433763163, 1068963488, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081933824, "_x_x_x_x_bach_float64_x_x_x_x_", 1533818721, 1068554644, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081937920, "_x_x_x_x_bach_float64_x_x_x_x_", 1533818721, 1068554644, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081942016, "_x_x_x_x_bach_float64_x_x_x_x_", 1392256599, 1068658495, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081946112, "_x_x_x_x_bach_float64_x_x_x_x_", 3156697883, 1068672772, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081950208, "_x_x_x_x_bach_float64_x_x_x_x_", 2291931988, 1068592510, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081954304, "_x_x_x_x_bach_float64_x_x_x_x_", 1949434116, 1068146924, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081958400, "_x_x_x_x_bach_float64_x_x_x_x_", 1949434116, 1068146924, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081962496, "_x_x_x_x_bach_float64_x_x_x_x_", 1949434116, 1068146924, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081966592, "_x_x_x_x_bach_float64_x_x_x_x_", 1556633587, 1067144217, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081970688, "_x_x_x_x_bach_float64_x_x_x_x_", 1556633587, 1067144217, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081974784, "_x_x_x_x_bach_float64_x_x_x_x_", 1717712040, 1068025759, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081978880, "_x_x_x_x_bach_float64_x_x_x_x_", 3630037639, 1068805530, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081982976, "_x_x_x_x_bach_float64_x_x_x_x_", 3630037639, 1068805530, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081987072, "_x_x_x_x_bach_float64_x_x_x_x_", 3139655453, 1069691602, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081991168, "_x_x_x_x_bach_float64_x_x_x_x_", 3139655453, 1069691602, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081995264, "_x_x_x_x_bach_float64_x_x_x_x_", 169874546, 1069894758, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1081999360, "_x_x_x_x_bach_float64_x_x_x_x_", 3224317848, 1070807614, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082003456, "_x_x_x_x_bach_float64_x_x_x_x_", 3224317848, 1070807614, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082007552, "_x_x_x_x_bach_float64_x_x_x_x_", 3732017343, 1071695871, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082011648, "_x_x_x_x_bach_float64_x_x_x_x_", 2663841796, 1072437053, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082015744, "_x_x_x_x_bach_float64_x_x_x_x_", 2490668715, 1072519555, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082019840, "_x_x_x_x_bach_float64_x_x_x_x_", 2796882703, 1072547705, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082023936, "_x_x_x_x_bach_float64_x_x_x_x_", 2796882703, 1072547705, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082028032, "_x_x_x_x_bach_float64_x_x_x_x_", 564599221, 1072656554, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082032128, "_x_x_x_x_bach_float64_x_x_x_x_", 1899681215, 1072684601, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082036224, "_x_x_x_x_bach_float64_x_x_x_x_", 1899681215, 1072684601, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082040320, "_x_x_x_x_bach_float64_x_x_x_x_", 3824926075, 1070885565, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082044416, "_x_x_x_x_bach_float64_x_x_x_x_", 3824926075, 1070885565, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082048512, "_x_x_x_x_bach_float64_x_x_x_x_", 1932666564, 1071172481, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082052608, "_x_x_x_x_bach_float64_x_x_x_x_", 838927372, 1070787700, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082056704, "_x_x_x_x_bach_float64_x_x_x_x_", 838927372, 1070787700, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082060800, "_x_x_x_x_bach_float64_x_x_x_x_", 2263344686, 1069345958, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082064896, "_x_x_x_x_bach_float64_x_x_x_x_", 3685013220, 1069332754, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082068992, "_x_x_x_x_bach_float64_x_x_x_x_", 2425247773, 1069497473, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082073088, "_x_x_x_x_bach_float64_x_x_x_x_", 3097599133, 1067863523, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082077184, "_x_x_x_x_bach_float64_x_x_x_x_", 3097599133, 1067863523, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, "_x_x_x_x_bach_float64_x_x_x_x_", 2026674808, 1066789211, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082085376, "_x_x_x_x_bach_float64_x_x_x_x_", 3119039610, 1068281477, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082089472, "_x_x_x_x_bach_float64_x_x_x_x_", 3119039610, 1068281477, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082093568, "_x_x_x_x_bach_float64_x_x_x_x_", 2570933064, 1067840639, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082097664, "_x_x_x_x_bach_float64_x_x_x_x_", 2570933064, 1067840639, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082101760, "_x_x_x_x_bach_float64_x_x_x_x_", 505225593, 1067055298, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082105856, "_x_x_x_x_bach_float64_x_x_x_x_", 505225593, 1067055298, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082109952, "_x_x_x_x_bach_float64_x_x_x_x_", 505225593, 1067055298, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082114048, "_x_x_x_x_bach_float64_x_x_x_x_", 1454379006, 1067490029, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082118144, "_x_x_x_x_bach_float64_x_x_x_x_", 781752767, 1067969220, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082122240, "_x_x_x_x_bach_float64_x_x_x_x_", 781752767, 1067969220, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082126336, "_x_x_x_x_bach_float64_x_x_x_x_", 3554721093, 1068809372, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082130432, "_x_x_x_x_bach_float64_x_x_x_x_", 3554721093, 1068809372, "]" ],
					"reg_data_0000000001" : [ "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082132480, "_x_x_x_x_bach_float64_x_x_x_x_", 2840863168, 1068303321, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082134528, "_x_x_x_x_bach_float64_x_x_x_x_", 3277369284, 1068101189, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082136576, "_x_x_x_x_bach_float64_x_x_x_x_", 632219186, 1068663780, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082138624, "_x_x_x_x_bach_float64_x_x_x_x_", 2610240604, 1068869032, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082140672, "_x_x_x_x_bach_float64_x_x_x_x_", 2610240604, 1068869032, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082142720, "_x_x_x_x_bach_float64_x_x_x_x_", 463719029, 1068061025, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082144768, "_x_x_x_x_bach_float64_x_x_x_x_", 3609696674, 1067763732, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082146816, "_x_x_x_x_bach_float64_x_x_x_x_", 3609696674, 1067763732, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082148864, "_x_x_x_x_bach_float64_x_x_x_x_", 1180875488, 1068530552, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082150912, "_x_x_x_x_bach_float64_x_x_x_x_", 3187484209, 1067720212, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082152960, "_x_x_x_x_bach_float64_x_x_x_x_", 3667695912, 1067886105, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082155008, "_x_x_x_x_bach_float64_x_x_x_x_", 3444495052, 1067648741, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082157056, "_x_x_x_x_bach_float64_x_x_x_x_", 3444495052, 1067648741, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082159104, "_x_x_x_x_bach_float64_x_x_x_x_", 1957405575, 1068342647, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082161152, "_x_x_x_x_bach_float64_x_x_x_x_", 143211390, 1068507903, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082163200, "_x_x_x_x_bach_float64_x_x_x_x_", 1577799186, 1068504564, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082165248, "_x_x_x_x_bach_float64_x_x_x_x_", 3418931407, 1068521626, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082167296, "_x_x_x_x_bach_float64_x_x_x_x_", 3418931407, 1068521626, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082169344, "_x_x_x_x_bach_float64_x_x_x_x_", 2477474575, 1068700723, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082171392, "_x_x_x_x_bach_float64_x_x_x_x_", 1511828488, 1068710756, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082173440, "_x_x_x_x_bach_float64_x_x_x_x_", 1511828488, 1068710756, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082175488, "_x_x_x_x_bach_float64_x_x_x_x_", 1516501413, 1068418715, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082177536, "_x_x_x_x_bach_float64_x_x_x_x_", 1516501413, 1068418715, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082179584, "_x_x_x_x_bach_float64_x_x_x_x_", 306763744, 1068772228, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082181632, "_x_x_x_x_bach_float64_x_x_x_x_", 3591279854, 1068775935, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082183680, "_x_x_x_x_bach_float64_x_x_x_x_", 3591279854, 1068775935, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082185728, "_x_x_x_x_bach_float64_x_x_x_x_", 1070649448, 1068680641, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082187776, "_x_x_x_x_bach_float64_x_x_x_x_", 2975553343, 1068690623, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082189824, "_x_x_x_x_bach_float64_x_x_x_x_", 434307093, 1068758068, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082191872, "_x_x_x_x_bach_float64_x_x_x_x_", 3805684622, 1068761171, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082193920, "_x_x_x_x_bach_float64_x_x_x_x_", 3805684622, 1068761171, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082195968, "_x_x_x_x_bach_float64_x_x_x_x_", 601157982, 1068723725, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082198016, "_x_x_x_x_bach_float64_x_x_x_x_", 1618755994, 1068597191, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082200064, "_x_x_x_x_bach_float64_x_x_x_x_", 1038488732, 1068577998, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082202112, "_x_x_x_x_bach_float64_x_x_x_x_", 3011012593, 1068756742, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082204160, "_x_x_x_x_bach_float64_x_x_x_x_", 3011012593, 1068756742, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082206208, "_x_x_x_x_bach_float64_x_x_x_x_", 1802924192, 1068698777, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082208256, "_x_x_x_x_bach_float64_x_x_x_x_", 2641026930, 1068702904, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082210304, "_x_x_x_x_bach_float64_x_x_x_x_", 2641026930, 1068702904, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082212352, "_x_x_x_x_bach_float64_x_x_x_x_", 2170710831, 1068689583, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082214400, "_x_x_x_x_bach_float64_x_x_x_x_", 2170710831, 1068689583, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082216448, "_x_x_x_x_bach_float64_x_x_x_x_", 3695183703, 1068542933, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082218496, "_x_x_x_x_bach_float64_x_x_x_x_", 1309518349, 1068416836, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082220544, "_x_x_x_x_bach_float64_x_x_x_x_", 1309518349, 1068416836, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082222592, "_x_x_x_x_bach_float64_x_x_x_x_", 2533274790, 1068235776, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082224640, "_x_x_x_x_bach_float64_x_x_x_x_", 2533274790, 1068235776, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082226688, "_x_x_x_x_bach_float64_x_x_x_x_", 603357006, 1068786757, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082228736, "_x_x_x_x_bach_float64_x_x_x_x_", 2186653750, 1068818885, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082230784, "_x_x_x_x_bach_float64_x_x_x_x_", 2186653750, 1068818885, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082232832, "_x_x_x_x_bach_float64_x_x_x_x_", 740795959, 1068663025, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082234880, "_x_x_x_x_bach_float64_x_x_x_x_", 3512939651, 1068660340, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082236928, "_x_x_x_x_bach_float64_x_x_x_x_", 3512939651, 1068660340, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082238976, "_x_x_x_x_bach_float64_x_x_x_x_", 3512939651, 1068660340, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082241024, "_x_x_x_x_bach_float64_x_x_x_x_", 2344433668, 1068688375, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082243072, "_x_x_x_x_bach_float64_x_x_x_x_", 2344433668, 1068688375, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082245120, "_x_x_x_x_bach_float64_x_x_x_x_", 1327110535, 1068658948, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082247168, "_x_x_x_x_bach_float64_x_x_x_x_", 1327110535, 1068658948, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082249216, "_x_x_x_x_bach_float64_x_x_x_x_", 1521998971, 1068445223, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082251264, "_x_x_x_x_bach_float64_x_x_x_x_", 677574041, 1068358183, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082253312, "_x_x_x_x_bach_float64_x_x_x_x_", 3298260005, 1068306777, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082255360, "_x_x_x_x_bach_float64_x_x_x_x_", 3161920564, 1068068809, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082257408, "_x_x_x_x_bach_float64_x_x_x_x_", 3161920564, 1068068809, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082259456, "_x_x_x_x_bach_float64_x_x_x_x_", 3383472157, 1068193363, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082261504, "_x_x_x_x_bach_float64_x_x_x_x_", 1059104575, 1068415259, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082263552, "_x_x_x_x_bach_float64_x_x_x_x_", 1059104575, 1068415259, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082265600, "_x_x_x_x_bach_float64_x_x_x_x_", 2295230523, 1068555986, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082267648, "_x_x_x_x_bach_float64_x_x_x_x_", 2295230523, 1068555986, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082269696, "_x_x_x_x_bach_float64_x_x_x_x_", 1855150994, 1068688459, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082271744, "_x_x_x_x_bach_float64_x_x_x_x_", 260034500, 1068809054, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082273792, "_x_x_x_x_bach_float64_x_x_x_x_", 260034500, 1068809054, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082275840, "_x_x_x_x_bach_float64_x_x_x_x_", 152282360, 1068866214, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082277888, "_x_x_x_x_bach_float64_x_x_x_x_", 138538465, 1068799944, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082279936, "_x_x_x_x_bach_float64_x_x_x_x_", 2462081412, 1068783787, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082281984, "_x_x_x_x_bach_float64_x_x_x_x_", 2039868947, 1069002411, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082284032, "_x_x_x_x_bach_float64_x_x_x_x_", 2039868947, 1069002411, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082286080, "_x_x_x_x_bach_float64_x_x_x_x_", 4015416465, 1068776304, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082288128, "_x_x_x_x_bach_float64_x_x_x_x_", 3481053814, 1068401736, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082290176, "_x_x_x_x_bach_float64_x_x_x_x_", 3481053814, 1068401736, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082292224, "_x_x_x_x_bach_float64_x_x_x_x_", 2686381785, 1068397307, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082294272, "_x_x_x_x_bach_float64_x_x_x_x_", 2686381785, 1068397307, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082296320, "_x_x_x_x_bach_float64_x_x_x_x_", 1246571308, 1068480321, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082298368, "_x_x_x_x_bach_float64_x_x_x_x_", 1075872128, 1068338822, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082300416, "_x_x_x_x_bach_float64_x_x_x_x_", 1075872128, 1068338822, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082302464, "_x_x_x_x_bach_float64_x_x_x_x_", 1759493482, 1068436935, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082304512, "_x_x_x_x_bach_float64_x_x_x_x_", 3004415523, 1068567646, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082306560, "_x_x_x_x_bach_float64_x_x_x_x_", 3004415523, 1068567646, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082308608, "_x_x_x_x_bach_float64_x_x_x_x_", 1041237512, 1068853396, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082310656, "_x_x_x_x_bach_float64_x_x_x_x_", 1041237512, 1068853396, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082312704, "_x_x_x_x_bach_float64_x_x_x_x_", 3089627674, 1068978520, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082314752, "_x_x_x_x_bach_float64_x_x_x_x_", 3719098081, 1069130102, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082316800, "_x_x_x_x_bach_float64_x_x_x_x_", 3719098081, 1069130102, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082318848, "_x_x_x_x_bach_float64_x_x_x_x_", 2906009232, 1069089300, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082320896, "_x_x_x_x_bach_float64_x_x_x_x_", 915893186, 1069192732, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082322944, "_x_x_x_x_bach_float64_x_x_x_x_", 3224042971, 1069259639, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082324992, "_x_x_x_x_bach_float64_x_x_x_x_", 762236436, 1069080979, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082327040, "_x_x_x_x_bach_float64_x_x_x_x_", 762236436, 1069080979, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082329088, "_x_x_x_x_bach_float64_x_x_x_x_", 3830698511, 1068986640, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082331136, "_x_x_x_x_bach_float64_x_x_x_x_", 2915629959, 1068873545, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082333184, "_x_x_x_x_bach_float64_x_x_x_x_", 2915629959, 1068873545, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082335232, "_x_x_x_x_bach_float64_x_x_x_x_", 1772137866, 1068602761, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082337280, "_x_x_x_x_bach_float64_x_x_x_x_", 1772137866, 1068602761, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082339328, "_x_x_x_x_bach_float64_x_x_x_x_", 1367242709, 1068170882, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082341376, "_x_x_x_x_bach_float64_x_x_x_x_", 3371927284, 1068452269, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082343424, "_x_x_x_x_bach_float64_x_x_x_x_", 3371927284, 1068452269, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082345472, "_x_x_x_x_bach_float64_x_x_x_x_", 133315785, 1068355331, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082347520, "_x_x_x_x_bach_float64_x_x_x_x_", 133315785, 1068355331, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082349568, "_x_x_x_x_bach_float64_x_x_x_x_", 826282988, 1068393650, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082351616, "_x_x_x_x_bach_float64_x_x_x_x_", 266906448, 1068580045, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082353664, "_x_x_x_x_bach_float64_x_x_x_x_", 524192169, 1068614757, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082355712, "_x_x_x_x_bach_float64_x_x_x_x_", 1141293070, 1068706696, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082357760, "_x_x_x_x_bach_float64_x_x_x_x_", 1141293070, 1068706696, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082359808, "_x_x_x_x_bach_float64_x_x_x_x_", 1015673866, 1068677705, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082361856, "_x_x_x_x_bach_float64_x_x_x_x_", 393625163, 1068771624, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082363904, "_x_x_x_x_bach_float64_x_x_x_x_", 393625163, 1068771624, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082365952, "_x_x_x_x_bach_float64_x_x_x_x_", 2941468482, 1068893275, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082368000, "_x_x_x_x_bach_float64_x_x_x_x_", 926338546, 1068771238, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082370048, "_x_x_x_x_bach_float64_x_x_x_x_", 2304301494, 1068652153, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082372096, "_x_x_x_x_bach_float64_x_x_x_x_", 1193244994, 1068590195, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082374144, "_x_x_x_x_bach_float64_x_x_x_x_", 1193244994, 1068590195, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082376192, "_x_x_x_x_bach_float64_x_x_x_x_", 3663572744, 1068652656, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082378240, "_x_x_x_x_bach_float64_x_x_x_x_", 2896388505, 1068780767, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082380288, "_x_x_x_x_bach_float64_x_x_x_x_", 2896388505, 1068780767, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082382336, "_x_x_x_x_bach_float64_x_x_x_x_", 826557866, 1069024121, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082384384, "_x_x_x_x_bach_float64_x_x_x_x_", 2206994715, 1069074251, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082386432, "_x_x_x_x_bach_float64_x_x_x_x_", 3890347017, 1069221823, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082388480, "_x_x_x_x_bach_float64_x_x_x_x_", 1944211436, 1069275175, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082390528, "_x_x_x_x_bach_float64_x_x_x_x_", 1944211436, 1069275175, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082392576, "_x_x_x_x_bach_float64_x_x_x_x_", 1940912901, 1069311699, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082394624, "_x_x_x_x_bach_float64_x_x_x_x_", 788624715, 1069313075, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082396672, "_x_x_x_x_bach_float64_x_x_x_x_", 2614913529, 1069363423, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082398720, "_x_x_x_x_bach_float64_x_x_x_x_", 1272134953, 1069442444, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082400768, "_x_x_x_x_bach_float64_x_x_x_x_", 1272134953, 1069442444, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082402816, "_x_x_x_x_bach_float64_x_x_x_x_", 4294142662, 1069491114, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082404864, "_x_x_x_x_bach_float64_x_x_x_x_", 2297704424, 1069642705, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082406912, "_x_x_x_x_bach_float64_x_x_x_x_", 2297704424, 1069642705, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082408960, "_x_x_x_x_bach_float64_x_x_x_x_", 692142570, 1069791578, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082411008, "_x_x_x_x_bach_float64_x_x_x_x_", 692142570, 1069791578, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082413056, "_x_x_x_x_bach_float64_x_x_x_x_", 607480174, 1069986286, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082415104, "_x_x_x_x_bach_float64_x_x_x_x_", 273228640, 1070104750, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082417152, "_x_x_x_x_bach_float64_x_x_x_x_", 273228640, 1070104750, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082419200, "_x_x_x_x_bach_float64_x_x_x_x_", 750966442, 1070363572, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082421248, "_x_x_x_x_bach_float64_x_x_x_x_", 2106114523, 1070475266, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082423296, "_x_x_x_x_bach_float64_x_x_x_x_", 3480778936, 1070654849, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082425344, "_x_x_x_x_bach_float64_x_x_x_x_", 2568459162, 1070751616, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082427392, "_x_x_x_x_bach_float64_x_x_x_x_", 2568459162, 1070751616, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082429440, "_x_x_x_x_bach_float64_x_x_x_x_", 478287558, 1070805140, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082431488, "_x_x_x_x_bach_float64_x_x_x_x_", 2297979302, 1070863000, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082433536, "_x_x_x_x_bach_float64_x_x_x_x_", 1162458668, 1070853475, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082435584, "_x_x_x_x_bach_float64_x_x_x_x_", 1810620773, 1070819933, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082437632, "_x_x_x_x_bach_float64_x_x_x_x_", 1810620773, 1070819933, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082439680, "_x_x_x_x_bach_float64_x_x_x_x_", 4033283529, 1070697463, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082441728, "_x_x_x_x_bach_float64_x_x_x_x_", 2801005872, 1070470434, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082443776, "_x_x_x_x_bach_float64_x_x_x_x_", 2801005872, 1070470434, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082445824, "_x_x_x_x_bach_float64_x_x_x_x_", 3951369912, 1069856849, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082447872, "_x_x_x_x_bach_float64_x_x_x_x_", 3951369912, 1069856849, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082449920, "_x_x_x_x_bach_float64_x_x_x_x_", 545632645, 1069556999, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082451968, "_x_x_x_x_bach_float64_x_x_x_x_", 2426347285, 1068611485, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082454016, "_x_x_x_x_bach_float64_x_x_x_x_", 2426347285, 1068611485, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082456064, "_x_x_x_x_bach_float64_x_x_x_x_", 3692160046, 1068161352, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082458112, "_x_x_x_x_bach_float64_x_x_x_x_", 3692160046, 1068161352, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082460160, "_x_x_x_x_bach_float64_x_x_x_x_", 3201777860, 1067474560, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082462208, "_x_x_x_x_bach_float64_x_x_x_x_", 2048665040, 1068468107, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082464256, "_x_x_x_x_bach_float64_x_x_x_x_", 2048665040, 1068468107, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082466304, "_x_x_x_x_bach_float64_x_x_x_x_", 189665756, 1069151326, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082468352, "_x_x_x_x_bach_float64_x_x_x_x_", 1963727767, 1068949848, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082470400, "_x_x_x_x_bach_float64_x_x_x_x_", 1468672657, 1068555097, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082472448, "_x_x_x_x_bach_float64_x_x_x_x_", 3903816034, 1067609046, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082474496, "_x_x_x_x_bach_float64_x_x_x_x_", 2447512883, 1068136824, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082476544, "_x_x_x_x_bach_float64_x_x_x_x_", 2924151174, 1068233058, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082478592, "_x_x_x_x_bach_float64_x_x_x_x_", 3866432639, 1066275358, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082480640, "_x_x_x_x_bach_float64_x_x_x_x_", 4108050319, 1064451943, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082482688, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082484736, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082486784, "_x_x_x_x_bach_float64_x_x_x_x_", 1249869843, 1066084501, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082488832, "_x_x_x_x_bach_float64_x_x_x_x_", 504950715, 1068521979, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082490880, "_x_x_x_x_bach_float64_x_x_x_x_", 3533830372, 1068603784, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082492928, "_x_x_x_x_bach_float64_x_x_x_x_", 3481328691, 1068507919, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082494976, "_x_x_x_x_bach_float64_x_x_x_x_", 3481328691, 1068507919, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082497024, "_x_x_x_x_bach_float64_x_x_x_x_", 2028873831, 1068162963, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082499072, "_x_x_x_x_bach_float64_x_x_x_x_", 1040412878, 1068796991, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082501120, "_x_x_x_x_bach_float64_x_x_x_x_", 1898031947, 1069000079, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082503168, "_x_x_x_x_bach_float64_x_x_x_x_", 2506336756, 1069102034, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082505216, "_x_x_x_x_bach_float64_x_x_x_x_", 2506336756, 1069102034, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082507264, "_x_x_x_x_bach_float64_x_x_x_x_", 3732017343, 1069664255, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082509312, "_x_x_x_x_bach_float64_x_x_x_x_", 2187203506, 1070079827, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082511360, "_x_x_x_x_bach_float64_x_x_x_x_", 2187203506, 1070079827, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082513408, "_x_x_x_x_bach_float64_x_x_x_x_", 3525309157, 1070030703, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082515456, "_x_x_x_x_bach_float64_x_x_x_x_", 3525309157, 1070030703, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082517504, "_x_x_x_x_bach_float64_x_x_x_x_", 1775161523, 1070163990, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082519552, "_x_x_x_x_bach_float64_x_x_x_x_", 2129479145, 1070456853, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082521600, "_x_x_x_x_bach_float64_x_x_x_x_", 2129479145, 1070456853, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082523648, "_x_x_x_x_bach_float64_x_x_x_x_", 2643225953, 1070076656, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082525696, "_x_x_x_x_bach_float64_x_x_x_x_", 751241320, 1069814395, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082527744, "_x_x_x_x_bach_float64_x_x_x_x_", 3024206732, 1069790294, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082529792, "_x_x_x_x_bach_float64_x_x_x_x_", 2715518843, 1069822305, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082531840, "_x_x_x_x_bach_float64_x_x_x_x_", 2715518843, 1069822305, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082533888, "_x_x_x_x_bach_float64_x_x_x_x_", 2355153907, 1069683784, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082535936, "_x_x_x_x_bach_float64_x_x_x_x_", 558551907, 1069566864, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082537984, "_x_x_x_x_bach_float64_x_x_x_x_", 558551907, 1069566864, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082540032, "_x_x_x_x_bach_float64_x_x_x_x_", 3126186436, 1069469371, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082542080, "_x_x_x_x_bach_float64_x_x_x_x_", 3126186436, 1069469371, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082544128, "_x_x_x_x_bach_float64_x_x_x_x_", 2270491511, 1069223132, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082546176, "_x_x_x_x_bach_float64_x_x_x_x_", 399122721, 1069060276, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082548224, "_x_x_x_x_bach_float64_x_x_x_x_", 1705342535, 1069014692, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082550272, "_x_x_x_x_bach_float64_x_x_x_x_", 4132514453, 1069445782, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082552320, "_x_x_x_x_bach_float64_x_x_x_x_", 2690230075, 1069621725, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082554368, "_x_x_x_x_bach_float64_x_x_x_x_", 2690230075, 1069621725, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082556416, "_x_x_x_x_bach_float64_x_x_x_x_", 4260332680, 1069668877, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082558464, "_x_x_x_x_bach_float64_x_x_x_x_", 4260332680, 1069668877, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082560512, "_x_x_x_x_bach_float64_x_x_x_x_", 1327110535, 1069969668, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082562560, "_x_x_x_x_bach_float64_x_x_x_x_", 3833172412, 1069942287, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082564608, "_x_x_x_x_bach_float64_x_x_x_x_", 3833172412, 1069942287, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082566656, "_x_x_x_x_bach_float64_x_x_x_x_", 110226041, 1069921719, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082568704, "_x_x_x_x_bach_float64_x_x_x_x_", 110226041, 1069921719, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082570752, "_x_x_x_x_bach_float64_x_x_x_x_", 1550036517, 1069838705, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082572800, "_x_x_x_x_bach_float64_x_x_x_x_", 371085174, 1069763946, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082574848, "_x_x_x_x_bach_float64_x_x_x_x_", 1940088267, 1069648510, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082576896, "_x_x_x_x_bach_float64_x_x_x_x_", 3475006500, 1069604654, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082578944, "_x_x_x_x_bach_float64_x_x_x_x_", 3475006500, 1069604654, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082580992, "_x_x_x_x_bach_float64_x_x_x_x_", 3204801517, 1069560077, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082583040, "_x_x_x_x_bach_float64_x_x_x_x_", 211381110, 1069413319, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082585088, "_x_x_x_x_bach_float64_x_x_x_x_", 3594303511, 1069157516, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082587136, "_x_x_x_x_bach_float64_x_x_x_x_", 916992698, 1068831032, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082589184, "_x_x_x_x_bach_float64_x_x_x_x_", 3942573819, 1068687217, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082591232, "_x_x_x_x_bach_float64_x_x_x_x_", 644863570, 1068567462, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082593280, "_x_x_x_x_bach_float64_x_x_x_x_", 3910138226, 1068216247, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082595328, "_x_x_x_x_bach_float64_x_x_x_x_", 3910138226, 1068216247, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082597376, "_x_x_x_x_bach_float64_x_x_x_x_", 388952238, 1067490801, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082599424, "_x_x_x_x_bach_float64_x_x_x_x_", 2081375511, 1067210252, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082601472, "_x_x_x_x_bach_float64_x_x_x_x_", 1546188227, 1066779279, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082603520, "_x_x_x_x_bach_float64_x_x_x_x_", 1546188227, 1066779279, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082605568, "_x_x_x_x_bach_float64_x_x_x_x_", 4110249343, 1066349983, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082607616, "_x_x_x_x_bach_float64_x_x_x_x_", 4110249343, 1066349983, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082609664, "_x_x_x_x_bach_float64_x_x_x_x_", 1047009948, 1066888935, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082611712, "_x_x_x_x_bach_float64_x_x_x_x_", 1047009948, 1066888935, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082613760, "_x_x_x_x_bach_float64_x_x_x_x_", 20890721, 1067131668, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082615808, "_x_x_x_x_bach_float64_x_x_x_x_", 2623159866, 1067043889, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082617856, "_x_x_x_x_bach_float64_x_x_x_x_", 2623159866, 1067043889, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082619904, "_x_x_x_x_bach_float64_x_x_x_x_", 4285346569, 1067666122, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082621952, "_x_x_x_x_bach_float64_x_x_x_x_", 863941262, 1067998513, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082624000, "_x_x_x_x_bach_float64_x_x_x_x_", 863941262, 1067998513, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082626048, "_x_x_x_x_bach_float64_x_x_x_x_", 4009094273, 1067644815, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082628096, "_x_x_x_x_bach_float64_x_x_x_x_", 4009094273, 1067644815, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082630144, "_x_x_x_x_bach_float64_x_x_x_x_", 608579686, 1067658506, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082632192, "_x_x_x_x_bach_float64_x_x_x_x_", 1527496529, 1067947443, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082634240, "_x_x_x_x_bach_float64_x_x_x_x_", 1527496529, 1067947443, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082636288, "_x_x_x_x_bach_float64_x_x_x_x_", 2075053320, 1068175915, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082638336, "_x_x_x_x_bach_float64_x_x_x_x_", 2075053320, 1068175915, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082640384, "_x_x_x_x_bach_float64_x_x_x_x_", 316659349, 1067614080, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082642432, "_x_x_x_x_bach_float64_x_x_x_x_", 103903849, 1068265942, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082644480, "_x_x_x_x_bach_float64_x_x_x_x_", 103903849, 1068265942, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082646528, "_x_x_x_x_bach_float64_x_x_x_x_", 2080550878, 1068202423, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082648576, "_x_x_x_x_bach_float64_x_x_x_x_", 2080550878, 1068202423, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082650624, "_x_x_x_x_bach_float64_x_x_x_x_", 931286349, 1068061092, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082652672, "_x_x_x_x_bach_float64_x_x_x_x_", 132766029, 1068142965, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082654720, "_x_x_x_x_bach_float64_x_x_x_x_", 291645459, 1068175043, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082656768, "_x_x_x_x_bach_float64_x_x_x_x_", 2308974418, 1068097968, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082658816, "_x_x_x_x_bach_float64_x_x_x_x_", 811164703, 1068058609, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082660864, "_x_x_x_x_bach_float64_x_x_x_x_", 811164703, 1068058609, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082662912, "_x_x_x_x_bach_float64_x_x_x_x_", 2347457325, 1068283524, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082664960, "_x_x_x_x_bach_float64_x_x_x_x_", 2347457325, 1068283524, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082667008, "_x_x_x_x_bach_float64_x_x_x_x_", 884831982, 1068204101, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082669056, "_x_x_x_x_bach_float64_x_x_x_x_", 3810632424, 1068051025, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082671104, "_x_x_x_x_bach_float64_x_x_x_x_", 67619965, 1067881274, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082673152, "_x_x_x_x_bach_float64_x_x_x_x_", 3679240784, 1068151487, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082675200, "_x_x_x_x_bach_float64_x_x_x_x_", 3679240784, 1068151487, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082677248, "_x_x_x_x_bach_float64_x_x_x_x_", 1215510105, 1068278122, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082679296, "_x_x_x_x_bach_float64_x_x_x_x_", 2440915814, 1068209872, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082681344, "_x_x_x_x_bach_float64_x_x_x_x_", 2440915814, 1068209872, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082683392, "_x_x_x_x_bach_float64_x_x_x_x_", 2918103860, 1067994184, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082685440, "_x_x_x_x_bach_float64_x_x_x_x_", 2918103860, 1067994184, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082687488, "_x_x_x_x_bach_float64_x_x_x_x_", 534087773, 1067980897, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082689536, "_x_x_x_x_bach_float64_x_x_x_x_", 2363125366, 1068306643, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082691584, "_x_x_x_x_bach_float64_x_x_x_x_", 2363125366, 1068306643, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082693632, "_x_x_x_x_bach_float64_x_x_x_x_", 62122407, 1068379054, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082695680, "_x_x_x_x_bach_float64_x_x_x_x_", 1831236616, 1068101290, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082697728, "_x_x_x_x_bach_float64_x_x_x_x_", 965920965, 1067808662, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082699776, "_x_x_x_x_bach_float64_x_x_x_x_", 1481042163, 1068090452, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082701824, "_x_x_x_x_bach_float64_x_x_x_x_", 1481042163, 1068090452, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082703872, "_x_x_x_x_bach_float64_x_x_x_x_", 3837295581, 1068127160, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082705920, "_x_x_x_x_bach_float64_x_x_x_x_", 3551972314, 1068009686, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082707968, "_x_x_x_x_bach_float64_x_x_x_x_", 3551972314, 1068009686, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082710016, "_x_x_x_x_bach_float64_x_x_x_x_", 1335631750, 1068280605, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082712064, "_x_x_x_x_bach_float64_x_x_x_x_", 1335631750, 1068280605, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082714112, "_x_x_x_x_bach_float64_x_x_x_x_", 1954381918, 1068485354, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082716160, "_x_x_x_x_bach_float64_x_x_x_x_", 407643936, 1068419789, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082718208, "_x_x_x_x_bach_float64_x_x_x_x_", 407643936, 1068419789, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082720256, "_x_x_x_x_bach_float64_x_x_x_x_", 263058157, 1068142059, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082722304, "_x_x_x_x_bach_float64_x_x_x_x_", 263058157, 1068142059, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082724352, "_x_x_x_x_bach_float64_x_x_x_x_", 1105558942, 1068272250, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082726400, "_x_x_x_x_bach_float64_x_x_x_x_", 946679512, 1068502316, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082728448, "_x_x_x_x_bach_float64_x_x_x_x_", 946679512, 1068502316, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082730496, "_x_x_x_x_bach_float64_x_x_x_x_", 1408749273, 1068213731, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082732544, "_x_x_x_x_bach_float64_x_x_x_x_", 3598701558, 1068235004, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082734592, "_x_x_x_x_bach_float64_x_x_x_x_", 4191888081, 1068264062, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082736640, "_x_x_x_x_bach_float64_x_x_x_x_", 3934877238, 1068335533, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082738688, "_x_x_x_x_bach_float64_x_x_x_x_", 3934877238, 1068335533, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082740736, "_x_x_x_x_bach_float64_x_x_x_x_", 3503318924, 1068351807, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082742784, "_x_x_x_x_bach_float64_x_x_x_x_", 3658624941, 1068314226, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082744832, "_x_x_x_x_bach_float64_x_x_x_x_", 3658624941, 1068314226, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082746880, "_x_x_x_x_bach_float64_x_x_x_x_", 343322506, 1068214503, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082748928, "_x_x_x_x_bach_float64_x_x_x_x_", 4202883197, 1068317078, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082750976, "_x_x_x_x_bach_float64_x_x_x_x_", 4202883197, 1068317078, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082753024, "_x_x_x_x_bach_float64_x_x_x_x_", 3234763209, 1068157896, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082755072, "_x_x_x_x_bach_float64_x_x_x_x_", 3234763209, 1068157896, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082757120, "_x_x_x_x_bach_float64_x_x_x_x_", 336175680, 1067550897, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082759168, "_x_x_x_x_bach_float64_x_x_x_x_", 1440085354, 1067735681, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082761216, "_x_x_x_x_bach_float64_x_x_x_x_", 4254285366, 1067988211, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082763264, "_x_x_x_x_bach_float64_x_x_x_x_", 1241623506, 1068141891, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082765312, "_x_x_x_x_bach_float64_x_x_x_x_", 1241623506, 1068141891, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082767360, "_x_x_x_x_bach_float64_x_x_x_x_", 4050600837, 1068211952, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082769408, "_x_x_x_x_bach_float64_x_x_x_x_", 1221007663, 1067780342, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082771456, "_x_x_x_x_bach_float64_x_x_x_x_", 4247963174, 1067905298, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082773504, "_x_x_x_x_bach_float64_x_x_x_x_", 1885112686, 1068465926, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082775552, "_x_x_x_x_bach_float64_x_x_x_x_", 1885112686, 1068465926, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082777600, "_x_x_x_x_bach_float64_x_x_x_x_", 3858736058, 1068545114, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082779648, "_x_x_x_x_bach_float64_x_x_x_x_", 1236675703, 1068589893, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082781696, "_x_x_x_x_bach_float64_x_x_x_x_", 1236675703, 1068589893, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082783744, "_x_x_x_x_bach_float64_x_x_x_x_", 1628926477, 1068593802, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082785792, "_x_x_x_x_bach_float64_x_x_x_x_", 1628926477, 1068593802, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082787840, "_x_x_x_x_bach_float64_x_x_x_x_", 3288364401, 1068678493, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082789888, "_x_x_x_x_bach_float64_x_x_x_x_", 4002772081, 1068610478, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082791936, "_x_x_x_x_bach_float64_x_x_x_x_", 4002772081, 1068610478, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082793984, "_x_x_x_x_bach_float64_x_x_x_x_", 2438167035, 1068720906, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082796032, "_x_x_x_x_bach_float64_x_x_x_x_", 1999736773, 1068704045, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082798080, "_x_x_x_x_bach_float64_x_x_x_x_", 3669345180, 1068785347, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082800128, "_x_x_x_x_bach_float64_x_x_x_x_", 3988203552, 1068749947, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082802176, "_x_x_x_x_bach_float64_x_x_x_x_", 3988203552, 1068749947, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082804224, "_x_x_x_x_bach_float64_x_x_x_x_", 1067076035, 1068610982, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082806272, "_x_x_x_x_bach_float64_x_x_x_x_", 3272696360, 1068655374, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082808320, "_x_x_x_x_bach_float64_x_x_x_x_", 1564605046, 1068650660, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082810368, "_x_x_x_x_bach_float64_x_x_x_x_", 3682264441, 1068533068, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082812416, "_x_x_x_x_bach_float64_x_x_x_x_", 3682264441, 1068533068, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082814464, "_x_x_x_x_bach_float64_x_x_x_x_", 2567084773, 1067926941, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082816512, "_x_x_x_x_bach_float64_x_x_x_x_", 1272684709, 1068344090, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082818560, "_x_x_x_x_bach_float64_x_x_x_x_", 1272684709, 1068344090, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082820608, "_x_x_x_x_bach_float64_x_x_x_x_", 607480174, 1068806638, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082822656, "_x_x_x_x_bach_float64_x_x_x_x_", 607480174, 1068806638, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082824704, "_x_x_x_x_bach_float64_x_x_x_x_", 1985718000, 1068531592, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082826752, "_x_x_x_x_bach_float64_x_x_x_x_", 301815942, 1068695942, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082828800, "_x_x_x_x_bach_float64_x_x_x_x_", 301815942, 1068695942, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082830848, "_x_x_x_x_bach_float64_x_x_x_x_", 783127157, 1068762279, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082832896, "_x_x_x_x_bach_float64_x_x_x_x_", 783127157, 1068762279, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082834944, "_x_x_x_x_bach_float64_x_x_x_x_", 3825475831, 1068542027, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082836992, "_x_x_x_x_bach_float64_x_x_x_x_", 3448893098, 1068561237, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082839040, "_x_x_x_x_bach_float64_x_x_x_x_", 2139374750, 1068643345, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082841088, "_x_x_x_x_bach_float64_x_x_x_x_", 3210024197, 1068825042, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082843136, "_x_x_x_x_bach_float64_x_x_x_x_", 3210024197, 1068825042, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082845184, "_x_x_x_x_bach_float64_x_x_x_x_", 4263356337, 1068870810, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082847232, "_x_x_x_x_bach_float64_x_x_x_x_", 4263356337, 1068870810, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082849280, "_x_x_x_x_bach_float64_x_x_x_x_", 2996718942, 1068740250, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082851328, "_x_x_x_x_bach_float64_x_x_x_x_", 2132227924, 1068766171, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082853376, "_x_x_x_x_bach_float64_x_x_x_x_", 4139386401, 1068692485, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082855424, "_x_x_x_x_bach_float64_x_x_x_x_", 4139386401, 1068692485, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082857472, "_x_x_x_x_bach_float64_x_x_x_x_", 1121226982, 1068819657, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082859520, "_x_x_x_x_bach_float64_x_x_x_x_", 2405731442, 1068512080, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082861568, "_x_x_x_x_bach_float64_x_x_x_x_", 1192970116, 1068484012, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082863616, "_x_x_x_x_bach_float64_x_x_x_x_", 2014030424, 1068720537, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082865664, "_x_x_x_x_bach_float64_x_x_x_x_", 2014030424, 1068720537, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082867712, "_x_x_x_x_bach_float64_x_x_x_x_", 162727721, 1068706864, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082869760, "_x_x_x_x_bach_float64_x_x_x_x_", 468391953, 1068555416, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082871808, "_x_x_x_x_bach_float64_x_x_x_x_", 468391953, 1068555416, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082873856, "_x_x_x_x_bach_float64_x_x_x_x_", 4237792691, 1068695119, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082875904, "_x_x_x_x_bach_float64_x_x_x_x_", 3212498098, 1068732113, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082877952, "_x_x_x_x_bach_float64_x_x_x_x_", 3093201087, 1068786035, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082880000, "_x_x_x_x_bach_float64_x_x_x_x_", 997806802, 1068853698, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082882048, "_x_x_x_x_bach_float64_x_x_x_x_", 997806802, 1068853698, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082884096, "_x_x_x_x_bach_float64_x_x_x_x_", 1124800395, 1068627172, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082886144, "_x_x_x_x_bach_float64_x_x_x_x_", 4006070616, 1068573954, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082888192, "_x_x_x_x_bach_float64_x_x_x_x_", 3462362116, 1068521324, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082890240, "_x_x_x_x_bach_float64_x_x_x_x_", 2808152697, 1068512600, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082892288, "_x_x_x_x_bach_float64_x_x_x_x_", 2808152697, 1068512600, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082894336, "_x_x_x_x_bach_float64_x_x_x_x_", 2786437343, 1068512751, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082896384, "_x_x_x_x_bach_float64_x_x_x_x_", 4128941040, 1068589691, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082898432, "_x_x_x_x_bach_float64_x_x_x_x_", 4128941040, 1068589691, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082900480, "_x_x_x_x_bach_float64_x_x_x_x_", 1330409070, 1068622424, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082902528, "_x_x_x_x_bach_float64_x_x_x_x_", 1330409070, 1068622424, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082904576, "_x_x_x_x_bach_float64_x_x_x_x_", 3847466063, 1068910203, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082906624, "_x_x_x_x_bach_float64_x_x_x_x_", 1417545366, 1068990147, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082908672, "_x_x_x_x_bach_float64_x_x_x_x_", 1417545366, 1068990147, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082910720, "_x_x_x_x_bach_float64_x_x_x_x_", 1151188674, 1068859268, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082912768, "_x_x_x_x_bach_float64_x_x_x_x_", 1151188674, 1068859268, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082914816, "_x_x_x_x_bach_float64_x_x_x_x_", 1080270174, 1068727030, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082916864, "_x_x_x_x_bach_float64_x_x_x_x_", 2451636052, 1068418849, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082918912, "_x_x_x_x_bach_float64_x_x_x_x_", 2451636052, 1068418849, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082920960, "_x_x_x_x_bach_float64_x_x_x_x_", 3167143244, 1068513422, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082923008, "_x_x_x_x_bach_float64_x_x_x_x_", 3167143244, 1068513422, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082925056, "_x_x_x_x_bach_float64_x_x_x_x_", 3269397825, 1068429754, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082927104, "_x_x_x_x_bach_float64_x_x_x_x_", 1795502488, 1068453276, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082929152, "_x_x_x_x_bach_float64_x_x_x_x_", 1795502488, 1068453276, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082931200, "_x_x_x_x_bach_float64_x_x_x_x_", 335351046, 1068543068, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082933248, "_x_x_x_x_bach_float64_x_x_x_x_", 2437617279, 1068508540, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082935296, "_x_x_x_x_bach_float64_x_x_x_x_", 2437617279, 1068508540, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082937344, "_x_x_x_x_bach_float64_x_x_x_x_", 2437617279, 1068508540, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082939392, "_x_x_x_x_bach_float64_x_x_x_x_", 2437617279, 1068508540, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082941440, "_x_x_x_x_bach_float64_x_x_x_x_", 677574041, 1068620327, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082943488, "_x_x_x_x_bach_float64_x_x_x_x_", 981589006, 1068618213, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082945536, "_x_x_x_x_bach_float64_x_x_x_x_", 981589006, 1068618213, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082947584, "_x_x_x_x_bach_float64_x_x_x_x_", 1576149918, 1068653898, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082949632, "_x_x_x_x_bach_float64_x_x_x_x_", 1576149918, 1068653898, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082951680, "_x_x_x_x_bach_float64_x_x_x_x_", 3556095482, 1068815999, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082953728, "_x_x_x_x_bach_float64_x_x_x_x_", 2595946953, 1068852540, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082955776, "_x_x_x_x_bach_float64_x_x_x_x_", 2595946953, 1068852540, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082957824, "_x_x_x_x_bach_float64_x_x_x_x_", 2446688250, 1068866851, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082959872, "_x_x_x_x_bach_float64_x_x_x_x_", 2446688250, 1068866851, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082961920, "_x_x_x_x_bach_float64_x_x_x_x_", 3293312203, 1068754779, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082963968, "_x_x_x_x_bach_float64_x_x_x_x_", 1730081546, 1068609690, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082966016, "_x_x_x_x_bach_float64_x_x_x_x_", 3316127069, 1068655072, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082968064, "_x_x_x_x_bach_float64_x_x_x_x_", 585764820, 1068544645, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082970112, "_x_x_x_x_bach_float64_x_x_x_x_", 585764820, 1068544645, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082972160, "_x_x_x_x_bach_float64_x_x_x_x_", 891154174, 1068549158, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082974208, "_x_x_x_x_bach_float64_x_x_x_x_", 2204795692, 1068486931, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082976256, "_x_x_x_x_bach_float64_x_x_x_x_", 2204795692, 1068486931, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082978304, "_x_x_x_x_bach_float64_x_x_x_x_", 1116554058, 1068325266, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082980352, "_x_x_x_x_bach_float64_x_x_x_x_", 1116554058, 1068325266, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082982400, "_x_x_x_x_bach_float64_x_x_x_x_", 566798244, 1068295906, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082984448, "_x_x_x_x_bach_float64_x_x_x_x_", 138538465, 1068537800, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082986496, "_x_x_x_x_bach_float64_x_x_x_x_", 138538465, 1068537800, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082988544, "_x_x_x_x_bach_float64_x_x_x_x_", 711384023, 1068573636, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082990592, "_x_x_x_x_bach_float64_x_x_x_x_", 1092089924, 1068574307, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082992640, "_x_x_x_x_bach_float64_x_x_x_x_", 672076482, 1068593819, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082994688, "_x_x_x_x_bach_float64_x_x_x_x_", 182793808, 1068593903, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082996736, "_x_x_x_x_bach_float64_x_x_x_x_", 182793808, 1068593903, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082998784, "_x_x_x_x_bach_float64_x_x_x_x_", 1952732651, 1068634688, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083000832, "_x_x_x_x_bach_float64_x_x_x_x_", 2413428023, 1068601620, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083002880, "_x_x_x_x_bach_float64_x_x_x_x_", 2413428023, 1068601620, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083004928, "_x_x_x_x_bach_float64_x_x_x_x_", 3035476726, 1068507701, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083006976, "_x_x_x_x_bach_float64_x_x_x_x_", 3035476726, 1068507701, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083009024, "_x_x_x_x_bach_float64_x_x_x_x_", 717431337, 1068550366, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083011072, "_x_x_x_x_bach_float64_x_x_x_x_", 717431337, 1068550366, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083013120, "_x_x_x_x_bach_float64_x_x_x_x_", 717431337, 1068550366, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083015168, "_x_x_x_x_bach_float64_x_x_x_x_", 3047296476, 1068617122, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083017216, "_x_x_x_x_bach_float64_x_x_x_x_", 3047296476, 1068617122, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083019264, "_x_x_x_x_bach_float64_x_x_x_x_", 1924695104, 1068551926, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083021312, "_x_x_x_x_bach_float64_x_x_x_x_", 2333438552, 1068635359, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083023360, "_x_x_x_x_bach_float64_x_x_x_x_", 2333438552, 1068635359, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083025408, "_x_x_x_x_bach_float64_x_x_x_x_", 926613424, 1068615277, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083027456, "_x_x_x_x_bach_float64_x_x_x_x_", 143486267, 1068614086, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083029504, "_x_x_x_x_bach_float64_x_x_x_x_", 1064327256, 1068597728, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083031552, "_x_x_x_x_bach_float64_x_x_x_x_", 1060478965, 1068684030, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083033600, "_x_x_x_x_bach_float64_x_x_x_x_", 1060478965, 1068684030, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083035648, "_x_x_x_x_bach_float64_x_x_x_x_", 884557105, 1068622206, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083037696, "_x_x_x_x_bach_float64_x_x_x_x_", 2495616517, 1068630913, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083039744, "_x_x_x_x_bach_float64_x_x_x_x_", 2495616517, 1068630913, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083041792, "_x_x_x_x_bach_float64_x_x_x_x_", 4206181732, 1068542698, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083043840, "_x_x_x_x_bach_float64_x_x_x_x_", 4206181732, 1068542698, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083045888, "_x_x_x_x_bach_float64_x_x_x_x_", 3697107848, 1068499782, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083047936, "_x_x_x_x_bach_float64_x_x_x_x_", 2323817825, 1068588970, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083049984, "_x_x_x_x_bach_float64_x_x_x_x_", 2323817825, 1068588970, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083052032, "_x_x_x_x_bach_float64_x_x_x_x_", 2323817825, 1068588970, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083054080, "_x_x_x_x_bach_float64_x_x_x_x_", 412866616, 1068602258, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083056128, "_x_x_x_x_bach_float64_x_x_x_x_", 412866616, 1068602258, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083058176, "_x_x_x_x_bach_float64_x_x_x_x_", 2274064924, 1068506359, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083060224, "_x_x_x_x_bach_float64_x_x_x_x_", 2274064924, 1068506359, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083062272, "_x_x_x_x_bach_float64_x_x_x_x_", 2811726110, 1068582259, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083064320, "_x_x_x_x_bach_float64_x_x_x_x_", 3066537930, 1068709900, "]" ],
					"reg_data_count" : [ 2 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"versionnumber" : 80300
					}
,
					"text" : "bach.reg @embed 1"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-13",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 46.0, 15.20000022649765, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Menlo Regular",
					"fontsize" : 14.0,
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 883.500000000000227, 476.80936861038208, 19.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 104.650001108646393, 0.916671752929688, 19.0, 23.0 ],
					"text" : "S",
					"textcolor" : [ 1.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"clickedimage" : 1,
					"id" : "obj-12",
					"maxclass" : "pictctrl",
					"name" : "erase.png",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 869.500000000000114, 479.42789888381958, 37.0, 19.763053894042969 ],
					"presentation" : 1,
					"presentation_rect" : [ 91.900001108646279, 3.535202026367188, 37.0, 19.763053894042969 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Menlo Regular",
					"fontsize" : 14.0,
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 167.000000000000114, 471.199995160102844, 20.0, 23.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 145.499984681606293, 0.666671752929688, 19.0, 23.0 ],
					"text" : "M",
					"textcolor" : [ 0.082, 0.553, 1.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 869.500000000000114, 503.609375, 35.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1124.875, 108.500001684623726, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1107.375, 402.976190567016602, 100.0, 22.0 ],
					"text" : "moz.ezbpf2slot"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1124.875, 139.5, 117.0, 22.0 ],
					"reg_data_0000000000" : [ "_x_x_x_x_bach_float64_x_x_x_x_", 2072854296, 1067850739, "_x_x_x_x_bach_float64_x_x_x_x_", 2072854296, 1067850739, "_x_x_x_x_bach_float64_x_x_x_x_", 2019253104, 1068903006, "_x_x_x_x_bach_float64_x_x_x_x_", 2019253104, 1068903006, "_x_x_x_x_bach_float64_x_x_x_x_", 710834267, 1066788406, "_x_x_x_x_bach_float64_x_x_x_x_", 3063789151, 1066599494, "_x_x_x_x_bach_float64_x_x_x_x_", 3063789151, 1066599494, "_x_x_x_x_bach_float64_x_x_x_x_", 1142117703, 1069025245, "_x_x_x_x_bach_float64_x_x_x_x_", 1142117703, 1069025245, "_x_x_x_x_bach_float64_x_x_x_x_", 502476814, 1069401340, "_x_x_x_x_bach_float64_x_x_x_x_", 1005778262, 1068787277, "_x_x_x_x_bach_float64_x_x_x_x_", 1005778262, 1068787277, "_x_x_x_x_bach_float64_x_x_x_x_", 434307093, 1068758068, "_x_x_x_x_bach_float64_x_x_x_x_", 434307093, 1068758068, "_x_x_x_x_bach_float64_x_x_x_x_", 3583308395, 1068842356, "_x_x_x_x_bach_float64_x_x_x_x_", 357066401, 1069067205, "_x_x_x_x_bach_float64_x_x_x_x_", 819685919, 1068990986, "_x_x_x_x_bach_float64_x_x_x_x_", 4075064970, 1068749343, "_x_x_x_x_bach_float64_x_x_x_x_", 4075064970, 1068749343, "_x_x_x_x_bach_float64_x_x_x_x_", 1595391372, 1069008820, "_x_x_x_x_bach_float64_x_x_x_x_", 1595391372, 1069008820, "_x_x_x_x_bach_float64_x_x_x_x_", 1125625029, 1069601081, "_x_x_x_x_bach_float64_x_x_x_x_", 2539047226, 1069417043, "_x_x_x_x_bach_float64_x_x_x_x_", 3688861511, 1069246452, "_x_x_x_x_bach_float64_x_x_x_x_", 3688861511, 1069246452, "_x_x_x_x_bach_float64_x_x_x_x_", 3051694523, 1069005330, "_x_x_x_x_bach_float64_x_x_x_x_", 1222382052, 1068835545, "_x_x_x_x_bach_float64_x_x_x_x_", 2659993505, 1068689499, "_x_x_x_x_bach_float64_x_x_x_x_", 1374389535, 1068572344, "_x_x_x_x_bach_float64_x_x_x_x_", 1374389535, 1068572344, "_x_x_x_x_bach_float64_x_x_x_x_", 727601820, 1068809121, "_x_x_x_x_bach_float64_x_x_x_x_", 2404357052, 1069029741, "_x_x_x_x_bach_float64_x_x_x_x_", 2404357052, 1069029741, "_x_x_x_x_bach_float64_x_x_x_x_", 2973354319, 1069414023, "_x_x_x_x_bach_float64_x_x_x_x_", 280100587, 1069613597, "_x_x_x_x_bach_float64_x_x_x_x_", 2966207494, 1069798993, "_x_x_x_x_bach_float64_x_x_x_x_", 2358177564, 1069803221, "_x_x_x_x_bach_float64_x_x_x_x_", 2358177564, 1069803221, "_x_x_x_x_bach_float64_x_x_x_x_", 3486276494, 1069894925, "_x_x_x_x_bach_float64_x_x_x_x_", 214954523, 1070138338, "_x_x_x_x_bach_float64_x_x_x_x_", 214954523, 1070138338, "_x_x_x_x_bach_float64_x_x_x_x_", 3790291459, 1070154955, "_x_x_x_x_bach_float64_x_x_x_x_", 3790291459, 1070154955, "_x_x_x_x_bach_float64_x_x_x_x_", 2965932616, 1070348170, "_x_x_x_x_bach_float64_x_x_x_x_", 1621779651, 1070617172, "_x_x_x_x_bach_float64_x_x_x_x_", 1621779651, 1070617172, "_x_x_x_x_bach_float64_x_x_x_x_", 500552669, 1070951819, "_x_x_x_x_bach_float64_x_x_x_x_", 500552669, 1070951819, "_x_x_x_x_bach_float64_x_x_x_x_", 2577530133, 1071634215, "_x_x_x_x_bach_float64_x_x_x_x_", 2148170843, 1071811825, "_x_x_x_x_bach_float64_x_x_x_x_", 2148170843, 1071811825, "_x_x_x_x_bach_float64_x_x_x_x_", 3587981319, 1071925419, "_x_x_x_x_bach_float64_x_x_x_x_", 3587981319, 1071925419, "_x_x_x_x_bach_float64_x_x_x_x_", 3703979796, 1071940789, "_x_x_x_x_bach_float64_x_x_x_x_", 702862808, 1071737259, "_x_x_x_x_bach_float64_x_x_x_x_", 4092382279, 1071506712, "_x_x_x_x_bach_float64_x_x_x_x_", 2809801965, 1070853634, "_x_x_x_x_bach_float64_x_x_x_x_", 2809801965, 1070853634, "_x_x_x_x_bach_float64_x_x_x_x_", 3175114703, 1070609689, "_x_x_x_x_bach_float64_x_x_x_x_", 2501114075, 1070099213, "_x_x_x_x_bach_float64_x_x_x_x_", 2501114075, 1070099213, "_x_x_x_x_bach_float64_x_x_x_x_", 4046202790, 1069789824, "_x_x_x_x_bach_float64_x_x_x_x_", 2532175279, 1069777124, "_x_x_x_x_bach_float64_x_x_x_x_", 2061309424, 1069682509, "_x_x_x_x_bach_float64_x_x_x_x_", 3103921325, 1069257156, "_x_x_x_x_bach_float64_x_x_x_x_", 3103921325, 1069257156, "_x_x_x_x_bach_float64_x_x_x_x_", 800444465, 1068636064, "_x_x_x_x_bach_float64_x_x_x_x_", 2868076081, 1068853966, "_x_x_x_x_bach_float64_x_x_x_x_", 1819141988, 1069196406, "_x_x_x_x_bach_float64_x_x_x_x_", 4161651511, 1069166844, "_x_x_x_x_bach_float64_x_x_x_x_", 4161651511, 1069166844, "_x_x_x_x_bach_float64_x_x_x_x_", 1417820244, 1068572042, "_x_x_x_x_bach_float64_x_x_x_x_", 449425378, 1067782389, "_x_x_x_x_bach_float64_x_x_x_x_", 449425378, 1067782389, "_x_x_x_x_bach_float64_x_x_x_x_", 980489494, 1068717769, "_x_x_x_x_bach_float64_x_x_x_x_", 980489494, 1068717769, "_x_x_x_x_bach_float64_x_x_x_x_", 1138819168, 1068275337, "_x_x_x_x_bach_float64_x_x_x_x_", 3554446215, 1067654613, "_x_x_x_x_bach_float64_x_x_x_x_", 3554446215, 1067654613, "_x_x_x_x_bach_float64_x_x_x_x_", 384004436, 1068200947, "_x_x_x_x_bach_float64_x_x_x_x_", 3876328244, 1068525082, "_x_x_x_x_bach_float64_x_x_x_x_", 1675930599, 1068663159, "_x_x_x_x_bach_float64_x_x_x_x_", 3181162017, 1068685875, "_x_x_x_x_bach_float64_x_x_x_x_", 3181162017, 1068685875, "_x_x_x_x_bach_float64_x_x_x_x_", 3405187511, 1068455356, "_x_x_x_x_bach_float64_x_x_x_x_", 4029984994, 1068374691, "_x_x_x_x_bach_float64_x_x_x_x_", 4029984994, 1068374691, "_x_x_x_x_bach_float64_x_x_x_x_", 2840038535, 1068509060, "_x_x_x_x_bach_float64_x_x_x_x_", 2840038535, 1068509060, "_x_x_x_x_bach_float64_x_x_x_x_", 1275433488, 1068357344, "_x_x_x_x_bach_float64_x_x_x_x_", 1275433488, 1068357344, "_x_x_x_x_bach_float64_x_x_x_x_", 1783407860, 1068499816, "_x_x_x_x_bach_float64_x_x_x_x_", 3835921191, 1068382677, "_x_x_x_x_bach_float64_x_x_x_x_", 3835921191, 1068382677, "_x_x_x_x_bach_float64_x_x_x_x_", 1497534837, 1068169976, "_x_x_x_x_bach_float64_x_x_x_x_", 2786437343, 1067726319, "_x_x_x_x_bach_float64_x_x_x_x_", 2786437343, 1067726319, "_x_x_x_x_bach_float64_x_x_x_x_", 2786437343, 1067726319, "_x_x_x_x_bach_float64_x_x_x_x_", 3026405755, 1067887246, "_x_x_x_x_bach_float64_x_x_x_x_", 3026405755, 1067887246, "_x_x_x_x_bach_float64_x_x_x_x_", 257560599, 1068115551, "_x_x_x_x_bach_float64_x_x_x_x_", 879609302, 1068021632, "_x_x_x_x_bach_float64_x_x_x_x_", 879609302, 1068021632, "_x_x_x_x_bach_float64_x_x_x_x_", 1419469511, 1067898420, "_x_x_x_x_bach_float64_x_x_x_x_", 1419469511, 1067898420, "_x_x_x_x_bach_float64_x_x_x_x_", 1335631750, 1068280605, "_x_x_x_x_bach_float64_x_x_x_x_", 3054993058, 1068444518, "_x_x_x_x_bach_float64_x_x_x_x_", 3054993058, 1068444518, "_x_x_x_x_bach_float64_x_x_x_x_", 3579734982, 1068510553, "_x_x_x_x_bach_float64_x_x_x_x_", 3579734982, 1068510553, "_x_x_x_x_bach_float64_x_x_x_x_", 1777360546, 1068523086, "_x_x_x_x_bach_float64_x_x_x_x_", 2813925133, 1068645291, "_x_x_x_x_bach_float64_x_x_x_x_", 2529701378, 1068690405, "_x_x_x_x_bach_float64_x_x_x_x_", 2017054081, 1068053542, "_x_x_x_x_bach_float64_x_x_x_x_", 2017054081, 1068053542, "_x_x_x_x_bach_float64_x_x_x_x_", 3932953093, 1067854396, "_x_x_x_x_bach_float64_x_x_x_x_", 3630862273, 1067813359, "_x_x_x_x_bach_float64_x_x_x_x_", 3630862273, 1067813359, "_x_x_x_x_bach_float64_x_x_x_x_", 1717712040, 1068025759, "_x_x_x_x_bach_float64_x_x_x_x_", 117372866, 1067963885, "_x_x_x_x_bach_float64_x_x_x_x_", 4185565889, 1067656861, "_x_x_x_x_bach_float64_x_x_x_x_", 506325105, 1067480030, "_x_x_x_x_bach_float64_x_x_x_x_", 506325105, 1067480030, "_x_x_x_x_bach_float64_x_x_x_x_", 2263894442, 1068509748, "_x_x_x_x_bach_float64_x_x_x_x_", 1896382680, 1068362981, "_x_x_x_x_bach_float64_x_x_x_x_", 828207134, 1068350499, "_x_x_x_x_bach_float64_x_x_x_x_", 4044278645, 1068129039, "_x_x_x_x_bach_float64_x_x_x_x_", 4044278645, 1068129039, "_x_x_x_x_bach_float64_x_x_x_x_", 3853513377, 1068624789, "_x_x_x_x_bach_float64_x_x_x_x_", 4134713476, 1068722382, "_x_x_x_x_bach_float64_x_x_x_x_", 4134713476, 1068722382, "_x_x_x_x_bach_float64_x_x_x_x_", 3550597924, 1068527347, "_x_x_x_x_bach_float64_x_x_x_x_", 3550597924, 1068527347, "_x_x_x_x_bach_float64_x_x_x_x_", 4214153191, 1068738421, "_x_x_x_x_bach_float64_x_x_x_x_", 1843881000, 1068791404, "_x_x_x_x_bach_float64_x_x_x_x_", 1843881000, 1068791404, "_x_x_x_x_bach_float64_x_x_x_x_", 1592367715, 1068889383, "_x_x_x_x_bach_float64_x_x_x_x_", 1592367715, 1068889383, "_x_x_x_x_bach_float64_x_x_x_x_", 1141018192, 1068862657, "_x_x_x_x_bach_float64_x_x_x_x_", 299342041, 1069051015, "_x_x_x_x_bach_float64_x_x_x_x_", 299342041, 1069051015, "_x_x_x_x_bach_float64_x_x_x_x_", 3202052738, 1068891463, "_x_x_x_x_bach_float64_x_x_x_x_", 509898517, 1068860409, "_x_x_x_x_bach_float64_x_x_x_x_", 509898517, 1068860409, "_x_x_x_x_bach_float64_x_x_x_x_", 101979703, 1068833381, "_x_x_x_x_bach_float64_x_x_x_x_", 101979703, 1068833381, "_x_x_x_x_bach_float64_x_x_x_x_", 2814749767, 1068701696, "_x_x_x_x_bach_float64_x_x_x_x_", 2951364087, 1068521559, "_x_x_x_x_bach_float64_x_x_x_x_", 2951364087, 1068521559, "_x_x_x_x_bach_float64_x_x_x_x_", 2533824546, 1068710286, "_x_x_x_x_bach_float64_x_x_x_x_", 2533824546, 1068710286, "_x_x_x_x_bach_float64_x_x_x_x_", 1305120302, 1068815060, "_x_x_x_x_bach_float64_x_x_x_x_", 799894709, 1068685842, "_x_x_x_x_bach_float64_x_x_x_x_", 591537256, 1068677336, "_x_x_x_x_bach_float64_x_x_x_x_", 3384296790, 1068774056, "_x_x_x_x_bach_float64_x_x_x_x_", 1874392447, 1068781237, "_x_x_x_x_bach_float64_x_x_x_x_", 2806228552, 1068817895, "_x_x_x_x_bach_float64_x_x_x_x_", 539310453, 1068687654, "_x_x_x_x_bach_float64_x_x_x_x_", 150907971, 1068597443, "_x_x_x_x_bach_float64_x_x_x_x_", 365312738, 1068582679, "_x_x_x_x_bach_float64_x_x_x_x_", 1253993011, 1068725822, "_x_x_x_x_bach_float64_x_x_x_x_", 3011012593, 1068756742, "_x_x_x_x_bach_float64_x_x_x_x_", 2678135447, 1068881833, "_x_x_x_x_bach_float64_x_x_x_x_", 2678135447, 1068881833, "_x_x_x_x_bach_float64_x_x_x_x_", 1410123663, 1068744646, "_x_x_x_x_bach_float64_x_x_x_x_", 2195724721, 1068652908, "_x_x_x_x_bach_float64_x_x_x_x_", 1506880686, 1068634470, "_x_x_x_x_bach_float64_x_x_x_x_", 3354609976, 1068578484, "_x_x_x_x_bach_float64_x_x_x_x_", 3354609976, 1068578484, "_x_x_x_x_bach_float64_x_x_x_x_", 120396523, 1068345466, "_x_x_x_x_bach_float64_x_x_x_x_", 2426072407, 1068243158, "_x_x_x_x_bach_float64_x_x_x_x_", 3628113494, 1068324393, "_x_x_x_x_bach_float64_x_x_x_x_", 171798692, 1068803031, "_x_x_x_x_bach_float64_x_x_x_x_", 171798692, 1068803031, "_x_x_x_x_bach_float64_x_x_x_x_", 2669064476, 1068785666, "_x_x_x_x_bach_float64_x_x_x_x_", 3243559302, 1068672168, "_x_x_x_x_bach_float64_x_x_x_x_", 3243559302, 1068672168, "_x_x_x_x_bach_float64_x_x_x_x_", 1616556971, 1068534159, "_x_x_x_x_bach_float64_x_x_x_x_", 1616556971, 1068534159, "_x_x_x_x_bach_float64_x_x_x_x_", 496154622, 1068531995, "_x_x_x_x_bach_float64_x_x_x_x_", 4147082982, 1068519881, "_x_x_x_x_bach_float64_x_x_x_x_", 4147082982, 1068519881, "_x_x_x_x_bach_float64_x_x_x_x_", 811714459, 1068533119, "_x_x_x_x_bach_float64_x_x_x_x_", 3698207360, 1068662370, "_x_x_x_x_bach_float64_x_x_x_x_", 3698207360, 1068662370, "_x_x_x_x_bach_float64_x_x_x_x_", 2979126755, 1068498138, "_x_x_x_x_bach_float64_x_x_x_x_", 2979126755, 1068498138, "_x_x_x_x_bach_float64_x_x_x_x_", 232271831, 1068570331, "_x_x_x_x_bach_float64_x_x_x_x_", 102804337, 1068627642, "_x_x_x_x_bach_float64_x_x_x_x_", 102804337, 1068627642, "_x_x_x_x_bach_float64_x_x_x_x_", 1692698151, 1068586722, "_x_x_x_x_bach_float64_x_x_x_x_", 1692698151, 1068586722, "_x_x_x_x_bach_float64_x_x_x_x_", 3421680186, 1068534880, "_x_x_x_x_bach_float64_x_x_x_x_", 2089346971, 1068454551, "_x_x_x_x_bach_float64_x_x_x_x_", 2089346971, 1068454551, "_x_x_x_x_bach_float64_x_x_x_x_", 2068731128, 1068617290, "_x_x_x_x_bach_float64_x_x_x_x_", 2068731128, 1068617290, "_x_x_x_x_bach_float64_x_x_x_x_", 1645694029, 1068779509, "_x_x_x_x_bach_float64_x_x_x_x_", 399947355, 1068854537, "_x_x_x_x_bach_float64_x_x_x_x_", 399947355, 1068854537, "_x_x_x_x_bach_float64_x_x_x_x_", 4198760029, 1069083629, "_x_x_x_x_bach_float64_x_x_x_x_", 4198760029, 1069083629, "_x_x_x_x_bach_float64_x_x_x_x_", 1902429994, 1069388287, "_x_x_x_x_bach_float64_x_x_x_x_", 1180050855, 1069522723, "_x_x_x_x_bach_float64_x_x_x_x_", 1180050855, 1069522723, "_x_x_x_x_bach_float64_x_x_x_x_", 993408756, 1069776210, "_x_x_x_x_bach_float64_x_x_x_x_", 3011837226, 1069992795, "_x_x_x_x_bach_float64_x_x_x_x_", 3011837226, 1069992795, "_x_x_x_x_bach_float64_x_x_x_x_", 3310354633, 1069964173, "_x_x_x_x_bach_float64_x_x_x_x_", 3310354633, 1069964173, "_x_x_x_x_bach_float64_x_x_x_x_", 2125905732, 1070845946, "_x_x_x_x_bach_float64_x_x_x_x_", 58823872, 1071233626, "_x_x_x_x_bach_float64_x_x_x_x_", 1427990727, 1071386701, "_x_x_x_x_bach_float64_x_x_x_x_", 2647898878, 1071783463, "_x_x_x_x_bach_float64_x_x_x_x_", 2647898878, 1071783463, "_x_x_x_x_bach_float64_x_x_x_x_", 1558007977, 1072066044, "_x_x_x_x_bach_float64_x_x_x_x_", 714407680, 1072297553, "_x_x_x_x_bach_float64_x_x_x_x_", 108027017, 1072447359, "_x_x_x_x_bach_float64_x_x_x_x_", 3415907750, 1072662029, "_x_x_x_x_bach_float64_x_x_x_x_", 3415907750, 1072662029, "_x_x_x_x_bach_float64_x_x_x_x_", 2837289755, 1072690110, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "_x_x_x_x_bach_float64_x_x_x_x_", 2802105383, 1072336958, "_x_x_x_x_bach_float64_x_x_x_x_", 2964558226, 1072078247, "_x_x_x_x_bach_float64_x_x_x_x_", 114898965, 1072087278, "_x_x_x_x_bach_float64_x_x_x_x_", 75316547, 1072099582, "_x_x_x_x_bach_float64_x_x_x_x_", 75316547, 1072099582, "_x_x_x_x_bach_float64_x_x_x_x_", 2163564006, 1071990905, "_x_x_x_x_bach_float64_x_x_x_x_", 2514308215, 1071919197, "_x_x_x_x_bach_float64_x_x_x_x_", 317209105, 1071824142, "_x_x_x_x_bach_float64_x_x_x_x_", 1474445093, 1071571372, "_x_x_x_x_bach_float64_x_x_x_x_", 1474445093, 1071571372, "_x_x_x_x_bach_float64_x_x_x_x_", 1882363907, 1071270720, "_x_x_x_x_bach_float64_x_x_x_x_", 2660268383, 1071417122, "_x_x_x_x_bach_float64_x_x_x_x_", 2660268383, 1071417122, "_x_x_x_x_bach_float64_x_x_x_x_", 1433763163, 1072174752, "_x_x_x_x_bach_float64_x_x_x_x_", 1433763163, 1072174752, "_x_x_x_x_bach_float64_x_x_x_x_", 1224581075, 1072011537, "_x_x_x_x_bach_float64_x_x_x_x_", 2500839197, 1071762502, "_x_x_x_x_bach_float64_x_x_x_x_", 2500839197, 1071762502, "_x_x_x_x_bach_float64_x_x_x_x_", 614077244, 1071748246, "_x_x_x_x_bach_float64_x_x_x_x_", 769383262, 1071645129, "_x_x_x_x_bach_float64_x_x_x_x_", 769383262, 1071645129, "_x_x_x_x_bach_float64_x_x_x_x_", 1358171738, 1071154907, "_x_x_x_x_bach_float64_x_x_x_x_", 1358171738, 1071154907, "_x_x_x_x_bach_float64_x_x_x_x_", 1515127023, 1070771384, "_x_x_x_x_bach_float64_x_x_x_x_", 979389982, 1070390189, "_x_x_x_x_bach_float64_x_x_x_x_", 979389982, 1070390189, "_x_x_x_x_bach_float64_x_x_x_x_", 979389982, 1070390189, "_x_x_x_x_bach_float64_x_x_x_x_", 2695177878, 1069829083, "_x_x_x_x_bach_float64_x_x_x_x_", 2695177878, 1069829083, "_x_x_x_x_bach_float64_x_x_x_x_", 2186653750, 1070129605, "_x_x_x_x_bach_float64_x_x_x_x_", 179220395, 1070686932, "_x_x_x_x_bach_float64_x_x_x_x_", 179220395, 1070686932, "_x_x_x_x_bach_float64_x_x_x_x_", 179220395, 1070686932, "_x_x_x_x_bach_float64_x_x_x_x_", 3881825802, 1070976422, "_x_x_x_x_bach_float64_x_x_x_x_", 3881825802, 1070976422, "_x_x_x_x_bach_float64_x_x_x_x_", 1888960977, 1071001064, "_x_x_x_x_bach_float64_x_x_x_x_", 1529420674, 1070918948, "_x_x_x_x_bach_float64_x_x_x_x_", 1529420674, 1070918948, "_x_x_x_x_bach_float64_x_x_x_x_", 1326560779, 1070871414, "_x_x_x_x_bach_float64_x_x_x_x_", 1326560779, 1070871414, "_x_x_x_x_bach_float64_x_x_x_x_", 726227430, 1070965182, "_x_x_x_x_bach_float64_x_x_x_x_", 2464830192, 1071746161, "_x_x_x_x_bach_float64_x_x_x_x_", 2464830192, 1071746161, "_x_x_x_x_bach_float64_x_x_x_x_", 1025569471, 1072336453, "_x_x_x_x_bach_float64_x_x_x_x_", 1025569471, 1072336453, "_x_x_x_x_bach_float64_x_x_x_x_", 1025569471, 1072336453, "_x_x_x_x_bach_float64_x_x_x_x_", 3831523145, 1072647525, "_x_x_x_x_bach_float64_x_x_x_x_", 2592373540, 1072682273, "_x_x_x_x_bach_float64_x_x_x_x_", 2592373540, 1072682273, "_x_x_x_x_bach_float64_x_x_x_x_", 1935140465, 1072357504, "_x_x_x_x_bach_float64_x_x_x_x_", 1935140465, 1072357504, "_x_x_x_x_bach_float64_x_x_x_x_", 3094025721, 1072020936, "_x_x_x_x_bach_float64_x_x_x_x_", 517045343, 1071653935, "_x_x_x_x_bach_float64_x_x_x_x_", 517045343, 1071653935, "_x_x_x_x_bach_float64_x_x_x_x_", 1229254000, 1070703688, "_x_x_x_x_bach_float64_x_x_x_x_", 2219089343, 1069027711, "_x_x_x_x_bach_float64_x_x_x_x_", 1781758593, 1067862718, "_x_x_x_x_bach_float64_x_x_x_x_", 579167750, 1068093405, "_x_x_x_x_bach_float64_x_x_x_x_", 579167750, 1068093405, "_x_x_x_x_bach_float64_x_x_x_x_", 2552516244, 1068590698, "_x_x_x_x_bach_float64_x_x_x_x_", 1955481430, 1067337222, "_x_x_x_x_bach_float64_x_x_x_x_", 1955481430, 1067337222, "_x_x_x_x_bach_float64_x_x_x_x_", 583565796, 1067695181, "_x_x_x_x_bach_float64_x_x_x_x_", 583565796, 1067695181, "_x_x_x_x_bach_float64_x_x_x_x_", 2695727633, 1068599657, "_x_x_x_x_bach_float64_x_x_x_x_", 4223224162, 1067786012, "_x_x_x_x_bach_float64_x_x_x_x_", 4223224162, 1067786012, "_x_x_x_x_bach_float64_x_x_x_x_", 1864221965, 1066687474, "_x_x_x_x_bach_float64_x_x_x_x_", 1864221965, 1066687474, "_x_x_x_x_bach_float64_x_x_x_x_", 651460639, 1068756558, "_x_x_x_x_bach_float64_x_x_x_x_", 3592104488, 1068308052, "_x_x_x_x_bach_float64_x_x_x_x_", 3592104488, 1068308052, "_x_x_x_x_bach_float64_x_x_x_x_", 3348012907, 1067865100, "_x_x_x_x_bach_float64_x_x_x_x_", 862017116, 1068565952, "_x_x_x_x_bach_float64_x_x_x_x_", 862017116, 1068565952, "_x_x_x_x_bach_float64_x_x_x_x_", 3493148441, 1068617340, "_x_x_x_x_bach_float64_x_x_x_x_", 3493148441, 1068617340, "_x_x_x_x_bach_float64_x_x_x_x_", 575319459, 1068179707, "_x_x_x_x_bach_float64_x_x_x_x_", 821060308, 1068211181, "_x_x_x_x_bach_float64_x_x_x_x_", 821060308, 1068211181, "_x_x_x_x_bach_float64_x_x_x_x_", 769658139, 1068802192, "_x_x_x_x_bach_float64_x_x_x_x_", 769658139, 1068802192, "_x_x_x_x_bach_float64_x_x_x_x_", 700663785, 1068626803, "_x_x_x_x_bach_float64_x_x_x_x_", 3490949418, 1068554308, "_x_x_x_x_bach_float64_x_x_x_x_", 3490949418, 1068554308, "_x_x_x_x_bach_float64_x_x_x_x_", 4293867784, 1068598499, "_x_x_x_x_bach_float64_x_x_x_x_", 4293867784, 1068598499, "_x_x_x_x_bach_float64_x_x_x_x_", 2109687936, 1068447773, "_x_x_x_x_bach_float64_x_x_x_x_", 2048665040, 1068468107, "_x_x_x_x_bach_float64_x_x_x_x_", 213580134, 1068427775, "_x_x_x_x_bach_float64_x_x_x_x_", 782577401, 1068025625, "_x_x_x_x_bach_float64_x_x_x_x_", 782577401, 1068025625, "_x_x_x_x_bach_float64_x_x_x_x_", 1587145035, 1068182626, "_x_x_x_x_bach_float64_x_x_x_x_", 4082761552, 1068576739, "_x_x_x_x_bach_float64_x_x_x_x_", 2884843633, 1068515385, "_x_x_x_x_bach_float64_x_x_x_x_", 2144047674, 1068351304, "_x_x_x_x_bach_float64_x_x_x_x_", 2716068599, 1068592879, "_x_x_x_x_bach_float64_x_x_x_x_", 1476369238, 1068906781, "_x_x_x_x_bach_float64_x_x_x_x_", 2895838750, 1068830545, "_x_x_x_x_bach_float64_x_x_x_x_", 2895838750, 1068830545, "_x_x_x_x_bach_float64_x_x_x_x_", 2459057756, 1068402206, "_x_x_x_x_bach_float64_x_x_x_x_", 35459250, 1068565063, "_x_x_x_x_bach_float64_x_x_x_x_", 1014299477, 1068671078, "_x_x_x_x_bach_float64_x_x_x_x_", 1014299477, 1068671078, "_x_x_x_x_bach_float64_x_x_x_x_", 3590180343, 1068613347, "_x_x_x_x_bach_float64_x_x_x_x_", 752340831, 1068404119, "_x_x_x_x_bach_float64_x_x_x_x_", 2582477936, 1068630309, "_x_x_x_x_bach_float64_x_x_x_x_", 2582477936, 1068630309, "_x_x_x_x_bach_float64_x_x_x_x_", 3475831133, 1068743555, "_x_x_x_x_bach_float64_x_x_x_x_", 1260040325, 1068702552, "_x_x_x_x_bach_float64_x_x_x_x_", 1260040325, 1068702552, "_x_x_x_x_bach_float64_x_x_x_x_", 3236412476, 1068270706, "_x_x_x_x_bach_float64_x_x_x_x_", 3236412476, 1068270706, "_x_x_x_x_bach_float64_x_x_x_x_", 571746046, 1068634336, "_x_x_x_x_bach_float64_x_x_x_x_", 3141029843, 1068911797, "_x_x_x_x_bach_float64_x_x_x_x_", 3141029843, 1068911797, "_x_x_x_x_bach_float64_x_x_x_x_", 2937070436, 1068767211, "_x_x_x_x_bach_float64_x_x_x_x_", 1078346029, 1068508037, "_x_x_x_x_bach_float64_x_x_x_x_", 3383747034, 1068561690, "_x_x_x_x_bach_float64_x_x_x_x_", 3383747034, 1068561690, "_x_x_x_x_bach_float64_x_x_x_x_", 3065163540, 1068703273, "_x_x_x_x_bach_float64_x_x_x_x_", 3065163540, 1068703273, "_x_x_x_x_bach_float64_x_x_x_x_", 616276267, 1068534478, "_x_x_x_x_bach_float64_x_x_x_x_", 616276267, 1068534478, "_x_x_x_x_bach_float64_x_x_x_x_", 646237959, 1068574089, "_x_x_x_x_bach_float64_x_x_x_x_", 2761148575, 1068705387, "_x_x_x_x_bach_float64_x_x_x_x_", 2761148575, 1068705387, "_x_x_x_x_bach_float64_x_x_x_x_", 2251250058, 1068606066, "_x_x_x_x_bach_float64_x_x_x_x_", 2251250058, 1068606066, "_x_x_x_x_bach_float64_x_x_x_x_", 3081106459, 1068570431, "_x_x_x_x_bach_float64_x_x_x_x_", 633593576, 1068670407, "_x_x_x_x_bach_float64_x_x_x_x_", 633593576, 1068670407, "_x_x_x_x_bach_float64_x_x_x_x_", 3453016267, 1068581118, "_x_x_x_x_bach_float64_x_x_x_x_", 3675117616, 1068393750, "_x_x_x_x_bach_float64_x_x_x_x_", 748767419, 1068334460, "_x_x_x_x_bach_float64_x_x_x_x_", 3197104936, 1068553033, "_x_x_x_x_bach_float64_x_x_x_x_", 2540146738, 1068531055, "_x_x_x_x_bach_float64_x_x_x_x_", 2156692058, 1068517130, "_x_x_x_x_bach_float64_x_x_x_x_", 2996993819, 1068584289, "_x_x_x_x_bach_float64_x_x_x_x_", 216603791, 1068547212, "_x_x_x_x_bach_float64_x_x_x_x_", 2009632378, 1068594473, "_x_x_x_x_bach_float64_x_x_x_x_", 2009632378, 1068594473, "_x_x_x_x_bach_float64_x_x_x_x_", 1760592994, 1068599523, "_x_x_x_x_bach_float64_x_x_x_x_", 2406006319, 1068618263, "_x_x_x_x_bach_float64_x_x_x_x_", 1951358261, 1068628061, "_x_x_x_x_bach_float64_x_x_x_x_", 1451630227, 1068525351, "_x_x_x_x_bach_float64_x_x_x_x_", 1451630227, 1068525351, "_x_x_x_x_bach_float64_x_x_x_x_", 1593192349, 1068421500, "_x_x_x_x_bach_float64_x_x_x_x_", 1065426767, 1068760316, "_x_x_x_x_bach_float64_x_x_x_x_", 2406556075, 1068830629, "_x_x_x_x_bach_float64_x_x_x_x_", 578617994, 1068667471, "_x_x_x_x_bach_float64_x_x_x_x_", 578617994, 1068667471, "_x_x_x_x_bach_float64_x_x_x_x_", 1803473947, 1068648999, "_x_x_x_x_bach_float64_x_x_x_x_", 1154212331, 1068978705, "_x_x_x_x_bach_float64_x_x_x_x_", 1154212331, 1068978705, "_x_x_x_x_bach_float64_x_x_x_x_", 4271877552, 1069016755, "_x_x_x_x_bach_float64_x_x_x_x_", 1358996372, 1068917552, "_x_x_x_x_bach_float64_x_x_x_x_", 422487343, 1068910791, "_x_x_x_x_bach_float64_x_x_x_x_", 1101710651, 1068882840, "_x_x_x_x_bach_float64_x_x_x_x_", 1101710651, 1068882840, "_x_x_x_x_bach_float64_x_x_x_x_", 1272684709, 1068868378, "_x_x_x_x_bach_float64_x_x_x_x_", 1254267889, 1068832005, "_x_x_x_x_bach_float64_x_x_x_x_", 1254267889, 1068832005, "_x_x_x_x_bach_float64_x_x_x_x_", 1968675570, 1068763990, "_x_x_x_x_bach_float64_x_x_x_x_", 1968675570, 1068763990, "_x_x_x_x_bach_float64_x_x_x_x_", 953001703, 1068847373, "_x_x_x_x_bach_float64_x_x_x_x_", 2498090418, 1068800128, "_x_x_x_x_bach_float64_x_x_x_x_", 2498090418, 1068800128, "_x_x_x_x_bach_float64_x_x_x_x_", 3307880732, 1068877454, "_x_x_x_x_bach_float64_x_x_x_x_", 3307880732, 1068877454, "_x_x_x_x_bach_float64_x_x_x_x_", 4212503924, 1069149899, "_x_x_x_x_bach_float64_x_x_x_x_", 2346907569, 1069119734, "_x_x_x_x_bach_float64_x_x_x_x_", 2346907569, 1069119734, "_x_x_x_x_bach_float64_x_x_x_x_", 3030254046, 1069111664, "_x_x_x_x_bach_float64_x_x_x_x_", 3030254046, 1069111664, "_x_x_x_x_bach_float64_x_x_x_x_", 884007349, 1069196272, "_x_x_x_x_bach_float64_x_x_x_x_", 4192987593, 1069213082, "_x_x_x_x_bach_float64_x_x_x_x_", 4192987593, 1069213082, "_x_x_x_x_bach_float64_x_x_x_x_", 3467584796, 1069228081, "_x_x_x_x_bach_float64_x_x_x_x_", 3478030157, 1069330875, "_x_x_x_x_bach_float64_x_x_x_x_", 2879620953, 1069381492, "_x_x_x_x_bach_float64_x_x_x_x_", 342222994, 1069362635, "_x_x_x_x_bach_float64_x_x_x_x_", 342222994, 1069362635, "_x_x_x_x_bach_float64_x_x_x_x_", 1704517901, 1069220431, "_x_x_x_x_bach_float64_x_x_x_x_", 2940643848, 1069099014, "_x_x_x_x_bach_float64_x_x_x_x_", 3296060982, 1069030177, "_x_x_x_x_bach_float64_x_x_x_x_", 3107494738, 1069064671, "_x_x_x_x_bach_float64_x_x_x_x_", 3107494738, 1069064671, "_x_x_x_x_bach_float64_x_x_x_x_", 3749609529, 1069119935, "_x_x_x_x_bach_float64_x_x_x_x_", 3583858151, 1069054722, "_x_x_x_x_bach_float64_x_x_x_x_", 2863952912, 1069096229, "_x_x_x_x_bach_float64_x_x_x_x_", 3138006186, 1069316648, "_x_x_x_x_bach_float64_x_x_x_x_", 3138006186, 1069316648, "_x_x_x_x_bach_float64_x_x_x_x_", 3663022988, 1069619938, "_x_x_x_x_bach_float64_x_x_x_x_", 2999467721, 1069933152, "_x_x_x_x_bach_float64_x_x_x_x_", 2999467721, 1069933152, "_x_x_x_x_bach_float64_x_x_x_x_", 4104476906, 1070149452, "_x_x_x_x_bach_float64_x_x_x_x_", 4104476906, 1070149452, "_x_x_x_x_bach_float64_x_x_x_x_", 208357453, 1070473530, "_x_x_x_x_bach_float64_x_x_x_x_", 1073398227, 1070528903, "_x_x_x_x_bach_float64_x_x_x_x_", 1073398227, 1070528903, "_x_x_x_x_bach_float64_x_x_x_x_", 3823826563, 1070854049, "_x_x_x_x_bach_float64_x_x_x_x_", 3934877238, 1072136621, "_x_x_x_x_bach_float64_x_x_x_x_", 1247670820, 1072411229, "_x_x_x_x_bach_float64_x_x_x_x_", 1953832163, 1072336220, "_x_x_x_x_bach_float64_x_x_x_x_", 1953832163, 1072336220, "_x_x_x_x_bach_float64_x_x_x_x_", 2734760296, 1072602059, "_x_x_x_x_bach_float64_x_x_x_x_", 3501944534, 1072670556, "_x_x_x_x_bach_float64_x_x_x_x_", 3501944534, 1072670556, "_x_x_x_x_bach_float64_x_x_x_x_", 2241904209, 1070238724, "_x_x_x_x_bach_float64_x_x_x_x_", 2241904209, 1070238724, "_x_x_x_x_bach_float64_x_x_x_x_", 1140743314, 1069805050, "_x_x_x_x_bach_float64_x_x_x_x_", 3505243069, 1069881520, "_x_x_x_x_bach_float64_x_x_x_x_", 3505243069, 1069881520, "_x_x_x_x_bach_float64_x_x_x_x_", 4068742779, 1069583934, "_x_x_x_x_bach_float64_x_x_x_x_", 4068742779, 1069583934, "_x_x_x_x_bach_float64_x_x_x_x_", 2270491511, 1069747420, "_x_x_x_x_bach_float64_x_x_x_x_", 2773243203, 1069445279, "_x_x_x_x_bach_float64_x_x_x_x_", 2773243203, 1069445279, "_x_x_x_x_bach_float64_x_x_x_x_", 1243822529, 1068991355, "_x_x_x_x_bach_float64_x_x_x_x_", 2439266546, 1068621350, "_x_x_x_x_bach_float64_x_x_x_x_", 2439266546, 1068621350, "_x_x_x_x_bach_float64_x_x_x_x_", 3027505267, 1067787690, "_x_x_x_x_bach_float64_x_x_x_x_", 3027505267, 1067787690, "_x_x_x_x_bach_float64_x_x_x_x_", 3151475203, 1067179583, "_x_x_x_x_bach_float64_x_x_x_x_", 2764447110, 1066571711, "_x_x_x_x_bach_float64_x_x_x_x_", 2764447110, 1066571711, "_x_x_x_x_bach_float64_x_x_x_x_", 3965938441, 1066440580, "_x_x_x_x_bach_float64_x_x_x_x_", 3965938441, 1066440580, "_x_x_x_x_bach_float64_x_x_x_x_", 2806228552, 1066982887, "_x_x_x_x_bach_float64_x_x_x_x_", 1035739953, 1067516168, "_x_x_x_x_bach_float64_x_x_x_x_", 1035739953, 1067516168, "_x_x_x_x_bach_float64_x_x_x_x_", 1411498052, 1067702697, "_x_x_x_x_bach_float64_x_x_x_x_", 1411498052, 1067702697, "_x_x_x_x_bach_float64_x_x_x_x_", 8521215, 1067858457, "_x_x_x_x_bach_float64_x_x_x_x_", 3251805639, 1067925498, "_x_x_x_x_bach_float64_x_x_x_x_", 3159171785, 1068055555, "_x_x_x_x_bach_float64_x_x_x_x_", 1597590395, 1068809708, "_x_x_x_x_bach_float64_x_x_x_x_", 1597590395, 1068809708, "_x_x_x_x_bach_float64_x_x_x_x_", 1433763163, 1068963488, "_x_x_x_x_bach_float64_x_x_x_x_", 1533818721, 1068554644, "_x_x_x_x_bach_float64_x_x_x_x_", 1533818721, 1068554644, "_x_x_x_x_bach_float64_x_x_x_x_", 1392256599, 1068658495, "_x_x_x_x_bach_float64_x_x_x_x_", 3156697883, 1068672772, "_x_x_x_x_bach_float64_x_x_x_x_", 2291931988, 1068592510, "_x_x_x_x_bach_float64_x_x_x_x_", 1949434116, 1068146924, "_x_x_x_x_bach_float64_x_x_x_x_", 1949434116, 1068146924, "_x_x_x_x_bach_float64_x_x_x_x_", 1949434116, 1068146924, "_x_x_x_x_bach_float64_x_x_x_x_", 1556633587, 1067144217, "_x_x_x_x_bach_float64_x_x_x_x_", 1556633587, 1067144217, "_x_x_x_x_bach_float64_x_x_x_x_", 1717712040, 1068025759, "_x_x_x_x_bach_float64_x_x_x_x_", 3630037639, 1068805530, "_x_x_x_x_bach_float64_x_x_x_x_", 3630037639, 1068805530, "_x_x_x_x_bach_float64_x_x_x_x_", 3139655453, 1069691602, "_x_x_x_x_bach_float64_x_x_x_x_", 3139655453, 1069691602, "_x_x_x_x_bach_float64_x_x_x_x_", 169874546, 1069894758, "_x_x_x_x_bach_float64_x_x_x_x_", 3224317848, 1070807614, "_x_x_x_x_bach_float64_x_x_x_x_", 3224317848, 1070807614, "_x_x_x_x_bach_float64_x_x_x_x_", 3732017343, 1071695871, "_x_x_x_x_bach_float64_x_x_x_x_", 2663841796, 1072437053, "_x_x_x_x_bach_float64_x_x_x_x_", 2490668715, 1072519555, "_x_x_x_x_bach_float64_x_x_x_x_", 2796882703, 1072547705, "_x_x_x_x_bach_float64_x_x_x_x_", 2796882703, 1072547705, "_x_x_x_x_bach_float64_x_x_x_x_", 564599221, 1072656554, "_x_x_x_x_bach_float64_x_x_x_x_", 1899681215, 1072684601, "_x_x_x_x_bach_float64_x_x_x_x_", 1899681215, 1072684601, "_x_x_x_x_bach_float64_x_x_x_x_", 3824926075, 1070885565, "_x_x_x_x_bach_float64_x_x_x_x_", 3824926075, 1070885565, "_x_x_x_x_bach_float64_x_x_x_x_", 1932666564, 1071172481, "_x_x_x_x_bach_float64_x_x_x_x_", 838927372, 1070787700, "_x_x_x_x_bach_float64_x_x_x_x_", 838927372, 1070787700, "_x_x_x_x_bach_float64_x_x_x_x_", 2263344686, 1069345958, "_x_x_x_x_bach_float64_x_x_x_x_", 3685013220, 1069332754, "_x_x_x_x_bach_float64_x_x_x_x_", 2425247773, 1069497473, "_x_x_x_x_bach_float64_x_x_x_x_", 3097599133, 1067863523, "_x_x_x_x_bach_float64_x_x_x_x_", 3097599133, 1067863523, "_x_x_x_x_bach_float64_x_x_x_x_", 2026674808, 1066789211, "_x_x_x_x_bach_float64_x_x_x_x_", 3119039610, 1068281477, "_x_x_x_x_bach_float64_x_x_x_x_", 3119039610, 1068281477, "_x_x_x_x_bach_float64_x_x_x_x_", 2570933064, 1067840639, "_x_x_x_x_bach_float64_x_x_x_x_", 2570933064, 1067840639, "_x_x_x_x_bach_float64_x_x_x_x_", 505225593, 1067055298, "_x_x_x_x_bach_float64_x_x_x_x_", 505225593, 1067055298, "_x_x_x_x_bach_float64_x_x_x_x_", 505225593, 1067055298, "_x_x_x_x_bach_float64_x_x_x_x_", 1454379006, 1067490029, "_x_x_x_x_bach_float64_x_x_x_x_", 781752767, 1067969220, "_x_x_x_x_bach_float64_x_x_x_x_", 781752767, 1067969220, "_x_x_x_x_bach_float64_x_x_x_x_", 3554721093, 1068809372, "_x_x_x_x_bach_float64_x_x_x_x_", 3554721093, 1068809372, "_x_x_x_x_bach_float64_x_x_x_x_", 2840863168, 1068303321, "_x_x_x_x_bach_float64_x_x_x_x_", 3277369284, 1068101189, "_x_x_x_x_bach_float64_x_x_x_x_", 632219186, 1068663780, "_x_x_x_x_bach_float64_x_x_x_x_", 2610240604, 1068869032, "_x_x_x_x_bach_float64_x_x_x_x_", 2610240604, 1068869032, "_x_x_x_x_bach_float64_x_x_x_x_", 463719029, 1068061025, "_x_x_x_x_bach_float64_x_x_x_x_", 3609696674, 1067763732, "_x_x_x_x_bach_float64_x_x_x_x_", 3609696674, 1067763732, "_x_x_x_x_bach_float64_x_x_x_x_", 1180875488, 1068530552, "_x_x_x_x_bach_float64_x_x_x_x_", 3187484209, 1067720212, "_x_x_x_x_bach_float64_x_x_x_x_", 3667695912, 1067886105, "_x_x_x_x_bach_float64_x_x_x_x_", 3444495052, 1067648741, "_x_x_x_x_bach_float64_x_x_x_x_", 3444495052, 1067648741, "_x_x_x_x_bach_float64_x_x_x_x_", 1957405575, 1068342647, "_x_x_x_x_bach_float64_x_x_x_x_", 143211390, 1068507903, "_x_x_x_x_bach_float64_x_x_x_x_", 1577799186, 1068504564, "_x_x_x_x_bach_float64_x_x_x_x_", 3418931407, 1068521626, "_x_x_x_x_bach_float64_x_x_x_x_", 3418931407, 1068521626, "_x_x_x_x_bach_float64_x_x_x_x_", 2477474575, 1068700723, "_x_x_x_x_bach_float64_x_x_x_x_", 1511828488, 1068710756, "_x_x_x_x_bach_float64_x_x_x_x_", 1511828488, 1068710756, "_x_x_x_x_bach_float64_x_x_x_x_", 1516501413, 1068418715, "_x_x_x_x_bach_float64_x_x_x_x_", 1516501413, 1068418715, "_x_x_x_x_bach_float64_x_x_x_x_", 306763744, 1068772228, "_x_x_x_x_bach_float64_x_x_x_x_", 3591279854, 1068775935, "_x_x_x_x_bach_float64_x_x_x_x_", 3591279854, 1068775935, "_x_x_x_x_bach_float64_x_x_x_x_", 1070649448, 1068680641, "_x_x_x_x_bach_float64_x_x_x_x_", 2975553343, 1068690623, "_x_x_x_x_bach_float64_x_x_x_x_", 434307093, 1068758068, "_x_x_x_x_bach_float64_x_x_x_x_", 3805684622, 1068761171, "_x_x_x_x_bach_float64_x_x_x_x_", 3805684622, 1068761171, "_x_x_x_x_bach_float64_x_x_x_x_", 601157982, 1068723725, "_x_x_x_x_bach_float64_x_x_x_x_", 1618755994, 1068597191, "_x_x_x_x_bach_float64_x_x_x_x_", 1038488732, 1068577998, "_x_x_x_x_bach_float64_x_x_x_x_", 3011012593, 1068756742, "_x_x_x_x_bach_float64_x_x_x_x_", 3011012593, 1068756742, "_x_x_x_x_bach_float64_x_x_x_x_", 1802924192, 1068698777, "_x_x_x_x_bach_float64_x_x_x_x_", 2641026930, 1068702904, "_x_x_x_x_bach_float64_x_x_x_x_", 2641026930, 1068702904, "_x_x_x_x_bach_float64_x_x_x_x_", 2170710831, 1068689583, "_x_x_x_x_bach_float64_x_x_x_x_", 2170710831, 1068689583, "_x_x_x_x_bach_float64_x_x_x_x_", 3695183703, 1068542933, "_x_x_x_x_bach_float64_x_x_x_x_", 1309518349, 1068416836, "_x_x_x_x_bach_float64_x_x_x_x_", 1309518349, 1068416836, "_x_x_x_x_bach_float64_x_x_x_x_", 2533274790, 1068235776, "_x_x_x_x_bach_float64_x_x_x_x_", 2533274790, 1068235776, "_x_x_x_x_bach_float64_x_x_x_x_", 603357006, 1068786757, "_x_x_x_x_bach_float64_x_x_x_x_", 2186653750, 1068818885, "_x_x_x_x_bach_float64_x_x_x_x_", 2186653750, 1068818885, "_x_x_x_x_bach_float64_x_x_x_x_", 740795959, 1068663025, "_x_x_x_x_bach_float64_x_x_x_x_", 3512939651, 1068660340, "_x_x_x_x_bach_float64_x_x_x_x_", 3512939651, 1068660340, "_x_x_x_x_bach_float64_x_x_x_x_", 3512939651, 1068660340, "_x_x_x_x_bach_float64_x_x_x_x_", 2344433668, 1068688375, "_x_x_x_x_bach_float64_x_x_x_x_", 2344433668, 1068688375, "_x_x_x_x_bach_float64_x_x_x_x_", 1327110535, 1068658948, "_x_x_x_x_bach_float64_x_x_x_x_", 1327110535, 1068658948, "_x_x_x_x_bach_float64_x_x_x_x_", 1521998971, 1068445223, "_x_x_x_x_bach_float64_x_x_x_x_", 677574041, 1068358183, "_x_x_x_x_bach_float64_x_x_x_x_", 3298260005, 1068306777, "_x_x_x_x_bach_float64_x_x_x_x_", 3161920564, 1068068809, "_x_x_x_x_bach_float64_x_x_x_x_", 3161920564, 1068068809, "_x_x_x_x_bach_float64_x_x_x_x_", 3383472157, 1068193363, "_x_x_x_x_bach_float64_x_x_x_x_", 1059104575, 1068415259, "_x_x_x_x_bach_float64_x_x_x_x_", 1059104575, 1068415259, "_x_x_x_x_bach_float64_x_x_x_x_", 2295230523, 1068555986, "_x_x_x_x_bach_float64_x_x_x_x_", 2295230523, 1068555986, "_x_x_x_x_bach_float64_x_x_x_x_", 1855150994, 1068688459, "_x_x_x_x_bach_float64_x_x_x_x_", 260034500, 1068809054, "_x_x_x_x_bach_float64_x_x_x_x_", 260034500, 1068809054, "_x_x_x_x_bach_float64_x_x_x_x_", 152282360, 1068866214, "_x_x_x_x_bach_float64_x_x_x_x_", 138538465, 1068799944, "_x_x_x_x_bach_float64_x_x_x_x_", 2462081412, 1068783787, "_x_x_x_x_bach_float64_x_x_x_x_", 2039868947, 1069002411, "_x_x_x_x_bach_float64_x_x_x_x_", 2039868947, 1069002411, "_x_x_x_x_bach_float64_x_x_x_x_", 4015416465, 1068776304, "_x_x_x_x_bach_float64_x_x_x_x_", 3481053814, 1068401736, "_x_x_x_x_bach_float64_x_x_x_x_", 3481053814, 1068401736, "_x_x_x_x_bach_float64_x_x_x_x_", 2686381785, 1068397307, "_x_x_x_x_bach_float64_x_x_x_x_", 2686381785, 1068397307, "_x_x_x_x_bach_float64_x_x_x_x_", 1246571308, 1068480321, "_x_x_x_x_bach_float64_x_x_x_x_", 1075872128, 1068338822, "_x_x_x_x_bach_float64_x_x_x_x_", 1075872128, 1068338822, "_x_x_x_x_bach_float64_x_x_x_x_", 1759493482, 1068436935, "_x_x_x_x_bach_float64_x_x_x_x_", 3004415523, 1068567646, "_x_x_x_x_bach_float64_x_x_x_x_", 3004415523, 1068567646, "_x_x_x_x_bach_float64_x_x_x_x_", 1041237512, 1068853396, "_x_x_x_x_bach_float64_x_x_x_x_", 1041237512, 1068853396, "_x_x_x_x_bach_float64_x_x_x_x_", 3089627674, 1068978520, "_x_x_x_x_bach_float64_x_x_x_x_", 3719098081, 1069130102, "_x_x_x_x_bach_float64_x_x_x_x_", 3719098081, 1069130102, "_x_x_x_x_bach_float64_x_x_x_x_", 2906009232, 1069089300, "_x_x_x_x_bach_float64_x_x_x_x_", 915893186, 1069192732, "_x_x_x_x_bach_float64_x_x_x_x_", 3224042971, 1069259639, "_x_x_x_x_bach_float64_x_x_x_x_", 762236436, 1069080979, "_x_x_x_x_bach_float64_x_x_x_x_", 762236436, 1069080979, "_x_x_x_x_bach_float64_x_x_x_x_", 3830698511, 1068986640, "_x_x_x_x_bach_float64_x_x_x_x_", 2915629959, 1068873545, "_x_x_x_x_bach_float64_x_x_x_x_", 2915629959, 1068873545, "_x_x_x_x_bach_float64_x_x_x_x_", 1772137866, 1068602761, "_x_x_x_x_bach_float64_x_x_x_x_", 1772137866, 1068602761, "_x_x_x_x_bach_float64_x_x_x_x_", 1367242709, 1068170882, "_x_x_x_x_bach_float64_x_x_x_x_", 3371927284, 1068452269, "_x_x_x_x_bach_float64_x_x_x_x_", 3371927284, 1068452269, "_x_x_x_x_bach_float64_x_x_x_x_", 133315785, 1068355331, "_x_x_x_x_bach_float64_x_x_x_x_", 133315785, 1068355331, "_x_x_x_x_bach_float64_x_x_x_x_", 826282988, 1068393650, "_x_x_x_x_bach_float64_x_x_x_x_", 266906448, 1068580045, "_x_x_x_x_bach_float64_x_x_x_x_", 524192169, 1068614757, "_x_x_x_x_bach_float64_x_x_x_x_", 1141293070, 1068706696, "_x_x_x_x_bach_float64_x_x_x_x_", 1141293070, 1068706696, "_x_x_x_x_bach_float64_x_x_x_x_", 1015673866, 1068677705, "_x_x_x_x_bach_float64_x_x_x_x_", 393625163, 1068771624, "_x_x_x_x_bach_float64_x_x_x_x_", 393625163, 1068771624, "_x_x_x_x_bach_float64_x_x_x_x_", 2941468482, 1068893275, "_x_x_x_x_bach_float64_x_x_x_x_", 926338546, 1068771238, "_x_x_x_x_bach_float64_x_x_x_x_", 2304301494, 1068652153, "_x_x_x_x_bach_float64_x_x_x_x_", 1193244994, 1068590195, "_x_x_x_x_bach_float64_x_x_x_x_", 1193244994, 1068590195, "_x_x_x_x_bach_float64_x_x_x_x_", 3663572744, 1068652656, "_x_x_x_x_bach_float64_x_x_x_x_", 2896388505, 1068780767, "_x_x_x_x_bach_float64_x_x_x_x_", 2896388505, 1068780767, "_x_x_x_x_bach_float64_x_x_x_x_", 826557866, 1069024121, "_x_x_x_x_bach_float64_x_x_x_x_", 2206994715, 1069074251, "_x_x_x_x_bach_float64_x_x_x_x_", 3890347017, 1069221823, "_x_x_x_x_bach_float64_x_x_x_x_", 1944211436, 1069275175, "_x_x_x_x_bach_float64_x_x_x_x_", 1944211436, 1069275175, "_x_x_x_x_bach_float64_x_x_x_x_", 1940912901, 1069311699, "_x_x_x_x_bach_float64_x_x_x_x_", 788624715, 1069313075, "_x_x_x_x_bach_float64_x_x_x_x_", 2614913529, 1069363423, "_x_x_x_x_bach_float64_x_x_x_x_", 1272134953, 1069442444, "_x_x_x_x_bach_float64_x_x_x_x_", 1272134953, 1069442444, "_x_x_x_x_bach_float64_x_x_x_x_", 4294142662, 1069491114, "_x_x_x_x_bach_float64_x_x_x_x_", 2297704424, 1069642705, "_x_x_x_x_bach_float64_x_x_x_x_", 2297704424, 1069642705, "_x_x_x_x_bach_float64_x_x_x_x_", 692142570, 1069791578, "_x_x_x_x_bach_float64_x_x_x_x_", 692142570, 1069791578, "_x_x_x_x_bach_float64_x_x_x_x_", 607480174, 1069986286, "_x_x_x_x_bach_float64_x_x_x_x_", 273228640, 1070104750, "_x_x_x_x_bach_float64_x_x_x_x_", 273228640, 1070104750, "_x_x_x_x_bach_float64_x_x_x_x_", 750966442, 1070363572, "_x_x_x_x_bach_float64_x_x_x_x_", 2106114523, 1070475266, "_x_x_x_x_bach_float64_x_x_x_x_", 3480778936, 1070654849, "_x_x_x_x_bach_float64_x_x_x_x_", 2568459162, 1070751616, "_x_x_x_x_bach_float64_x_x_x_x_", 2568459162, 1070751616, "_x_x_x_x_bach_float64_x_x_x_x_", 478287558, 1070805140, "_x_x_x_x_bach_float64_x_x_x_x_", 2297979302, 1070863000, "_x_x_x_x_bach_float64_x_x_x_x_", 1162458668, 1070853475, "_x_x_x_x_bach_float64_x_x_x_x_", 1810620773, 1070819933, "_x_x_x_x_bach_float64_x_x_x_x_", 1810620773, 1070819933, "_x_x_x_x_bach_float64_x_x_x_x_", 4033283529, 1070697463, "_x_x_x_x_bach_float64_x_x_x_x_", 2801005872, 1070470434, "_x_x_x_x_bach_float64_x_x_x_x_", 2801005872, 1070470434, "_x_x_x_x_bach_float64_x_x_x_x_", 3951369912, 1069856849, "_x_x_x_x_bach_float64_x_x_x_x_", 3951369912, 1069856849, "_x_x_x_x_bach_float64_x_x_x_x_", 545632645, 1069556999, "_x_x_x_x_bach_float64_x_x_x_x_", 2426347285, 1068611485, "_x_x_x_x_bach_float64_x_x_x_x_", 2426347285, 1068611485, "_x_x_x_x_bach_float64_x_x_x_x_", 3692160046, 1068161352, "_x_x_x_x_bach_float64_x_x_x_x_", 3692160046, 1068161352, "_x_x_x_x_bach_float64_x_x_x_x_", 3201777860, 1067474560, "_x_x_x_x_bach_float64_x_x_x_x_", 2048665040, 1068468107, "_x_x_x_x_bach_float64_x_x_x_x_", 2048665040, 1068468107, "_x_x_x_x_bach_float64_x_x_x_x_", 189665756, 1069151326, "_x_x_x_x_bach_float64_x_x_x_x_", 1963727767, 1068949848, "_x_x_x_x_bach_float64_x_x_x_x_", 1468672657, 1068555097, "_x_x_x_x_bach_float64_x_x_x_x_", 3903816034, 1067609046, "_x_x_x_x_bach_float64_x_x_x_x_", 2447512883, 1068136824, "_x_x_x_x_bach_float64_x_x_x_x_", 2924151174, 1068233058, "_x_x_x_x_bach_float64_x_x_x_x_", 3866432639, 1066275358, "_x_x_x_x_bach_float64_x_x_x_x_", 4108050319, 1064451943, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 1249869843, 1066084501, "_x_x_x_x_bach_float64_x_x_x_x_", 504950715, 1068521979, "_x_x_x_x_bach_float64_x_x_x_x_", 3533830372, 1068603784, "_x_x_x_x_bach_float64_x_x_x_x_", 3481328691, 1068507919, "_x_x_x_x_bach_float64_x_x_x_x_", 3481328691, 1068507919, "_x_x_x_x_bach_float64_x_x_x_x_", 2028873831, 1068162963, "_x_x_x_x_bach_float64_x_x_x_x_", 1040412878, 1068796991, "_x_x_x_x_bach_float64_x_x_x_x_", 1898031947, 1069000079, "_x_x_x_x_bach_float64_x_x_x_x_", 2506336756, 1069102034, "_x_x_x_x_bach_float64_x_x_x_x_", 2506336756, 1069102034, "_x_x_x_x_bach_float64_x_x_x_x_", 3732017343, 1069664255, "_x_x_x_x_bach_float64_x_x_x_x_", 2187203506, 1070079827, "_x_x_x_x_bach_float64_x_x_x_x_", 2187203506, 1070079827, "_x_x_x_x_bach_float64_x_x_x_x_", 3525309157, 1070030703, "_x_x_x_x_bach_float64_x_x_x_x_", 3525309157, 1070030703, "_x_x_x_x_bach_float64_x_x_x_x_", 1775161523, 1070163990, "_x_x_x_x_bach_float64_x_x_x_x_", 2129479145, 1070456853, "_x_x_x_x_bach_float64_x_x_x_x_", 2129479145, 1070456853, "_x_x_x_x_bach_float64_x_x_x_x_", 2643225953, 1070076656, "_x_x_x_x_bach_float64_x_x_x_x_", 751241320, 1069814395, "_x_x_x_x_bach_float64_x_x_x_x_", 3024206732, 1069790294, "_x_x_x_x_bach_float64_x_x_x_x_", 2715518843, 1069822305, "_x_x_x_x_bach_float64_x_x_x_x_", 2715518843, 1069822305, "_x_x_x_x_bach_float64_x_x_x_x_", 2355153907, 1069683784, "_x_x_x_x_bach_float64_x_x_x_x_", 558551907, 1069566864, "_x_x_x_x_bach_float64_x_x_x_x_", 558551907, 1069566864, "_x_x_x_x_bach_float64_x_x_x_x_", 3126186436, 1069469371, "_x_x_x_x_bach_float64_x_x_x_x_", 3126186436, 1069469371, "_x_x_x_x_bach_float64_x_x_x_x_", 2270491511, 1069223132, "_x_x_x_x_bach_float64_x_x_x_x_", 399122721, 1069060276, "_x_x_x_x_bach_float64_x_x_x_x_", 1705342535, 1069014692, "_x_x_x_x_bach_float64_x_x_x_x_", 4132514453, 1069445782, "_x_x_x_x_bach_float64_x_x_x_x_", 2690230075, 1069621725, "_x_x_x_x_bach_float64_x_x_x_x_", 2690230075, 1069621725, "_x_x_x_x_bach_float64_x_x_x_x_", 4260332680, 1069668877, "_x_x_x_x_bach_float64_x_x_x_x_", 4260332680, 1069668877, "_x_x_x_x_bach_float64_x_x_x_x_", 1327110535, 1069969668, "_x_x_x_x_bach_float64_x_x_x_x_", 3833172412, 1069942287, "_x_x_x_x_bach_float64_x_x_x_x_", 3833172412, 1069942287, "_x_x_x_x_bach_float64_x_x_x_x_", 110226041, 1069921719, "_x_x_x_x_bach_float64_x_x_x_x_", 110226041, 1069921719, "_x_x_x_x_bach_float64_x_x_x_x_", 1550036517, 1069838705, "_x_x_x_x_bach_float64_x_x_x_x_", 371085174, 1069763946, "_x_x_x_x_bach_float64_x_x_x_x_", 1940088267, 1069648510, "_x_x_x_x_bach_float64_x_x_x_x_", 3475006500, 1069604654, "_x_x_x_x_bach_float64_x_x_x_x_", 3475006500, 1069604654, "_x_x_x_x_bach_float64_x_x_x_x_", 3204801517, 1069560077, "_x_x_x_x_bach_float64_x_x_x_x_", 211381110, 1069413319, "_x_x_x_x_bach_float64_x_x_x_x_", 3594303511, 1069157516, "_x_x_x_x_bach_float64_x_x_x_x_", 916992698, 1068831032, "_x_x_x_x_bach_float64_x_x_x_x_", 3942573819, 1068687217, "_x_x_x_x_bach_float64_x_x_x_x_", 644863570, 1068567462, "_x_x_x_x_bach_float64_x_x_x_x_", 3910138226, 1068216247, "_x_x_x_x_bach_float64_x_x_x_x_", 3910138226, 1068216247, "_x_x_x_x_bach_float64_x_x_x_x_", 388952238, 1067490801, "_x_x_x_x_bach_float64_x_x_x_x_", 2081375511, 1067210252, "_x_x_x_x_bach_float64_x_x_x_x_", 1546188227, 1066779279, "_x_x_x_x_bach_float64_x_x_x_x_", 1546188227, 1066779279, "_x_x_x_x_bach_float64_x_x_x_x_", 4110249343, 1066349983, "_x_x_x_x_bach_float64_x_x_x_x_", 4110249343, 1066349983, "_x_x_x_x_bach_float64_x_x_x_x_", 1047009948, 1066888935, "_x_x_x_x_bach_float64_x_x_x_x_", 1047009948, 1066888935, "_x_x_x_x_bach_float64_x_x_x_x_", 20890721, 1067131668, "_x_x_x_x_bach_float64_x_x_x_x_", 2623159866, 1067043889, "_x_x_x_x_bach_float64_x_x_x_x_", 2623159866, 1067043889, "_x_x_x_x_bach_float64_x_x_x_x_", 4285346569, 1067666122, "_x_x_x_x_bach_float64_x_x_x_x_", 863941262, 1067998513, "_x_x_x_x_bach_float64_x_x_x_x_", 863941262, 1067998513, "_x_x_x_x_bach_float64_x_x_x_x_", 4009094273, 1067644815, "_x_x_x_x_bach_float64_x_x_x_x_", 4009094273, 1067644815, "_x_x_x_x_bach_float64_x_x_x_x_", 608579686, 1067658506, "_x_x_x_x_bach_float64_x_x_x_x_", 1527496529, 1067947443, "_x_x_x_x_bach_float64_x_x_x_x_", 1527496529, 1067947443, "_x_x_x_x_bach_float64_x_x_x_x_", 2075053320, 1068175915, "_x_x_x_x_bach_float64_x_x_x_x_", 2075053320, 1068175915, "_x_x_x_x_bach_float64_x_x_x_x_", 316659349, 1067614080, "_x_x_x_x_bach_float64_x_x_x_x_", 103903849, 1068265942, "_x_x_x_x_bach_float64_x_x_x_x_", 103903849, 1068265942, "_x_x_x_x_bach_float64_x_x_x_x_", 2080550878, 1068202423, "_x_x_x_x_bach_float64_x_x_x_x_", 2080550878, 1068202423, "_x_x_x_x_bach_float64_x_x_x_x_", 931286349, 1068061092, "_x_x_x_x_bach_float64_x_x_x_x_", 132766029, 1068142965, "_x_x_x_x_bach_float64_x_x_x_x_", 291645459, 1068175043, "_x_x_x_x_bach_float64_x_x_x_x_", 2308974418, 1068097968, "_x_x_x_x_bach_float64_x_x_x_x_", 811164703, 1068058609, "_x_x_x_x_bach_float64_x_x_x_x_", 811164703, 1068058609, "_x_x_x_x_bach_float64_x_x_x_x_", 2347457325, 1068283524, "_x_x_x_x_bach_float64_x_x_x_x_", 2347457325, 1068283524, "_x_x_x_x_bach_float64_x_x_x_x_", 884831982, 1068204101, "_x_x_x_x_bach_float64_x_x_x_x_", 3810632424, 1068051025, "_x_x_x_x_bach_float64_x_x_x_x_", 67619965, 1067881274, "_x_x_x_x_bach_float64_x_x_x_x_", 3679240784, 1068151487, "_x_x_x_x_bach_float64_x_x_x_x_", 3679240784, 1068151487, "_x_x_x_x_bach_float64_x_x_x_x_", 1215510105, 1068278122, "_x_x_x_x_bach_float64_x_x_x_x_", 2440915814, 1068209872, "_x_x_x_x_bach_float64_x_x_x_x_", 2440915814, 1068209872, "_x_x_x_x_bach_float64_x_x_x_x_", 2918103860, 1067994184, "_x_x_x_x_bach_float64_x_x_x_x_", 2918103860, 1067994184, "_x_x_x_x_bach_float64_x_x_x_x_", 534087773, 1067980897, "_x_x_x_x_bach_float64_x_x_x_x_", 2363125366, 1068306643, "_x_x_x_x_bach_float64_x_x_x_x_", 2363125366, 1068306643, "_x_x_x_x_bach_float64_x_x_x_x_", 62122407, 1068379054, "_x_x_x_x_bach_float64_x_x_x_x_", 1831236616, 1068101290, "_x_x_x_x_bach_float64_x_x_x_x_", 965920965, 1067808662, "_x_x_x_x_bach_float64_x_x_x_x_", 1481042163, 1068090452, "_x_x_x_x_bach_float64_x_x_x_x_", 1481042163, 1068090452, "_x_x_x_x_bach_float64_x_x_x_x_", 3837295581, 1068127160, "_x_x_x_x_bach_float64_x_x_x_x_", 3551972314, 1068009686, "_x_x_x_x_bach_float64_x_x_x_x_", 3551972314, 1068009686, "_x_x_x_x_bach_float64_x_x_x_x_", 1335631750, 1068280605, "_x_x_x_x_bach_float64_x_x_x_x_", 1335631750, 1068280605, "_x_x_x_x_bach_float64_x_x_x_x_", 1954381918, 1068485354, "_x_x_x_x_bach_float64_x_x_x_x_", 407643936, 1068419789, "_x_x_x_x_bach_float64_x_x_x_x_", 407643936, 1068419789, "_x_x_x_x_bach_float64_x_x_x_x_", 263058157, 1068142059, "_x_x_x_x_bach_float64_x_x_x_x_", 263058157, 1068142059, "_x_x_x_x_bach_float64_x_x_x_x_", 1105558942, 1068272250, "_x_x_x_x_bach_float64_x_x_x_x_", 946679512, 1068502316, "_x_x_x_x_bach_float64_x_x_x_x_", 946679512, 1068502316, "_x_x_x_x_bach_float64_x_x_x_x_", 1408749273, 1068213731, "_x_x_x_x_bach_float64_x_x_x_x_", 3598701558, 1068235004, "_x_x_x_x_bach_float64_x_x_x_x_", 4191888081, 1068264062, "_x_x_x_x_bach_float64_x_x_x_x_", 3934877238, 1068335533, "_x_x_x_x_bach_float64_x_x_x_x_", 3934877238, 1068335533, "_x_x_x_x_bach_float64_x_x_x_x_", 3503318924, 1068351807, "_x_x_x_x_bach_float64_x_x_x_x_", 3658624941, 1068314226, "_x_x_x_x_bach_float64_x_x_x_x_", 3658624941, 1068314226, "_x_x_x_x_bach_float64_x_x_x_x_", 343322506, 1068214503, "_x_x_x_x_bach_float64_x_x_x_x_", 4202883197, 1068317078, "_x_x_x_x_bach_float64_x_x_x_x_", 4202883197, 1068317078, "_x_x_x_x_bach_float64_x_x_x_x_", 3234763209, 1068157896, "_x_x_x_x_bach_float64_x_x_x_x_", 3234763209, 1068157896, "_x_x_x_x_bach_float64_x_x_x_x_", 336175680, 1067550897, "_x_x_x_x_bach_float64_x_x_x_x_", 1440085354, 1067735681, "_x_x_x_x_bach_float64_x_x_x_x_", 4254285366, 1067988211, "_x_x_x_x_bach_float64_x_x_x_x_", 1241623506, 1068141891, "_x_x_x_x_bach_float64_x_x_x_x_", 1241623506, 1068141891, "_x_x_x_x_bach_float64_x_x_x_x_", 4050600837, 1068211952, "_x_x_x_x_bach_float64_x_x_x_x_", 1221007663, 1067780342, "_x_x_x_x_bach_float64_x_x_x_x_", 4247963174, 1067905298, "_x_x_x_x_bach_float64_x_x_x_x_", 1885112686, 1068465926, "_x_x_x_x_bach_float64_x_x_x_x_", 1885112686, 1068465926, "_x_x_x_x_bach_float64_x_x_x_x_", 3858736058, 1068545114, "_x_x_x_x_bach_float64_x_x_x_x_", 1236675703, 1068589893, "_x_x_x_x_bach_float64_x_x_x_x_", 1236675703, 1068589893, "_x_x_x_x_bach_float64_x_x_x_x_", 1628926477, 1068593802, "_x_x_x_x_bach_float64_x_x_x_x_", 1628926477, 1068593802, "_x_x_x_x_bach_float64_x_x_x_x_", 3288364401, 1068678493, "_x_x_x_x_bach_float64_x_x_x_x_", 4002772081, 1068610478, "_x_x_x_x_bach_float64_x_x_x_x_", 4002772081, 1068610478, "_x_x_x_x_bach_float64_x_x_x_x_", 2438167035, 1068720906, "_x_x_x_x_bach_float64_x_x_x_x_", 1999736773, 1068704045, "_x_x_x_x_bach_float64_x_x_x_x_", 3669345180, 1068785347, "_x_x_x_x_bach_float64_x_x_x_x_", 3988203552, 1068749947, "_x_x_x_x_bach_float64_x_x_x_x_", 3988203552, 1068749947, "_x_x_x_x_bach_float64_x_x_x_x_", 1067076035, 1068610982, "_x_x_x_x_bach_float64_x_x_x_x_", 3272696360, 1068655374, "_x_x_x_x_bach_float64_x_x_x_x_", 1564605046, 1068650660, "_x_x_x_x_bach_float64_x_x_x_x_", 3682264441, 1068533068, "_x_x_x_x_bach_float64_x_x_x_x_", 3682264441, 1068533068, "_x_x_x_x_bach_float64_x_x_x_x_", 2567084773, 1067926941, "_x_x_x_x_bach_float64_x_x_x_x_", 1272684709, 1068344090, "_x_x_x_x_bach_float64_x_x_x_x_", 1272684709, 1068344090, "_x_x_x_x_bach_float64_x_x_x_x_", 607480174, 1068806638, "_x_x_x_x_bach_float64_x_x_x_x_", 607480174, 1068806638, "_x_x_x_x_bach_float64_x_x_x_x_", 1985718000, 1068531592, "_x_x_x_x_bach_float64_x_x_x_x_", 301815942, 1068695942, "_x_x_x_x_bach_float64_x_x_x_x_", 301815942, 1068695942, "_x_x_x_x_bach_float64_x_x_x_x_", 783127157, 1068762279, "_x_x_x_x_bach_float64_x_x_x_x_", 783127157, 1068762279, "_x_x_x_x_bach_float64_x_x_x_x_", 3825475831, 1068542027, "_x_x_x_x_bach_float64_x_x_x_x_", 3448893098, 1068561237, "_x_x_x_x_bach_float64_x_x_x_x_", 2139374750, 1068643345, "_x_x_x_x_bach_float64_x_x_x_x_", 3210024197, 1068825042, "_x_x_x_x_bach_float64_x_x_x_x_", 3210024197, 1068825042, "_x_x_x_x_bach_float64_x_x_x_x_", 4263356337, 1068870810, "_x_x_x_x_bach_float64_x_x_x_x_", 4263356337, 1068870810, "_x_x_x_x_bach_float64_x_x_x_x_", 2996718942, 1068740250, "_x_x_x_x_bach_float64_x_x_x_x_", 2132227924, 1068766171, "_x_x_x_x_bach_float64_x_x_x_x_", 4139386401, 1068692485, "_x_x_x_x_bach_float64_x_x_x_x_", 4139386401, 1068692485, "_x_x_x_x_bach_float64_x_x_x_x_", 1121226982, 1068819657, "_x_x_x_x_bach_float64_x_x_x_x_", 2405731442, 1068512080, "_x_x_x_x_bach_float64_x_x_x_x_", 1192970116, 1068484012, "_x_x_x_x_bach_float64_x_x_x_x_", 2014030424, 1068720537, "_x_x_x_x_bach_float64_x_x_x_x_", 2014030424, 1068720537, "_x_x_x_x_bach_float64_x_x_x_x_", 162727721, 1068706864, "_x_x_x_x_bach_float64_x_x_x_x_", 468391953, 1068555416, "_x_x_x_x_bach_float64_x_x_x_x_", 468391953, 1068555416, "_x_x_x_x_bach_float64_x_x_x_x_", 4237792691, 1068695119, "_x_x_x_x_bach_float64_x_x_x_x_", 3212498098, 1068732113, "_x_x_x_x_bach_float64_x_x_x_x_", 3093201087, 1068786035, "_x_x_x_x_bach_float64_x_x_x_x_", 997806802, 1068853698, "_x_x_x_x_bach_float64_x_x_x_x_", 997806802, 1068853698, "_x_x_x_x_bach_float64_x_x_x_x_", 1124800395, 1068627172, "_x_x_x_x_bach_float64_x_x_x_x_", 4006070616, 1068573954, "_x_x_x_x_bach_float64_x_x_x_x_", 3462362116, 1068521324, "_x_x_x_x_bach_float64_x_x_x_x_", 2808152697, 1068512600, "_x_x_x_x_bach_float64_x_x_x_x_", 2808152697, 1068512600, "_x_x_x_x_bach_float64_x_x_x_x_", 2786437343, 1068512751, "_x_x_x_x_bach_float64_x_x_x_x_", 4128941040, 1068589691, "_x_x_x_x_bach_float64_x_x_x_x_", 4128941040, 1068589691, "_x_x_x_x_bach_float64_x_x_x_x_", 1330409070, 1068622424, "_x_x_x_x_bach_float64_x_x_x_x_", 1330409070, 1068622424, "_x_x_x_x_bach_float64_x_x_x_x_", 3847466063, 1068910203, "_x_x_x_x_bach_float64_x_x_x_x_", 1417545366, 1068990147, "_x_x_x_x_bach_float64_x_x_x_x_", 1417545366, 1068990147, "_x_x_x_x_bach_float64_x_x_x_x_", 1151188674, 1068859268, "_x_x_x_x_bach_float64_x_x_x_x_", 1151188674, 1068859268, "_x_x_x_x_bach_float64_x_x_x_x_", 1080270174, 1068727030, "_x_x_x_x_bach_float64_x_x_x_x_", 2451636052, 1068418849, "_x_x_x_x_bach_float64_x_x_x_x_", 2451636052, 1068418849, "_x_x_x_x_bach_float64_x_x_x_x_", 3167143244, 1068513422, "_x_x_x_x_bach_float64_x_x_x_x_", 3167143244, 1068513422, "_x_x_x_x_bach_float64_x_x_x_x_", 3269397825, 1068429754, "_x_x_x_x_bach_float64_x_x_x_x_", 1795502488, 1068453276, "_x_x_x_x_bach_float64_x_x_x_x_", 1795502488, 1068453276, "_x_x_x_x_bach_float64_x_x_x_x_", 335351046, 1068543068, "_x_x_x_x_bach_float64_x_x_x_x_", 2437617279, 1068508540, "_x_x_x_x_bach_float64_x_x_x_x_", 2437617279, 1068508540, "_x_x_x_x_bach_float64_x_x_x_x_", 2437617279, 1068508540, "_x_x_x_x_bach_float64_x_x_x_x_", 2437617279, 1068508540, "_x_x_x_x_bach_float64_x_x_x_x_", 677574041, 1068620327, "_x_x_x_x_bach_float64_x_x_x_x_", 981589006, 1068618213, "_x_x_x_x_bach_float64_x_x_x_x_", 981589006, 1068618213, "_x_x_x_x_bach_float64_x_x_x_x_", 1576149918, 1068653898, "_x_x_x_x_bach_float64_x_x_x_x_", 1576149918, 1068653898, "_x_x_x_x_bach_float64_x_x_x_x_", 3556095482, 1068815999, "_x_x_x_x_bach_float64_x_x_x_x_", 2595946953, 1068852540, "_x_x_x_x_bach_float64_x_x_x_x_", 2595946953, 1068852540, "_x_x_x_x_bach_float64_x_x_x_x_", 2446688250, 1068866851, "_x_x_x_x_bach_float64_x_x_x_x_", 2446688250, 1068866851, "_x_x_x_x_bach_float64_x_x_x_x_", 3293312203, 1068754779, "_x_x_x_x_bach_float64_x_x_x_x_", 1730081546, 1068609690, "_x_x_x_x_bach_float64_x_x_x_x_", 3316127069, 1068655072, "_x_x_x_x_bach_float64_x_x_x_x_", 585764820, 1068544645, "_x_x_x_x_bach_float64_x_x_x_x_", 585764820, 1068544645, "_x_x_x_x_bach_float64_x_x_x_x_", 891154174, 1068549158, "_x_x_x_x_bach_float64_x_x_x_x_", 2204795692, 1068486931, "_x_x_x_x_bach_float64_x_x_x_x_", 2204795692, 1068486931, "_x_x_x_x_bach_float64_x_x_x_x_", 1116554058, 1068325266, "_x_x_x_x_bach_float64_x_x_x_x_", 1116554058, 1068325266, "_x_x_x_x_bach_float64_x_x_x_x_", 566798244, 1068295906, "_x_x_x_x_bach_float64_x_x_x_x_", 138538465, 1068537800, "_x_x_x_x_bach_float64_x_x_x_x_", 138538465, 1068537800, "_x_x_x_x_bach_float64_x_x_x_x_", 711384023, 1068573636, "_x_x_x_x_bach_float64_x_x_x_x_", 1092089924, 1068574307, "_x_x_x_x_bach_float64_x_x_x_x_", 672076482, 1068593819, "_x_x_x_x_bach_float64_x_x_x_x_", 182793808, 1068593903, "_x_x_x_x_bach_float64_x_x_x_x_", 182793808, 1068593903, "_x_x_x_x_bach_float64_x_x_x_x_", 1952732651, 1068634688, "_x_x_x_x_bach_float64_x_x_x_x_", 2413428023, 1068601620, "_x_x_x_x_bach_float64_x_x_x_x_", 2413428023, 1068601620, "_x_x_x_x_bach_float64_x_x_x_x_", 3035476726, 1068507701, "_x_x_x_x_bach_float64_x_x_x_x_", 3035476726, 1068507701, "_x_x_x_x_bach_float64_x_x_x_x_", 717431337, 1068550366, "_x_x_x_x_bach_float64_x_x_x_x_", 717431337, 1068550366, "_x_x_x_x_bach_float64_x_x_x_x_", 717431337, 1068550366, "_x_x_x_x_bach_float64_x_x_x_x_", 3047296476, 1068617122, "_x_x_x_x_bach_float64_x_x_x_x_", 3047296476, 1068617122, "_x_x_x_x_bach_float64_x_x_x_x_", 1924695104, 1068551926, "_x_x_x_x_bach_float64_x_x_x_x_", 2333438552, 1068635359, "_x_x_x_x_bach_float64_x_x_x_x_", 2333438552, 1068635359, "_x_x_x_x_bach_float64_x_x_x_x_", 926613424, 1068615277, "_x_x_x_x_bach_float64_x_x_x_x_", 143486267, 1068614086, "_x_x_x_x_bach_float64_x_x_x_x_", 1064327256, 1068597728, "_x_x_x_x_bach_float64_x_x_x_x_", 1060478965, 1068684030, "_x_x_x_x_bach_float64_x_x_x_x_", 1060478965, 1068684030, "_x_x_x_x_bach_float64_x_x_x_x_", 884557105, 1068622206, "_x_x_x_x_bach_float64_x_x_x_x_", 2495616517, 1068630913, "_x_x_x_x_bach_float64_x_x_x_x_", 2495616517, 1068630913, "_x_x_x_x_bach_float64_x_x_x_x_", 4206181732, 1068542698, "_x_x_x_x_bach_float64_x_x_x_x_", 4206181732, 1068542698, "_x_x_x_x_bach_float64_x_x_x_x_", 3697107848, 1068499782, "_x_x_x_x_bach_float64_x_x_x_x_", 2323817825, 1068588970, "_x_x_x_x_bach_float64_x_x_x_x_", 2323817825, 1068588970, "_x_x_x_x_bach_float64_x_x_x_x_", 2323817825, 1068588970, "_x_x_x_x_bach_float64_x_x_x_x_", 412866616, 1068602258, "_x_x_x_x_bach_float64_x_x_x_x_", 412866616, 1068602258, "_x_x_x_x_bach_float64_x_x_x_x_", 2274064924, 1068506359, "_x_x_x_x_bach_float64_x_x_x_x_", 2274064924, 1068506359, "_x_x_x_x_bach_float64_x_x_x_x_", 2811726110, 1068582259, "_x_x_x_x_bach_float64_x_x_x_x_", 3066537930, 1068709900 ],
					"reg_data_count" : [ 1 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"versionnumber" : 80300
					}
,
					"text" : "bach.reg @embed 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1545.255952596664429, 162.499998315376274, 29.5, 22.0 ],
					"text" : "0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1545.255952596664429, 188.499998315376274, 85.0, 22.0 ],
					"text" : "prepend offset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1545.589286009470698, 216.291290283203125, 67.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"handoff" : "",
					"hilite" : 0,
					"id" : "obj-62",
					"maxclass" : "ubutton",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1329.922619342803955, 38.5, 33.0, 42.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2.0, 1.416671752929688, 84.999999225139618, 25.333333134651184 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1407.089286009470698, 166.291290283203125, 52.0, 22.0 ],
					"text" : "170 26"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "bang" ],
					"patching_rect" : [ 1334.589286009470698, 132.5, 230.0, 22.0 ],
					"text" : "bpatcher-resize-gizmo (434 130) (170 27)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1440.089286009470698, 73.5, 47.0, 22.0 ],
					"text" : "getsize"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1334.589286009470698, 103.5, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1440.089286009470698, 103.5, 103.0, 22.0 ],
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
					"fontname" : "Andale Mono",
					"fontsize" : 13.491258370035325,
					"id" : "obj-29",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1640.922619342803955, 138.0, 41.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 45.0, -1.306732502389462, 42.0, 22.0 ],
					"text" : "slot"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-42",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1587.922619342803955, 140.0, 52.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 2.0, 1.416671752929688, 52.0, 27.0 ],
					"style" : "MOZ-title",
					"text" : "MARK"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 153.0, 501.199995160102844, 34.0, 22.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"clickedimage" : 1,
					"id" : "obj-26",
					"maxclass" : "pictctrl",
					"name" : "erase.png",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 153.0, 472.818525433540344, 37.0, 19.763053894042969 ],
					"presentation" : 1,
					"presentation_rect" : [ 131.999984681606179, 3.535202026367188, 37.0, 19.763053894042969 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 153.0, 528.199995160102844, 78.0, 22.0 ],
					"text" : "clearmarkers"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 930.375, 402.976190567016602, 105.0, 22.0 ],
					"text" : "moz.ezbpf2slot-xy"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 7,
					"numoutlets" : 7,
					"outlettype" : [ "", "", "", "", "", "", "" ],
					"patching_rect" : [ 46.0, 68.0, 1080.25, 22.0 ],
					"text" : "route collapse dump bang marker markers xy_pairs"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 146.800001502037048, 29.599999904632568, 39.0, 22.0 ],
					"text" : "dump"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"bwcompatibility" : 80105,
					"defaultmarkername" : "",
					"defaultnoteslots" : [ "null" ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-16",
					"legend" : 0,
					"loop" : [ 0.0, 1000.0 ],
					"markercolor" : [ 0.082, 0.553, 1.0, 1.0 ],
					"markersfontsize" : 0.0,
					"maxclass" : "bach.roll",
					"numinlets" : 6,
					"numoutlets" : 8,
					"numvoices" : 1,
					"out" : "nnnnnnnn",
					"outlettype" : [ "", "", "", "", "", "", "", "" ],
					"padafterclef" : 22.0,
					"patching_rect" : [ 246.875, 477.0, 465.052356020942398, 101.21875 ],
					"pitcheditrange" : [ "null" ],
					"presentation" : 1,
					"presentation_rect" : [ -24.75, 20.193267497610538, 469.052356020942398, 125.218750000000014 ],
					"preventedit" : [ "notes" ],
					"showborder" : 0,
					"showclefs" : 0,
					"showscrollbar" : 0,
					"showslotlabels" : 0,
					"showslotlegend" : 0,
					"showtails" : 0,
					"stafflines" : [ 0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"versionnumber" : 80900,
					"voicenames" : [ "[", "]" ],
					"voicespacing" : [ 0.0, 17.0 ],
					"whole_roll_data_0000000000" : [ "roll", "[", "slotinfo", "[", 1, "[", "name", "velocity envelope", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 2, "[", "name", "slot function", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 3, "[", "name", "slot intlist", "]", "[", "type", "intlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 4, "[", "name", "slot floatlist", "]", "[", "type", "floatlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 5, "[", "name", "slot int", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 6, "[", "name", "slot float", "]", "[", "type", "float", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 7, "[", "name", "slot text", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 8, "[", "name", "slot filelist", "]", "[", "type", "filelist", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080213504, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 9, "[", "name", "slot spat", "]", "[", "type", "spat", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076101120, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 10, "[", "name", "slot llll", "]", "[", "type", "llll", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 11, "[", "name", "slot 11", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 12, "[", "name", "slot 12", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 13, "[", "name", "slot 13", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 14, "[", "name", "slot 14", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 15, "[", "name", "slot 15", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 16, "[", "name", "slot 16", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 17, "[", "name", "slot 17", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 18, "[", "name", "slot 18", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 19, "[", "name", "slot 19", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 20, "[", "name", "dynamics", "]", "[", "type", "dynamics", "]", "[", "key", "d", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 21, "[", "name", "lyrics", "]", "[", "type", "text", "]", "[", "key", "l", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 22, "[", "name", "articulations", "]", "[", "type", "articulations", "]", "[", "key", "a", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 23, "[", "name", "notehead", "]", "[", "type", "notehead", "]", "[", "key", "h", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 24, "[", "name", "annotation", "]", "[", "type", "text", "]", "[", "key", "t", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 25, "[", "name", "slot 25", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 26, "[", "name", "slot 26", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 27, "[", "name", "slot 27", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 28, "[", "name", "slot 28", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 29, "[", "name", "slot 29", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 30, "[", "name", "slot 30", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "]", "[", "commands", "[", 1, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 2, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 3, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 4, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 5, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "]", "[", "groups", "]", "[", "markers", "]", "[", "midichannels", 1, "]", "[", "articulationinfo", "]", "[", "noteheadinfo", "]", "[", 0, "]" ],
					"whole_roll_data_count" : [ 1 ],
					"zoom" : 357.5
				}

			}
, 			{
				"box" : 				{
					"bwcompatibility" : 80105,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-19",
					"maxclass" : "bach.slot",
					"numinlets" : 1,
					"numoutlets" : 3,
					"out" : "nnn",
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 930.375, 450.976190567016602, 427.425392670157066, 101.21875 ],
					"presentation" : 1,
					"presentation_rect" : [ 2.94371727748694, 26.0, 427.425392670157066, 101.21875 ],
					"showborder" : 0,
					"showslotlabels" : 0,
					"showslotlegend" : 0,
					"showslotnumbers" : 0,
					"slotfunctionptradius" : 0.6,
					"textcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"versionnumber" : 80900,
					"whole_uislot_data_0000000000" : [ "slot", "[", "slotinfo", "[", 1, "[", "name", " ", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1083064320, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 2, "[", "name", "slot function", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 3, "[", "name", "slot intlist", "]", "[", "type", "intlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 4, "[", "name", "slot floatlist", "]", "[", "type", "floatlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 5, "[", "name", "slot int", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 6, "[", "name", "slot float", "]", "[", "type", "float", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 7, "[", "name", "slot text", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 8, "[", "name", "slot filelist", "]", "[", "type", "filelist", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 9, "[", "name", "slot spat", "]", "[", "type", "spat", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076101120, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 10, "[", "name", "slot llll", "]", "[", "type", "llll", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 11, "[", "name", "slot 11", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 12, "[", "name", "slot 12", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 13, "[", "name", "slot 13", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 14, "[", "name", "slot 14", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 15, "[", "name", "slot 15", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 16, "[", "name", "slot 16", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 17, "[", "name", "slot 17", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 18, "[", "name", "slot 18", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 19, "[", "name", "slot 19", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 20, "[", "name", "dynamics", "]", "[", "type", "dynamics", "]", "[", "key", "d", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 21, "[", "name", "lyrics", "]", "[", "type", "text", "]", "[", "key", "l", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 22, "[", "name", "articulations", "]", "[", "type", "articulations", "]", "[", "key", "a", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 23, "[", "name", "notehead", "]", "[", "type", "notehead", "]", "[", "key", "h", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 24, "[", "name", "annotation", "]", "[", "type", "text", "]", "[", "key", "t", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 25, "[", "name", "slot 25", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 26, "[", "name", "slot 26", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 27, "[", "name", "slot 27", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 28, "[", "name", "slot 28", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 29, "[", "name", "slot 29", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 30, "[", "name", "slot 30", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "]", "[", "slots", "]" ],
					"whole_uislot_data_count" : [ 1 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 855.622226672646775, 402.976190567016602, 49.0, 22.0 ],
					"text" : "dump 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 222.875, 392.0, 85.0, 22.0 ],
					"text" : "dump markers"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 222.875, 165.0, 651.747226672646775, 22.0 ],
					"text" : "t b b"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 548.748613336323388, 757.5, 256.375, 757.5 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"source" : [ "obj-102", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"source" : [ "obj-110", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-110", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
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
					"destination" : [ "obj-19", 0 ],
					"midpoints" : [ 865.122226672646775, 437.5, 939.875, 437.5 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 702.427356020942398, 593.0, 840.0, 593.0, 840.0, 396.0, 865.122226672646775, 396.0 ],
					"order" : 0,
					"source" : [ "obj-16", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"order" : 1,
					"source" : [ "obj-16", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 702.427356020942398, 593.21875, 727.401178010471199, 593.21875, 727.401178010471199, 385.0, 232.375, 385.0 ],
					"order" : 2,
					"source" : [ "obj-16", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-2", 1 ]
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
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 1 ],
					"midpoints" : [ 589.248613336323388, 319.25, 373.5, 319.25 ],
					"order" : 4,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 2 ],
					"midpoints" : [ 589.248613336323388, 378.0, 382.0, 378.0 ],
					"order" : 3,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 2 ],
					"midpoints" : [ 589.248613336323388, 319.25, 528.0, 319.25 ],
					"order" : 1,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 1 ],
					"midpoints" : [ 589.248613336323388, 320.500000476837158, 675.0, 320.500000476837158 ],
					"order" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 4 ],
					"midpoints" : [ 589.248613336323388, 357.0, 772.0, 357.0, 772.0, 654.0, 383.375, 654.0 ],
					"order" : 2,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"order" : 1,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"midpoints" : [ 256.375, 799.0, 212.0, 799.0, 212.0, 243.0, 322.0, 243.0 ],
					"order" : 0,
					"source" : [ "obj-27", 0 ]
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
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"midpoints" : [ 1116.875, 437.476190567016602, 939.875, 437.476190567016602 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"midpoints" : [ 409.25, 111.0, 232.375, 111.0 ],
					"source" : [ "obj-4", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-4", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-4", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-4", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"midpoints" : [ 55.5, 100.75, 1344.089286009470698, 100.75 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"midpoints" : [ 763.0, 117.0, 260.875, 117.0 ],
					"source" : [ "obj-4", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"midpoints" : [ 586.125, 117.0, 260.875, 117.0 ],
					"source" : [ "obj-4", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-43", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-102", 0 ],
					"order" : 2,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"order" : 1,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-84", 0 ],
					"midpoints" : [ 322.0, 286.000000476837158, 488.0, 286.000000476837158 ],
					"order" : 0,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 1 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"midpoints" : [ 939.875, 196.5, 508.248613336323388, 196.5 ],
					"order" : 1,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"order" : 0,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"midpoints" : [ 1116.875, 196.5, 508.248613336323388, 196.5 ],
					"order" : 1,
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"order" : 0,
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-110", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"source" : [ "obj-62", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"source" : [ "obj-64", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"midpoints" : [ 322.0, 455.0, 256.375, 455.0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-65", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 1 ],
					"source" : [ "obj-65", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 1 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-7", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 291.4375, 272.75, 232.375, 272.75 ],
					"source" : [ "obj-7", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-78", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 508.248613336323388, 254.0, 865.122226672646775, 254.0 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-78", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 1 ],
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-93", 0 ],
					"midpoints" : [ 939.875, 816.0, 176.500000000000114, 816.0 ],
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"source" : [ "obj-98", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "bach.<=.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.args.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.clip.maxpat",
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
				"name" : "bach.depth.mxo",
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
				"name" : "bach.flat.mxo",
				"type" : "iLaX"
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
				"name" : "bach.lt.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.mapelem.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.maximum.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.minimum.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
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
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
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
				"patcherrelativepath" : "../../../bach/patchers",
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
				"name" : "bach.sieve.maxpat",
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
				"name" : "bach.slot.mxo",
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
				"name" : "bach.wrap.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bpatcher-resize-gizmo.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../utilities",
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
				"name" : "erase.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "moz.ezbpf2slot-XY.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.ezbpf2slot.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../utilities",
				"type" : "JSON",
				"implicit" : 1
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
				"name" : "MOZ-title",
				"default" : 				{
					"fontname" : [ "Andale Mono" ],
					"fontsize" : [ 22.062094355029235 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
