{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 79.0, 954.0, 590.0 ],
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
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 266.0, 40.33333300000001, 54.0, 22.0 ],
					"text" : "deferlow"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 266.0, 11.333333333333371, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.699999999999999,
					"hidden" : 1,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 818.358156028368739, 40.33333300000001, 114.0, 18.0 ],
					"text" : "cluster-eval-window-tutorial"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.725190243023524,
					"hidden" : 1,
					"id" : "obj-99",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 761.0, 9.33333300000001, 125.0, 28.0 ],
					"text" : "moz.resolution-helpfiles-moz 954.262195 589.966543"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.699999999999999,
					"hidden" : 1,
					"id" : "obj-75",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 761.0, 40.33333300000001, 56.0, 18.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 242.5, 100.0, 69.0, 22.0 ],
									"text" : "clefs G Alto"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 343.0, 102.0, 102.0, 22.0 ],
									"text" : "clefs G Alto Tenor"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 242.5, 70.0, 220.0, 22.0 ],
									"text" : "sel 2 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 242.5, 40.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80102
									}
,
									"text" : "bach.length"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 242.5, 9.666666666666629, 50.0, 22.0 ],
									"text" : "r voices"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 50.0, 100.0, 116.5, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 174.0, 68.0, 35.0 ],
									"text" : "clefs G Alto Tenor"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-19",
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
									"id" : "obj-21",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 147.5, 363.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-19", 0 ]
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
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 1 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 1 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-6", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 9.0, 425.795723532131319, 43.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p clefs"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 188.5, 286.228571428571399, 37.0, 20.0 ],
					"text" : "STOP"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"id" : "obj-24",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 165.0, 11.333333333333371, 76.0, 20.0 ],
					"text" : "3 voices"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"id" : "obj-23",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 36.0, 11.333333333333371, 76.0, 20.0 ],
					"text" : "2 voices"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"id" : "obj-12",
					"linecount" : 27,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 289.358156028368739, 72.0, 642.0, 371.0 ],
					"text" : "An approximation of 16th century vocal polyphonic style\n\nThis example is a relatively free approach to 16th century vocal polyphony. \nWhile species counterpoint constitutes a very detailed description of the style, \nthis is a more \"rough\" experiment to generate music that resembles the style.\n\nTraditionally, pitch within this style has been defined by theorists in great detail, while rhythm is more up to the composer's intuitive understanding of the style. \nIn this example, the rhythm is restricted by a Markov chain rule, based on an analysis of a melodic line by Giovanni Palestrina (see inside the sub-patch \"markov-chain-rule).\n\nTwo more rules restrict how the rhythm relates to the meter (see inside the sub-patch \"rhythm-meter-rules)\".\n\nFive rules restrict how melodic movements relate to rhythm (see inside the sub-patch \"melodic rules\").\n\nFinally two rules restrict the relation between the voices: voice 1 follow voice 0 in a canon in fifths, and the harmonic relationship betwen the two voices is based on major and minor triads.\n\nYou can generate 2 or 3 voices (with the 2 top voices in canon). It typically takes the engine a few seconds to find a score, but occasionally slightlyt longer.\n\nNote that strangely the 3-voice Palestrina example is often faster to calculate than \nthe 2-voice version. This might have to do with the inherent limitations of the harmonic\nstructure in that context (rules and domains)."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 104.0, 477.0, 222.0 ],
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
									"id" : "obj-76",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 391.5, 160.666666666666629, 65.0, 22.0 ],
									"text" : "s harmony"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-75",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 278.5, 109.0, 97.0, 22.0 ],
									"text" : "model (4 7) (3 7)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 93.0, 105.0, 77.0, 22.0 ],
									"text" : "model (4) (3)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "bang" ],
									"patching_rect" : [ 190.0, 76.0, 107.0, 22.0 ],
									"text" : "t b b b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "bang" ],
									"patching_rect" : [ 17.0, 76.0, 95.0, 22.0 ],
									"text" : "t b b b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 55.0, 105.0, 29.5, 22.0 ],
									"text" : "0 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 234.0, 109.0, 35.0, 22.0 ],
									"text" : "0 1 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 323.5, 160.666666666666629, 52.0, 22.0 ],
									"text" : "s voices"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-86",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 17.0, 15.999999666666625, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-87",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 190.0, 15.999999666666625, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-88",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 17.0, 178.666666666666629, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-89",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 190.0, 178.666666666666629, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"midpoints" : [ 102.5, 141.666666666666629, 401.0, 141.666666666666629 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"midpoints" : [ 243.5, 154.666666666666629, 333.0, 154.666666666666629 ],
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"midpoints" : [ 64.5, 150.666666666666629, 333.0, 150.666666666666629 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-73", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-73", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"source" : [ "obj-74", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 0 ],
									"source" : [ "obj-74", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"midpoints" : [ 288.0, 145.666666666666629, 401.0, 145.666666666666629 ],
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"source" : [ "obj-86", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"source" : [ "obj-87", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 9.0, 40.33333300000001, 149.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p init"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 79.0, 1258.0, 555.0 ],
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
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 84.0, 308.0, 50.0, 22.0 ],
									"text" : "r voices"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 375.0, 426.5, 83.0, 22.0 ],
									"text" : "lisp.expr not x"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 375.0, 389.0, 151.0, 22.0 ],
									"text" : "lisp.expr and x y"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 375.0, 314.0, 151.0, 22.0 ],
									"text" : "t b b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 507.0, 348.5, 123.0, 22.0 ],
									"text" : "lisp.expr minusp rtm2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 375.0, 348.5, 123.0, 22.0 ],
									"text" : "lisp.expr minusp rtm1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 375.0, 456.5, 124.0, 22.0 ],
									"text" : "lisp.lambda rtm1 rtm2"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-1",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.r-one-engine.maxpat",
									"numinlets" : 5,
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 15.0, 347.0, 294.0, 97.0 ],
									"varname" : "bp64920192331",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Andale Mono",
									"id" : "obj-2",
									"linecount" : 8,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 507.0, 73.7451171875, 743.0, 114.0 ],
									"text" : "These two rules are bypassed by default. Click on the \"bypassed\" button to re-enable them \nif you want to try them out. They might make it slightly harder to find a solution.\n\n- the first rule forbids immediate (local) repetitions of pitches\n\n- the second rule forbids 'spaced' repetitions of pitches (every 2 variables)\n\nThese rules should minimize the proliferation of repetitions and interleaved repetitions in the score."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 183.0, 15.000000187500007, 186.0, 22.0 ],
									"text" : "loadmess rule_parameter pitches"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 63.0, 15.000000187500007, 111.0, 22.0 ],
									"text" : "loadmess bypass 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 340.0, 230.7451171875, 143.0, 22.0 ],
									"text" : "#'(lambda (a b c) (/= a c))"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-82",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.r-one-engine.maxpat",
									"numinlets" : 5,
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 15.0, 193.0, 294.0, 97.0 ],
									"varname" : "bp5204973883",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 340.0, 119.7451171875, 135.0, 22.0 ],
									"text" : "#'(lambda (a b) (/= a b))"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-65",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.r-one-engine.maxpat",
									"numinlets" : 5,
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 15.0, 82.0, 294.0, 97.0 ],
									"varname" : "bp495601275217",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-83",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 15.0, 15.000000187500007, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-84",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 15.0, 507.259277187499947, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-10", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 1 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"order" : 1,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"order" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"order" : 1,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"order" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 4 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 0 ],
									"source" : [ "obj-65", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-7", 0 ]
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
									"destination" : [ "obj-65", 4 ],
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 4 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-82", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-83", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 9.0, 235.586739700423095, 91.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p optional-rules"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 139.0, 9.333333333333371, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 79.0, 614.0, 782.0 ],
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
									"id" : "obj-5",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 318.0, 484.0, 249.0, 35.0 ],
									"text" : "[ 43 ] [ 45 ] [ 47 ] [ 48 ] [ 50 ] [ 52 ] [ 53 ] [ 55 ] [ 57 ] [ 59 ] [ 60 ] [ 62 ] [ 64 ] [ 65 ] [ 67 ]"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-3",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.voice-domain.maxpat",
									"numinlets" : 3,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 18.0, 545.0, 233.0, 174.0 ],
									"varname" : "bp262578392728",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 330.0, 291.400007784366721, 249.0, 35.0 ],
									"text" : "[ 48 ] [ 50 ] [ 52 ] [ 53 ] [ 55 ] [ 57 ] [ 60 ] [ 62 ] [ 64 ] [ 65 ] [ 67 ] [ 69 ] [ 72 ] [ 74 ] [ 76 ] [ 77 ]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 346.0, 59.400007784366721, 249.0, 35.0 ],
									"text" : "[ 55 ] [ 57 ] [ 59 ] [ 60 ] [ 62 ] [ 64 ] [ 67 ] [ 69 ] [ 71 ] [ 72 ] [ 74 ] [ 76 ] [ 79 ] [ 81 ] [ 83 ] [ 84 ]"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-23",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 736.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-10",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.voice-domain.maxpat",
									"numinlets" : 3,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 18.0, 354.0, 233.0, 174.0 ],
									"varname" : "bp64386310589",
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
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 18.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 60.583331942558289, 101.0, 54.0, 22.0 ],
									"text" : "deferlow"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 125.0, 112.400007784366721, 69.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80102
									}
,
									"text" : "bach.group"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-19",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 125.0, 72.400007784366721, 177.0, 22.0 ],
									"text" : "-1/2 1/2 3/4 1/4 3/8 1/8 1 -1/4 -1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 125.0, 7.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-96",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.voice-domain.maxpat",
									"numinlets" : 3,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 18.0, 159.0, 233.0, 174.0 ],
									"varname" : "bp834945450383",
									"viewvisibility" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 2 ],
									"midpoints" : [ 339.5, 339.700003892183361, 241.5, 339.700003892183361 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 1 ],
									"order" : 2,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"order" : 1,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 1 ],
									"order" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 2 ],
									"midpoints" : [ 355.5, 126.200003892183361, 241.5, 126.200003892183361 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 2 ],
									"midpoints" : [ 327.5, 531.5, 241.5, 531.5 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 134.5, 54.700003892183361, 339.5, 54.700003892183361 ],
									"order" : 1,
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"midpoints" : [ 134.5, 64.5, 70.083331942558289, 64.5 ],
									"order" : 4,
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"midpoints" : [ 134.5, 50.200003892183361, 134.5, 50.200003892183361 ],
									"order" : 3,
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 134.5, 41.700003892183361, 355.5, 41.700003892183361 ],
									"order" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"midpoints" : [ 134.5, 66.0, 327.5, 66.0 ],
									"order" : 2,
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-96", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "MOZ-numint",
								"default" : 								{
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"fontname" : [ "Menlo Regular" ],
									"fontsize" : [ 17.0 ],
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
					"patching_rect" : [ 139.0, 74.0, 118.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p domains_3_voices"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.090196078431373, 0.074509803921569, 0.074509803921569, 1.0 ],
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 44.0, 79.0, 1201.0, 658.0 ],
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
									"fontface" : 2,
									"fontname" : "Menlo Regular",
									"id" : "obj-4",
									"linecount" : 7,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 52.725000000000023, 510.0, 464.0, 104.0 ],
									"text" : "The rule on the bottom is exactly the same, but with\nsome manual tweaking of the lambda code generated by the\nce::test-seq-follows-markov-chain?, stored as is in a bach.reg.\nIn some cases this version might be significantly faster...\n\nYou can try toggling one version or the other \nwith the little abstraction 'invert-bypass' on top."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 5,
											"revision" : 4,
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
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 55.0, 100.0, 29.5, 22.0 ],
													"text" : "!- 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 139.5, 63.0, 22.0 ],
													"text" : "bypass $1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 117.0, 139.5, 63.0, 22.0 ],
													"text" : "bypass $1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-16",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 80.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-19",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 221.5, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-20",
													"index" : 2,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 117.0, 221.5, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
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
													"destination" : [ "obj-12", 0 ],
													"order" : 0,
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"order" : 1,
													"source" : [ "obj-16", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 127.75, 99.0, 90.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p invert-bypass"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 127.75, 38.5, 70.0, 22.0 ],
									"text" : "loadmess 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 127.75, 69.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-3",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.r-one-engine.maxpat",
									"numinlets" : 5,
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 31.0, 397.0, 294.0, 97.0 ],
									"varname" : "bp5023551838",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 408.600000000000023, 59.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 6,
									"outlettype" : [ "", "", "", "", "", "" ],
									"patching_rect" : [ 408.600000000000023, 222.0, 205.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80102
									}
,
									"text" : "bach.beatunbox"
								}

							}
, 							{
								"box" : 								{
									"autofit" : 1,
									"data" : [ 63465, "png", "IBkSG0fBZn....PCIgDQRA...DL..DPAHX....fVLMnh....DLmPIQEBHf.B7g.YHB..f.PRDEDU3wI68d8bbedc++u1duuXWrnWHJrB1EIsDkrhrjcbbbajrchKYRex89tbwu3j7WPlI233jLSxjIeuvN1Qw1JVR1pYIRQJRPBRBPzKKvBfs26696Blyi9.DRQEKKKHQclACAIQYKOmmS6862GckKWtMeD1Z29c9omNc5tqesxm2rYS.Pud8nSmt65WeiFMnc61XvfAzqWO.zpUK.vrYyztcaZ0pEMa1Dc5zgQiFUec0pUS8yT6Oe4OkeN+pZ2ume2ue9FMZ78zu+Ons62ye.9v8yv2mr61KVMZz.c5zgd85wnQipC70pUCCFL.f5+GXGNCMa1T88avfAZ2tMMZzflMap9d28uu6my6Ga+5y9Xmf+G6dc3ynQizpUKZ0p0NtQW9Za1ro5.u72kaza2tMVrXAiFMhEKVnc61TudcpToBsZ0Bc5zgISl1wu6c+3P9Y+w16e1C7NA2qPjxma0pU.tqNBxM4lMaF.pToB0qWeGoxjKWNLa1L1saeGoFY1rYLa1LUqVU4vn82s7w62NAZSW3AU6Adm.wtWNCEKVTkFibXsUqVznQC0e5xkKLa1r5qypUqpa3aznAUqVkFMZfd85oYylTsZUpToBVsZUkNzti.s65O9X68O6Admfce3a2oinMOes0DH2pWsZUrYyF.TtbYxlMq5mUsZ0voSmjLYRpWuNACFj.ABfc61UoBINYZ+PJB+t836W21G6n8wNA6vta0EXznQUd7UqVUUCfTbrUqVod85jOedlYlYX1YmkzoSS974IWtbDMZTJTn.1rYi8su8wvCOLgBEhvgCS3vgwiGOpC9RzF850qbDpWu9GTub7.i8wNA+O185F24laNxmOOIRjfToRQoRk..KVrfISlvoSm31sapToByN6rr7xKSgBEnRkJTnPA5niNTGpSjHAas0VTudcBEJDCLv.7U+pe0czQoc6P7wNAu+aF+fNb36093e+rZ0psiVZJeuZS6vfACTrXQzqWOISljFMZvFarAEJTP82qVsp5v9MtwMnZ0pztcaxjICm7jmjkVZIVe80QmNc32ueLZzHNb3f74ySylMod85JGn74yiQiFYkUVg3wiSWc0ECMzPbricL762OFLXfLYxfUqVoZ0pX0pUzoSGMZz.3NydnQiFTpTIra2965Wq09Z4tmCwc6+a2e9dQ69cN3d8+qMcScUpT4CzFR+9sSfNc5nYyl63MasE3VudcBDH.at4ljHQBt90uNlMalqe8qyxKuLd73gFMZPxjIwfACXxjI0gwzoSS0pUY3gGlM2bSZzngpPWoVAYVBxyivgCShDInVsZDLXPZ2tM4ymmToRwAO3A4jm7j7Y9LeF5omd1QA050qWUncqVsvhEKXwhEJWt765W+ta1G0cBd278+Q9zgJWtLVrXAa1ro5SubvxrYyTqVMpVsJKrvBbyadS9I+jeB974i74yiUqVYokVhfAChGOdnUqVjOedJVrnZpuczQGXvfAkCh76nc61X1rY73wC25V2hfACR4xkYs0VCmNchMa1Hc5zpHGd73ASlLw0t10vrYy7I+jeR0WWiFMTyZPud8TpTIpWuNVrX4C5Wd+Hg8Qdm.GNbnJbsUqVXvfArXwhJECc5zw2+6+84e9e9eFylMiOe9n6t6l0WecxkKGG3.GfToRQlLY1Q6LaznAlLYBiFMpl9asZ0T2R61saBDH.4xkiwGebFZng31291rzRKQqVsvqWupCxSO8zDIRDN8oOM.L+7ySkJU3YdlmASlLohbI+dzoSGsZ0hJUp7A4Ksejw9He5P1rYSk1ibyY0pUYokVhUWcUdoW5k3V25VjMaV5ryNwqWujMaVpWuNtb4B2tcqJHVlxqLzLqVsppunQiF3zoSZznAVrXA61syHiLBkKWlwGeblbxI4BW3BzYmcRlLYnd853vgCRkJEd85E61sS4xkIb3vr+8ueJTn.G6XGiicriga2tUCVqb4xnSmNLa1LFLXPM852Mu9c2rONcnG.RGJe97p2HSmNMqrxJbkqbEtvEt.yM2bphO850qJeaIG9b4xQylMIPf.Lv.CP73wUs6rYylztcaVc0UA.+98iCGNHYxjjOedLXv.d85kibjiPiFMnPgBDJTHBFLHoSmF3NSX1sa2phla1rIIRjfKdwKppwHSlLbfCb.FYjQTNwxAWAORer8dy9HejflMaRtb4Xs0ViYlYFld5oY4kWljISRkJUniN5XGoy3vgCLa1LFMZjZ0pwniNpZBuwhECylMSjHQnXwhjOedZ2tMQhDgHQhPgBEXlYlQULdGczAVsZEmNcxoO8owrYy7Zu1qwa7FuANb3Pg9TAWQgBEBGNbfWudIWtbjJUJLa1LiLxHbhSbBFYjQTcdpQiFpTxd2952cy93HAO.DI3EewWjEWbQt8suMoSmFCFLfQiFwoSmpC9FLXPkKeoRknc61ToRELXv.qrxJzrYSb61MNc5jZ0pwVasEEKVDa1rgYylYrwFiN6rStvEt.YxjggGdXzqWOkKWVgYH+98SgBEHPf.bfCb.JTn.5zoirYyRqVsnToR3xkKhGONau81DJTHVas0TQWhEKFOzC8Pb7ieb5ryNUXO5imiv6caOuSv8qOuxg2Z0pQiFMvpUqTpTIVZokHVrX7S9I+DVe80wnQi32uezqWO1rYivgCyRKsDoSmF61sq.Em.XNAVCG9vGlDIR..8zSOb0qdUrZ0J4ymGa1rQO8zC80We31saxkKGSLwDTtbY07AZ2tM80We.2oSUMZzfAGbPt10tlZNEm7jmTk9SpTo3bm6bzWe8Q+82OYylkacqawRKsDlLYhM1XC989898Ty4nUqVTsZUEZW850K0pUi1saSwhEwiGOJP8Is2sb4xXvfAb3vw8sEqeX2zB.Qs.ST9650qGC+k+k+k++8AziuesXRZAhCfQiFYt4liW60dMtwMtAEJTfM2bS750K50qmd6sWZ1rIqs1Z.nJ1UZ4ozAH61syPCMDc1YmLxHivgO7gQmNcrwFanPApf6mxkKy5quNOzC8PjKWNpVsJ986m3wiS5zowlMaXwhEhFMJCLv.TsZUhEKF1sam3wiyxKuL1rYCGNbvAO3A4vG9vzc2cyQO5QIYxjJG5DIRfSmNoXwhL3fCha2tQud8X0pUrYylZJyxgbAxGxbMLZznpSShSjTX8GVSG59Y2KLXoEaX64iDb+LqVsR5zowqWuX1rYtzktDu9q+5r7xKylatIvcJ.0rYy3xkKrXwBqu95TudcpUqFVsZkb4xoXPkzue850ie+9YhIlfRkJwFarA23F2f74yS4xkUvgPbhFZngTSm9gdnGhe9O+miQiFYhIl.a1rwO8m9SwiGODNbXpVsJG8nGkkWdY1291GEKVDylMyfCNHm9zmls2daJWtL25V2hW3EdAb5zI80WebfCb.xmOOSN4jjISFBGNLFMZD2tcSO8zC1saWMbOiFMp32fbPuYylXznQLYxjhnOOHYZiBn8e6C8QBDHO3wiGJVrH+S+S+Sb0qdUb5zIUpTgb4xQ61swkKW3ymORkJEISlDe97wVasENb3fRkJoJlUlDq33biabCUZTMa1DylMSpTonRkJpacsa2tpH1ibjiPoRkn+96mie7iiYyl44e9mmzoSiISlHc5zbpScJb4xEc0UWTrXQ5niN3XG6XzUWcgYyloRkJ7hu3KxBKr.81au32ue1XiMnd85r1ZqgACFX94mmadyaxxKuLyN6rr5pqphRoWudb61sZh0ZSIPKDs0df3ixQBteHE9C8NAMZzPUf3q+5uNuxq7JjISFLYxD0pUiRkJgWudQmNcTpTIJTn.QhDg74yqt41sa2DJTHrYylp2+4xkiJUpnRyIa1rL2byQ850Uvn1kKWzpUKE9hLZzH8zSOXylM1+92OVsZk27MeSRjHAMZzfN5nC1XiMXqs1R0NzpUqxi9nOJ25V2hvgCyjSNIqs1Zzau8RO8zC.DOdbLZzHQiFEKVrPgBEHQhDDOdbpVsJ4ymeGXSRdrznQC73wiJMHsrhSpGQaZAh8QIm.wta0C.2442G5cBj1K9rO6yxO5G8iTX8eqs1BqVsRqVsvkKWztcaRmNMczQGbfCb.lbxIoiN5..NvAN.6e+6mt6taLZzHYxjgxkKqXN1PCMDUqVE.5s2dwgCGjHQBZ0pEFMZjlMahWudoUqVzUWcwgO7gY94mmToRoJ9bhIlfkWdYb4xENc5jUWcUFbvA43G+3nSmN1ZqsvfACbyadSUAw6e+6macqawFargZl.oRkRkFijdjQiFwnQijMaVxlMKISlD3N063ymOU8ABIfjBBEGC3itNAOPDI.folZJ99e+uOqt5pLv.Cfd85Ia1r32ueENdzqWOiN5np+MoPZGNbvQO5QYngFhAGbPzqWOqt5ppCc974CmNcpJD0lMaTpTI74yGiM1Xr7xKiACFHYxj7LOyyvoN0oXyM2Dc5zgc61oRkJpVZ1UWcwi7HOB6e+6mm5odJN0oNkJpRkJUn6t6Vg4nnQix7yOOYxjgjISxVasECO7vznQC5omdTXdRxuuPgBr5pqx1auMYylUQ4S61siQiFUD+QqS.vCTQBtW+8Ozyh6M2bSd4W9kIUpTL1Xige+9wjISDHP.E9fJVrHsZ0hm5odJb61MW8pWkScpSolFrWudwlMazc2cSu81qpaNvcNDL2byQlLYTDjoqt5hie7iiEKV3Lm4LXxjI95e8uNm4LmgLYxn.m25quNUqVEGNbvQNxQ3Ydlmgd5oGFarwHXvfTpTIb61MYxjgwGebVc0UId73p5O73wCUpTQ0R2BEJfACFXqs1hN6rSJTn.whEirYyhd85IPf.zQGcPqVs3l27l7S+o+T1XiMHa1rpnZ6VELdPxtWsaeOe2gDIJQPCpDR2tc6TrXQ9Q+neDKt3hDJTHJVrH0qWms1ZKpTohJuciFMRvfAIa1rr81aSf.And85pCbkJUBOd7P97440dsWSkdw9129PmNcLv.CP3vg4vG9vJljs0VagQiFYrwFiO4m7SRO8ziB.dBei6s2dUycPxGMTnPp+tfWngGdXJUpDG8nGk0VaMU2oLZzHISlTkhmACFX6s2lt5pKVbwEwlMa3ymOJUpj54a5zowue+nSmNRlLI+i+i+i7m7m7mnlLtSmNQmNcpnH2sND8qSJc99cjj62OesQ5taesMa1buuSf7jPaKLg67jZwEWjEVXA5niNnPgBX2tcxmOOtb4hgFZH750KoSmljISRlLYX80WW00mXwhge+9YfAFfQGcTzoSGKu7xDKVLLXv.82e+zYmcxINwIvoSmXwhEEuDzoSGtc6F.5ryNUG7kCtRJHVsZUk9wtg+g1bU862uBgqG6XGiKcoKgc61U8+uRkJL1XiwryNKc0UWL2byga2tIYxjpHVoRkhN6rS5pqtHUpTDMZTFbvAIUpT7i+w+XrZ0JiM1XptfIoL5vgiei8d4dUaOuSfV84QNn.P8504RW5RLwDSfUqV4m+y+43xkKJUpjJWeiFMx3iOtpvSg5iRu5kaWEGpEWbQb61M6e+6mQGcT750KUpTA850S0pUUPrvoSm30qW5t6tUJKg7XRP3o7w8KkCoMlRzm95qOdoW5kToDIcvJe9730qWRlLINb3PMU3xkKqPjpSmNISlLzrYSb5zop1fqe8qSf.AnZ0pbxSdRb3vwNDHfGzs87NAxslBf1jATkLYRt10tF0pUSkGbu81KUpTgFMZfWudYvAGjRkJgSmNITnPL6rypHjhzcjgGdXLYxDas0VXxjIN8oOMiM1XDIRj65zTkgoIscT5hjvk.YRrBhT0xjMwzN0Va1rQhDIPmNcToRERmNMACFTgNUgvNKt3hL3fCRgBEnyN6j0WecLa1rROj74yGkKWlb4xgISlHTnPjMaV5u+9oc61r3hKR4xkwiGObzidTUw8eTG1D2OSmNc68KLd2svSHe9BKr.arwFp1eJs2zue+JBqHfbS5e9ANvATr3Rlx5gNzgvgCGX2tcFd3g4nG8n3ymO0DUkCYhiX61soPgBDOdb1byM2QumkazkawkApIenUEIz9uA2IhPsZ0Hc5zznQChDIBwhES8bwnQirwFafMa1HYxj3wiGLa1Lc2c2JrIs81aSe80mBBE6ae6CqVspJ1Od737pu5qRlLY.P85xC51GZhDHfQSRA35W+5.nHZtba9XiMFCO7vparkznRkJEG5PGhDIRP+82u5VSIxR2c2MczQG31saJVrHFLXPkdkDQP5thjBkjZlVnVH2xKn6T3F78JZPsZ0vqWu.2YlGtb4h0WecdrG6wTOGkT2DjsVrXQBEJDlLYhHQhPsZ0TfyyrYyze+8SjHQnQiFLyLyPtb4vkKW3wiGt10tFm3DmfyctyQpTodfOknOTDI.d6a+ExwWrXQlZpovqWur7xKq5i+92+9wiGOTpTIrYyFtb4BqVstiNx3xkKEBPEGmlMaxHiLBd85kRkJox+WJhVNHKsUrd856POREGCsvSPJLV6s969Csh5UkJUvkKWpGqUpTASlLoRcKQhDXwhEJVrHNc5DCFLnlaQe80Gm4LmgO4m7SR61soiN5fQGcTkFGswFavFarAkJUhhEKxEu3EUS99isOjLm.IR.fR02Ve80wsa2pBf2Zqsvtc6JNEKsUzsa2pAPYznQN3AOHqt5p3wiGlXhIT7LPPjYiFMvgCGXylMUJURwm50qGSlLoJ5U5Xj7Q850UNPva2QKsoxs6V0Y1rYxmOuRhUrZ0J8zSOb6aearXwhhDMRzEszEMQhDTpTIFZngnu95iSe5SyfCNHMZzfs1ZKN+4OOepO0mhPgBQrXwTnU85W+5L+7y+a32E26Z22IFu6bX28GueKSf4ymWcfS57RrXw3JW4JjKWNd3G9gwpUq30qWUO4sZ0phr6sa2V0O8N6rSzqWOC7+PUxs1ZKN3AOHlLYhxkKid85wtc6pt8H2vKJKs15CDGSsZTp179gcp8+2KsFU9YX2tcLXv.Yylk0VaMRkJEKrvBr0VaQvfAIWtbTudcZ0pEczQGX2tcFe7wIc5zXznQ1+92OFMZjN6rSELK1d6sYhIl.SlLwMu4MIXvfTqVMZ1rIoSmlCbfCfSmNUQ4zVai7X990G92oyFeXYZy64iD31saLYxDUqVkBEJPgBEHUpTpajE.okISFUgnxs9ZqmP9SmNche+9Y3gGlwGeb0s5h.coEgkue6fC6bYdTpTILYxD1rYSwI4.ABPylMUfoa7wGG.VYkUX4kWls2daVe804BW3BXvfA5qu9HXvfJkvdqs1h.ABfYylYokVBa1rgQiF4Mey2jnQipjIdAeQRpevaOSlOpa64KLVJbEPgLz0VaM0shkKWFiFMR0pUoUqVXxjI0vpZzngJ8AoW+xs5xvtD.noclAva6D798sYZ01zRkJoX7UkJUvoSmL+7yic61oPgBru8sO5t6to+96mkWdYRkJEgCGls1ZKxmOOCO7vztcaFarwnXwh7xu7KiWudU0qzc2cqDQft6tat10tF81auX2tcra2N50qW85pDE7AANGrmORfACFTcZwpUqjJUJld5oU8+uiN5PozCx.mzJGIZI9hHchxAAA5BRQxZ0UneSFIPqit3HKsBc7wGGWtbwgO7gwiGO32ueZ2tMG7fGTMyCoe+u5q9pjHQBb3vAlLYhAFX.9Y+relp9hjISpjJlae6aqhDHuNsa3U+fxBBYO+yRo3RQJTlYlY31291Tudc5omdvqWu3wiGU8.6Fu7ZGZk1N3znQCpUqlRXc0F5+2DG9ESpiPZCp.yhfACx5quNW7hWjolZJVc0UwrYyL2bywfCNHKrvB7vO7CiEKV3xW9xJm4RkJgEKVn6t6FWtbge+9YpolB61sS1rYId73pHJCN3f20mu+l7Rf8B1d9zgjh1jTdVbwEUfESlhrVXKHaKFo8jxlfQXMlfsmc2lR389Rx6WESxAWXsVwhEU0tHxD43iONqu9573O9iym+y+44m8y9YJNL2c2cia2twue+L8zSuizeFe7w4QezGUI1.ABDfJUpP4xk4a7M9Fph9kthoMhj7X5AAaOej.gL6lLYhBEJPznQUuQK78UaKP0xqVs.dSfbQ0pUUuYKHTU65WRaWR9MQ2Mj7tkGKRu6aznAG4HGgt6tat8suMc0UWzrYSVc0U4jm7jbiabCRkJEW8pWE61syS8TOE+A+A+A3ymO1byMY6s2lEVXArYyFm+7mW0TgN5nCtzktDuwa7Fp1JK0OI0CHoD8wNA6QLSlLgUqVoYylr4laxpqtpZ9.xgUylMqf9f10jT850UXuQjjkBEJnncoTL8t+32joAHPrPf0rn8nkJUhIlXBBFLnRTtxmOOW5RWhW3EdAdrG6wHc5zXwhExkKGu7K+xJrOM3fChISlTvm9pW8pbxSdR5pqtHe97.vu7W9KIVrXX0pU0iAI0QwdPwI39lNz60TDdudfJe9731saZ1rIyN6rJ4JoXwhru8sucfCnpUqpR+Ql.qLoYwQRRqRJhVfigVvuIsKznQi+uv+CbuIqt1tIc2fO8c6y0oSGNb3fBEJnRI4QdjGgDIRvUtxUXfAFPEEbfAFfacqagKWt34dtmCGNbvhKtHwhEib4xQGczAqt5pb7iebb3vA+hewufxkKSe80GoRkB.FXfAvue+JMRJQhDpVnJHVUFH46lBiueu+99czzecbg0d9HABPwDIRQud8Jw1pZ0ppNGIoEIN.UqVkjISRtb4nXwhpNCI37QKTmkzfztcJ28pZ88xK12KG.3sQIpnT150qmzoSS4xkIVrXXwhE5s2dUPitmd5QAW7jISxniNJMZzfYmcVt7kuLqrxJjJUJb4xEiN5nJbSIJdW850IZznnSmNlc1Y2wycw18P+9ntsmuvXov2LYxnj0D2tcuC1fI53u7mxs3B9ej7sk2b0daszMF3s6njV4OWqosVg2syP3d47H+6BTKj9wKPmPz6HAVzd73Qw2gRkJQ3vgoiN5fxkKqt0NZznjNcZZ0pEgCGVoMQBQgLZzHEKVjzoSy.CLf54pL0Z44jzIMQdJ+ntsm2IPXNkQiFIUpTXvfAExNqUqFCLv.XylM0Rz.PMwUsDbQZCpTvmPSSgHLZS0QaaV0N.Mw9UYHZ2qnAx.pDUzSDPXmNchKWtHQhDDJTHEixD0zSTcBwQ1kKWTtbYkrxHRLuMa1X4kWdGJzm750ANvA9eEETdMPhD7wNA6ALgAUlLYRQn7hEKpbN750KkKWVgWdCFLnFdjOe91wxxVa2ejP86dPQhIechiiX2MZR9NYuSpbf7XRHWi76UNDZwhE9c9c9cnXwhbgKbAZ0pEyLyLze+8qfVsPORIsOY2HKKNP2tcSjHQTCEytc632ue1ZqsdfYN.2OaOuSf.k.o.VAjaBn5RlLI0pUib4xQtb4vfAC6nsoh7oKG1ATagdoHPsoAn0YPbDtWE39qZz.s+LDmb4wkACFT.cSH3iLA7Owm3SPoRkHc5zpE7g75hLiDQHvjTblbxIUPvtb4xL5niRnPgnRkJpkD3tu0WaiBdPv1y6DHJCQkJUviGOjMaVEmAxjICNb3PUafT3WrXwT0QHGPDN.H2tKDYGd6v+xgPIxwtOz9qZZQuSEFKe+BP1jHCEJTPcHsUqVzSO8vRKsDNc5D.knhIrMSZS7xKuLIRjPQ7FmNcx.CL.4ymmkVZIf6zwsfACtib+0hJX4RCsQL+nrsm+Yn7FR974wgCGnWudhDIBtb4BylMyJqrhpSPBlaDdGKjfWlHpvlrrYyR5zoUaLFs4.qMRvc6P+uJO9em9+DdJHj.xoSm3ymucfqoFMZvYO6YYiM1fAGbP9jexOoZvghLzTqVMBDH.QhDQQOTo9Be97wHiLhhBpqu95p4KnMRf1GW6tiQeT11y6DH8z2fACDKVLpToBW4JWgxkKqtsKZznXylMEsHsa2NKrvBjOed0rCDBvnWud0gLAd1RwhMa1T0oECFLn976lChXZwYyc6i2oHEB1lDR5Ke8EJTPQsSggYuzK8R7POzCwy8bOGwhEiCcnCwniNJ82e+7U9JeE9a9a9aXkUVQMqgt5pKU8A25V2hadyax3iOtpsw4ymmqcsqopoPvtDfB1FOHXenfdkZIthvxJQPsLa1LYylUsH7JVrnRCe5niNvjISpIIqWudb3vANb3PAWYmNcpXhV1rYUnxTFv1caEo9+0nA2uHAxMwZg6gjFhnunsZ0h3wiS61sUK4uG+webBFLHiN5nDIRDdkW4U3zm9zzWe8ofJcu81KMZzfrYyRpToTLpKe97ToREkRVKSVWaGhjGaOHX64cBf2t+8tb4Rkyr.CBa1rgWudoc613zoSb5zIVsZUMjMWtbgKWtPud8psQoACFviGO3wiGb5zIkKWlDIRnlZqv9pcyA22qcSQ6AL4ykz0DJSpEO+BTJBGNL81aur5pqxm4y7Y35W+5biabC73wiBUnKrvBL+7yqFFnT369129Hb3vTtbYb4xEyM2bzrYSdy27MIPf.L+7yqlTrVXRnUim9ntsm2IX2.LqQiFJYSub4xr81aSsZ0Tu4t0VaAfpspx9FP96BhS0FUnXwhjISFEOCDbznsPwcWb6+Wlh7cqHawzJa5xrBzJwK80WeTpTI5omdXhIlfs2daLYxDSN4jb4KeYle94YyM2jgGdXVZokTsKtPgBToREFYjQnRkJDNbX02apToXiM1ffACphDHNhxiOwQ7AAaOe2gzqWuR0GDBmHE6YznQBDHfBiPRQjZ+d09lpLy.4+SzgTYpqxAO4qWRESreUPW58pyPZaK5tgqg1V0J6u3N6rSVbwEYngFBWtbQ0pUYxImDylMy26688n2d6EWtbwhKtnR7whGONG4HGAc5zol1t.MCYsOc2db8f17C1y6pKp3fz8Dgyw1saWs5kVas0nQiFpcFfz0CATXRX974yS9742QN3hd8nEjbRMH6NG48h5t...H.jDQAQEYs1+WOrb2RER6+9cif5sa2lToRw3iONQiFkgGdX5ryN43G+33xkKdjG4Qnu95iVsZwryNqh0YBWgqUqFKu7xbzidTERUiGONlMalG5gdHra2NQhDQAkZsN2Zmb9G0s87QB.TowDJTH0MyRgrG5PGBmNcR3vgU4WWnPAle94UfOSxuVbNBFLn5lWQeQkbhEB4HRsH7+Fcnv69nA2uBikBg057oMcKud8xhKtH82e+XvfA1byMUqrIGNbfa2tUjMJPf.JYgOQhDX1rYETJN3AOHW7hWDmNcpTZhPgBo1cBRWkz1UKof4Opa64iDHvGvnQiJIITzcnUWcUVas0He97TrXQ74yG0qWmfACBbGDnJGxDHTKoVAuc+vkAFIEECnVvcZsecUXr1Oe2RchV4NQzbUWtbgMa1X80WG61sy.CL.O2y8bjMaVBGNLyM2bJA2JXvf6PyjRmNMW4JWgLYxntwe7wGmToRgOe9nqt5RsnOtWXn5i51G3NA2u9rqU.rLXv.d85klMap55yRKsDYylkJUpfc61o2d6ESlLozgGIUpLYxnVARxAdsEjVoREkxSn0oQ9cJZdpTjt.HuFMZfEKVT2lBnT9tBEJnJvTJ7TJ7Uud8JJfJOW0xvMsEIKO1WYkUvoSmpMj4ZqsFkJUhAGbPpVspZ2Fze+8y9129vjIS3ymOhEKF.LzPCgACFnPgBJ8IUlZtnqRxycQRGe+9822u+9e27yeOe5P1rYSUnnfWl74yqRGXokVhjISxDSLAyO+7psBoSmNoqt5RoFaIRjPsjNb61Mc2c2pAqs0VaoRYRJNVlhqf+dYvaRO7KVrHwiGWIvuNc5TcKtn6+tb4B.0BwPF.mrJYkobK1c6M01suCgfj085Eu3EUGvKVrHW9xWlgFZHkCVf.ATBvkfjTmNcx1auMQhDACFLvniNJ974SILuOna64cBjH.Z2.6Rt+.7k+xeYd1m8Y4JW4JL5nipJhDtS5Ec1YmDIRDld5ownQibsqcMd7G+wIUpTzc2ciMa1HZznzpUKb61sRNFEIWet4liolZJVYkUnPgBTtbYE38JTnfhn681auJUbPxmVhXIv9VPKZkJUTS29tcql1BjMYxD4ymmnQipZHfACF3PG5P7Juxqva7FuAc0UW30qW750KYxjgFMZPrXwHXvfbxSdRld5oISlLLxHin13N0qWmG9geXpToxGHuutWx1yu3918AkW8UeU0s1sa2l23MdC5qu9TrqpZ0pru8sOdpm5oXkUVg0Wec0Fe4kdoWh.AB.fZ.aNb3f25sdKkxNKnzbs0ViM2bSdwW7E4pW8pjLYRUsHISlTAwhzoSSrXwXkUVgnQiR1rYUoTnSmNEe.Z0pkB+SBpWc3vwNXul1+Taqb850KEKVjm64dNJUpDyN6r30qW74yGG6XGihEKRhDIvpUqpg9IrtqRkJr3hKxu0u0uE50qm+6+6+a9DehOAm7jmbGpswt6Lzuor8BHUcOej.I+TAqPau81TrXQErI5u+9Ic5zr95qiSmNYyM2j+0+0+UhGONtb4RQp9Ce3CyQNxQnVsZXylM5s2dwnQi7BuvKvku7koVsZjISFUJOsa2VM+AYOf4vgC750q52qCGN3rm8rX2tcpUqFas0VTrXQlat4X0UWUkJirwIsZ0pZQ7IjCRaGnf69gwfACRjHQHRjH7pu5qhUqVYkUVg.ABPsZ0HQhDp4onSmNhGONd73gHQhvTSMEG4HGACFLvLyLCe8u9Wmu7W9Kic61IWtb+l+Mz8f1ddm.s.6R5yeoRkHTnPzau8Ru81Kqu95JmAQhF+O+O+OUa8wqcsqQ73wYzQGk+9+9+d5pqtXyM2TQLkZ0pQznQIYxjJ5YJqEUQJ3qUqF4ymmVsZo5Ge61sY6s2lQFYD1291GSLwDzpUKEtbVbwEQud87i+w+XN6YOKehOwmPo1ENc5T4vI1tmYfzpRYYjb1ydVlZpoTSAW54ud85IVrXznQC0igLYxfEKV3u5u5uhwFaLEep6pqtX94mmgFZH0.HeP21ymND717tsPgBL4jShQiFIb3vLzPCwgNzg37m+7btycNBEJDat4lJDPJSa81291DIRDE7oiDIBiLxHJYXuToRJUeNXvf3xkKE5Jk8Al.wBYRt4ymmXwholFqrlTc4xEABD.e97ge+9UJ.mH9Ud73QIR.Z6nztMsNBxZfsc61J3Pb1ydVBDH.W3BWPQnH.kS7INwI3O6O6Oi96ueZ0pEu9q+5r5pqpvVUxjIumqjpGzRGZOuSPkJUToTjNcZlbxIIe97pIAuzRKQlLY34e9mms2dat5UuJau81XznQxkKGoRkRwmfs2dab3vAOxi7H32ue0fhrYyFsa2l74yq1MvxgCY8O0nQCknVIbRHe97b4KeYt0stESO8zrvBKvpqtphauc0UWJ4g+JW4Jr5pqx3iONABDfjIStChreuNDJjmY0UWkPgBQ2c2shlnB32hFMJFMZjibjinlEh3nefCb.9NemuCuzK8RrzRKwq8ZuFSLwDTrXQ5s2deGSC62D1dAmf2yoC89MNSra2tJmWoPRQI4hEKFkKWlkWdYxlMK1samN6rSFbvAU2NVpTIRlLoJcmm7IeRUt8as0V3wiGFarwniN5fCcnCwjSNIyM2bTudc0pSR5YeoRkvgCGbvCdPZ2tMSLwD32uednG5gHPf.7e7e7evryNKO6y9rb9yedd3G9g4nG8nzSO8vi9nOJd73Qs7.0BwAsuVtav1IJDQWc0kRPc2291GyLyLDLXPb3vAqt5ppT3N7gOLKu7xL1Xiw.CL.QiFkEWbQ5omdTRQ4O8m9SYfAFft5pKFXfAde88u6msW.mR64qIP5DjnN0VsZcGjk+y849b7u8u8ugOe93y7Y9LDIRD0suR5SW5RWhjISpno31auM6e+6G+98qTgNylMSGczAiM1X3ymOzo6N6pXKVrPkJU3e7e7ejgGdX750KFMZjDIRvy+7OO8zSOjNcZBDH.O7C+vbhSbB5omd3e+e+em25sdKdlm4Ynu95aGyMvtc6pzrDcS5tgMI.UQ4xjtSjHAQhDgToRgUqVIc5zru8sOUDpIlXB5u+9Uo64wiG5t6t47m+77U+peURkJE+c+c+c7XO1isCGvGjs87uJH.gSlNaGczAqrxJpCIO6y9rTsZUJWtL+8+8+8pbtk88U3vgUvmX6s2VoAOhShTzs3DH6+LSlLol7qjxwO9G+ioZ0pJEeHZznr1Zqwa8VuENb3f+1+1+V9DehOA+o+o+o7K9E+B.36889dblybF0MugBEB+98qlJrr3Ag6Nn7DkltUqVJUiHc5zDOdb0TmCFLHyLyLXvfArZ0JNc5TEIShD32uehEKF81aups3o.67Gzs870DHg4EJOt0VawpqtppyJRaA83wCCLv.7DOwSvpqtppX2AFX.d8W+0ITnPbfCb.d8W+0YzQGkScpSoXNlTbprcWDVmIE4twFaP612QtzqToB+g+g+gb7ieblZpoTRn9m+y+4YokVhzoSyO7G9C4S+o+zzrYSVe80U3WJd7373O9iS4xkYvAGT4rduhBHsXUfbwFarANb3ffACR8504hW7hL3fCpTSNa1rwINwITKzuwFaLRlLIO7C+vb3CeXUJXB4iDmb3CtZB1KXeficn2MlfoFylMy9129T6mLsvktVsZL3fCpnU3INwInPgBb6aeaFZngn2d6knQihOe93.G3.TnPgcr1Ug2dUrpksWQiFE61sSylM4l27l7M9FeC1+92ONb3f8su8Qmc1IVrXgm+4edBDH.OwS7D7s9VeKdgW3EnZ0pb9yeddxm7IYgEVfG8QeTxkKGG8nGUsbM1MDq28PyxjIiROV6qu9HQhD7pu5qB.ekuxWgd5oGFXfA3PG5PpoTKPMY94mmImbRlXhIvoSmXwhEETQjgF9w1GBhDHjQWJRrUqVbkqbEU6Hsa2NkJUhZ0pwS9jOIG+3GmM1XCNxQNBeouzWRwiXe97whKtHm8rmkyd1yha2tUHFUPPonEQvauXt0oSmBpxG5PGRIaI8zSOTqVMdq25s3bm6br95qS850467c9NJ5JN7vCyi9nOJQhDQU.992+9ISlL6PX.dmhDTqVMBEJDEKVjb4xw0u90IPf.TsZUt4MuIlMals2dazoSGW6ZWiyd1yRznQoVsZzUWcwW6q803RW5RL3fCpzszKbgKfKWtThAr75r1WyePx1y6Dr6gIUsZUdsW60vpUqzWe8wryNKc0UWTpTILa1LiLxHL93iqln7YO6Y4S8o9TL6ryxK9huHeyu42jyblyn3orzKdIpB71NEBy0Z0pE1saGWtbQGczAVrXgQFYD5ryN4QezGkAFX.9i9i9i3O9O9OFud8R0pUIe97L5nix4N24vue+zSO8n1OXhyrrnw28ySs+cAiRYylkfACR5zooPgBjHQBhGOtR1X750KEJTfm3IdBhEKF25V2hScpSwHiLBu7K+x6PRWVas0X7wGW0..3Aamf87EFqkhiB45ERj2c2cS3vgY4kWVIdUqrxJbtycN74yG1rYixkKyEu3E4Mdi2fuvW3Kvi8XOlBtxZkgEgPKBmBDb0HEkVudctzktD27l2jwFaLt8suMm8rmE+98yAO3AUSJtXwhpa3OwINA986mToRw.CLfRZD6niNTBGlru.f6d6Bko+VoREhEKF80WeJmnW9keYxmOOOzC8PznQCJVrHgCGlfACxe8e8eMkKWVMDwolZJ9re1OK1samEWbQdjG4QXlYlgCbfC7ar2K2qZ22HAeP2G2VsZQoRkTsULa1r7JuxqvHiLBlLYhScpSoDkqM2bSxmOOyO+7JQ6U1SuKrvB7k9ReI0.xra2the.xzY0tkL019PQ+N850KVrXgM1XChFMJSN4jr0VawVaskplESlLQmc1IG4HGQUzoT7qfF1pUqBfRWiztfLzJAj0qWGOd7.fxIUp+wlMabjibDb5zI+ve3Oju6286RsZ0XhIlfm7IeRBFLnZeLjISFld5o4Dm3DLzPCwEu3Eo2d6kvgCiCGNde8l+62O6cSqz6FMSe+zzoS2d+HABd6k1+oEAoB1e73wCiN5nTpTI74yGvchZjLYR750KSO8zpID2rYSJUpD5zoS8mRJQ.63ykeNxNSSRmoiN5fYlYF0jZkhqEVvoUkKJVrnZlF6dSUJNdB0J2cKRELA4vgCZ0pEYylEylMS61sYyM2ToFEm+7mmG8QeT5u+9UvK47m+7JP0IqsoxkKS850IRjH6P4MdP21y6DTtbYkprYznQEl9yjICtb4RIuf1saeGpQgz+80Wecdy27M43G+3Lv.CnNTKGBDg1Bt66c.Q6eZ0pEVrXgHQhnNf6ymOENg74ymxIUKKw1Muc2cM.B2dEHTncOqYvfA0x4PvuzpqtpZGGKHbc3gGFylMqzs0nQipRAq2d6kIlXBdi23Mn2d6UINAtc6VIg6Ona64cBjCqBMFEpJVudc0ZLR1UYZ2CANb3fzoSyK7Bu.W5RWhG8QeTUJFvcVHfZ2QW6NZfXZ0uesGX6s2dUaNdAfeZ0rHgz9lMadGG9kHFZoT4tUXBsNAISljPgBwZqsFQiFk96ueFXfATpO80u904HG4HX2tc0l6Le97X0pUBDH.whESAsiSdxSpJFWz4zGzsOTPuRIWZsnsrZ0pTpTI0.nj79c61spm9EJTfYlYFlbxIUZyo33HJRgTfI71G72c5Px7DjuOYvWhCmzII4Og2lj96lq.2sYBH0kH+6BjPjO2mOerzRKgCGN3jm7jpM1YWc0EkKWF3NHcU55T1rYoiN5fN5nChEKFuzK8RjNcZ9TepOEYxjgXwhwvCOLqu95bjibjGH1X82OaOuSP850UGVEJOlMaVUe9kn.VrXAGNbfUqVoZ0pjMaVt10tFkKWl8u+8Se80mJcEc5zoVMr2KFcIetVpbp8uK21Ke.riE9m.6ZYFGZOfq8ft7bTNLJylP5RUhDITc9oUqVX0pUlZpoHYxjJ7AIBJfrjN.X1YmkqbkqPf.A3fG7fbvCdPxkKGsZ0hScpSQO8zyuYdCbOt8ghHAVsZUwoWIWXs80uPgBp+uRkJQoRkHd73r81ay0t10nToRJEpP5zD71h50t6St1ZBZ2tsRBG0pNbRpJZWkSx+l18dlD03d4DHeeB0N2syS4xkwqWuJ9GjJUJra2Nm5TmhXwhwy+7OOYxjgyd1yx3iOtJRmHAMiM1X30qW1291mRiSEdT6xkKRlLop6SOHa64cBjVXZxjIJWtrhoWUqVUwPKa1ropWP3YfV86QtoTF7jNc2Qbeksb46T2gxmOupPXsDnWawr.pCuxAY3say4tcDz5D.nHhu70HcPR67Jb3vAgBERs+E762Oeyu42j+e++9+QznQUR3tzgrN6rSJTn.FLXfM1XCEHB850KQhDgjISRf.AdfQagdmrOvwNz8pmvZ44aiFMTrqR5PyxKuLW9xWFc5zolZJbmCiBIT.XyM2j96uerXwBQiFUk9PwhE2Qd7ZOnJG7j1xJ2JqUolkOWad8xvxJTnfZYgKEJWoREZ2tspkoRmfhFMJNb3fhEKRkJUvhEKjOedZ1rIVsZkLYxvTSMkRVXpWuNgBEhM1XC1XiM3oe5mVUqvLyLiZUvlHQB73wixoTjMFYUWEJTHRkJ0+q5S9+5G2O6852+62+7+PwbBJWtrBKNh3ZMxHinN.mISF73wCVsZE2tcCbGnFHjYWZkXtb4TJ4lVUmV3dfjiu7mxs0xTkqTohRfuj8pblLYTo9nUR0kHGZgggTafjuu7gHNVtc6Fc5zojKF3NCoSjR9olZJVc0U4Tm5TJw3pVsZTrXQ5ryNYs0ViIlXBrXwhpiPx9bqb4xp4aX0pU07F5ryNUoG9frsm2IPDRVQUoMXvfB7Yau81pCMxBtVRaQtM2qWupk4mndaZ6Eu1zPtajNWloP61sUEvJqHIQsHz5DHQJzlVk78I48Kh.rj5V73wY3gGVMTtxkKy0u90o6t6lAFX.La1Lc2c2rzRKwhKtHSO8zbnCcHxjICoSmV8ZjPA0AGbPkZ5UtbYEmJjz4Z2tsJErO19PfSfrHNj9zC2QBRDM2LUpT31saRmNsJ8IIuaYe852uerYy1NjpcQ8EjaBkCsZkBQ4ysZ0pZXbBxNkN0HLSSJLVlIffyIo6VBZTazngJcGoFhPgBozungGdXxkKGW6ZWSswcVXgEHWtbbxSdRxlMK23F2PAJtSbhSfc61Y4kWlHQhn3BsrOBjEAtEKVTBYlboh1gJ9fr8AdMA2OSqH0JopHEHJcAoToRJYQQNXWpTIzqWO986m95qOBEJzN.LmzWcIGZsvnVa98oSmls1ZKkSlztVAFxxBxV98J6CLYx1Rg3Rjo50qqRQQud8r95quiZEjYLDNbXzqWO+M+M+MDKVLra2Nu7K+xX1rYN3AOnRbh6s2d4pW8pbqacKVas0nYylr5pqxxKuLd73QsKmykKGVrXQcIQ61sUPL4CR686ZFd2X64iDHjlQKmB5pqtvhEKbiabCBDHfhL9BwQhFMJKrvBr81ay3iOtBO+x9MV3NfHAgxs3RO9kOZznAwiGWcPtiN5f.ABnbVDGA4l+rYytiT1jaec3vg52k7XP55T0pUISlLXxjI73wC2912lkWdY1ZqsXpolhO2m6ywO9G+iwmOeXxjI99e+uOqt5pLwDSfGOdPud8bqacKzqWO+fevOfgGdXE4ad7G+wUcHR5PlTeh1AE9ftsmmOA5zoiJUpfACFTEb51saRlLoRbd0oSmBF.Ma1jYmcVt7kurpG5G6XGSQkRYJuhdipUjckC+Z+b4FIgGyBrKj1XJ0GnUIoqUqlJRhT77xKurZkppSmNVc0UUJbsf3UImcoVlvgCiKWt3y9Y+rL0TSovJjrBl9ze5OMqs1ZzWe8w1ausZR4IRjP07f74yqltszjAocxRMJuWe+48S685O+2Me+64iDHXARtISNz5zoSb61shuAhNhpWudRmNsR3bCDHfB9xxjkEL1HXARFvkTKgngmMZzfPgBga2tId73r4laxlatI0qWm.ABnRuxjIS30qW0O+jISRlLYnToRTnPA.Xt4lid5oGZ0pEACFjM2bSJVrnZSyH2XKc0YxImD2tcyLyLC0qWmm9oeZlat4vfAC7Zu1qwW7K9EYwEWjSbhSPf.A3bm6bjLYR1XiM.tCsLEmiLYxnTqZ2tcqh.HxT4C5l98B4j8NY0pUSkRjP.doiO50qms1ZKxmOO4xkSQTlKcoKQ61sUZKT9742wdJ1oSmpZ.DmGQNFEVboWudBEJDW4JWgRkJQu81Kc1YmJMQUZSpPJF4Vca1rge+9ob4x31saVYkUnXwhJNOjJUJlat4HPf.DLXPEpPkYcHoGM7vCS1rYYwEWjqcsqwUtxUThG1YNyYvrYyJUmNPf.zUWcQvfAIQhD7BuvKnjgw0VaMd0W8Uoc61rxJqnd7KQ4duZeXeNCvGBhDH0AHguEHS3vgicHnrRQlqrxJpMZuLLHIWX4mWsZ0TGfkhak75sa2NgBEhJUpvVaskRbu5niNT30OSlLrzRKoVKrMa1TMiBQdXDoeIb3vLyLyPmc1IKszRJUjVH7x1auMkJUBmNcRiFMXs0VirYyhEKV3Dm3Dr95qy0t1035W+5b1ydVVYkUXgEVfomdZ91e6usZ4640qWxmOOKszRDKVLhGONKt3hTpTIVYkU34dtmiG6wdLpVspZ1HOnQix6ksmul.IcGYfVZ6+9u7W9Ko6t6VMMzlMaRhDIHc5zDLXPhGON974i96u+cvhJI+aAJ0xrBjbkkkesvns0VaMkZuY0pUhEKFIRjfN6rSUDDQkmKUpj5mqzRRgEahNAIJnm37HKQCYWCa1rYtvEt.EJTfSe5SqZQ6UtxUniN5P0IrDIRvS8TOkJpXlLY36+8+9jKWN0NNdwEWjBEJfUqV4HG4HpHXZWYUePZ6Epo3CEQBj7VkCTUpTgAFX.74ymRZB850Kd73gEVXAkLs6ymOVYkUXkUVgt6taBFLHkKWVUufzUHKVrntIdwEWjae6aq3ofQiFUZziYylUTyDfomdZkn+JQVjn.gCGV8X9XG6XbwKdQ0DZEJXVpTIkFi1UWcwFarAoSmlVsZojDk0WecNyYNCVrXgm8YeVt0stE8zSOr95qyst0sXokVh.ABnRopZ0pDNbX0fAMa1LSLwDDIRD0qixT10t+19np8twIeOuSf.JL4vpTjqbPrXwh3zoSUgsQhDQM2fzoSyQNxQX6s2lomdZ05J0rYyp0qjLrqEVXAt5UuJ27l2TsnMf6.s4m9oeZLZzHISlTMbKiFMxK9huHqrxJjOedFe7wAtyRBu2d6UUDrKWtTCjSDWXYZt986G2tcSznQ4PG5PjNcZVd4kYyM2jO8m9Sya7FuAFMZj4medNwINAm6bmiM2bS0x.omd5gnQip3VfLqAa1rgYylIRjHL93iy3iON4ymmLYxPWc0ENb3Pwy4O19PfSfVHKKsprXwhjOedRjHghiwxxyHYxjpEU2.CL.kJUh25sdKt8suMCLv.JwpR5rjSmN4RW5R7e8e8ewq8ZuFoRkBOd7PnPgvoSm7k9ReINzgND.J0qVzUTAGOYxjQANOQcHxkKGFMZjie7iSrXwT2NuzRKgACF3RW5R7jO4SxhKtHiM1X7i9Q+H0NE6odpmhEWbQkv+diabCb5zIkJUhgGdXxmOuRrf862Otb4hzoSqV.HVrXgRkJw1ausJJkrNaa1roZ2uINpeT1teQB9PA.5zRqRYhvhvzlKWN5pqtHQhDp71EkXPbTjETWoRkTxNnKWtHXvfzpUKt7kuLu4a9lpN1b3CeXFZngXrwFi95qOJWtLISljzoSS+82O.J.40YmcxW9K+k4JW4JpoJu1ZqwJqrhhgWhn4VoREBFLHKt3hDIRDt4MuI80WebpScJ9E+heAm9zml4laNpUqF2912lQFYDd0W8UUhP7TSMENb3fqbkqfa2tUvIQ1KwxBDQKUOWYkUTvz3q809ZDNbXUWg1MbteP11y6DToREb61MFMZTkSqrf5zqWOQiFUMOfVsZQ5zowtc6znQCk1fpWud73wCat4ljHQBlat431291ztcale94wnQize+8qlAwpqtJyO+7TnPARkJEc1YmTsZUFYjQnmd5gyd1yRwhEwue+DIRDBGNLEJTPAIhM1XCVZokHb3vXwhE0i6Z0pwC8POjZ6Y1nQCRlLICLv.rvBKvEu3EITnPL93iyhKtHgCGlacqao5Plr.RVbwEUQ+DbU4ymOUw7BpaiFMJG7fGj4laNFZngTQvZznA986WwPuGzs22cB9+xsMxWq1uGa1ro1M.BJKkHB4xkis2da750KqrxJJzVZznQlYlYXjQFgM2bS73wC4ymm50qysu8swrYyL6ryx29a+swlMa7c+teWUaRqWuNm5TmBud8x5quNvcPn5wN1wX5omlYlYF9E+heACN3fb7iebJUpDczQGbjibDdkW4Un2d6kabiafd85omd5QUfcznQYjQFgb4xgSmNo+96mToRw5quNYxjgadyaxvCOL986WAwaAVHKszRTnPAlXhIT3HRl5rTbqr.QDViY2tcFczQId737W7W7WnVXHRcCRDCY.iZY0l19vK315W02e+ftMr2ue+sZ0ZueKRE4PTKN80qWOW7hWjKbgKfISlnRkJJ4XQ3Qqjmrn0lwhESga+wGeb1byM44dtmis1Zqcf.TAVzG6XGiO+m+yiQiFY+6e+L7vCy4N24vlMazc2cyEtvET68fKdwKBf5Pur8ahGONVsZkm9oeZ750qRJTb4xEYylk4med73wC1samrYyxryNKFMZjidzix4O+4YngFh4medhDIBQiFkDIRnzPz3wiia2t4YdlmQQ6zkVZId8W+0Us+MYxj7U+peUlXhIHb3vJdHKoBUudc0yaYp469Py62vV3CZmj1saaNwfUJ...B.IQTPTs22IPtQRXlk.9sImbRRjHghwWBg6kCItc6ls2daEbpCFLnZkqJyRnb4xL+7yywO9w4IdhmfjISxS7DOAkKWlUVYE9VequEm9zmFWtbQe80mZOiYvfA74ympkrhTqeiabCra2tRZHGd3g4Tm5TjKWN1291GoRkhs1ZK9I+jeBgCGlXwhwLyLihGDqs1ZnSmN0bA1XiMHb3vXvfAEZYk83rrBZ+7e9Ouh7+YxjgW60dMb61M4ymmCcnCwW3K7EHTnPJIkT1T8Zk7df6oiv86P560HAenvI3C5hmjasDb9HgniGONqs1ZL+7yiYylUxWd+82uZmh0tcakJqIJWmT7Xmc1ICO7vbzidTUGWFarwnQiF7XO1iwbyMGtb4hSdxSxlatI4xkiN5nC750KG7fGTU7obf7kdoWhpUqxu6u6uKwiGWgRT4l+acqaQnPg3rm8rLwDSvTSME2912lvgCq36fTLe1rYob4xToRERjHgRM81ZqsT6j4t6taN5QOJiM1XXxjIpVsJKszRL8zSqpc3q7U9JDIRD0qaxfGkMdoV9EeuhD7ffsmuvXonPWtbgACFTqR0d5oGUzAA1ytb4BSlLo57ifFygGdXkTsrwFav.CL.Nc5To9B80We7u7u7uv1auMc2c27C9A+.BGNL+fevOfqd0qRgBE3IexmTsajmbxI4vG9vDJTHFZngTsCMa1r7C9A+.dlm4YHe977K+k+RdrG6w3JW4Jb0qdUNyYNiRJG83wCm6bmikVZIlc1YUy0PN.mHQB0dJVjhQ+98yryNKQhDgyctyQ+82O974iZ0pgWudUoEs1ZqwS7DOAG7fGTkquVPHJprgb4h.qZIp6tUfiOpa2Wmf2qQBdu9Bo.YYosdBDG5u+9o+96mKdwKpZ+XGczAMa1jt6tazqWOSM0Tze+8SgBEX5omVg8Ha1rwryNKarwFXylMlbxIoc61bfCb.9k+xeI5zoigFZHtwMtAyN6rXxjIdq25sX7wGmYlYFFarwXlYlgCcnCQ3vgIZznXvfAFZngvtc67O7O7OvW7K9EId73bkqbEb3vA+1+1+1JVp4vgC9leyuIu7K+x7JuxqrCgDP55y5qutpyWiM1XjHQBRkJkZ+ms4laxm8y9YwjISpKFDLO8k+xeY95e8uN986mZ0psicffbH2jIS3vgCxjIyNTOCIpgVAH3cx9fNSgecXuumNz6Um.I2UA9yxx4Plb7O5G8inQiF3zoSErJ.XkUVg0VaMEX4.HPf.3xkK1byMwhEKbvCdPNyYNCiM1X7zO8Sy.CL.+9+9+9ze+8SylMIYxjL6ryp.hWtb4nQiFjHQBEDua29NJe27yOO81auDKVL1+92Ouxq7JTtbYUpTKrvBr+8ue5t6tomd5g4medZ2tMSO8zjLYRkZSHpcmNc5TPaPvYjL87ie7iyoO8oUZMj.btjISR4xk4O+O+OmQFYDkB0okn+xgcguDBggjnEZgV9uNr850D.++Scu4A2VmWmO7CVHAAIH1IAHHA399lHkDMks1kk7prabhahcscbbbyxjLoYRyZSZpZSZmllsIdlljwItoww0wNI1VwqxVxKxhZghRTh66a.ffD66qjD36O3uywWgPJIm1llu6LXHHIVt2266648bdNOmmy++.2gnBWmlD.rNSMsZ0JJrvBgVsZY2gVZokPUUUEVd4kwRKsDJqrxXwyRoRkn5pqFacqaEiLxHLzhs2d6r6RM1Xibfm6bm6D2wcbGPoRk33G+33Dm3DrJNjISF30qWL3fChXwhgZqsVXvfAL4jSh5pqNnWud1W8idzihye9yCIRjfIlXBL5nihG5gdHnToR7BuvKfxJqL31sa..VCjndLb6s2Nd0W8UYQIlp6.ZWOJfaRJUn1Ikv9k.UyCj6gDBXDgC+yMpy++EGR95e8u9QtZufMRWfDNX8mBHznp0hP0fJzcmNchQFYDDKVLDLXPDIRDnUqVX0pUVeNollAw2mZqsVnUqVDKVLX2tcHSlLTc0UipppJDIRDTXgExEuiGOdv7yOOTpTIt0a8VgHQhX5UGMZTFxxO3G7Ch4laNL0TSAQhDA0pUi7yOericrCTd4kiye9yikVZIr3hKxt4r3hKB0pUigGdX..lpCj1JkJUJblybF..laTj1CUSM0ft5pKl3btc6FoSmF2xsbKnwFajU1B4xkybDZijWRphyneRBB.EDsvFjx+Sbj84P1BclvXQtdCRW3qcidbsNxjIy0dQv0yIw+S792LqPzV3BKTcxudRmd5qu9fFMZXgqhzbHqVsBc5zwttDHP.X0pUVXtZokVPEUTAToRE2LvoEaxkKGFMZDFMZDABD.u669tLLmYxjAtb4BlMaFd85kgwbfAFfo1M8YTPAEfomdZ32ueTTQEAIRj.Od7fJpnBbtycNTbwEyMdbud8hDIRfvgCCUpTgsrks.QhDwUcVM0TCJpnhv1111PYkUFTpTIWtlJUpD5zoiKdHRL.DJcja1jDgwCjsqPWqjk8G686re905+c8748G6weV3NjvE.YuXf3NDo8OISljQKpzRKE25sdq3cdm2AZ0pEQhDAkUVYrnSQcwchqO4latbsGDNbXTQEUfsu8siQGcTjNcZzQGc.2tcyeeZznAFLX.kUVYnmd5AEUTQnxJqDkTRIvue+vpUqnnhJhKJFhhFpUqFZ0pECO7vngFZ.JTn.0VasXpolBM1Xi74OUyCT8MHjDf974igElT+BpjRqu954c4HBDpUqVTPAEbEt0HTqU2rCZhe1K.Dl43q26cWsiM57Hazn1n.x+SQFo++7EAa1Bfq1NCz+ixlLMoUtb4XW6ZW3Tm5Tvue+vmOePqVsrboPIxh5qA1saGgBEhYe4hKtHmHLsZ0homdZru8sOXwhEbK2xsfToRglatYtna5omd3rWSAKSRuBAa4QO5QgYylwEu3EYWn9HejOBtzktDyx0BJn.LxHibE8urzoSiEWbQDJTHDOdbDJTHDIRDr+8uetVEhEKF2rPTqVMS6CZxL87q0Q1tgrY2e9uyAMAW38tr+Nn++6mI1+Ow42eVn6PBmXms0GZKcxMHxuUxWXOd7.MZzvJovxKuLrXwB1wN1A28XHjP750KDIRDmrIMZzf0VaMr7xKiEWbQb1ydVDHP.HUpTTVYkwBmkUqVY88TjHQX1YmEIRj.kVZoHYxjPsZ0LRLtc6FhDIBZ0pEgBEhazeTEjA.XylMTc0Uy922ZqshRJoDTUUUwKREIZcMVMXvfWgvAei23MBEJTvnjoSmNNlAhSUj1EQieWK2gd+TSv+w7P384M5dd1+++TGj9e1uS.glAUZkDrjIRj.974CiO93nhJpfyWvYNyYfYylgRkJwG8i9QQu81KxjYcwsxmOeWgNilHQBXxjItWGKQhDnToRHSlLNgVEVXgHTnPPrXwvrYyWQeBn81aGtb4ByN6rb0qUbwEiQFYDTbwECIRj.Wtbg29seadw7niNJjISFti63Nfb4xwPCMDznQChFMJJqrxPd4kGm3Kp4jPJJsb4x4ZNPoRk7teD5XBc+QXuc6pcPHDQiyzNGzXz+S.w4UyRe1F7x1kn+T.Q++muHfNtVVLDlQSgCT81aurjJFOdbDLXPVYnKojRfISlXIPgx4fBEJP94mOLZzHlbxIQAET.RkJE5ryNYqum6bmCwhECu8a+1b.s4me9Xt4lCtb4hgIk35CEmP3vgQokVJyx0BJn.L3fChDIRfa5ltIb5SeZV1EMXv.5qu9vDSLA2q0RmNMLYxDle94YsRh5g.UWc0PlLYX0UW8JjaFZLgdNsCF0S1tZGBWDHb7V3m4U638qqKalKQazq6OUG+Yg6PBOxdkOwuEZPgVLHUpT1x3LyLCm8SpFdEKVLN5QOJVXgE3IWTFkIHUoIuEVXgHZznn6t6FacqaE6cu6EJUpDFLX.m4LmAABD.QhDAQhDAyN6rXxImDqrxJrqXxkKGZznAYxjA82e+XfAF.uxq7JbsNSPoJWtb7s9VeKze+8i0VaMb5SeZnUqVtbQWbwEgWudQ0UWMq9cEWbw7B2a61tMTc0Uyt8PzLmBrl3DDkTwqGg0hzZoM6w0y8qqW2gtV2qudhI7+MNXHRE5OlvAgMZE46WbXuV++q1EOs8LYkS3hA4xkie0u5WwBNkZ0p4JHSoRk7NChDIhIjFQrNpukQ0eqACF35HH+7yGM2byPgBEXKaYK3kdoWBNb3.RkJEKszRXO6YOvsa2vnQibgs30qWFgHp+CS05KoQolMaF24cdmnkVZg4fzryNKKiKTknQk+XznQYoY7lu4aF228cerk6hJpHV46DtSI4xHv6ocqTgyPnWQs0Ie97wpeAMlJrQEJLeAa1Cg6TrQ37Sp0c16jS2m2n+9ls.Zi97oq+recaTdH1r4eRE1QWDtc0l8l+eKzCtZmjaz2C86UUUULmh.Vuob32uedmBp7FAVuJ0ppppXoTISl06Gvqt5pHPf.PhDIHRjHvsa2n95qG986GQhDAlMaFyLyL7jlnQih64dtGtfXlat4PnPgX2ORkJETpTIb5zITpTIppppPf.A3dO1DSLAlc1Yga2tgToRQnPgXgyppppB986m2gQrXw3Nti6.6ae6CRjHAqs1Zr6Qjn9d0Nn9Q.4dDkKjDIRvPp9+D2enmuQt6b8tavFESP1+uM58uYemWutTccWOABs7SOWnTm+mhiM56Ju7xCKt3hvpUqbFRMZzHakvlMarzH1TSMgXwhgRJoDX0pUnToRl5DTUqUd4kCoRkhQFYDL3fCBEJTfkWdYVaQoBSQgBELctmbxIQjHQX8JkZ.FjR0QZdJgT0fCNHyXTpmjQYEmrjSKDZu81wgO7gwV1xV.v5puAgNTxjIutp7qbxIGDMZTN2BFLXfqzt+6lLrrMZl8y2HK0algsq00wF87qlKaWOe9YxjAR9pe0u5QDtEX1Zy+FkZ6rgW6+sO1Ln0xjICZqs1voN0ovjSNI2CAnrGa0pUtWCC.tSyPUyUIkTBBDH.LZzHN3AOHFarwPyM2Lra2NSe4hJpHHSlLrqcsKTTQEwVR6u+9wfCNHppppPd4kGm0YpQcP31S0H8RKsDb5zIxM2bwDSLAb61M23MDKVL2SgIw4MmbxAc2c23ttq6BUUUUbmrWn3cc8LAlnfAUX9hEKFKu7xbg5PAee0F6uVtqHjkuY+bZR5Uy++r+aWsEUY+7qk6zWOGR9a+a+aOhPEUlVDPOO6u7M6D++sN1nA.g+ce97gG+web3vgCjat4x0UPWc0EjJUJGzrBEJXsFkZMRTEX4zoSr3hKhpqtZ769c+Nje94iEVXAXvfAjNcZzXiMB.f1aucTZokhbxIGTZokxp.GoenKrvBL0uMZzH5t6tQvfAwBKr.qxECMzPHb3vLROpToBgBEhY14m3S7IvN1wNv9129PSM0D5niNth.go7APMsjq0BAgRyBgh1+4+4+Ipqt53t5y0SvsWsGY2UNEt.3Z4N6UaRb1Sx2nm+9YQ1lcHknX6l8kRAGSoUOaNl7mBnrtZ6DHUpTnRkJNP33wii4laNVi9iEKF74yGRkJEzoSGhFMJJojRvvCOLrYyFNzgNDKQJiLxHvfACHTnP3vG9vHUpT3rm8r3cdm2AEWbw3fG7fn1ZqEc1Ym3odpmh69iT2zTsZ0LbpVrXA24cdmLbpKu7xb1gEIRDlYlY3F0M0uEJu7xgRkJgd85gEKVfEKV35mnfBJfaYs.fkz8BKrvq5XGgfEkjwm9oeZ3vgCjLYxqKUo98yjoMh6OBqOA5mBCZcynLQ1OWnO+az7gry8v0a1mEIRDj7k9Reoib0dQBaF0YejIy0VMB9u6w0xRBv5MtZa1rwzfNSl0637jHXoPgBbfCb.3vgCr7xKi4medTYkUhFZnAX2tcTTQEgbyMWDJTHtq0rqcsKzbyMiN5nCzXiMhW5kdINn3KbgKfBKrPlByjTtKr.fb61M762OTqVMrYyFSqYWtbAIRjffACBud8h7yOezYmchHQhft6taTSM0fFZnAje94yxHOcNQssVgn+PYFdyNH8QZ0UWESN4j3q809Z3ltoaBczQGWWsu0q0hfMC0mrmb9Gqk5M5y8OlOmM6PjHQPZ1qJE9kJbq2rSZxeJV.j8wFcAKWtbrsssMLwDS.61sizoSivgCiEVXAHSlLTUUUAe97gYmcVlMoBKZFCFL.qVshZqsVV4JJnfBfe+9YwspxJqDeuu22CO4S9j3Dm3DraSTG0j74lBFmzUzicriwiawhEiGOI2X10t1EqlD4latPsZ0n95qG4kWdnnhJBQhDAJTnfaP2TiKG.btCtVX4WTQEgkWdYnWud7tu66xwCnUqVt3hd+NluY++Mxp80ymA8Z2Hq8a1N.a12ovW60KD9RINoPbJOYxjrF+PxaxpqtJJnfBXBaQcsQ5uSIlQX6NUpTo76Q3IW1OO6Szr+8MyZE85BGNLzqWOpnhJvJqrBb5zISjMpENQBcUxjIQ2c2MSZNkJUxTgvoSmnjRJAae6aG0UWcPpToHb3vX94mmCnbm6bm3YdlmAKt3hX0UWElLYBhDIBKu7xn3hKFtb4hEF2vgCiLYxvYrM2byEpTohmPSMdvCbfCfZpoFbu268hJqrRTPAEfUWcUDJTH98Ss5IR9XnqeZrgxYB.3BvgRT1ZqsFLZzH5s2dwO6m8yfYyl4tYO4N4UyeeZ9wl8H63AHzsHobQn6VYCphHQhtl6jQFWHWxE9SZdKEOK4tNccu5pqh7xKu+fyO50Q4dRJ06thEKFjKWNyGEpSKJr6sHD8H5l.kgVgUqDcigt.xdPP3jXgR9weLGTsCLyLyvI.yhEKXzQGkUP5HQhv8r.4xkycPlzoSiW60dMXxjIHWtbL+7yi7xKOTw+uZLH2byE0TSMnu95CEVXg3UdkWAc1Ym30dsWC0We8vsa2beLin5rBEJ3dWFAkI0fNRlLIb61MhFMJWGz228ceL0qolQBIf.BaZgWqCgTkf3QjXwh4dy1K7Bu.pqt5vryN6UPvtqlUZZwzFkjJg2+DlvN5gPtdsQF+ni2OZgZ16NjISlqfKXT0yQ+uM5Q1u+LYx.oaTz8zEGcRRIoQXdAnKFBy7zoSy3nKL88j0qMxJB.thAoMZQx05Pjn0Yr4N24NwK9huH2kXnBLg5oYjaNjrmStYjWd4gYlYFHSlLTRIkfvgCie+u+2CCFLfa61tMtNBVbwEQokVJld5oYKbFMZDiLxHPlLYX4kWla9dTeFPmNcHXvfXkUVgCNu7xKGG9vGFG5PGB6ZW6hiUfVjPVNkKWNjKW9UzHR1rIFTlYoI2jKrTUic7iebL1XiAwhEiJqrRL2byAQhDw0lQ1imB+Y1KBx9diP2QDlAa50QRSS1tFQ+90K0Lx96R34BgjovcJDFqhPjpDtCF88Kk1pknuK041IBiQCtzfJ.tBzgRmNMiYMYARXyzf1dR3InvsytVU9z0xeRpavbK2xsfG+webTUUUgEWbQXxjItQYPJyLQE5byMWnQiFHRjHXxjIDHP.18Eud8B.fYlYF30qWzPCM.Od7fKcoKA850CUpTwMQ6xJqLNqq50qm697DKOUqVM2fLzpUK1xV1B9K+K+KwMbC2.+cQVynwBZhD0yztVGj.EKrdgo1VUd4kGb5zIdtm64fLYxfCGNvV25VwjSNIWiEaz36Ua2mreOzDP5mzjKZRJcsQ22ud8UW32G8yMx2egT8flWIbh+FQqjrWTJU3JX.vo8m74mP8frjR+e.vsqzToRcE9YkHQB1J.4S4lAwJ88tQU3z06fEoEmhDIBABD.xkKGtb4h6A.yM2b7h7UVYELxHifxKubnVsZTbwEy9TFLXPjJUJnWud..blybFjJUJb629siToRgm+4ed30qWVDcmXhIPokVJ73wC.duZIfZFHCLv.X+6e+3fG7f3FuwaD50qmULhHQhvX+KToGnIVzj4qmLBK7luvXPRkJEdq25svbyMG2FpnrZS7kJaKyYua7FkqHg+j5uCY6EAc8jcBW2HK4WsCg6Tj8tFzmCsHP3XX14pXinFNYjVZd4kG23oIgZRHJFTPvgCGl2pkhUfpHKZ0F4FDciQpTo7BBgAsPGzE.MvSWDzOudVDjWd4g3wiiEWbQTRIk.QhDwEcOYkmBbjlbQ0wa73wgISl3F0WokVJhDIBqr0j08omdZLwDSf7yOeFcE61sCUpTwR6nNc5fVsZgOe9PvfAwd26dwC+vOLJqrxXEpHZznbAsSnxPFInIOje7z8BpmjsYGBW.jIy6IlVqs1ZXzQGEG+3GmiWyhEK..bi6i55OY+YsQtsRSZx9gvI+z8Tg2CIpfH7+I73ZsamvqsrOGneWXbABiIH6EBYedBrtGPRE9AQChTFJExfyrgIk9PncJ..SgWgZxiP2c1nSDx0IgCNWsAsMZPhpCYJXS+98ihKtXTd4ki95qOlC9j98nVsZHRz5RaxbyMGJpnh3emN+IKpm9zmFkWd4bMBmISF1ELCFLfEVXAr28tWVEItka4Vvi9nOJySIxEQxMQJIWzjapkpJjhAzq+5AFZpOJSZLJv56BDLXPb7iebXylMt8050qWVPtra2NzpU6efwFgHw..NlAxcirmTQz4P3DQ50m88+rqaYxX6U6f972rEdBc4QnKkYGKfvcBDxNZIRj.ozJUxuRRzWoNDoDIRPd4kGGDIQeVZvmJbDxkIxeTxZT1agJbvF.annvtY9ptQGzM3Xwhw9faznQFkqRKsT31sa30qWthsn.UIN8je94yc.GkJUhHQhfvgCypW23iONRmNMyN0ZpoFtjGKt3hQas0FppppPmc1Itm64dPznQ4DuQ2nHz0nI1EVXgLRRz3IY7fhy5ZUPL.faR2BWzjSN4ffAChd6sWN.Xf0gS1ue+PqVs3bm6bvhEK7tTaDBND5Pz0vFYPihWjVjmMM72LK3zw0yh.5Xy1IZilzesPGhdHVrXH4S+o+zGgXFoe+9Y0Zl1UXkUVAABD.FLXfojKcSlxlIo684me97h.BcHpw2Qs5Hgk8GAupPsxTXLCY6VzFEm.wRy7xKOL1XiwAhBrtO5Ti2NQhDrjnWSM0v6rQbMhFCnajM0TSXwEWDRkJEKt3hnnhJBNc5jIQGccEKVLzZqshG3Ad.zd6syckFZRM84QtGJ75PnznKb7ldOjUKZrPnEMpwgGJTHNGAqrxJnvBKDNb3.Oxi7HHQhDvkKW..LvEz34YO6YQYkUFZrwFga2tQt4lKb61MzpUKxO+7wRKsDmkZgWGz8QRZZhGO9FxTT5fTJPZ2XQhVO2.z3Doz2DL6jQVgpvWlLYXkxiPPi58aYxjgSXYpToPgEVH74yG750KTpTIBFLH6oPjHQPrXwXXiIWvk7M+leyiPh0D8AR0YKcBSIjfDcVZRCIO3BSLCcwjWd4wV+nafYWOqBox6FsBWXNG1Le5jJUJyrRhi9qt5pPiFMvjISPrXwviGOXkUVAKszRPiFMHXvfPtb4r0SJ6xoRkhC1OVrXnzRKEqrxJvrYyPqVsviGOvjISrBVDOdbb3CeXrsssMTQEUvW6zDagVx2HKsY+7M5f5hkjqbBw3mpaAe97wsWVQhDg+q+q+KboKcIdQsLYxfc61Qas0F6tnZ0pwwN1wPokVJjKWNJrvBQIkTBRmNMVd4kgQiF4IRjwI5mBcmYi1sR3NKjq0zBexnGsvTn6yYixCctP6jQ2WHCWz0kOe9fBEJPf.APN4jClat4fLYxP73wgBEJfOe9358f.OviGOPr306M1R9XerO1QnfcIkWiBVgVMJTHo..iRD4BEYwlBTNYxjPtb4WQOEfFbnCZRtP2eDlnEB1MZw0FE.lvIGoRkhyXKYIIc5zvfACHd73vue+bYWRVEor2RKpoqYRzamd5oQGczALXv.b61MRjHApt5pgACFPwEWLtsa61v92+9Q4kWNjKWNu0tPpaKDm82uK..VuHgxj485HkBSDlb4xwbyMGuqgLYxva+1uM9hewuHOgk9dJszRQ+82Opt5pgSmNYW4LXv.dtm64PSM0DJpnhX2FoEajauzt0zjZZ2fqkaq4latbW.hF+I2lo.zo+Nsaiv4HpUq9JfVkt9SjHAO1jat4hnQihpppJXylMt+RSeWBS3KUWGjAuzoSCIe7O9G+Hz.kPq0DNyzjRMZzvtZPYFlFDH3TIK2zpaZRfvtghvs+A.mM2jISx4nHQhDWQ+FNaJ4JbxC0EaDlHO5uEOdbtFCHIZjTyMud8hUWcUXznQtErpRkJX2tcjHQBL4jSBCFLfFZnATPAE.ud8xzynrxJCUWc0XO6YOPud8PpToLcSDhRlvLXJbR+6G3eo7YPvpRn4PetFMZjuO8C9A+.7s+1eaTPAEf3wiyUflWudQN4jCJpnhXWZkJUJ16d2KN6YOKKUjtb4B6d26l2QiFqIWGHDtnIqzj3rQPR30K0cgH2p..SkFhKTzmgvjdQKBn4QzBQJNExcZxUoXwhw8DBJlpPgBwctyBKrP1.I.3cMkJU55PjFOdb9Cj72kfRjrnSBGEcCmVASmXzDVheQzpLxpnP9jPKVjHQB6OqvAOgOWH0KnIOBSHiv3HJt3hYN8SwpPzcNQhDrDpGOdbnUqVdAsNc5vryNK5ryNQEUTAhFMJdnG5gfb4xQiM1HaQL+7yG5zoCacqaEEWbwLUjI+4EtSF0ujyFa6r2I3ZYIk97odLFM9PUVV5zoQu81K9A+fe.Wv9TEskJUJtIhDKVL10I0pUiezO5GguxW4qfKbgK.ud8BUpTgkVZITXgEha8VuUtqeJTMKDtic1Tjdit9n4PDZaz7Eg6xHLAaajautb45JhMfj7FoRkBkJUhEWbQjSN4f.AB.e97gRJoD92ojhRwLlat4BkJUBqVsBUpTAoRkB2tcCIepO0m5HzEiP+yydkL.P94mOaggFvSmNMiUOM4WHSGEFPrvNjRlLYXbvofAEVTAj4FrC..f.PRDEDUOj6RBCNdivtlBVhBvhnm.Yovtc67DxJqrR.rt.2RxrdQEUzUT6v986G50qGIRjf6wv1saGwhEiw7urxJCJTnfqwWgRcd1v6JbQveL6DPiozN.jJaSkm4W3K7EvvCOLlc1YgMa1XoiThDIvoSmPmNcPrXwvjISrTs7s9VeKL8zSC0pUit6tazSO8f8u+8icricf23MdCL4jShJqrR99uvb7HbdxlkKAgWuz6SHbujgBgLTl1IflfKzpO49GYsm5GCz8vxJqLVKYEJIlTW5gVbQ.4DMZTHRjHNImREKVL2c2SkJEG3AAIJYgO2bykW4RbEhVTHzhN0YEElJegYcjVbHL.Hg3HKjdE.XCcmfrVP2jnuGMZz.850ytpQJ2.oLcDDuFMZD4me9nrxJC82e+HYxjPmNcnyN6DyO+7X3gGlkrcOd7fnQihZqsVryctSnQiFFcAJPKxkPZAtPRFl84962iXwhwAqSbeZzQGEuvK7B3sdq2BQiFEUVYkH2byEkUVYPjHQXhIlfqFNRqRSjHAZu81wd26dw4O+4Q73wQKszBNyYNCGCGQ9PWtbguy246fu6286dEnCQFtnc9H2lDdP6LP+jPXhPGhb2gxIiP53PFLDhFF4NFwTAxnqvELd85ElMaFiO93b8iqUqVtAjnSmNFIx.AB.0pUC.f.ABrtHo8Y+re1iHLCpzD0jIShvgCyLyLmbxANc5joEAojCDbczVdDUfUnPAqHZT.tjUA5hQXZ0ER6BgODRkhMZgfvEWRjHACO7vvmOePmNcnjRJAqs15hxUEUTAJszRQ2c2MuqPokVJyilN6rSN4MlLYBkVZovfACvhEKngFZ.c0UWPkJU74JwNTpwAtQXsuQbk4OlEC5zoCRjHAm+7mG+jexOA+hewuf67k4latbeSHZznHd73n5pqFd85EISlDkWd4vkKWX6ae6HmbxAO6y9rvnQinwFaDCO7vXjQFAelOymAqrxJvfACXqacqrLvbtycNzd6syxgOA4svhH5Zc8PPOSwMRAzSFoHFIHbWSJq5TvxDZPTvzzXJ4IB4hFkuHhJJjDVRpHRkUV4UPZPRvAj7nO5idDgqpoUrjOTz1PhDIBkWd4HUpTb1NI+yIYJjV0R7gmHWlPdBQnvPuWxeMgwJPnUQvztQOnEFTj9pUqlGDDIRD66mZ0pwJqrBlat4PM0TCZqs1PokVJps1ZgFMZv69tuK5ryNwN24NgNc539.FoEo6bm6DlLYBEVXgb7MjaZzBuMhtvBSnjvXFDNVPiGDBHz6SHd9qt5p3zm9z3q+0+53IexmjwTmjqEJAeKszRPkJUPrXwvkKWH+7ymgM8lu4aF..u5q9pvhEKb.we+u+2Gs0Vanmd5gcyHu7xCefOvGfYMapTofMa1fYylQ5zoYV4lMuvnrgSVvoj9ke94i7yOeHVrXNPUJFSprXAV22exXZhDIfWud4fYI56PiYDvLD5koRkBETPAXpolhOOWc0UQkUVImaCx8ZhtHjA+.AB.IezO5G8HDG1I+FA.BFLHjISFBDH.Fd3ggEKVX4KgvfUlLYLbjzpahLcBS3ylk8N5+KVrXFZVgTtPnOka1QvfA4pmRoRk3kdoWhapezVmACFD4jSNn5pqFJUpjCzjZ0Q0We8nt5pCZ0pEqs1Zn5pqF4me9n1ZqEJUpjawpaD2mtVGoSmFJTn3J.HfVT.rtO9TWojvvlv71tc63y849b3we7GGCMzPH+7ymMvHDBznQix8gg.ABvTwXs0VCeouzWBu9q+53Dm3Dn0VaE6bm6DhEKFm8rmEemuy2Am5TmB2wcbGWg3joWudbnCcHL+7yiomdZnSmNN3YEJTvsEJRmToRXkFiDIZcJnnVsZdwkPiaj6p.fmGA.NtJpNLnWqvwcEJT.MZzfUVYEr3hKxZ9JMmTqVsHc5zHPf.73LI0MjgWZAKkmKI268duGQiFMHYxjbvUjEEhVwVrXgwoVrXwXt4lClMa9JTIABYHxBNveHWy2nzaKDScJIaju1BcCZyNDIRDW4WgCGFSLwDb7Azjl3wiC850CylMySnorXu3hKhToRgCbfCfDIRfJpnBnQiFnSmNXwhEFtXp+ESWWWuKDRmNMGbK4V.sPPlLYbg+SMhb4xkCOd7fm8YeV7U+peUr7xKCf0aT3DRGTRmBGNLBDH.ToREuCnXwq2dauq65tvO5G8ivW7K9Ewa7FuAN3AOHN7gOL74yG9O9O9O3lX929a+sQ+82Opqt5vcdm2IhGONFbvAwryNK5niNPu81KlZpoXgMlzWIYxjACFLv9Z6vgCdRlOe9PN4jCKaMjwHhhEBgJm9IUMizjdJa5whEiw2mhmfnvhSmNYZeP.unQiFTXgExdXnRkpq36pzRKkSzFv5wvJ4q7U9JGIUpTLjQVrXganEBw5lvX2iGOvnQibM3RjlinIAv5IHg1xjPpQH7WBeNY8f7GjPifB58ZAgH0+eUoREb5zIhDIBlbxIgISl3F7sBEJfd85Yg3kBDSsZ0X94mGSLwD3Vu0aEwiGGEUTQ.X8DBRMAPZ2or8AN67.rYGDRUoSmlmTPXkSVvxjICWzN+8+8+832+6+8bkp0QGcvzfVHF4j6Gj0eJQkesu1WCKrvB3oe5mFexO4mD6ZW6BJUpDm+7mmKO1byMWzau8hd6sWrm8rGbtycNDOdbzPCM.850iUWcUbhSbBTQEU.a1rghKtX3zoSzau8xsJWBlV+98ipppJjISF1cIud8BKVrvwoP6xQtDQ.wP4eJb3vbo5RDLjL9PwMRwc52uer1ZqA850eEPTqToRnToRVhJUoREyF.c5zwFkIi6TSSWxG4i7QNxxKuLRkJE61vhKtHOYUkJU7JQhhwlLYBQhDg0zxrCRh70UXViENgP3yocQDxeHB1LpndtZGjkHxJK0CynIX50qmITGMPQuOkJUhkWdYX0pUr8sucnSmNr7xKyWyByvLcjcf4WqEABYhKUMaTGlg1FOZznvnQi3m9S+o3u6u6uCRjHA5zoCxjIigXNRjHLPC986GQiFk6hmBCp79u+6Gu4a9l3RW5R3zm9z3tu66F+leyuAuxq7JXs0VCZznAkVZoHXvfn4lalaWTUTQEXxImDu7K+xnt5pCIRj.6XG6.e4u7Wl6tm1rYCgBEB6YO6As1ZqbecakUVgU2aQhDAa1rw8RZx8CJSuBk1d.vjWjtloEKQiFkUVCg7nhDb.oRkxtaA.1MR5uSy+xM2bYK+z8eIRjvDXLSlLPxe0e0e0QxM2b4u3DIRvcpEp9boXChDIBJszRwxKuLycdkJUxnFPmLDt1jUqqFsAH2EDtkkPWktVKBH3MoOuEWbQNXL.vZRZ3vg4LeS9GJQhD77O+yCe97g8t28xIXB.rnCPI7hBZWXPuWu6DPP4QI6QjHQPiFMPkJUvqWuH2byEehOwmf6KZKszRbeGvhEK7jdJfQwhWukPQzBOd73njRJAM1Xi3we7GmQP4y7Y9L37m+7ngFZf4AzxKuLhDIB9re1OKWKz27Mey3zm9zbuParwFC..+a+a+aLqZuzktDb5zIVc0UwQO5QQf.AvMey2LuylJUpvbyMGBFL3UDPJ4+MEiHMNle94yPqSADSfvPt2RwnHLNiToRwdKPYPmLHQ8rgBKrPN.XxERpqDoToRTXgEx6lJSlr04Nje+9gHQqWqtpUqFABDfwGdgEV.yN6rnjRJAyO+7b9CVd4kgISl3.PoIMj0JxEI5BXiRTjHQuWKEhrjQ7GmBh5ZEXLk1cJQIztGFMZjQOgTdtBJn.dvVlLYX94mG+i+i+in5pqF2xsbKHRjHPkJUrUVx8CxRlv3Ttd2IfrrA.lJHT1pWXgEPe80G9TepOEqeogCGFkUVY7haxu3.ABvYBVqVs7tJqt5p3Nuy6DACFDm9zmFZznA6XG6.UTQE3ke4WFczQGviGOvhEKXrwFiawrm8rmE6d26FFMZD1rYCJTn.yLyLvkKWLxY986GSN4jnnhJBoRkBABDfcojnwgSmN4wZRsOra2Ni.SrXw3IrDgJSlLI6BC85HRxEIRjqn3rnVsKAYJwiMxXIIxvpToB5zoCETPAb8YStroQiFnPghq.h6bxIGXvfg0mi8fO3CdDpQxcoKcIF1HUpTwsYzhJpnqPi8ElPHxxFAO4ZqsFS8BgvGtYKBHKuD8HHTRHzJnsM2rCBq4Xwhwu1vgCibyMWNodDaQ0oSGSE2LYxfd5oG7jO4ShG4QdDzRKs.whEifACxnqP6xQw8.7d7Rhrve8rHfh8gfNTiFMXwEWDOyy7L3a7M9FvnQibEoQpLGg1F84SDaaqacqHYxjXwEWDlMaF28ce23UdkWA974CxjICe7O9GG1saGYxjAyN6rHd73nqt5BVrXA5zoCCLv.PkJUn3hKFkVZorbzDHP.DHP.bvCdPDMZTL4jSxjFLXvfn3hKlSxE06ko52X7wGGRjHAs0Van1ZqEISlDyLyLrtIoPgBlJIBqIEhPdNc5jUHPB4HZtDwF.BdSgPjpPgBXxjInWudTbwECsZ0xA7RwbP5OKAaNv6UCFD81kby27MejfACB0pUiolZJVUlWc0UgKWtPd4kGb61MW5hjOXDCDyl1vDZOjKCDV+wiGmYgJwCDgLHjd8B4JCkEZgKdDVqAz1oqt5pLjbDxOABD.4me9bgvnVsZF4JZAwW8q9UQ73wwcbG2Apqt53aJz4Fv5taoUqVFwBg7ph7GmvqVoRkHVrXPkJULo1Vas0PvfAQnPgXFqN2bygO4m7ShKe4KiRJoD3wiGjWd4w8QsnQixphGw1S5ZZzQGEISlDOxi7Hn1ZqE+5e8uFJUpDO3C9f3Ftga.m4LmA974ClMaFs0VaHPf.Pjn04dSs0VKVas0PokVJZokVvO9G+igc61YsVppppBhEKFiM1X3G8i9Qb.7TwHQi6ISlDFLX.Nb3.Nc5DABD.d85EW7hWDpToBacqak0c0hJpHVI.I1qZvfAVIMD1KGHXMoXCA.GrOQTQGNbv61GMZTnWudtzVIipBgWkVzQFsn4qjGGqrxJPpe+9gEKV3rpdlybFzQGcf7xKOTd4kyMP53wiiKe4Ki5pqNL8zSyYojtgKDIEgq9nU8T.dD6CoKVZBd1S1y94BecByVLEyRlLY3bMnPgBDMZTzSO8fa5ltIXznQLyLyfVZoErxJq.61sCwhEi95qOnUqVTSM0.kJUhKe4KyEYRwEWLb3vAToREb3vAGLEcyhZLe974iqQ6ScpSgLYxvbWgZr3kTRIbsXPcUy3wiilZpI3vgCzTSMAUpTgHQhfLYxv2vIqsiN5nb6l51tsaCETPA33G+33fG7f3QdjGAETPAX3gGFoSmF50qGQhDAu7K+xns1ZCUTQEHTnPnwFaDW7hWDRjHA0VasbuelDUfImbRDJTHbgKbAr8suc749beNbricrqnxtH++CFL3UT2DYxjg6AyG8nGENc5DkVZo3.G3.XlYlAqrxJvsa2ns1ZiUGPe97gsssswtFsxJqvs+Jpfjn7QXwhEr7xKyJBnd85wTSMEJnfB35Bf7FgLNlNc5+.pdKbdCcdKUpTH4K7E9BGwue+HTnPn3hKlgmh7iKc5zvsa2r0yKcoKwxU9zSOMBDH.S.NhokDmsosbHr7I2RD922HpFHjxDYCMY1vrJLikTlVUnPAt7kuL9I+jeBlXhIv1111PiM1HKJtMzPC3EewWDu4a9lvfACXKaYKvhEKn5pqlkOFR6hn9c.00alat4fc61Qf.Av.CL.d9m+4wIO4Iwu9W+qwHiLBb4xELYxDN4IOI15V2JdgW3EvktzkvXiMFLa1Lmek.ABf3wiiZqsV1UP4xkyIOymOePkJUn2d6EoSmF2+8e+XW6ZWn+96G1rYC6YO6ACLv.nqt5BACFDKu7xn5pqFaaaaCqt5pn3hKFwiGGczQGPoRk3nG8nvtc6viGOrnDPvt9bO2ygpqtZr8sucnWudX2tcFFRpPaHhIJjgtjR1QIIUXEi4zoS..zc2cikVZoqvsVx0sIlXBlspjWABASIPf.nhJp..q6tL4lG4xpKWtfSmNYiKTUjQ09BMWT3jegGD3HRtq65tNxZqsFhDIBVZok35HnzRKEiO93Ptb471UACFDFLXf8shbwgJyOJynzI.4GnvcHn.nof5DJ9Sazh.BImMaQfPWXnAQhkn80WeXfAFfKVdRYIJpnhvO+m+ygXwhQs0VKxM2bwd1ydfUqVYzflat4fUqVwfCNHNyYNC5qu9PvfAwzSOMtzktDd1m8YQ5zowzSOM750KznQCVc0UwG9C+gwBKr.VXgE3Z4kHYnHQq29Wme94gISlXIgjZD2jwAxUJwhEiuxW4qf63NtCLv.CfScpSgCe3CiN6rSbhSbBzd6sivgCCkJUxI4qmd5AM0TSHPf.nqt5BZznAVsZEszRKWgT5r5pqhW7EeQb228ciOvG3CvtfRt.kISFTSM0.QhDACFLvvIRUZXxjIQvfAYfDhEKFWtjjkehNy0VasLOsjISFVXgE3.ZiDIBb3vAVYkU3EDT+gKYxjXokVheuZznAETPAbNgHxLRdBPYgWnqrazB.gdZ..H4.G3.GgHEWgEVHb61MNyYNCjKWN1912Nle94gZ0pYewb4xEzqWO2noI5pRtL32ue1OLhjSzIWpToX2hHRYITPXERVNgKDxd6LgWXTh4H+xojRkHQBLxHifBKrPjWd4gicrigpqtZr+8ueDIRD7TO0SAmNcxxr3AO3AgEKVPO8zC9E+heAlXhIvTSMETpTIlat4Ps0VKrZ0J73wCLXv.FczQgGOdXKSjtkdi23MhSbhSfssssglZpIbxSdRnVsZty0HRjHX1rYjSN4fomdZr1ZqAylMyJVcznQQCMz.t669twC+vOLpolZfe+9gDIRvANvAPO8zCzqWOSUjcsqcgwGebjLYRzQGcf3wiiidzihZqsVTYkUx6pLzPCA4xkiVZoETd4kiSdxShe3O7Ghuw23aficrigOym4yfQFYDjHQBzc2ciRKsT7i+w+XzbyMCiFMBUpTwzel7VfjfGhowT+gSnwMpi3TXgEhpqtZLwDSvk8X3vgYr8kHYcAKytc6L7vje6iN5nL80A.VbwEwV1xVfWudgSmNYHno3AoOyrqFQZhe1FUkb3Ce3iPHrLzPCA850CIRj.SlLgwGebjWd4w9051saXvfA3zoSTas0xj1hBzfRvCoxxDONHJyRuNx5NkKfrIFmvE.Bytb1zUftPDNHPTq1mOe3sdq2BEWbwnrxJCyM2bn+96Gemuy2AG6XGi8isqt5B6ZW6B+M+M+M3a9M+lru6gBEBs1ZqPmNcPoRkXlYlA0TSMHYxj3oe5mFe3O7GFSO8zX6ae6vqWuvpUq3Ftga.6ZW6Bm5TmBacqaEgBEhUc5JpnB9lc73wwRKsDlXhIXzqRjHA1912Nt8a+1wd26dQIkTBBEJDlYlYvzSOMFarwfFMZPiM1HjKWNps1ZwK8RuDFZngvsca2Fld5o4fEaokVfNc5fMa1Pu81KuiCct1QGcflatYDHP.X0pUby27MiJqrRXwhEbpScJblybFHRz5MNbZhOIrB4jSNHRjHvqWub+fas0V6JpwDhVHj0b4xkCmNcBoRkhsu8syvutzRKwACSUlma2t4Eb986GFMZjkyxbyMWN4btc6l2If32EArRxjIQjHQ35gei1AfdjNcZHoqt55HDi8DKVLxO+7gMa1XNVDHP.rksrENvDR41b61MZpolvxKuLqy9DN8B4QjPq4Bq0TxJd1qRydQ.gOO4mX1nDQXLS4JHXvfXngFhUDCR4nkHYcoiwrYybwWWVYkAkJUB+98COd7fa3FtA78+9eeLxHivRr3XiMFVc0UgNc5vEu3EQ3vgw9129PEUTAjISFLa1LFd3g4Xppqt5vq9puJt669twa9luIlat4XLzI7smbxI4y2t5pKru8sOzQGcf8u+8CUpTw9d61saL4jShm64dNr6cuanVsZXwhEFRXEJTficrig8rm8fxKub7DOwSvA4ehSbBzYmchyctygxKubbC2vM.QhDgt5pKVo7ra2Nt669tuBWWUqVM2vSBGNLm3zRJoDTRIkfRKsTjNcZrzRKwIDSHQ9HTjHzBWYkU3FKBcuWpTon0VaEqt5pLHAjgRBT.B.EhZK50qGABDfUMBh53T0KRFSI2g0pUKznQyePQMIb9C82j7.OvCbDQhDAqVsxv2s0stUHUpTX0pUNYTDi8HYI2ue+Hc5zn1ZqksJL6ryxq7H7cof8n.+nFoA.9CnEgvI2zCJX5ruPDRmAZfvmOe3Ye1mEe2u62EQhDAUTQEXrwFCm8rmEwhEikAwPgBwSnpqt5vwO9wQpTovd26dge+9wzSOMLZzHlat4fa2twt28twINwIvpqtJZu81Qqs1JVbwEwjSNIlZpofZ0pgDIRvV1xVvryNKxM2bwAO3Awu427aP5zoQUUUESIXBDg+5+5+Z7POzCAKVrfKcoKgSdxShN5nCHRjH7lu4ahgFZHrvBKft5pKTQEUvVnsYyFpolZfLYx3E3jLT1c2cC61sC2tci8u+8im64dNr5pqhctycxRwH0oMIZNDJTHTc0UiG6wdLDNbXDMZTzbyMijIShAGbPbgKbAlzgyN6rX7wGGSLwDX94mmqLPJNRYxjcEcJTZAjd85wniNJDKVLOmJu7xCUWc0HVrXX94mm2owjISXgEV.QhDgM9HV75JFxLyLC21qRlLIJqrxfc61Y2fHWho4DBc2V37FgKFjHQBjryctyiPDOJPf.3Ftga.Ku7xHTnPHTnPXs0VCtb4h0qGBZJxmtfACBmNcxaCqToRL+7yyUzDv6kfIpyqPIxf7IiB.V3CgvdQ9bR52IQEBpX4kJUJVXgEvK9huHdpm5o3JGiVrRxwtPoiO2byE24cdm3hW7hbs59POzCgQFYDru8sOXylMHRjHnVsZblybFdh2YNyYvRKsD14N2ITnPAJnfBvYO6YgQiFQqs1Jb5zIpt5pwHiLBN24NGmuEylMisrksf64dtG7E9BeAFF4e3O7GhG3Ad.bG2wcvcQmolZJL1Xig1aucVuSIt9enCcH7Nuy6v0HgToq2wMIxjEHP.TYkUh3wiiFarQ1hqHQh33CrXwBuSShDIfMa1P6s2N5qu9vEu3EYW2FczQQCMz.N4IOI750KBDH...15V2J9leyuItvEt.SEDWtbwERE0.xouSud8BIRVWbC73wCb61MBGNLhEKFtga3FPWc0EGPLon2FLXfiujJRJBIR5u4wiG1Mbx0qxJqL32ueTTQEwwRQ6PPYgVHEXVas0fjsu8seDpdRoZvkJ+rRKsTPYSNRjHbysykKWvsa2rJMSvLRk511111PznQYh1QPmJTECnIxzMnrCXg9IUqBDtzkUVYviGOLMZc4xElYlYv69tuKd629swt10tPkUVIld5owpqtJJojRPas0FWCpM1XivrYyPjHQbRXjISFpt5pw9129fLYxv3iONd5m9oQ+82O5t6tgFMZvPCMDzoSGzoSGGLXM0TC9U+peElbxIgQiFgQiFwS7DOAZt4lQ3vgQKszBN7gOL9jexOI1wN1AZngFvTSME9s+1eKzoSGznQC5ryN4XwntGSd4kG5t6tQ+82OZokVvryNK5pqtfNc5Pe80GRlLINzgNDuP2pUq3ltoaBwiGGO3C9f3W9K+kXokVBu5q9p78vImbR1UmpppJlyQzBze9O+miJpnBjLYR7XO1iglZpI7W7W7WvF+Zu81gRkJgACFv7++ZbIZ0pEc0UWn1ZqEs0Va3Mey2D0TSMbNhDlbJBQPhPcyN6rXvAGjS30Mey2LzpUK2mIxKu7X4jo5pqFyM2bPud8HSlL7jaJ6xhEKFFLXfiKjZkVD8soGByKEsKPlLYfja8Vu0iP+Bozbj36RkbY73wgFMZPd4kG2voUpTIlZpofNc5fKWtXX0jKWNFXfAXevITfnsnnt0BQHJgPftYKDHnthGONKvqhDIBiM1XXlYlAG8nGE4jSNvrYy7MaJf7EWbQTYkUhJqrRTSM0vzkViFMLl4Z0pE23MdibhvN0oNE750K5t6t4fyppppvANvAvTSMEZt4lQEUTAd9m+4w1291gYylgQiFQWc0E9PenODpqt5vG4i7QPKszBZqs1..v3iON1111FDKVLpt5pwryNKVd4kQ80WO18t2M6euNc5fQiFwZqsFFbvAgd85gd85wfCNHJqrxfOe9vRKsDd8W+0QyM2L2JXSjHApqt5v4N24vIO4Iwt28twZqsFt7kuLNzgNDJt3hgHQhvq8ZuFmuCh0lYxjAlLYB81auvoSm3du26Eu669tHRjH3VtkaAkUVY3bm6bLDwhDIhCL0iGOrXsoWudbpScJtU0JRjHtBwnqCgPbSVzWbwEgb4xQ80WOJpnhvHiLBFczQYC.Dz8jNpRUJVlLYPYkUFBGNLSYhQFYDl5+TOkSHyDnCgtSK4e5e5e5Hc1YmLotb61MOoVhDILt4ThyTpTIWBe0We8bBMHU.KVrXn7xKGkTRIbgMPksI4dAsa.oiQa1hfLYxvR6H.thxias0VCm4LmA1samkZchiKSO8zbvU974Cuy67NHUpTXt4lCc2c2XvAGDVsZE0We834e9mGKszRvjISres81au3RW5RbAsr28tW31sarvBKf0VaMr7xKyRzRt4lK1xV1BLa1L5s2dgUqVY2RJu7xgJUp3F2mCGN3V55zSOMxImb3dprKWtPKszB.Vu1WA.1111Fdlm4YvJqrBZs0Vw+v+v+.Zs0VQhDIvN24NwoO8owbyMGppppXQ1c3gGF986mqcfG9geXL5nihAFX.nSmNtgDB.bxSdR7DOwSvHyzYmchN5nCtX6EKVLdrG6wPN4jCdzG8Qw92+9QlLYfZ0pQM0TCFXfAfCGNPrXwvC7.O.jISFFXfA37HQr4khoin6Lc+khaCYnZbo...H.jDQAQUtb4XokVBwhEC0VasPud8HXvfbVloZXgfmmR7VQEUDlXhIP0UWMu6fYylYJSKLAbBcwV3h.QhDAI28ce2GY7wGGtb4BW7hWDUVYkviGOPsZ0bJuyO+7QkUVI5u+94sfUqVMb4xEzoSGlZpoX5TTc0UyRdGMAmj3Ox5.UzND2fxdxuvCxW3ToRwLA7Lm4Ln2d6EIRj.QhDAkTRIvlMaHUpTX5omFtb4BoRkBM2byLjjZznAoRkBNb3.M1Xi3zm9znhJp.EWbwX94mGNb3.Kt3hb6Tpt5pCc0UWvgCGvpUqrtEENbX3wiGLwDSfW60dMLxHifgGdXHQhDr8suc7fO3Ch1ZqMDOdbL4jSh+k+k+E32ue7rO6yh3wii4medzc2cywH..bgKbA1cxDIRfe5O8mx0JakUVIb3vAK3WO8S+zvnQiXzQGEEUTQLWu5u+9QSM0Ddy27MwoO8oQlLYPyM2LdkW4Uv8bO2CN8oOMt0a8VQznQw7yOO9Y+reFN6YOK9XerOF2cKsZ0J14N2IFZngfDIRP6s2NLa1Ld228cwniNJ5t6twO4m7SvzSOMRlLIppppX2cFYjQfZ0pgd85wxKuLnDvRwIPn5PH3ArNZR1samiuwgCGXs0VCs0VaniN5.yLyLXpol5JZ7KUVYkvpUqvqWuXwEWDZznggZO+7ymSpWc0UGKKiYuSfPfUDIRDjTZokdDoRkhkVZInSmNL3fChjISholZJVxJnp8I2byEkVZovlMavgCGbNCnhRmnRKUDCwiGGEWbwbwMHTEIn7EP4OPn6Ozt..um5oQ9YNv.Cfe2u62A61syT00jISXngFBiM1X39tu6i6VkQiFkgUq4laFe4u7WFs2d6PkJU3nG8n36889dH+7yGM2byL4xlXhIfHQqKagwiGGNc5D8zSO..npppBM1XivpUqXokVBFMZDM2byn7xKGUVYknvBKDO4S9j3e9e9elkFEa1rgJpnBr+8uePUvWYkUFmUZhx4DCdc3vAZu81AUxqjKkjbhrm8rGjWd4g8u+8iSdxShW9keYNy2+q+q+q7MW+98yYg8XG6X3y+4+7HVrX7NUczQGnppphStUnPgv9129vu829agb4xQUUUElZpoPpToPas0FFZngvK+xuL93e7ON16d2KjKWNuH4jm7jXjQFgKNlVZoEF9aRTiIxVREUTgEVHiuO45B4kvPCMDJrvBwt28tgGOdfUqVYYV4xW9xH2byElLYhobMsyyXiMFJu7xA.34y.fIj2FsS..VOl.whEySbIblKszRA.XL+ofON+4OOzpUKpt5p4tCS3vgwryNKLXv.TqVM5u+9QwEWLJnfBfRkJQhDIfOe93.hI4yf3oS16.PK.nbCPTJ3BW3B30dsWCKszRvhEKLGXHTCTqVMdi23MfRkJQ80WO6qZKszBrYyFdrG6wvse62N94+7eNlat4vse62NjISFZngFfNc5Pd4kGWAXoSmF8zSOn7xKG0TSMb2uou95CNc5DETPAnt5pCm3Dm.Nb3.1rYCyN6rnu95COxi7HHc5zviGOPlLYbAsnPgBL8zSi5qud3xkKX0pULv.CffAChBJn.zTSMgQFYDDOdbTVYkwk5YhDIPUUUETnPAdgW3EvpqtJ9s+1eKt7kuLpolZvHiLBN0oNEKjXTbStc6FJTn.CO7v3jm7jngFZ.EUTQ30dsWCFMZDqrxJn81aGyO+7vmOevoSm39u+6GVsZkSx2XiMFqZc50qmmnQtBOyLyvhV1Eu3EY9ac629sim4YdFVSqHoUA.rVPQTufJd+PgBgjISxtz0RKsvI9rvBKjqqXJontb4hK2Rc5zwwBRkTKo3IWs.iEIRDjr0st0iPIXfRByRKsDy0m7xKONMz4jSNn1ZqkoLgvZ...LLq23Mdib0OENbXtyvPa2S7GR3VRazB.ZEqJUpvINwIvS9jOIW0UjJGjHQBNX87xKODHP.TSM0.c5zwAsEHP.DLXPN8+1rYC21scabKdc4kWF80WeXokVB1saGm+7mGd73AgBEB0We8brKe4u7WF6XG6.c0UWHmbxAyO+7LRKNb3.QiFEacqaE1samEsWCFL.Wtbg0VaMzTSMAmNchomdZzc2cCud8hKcoKwXg2Zqshst0sxnps7xKyryc5omFm9zmFG9vGFO4S9j3fG7fn3hKliWi56wT87RI7xiGOLbgG+3GGO8S+zvpUq3RW5R3i8w9Xbs8VYkUhbxIG77O+yiZqsVVguKnfBvBKr.KfWTSFOUpT32869cLuhFYjQfISl3pfafAFfmjRrJPsZ0voSmbvplMalqbMZhI0IUICDszRKbkuM0TSgO3G7CBGNbfJqrRnPgBTXgEhZpoFVjsnjmZ1rYNAkWs.iEIRDj7A+feviPYkktvIQwkD0TOd7vReWjHQP80WOVas0Xs3jD5UJvxIlXBTe80iUVYEl5DgBEhEcKp+mQBlKEmA4+Ns0GEbyO7G9CwK8RuDSa14medrxJqfcricfKdwKxcnlxJqLDKVLNd.puIr1ZqAsZ0Ba1rgXwhwAuoPgBL5niB2tcCSlLA61sC.vBUEU.4aaaaCG5PGByN6rnzRKkorMcSViFMrRNWas0xbD5VtkaApUqFlMalSnkZ0pwse62NJnfBfEKVvt10t3LypQiFr1ZqgkVZIlmLm3DmfqegbxIG7JuxqfVZoE30qWDNbXL7vCyJpgPwrUX8NPJHd94mOTqVM6Z4q+5uN97e9OON1wNFVXgEfCGN..Pc0UGuK1pqtJd3G9ggRkJQwEWLd629sga2twTSMEt268dwINwIvq+5uN16d2KVc0UQGczAb5zINzgNDJpnhfa2tge+9gLYxXZ1HUpTVxVrYyFWVjjXYoRkJtafN7vCiVZoETas0hkWdYlh5SLwDbw8TRIkbEUTlBEJPQEUzUnCRBoPsv7EjISFHogFZ3Hz1PzpiFarQLzPCAf2qX0I7ZyImb3.ena1TSdvfACX4kWFVrXgEBo0VaMVqen5+jbygTPLJIVjb5EOdbV5Q9k+xeI5omdfMa13zuSjVygCGPqVsrJSX0pUHU55cRlAGbPrvBKfBJn.zYmcx5NJIp.M2byvhEKbaKZfAF.1rYiaNGz4zMdi2HS8Yx.QIkTBqtBTWpQjHQrDvmHQBbW20cgEVXAFwiUVYElbejENOd7fVasUL3fCholZJL6ryh5pqNlTeu669t3Tm5T3XG6Xnmd5g2cXxImDCMzPvsa2aJACoiryTpvcYA.18t2MN+4OOaffnuvC+vOLJojR3IRDv..qKW75zoCO4S9j3C+g+vvgCGXG6XGvue+vrYyboTFOdbFLEEJTvU5kd85Y32IwR1jISnt5pCCO7vXokVBczQGL7pTSGrgFZfU7DZmD0pUy8XARuhBGNLa3UXGEciTLDQhDAIszRKGgBXgBZxmOePhDIvhEKLTeTQODJTHTTQEwaSRbGovBKD1samoPPAET.le94QQEUDlat43.TSmNM6eoOe93JyhPAxqWub1J+te2uKlZpo3ItDLqT+QPhDIn7xKmqjIud8holZJL2bywHQ32uenQilqfgm4jSNXxImDc1YmXwEWDJUpD50qm4N0fCNHNvAN.qEPlLYBQiFEczQG3Mdi2.m5TmBNb3.pUqF1rYCxkKm4AT73ww8du2K5qu9fe+9wK+xuLN9wONle94YoezfACn0VaEO0S8T327a9MPlLYXngFBhDsdA3O93iiToRg95qOnSmtqHeMjDlPVynEAY6FovC5F+Fsf4Dm3DLY5ToREua6u7W9KgVsZQxjIwu+2+6Y50WQEUf5pqNllMuvK7B3y849bXpolBRjHgYP.I1sUVYknolZBG5PGhCvkxza3vg4ED4jSNbwEIzfGADCA6dkUVIt3EuHKI8hEKlc4gxAE4kBoVGYuHP3wUDSfa2tYMr2kKWn7xKmsj5vgCtVSI0OylManfBJfc2IZznrBuQu9zoSyjeh5+YTKzwgCGPgBEHYxjPiFMrDoSX6+5u9qiW8UeUlCH4latb0WQbvgzTSxWXRCdZt4lYs1rlZpACO7vXO6YOvlMablmu+6+9w2+6+8QCMz.jISFtvEt.Ju7xQO8zCGHmISlfGOdP5zow67NuCLYxD5ryNYt9mHQBr0stUL2bywAj1byMiImbRnToRb1ydV1UOhu9TWR4odpmB6bm6D81aun0VaE268duHVrX3e+e+eGu9q+5b4kd1ydVNAQT9aHCAABDfYOIMwNaqbY6+a16FHVrXrzRKga8VuU31saVtUJojRfLYxv4O+4wi9nOJtoa5l31haznQgYylY5i77O+yi669tO7q9U+JtKelJUJt.36t6tgISlfOe9voN0oXCNDSWKrvBQnPgP+82OxImbPiM1Hql3jAfwGebzYmchhJpHTYkUxRAJQVNR...dOVEST3NaRYJbLRrXwPR80W+QnIOs1ZqLY3JnfBfSmNYrfUoREKkETUhUbwECWtbgbyMWbfCb.L5nixB2DoJvFLX.VsZkkCOJFBpGnQoRm3odAET.9o+zeJdy27MYq64jSNPoRkr16Sa4QAa0TSMA0pUiKe4Ky3uO0TSga7FuQrvBKvP4M93iy6xTe80C2tcipppJ30qWlNFqt5p3S+o+zn0VaEu0a8VPgBEn81amK1jm3IdBVmV+.efO.rYyFmSjYmcV7.OvCvvGKSlLnRkJL93iy61PU.0q8ZuFt268dgCGNvMcS2DtzktD5omdvV1xVfXwhwPCMDhDIBb61MGmDoERz3KYDI6Cg4cQnBYrQKBHz8lYlYv8e+2O762OyUef0qLr1aucbricLnWudrxJqvImJXvfrFUIWtb7g9PeHze+8yzYgjXwBKrPTVYkw83BhFED+hHvUHD0ps1ZYDjnlJRvfAgVsZQgEVHpnhJvpqtJ24QIirz0KoWqwiGm8LgPGJajHEKVLjzZqsdDu++wau2AG2kmaO9YKZUYW02ckzp9Z0KV1xRtI2jMXaro4PHACgaBDRBP7.SHI2TlL4p4FlTFBoLLYH2DBX.G.igXpFvXb23tUwpa0V0W00Jspu696OTNO7p8JaycluyuOyrijk0p8S488oddNmAGTD0Zh6aCFL.ylMKHAsolZRn.PxGjc0UWH1XiEAGbvnlZpAYkUVB0WO8zSK0ZOwDST.71zSOM5u+9Qu81KhIlXfACFDWwSN4j30e8WGuy67Nn2d6U.GGApF0x.x70SLwDnqt5BW6ZWSFTCxDyYlYlBTeyKu7PPAED1+92OFYjQvC8PODlat4vfCNnXcgrnPgEVHrYyFN7gOLJt3hQXgEF1+92uXwqnhJBAETPHu7xCMzPCHlXhAlMaFM1XiX5omFNc5DOzC8Px0DY65MrgMHVCMYxDhN5nQs0VKJrvBga2twm7IeBZu81QyM2rLDIs0VaHlXhQFdbZ.fMehMQxeK++eYS.QRpOe9v69tuKVxRVBN3AOHt10tFdzG8Qkl0UbwECMZzflatY7Vu0aA850i64dtGrpUsJzXiMhxKubr10tVjbxIi5qudYyU3gGNtxUthH.JkTRI3RW5RhBEYxjIzc2cid5oGYzS6omdDhQfqORJojPiM1nTRzbxIGL7vCKqOYXP50qWnhQNEbKlW.FNnNc5ftryN6xXk.FXfADhShwCSqWjUwBKrvV.CKqUqVXwhEYPFznQijLc2c2M5qu9D0iwnQivfACHt3hSvABcawDFe9m+4EWaLOABm5AFX.IwMhMosrksfnhJJzRKsHISO5nih7xKODRHgflatYXylM7ge3GBKVr.SlLg0st0g+5e8uhm7IeRAhy.yiumt6ta7Ye1mA850KkZapolRvwOQq3xW9xQHgDBxKu7vniNJZqs1PZokF9jO4SjGvO1i8XvhEKX0qd0X5omVpBCm3s.CLPzau8hyctyAud8JMVhy4KqXBmeWptKjsu4ysqmW.l2f+PHVMuAxSTADP.BFkX3oeuu22CkWd4hNNzRKsfolZJTZokhjSNYzbyMi5pqNbe228gfCNXb5SeZbe228gPBIDX2tcjd5oKEMPqVsHmbxAkWd4vkKWnhJpXAmWrXGzXIY1P2tciomdZowsM1Xix0Ut4lqPVWjPt38IdufMISk5eTKffNc5flMrgM3K0TSEczQGvhEKH3fCFCMzPXhIl.wFarX5omFwEWbhDlNv.CHklBXdM0J3fCFaXCa.Nc5DNc5DgGd3nt5pCIkTRH4jSV..GSVJpnhRlKVdhTc0UixJqLgpwYBoSLwDxbAyJXM7vCivBKLjTRIIi+nd85Q1YmsP7sTk543Ad5SeZbK2xsfa61tM7lu4ahPCMTrt0sNr+8ueg00hM1XEf2sjkrDzYmchO3C9.73O9iipqtZjd5oi+xe4ufjSNYr8sucnSmNL1XigMu4MiPCMTbwKdQbfCb.gJHSIkTDEtgr1W1YmMZs0VgFMZPO8zCXiJGd3gEVrfJvI4oGlGlphfpJx0pK982hOadkpUP0o8igDvYUViFMByBRCF50qGQEUTKH7hCdvChG+webDbvACqVshJpnBgF6etm64PWc0ERIkTjwqj8U5pW8p3a9M+lx0ga2tgCGNv1111DDl9hu3KJrLNmVrwGe7E.LtPCMTrm8rGAMB77kgpRTInlSj57mvWADP.y2wXlbJi8xqWuHiLx.ZzL+fgSTex3s3zOoWudDarwhvBKLId5vBKLoipNb3.iN5nhNAPoxIzPCE4me9x.QL2bygm9oeZgy8oV.PZxSiFMBezyMBjRA6s2dQZokljvI2.aznQTZokhhJpH7+7+7+fuxW4qfYlYFje94im8YeVo97bHNznQCRKszP1YmMLYxD5pqtPVYkEty67NwANvAfUqVQHgDBJt3hgISljvhHqschSbBTd4kKFLRO8zkJswqCe97gt5pKA4jTSvToubxipDJxrzxbTS4CSt3mSWEeOpOv4eC+evq96qlnMgwB4XI9+UXgEJv83Dm3DPqVs3a8s9VHpnhBImbxvsa2xLWWSM0fTSMUX2tc7Nuy6fst0shnhJJoJT25sdqHpnhBm3Dm.IlXhhG8a61tMze+8iqd0qhRJoDb1ydVgX013F2H18t2sznTpUybdr6pqtjxrxbRYUHUCWzeFJQfRc1YmcYbTDoLnVXgEhlZpIApDrJE4me9RIHiHhHfQiFEMzMzPCE8zSOR0ahLxHk1TSH61SO8HvA3xW9xBzketm64jpDv2O0nWB.OBiZiFMhomdZTTQEIwDGe7wKUgIlXhQncvcricfW60dMjUVYgRJoDXznQru8sOQj573wyBRhcUqZU3IexmD+re1OCm3Dm.s2d6vsa2Xm6bm3xW9x3.G3.n3hKFQEUT3hW7hBKbDZngJ4AQ4DkrUAAMHmkXRujzCHoXD03TUsvqRCk9W4mqm0e0+O+G1b+KgJIoJtvg4CxjKiKt3Pt4lKra2tvZ1aaaaCQEUTvgCGnu95C+s+1eCIkTRRCOqrxJwm+4eNRN4jEvE50qWIA4W60dMgQRXCSIQ.GczQiksrkIMbi8fhkXOt3hCAGbv329a+s3cdm2Au4a9lvoSmHkTRQJ7hWudgEKVfCGNjlN5OHMUuWpKyLyrL850i0st0gVZoEjRJoft6taoawjUAX7qIlXhH5niFCMzPnu95SlCAVlU.HzHHoPiPBIDzRKsHID5zoSjTRIIzWxQNxQDFVlI9R3RSDGxtUyaZbCCIDq4laNABt2y8bOBAQ0We8gu+2+6iN6rSDczQiW60dMr0stU30qWAeSyN6rnlZpAG8nGENc5DUTQE3W7K9En0VaUXdYhZw29seaAt3974C80Wens1ZCM2by3vG9v3JW4Jnmd5ApysMG9Cp8VbCfp7zd83Fmq2BbdvXgUszo5UveMEy+MCbSHAxHSljetM1Xi3du26ENb3.qacqSPm4RW5RwPCMDZngFDlzXzQGUJiqISllWYH+28LhUThjzPpolpPJZEWbwh1IL5nihN6rSrl0rFbpScJQa0RIkTva8VukfB1pppJr10tVb3CeXrrksLgD0XECCHf.jYL95YfPvPzV1xVJyjISvgCGvmOex3qEUTQI5WKiAejQFAszRKvgCGnnhJBwDSLB2wDd3gKj0DAmjVsZEKJ5zMutQY1rYze+8Cud8hxKubb7iebYZsFbvAEpZjUAf7BJGoyQFYDTTQEITASxImrDpjKWtP2c2MrYyFV9xWNN1wNFZu81wRVxRvZVyZj4asqt5BiN5nnjRJAZznQpAMa69zSOMN+4OOLYxDra2NFe7ww4O+4w.CLfPfVc0UWvgCGn1ZqU7ZQb0nU6WPP..eAU0qpdOrhEr08KVytTav0h8viccmV7UY0CFRD2Db87FPq9pCqNQNL2br28tW78+9eebkqbEAx2W5RWB..kTRInkVZAlMaFW3BWPXxONuDczQGvoSmXsqcsBi9sksrE77O+yia+1ucQ+jiHhHPFYjA5u+9EcSiDTbRIkD9jO4SfMa1jYjvfACX0qd0xZ095qO7ge3Ghcu6cilatYAJFp8NYw7FnUq14yIfwjxJ+PblPzipSmNoZMVsZEqbkqDm9zmVfvJv7IHygqlgrzc2cC61sKImsrksLgNsyHiLvK9hunHXb7yhK5Gd3gkg1mjqEySHgDRPDNhrxJKnWudb1ydVDQDQH3FY4Ke430e8WG2+8e+nzRKEm4LmAwDSLXSaZSnkVZAc0UW3jm7jBrNFbvAQ7wGOpt5pgd85wRVxRvse62Ntu669PM0TijjESnyiGOn95qGiLxHR8sID.3vinFlg+UogKFY74KFbG72Svh8vjMKiw5KV2TXqiEyC.+dxWmpb3OueyvXHxSMa1LBN3fgCGNvO8m9SQe80GRJojvZW6Zwe4u7WPgEVHLZznLm1.y2mgvBKL7.OvCfW+0ecL4jSh0t10hImbRL6ryJUWyhEKH93iGiLxH3u9W+qXMqYM3zm9zHv.CDs2d6PqVsn1ZqUt114N2IZpolvccW2ERN4jwbyMGtvEt.xO+7wku7kQDQDg.vvqmAD4dkc61KigrXwhEQI2Ku7xkt5QfoESLwfN6rSzVasgrxJKgk.HGZRKo7FIIiqomdZDZngt.Za4W+q+0vsa2hB3DczQKMQgdFHqPaznQQXFHHyrZ0JBO7vQSM0jv3xFMZDc0UWnjRJAUWc0vrYy3Vu0aElMaVFjGf4aE+0t10vbyMGxO+7kRA6ymOzau8hryNaTRIkf.CLP7O9G+CDZngJ4+DRHgfgFZHQ7nMXvf.lNRrXLV+AFX.onBKVBqpa.7ew+M6AGewvYT6.r5K0vgVLuMDoklLYRBGkPRgnxUud8HkTRQ5d9xV1xPngFJ5pqtDkMM4jSV3RzSe5SCqVshRKsTLzPCAud8h95qOTd4kiAFX.Y3qXyvHiVzTSMIy0Qu81KdjG4QPjQFI.fP2jczQGXYKaYns1ZCVsZEokVZXvAGD80Wevtc63RW5Rn95qGCO7vXoKcox8+q2KsZ0Bce0u5WsLxuKkWd4X8qe8B0cSINp81aGiN5nxTbwlTwAlQil4GLiDSLQo95Z0pUrbvgfNzPCEyM2bn7xKGM0TShNkQEuYngFRDsZhiHWtbgfBJHgoInj8PnMDXfAhgFZHXylMbgKbAnSmNrsssMbzidTjXhIhUrhUHL.QyM2LhHhHv4O+4kwgjVrlbxIwV25VQmc1IdjG4Qv.CL.N1wNlDlHGfmPCMTgHnRJojPngFpXomzQIQIIQK6hAWb+i++5kz60Ke.0uWsTmzC.Cihg0rXdB.f.PMU4WhPjmEFIiLx.W3BW.adyaFZznAu669tBMxzWe8gvBKLTXgEh268dOjPBIfm5odJTWc0IPsY8qe8Xu6cu3xW9x3a8s9VXO6YOx7D2RKsf0rl0fhJpH7AevGfm+4edTe80i5pqNQNdmat4vF23FQVYkkLMhznkSmNwq8ZulDYfd85wvCOLLXv.V6ZW6B5YvhkXrNc5f9VZoEjc1YipppJggunE.JMnVrXAIjPBXt4lC0VasnjRJQlrJ1ZbZUfue.HzcBa0+.CL.LZzHdq25sfISlfUqVwfCNHhJpnvfCNH750KrYy1BfhsJ05wZFS57ynQiXrwFCAGbvn81aGaXCa.m8rmUZPGiK7nG8n31u8aGwFarXpolB2wcbGRmnIeYR8spzRKEUWc0XhIl.+5e8uFIjPBxhKF2OIa3gFZHL7vCiYlYFoBUpZKPzQGsv8mLgXZYVsIQbwo+aDtQaR3g5B1aFhR8+vmOex.3yP2TqVjGOdPwEWL97O+ywO9G+iwINwIPas0F1yd1iveTwDSLH0TSEomd5XsqcsHyLyDuvK7B3ce22UlnLOd7fG8QeTLzPCIdvIhZW25VmvCRAETPR3swFarHlXhAZ0pE29se6HiLx.iM1XH8zSGczQGnpppBczQG3y9rOSTqFttffAkh3806dorQXiabikwr843UtrksLgJKRHgDDsKNt3hCQDQDhb9vEojNS3f4DSLwHWnCMzPn2d6U.JWEUTA74adtpg2nAfHVzT8RXx1jG647mlQFYfDSLQQawra2N73wCBN3fQrwFKVyZViTZrMrgMfPBID7lu4ahSdxSJyHLIUqolZJjbxIKc2jMKiZd7a7FuwBpfCCWii6IGRHBbKUFslM9grvAqTjpNtQUfTMGAFeOSNkgMw+O+yUXwfBf+g6nNdg7gOMtjXhIB61sC2tciN5nCnUqVgv03Te8y+4+bbzidTL4jShTSMUo7x4kWdvkKWH4jSFu+6+93C+vODO6y9rX3gGFacqaEabiaD1rYS5B7ANvAP94mO9U+peE9jO4SfNc5vm+4eNlYlYv4O+4wRVxRfVsZQd4kGxImbvG+weL1xV1B9k+xeINxQNBpqt5jbBKnfBvF23FQFYjAhLxHwwN1wj7U1vF1fnYArT87d3jSNI.leH84LWze5f.F...B.IQTPToacqackEWbwgibjiHSQFWvyRg5zoSjat4JX1owFaDIkTRhBjjTRII3M2pUqXngFR3OF2tcKpRH4HHFFD.VfHcnBzINfzrrnz8W1YmMBJnfPzQGMxM2bwxW9xgOe9PgEVHb3vAxHiLDwgXcqacn1ZqEd73AETPAxLRWSM0HjKVXgEFRKszV.qDbpScJ31sabhSbBAtt9ufiK5XCr7O4TdsnFphJ94UIEJtv75EhzMpF22rC0QJjCXCQkpUqVwRW5REumDdDiN5nH5niFojRJXqacqxjlYxjIjQFYffCNXrwMtQL8zSiKdwKhie7iiW4UdEnSmN7C+g+P7M9FeCL0TSgzRKMr6cuanSmNb7iebXwhEje94i8t28h7yOeDYjQJc5M4jSFqbkqDKcoKEM0TS3rm8rX4Ke43EewWDwGe7BcYFUTQge0u5WIMhsfBJP7rSpa2iGO3QdjGA0We8XoKcoBr5Uq7E0EMe97AckTRIkM5niBa1rgvBKLr90udL7vCCe97IS8yvCOrzDJf4UoljRJIzVasIS4TlYlIlZpoj9IX2tcQ6pn5qzVasg96ueYFQ47EvpGoSmNw8NCifUbhxE0jSNIVwJVgHnarF9wFarBULRgudiabi3Ye1mE2+8e+Pq14EkCOd7fhJpHDe7wiXiMVzc2ciO8S+TbsqcM4gTzQGM1291mzAa+gc.vWTSd0XuIpH0pUqrYlDJ.EgP1kRFVEeOpar7+v+dCn96dy1PPIPU0SFG4w3hKNg8.GZngvXiMF9q+0+Jld5owpV0pPFYjA73wCxLyLQiM1HLa1L9m+y+I74adgDorxJCUVYkHjPBAO4S9j3Nti6.iO93RtY6XG6.82e+3xW9xB0pOzPCgHiLRoeAbNku0a8VQc0UGV6ZWqrfclYlA0We8hTQ4zoSrpUsJzUWcAOd7.CFLfSe5SiZqsVr4MuY4dJ0x.WtbgksrkIfriEsvmOexyUud8Nuh1Stcj03kXzlpXNq8MYSYprMjdDiN5nwUtxUvTSMEprxJgUqVw.CL.RN4jk4.lb1O4dTNL3bgNePyPEznQiL7HSLwDhH1MyLyfpppJzWe8g.CLPXwhEDWbwIps9d26dw.CL.JszRgMa1vRVxRPxImLBMzPQngFJpolZvryNKxImbPjQFIBHf.vxW9xw5V25vK+xuL9i+w+HZpolDkew+M.pgrPq9paHn2D9yYhl974SlwBREkpiC406Xwr9e8xi35cvvqX3mADP.vnQih.Lx917HOxifyblyf0u90Ca1rAa1rIgxdkqbEDVXgIPp+odpmBtb4RhHnyN6DM2byHf.B.YlYlPiFMRU+LXvfzrRRU9czQGH1XiEkVZoxn6lTRIgyd1yhhKtXbpScJXylMzSO8HrUWXgEFxKu7vJW4JQu81K9K+k+BrZ0JV8pWM98+9eOxM2bQAET.JnfBfMa1vEu3EQPAEjTldUx6kdLznQCzZznQzSO8f0rl0HwJC.A.SiM1XvkKW3ZW6ZPiFMxE0XiMFxLyLQCMz.pt5pkglIwDSTf7KUW9N5nCzd6sKVfXHA9CC3ECjWTmhiJpnjD2zoad4e5ZW6Z3RW5RBiHTWc0gN6rS30qWrqcsKY9BzpUqjreN4jCd+2+8E1YnfBJ.AFXf38e+2GOvC7.XrwFCUUUUn6t6dAzzgp0X+icmg7PZ.TcFIlZpojV4qtXlMPi+rEyZ+06ykO.UyY358ha738bMZzHEYnqt5BCN3fXngFBKYIKANb3.gDRHn81aGG5PGBAETP3Tm5T37m+73q809ZPiFM3VtkaAO6y9rXe6aeB9u5u+9wC9fOn3M+Ye1mEd85ULntt0sNo4fs0VaB9xHAa0VasIvse4Ke43G8i9Q3O+m+y3kdoWBgGd3RGgyImbPO8zC74yGV9xWNlc1YgCGNP80WOdrG6wvZVyZv27a9Mwy7LOif1z23MdiEPJuD0rpG5V5RWZYqe8qWlSTVhsgFZHL8zSiTSMUAppd73QHJUmNcJtaXxozMCoujDSLQzc2ciN6rSopIrG..3+EOD4OZ+3CdUko2hEKhzixQAzkKWB0PFUTQgrxJKrksrEbnCcHA+QwGe7PiFMBamM1XiITpBmahXiMV7m9S+Ig6ZT00XUKvpKR4FVBzMpIyp8JgH.k+MY4ToGiazg+dJ7GeQ2LOI9qwz79HoxDFtZPAEDRO8zEppbt4lSnNxQGcTX2tc7RuzKAKVr.e97A61si23MdC7U+peUrsssMbxSdRQxnlZpovEu3EwJW4JwIO4IwpV0pv3iONpolZfCGNv5W+5k0QjQOJpnhDp8mdl6ryNQVYkEzpUqHNfFMZDFMZDM1Xinmd5YAFd.luzojBY5niNPkUVI10t1kLqwj7kICT3ymOn6m7S9IkQWDLI1.CLPDVXgIhaQHgDBhIlXfa2tkp0PpFwfAC3HG4HH4jSF8zSOBdRRM0Tw6+9uubxytWxciTrGTw+MQvHCiPil4wARWc0kvUnKe4KGUTQEH8zSGQEUTn6t6dAyAbJojBty67NEUqjLhWs0VK75cd9uOojRBFMZDqZUqBkWd4X7wGGomd532869cn2d6UfzLsd5Ojk4W0nQiTeclnOyEP0cKCag+sXU0TSb95kX70yCD+dU.1sXGrHCpEefIHN6ryhQFYDjXhIBe97gwFaLzTSMIMRb+6e+3oe5mF50qG+o+zeBNc5DkTRIX5omFG5PGBszRKX0qd0hVAvbdXU918t2MFczQwoN0oPas0FhKt3vRVxRvy7LOC95e8uNZu81Qqs1JNzgNDNxQNBV25VGlXhIv.CLfDIBkt1RJoDoLyc1Ym3Dm3D3gdnGRHgMhhYNa34kWdRoySIkTjJOQiFp8aR28e+2eYzpuYylwDSLAra2tfaCxU8tc6V5hHKe4fCNHhN5nQHgDhL4WTtSYnL81auPmNchH3ALeivnF3RLcyRjpUqVgaL4hJa1rgrxJKghDCJnfPrwFKppppP.AD.rYyFJszRw68duGxHiLvV1xVv68dumvaRevG7AHlXhQPDaTQEEVwJVgfm85pqN7K9E+BbkqbEDWbwI3XhgarXa.3hJNgWpR+Js7B.YjTYmkYUnBO7vgQiF+eUG6aTSzVLLFcy1DPBEid3YgHHLTRJojfEKVvV25VQSM0DhLxHwRW5RQiM1nDGcM0TCFZngvd1ydjyWqVshFZnAAy+zyQFYjABMzPQkUVIld5owC7.O.zpUqLIhuxq7J3G8i9QRNXjQuat4lwm8YeFN24NGd+2+8wYNyYPO8zifF2SbhSHCLUCMz.5t6twce22sn5MFMZDEUTQXkqbknt5pSjZK.HBXH60C8.6xkq48b+c+te2x74yGZt4lEZDoyN6DZznQFQwniNZwsE0kJV0FtnUud8vkKW.Xdp2SUVQ0pUqzIXhRQNgVD6K7AkZuC3CgzSOczTSMgUtxUBWtbgQGcTb5SeZAlsEUTQRy6JpnhfYylwq+5uNJnfBfUqVQjQFoLj3Lg928ceWLzPCgcricfMrgMf69tuaL1XigZpoFAJGp..zfACxr9FP.AfQFYDYtVIupppMtbgF+6PIYhygwTSMkb9qZ0meuZr+pV9U+cYgE3lA+miVBealPHIlKpWCSN4jH+7yG1saGIjPBvgCGvkKWHxHiDkVZoBzyI4l0We8gZpoFL93iiksrkgAFX.zZqsJzIed4kmLhtM0TSXCaXCnmd5AYjQF3C9fO.m7jmDaXCa.gGd33IexmD25sdqvkKWXcqac3Tm5TB48RpZji8JGvqzSOcXylMgmgNvAN.BJnfvN24NwHiLBN3AOHra2Ndq25sv1291QUUUkLrR0We8XSaZSROs33u5ymOnam6bmkwApgIzEczQiYmcVTas0JLOVQEUDFYjQfc61k2LUOjTRIEgYI73wCRN4jQWc0kjDiZxkzRoJKRPqSpHsjOXMZzHV5RWJRM0TQCMzfLT0rygLrlSbhSf63NtCgQyxM2bQ3gGtDZyjSNIt10tFBO7vgYylgGOdjEgd85Em5TmRXUYxTBTWDnKTFFG.jFcolb7hgEH+S9mVj4uCIsKVMI0p3vpOcyrzqtfWMrLVdTdtwAvgTTBGjFlevXiMFRKszfUqVwLyLCd4W9kQrwFKV25VG5qu9vC7.O.d228cQIkTB73YdEku7xKGO7C+vvfAC3i+3OF0Vasnmd5Aomd5vqWuHjPBA6cu6ElMaFO2y8bvqWu3bm6bBs0WXgEhUu5UibyMWTRIkflatY30qWoT6pkadhIlP3X0HhHBYi4a7FuAlat4fMa1voN0oPKszhfZYVLfN6rSrxUtRXylMgjo4v7q6a+s+1ko5FmX0mVAmbxIwfCNHFd3gAGH+BJn.X1rYDQDQfUrhUf1ZqMAgoCN3fBduoEM0pr3uaYVpPBbKgUv92dFHpCsZ0J1912NpnhJvHiLBZqs1DlYfgJ40qWTZokJrmWpolJzoadIEZ7wGGETPAxFgvBKLgFStvEt.V4JWIdtm64vDSLgfjUVhVdPuZLlZNoaKVmc4AKurACFDb5Pq1bPfTu1o2RxkQKFaRndnBfNl6whAfN5wge1reAqcsqUPMLoQwRJoD7lu4ahZpoFjc1YKC8BSXs95qGCN3fn2d6EVsZUl+W2tciG8QeTr8sucr90udoysTu2X0C26d2KBKrvvYNyYP+82ON6YOKra2tPFwyLyLnxJqDlMaV795067jo0vCOrPvYLDyBJn.3vgCboKcInSmNDXfAhJpnB7U+peUr8suczbyMi4laN3vgCTXgEJjALUPGc+hewunL9AQpNmyRbPAED5omd.KiJ+Zu81qv4OAFXfniN5PpvvXiMFZu81E2xLNX+6boJz.72Rpp69PCMTA3ZW4JWAokVZn6t6FZznAW4JWAQFYj3y9rOCUVYknkVZA29se6n2d6EqYMqAm8rmUhQ0mOeBrPXdLc0UWxMWxXcyM2bXrwFC.PFrmqWhwpPjP0Kf5uC4VSxDBDxHrOITuGXnOpyg.Cs5Fcv+eZ4mnljdZYR5pXqmgvB.zc2ciVZoEX2tcbu268JUv4i+3OFOzC8PH2byUTKyZpoFje94C2tciBJn.bpScJDZnghqcsqIaVJrvBwRVxRVfPv+m+y+YX2tc7e+e+eiLyLSryctSoD4e9m+4B1vrYyFprxJk7O4P1yE6d73QpRIEIv96uewCcTQEkjyRfAFHN7gOrjqvQNxQDIrJqrxRzdB850O+7D3wiGApv974S3ww4laNXznQIVV1XLxbbNc5T.8TbwEmLdaW3BWPD3O0tlptHgU4fITxZLyMKbyAWn1TSMAGNbfFZnADUTQI3Zxsa23pW8pRoxra2N5s2dkxdxtx1d6siye9yihKtXDZnghDSLQQLL750qHJdTFi3zsoVcHV4JZslSLl5g+gunpyxDuQrJXLoUUvqwM.zii+yCf+G7dmZS8T8Lv7OXktX9AD5IlMaFYlYlvnQiXvAGDMzPC3Dm3DB1ud629sQFYjAxM2bwa+1uMLYxDxImbv4N24vHiLBN6YOqfPfuy246HKt6omd..D5ygPtgqCdpm5ovV1xV..vHiLBLYxDN1wNFzo6Kn7QNeHbcEK2K6+AW2pWudgep3lDht2qd0qh1ZqMTXgEhVZoEnQiFr7kubQAL84yGz8i+w+3xX3OrhLgGd3Ru.HH1RN4jgNc5P+82OhHhHjDWX0czpUKrZ0pHWP974CojRJvsa2hEJUKlbwGYDN0j5TsJtm8rGYDGY3HzaCQnJe+okVZnu95Cd85UnYQxLclLYRDWOJdHDPa1saGu7K+xRkuXIh6qu9DKo75jdFX64Wrg1PcApJv.YUuXWjU+49O0Y79g+ax7+3lkS.gefJVk30jACFvS7DOAps1Zw0t10vPCMD73wirXI8zSW1.avfATc0UiUspUgbyMWb228ciVasUzPCM.WtbgG+webTd4kiYmcVo4ku5q9ph7IMwDS.KVrfIlXBDUTQgSdxSh+0+5egVasUbu268Bud8h0rl0fzRKMAGPojRJvhEKhZ9Pljf8cwnQiBPH0pUqHwXAGbvBidyqSmNcJb7zN1wNjjt0oSGz8nO5iVlKWtPmc1IzpUqvwMjkyhO93kdHPjOld5oKtcR4eOfyAFXf3HG4HBcYPJZw+tnpZYimf9u3WMrnXhIFnQiFDarwJL5lMa1.v7TvGiajic2.CL.lXhIPe80GJqrxv+3e7OPUUUkLqxszRKHyLyDQDQDvmOeHt3hCuvK7BhJNFWbwIJ0HslvX8oaYe97ISOmZL3KV4LYB1zyJ.DILk4JnZAm4GM0TSIafuQG2rbBXeYTGyUfu.wqZzL+3ythUrBTUUUg5pqNQ9nrZ0JlXhIPhIlHBLv.Q4kWNtq65tjJ97O+m+SwpJIDqicriACFLf28ceWQzMBN3fwV25VQhIlHNxQNBtsa61j6gDZMwGe73hW7hhJA40qWTe80KTuOm2cWtbIkRW8YAwUla2tgISljx3SCsFLX.c0UW31u8aWFnGJZ359g+veXYbtZ4alwOFd3gilatY3ymOQiBRN4jQKszBRHgDjRixSze6u82JVOYUOXl9rJDrgY7gt5LxpFR.sHRP7kPBIf3iOd31saDYjQhd5oGQv83zfcricLnWudryctSTRIkfG7AePr0stUYdGN0oNEZngFvoN0oPSM0jHRbM1Xi3nG8nxjyYxjIjRJoHCJNWfwdB..gZ4UI0oEqd+ru.yM2bRCk3F+YmcVIA0EKeHtf9FcbyxIfijJ2bo1YaylMKbGZVYkEN3AOnX.L8zSWBEjyHbLwDC9zO8SE5ru3hKVnXypqtZr4MuYQkK43mRnivJ13vgCIxAxJIkWd4nhJp.yN6rBn9tzktDxN6rgEKVVP3hDJ6zSbHgDBFarwVPgW33Zxq0N6rSwf1QO5QQO8zC18t2Mb4x07umcu6cWF2YQWMzM7TSMErZ0pLyrNc5Dd73QHg2HiLRQexd9m+4QkUVoL4OyM2bhEZdx6OhI0nQiXQhalLXv.LZzHFd3gQwEWrzTsFarQQoIGd3gwJW4Jw29a+swu9W+qgc61wt10tvIO4IwW6q80DLuO2byIUtfUln2d6Uji1+ve3OfJqrRQn+30oJ+KA.IuFFZ.SHVMWAxVdSO8zBkySOGjlUToXE0DoU6ZNCQhelpnpkVxUyohUaR0KJWLDP.AHBvnJdllc1Yk4GgkE8C+vODADP.R4wMXvf.ADJ1H+g+ve.VrXAgFZnX6ae6BCwMzPCAWtbg8su8gd5oGbsqcMYczV25VQ2c2s.YZmNchd6sWrrksLYzII+.oWudr28tWb1yd1E3omhwgJxaoNHqJ6WpUVjhIeDQDgDRHKObs0VKrYyFJt3hm2P1i8XOVY.PF7YRI1DeETRjBIjPjIvRq14YAtxKubr7kubzSO8fO7C+PglBUEfC0xFtXuHVNXRfpV9hJpnPUUUEFXfAP1YmMFbvAQyM2LlYlYPs0VKlbxIwgNzgv1111jAu4ge3GVHXWxgl.ymnIQsXqs1JdrG6wDUnjFAXXcLbAJLF9CtO0ye0CUnOnV..++8WLOGpOD8+ve7To1Ea0bVTy2RsgYz6Z.ADf3gNiLx.kVZo3xW9x3JW4Jx8axmTqXEq.W5RWBqZUqBlMaFFLX.Nb3.KaYKCEUTQnpppBd73Am7jmT1LvtwmSN4f5qudoauSLwDvgCGhDOw4U38du2SfNAaXK0ZL5UivXggdRuXj0t8O7Z+OXwKT6OE87thUrh4KNw2+6+8KiVXBIjPjIKhKLsXwBhN5nQmc1ojHJgt.oSwO6y9Lb9yedINWlfxhsnw+WrZBrLgby.ITUJF0LIFMZz.ylMi7xKOL93iit6tazTSMg64dtG7RuzKIP5dvAGDomd5B8xS4W88e+2WFovZpoFwSAsbvPFXxWLQyazF.VsGZMiVxUs1e81DveO0wtTsBYpMZbwdXyPeVrdT..A7iFLXPZvG05Aa1rIwTSE2wlMavpUqn7xKGeiuw2.81auvfAC33G+33W9K+kHu7xCuy67NXvAGDG5PGR9bHX7Fe7wgUqVgKWtvV25VwbyMG14N2oTp0t6taXwhEnUqVrwMtQrrksLDbvAibxIGTRIkfcricfjRJIL1XiIa.Fe7wEdmhJQDWexvAWLCR.XAgWq1emVasUrxUtRjTRIA8zUKuQwGFbw..DcIfy7I2UFWbwAGNbfSe5SKtYCN3fga2tkFAcy53IanCefyOeJET80WeR1+j.VGYjQPFYjA97O+ykELSLwDBDHBIjPvwO9wQkUVILZznHqRjHfGZngv9129vUu5UEVVfUdfaFYHLzBLWjsXWO7FKoqFtYP8Ai5BT0upN5epgawGd7yewd+reKpuT6QAuONv.CHMojd6qqt5jjHmat4jQrLkTRQF3lTRIEb0qdUDczQieyu42.GNbf27MeSg0oSJojjN3FarwhMtwMhcricHx+KALGoxmTRIEg6oFd3gwYO6YQCMz.xHiLvfCNHlbxIkFYopOF7ZSMrRZ3V06m+a.nQFtogvnlUUp5pqddjS+nO5iVlGOdDr7PZ5lwzRxzkImLzPCIVqCIjPvoO8owINwIvzSOsvolLQZBLtazAwaCiWldAnPN3067Ljsc61koyhyqLmS0Uu5UiPCMTr5UuZ31sabkqbEje94KCCBQK4PCMDJszREOIIjPBnkVZYAw+5eSqTWDpZs0+PYXNEDchz0q+gDwGNpvHQM2ClH8h8Pcw9arXdlT+6GVXgInBkwkGVXgIBa3u5W8qPyM2LRJojPvAGLV8pWMdlm4YP7wGuzM1zSOc7oe5mh+1e6uggFZHDTPAIrNNWbMyLyfYlYFbG2wcfVasUDbvAKJy4AO3AwYNyYPKszBhN5nwN24NQkUVIFd3gk4F2rYyn4laVjrKJp79m3OgXh57X3+8J0WLAZ062748niNJtq65tfdR5UzkNichOno7iRPVwpb3zoSLxHificriIkKkdArXwxBXAguLaBXHHyLyLvlMaxTeQ5bTiFMKPpSKt3hwG8QeD74yG1xV1BZngFfNc5vRVxRDBaZMqYM3RW5RH7vCGEWbwnvBKDW6ZWCUVYknqt5B+te2uCG+3GWVH6e3PLzA0DYUul7ODNZAW0il+Vu8+mwOO0X34AqnF27sXUPRciJ2zoFB0LyLi.zQl6Co0vCe3CiCcnCg8su8gG5gdHrsssMbgKbA73O9iCsZ0JFHNvAN.pu95EOcSM0TReZzoSmn.lzK1m8YeFrYyFN24NGt10tlnwaTmj+nO5iv1291Edn5ZW6ZXEqXExrDmXhIhyblyHgkyqc+gPh+4Vo9U06mruN.P7LXvfAb9ye94q.38ce2WY7AB4PH0vhnp.xX84lj3hKNze+8i+1e6uI4Sv3noUQ0ZQe8doBY.1suBKrPY3q+vO7CgACFjpPQg4NiLx.0UWcXfAF.4latPud8HqrxR3zeJ9CFMZD0UWcvkKWB6xshUrBAl0u8a+1..xLOSWrpCEC2jpF1ButXC7HrHnW.0Jgci7DnNNo96ExeuMpajTSVV82i+bF9CGqTZThVAsZ0J5niNP80WOBLv.QwEWLzqWOd5m9oQ.AD.NyYNCt669twG+weLNwINwB3s0nhJJIY4DRHAzSO8folZJrzktTr10tVTWc0ILxMMfQP5wpTEXfAh1ZqMzYmcBc5zgHiLRL6ryJ88gnWHxHiTXjCFVDqjoZIq8eMkpQh4laNopk7moQy7iuawEW77kHkTCBiWjefjKI4bFvxKxE8u3K9hn5pqVnwO1fEx2P9mX2h8hKtHGn50qWrxUtRnWudjZpoBKVrHXQZ7wGGlLYB24cdm3Dm3DRNAlLYB6ZW6BolZphWq95qOwaEqhfMa1jELVrXACN3f3rm8rhmPVVX1bEdMntAP0afpGTNnLL4SZ08lsIfJ.JMFn10W+KGp+di7uAcpKB3KljJUBlfCNXbwKdQIOqnhJJo3G6ae6Snj8G4QdD7u9W+qEHd1SN4jXYKaYBJNY2Z0oSmDhoGOdPyM2Lb3vA5u+9w1111jFs1SO8Hw0mYlYhgGdXAVybJ117l2LNxQNhPrWzXpZAJTMX3eEw7+E.jmmzqKQLPbwE27Txx8bO2SYT.uKnfBDtzzgCGHhHh.ojRJBUVnQy7BKQbwEGpt5pwu829aEL0yxIRIcRkOKodjwDSXbcLATVEJNqByN6rXaaaanpppRvuOW3N5niJ5SF4F+64dtGze+8it6taL4jShlatYr+8ueDXfABmNchcu6cKetYmc1nu95CaZSaBeuu22aATHOCsP0BhJztUsxvXR4FA0PhTmnLZQlgZxD5TsjyI6ipsHwTD.VPm1YXZp5EA0bZVCb1WlIlXBL0TSgTSMUL2bySY8DyWCMzP3Idhm.W8pWUfRNqs+TSMEt+6+9QHgDhnpL.eQgR5omdjYClaXFZngvjSNI9Y+rel.k4YmcVje94iCdvCJkWOrvBCgEVXXG6XGnu95Sz4NJYV6d26dABRXKszB74ymrIJ3fCVBKRElMpFC7OOI5Afdmo2RlrbPAEz7CUCozZR25VrXA1saG0TSMxHTFYjQhwGebL93iC2tciSe5Si1Zqs+WIj4+gZBlpI8wcxrTljWaHv7t3EunfJv95qODe7wiG3Ad.3zoSzbyMKyD6RW5RkjzZokVjtGRVrvrYyHf.B.omd5HqrxBQFYj3ZW6ZviGO3PG5PBKXqdndcPvlwx+xvjna4aVNOpVjVr6QzaoZmm48G9.Sc7M4FH96nlCCMVvPyH7noLLwAmgJ+de80Glat4P6s2NxImbD09L5niFW5RWRJ1gpUW+eoWudgDD3lJVB1AFX.rjkrDIDJ1g3m3IdB3wiG7e9e9eh0rl0ft6tanUqVzbyMiVasUQ9q5t6tWv7lb8tGb8d1QiUjH4XSSYtLL7ece8u9oIDzWA..f.PRDEDUWur1ZqMg2HYMZoPSyjg3MLf4sJ7Zu1qIcibwd3x+Mc6R7CwPs3IOKo3DSLgzvk3iOdrwMtQQVnRJojPyM2LZngFPSM0DhIlXfEKVve9O+mwS9jOIdi23MPHgDBpnhJPs0VKBN3fgQiFw5W+5EJjG.n5pqVvFO.vUu5UkDlVraf7ZUcAlpKUSlLcSg5r5lD+SfiOD8uW.pVx3CO0jdYnSpV+4lT1uC85mmlISJojfNc5PO8ziTcHBwYFdI4r0ZqsVojoM1XiBLO7eguZncDxyAFXfX3gGVVDyAhmyAdt4lqzo9YlYFjQFYf0rl0fSdxSJFt73wiP1y0UWcKnL8LbUVcmEqznK1yPSlLI4BolSGaR63iONzRgyHxHiDYkUVvkKW3bm6bPqVs3zm9zhjHkXhIhQFYDjZpohO5i9HgrYWrOX+cMoZwjgXvM.5zoCc2c2vpUqR0.hN5nwJVwJP+82OFXfAPs0VKpolZP.AD.1yd1Cra2NzpUq.WZmNchXhIF7M+leS7U9JeEDczQCa1rgKcoKg29seaL2bygZpoFrsssML0TSgwFaLb9yedjbxIeCsTyMrpgEQHdnNFieYOTqJj5hH0p6ntPi+L+yEg+M34ipGVddFTPAIhTAmWX18+fBJHDWbwgryNaDWbwgRKsT7O9G+CbK2xs.CFLfKdwKhN5nCgdI82auZNGjKVCIjPvryNKrXwB5pqtPpolp.CkRKsTTd4kijSNYDTPAgye9yiMtwMJDqEYU7JpnBzWe8gCe3CK.kSctz8uZb96EXwNXXgbyLgiBMTN2byAsrSvrwGVrXAae6aG..4me9xjQUc0UKVlYETHUbyaNK1hItPmtt4tadxP7pPwpisfu4laFKaYKSzw2T92TCNiyyhEKHojRBgGd3Pud8XUqZUPiFMvoSmhh0L8zSiW+0ecTc0UCKVrfJqrRTd4kCylMiksrkgN5niEb9tXWKreGpf6ymu44zxgGd3uTK7Wrxixu+FsIfggrXITyMAiLxHXrwFaAcdmzreBIj.RLwDkXwYNTZ0pEiN5nXhIl.YlYl3G8i9QHgDR.0VashfmS1CQcQuZIzIdmhKt3PLwDyBlvte+u+2Kb7zryNK5pqtDVnd5omF5zoCIkTR33G+3hGJ.H5EWHgDBb3vATKeOGGRfufyltddCtQ2+AVH80Gd3gCc+ze5Osr.BH.gw3HLdyImbvfCNnDhRrwFKBJnfvEtvEv67NuiT1zalkTFtj5CW1THsZ0JgKwDWiN5nQ2c2Mpt5pQ80WOxO+7w3iONxLyLER+crwFCQDQDX1YmUZGeBIjfT1s1ZqMLwDSfFZnAYJl9u9u9ufCGNDcu5e9O+mBmDciN+Ybkp41nFhyMCpyWuvD4WUyQZw5Efpm.+gTAiSVM4Pe99BLBQ5urt5pS3iy.CLPIbyst0sh+ze5OgDRHAoBR.PtGyvW8+7V8ya3gGFQGcznqt5B6YO6AkVZoX3gGVvIT5omNBMzPQ0UWMb61MZngFPN4jCps1ZEXxOwDSfhJpH30qWricrCX0pUrhUrBje94i96ue3xkKY3YHZEH8t3eNY9+7SkumTCojkLVmNcyCahvCObDP.AHxtSBIj.FbvAk9AvcyQFYj3xW9xRRxbxsT+PWLWTpwho1YVJdGbTN4IESNa3gGFm7jmDFMZD4latvlMaRY8HdSprxJwEu3EQ0UWsL.4omd5npppBFMZDM2bynyN6D6ZW6BEWbw3G7C9AHlXhAwGe7hHa3+4t52SKWpKVAfTkGxhFWuC+q2u5OmKr8OzGU292rtDy6+pKRYETFe7wkgLxtc6xj6cnCcHbhSbBnQiFQHTLXvfLiEbzCYzA9uAP0vQpolJb4xk.4gKbgKfbxIGX1rYDczQi4laddAcyadyB6C1XiMJgvkZpohd6sWbhSbBzWe8gpppJDSLwfG9geXL6ryhN6rSzUWcIHRl2e7uq5WuiwFaLI7aV.AxvIgDRHvkKWPqYylkPSRHgDPHgDhDl.GyPpar0TSMvsa2XrwFSpXxhkrm5+VsimpCXC2DvgWY5omVjtGpexwGe731tsaCETPA3RW5R3RW5Rx3VxFcDXfAhMtwMJzvnCGNfa2tgd85wXiMFFbvAwpV0pP.AD.13F2nLqCr91K14r5AovbNX9pcV9K6w0KbH9Y5uwC0E4Wupuw+OBWAFd.yQf4rPsGVE+LjqYyKu7fEKVvryNqDZGGExTRIEYVAnGG+e4067BP9DSLAxO+7wq9puJb61Mtu669vzSOMN24NGZokVfWudkjzGYjQ.vWHAWgGd3x.SQ0L8i9nOBwFarnlZpAIjPBRYRY9NLRhuLGpSiFMtvJ7IkZcO6YOk0Zqst.WXTwzSLwDEXtZvfA7QezGgd5oGowVpVAUefo98LFRBAaN.Oza.gJAsJvZPyNXN2byIbFD.jEu6e+6G4lat3y+7OWlmfLyLSjVZogCdvCBSlLIIZa1rYjRJofJqrRzd6sKdbX2IokE+S30mu4QXYjQFoTAK1AcUXQ3uER+ic+5YIkg.pF2M+cIxRU6ofZGh4fkvx8wvhHPHmbxIgSmNwTSMk3E2jISBNhJpnhvfCNHZokVj2Ka3GCS0eh6ZwB+UcFI1zl1DRHgDvniNJhO93wwN1wvW6q80fWudEknr2d6UFCy0t10hN6rSTe80iryNanWudLzPCAylMKZH2YNyYD1niFdIgtY0pUwy.um4e3jpaXT6xOCyMxHiD5as0VEo2owFaDokVZXlYlA82e+XrwFC1saGiLxHn0VaUZNDU0btaR8As+gTvFjoNrHz8jJjimXhIPgEVHppppv8du2KFarwv92+9w5W+5Qqs1JlbxIQjQFoLjD974SFGvLxHCL93ii96ueXwhEL7vCiJqrR7S9I+Dbu268hAGbPbvCdP3067ZmkQiFgEKVPmc1ojah50fpkNJLejE9Xc8YsmuY8IPcixh8uWrD238O0+e0Gd9e9pFNkJxc40.aBF0BZSlLIxkp+ed9+82rCFs.gxPBIj.V25VGt3EuH1vF1fzWovCObbwKdQL5nihW5kdIoxeemuy2Ae9m+4X+6e+hZEEYjQhryNaoArDFOCO7vPmt4YQNNyJKl2R0WDWSp4DvPwnGFcuxq7Jkw+Qas0lHr0wFarXhIlPDxBpL6c1YmKfI0Twtwh8Pjyf.YsZxS7bRs3CwXiMVgZG4Ev3iOtztaa1rg7yOe30qWTWc0gFarQjbxIicricHzFdHgDBtxUtBty67NQd4kG.l2cXmc1Id4W9kwi9nOJxM2bw4N24P6s2NrZ0prgz+EcLDNtnWsispIG9k8XwR3F3KFJF+C+Qcgu+G9+P2+JJQuH92kYOd7fQFYDX1rYL1XiIglbi7TcydQiRLbViFMh7xKOzRKsHBmxjSNozuht6ta789deOYVtSIkTPxImLBLv.wIO4IQ1YmMBHf.PAET.pnhJfQiFQu81qbMw0TLRDZPv+7lT6TOwylNc5DHfvJ7EVXgA8D28KcoKEae6aGd85Em+7mGQGczHt3hCgEVXvsa2hbkxtAxrz8OlV0D2nKGfun+.pc9iVbYBJAETPXzQGEADP.RmjmbxIEgylve0lMaBcLde228gu025agcu6cit5pKrgMrA7xu7KiHhHBjSN4fO8S+TzYmche+u+2ixJqLAgjYjQFKXPcTqth5BMl2.i01+Eg2rZUqlf6h4MPcw6hE++M5uu+ghwMspyUfVsZgISlD3HvqGVBYNIcpeleY+7Aff2J9Y0SO8fSe5Sid5oG3xkKDZngBKVrHCmiMa1PrwFKZqs1vK8RuD9k+xeIhO93wTSME9FeiuA9jO4Sfa2tkFbxh1vuWk9XTggt54sZ3iDJ0yN6rRC7zoSmn4ZVsZE5W8pWMVyZVifgmqd0qhImbRQ0FiLxHQGczAb3vAFarwj5LqhPT9g6+NR030nEOtCU0s9TSMknDj7gDw5OUAxIlXBDe7wi1TjM1ksrkgidzihjSNYjUVYgm7IeR7DOwSf7yOeL7vCiImbRA+I80WeXO6YO3PG5PxCMNWBpw6pVFTtXRMIXUvbwdVbyNT2Hn9vR0ii+OHWru2+el5BcUXWy+OdulrJnSmNEdHkC9y06y5KaHQd85UZ.4q9puJxKu7fc61QZokFzoSmvkPNb3.yLyLvkKWn95qG50qGaZSaBaYKaAZznQne+BJn.zc2ciW3EdAwqEGt9.CLP4Y2byMmL4e96EPcS.KZf+r5Ao4e.L+7DDP.AH.kxoSmH4jSdAITM1XiITetKWtDxRRmNcRUEVrGvZz7E0okkFkvkl+diO93hPfaznQjQFYHT9wLyLChM1XQGczgnuAomd5n81aWpPyANvAv1111PO8zCdi23MPlYlIzqWOLa1L5u+9EcTie8S9jOAYkUVnolZB1rYS176um.d9wjq4BMtQms4++W3IXwNTWf6+CX0vo3hclbLCuiMyhU9ia1HHG4Fja1Fva10mWudQrwFqfKoktzkhuxW4qHjzau81qfZUpsDDh7DZ6FMZDIkTRvgCGX4Ke4HxHiDKe4KGG3.G.W4JWAd85Un8molZJoZhWuJso1bOOdlmyTY4yoGg3hKNYLa08vO7CWVSM0DLXvfPK4LAyUrhU.sZ0hO5i9HTWc0g1au8E.0XlX00Ke.9PlU4fczjndj30erwFCyN6rvoSm3tu66FM1Xi..n4laFM1XiB.95qu9vHiLhbNvNP+QezGIaJRHgDPXgElPVuAETPHmbxA.PDuAWtbIj0Kc0p59WsysTtVYrkbCLqbxMaQh+Of72J90KLH0eeUKapfsiaHXEZTa5HqbDKI8PCMjTXCgW9UN+Wr38442M5fPqfIsFTPAgvBKLb1ydVgvzXHIb9BJrvBgOeyOX8c2c2xjoQxysiN5.+8+9eW73SCt77gjjFgHu54HutTqpEoHTud8JzxewEWLRKszPQEUDzs0st0xV+5WOrZ0JtvEt.xKu7PhIlHHSU2e+8iSe5SKLGAw0OmgX+Srz+GlzC.QrGsrxRdRdFs2d6EiN5nn1ZqEyN67ZJFGcxFarQzc2ci4laNjVZogVasU3zoSggwVxRVBxJqrvLyLiTIqbxIGjc1YicsqcIsv+3G+3niN5PFhC0XjUSpT8EUccZ8mJPIsx7k8v+M.pKxVrE9pOT8eif5+F3KJCs5lBBpN102N5niEUn.8+yy+yka1lfYmcVQny+1e6usPAKjx1qnhJPXgEFLXvfnCAu268dXngFRLvoQiFAdGTvMhJpnv.CL.La1rbdyoWat4lC82e+vrYy+uFeW0MALrcVRaOd7fbxIGrqcsKroMsIDe7wOOki9XO1iU14N24voN0oPIkTxWPW0+6tg9hu3KBCFLfKe4KKPelKZI10UQ1nQiFE1+hH0iI0x34Hm9v30T6HKYVB9vpiN5PPoXu81KRHgDPmc1IxN6rEFiqmd5Ac0UWhFLSpiengFBkWd4xC0wGebzQGcHXTRsFxziEKkKSfmVUEo84e+dTyoweC.9aYx+vXT+8UW7plm.ec8fvLewPG48K1Ab.HULyoSmKfTfUguBCQhdN36mfWi4EoN+ypf3igHFVXgg0t10hqd0qB61sia61tMDbvAiwFaLL8zSiZpoFb7iebX0pUL4jSJrUcpolpHypjJV74yGps1ZQfAFnvFHLmGZ3IpnhR17yxBGSLw.ylMKTxNm9MMZledUlYlYvt10tvxW9xwzSOsnUA5W25VGlZpovHiLBhKt3VfUflatYTWc0I.rq2d6UVjNyLyHLprZScTGpY.HcYk35lOjYY6TybO3fCVTg9QGcTQ4DSM0TwF1vFvoN0oDtkmxuia2tEoXcIKYIxlzSe5SivCOb31saQM64fdSNEZwpJi+VDuQyJr++99WTfuLGp4KrX4UcyNTqkNMbEQDQHaPau81EUFU0qGCkjL.H+49WbiEqQYbSMvWvlEd73AwEWbvjIS3jm7jXMqYMhB1ujkrDjVZogye9yKyPdAET.xJqrPKszBdgW3EvC9fOHBKrvPkUVI73wC9I+jeBdkW4UDh1JzPCE82e+H8zSGNc5DlLYBiN5nvoSmh7aQJ4OjPBAgGd3HnfBBSLwDRmxYHrbsGuuqmkJhzcGU7aCFLH79RLwDCpu95EFJHjPBQn+NxnD7lEahDuYMxHir.b2va9j5tiHhHPu81q7.wjISHszRSBSxpUqnpppBe7G+wH93iW3clG7AePTZokJZn0pW8pEbovpJQpF4xW9xnhJp.0UWcPil4wKCygfz1tZYcUsT6e0a7ego5BqEKDm+utQP8y4KyFAt.mM8irsrGOyKWViN5nHv.CbAgupQiFw.DCcfWq9CXuaT9AZznAkWd4BUrqWudQXV1291GzqWOtq65tPLwDCFczQQc0UGpu95EtjJ5niFIlXh3Vu0aEO8S+zRoQyImbvy7LOirvlrdBg3Q3gGtDVJIvWZTiOOc61MFbvAQLwDinDo1saGIlXhx8JhLBsLtIMZ9Bppa7wGGCN3fnmd5Q3iFRI6ziASLQ00HKmHcyx5zpNfETKbCN3fkFmQJVIojRBd85UfvaTQEkv8Lr2.VsZE1rYCMzPCH4jSVBIfXlOt3hCqYMqAQDQDHiLx.FMZDs1Zqn1ZqUJK3niNJlYlYD9obwRNUMDF+SLcwrLtXw7+kYivh823+Kue+Cwgt9YoPY4QYU4TmeZBwB0MA9O.OzyM2.wYfl2yxN6rkPXHX2La1Lt669twoN0ove+u+2w92+9QCMz.ld5okgxe7wGGwEWbXfAF.tc6FYlYlhQx1au8EHFfLORNsZ77HzPCU9cXCY0n4KF02DRHAjPBIHgcs4MuYjSN4H4JHEXP0JBIQJVxz96ue4AtACyqV7bXURKszV.LdYiZXnQbhr3FBxhXCMzPB12YSK3CpPBIDL3fChyctygAFX.Y2aN4jCRHgDjvlV6ZWqHXbaZSaBSO8zHojRRr.zQGcfTSMU31sar5UuZgeQsZ0pzBd9ytdMphuXbm7Zw+uewV3++etIfKf48Th6dBxPxTCbwsJbrICjqBOa0dMntIXwxWhOyat4lgEKVPrwFKLa1r.U5m5odJzRKsfCe3CiW8UeUDP.A.ylMiktzkhxKubb3CeXbjibD7G+i+QL0TSggGdXL1XigicrigzRKMwZMqyOkrUNf9zaFKB.GheiFMJgpO8zSirxJKrt0sNTTQEs.lFm2+0sm8rmx3hA1y.Nf50UWcX5omFW8pWEwFarn81aWrpOxHiH2j3FHVtJRLsDxDbPq4NUB5KBVK17FhKj.BH.jXhIJX1I93iGc1YmX3gGVNOsa2tT0nnhJJzYmcBKVrfqd0qJzIx5W+5wvCOL5qu9fKWtvbyMmzODxxA9WlS+WD5eCAWrpmb87D3+h8E66uYMrhVkuYaR3BEhupd6sWot5pUwiOq4XXFczQKa.TWbqVrCd3etBzRJ6v+zSOM9te2uK5s2dWfnDx7vJszRQ0UWMhO93w67NuCrZ0JZpolvjSNIxLyLQokVJRIkTDnXSRBlahYb9rOAtc6FwEWbh0ehPX1EbhusMtwMhRKsToiyrX.BZ.BJnfDlMN7vCWnViN5nC4hkxuYRIkzBXVMUkOgIevlJwX4FYjQjGF974SbkwpAP5Igw6kUVYgUu5UCsZ0ht6tazSO8f8t28JCVwktzkvjSNI5ryNkYbtgFZ.d85ECMzPRbo..UTQE3XG6XXlYlAQGczHzPCUFDbR.S2nDi4hvazqazFfurdB7+8sX+6q2gZeXzoSmjn5fCNnfXWxzGbQM2vDarwtfp8rX4DvPlT4bJlHNQqpVsyOpqG8nGE+fevO.974CiLxH3se62VZDJYbjbyMWAZytb4BokVZ3AdfG.qbkqTVjqWud3zoSIzK5Yi5RgYylEilTpcCKrvDBaia7xO+7Qt4lKJrvBgYylkJR5uAN8d73YAkTB.n+96WZ1DeC4latnolZByN6rxtbNFiz5Bi4lIHSFOfIOyFhvKT5wvmOehHMDe7wiXiMVnU67xwT4kWN9O9O9OvIO4IQmc1I73wCps1ZEtJswFaT3ZeUJjehIl.IjPBvlMaHv.CDNb3.ZznYAkMK3fCVnHF+qWO+5hw5wpaZXUF3uu52+k8XwdeeYqtzbyMmrnjyqwfCNHb4xERLwDW.UivM.d85URJcfAFXA40oh6Hd8wMZ7bRMjvvCOb.LeYuW5RWJ.lmZbLa1Lra2NN6YOKFczQQFYjAld5oQZokFZrwFwryNKFbvAkgxus1ZCKYIKA0UWcRR81rYShZHnfBRDmw95qODczQKyePLwDiPtWgGd3HojRBADP.n+96Ge8u9WGojRJXlYlQ1P4ymOwHM.fteyu42TFvWLM+FLX.QEUThFD3vgCgpUFe7wQ80WuHzZL9QZogIawjc4FAU56iuOlTLEMPa1rga4VtEQzFlbxIEJ5fz.yJVwJPKszBhO93QxImLFczQwJVwJPVYkE5pqtfNc5D4CkCVS5omN1111FN6YOq7Yxv9.vB3BI+G7B0PHlYlYDKqrRKzUMsrpBYAVwLNS0pKhXM246YxImT7vRprjaL3rXPsFf2aYm1oZrPE7It3hSDH696ueIwY1odhLfbyMWLv.Cft6tawiNuOnNSEDtxbiBCahdLX09hHhHDoXJqrxBZ0pE1rYCImbxHxHiDwFarhxQVYkUhLyLSXxjIjc1Yi7yOeXxjIzTSMgJpnBzd6sid6sWY8XfAFHrXwBhJpnDEmj8phMPiUVJyLyTF6VxHd9ieM0M2.Xd0qbwb8xG.50qWzb.0JpvZtxPPn0U1XKe97ILP.SHithXnQ7+iO34P16xkKDarwJJNNGPblHGg9v8e+2Ob5zIZqs1jMfYmc1ngFZ.2wcbGXzQGUtw0UWcs.XbqZ8SMt+uL4Gn9UtvP0hKgHhZmK42qNj5pgWnSmNgdP3lK5oTEFwL+K1nQtYlBYgOe9v0t10jhNv+dbwbhIlHLYxjDxB4UH0Nlq9Ud8vqY0JGwPeMZzHty67NgNc5P0UWMlbxIQCMz.NyYNiDl7vCOLV+5WO5t6tEZZr81aGW3BW.CLv.hJnFe7wiW5kdIgHC3P7mQFYHPpO7vCGgFZn..nfBJ.ADP.xFJSlLg7yOersssMXylsEz7vqWtW594+7edYb2OuYyG.QDQDHgDRPnZ696ueL3fCJJcuZEGHlTzoSmbhSlPlcjD.xFD9vSM9ORzWDx1rZOjnn750KpnhJfc61gUqVwsca2l.W2LxHCrpUsJzZqshku7kilatYgRMtzktjrqmVcYbpbDQWrG7pfLiUUh4+vDZoU9q2lfEKAY0MPzJL8HRQRwsa2xhdtviPPgUoQciDSHdxImDs2d6x7CPqdzScFYjAznQiTIFFNp+uTOeU2DvvF4F6QGcTDTPAIk8dyadyX5omFQEUTBSxkVZoIkn8pW8pHzPCE25sdqXpolB1saWzs3olZJbricLXznQDSLwfbyMWwP.ADYjQFILa1LBIjPDlyNojRBFLX.1saGomd5HmbxQxuv+qkEcSvu3W7KJy+XB4MNV8FylMiDSLQzRKs..flZpIY3D3M5vBKLLwDSHVj3bbxNFqQiFgCYTAPGkpmnhJJL0TSgXhIFroMsI7+W6cs9Sadd99x1Xb7YyqswmfZiCFBDHTRWFonfXISpYUQSsScZZ6CSSpeaeqZeXeYsS8a8+goo8evzzTWkxjxZmV1pR5xAxBTHg.ABDC1X7YLGMu6CtW27fKmRRS1ueU4QxJDvGe8yy8gq6q6q6FarQAwAud8h6e+6i24cdGYdX8K+k+R7we7GCcccblybFjOedToREA2Yt4faJHV1LgNUXNA9556iJDn7wwpNxve3FlC5PfJrip8aMuVyCJzvCWzPAorgZ2PA.Aqe50vkKWxDYjaLAf380oSmPSSSFwVTlVT8Dp5kSM5.0BpIab9peGYW7O5G8ivbyMGZt4lgUqVwDSLAFZngvbyMGLa1LFXfAv4N24vRKsjLmHBFLH9i+w+Hb61M99e+uOBDH.N+4OOxlMKRlLI5pqtvVaskDJTf.APvfAQznQgQiFQqs1JLXv.5qu9PKszBhGONNwINwtXEfZuHuuGB9s+1e6GpVfDULi4FYFS5q+5utXY5QO5QvmOeHe97RBm7j+pqtpz8ObSl5FCVU4s2dajJUJ4h4IO4IQgBEvW7EeAxmOOBFLHJUpDFe7wgttN5omdva8VuEJWtLBFLHFe7wQxjIQxjIwie7iwku7kkogxoN0oDjinzwmMaVXxTMESiE.hal4FOUKep3jSqojuTLgXt4d+NDT+Eb9+4ui8JACSznwZZBDwkmxjBoALu1weG.DU+fSWd1qGjq+FLX.whECtb4BEKVDYxjA.XW79R8yr5M94Q0Po5g.pZgwhECZZZ3JW4Jn0VaEiM1XvgCGHQhDX6s2FCO7vvpUq32+6+8PWWGW6ZWCABD.W5RWB+0+5eEoRkBoRkBW7hWD24N2As2d6X94mG1rYCM2byvjISBSEXsA74yG5s2dEgiiiD.fZyAsRkJcjBGpAh.htttbgkH4PZMvRyC.7K9E+BDOdb4TsSmNQxjIQlLYjDYXQa3zHu9vkTox6wN1wPKszhLoCYk7XxtTMooJ34wiGzUWcg4med4800t10voN0oP3vgwwN1wPqs1JxkKmT8RlDoYylgSmNEuD.6jX7dUO.UzR3FFd+OJ8R..jpcpVfF0MYrMAYnaTlD4gSlfc8dr3W1rKqnWVlTc8S0EhsN6cbmNc90fgcupIP8UOl23i0mOeXngFBW+5WGVrXAczQG35W+5n81aGYxjAFLX.KszRnyN6D28t2UjMms2daQZ3e0W8UwDSLgH0NpQGzSO8Hx9eoRkD4.piN5P75zXiMBa1rIg5VoREQ8JNJKSu+6+9eH+hkUNVUlDYHNjiQbpwzQGcfd5UMlMp..vELkDQAQ0oGQWht4MuofjgCGNPiM1njzEOPo1QW.0rDUtbYr0VaAud8hexO4mH8opGOdfOe9vbyMGJVrHVe80Q5zowm8YeFt3EuHt28tm.2Fmistc6Fs2d6X5omFc2c23F23F3Dm3DXt4lC4xkSNfYxjocMAd.1wxFCOQ0JOODPqwzR+QIm.t4s9MYbyGQWgOezZOulwCMp0ygc2FCWSExyomdZoPXFLTiUorZ7ISlT75vm65yCn9eV8Zi5uiFw1d6swEu3Ewe3O7GfGOdv+4+7evfCNHdzidDdu268j9Y90e8WG4xkCqs1ZXpolRFp4iO93vjoZJRGi2e4kWF82e+HPf.BpYTlNiDIhTvLqVsBmNcJSbSCFLHyCg74yKgNW+075+YS+leyu4CYyjSW7j9DTyVnkEiFqIacLIKxueccc7u9W+Kg3VL4Q0DH4GF9ZvCbNb3.YxjAACFDFLXPXA5ryNqD+82467cvINwIjllQWWGexm7I3pW8pHc5zROOO5nihxkKivgCCa1rg1aucDIRDYX9QO.T2gHTl0GRfZL67ZCyCfd2n2LfCFcHd8TktApEkhapXnOLjHpIN75GGmoDsts1ZKImfFZnADHP.7JuxqfImbR4fEoS.mYXO7gOTjsDRTx5QEp9eV85xdcvnwFaTlTPjgwLuj6d26BfZdCmZpoP1rYwG+weLBEJDVc0UwCe3CkVgEnVukPDdFarwfllFhEKlfuOyOhBI1wO9wga2tk4lFCImFxnWzC8Pv6+9u+GxOjpUAktb4Wf7IlgNwSd..ABD.CO7vPSSSFwp7KfBEJHvpR2V7MGiojxedkJUvq7JuBLZzHhEKFZu81gKWtPO8zCt6cuKz0q0Su974S1TelybFQ+YzzzvDSLAdvCd.t10tFxkKG96+8+tbAgaF3WxNc5bWRBCsbR3GYB9pT9..658O4oOOPQ2xLGBJjrzqP8IYxPKTQcRkRILdeNC2BDHf.sLa4PNr6HsQT4dO4cO8ByCrDvBiFq0nPDpZFNLPMXWomC5ohnowQ9a1rYwHiLBFXfAv8t28va+1uMdq25sPnPgPvfAwe6u82PpTove5O8mPnPgDfIXMN5niNfEKVvniNJLa1L9o+zeJlbxIEcL0fgZJZgWudkA5tKWtj5XwueHyC30Vd89fH53tNDfmvk5SBcM6vgCgy91saWRfzkKWviGOh1yPqKKu7xHWtbn+96W3NxBKr.FarwDoyi83LkWkUVYEYy38u+8Qmc1IrXwhvjPMMMbxSdRY.RjLYRoi1HKD4AaxybtIjaHXw838WUPAngAUXBY7p.6VFEoEWUQ7cuBGRM+C06C+84xkCgCGFyN6rxXqkELZkUVQnP.gjbokVRLrXznQ30qWIGF036Ue+qhXl5ASZzgIoqlaCgEk8YxzSOM9nO5iPhDIv0u90kJ450qW7O9G+CLzPCACFLfYlYFL3fChpUqht5pKjJUJ31sar3hKhKbgKHUw2hEKn2d6Es0VaBKBzzzDMIkdrnGpixd08a0vQ4NcPzBvtc6xHakmXUkjElSfUqVQlLYPKszhPi1b4xg4medL7vCi74yiyd1yhvgCiqbkqHCrCZEa94mWHKWhDIPoRkvsu8sgISlfWudwZqsFVbwEQtb4DsEp4laV3rB2jx+kEwQEUDtT++DP.5cfIHyDNorsTsZUYP+wMn.3q4NtdqQL+K97QpmyMmFMZDKt3hviGOX94mW.ufEBiS1cud8JulD9T2tcKUjlUfm4bPuOL7U0j9ogFVbR5Qir1jGnVe80EE86W8q9U369c+t3S9jOA81au3pW8pBuydm24cvoO8owbyMmjvZjHQv8t28Dw4hvuu4lahyctyI0MRWW+qgXoJiVc3vwgt+8vVGIOApeoU+gFZckVAoZwQKGDIhEWbQgBDrfXM1Xivsa2xrNqRkJHUpTnZ0pBa.+K+k+BBEJjDG4RKsDFXfAfSmNkw6T3vgw5qutjT9W7Eegz9bp2OlWBC4fCYCU9+nZMrgFZXWsXnZkeUOfyDDsZ0pfPlJcCTQSodHHI2X3qo50acccwZoMa1vBKrf.ZfACFD12RzeLYxDRmNsTsX1f4j2L78MkPFFBJoaMCKhd2TSvVcnFxbUpVspHUNO5QOBeuu22C..27l2DCO7vvgCGnb4x3m+y+43S+zOESLwD3Mey2DlMaFABD.whECs0VaXngFB82e+n2d6U3+OUT6855lZ022uvc1qvd12CAevG7Ae3A8jrWISn92X9A7BD4xBiqj32FOdbX1rYzc2cKjlh8hbjHQP+82unz0s2d6ha3e7O9GK0q3V25VnToR3Mey2T5wYWtbICaPN+wFXfAvlatIN6YOKVe80Qtb4jD74FSFmekJUD3HYwq3FWSlLIO2lMadWySLRcAMMMoQvokRhsO6y55S7VsBrTBCUu1p9+6ryNkvL83wCxkKmzDRarwFBLwpSfFtAOTnPR+TyX5UY6KYHJmwCDwLpLCkJUBUqVcW4APde4zoSX2tcbtycN7C+g+PboKcIr95qiomdZotObnAd6aear1Zqg23MdCDMZTzbyMKTkGnl5W2c2cKyUAFFMu9P.ZTSPu98jOKKSevG7Ae3gcmNHOADBQVYtfACJDrqolZBO3AO.UpTA25V2B.PXfZpTovpqtJ762uHNrUqVU54UVM4RkJAfZgnDMZTLv.CfvgCKIEwDdO9wONxkKGdsW60v3iON5pqtvMtwMPznQEQmZunFgpJroR1L9YkVII5N7vASlWMGA5ggbAhfMnB+JsFKz3UAB08haQFLTS576ryNAPMUitToRvlManiN5PnSByMhsMZhDIfOe9D8aREJVZHf4tvNDjIaSRow2ST6YAvtlKEtb4Bm9zmFtb4B+y+4+D4ymGwhECCLv.RHpqs1ZHRjHHTnPn0VaE555RHbwiGWl38znA0MTJs7jlMLDr5QXSsh6OsdBNZh7dcK0bCXLipvpEIRDQxLpVslPpRVL1YmchpUqhye9yKV9uyctChFMJ5s2dkg2vMu4MQ5zoQ+82O5qu9vm8YeFN24NGb61MRkJEVe80QwhEE52Rkw6pW8pnXwhXiM1PFon.6LjF3ETZImGvTsvPuZ.P7VPtsyPAnmEpPx7vqJhSrxl.68nZBXGQyU8eq+9TnPA71u8aKCOkY9p4+aznQQjHQP4xkEiAzqmYylkhUwvan9Io1UczPBOPp5ohc0kJxWTpZHCc+y+4+L9nO5iPe80G762uvLUKVrHdYSjHgbc6QO5QX6s2Fs1ZqR9Vj9Mjbfqu95R3bpp+mACe8F+udIW4oYcnIFWOhF0mjrZBllMaFoRkR7FrxJqf95qOr0VagomdZXzXsgKMoSAg.rs1ZC+te2uCqs1ZvpUqvgCGn+96Gat4lh0irYyJC8AKVrfabiaHHSPQBvrYyROP62ue7vG9PoHcTCJU8noV3m5C6i+cJvXrmnImbXxlr5lTRYHWdHiN4PoduvfWWWWh6kdIpW28ompKe4KiyblyHbrezQGE23F2Pj79zoSKSBRNWxnTTxDfYQJI7qDJa0qEUqVUFYp7yEG1Gd73AgBERnxvEtvEvO3G7CfWudQgBEjYhFGhK4xkSz7UmNchhEKhXwhIpIhUqVkqY550jJSmNcJdRUKnGvN.Z7jZo+vVGZ3PGD0.3EO0PHXHBas0VBRGLwMFKqe+9gttNVd4kkDgFbvAEqnbd65vgCo+UGYjQPrXwjgKMS9jUNrZ0pBOl5qu9jwO5VaskvAEpsk78tIS0ZmSNUdXRjTrnnUTWtbIpUG8nQnGI5P986WjLbJBAO9wOVRvmdRXU30zzjvRb3vgL0dJWtrzbPrGBxkKmveKd8qXwhHUpTxmClD7TSMkDdpttNJVrnPe.B4oZB+974SFD6Nc5THUGaFpfACh0VaMb7iebX0pUjMaVDKVL7du26gye9yihEKJs9Hul3vgCgUoTFVXXVzfCy6PkQADj.0vq2KvDdRN.bX46ZvfgmtvgdRVpI1n13MDVNVUUlHGmEYLNaptYjZ1rQ8CGNrn+Lb5DRzV.1wpAoKMvNHYY2tcYv0oqqKx7G6YgzoSi0We8Zx18W4FmdA3AA2tcKU3kM+MKbSCMzfLZTYm2Q39XBdp0bP0ktp.XwPjXGTcm6bGjNcZY1DuwFafEVXAoKqJVrH74ymP2Dx0J5wkE+izHmdVqVsJBGNLJWtrLen4vXgbNZ4kWF1rYCW3BW.u669tHVrX3wO9wvoSmRnLppTnZHibyn5FStTyIp9+1Kp0y8CAzkV8Y2a1rYw5FKgOqtJk9vRkJIC5623MdCzVasg0VaMAtzlatYYbRYwhEzTSMgUWcUoT5pVZXhcDWYVjoLYxHdR3jnYqs1Rns.U.MBeHwnlVrnN1rxJqHrnsXwhHc5znRkJxl0icriIrWkIo6wiG4PBw+mUUuPgBRhqbFAS0elRKSznQkBkQJov4Db3vgE1hZvfATnPA3wiG4Z.U4iLYx.ylqMn+rZ0JrYylTygRkJg6e+6CqVshAGbP7tu66h.ABHExLRjHRtYDgJ0QYEs1qt1O.V3pdR78h3Pwy8CAbLbxEs7vh0vDGUQjgtCIhE4xkCIRjPnSPgBEvTSMErYylrAkVq00q0wTjvas1ZqXhIlPnIfKWtD71sXwBzzzD9CwuHIBPau81BDnz5FiqmUh1qWuvjISXpolRD4WNdmN9wOtLtqzzzDXIqTohTUalPJMFvCebBqvMcD+dF+OG0oDgnN5nCLxHiHLrblYlQJzH8zw1c0iGOBfEromRmNszSGiLxHRavdwKdQboKcIzUWcIL.lJ6GquC6HNhdiZ9ELODtp+PvdMqjOnPv+ldoqqCCarwFG3qX8mj2qmjCaw3V4EJVtaylMKwlx6GeMIbdL4NN5nRmNMt8susX0g7mgeAvMR..4ymGEKVD2+92W9BjgDvPDb61MVXgEfMa1DhbQDkHhS555Ro7Y3J7vx1ausjLd974wvCOLtxUtBBDH.pTohvweZ0UUjbsYylzdpDRvFZnl9HsvBK.qVsBud8J8cg50GJFA555Hd73Xt4lSvn2sa2BzxbFfICotuJOH1AaD4H1hirFG80WevgCG3W+q+0X6s2VnlRSM0jLMg750qTvNVDtM1XCoh20OYO2uPh9e4RWW+4um.ZQkUZjvfwCOz5T87AgVunELVETSlLIRvgc61Q2c2sTYyLYxfkVZIjJUJ40YxImTrLyD.6ryNQtb4D5UuwFa.+98iJUpH4evX3Y68wCxjmMDp0FarQDHP.L93iiW8UeUb0qdU3ymOjLYR31saQ.fYhwj++ziUSM0jfwOPslAQSSaWzMmC6ZNXy4FLJ2I25V2BZZZhhyQcGR0C.SH1joZxTBGIWDIqgFZHTnPADHP.bpScJAgsEVXAYHHRpWXvfAI2KUK+DtUx9WRC+CZyu5TtQs9I71gYD9Yc8B4P.vNiqSlnDqqfJl3pMKhZb2tc6FO9wOFwiGGEKVDFLX.m9zmV1bSjcXXEM0TSRhZ4xkC8zSO6B6d13NrPXL1axEFUNKwhDwhWwMxrgULZzn7EM45OgAl5.ZhDIDolgTbvnQivue+RcFzzzDrxYeSTpTI4ftCGNPf.Av1aWSakXnXNb3PtdkJUJwqQlLYPas0Fle94Ek4icjEaGx.ABHzu1sa23jm7jxf4lCYaiFMJhr.OrvhjwCyj0sL+E9cH8vSON.6sm.dnp9BJVOr0OOWO2ODvBsvMl7F23CraNpSK37FqXJoELu3ze+8Kk0mj+hHfPXSIAqVXgEjdVNVrXXxImTph4jSN4tHIWjHQfACFjPsnEYx6H0FPhEORWWWlnNrdAQiFE26d2aWg6v7JXHabxOlHQB31saQqWKWtLz00EB4wQUE66aReA1PSMzPCX1YmEKszRn0VaEUqVSB8CFLnrIiIdO3fChnQiht6taAFUhZlllFb3vAVbwEQyM2rzdhz.AEgY94gJPBUXDBAJq77QIwXJ0mp0ro966y60glSvy55YMmhC6wSjHHJPbhaVrXQIjA+98iwGebDOdbQA6X+FuzRKAud8hEVXAofNzJLS.UsHVDSah1D8N..IrGhYOa3+UVYEzZqsJfDvVR0tc6HRjHHPf.X94mG974CO3AO.986GSM0TnPgBHd73R75M0TSxbai8wsKWtP5zok2a986WJDE8.zUWcgPgBgW60dMDJTHTsZU30qWAUmCZcXaDOrN25vd7pe+dXvo9zrNJ4rdj3Nzy62DOKOd0vUX8GHUhsa2tzBeasUsoahlllTGhFZnAg2JpkouXwhBUHnFWRhBp9dhV84HQhghoooAfcRfkDNyjISxFWRVrBEJfXeEaJo7R1RKsficrignQihG9vGhHQhfpUqhBEJHuec5zI5s2dE4oYqs1B81auBciKVrHBDH.VYkUDgSKZznnkVZQ9LPK3Gz5IkQA0+XNpO986w7sBHReQrTIuFQvgVn2byMwniNJZu81Q1rYQu81KRkJElc1YgISlvctycP73w2UKTlHQBAq9u7K+RoRx555R7wFMZTZmzpUqIkkjYkACFDqrxJRq.xhBBry.2ldTRjHA5pqtfACFv.CL.5niNvXiMFrXwhnUmL7r3wiifACJGTAfnDzyLyLRnam5TmBSO8zHSlLHb3vHPf.RionFZFS39apuCT+2mlG6S6i+Yc8+4CG5v96ppw.SPlutjmIe5m9oRCdyoY+latI5niNPSM0DFczQwm+4etX4uPgB6RoFb3vgLA1YkkWc0UgOe9jBQwNmyhEKHQhDBm+I8HHY13Ah.ABH8I6LyLC5ryNQjHQvlatIFe7ww+9e+uge+9wst0svpqtJhGOtnGrlLYBgBER543EWbQjLYRA4GR3O1oc8zSOHXvfxvIgETTEYmm10dENS8+7As1KOIOIO9mjm+8a8+6ODnJYJpsAIuwMcL12zoSikWdYbyadSTrXQblybFzc2cCCFpIMHiM1XBEfKTn.dvCd.ra2NVd4kwxKurvmGNRRIV+rtC1saWn9LIZVCMz.RmNs.CLaJ7M2r1PuSUX.3j2zkKWHSlLX7wGWDSflatYjMaVzWe8ISDd61siQFYD74e9mK89Pas0lnHHTAG.1ABSVLvRkJ8L6Mn9Z7T+OeXq5qJ72zdB9VwgfCaohr.e9TuQ7rIjkrJ0tb4RRjNSlLnPgB6RSbHI19xu7KgIS0D524laNYNYkKWNglGISlD974CZZZ3rm8rvue+HQhDBTvDJSpwPjJ3Ku7xBY83HOxtc6n4laVlECD8FRigRkJAqVsJJ31ryNKlc1Ywku7kEh78y9Y+LANSVPRxVSV2FtY6v5Q2mTiT0GVzSx2u60ggm24TB7sfCADlu5uwECQhUL1nwczUIFJEoeAofAoEPkJU1UqLlOedTnPAA4IRjNNGn862O5s2dE3HYM.3qIOvxVcjulqu95HYxjRRuMzPs44E8hs1ZqIIqSd8vJyREmi4LP0gnToRnolZZW0igEfRswepuptOoe+bXIFeT+9c+7F7xCAGgEsjo1wXpUbrXwhB6RIUfIiKat4lQ4xkkmCNn3XsMHe2Yh2r2DH16.PnaAoKNvN5+I+WFVlPc2u5fIKFEOTX2tcop3jRGjNE974SHZn5zDhsFIo9.kOdNSfAfz9mzSHObjMa1CsQ0OpGBdV2DueIV+B4PvZqs1KN1JsGqm2jk548y+yZY8ediFxy6meV0bUE3PkpKFLryDMh0ZgfNPcoRSSS71RcVh8q8KBxzcvAD9x0KWGxRkjgpGBn2mCa4xkKYlT.Tyypttt3w8Ew5kGBd45YZY0pUTnPALyLyHMy+LyLCJVrnPS5CZQFxlLYRQv.XdQeSnoPGk02JJV1+KWOIUT8aiKleCkVFcccI2CUUsa+VEJTP5JOVmE1ofunVu7PvKWOSqxkKiVZoEQlcz00Q3vgQCMz.lZpoDohY+Vr6.IU2YtEjwsGF5UeSr9uLCkthxgLBQb.....jTQNQjqBAlf" ],
									"embed" : 1,
									"id" : "obj-10",
									"maxclass" : "fpic",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "jit_matrix" ],
									"patching_rect" : [ 490.725000000000023, 12.0, 80.0, 99.0 ],
									"pic" : "Macintosh HD:/Users/orjansandred/Desktop/Unknown.jpeg"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Andale Mono",
									"id" : "obj-17",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 580.600000000000023, 64.0, 246.0, 47.0 ],
									"text" : "Giovanni Palestrina:\nsoprano voice from the beginning \nof the Marcellus mass."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 408.600000000000023, 89.0, 39.0, 22.0 ],
									"text" : "dump"
								}

							}
, 							{
								"box" : 								{
									"bwcompatibility" : 80100,
									"defaultnoteslots" : [ "null" ],
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-6",
									"loop" : [ "[", 1, 1, 0, "]", "[", 1, 2, 0, "]" ],
									"maxclass" : "bach.score",
									"numinlets" : 7,
									"numoutlets" : 9,
									"numvoices" : 1,
									"out" : "nnnnnnnn",
									"outlettype" : [ "", "", "", "", "", "", "", "", "bang" ],
									"patching_rect" : [ 408.600000000000023, 116.0, 534.0, 100.0 ],
									"pitcheditrange" : [ "null" ],
									"stafflines" : [ 5 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"versionnumber" : 80300,
									"voicenames" : [ "[", "]" ],
									"voicespacing" : [ 0.0, 26.0 ],
									"whole_score_data_0000000000" : [ "score", "[", "slotinfo", "[", 1, "[", "name", "velocity envelope", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 2, "[", "name", "slot function", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 3, "[", "name", "slot intlist", "]", "[", "type", "intlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 4, "[", "name", "slot floatlist", "]", "[", "type", "floatlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 5, "[", "name", "slot int", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 6, "[", "name", "slot float", "]", "[", "type", "float", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 7, "[", "name", "slot text", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 8, "[", "name", "slot filelist", "]", "[", "type", "filelist", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080213504, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 9, "[", "name", "slot spat", "]", "[", "type", "spat", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076101120, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "auto", "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 10, "[", "name", "slot llll", "]", "[", "type", "llll", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 11, "[", "name", "slot 11", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 12, "[", "name", "slot 12", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 13, "[", "name", "slot 13", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 14, "[", "name", "slot 14", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 15, "[", "name", "slot 15", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 16, "[", "name", "slot 16", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 17, "[", "name", "slot 17", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 18, "[", "name", "slot 18", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 19, "[", "name", "slot 19", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 20, "[", "name", "dynamics", "]", "[", "type", "dynamics", "]", "[", "key", "d", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 21, "[", "name", "lyrics", "]", "[", "type", "text", "]", "[", "key", "l", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 22, "[", "name", "articulations", "]", "[", "type", "articulations", "]", "[", "key", "a", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 23, "[", "name", "notehead", "]", "[", "type", "notehead", "]", "[", "key", "h", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079738368, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 24, "[", "name", "annotation", "]", "[", "type", "text", "]", "[", "key", "t", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 25, "[", "name", "slot 25", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 26, "[", "name", "slot 26", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 27, "[", "name", "slot 27", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 28, "[", "name", "slot 28", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 29, "[", "name", "slot 29", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 30, "[", "name", "slot 30", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "singleslotfortiednotes", 1, "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "]", "[", "commands", "[", 1, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 2, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 3, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 4, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "[", 5, "[", "name", "command", "]", "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "marker", "marker", "]", "[", "start", "none", "]", "[", "end", "none", "]", "[", "key", 0, "]", "]", "]", "[", "markers", "]", "[", "midichannels", 1, "]", "[", "articulationinfo", "]", "[", "noteheadinfo", "]", "[", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "-1/2", 0, "]", "[", "1/2", "[", "E6", 100, 1, 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "E6", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "E6", 100, 0, 0, "]", 0, "]", "]", "[", "1/2", "[", "E6", 100, 0, 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 2, "]", "[", "3/8", "[", "G6", 100, 0, 0, "]", 0, "]", "[", "1/8", "[", "F6", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/8", "[", "E6", 100, 0, 0, "]", 0, "]", "[", "1/8", "[", "D6", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/8", "[", "C6", 100, 0, 0, "]", 0, "]", "[", "1/8", "[", "B5", 100, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/8", "[", "A5", 100, 0, 0, "]", 0, "]", "[", "1/8", "[", "G5", 100, 0, 0, "]", 0, "]", "]", "[", "1/2", "[", "G5", 100, 0, 0, "]", 0, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085917184, 100, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "G5", 100, 0, 0, "]", 0, "]", "[", "1/2", "[", "D6", 100, 0, 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 2, "]", "[", "3/8", "[", "B5", 100, 0, 0, "]", 0, "]", "[", "1/8", "[", "A5", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/8", "[", "B5", 100, 0, 0, "]", 0, "]", "[", "1/8", "[", "C6", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "D6", 100, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 2, "]", "[", "3/8", "[", "E6", 100, 0, 0, "]", 0, "]", "[", "1/8", "[", "D6", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/8", "[", "C6", 100, 0, 0, "]", 0, "]", "[", "1/8", "[", "A5", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "D6", 100, 1, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/8", "[", "D6", 100, 0, 0, "]", 0, "]", "[", "1/8", "[", "C6", 100, 0, 0, "]", 0, "]", "]", "[", "1/2", "[", "C6", 100, 0, 0, "]", 0, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "B5", 100, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", 1, "[", "C6", 100, 0, 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "1/2", "[", "C6", 100, 0, 0, "]", 0, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "C6", 100, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "C6", 100, 0, 0, "]", 0, "]", "[", "1/2", "[", "F6", 100, 0, 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", 1, "[", "E6", 100, 0, 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "1/2", "[", "C6", 100, 0, 0, "]", 0, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "C6", 100, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "C6", 100, 0, 0, "]", 0, "]", "[", "1/2", "[", "F6", 100, 0, 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "1/2", "[", "E6", 100, 0, 0, "]", 0, "]", "[", "1/2", "[", "D6", 100, 0, 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "-1/4", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "E6", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "F6", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "D6", 100, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "E6", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "C6", 100, 0, 0, "]", 0, "]", "]", "[", "1/2", "[", "D6", 100, 0, 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "C6", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "E6", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "F6", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "D6", 100, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "E6", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 2, "]", "[", "3/8", "[", "C6", 100, 0, 0, "]", 0, "]", "[", "1/8", "[", "B5", 100, 0, 0, "]", 0, "]", "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "A5", 100, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "G5", 100, 0, 0, "]", 0, "]", "]", "[", "1/2", "[", "C6", 100, 0, 0, "]", 0, "]", "[", "[", "leveltype", 8, "]", "[", "1/4", "[", "B5", 100, 0, 0, "]", 0, "]", "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", "leveltype", 1, "]", "[", 1, "[", "C6", 100, 0, 0, "]", 0, "]", 0, "]", "[", "[", "[", 4, 4, "]", "[", "]", "]", "[", -1, 0, "]", 0, "]", 0, "]" ],
									"whole_score_data_count" : [ 1 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 346.0, 438.0, 156.0, 22.0 ],
									"reg_data_0000000000" : [ "[", "FUNCTION", "[", "LAMBDA", "[", "CLUSTER-ENGINE::SEQ", "]", "[", "LET", "[", "[", "CLUSTER-ENGINE::MARKOV-TABLE-TEST", "[", "CLUSTER-ENGINE::MAKE-1ST-ORDER-MARKOV-ANALYSIS-OF-SEQUENCE", "CLUSTER-ENGINE::SEQ", "[", "LIST", "-1/2", "1/2", "3/4", "1/4", "3/8", "1/8", 1, "-1/4", -1, "]", "]", "]", "]", "[", "DECLARE", "[", "TYPE", "LIST", "CLUSTER-ENGINE::MARKOV-TABLE-TEST", "]", "]", "[", "CLUSTER-ENGINE::CHECK-MARKOV-TABLES-WITHIN-MAX-DEVIATION", "'", "[", "[", "[", "[", "-1/2", "-1/2", "]", "NIL", "]", "[", "[", "-1/2", "1/2", "]", "NIL", "]", "[", "[", "-1/2", "3/4", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "[", "-1/2", "1/4", "]", "NIL", "]", "[", "[", "-1/2", "3/8", "]", "NIL", "]", "[", "[", "-1/2", "1/8", "]", "NIL", "]", "[", "[", "-1/2", 1, "]", "NIL", "]", "[", "[", "-1/2", "-1/4", "]", "NIL", "]", "[", "[", "-1/2", -1, "]", "NIL", "]", "]", "[", "[", "[", "1/2", "-1/2", "]", "NIL", "]", "[", "[", "1/2", "1/2", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 3238611500, 1077979818, "]", "[", "[", "1/2", "3/4", "]", "NIL", "]", "[", "[", "1/2", "1/4", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078198272, "]", "[", "[", "1/2", "3/8", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 3238611500, 1076538026, "]", "[", "[", "1/2", "1/8", "]", "NIL", "]", "[", "[", "1/2", 1, "]", "_x_x_x_x_bach_float64_x_x_x_x_", 3238611500, 1075489450, "]", "[", "[", "1/2", "-1/4", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 3238611500, 1075489450, "]", "[", "[", "1/2", -1, "]", "NIL", "]", "]", "[", "[", "[", "3/4", "-1/2", "]", "NIL", "]", "[", "[", "3/4", "1/2", "]", "NIL", "]", "[", "[", "3/4", "3/4", "]", "NIL", "]", "[", "[", "3/4", "1/4", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "[", "3/4", "3/8", "]", "NIL", "]", "[", "[", "3/4", "1/8", "]", "NIL", "]", "[", "[", "3/4", 1, "]", "NIL", "]", "[", "[", "3/4", "-1/4", "]", "NIL", "]", "[", "[", "3/4", -1, "]", "NIL", "]", "]", "[", "[", "[", "1/4", "-1/2", "]", "NIL", "]", "[", "[", "1/4", "1/2", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 3176214215, 1077908533, "]", "[", "[", "1/4", "3/4", "]", "NIL", "]", "[", "[", "1/4", "1/4", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 2082475023, 1078439720, "]", "[", "[", "1/4", "3/8", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 1248770331, 1076170105, "]", "[", "[", "1/4", "1/8", "]", "NIL", "]", "[", "[", "1/4", 1, "]", "_x_x_x_x_bach_float64_x_x_x_x_", 1248770331, 1076170105, "]", "[", "[", "1/4", "-1/4", "]", "NIL", "]", "[", "[", "1/4", -1, "]", "NIL", "]", "]", "[", "[", "[", "3/8", "-1/2", "]", "NIL", "]", "[", "[", "3/8", "1/2", "]", "NIL", "]", "[", "[", "3/8", "3/4", "]", "NIL", "]", "[", "[", "3/8", "1/4", "]", "NIL", "]", "[", "[", "3/8", "3/8", "]", "NIL", "]", "[", "[", "3/8", "1/8", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "[", "3/8", 1, "]", "NIL", "]", "[", "[", "3/8", "-1/4", "]", "NIL", "]", "[", "[", "3/8", -1, "]", "NIL", "]", "]", "[", "[", "[", "1/8", "-1/2", "]", "NIL", "]", "[", "[", "1/8", "1/2", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 3238611500, 1076538026, "]", "[", "[", "1/8", "3/4", "]", "NIL", "]", "[", "[", "1/8", "1/4", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 3238611500, 1076538026, "]", "[", "[", "1/8", "3/8", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 3238611500, 1075489450, "]", "[", "[", "1/8", "1/8", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 3097874011, 1079028394, "]", "[", "[", "1/8", 1, "]", "NIL", "]", "[", "[", "1/8", "-1/4", "]", "NIL", "]", "[", "[", "1/8", -1, "]", "NIL", "]", "]", "[", "[", "[", 1, "-1/2", "]", "NIL", "]", "[", "[", 1, "1/2", "]", "NIL", "]", "[", "[", 1, "3/4", "]", "NIL", "]", "[", "[", 1, "1/4", "]", "NIL", "]", "[", "[", 1, "3/8", "]", "NIL", "]", "[", "[", 1, "1/8", "]", "NIL", "]", "[", "[", 1, 1, "]", "NIL", "]", "[", "[", 1, "-1/4", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "[", 1, -1, "]", "NIL", "]", "]", "[", "[", "[", "-1/4", "-1/2", "]", "NIL", "]", "[", "[", "-1/4", "1/2", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 3097874011, 1079028394, "]", "[", "[", "-1/4", "3/4", "]", "NIL", "]", "[", "[", "-1/4", "1/4", "]", "_x_x_x_x_bach_float64_x_x_x_x_", 3238611500, 1077979818, "]", "[", "[", "-1/4", "3/8", "]", "NIL", "]", "[", "[", "-1/4", "1/8", "]", "NIL", "]", "[", "[", "-1/4", 1, "]", "NIL", "]", "[", "[", "-1/4", "-1/4", "]", "NIL", "]", "[", "[", "-1/4", -1, "]", "NIL", "]", "]", "[", "[", "[", -1, "-1/2", "]", "NIL", "]", "[", "[", -1, "1/2", "]", "NIL", "]", "[", "[", -1, "3/4", "]", "NIL", "]", "[", "[", -1, "1/4", "]", "NIL", "]", "[", "[", -1, "3/8", "]", "NIL", "]", "[", "[", -1, "1/8", "]", "NIL", "]", "[", "[", -1, 1, "]", "NIL", "]", "[", "[", -1, "-1/4", "]", "NIL", "]", "[", "[", -1, -1, "]", "NIL", "]", "]", "]", "CLUSTER-ENGINE::MARKOV-TABLE-TEST", 10, "]", "]", "]", "]" ],
									"reg_data_count" : [ 1 ],
									"saved_object_attributes" : 									{
										"embed" : 1,
										"versionnumber" : 80100
									}
,
									"text" : "bach.reg @embed 1 @out t"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Andale Mono",
									"id" : "obj-9",
									"linecount" : 19,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 537.0, 268.5, 657.0, 263.0 ],
									"text" : "A common way to use a Markov chain in music is to first analyse a piece of music \nto create a transition matrix. The transition matrix will contain all probabilities \nfor an event (for example a pitch or a duration) to be followed by another event \n(another pitch or duration) in a sequence.\n\nIn the Lisp code of the Cluster-Engine library, there are two functions \nthat will help you create a Markov chain rule:\n\n1) 'ce::make-1st-order-markov-analysis-of-sequence' can take an existing sequence \n    of events and calculate a transition matrix.\n\n2) 'ce::test-seq-follows-markov-chain?' will create a rule \n   (i.e. a lambda expression that can be attached to a rule accessor) \n   from a sequence of events and checks if it is an acceptable representation \n   of its transition matrix.\n\n\nNote that the r-one-engine module has its rule input parameter set to :all-durations, \nsince the Markov rule needs a full representation of the score as it is being constructed."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 65.0, 155.0, 188.0, 22.0 ],
									"text" : "loadmess rule_input :all-durations"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 99.75, 189.0, 50.0, 22.0 ],
									"text" : "r voices"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 5,
											"revision" : 4,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 79.0, 1129.0, 654.0 ],
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
													"fontname" : "Andale Mono",
													"id" : "obj-33",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 356.5, 156.0, 325.0, 20.0 ],
													"text" : "Incoming durations from the Palestrina score"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-29",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 27.0, 156.0, 326.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 0,
														"versionnumber" : 80102
													}
,
													"text" : "bach.reg"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-22",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 334.0, 23.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-35",
													"linecount" : 2,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 169.0, 389.5, 527.0, 33.0 ],
													"text" : "This function calculates the transition matrix for the rhythm sequence. \nJust look inside the bach.reg to see what it looks like !"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-32",
													"linecount" : 4,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 261.0, 280.0, 112.0, 60.0 ],
													"text" : "A list of all existing note values in the example"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-31",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 27.0, 201.0, 367.0, 22.0 ],
													"text" : "t l l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 375.000000000000114, 286.0, 64.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80102
													}
,
													"text" : "bach.wrap"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-28",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 375.000000000000114, 318.0, 57.0, 22.0 ],
													"text" : "pw.quote"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 375.000000000000114, 258.0, 57.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80102
													}
,
													"text" : "bach.thin"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 375.000000000000114, 231.0, 54.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80102
													}
,
													"text" : "bach.flat"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 27.0, 322.0, 57.0, 22.0 ],
													"text" : "pw.quote"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 79.0, 417.295454545454561, 55.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 0,
														"versionnumber" : 80102
													}
,
													"text" : "bach.reg"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 79.0, 389.5, 80.0, 22.0 ],
													"text" : "lisp.quickeval"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 27.0, 348.0, 367.0, 22.0 ],
													"text" : "lisp.expr ce::make-1st-order-markov-analysis-of-sequence table var"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 27.0, 461.0, 758.0, 22.0 ],
													"text" : "lisp.expr ce::test-seq-follows-markov-chain? markov-table 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 27.0, 98.0, 758.0, 22.0 ],
													"text" : "t b b"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-9",
													"linecount" : 4,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 62.0, 500.0, 707.0, 60.0 ],
													"text" : "This function will generate the markov rule base on the given transition matrix and deviation. \nIf the deviation is set to 0, all transition that were not found will be set to nil \n— this indicates that they will not be allowed at any point in the generated sequence. \nA probability of 0% in combination with a deviation more than 0% might make the transition occur."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Andale Mono",
													"id" : "obj-8",
													"linecount" : 3,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 809.0, 389.5, 261.0, 47.0 ],
													"text" : "How much the generated sequence is allowed to deviate from the given transition matrix (in %)."
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
													"patching_rect" : [ 27.0, 562.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-2",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 27.0, 19.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-58",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 766.0, 400.499999999999943, 29.5, 22.0 ],
													"text" : "0"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"order" : 0,
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"order" : 1,
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 1 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-27", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 1 ],
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-31", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 1 ],
													"source" : [ "obj-58", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-58", 0 ],
													"source" : [ "obj-7", 1 ]
												}

											}
 ],
										"styles" : [ 											{
												"name" : "MOZ-numint",
												"default" : 												{
													"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
													"fontname" : [ "Menlo Regular" ],
													"fontsize" : [ 17.0 ],
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
									"patching_rect" : [ 367.0, 259.5, 135.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p lamba-markov-rhythm"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-72",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.r-one-engine.maxpat",
									"numinlets" : 5,
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 31.0, 222.0, 294.0, 97.0 ],
									"varname" : "bp778998105201",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-63",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 31.0, 38.5, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-65",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 31.0, 620.625488000000018, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 1 ],
									"order" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"order" : 1,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"order" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 1 ],
									"source" : [ "obj-21", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-22", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-3", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 4 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-72", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 4 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-72", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-72", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "MOZ-numint",
								"default" : 								{
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"fontname" : [ "Menlo Regular" ],
									"fontsize" : [ 17.0 ],
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
					"patching_rect" : [ 9.0, 121.0, 115.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p markov-chain-rule"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 104.0, 1067.0, 375.0 ],
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
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 57.0, 211.0, 167.0, 22.0 ],
									"text" : "rule_parameter :rhythm&pitch"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 57.0, 81.0, 91.0, 22.0 ],
									"text" : "rule_input :beat"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Andale Mono",
									"id" : "obj-8",
									"linecount" : 10,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 331.0, 107.0, 714.0, 141.0 ],
									"text" : "These two rules restrict the relation between voices.\n\n- the first rule defines which chords are allowed to happen \n  between voices at main beats (in between beats the harmony is not checked). \n  For the 2-voice example, the harmonic intervals can be a minor / major 3rd or their inversions. \n  For the 3-voice example, the 3 voices can make up any inversion of minor or major triads.\n\n- the second rule restricts the second voice to follow the first voice in a canon in 5ths, \n  starting 1/2 note after the first voice. In the 3-voice example, only the two top voices \n  are connected in a canon."
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 13.0, 117.0, 22.0 ],
									"text" : "loadmess collapse 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 57.0, 51.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 144.0, 51.0, 63.0, 22.0 ],
									"text" : "r harmony"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 107.0, 135.0, 50.0, 22.0 ],
									"text" : "r voices"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-40",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.r-chords.maxpat",
									"numinlets" : 4,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 12.0, 164.0, 304.0, 27.0 ],
									"varname" : "bp403974737474",
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
									"id" : "obj-47",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.r-canon.maxpat",
									"numinlets" : 2,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 12.0, 243.0, 238.0, 25.0 ],
									"varname" : "bp358149205481",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-59",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 12.0, 13.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-60",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 12.0, 341.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 1 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"order" : 1,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"order" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"hidden" : 1,
									"order" : 1,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"hidden" : 1,
									"order" : 0,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"midpoints" : [ 66.5, 123.0, 21.5, 123.0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"midpoints" : [ 153.5, 122.0, 21.5, 122.0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 9.0, 206.940054775317321, 106.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p polyphonic-rules"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 242.0, 754.0, 456.0 ],
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
									"hidden" : 1,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 264.0, 14.0, 50.0, 22.0 ],
									"text" : "r voices"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-29",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.r-note-meter.maxpat",
									"numinlets" : 5,
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 17.0, 103.0, 304.0, 27.0 ],
									"varname" : "bp109947206101",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 128.5, 14.0, 117.0, 22.0 ],
									"text" : "loadmess collapse 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 61.0, 14.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 61.0, 149.5, 82.0, 22.0 ],
									"text" : "format :d_offs"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 47.0, 62.0, 224.0, 22.0 ],
									"text" : "format :d_offs, metric_structure :1st-beat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 361.5, 191.0, 212.0, 35.0 ],
									"text" : "#'(lambda (x) (if (member (first x) '(1/4 3/4 1/2 3/8)) (= (second x) 0) t))"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-33",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.r-note-meter.maxpat",
									"numinlets" : 5,
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 17.0, 199.0, 304.0, 27.0 ],
									"varname" : "bp1243316032428",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 361.5, 99.0, 200.0, 35.0 ],
									"text" : "#'(lambda (x) (case (first x) ((1) (= 0 (second x)) ) (t t) ) )"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-56",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 17.0, 10.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-57",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 17.0, 295.931641000000013, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Andale Mono",
									"id" : "obj-3",
									"linecount" : 13,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 71.0, 249.931641000000013, 664.0, 182.0 ],
									"text" : "These two rules restrict how durations relate to the meter. \nSee the Metric rules section in this overview to know more.\n\nThe Markov chain rule discussed in another sub-patch does not take the meter into account, \nthis is why this rule is necessary.\n\nClick on the name of one of the modules to expand it and see its settings :\n\n- the first rule restricts whole notes to only begin \n  at the downbeat of a measure (i.e. no syncopation is allowed)\n\n- the second rule restricts the durations 1/4, 3/4, 1/2 and 3/8 \n  to only begin at (1/4 note) beat in the measure (i.e. no syncopation is allowed)."
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 1 ],
									"hidden" : 1,
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 1 ],
									"hidden" : 1,
									"order" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
									"source" : [ "obj-29", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 4 ],
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 4 ],
									"source" : [ "obj-32", 0 ]
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
									"destination" : [ "obj-57", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"order" : 1,
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"order" : 0,
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"hidden" : 1,
									"order" : 1,
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"hidden" : 1,
									"order" : 0,
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-29", 0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 9.0, 149.646684925105774, 120.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p rhythm-meter-rules"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 79.0, 1149.0, 575.0 ],
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
									"fontname" : "Andale Mono",
									"id" : "obj-20",
									"linecount" : 16,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 501.0, 113.0, 642.0, 222.0 ],
									"text" : "These five rules restrict how melodic intervals relate to durations.\nSee the mel-interval section in this overview to know more.\n\nClick on the name of one of the modules to expand it and see its settings:\n\n- durations 1/8 and 3/8 can only have minor / major 2nd as melodic intervals\n\n- duration 1/4 can only have melodic intervals smaller than a tritone\n\n- duration 1/2 can only have minor / major 2nds, minor / major 3rds, 4ths and 5ths \n  as melodic intervals\n\n- duration 3/4 are always a repeated note (0 semitone)\n\n- duration 1 (or 4/4) can only have minor / major 2nds, minor / major 3rds, 4ths, 5ths,    \n  minor 6ths and octaves as melodic intervals"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 488.0, 17.0, 50.0, 22.0 ],
									"text" : "r voices"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 73.5, 17.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-2",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.r-mel-interval-one-voice.maxpat",
									"numinlets" : 4,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 14.0, 130.0, 306.0, 31.0 ],
									"varname" : "bp1249210873351",
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
									"id" : "obj-10",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.r-mel-interval-one-voice.maxpat",
									"numinlets" : 4,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 14.0, 197.0, 306.0, 31.0 ],
									"varname" : "bp1290844107819",
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
									"id" : "obj-12",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.r-mel-interval-one-voice.maxpat",
									"numinlets" : 4,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 14.0, 278.0, 306.0, 31.0 ],
									"varname" : "bp241090353251",
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
									"id" : "obj-14",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.r-mel-interval-one-voice.maxpat",
									"numinlets" : 4,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 14.0, 351.0, 306.0, 31.0 ],
									"varname" : "bp522972731855",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 142.0, 17.0, 117.0, 22.0 ],
									"text" : "loadmess collapse 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 38.0, 389.0, 342.0, 22.0 ],
									"text" : "durations 1, intervals 0 1 2 3 4 5 7 8 12, then_interval :member"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-21",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.r-mel-interval-one-voice.maxpat",
									"numinlets" : 4,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 14.0, 428.0, 306.0, 31.0 ],
									"varname" : "bp1658943256622",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 33.0, 313.0, 139.0, 22.0 ],
									"text" : "durations 3/4, intervals 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 38.0, 242.0, 325.0, 22.0 ],
									"text" : "durations 1/2, intervals 0 1 2 3 4 5 7, then_interval :member"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 37.0, 167.0, 287.0, 22.0 ],
									"text" : "durations 1/4, intervals 6, then_interval :smaller-than"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 33.0, 89.432838359696916, 408.0, 22.0 ],
									"text" : "durations 1/8 3/8, intervals 1 2, if_duration :member, then_interval :member"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-52",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 14.0, 17.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-54",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 14.0, 519.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"hidden" : 1,
									"order" : 3,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"hidden" : 1,
									"order" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"order" : 4,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"hidden" : 1,
									"order" : 2,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-54", 0 ],
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"order" : 4,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"hidden" : 1,
									"order" : 3,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"hidden" : 1,
									"order" : 2,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"order" : 1,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"hidden" : 1,
									"order" : 0,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 1 ],
									"midpoints" : [ 497.5, 192.0, 119.166666666666671, 192.0 ],
									"order" : 4,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 1 ],
									"midpoints" : [ 497.5, 273.0, 119.166666666666671, 273.0 ],
									"order" : 3,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 1 ],
									"midpoints" : [ 497.5, 342.0, 119.166666666666671, 342.0 ],
									"order" : 2,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"midpoints" : [ 497.5, 124.0, 119.166666666666671, 124.0 ],
									"order" : 1,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 1 ],
									"midpoints" : [ 497.5, 421.0, 119.166666666666671, 421.0 ],
									"order" : 0,
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 9.0, 178.293369850211548, 90.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p melodic-rules"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 195.0, 305.228571428571399, 24.0, 24.0 ]
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
					"patching_rect" : [ 9.0, 9.333333333333371, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 79.0, 572.0, 646.0 ],
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
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 308.0, 314.400007784366721, 219.0, 35.0 ],
									"text" : "[ 48 ] [ 50 ] [ 52 ] [ 53 ] [ 55 ] [ 57 ] [ 60 ] [ 62 ] [ 64 ] [ 65 ] [ 67 ] [ 69 ] [ 71 ] [ 72 ]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 328.0, 82.400007784366721, 219.0, 35.0 ],
									"text" : "[ 55 ] [ 57 ] [ 59 ] [ 60 ] [ 62 ] [ 64 ] [ 67 ] [ 69 ] [ 71 ] [ 72 ] [ 74 ] [ 76 ] [ 79 ]"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-23",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 18.0, 604.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-10",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.voice-domain.maxpat",
									"numinlets" : 3,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 18.0, 377.0, 233.0, 174.0 ],
									"varname" : "bp677969604946",
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
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 18.0, 63.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 60.583331942558289, 124.0, 54.0, 22.0 ],
									"text" : "deferlow"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 125.0, 135.400007784366721, 69.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80102
									}
,
									"text" : "bach.group"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-19",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 125.0, 95.400007784366721, 177.0, 22.0 ],
									"text" : "-1/2 1/2 3/4 1/4 3/8 1/8 1 -1/4 -1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 125.0, 32.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-96",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "cluster.voice-domain.maxpat",
									"numinlets" : 3,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 18.0, 182.0, 233.0, 174.0 ],
									"varname" : "bp1377740079771",
									"viewvisibility" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 2 ],
									"midpoints" : [ 317.5, 362.700003892183361, 241.5, 362.700003892183361 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 1 ],
									"order" : 1,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 1 ],
									"order" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 2 ],
									"midpoints" : [ 337.5, 149.200003892183361, 241.5, 149.200003892183361 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"midpoints" : [ 134.5, 77.700003892183361, 317.5, 77.700003892183361 ],
									"order" : 1,
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"midpoints" : [ 134.5, 63.0, 70.083331942558289, 63.0 ],
									"order" : 3,
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"order" : 2,
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"midpoints" : [ 134.5, 63.0, 337.5, 63.0 ],
									"order" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-96", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "MOZ-numint",
								"default" : 								{
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"fontname" : [ "Menlo Regular" ],
									"fontsize" : [ 17.0 ],
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
					"patching_rect" : [ 9.0, 74.0, 118.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p domains_2_voices"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 116.0, 279.228571428571399, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 116.0, 305.228571428571399, 73.0, 22.0 ],
					"text" : "variables $1"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 116.0, 249.228571428571399, 77.0, 22.0 ],
					"text" : "loadmess 20"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 51.0, 223.228571428571399, 83.0, 22.0 ],
					"text" : "loadmess 120"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 4,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 207.0, 253.0, 640.0, 480.0 ],
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
									"id" : "obj-6",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 103.125, 63.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 103.125, 161.0, 72.0, 22.0 ],
									"text" : "prepend set"
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
									"patching_rect" : [ 103.125, 232.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 192.125, 161.0, 109.0, 22.0 ],
									"text" : "prepend tempo set"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 192.125, 232.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 112.625, 207.0, 112.625, 207.0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"order" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"order" : 1,
									"source" : [ "obj-6", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 51.0, 249.228571428571399, 34.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p init"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 51.0, 279.228571428571399, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 51.0, 305.228571428571399, 59.0, 22.0 ],
					"text" : "tempo $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 9.0, 452.795723532131319, 106.0, 22.0 ],
					"text" : "s to_cluster_score"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-22",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "cluster.engine.maxpat",
					"numinlets" : 2,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 9.0, 339.0, 205.0, 78.0 ],
					"varname" : "bp883647061791",
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"hidden" : 1,
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"midpoints" : [ 125.5, 333.228571428571399, 18.5, 333.228571428571399 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"hidden" : 1,
					"source" : [ "obj-16", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"hidden" : 1,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"midpoints" : [ 60.5, 333.228571428571399, 18.5, 333.228571428571399 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 1 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"hidden" : 1,
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"hidden" : 1,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"hidden" : 1,
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"midpoints" : [ 148.5, 106.5, 18.5, 106.5 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 1 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-85", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-90", 1 ]
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
				"patcherrelativepath" : "../../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.-.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../../bach/patchers",
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
				"patcherrelativepath" : "../../../../../../../bach/patchers",
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
				"name" : "bach.beatbox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.beatunbox.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.belong.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.change.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.collect.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.delace.mxo",
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
				"name" : "bach.ezmidiplay.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.filter.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.filternull.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../../bach/patchers",
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
				"patcherrelativepath" : "../../../../../../../bach/patchers",
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
				"patcherrelativepath" : "../../../../../../../bach/patchers",
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
				"name" : "bach.lace.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.length.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.lookup.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.mapelem.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.maximum.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
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
				"patcherrelativepath" : "../../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.prepend.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.print.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.ratnum.mxo",
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
				"patcherrelativepath" : "../../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.replace.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../../bach/patchers",
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
				"patcherrelativepath" : "../../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.round.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../../bach/patchers",
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
				"name" : "bach.subs.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.thin.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.times.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../../../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.trans.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.tree.mxo",
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
				"patcherrelativepath" : "../../../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bpatcher-resize.js",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../../../patchers/utilities",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "cluster-eval-window-tutorial.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/help/Tutorials/PWforMax Libraries/ClusterEngine",
				"patcherrelativepath" : "../..",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.block&hide-if-null.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine/utilities",
				"patcherrelativepath" : "../../../../../../patchers/pw4m_cluster-engine/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.cluster2score.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine/utilities",
				"patcherrelativepath" : "../../../../../../patchers/pw4m_cluster-engine/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.engine.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine",
				"patcherrelativepath" : "../../../../../../patchers/pw4m_cluster-engine",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.get_doc.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine/utilities",
				"patcherrelativepath" : "../../../../../../patchers/pw4m_cluster-engine/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.iter-append-umenu.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine/utilities",
				"patcherrelativepath" : "../../../../../../patchers/pw4m_cluster-engine/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.multidomains2score.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine/utilities",
				"patcherrelativepath" : "../../../../../../patchers/pw4m_cluster-engine/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.r-canon.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine",
				"patcherrelativepath" : "../../../../../../patchers/pw4m_cluster-engine",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.r-chords.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine",
				"patcherrelativepath" : "../../../../../../patchers/pw4m_cluster-engine",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.r-mel-interval-one-voice.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine",
				"patcherrelativepath" : "../../../../../../patchers/pw4m_cluster-engine",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.r-note-meter.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine",
				"patcherrelativepath" : "../../../../../../patchers/pw4m_cluster-engine",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.r-one-engine.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine",
				"patcherrelativepath" : "../../../../../../patchers/pw4m_cluster-engine",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.rule_definition2param_umenu.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine/utilities",
				"patcherrelativepath" : "../../../../../../patchers/pw4m_cluster-engine/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.typeroute-sym_or_nums.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine/utilities",
				"patcherrelativepath" : "../../../../../../patchers/pw4m_cluster-engine/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "cluster.voice-domain.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_cluster-engine",
				"patcherrelativepath" : "../../../../../../patchers/pw4m_cluster-engine",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "help.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.expr.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../../../../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.lambda.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../../../../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.quickeval.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../../../../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.quote.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../../../../../../patchers/pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "mac_or_win.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp",
				"patcherrelativepath" : "../../../../../../patchers/pw4m_lisp",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "make_path_once.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp",
				"patcherrelativepath" : "../../../../../../patchers/pw4m_lisp",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.init-unless.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.resolution-helpfiles-moz.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.textfield.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pmcyes.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../../../../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "pw.eval-box.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp",
				"patcherrelativepath" : "../../../../../../patchers/pw4m_lisp",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.quote.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_code_generators_legacy",
				"patcherrelativepath" : "../../../../../../patchers/pw4m_lisp_code_generators_legacy",
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
		"autosave" : 0
	}

}
