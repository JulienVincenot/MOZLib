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
		"rect" : [ 34.0, 79.0, 752.0, 719.0 ],
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
		"title" : "DRAWgraph",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 518.0, 453.1875, 37.0, 20.0 ],
					"text" : "===>"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 557.0, 453.1875, 115.0, 22.0 ],
					"text" : "pitch_rules.maxhelp"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-9",
					"linecount" : 11,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 330.5, 500.0, 147.0 ],
					"text" : "1) number of notes that will constitute the resulting profile\n\n2) clear the function editor\n\n3) callback (green)\n   (see Overview)\n\n4) pitch range of the resulting profile\n\nIn order to quantify the result with a more specific harmonic content and to filter unwanted repetitions, please refer to the pitchRULES module",
					"textcolor" : [ 0.50196099281311, 0.50196099281311, 0.50196099281311, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-8",
					"linecount" : 14,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 501.0, 133.0, 260.0, 186.0 ],
					"text" : "  The break-point function editor :\n\n- To add points, simply click on \n  an empty space along the profile\n\n- To delete a point, use      \n  shift-click. \n\n- To bend the curve attribute of a    \n  line, hold the option/alt key    \n  and drag up or down\n\n  For more information on the   \n  function editor, see :",
					"textcolor" : [ 0.200000002980232, 0.200000002980232, 0.200000002980232, 1.0 ],
					"varname" : "autohelp_top_digest[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patching_rect" : [ 544.414827988813158, 319.71795654296875, 99.0, 22.0 ],
					"text" : "function.maxhelp",
					"varname" : "function.maxhelp"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 7.803809657951814,
					"hidden" : 1,
					"id" : "obj-18",
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
						"rect" : [ 0.0, 26.0, 752.0, 693.0 ],
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
						"globalpatchername" : "editing[1][1]",
						"title" : "control",
						"boxes" : [ 							{
								"box" : 								{
									"border" : 2.0,
									"id" : "obj-10",
									"linecolor" : [ 0.996078431372549, 0.0, 0.0, 1.0 ],
									"maxclass" : "live.line",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 309.0, 66.0, 81.0, 5.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 154.5, 145.0, 111.0, 22.0 ],
									"text" : "linear 0 0 1 20 2 13"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 291.0, 173.0, 273.0, 22.0 ],
									"text" : "curve 0 0 -0.5 2 5 0.5 2.5 10 -0.5 4 3 0.5 5 20 -0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 271.5, 145.0, 269.0, 22.0 ],
									"text" : "curve 0 0 0.5 2 5 -0.5 2.5 10 0.5 4 3 -0.5 5 20 0.5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 94.5, 173.0, 161.0, 22.0 ],
									"text" : "linear 0 0 2 5 2.5 10 4 3 5 20"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-20",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 27.0, 424.0, 457.0, 45.0 ],
									"text" : "The second outlet returns the message (in curve format) that would draw the profile inside the function editor. It can be used for instance to make presets or to send the profile to another module !",
									"textcolor" : [ 0.50196099281311, 0.50196099281311, 0.50196099281311, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 482.5, 424.0, 32.0, 22.0 ],
									"text" : "print"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 663.5, 177.0, 65.0, 22.0 ],
									"text" : "4400 5800"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 586.5, 177.0, 65.0, 22.0 ],
									"text" : "6000 7200"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 586.5, 149.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 0,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-11",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "chord_view.maxpat",
									"numinlets" : 2,
									"numoutlets" : 1,
									"offset" : [ -2.0, -1.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 9.5, 489.0, 683.0, 187.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 94.5, 145.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 9.5, 169.0, 77.0, 22.0 ],
									"text" : "loadmess 40"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 9.5, 198.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-9",
									"linecount" : 9,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 13.0, 12.5, 632.0, 122.0 ],
									"text" : "The following parameters can be controlled from the outside of the module :\n- number of notes (integer)\n\n- a set of coordinates — integers or floats in any range — to draw inside the function editor\n  If preceded by 'linear', the message is made of a succession of X and Y pairs.\n  If preceded by 'curve', the message is made of a succession X Y and curve factor values\n  (0 to 1.0 gives an exponential curve / -1.0 to 0 makes it logarithmic)\n\n- pitch range as a couple of midicents",
									"textcolor" : [ 0.50196099281311, 0.50196099281311, 0.50196099281311, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-23",
									"lockeddragscroll" : 0,
									"maxclass" : "bpatcher",
									"name" : "draw_graph.maxpat",
									"numinlets" : 3,
									"numoutlets" : 2,
									"offset" : [ -23.0, -28.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 9.5, 226.0, 492.0, 191.0 ],
									"viewvisibility" : 1
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 1 ],
									"midpoints" : [ 281.0, 196.0, 255.5, 196.0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 2 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 2 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 1 ],
									"midpoints" : [ 104.0, 210.0, 255.5, 210.0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-23", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 1 ],
									"midpoints" : [ 300.5, 210.0, 255.5, 210.0 ],
									"source" : [ "obj-4", 0 ]
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
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 1 ],
									"midpoints" : [ 164.0, 201.0, 255.5, 201.0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "MOZ-numint",
								"default" : 								{
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"fontsize" : [ 16.95833875454338 ],
									"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
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
									"fontface" : [ 2 ],
									"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"fontname" : [ "Menlo Regular" ],
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
										"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
										"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.5,
										"autogradient" : 0.0
									}

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
									"fontsize" : [ 13.0 ],
									"textcolor_inverse" : [ 0.92549, 0.364706, 0.341176, 1.0 ],
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
									"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ],
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
										"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}

								}
,
								"parentstyle" : "",
								"multi" : 0
							}
 ]
					}
,
					"patching_rect" : [ 634.0, 434.1875, 38.0, 17.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "editing[1][1]",
						"tags" : ""
					}
,
					"text" : "p control"
				}

			}
, 			{
				"box" : 				{
					"args" : [ "moz_four.png" ],
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-17",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "moz_helpnum.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 2.0, 3.0 ],
					"patching_rect" : [ 471.414827988813158, 180.28204345703125, 25.170344022373683, 25.71795654296875 ],
					"viewvisibility" : 1
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
					"patching_rect" : [ 429.829655977626317, 105.28204345703125, 25.170344022373683, 25.71795654296875 ],
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
					"id" : "obj-15",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "moz_helpnum.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 2.0, 3.0 ],
					"patching_rect" : [ 384.829655977626317, 105.28204345703125, 25.170344022373683, 25.71795654296875 ],
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
					"id" : "obj-14",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "moz_helpnum.maxpat",
					"numinlets" : 0,
					"numoutlets" : 0,
					"offset" : [ 2.0, 3.0 ],
					"patching_rect" : [ 150.829655977626317, 105.28204345703125, 25.170344022373683, 25.71795654296875 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 36.0,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 125.0, 6.6875, 117.0, 47.0 ],
					"text" : "graph",
					"textcolor" : [ 0.200000002980232, 0.200000002980232, 0.200000002980232, 1.0 ],
					"varname" : "autohelp_top_digest[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 48.0,
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 9.6875, 124.0, 60.0 ],
					"text" : "DRAW",
					"textcolor" : [ 0.200000002980232, 0.200000002980232, 0.200000002980232, 1.0 ],
					"varname" : "autohelp_top_digest[3]"
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
					"maxclass" : "bpatcher",
					"name" : "draw_graph.maxpat",
					"numinlets" : 3,
					"numoutlets" : 2,
					"offset" : [ -24.0, -27.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 9.0, 133.0, 491.0, 192.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 0,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-7",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "chord_view.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ -2.0, -1.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 9.0, 488.1875, 683.0, 187.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-5",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 12.0, 67.6875, 505.0, 32.0 ],
					"text" : "This module is a variant of DRAWnotes. \nIt returns a melodic profile following the shape of a break-point function.",
					"textcolor" : [ 0.200000002980232, 0.200000002980232, 0.200000002980232, 1.0 ],
					"varname" : "autohelp_top_digest"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-1::obj-2::obj-10" : [ "live.gain~[1]", "live.gain~", 0 ],
			"obj-1::obj-13::obj-10" : [ "live.gain~", "live.gain~", 0 ],
			"parameterbanks" : 			{

			}

		}
,
		"dependency_cache" : [ 			{
				"name" : "chord_view.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/moz_modules",
				"patcherrelativepath" : "../../patchers/moz_modules",
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
				"name" : "load_MOZ_helpfile.maxpat",
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
				"name" : "bach.repeat.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.postpend.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
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
				"name" : "bach.split.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
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
				"name" : "draw_graph.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/moz_modules",
				"patcherrelativepath" : "../../patchers/moz_modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.interp.maxpat",
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
				"name" : "moz_four.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "function.maxhelp",
				"bootpath" : "C74:/help/max",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "helpname.js",
				"bootpath" : "C74:/help/resources",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "helpdetails.js",
				"bootpath" : "C74:/help/resources",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "helpstarter.js",
				"bootpath" : "C74:/help/resources",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "pitch_rules.maxhelp",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/help/Transformers",
				"patcherrelativepath" : "../Transformers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "scheme-hex.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "harmonic_fields.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/moz_modules",
				"patcherrelativepath" : "../../patchers/moz_modules",
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
				"name" : "bach.times.maxpat",
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
				"name" : "draw_notes.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/moz_modules",
				"patcherrelativepath" : "../../patchers/moz_modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pitch_rules.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/moz_modules",
				"patcherrelativepath" : "../../patchers/moz_modules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.quote.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/lisp_code_generators_legacy",
				"patcherrelativepath" : "../../patchers/lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jbs.allowed-pitch-rule.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/lisp_code_generators_legacy/rules",
				"patcherrelativepath" : "../../patchers/lisp_code_generators_legacy/rules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jbs.member-rule.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/lisp_code_generators_legacy/rules",
				"patcherrelativepath" : "../../patchers/lisp_code_generators_legacy/rules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jbs.no-repetition-rule.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/lisp_code_generators_legacy/rules",
				"patcherrelativepath" : "../../patchers/lisp_code_generators_legacy/rules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jbs.no-local-repetition-rule.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/lisp_code_generators_legacy/rules",
				"patcherrelativepath" : "../../patchers/lisp_code_generators_legacy/rules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.eval-box.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/lisp_code_generators_legacy",
				"patcherrelativepath" : "../../patchers/lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "make_path_once.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/lisp_code_generators_legacy",
				"patcherrelativepath" : "../../patchers/lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.length.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/lisp_code_generators_legacy",
				"patcherrelativepath" : "../../patchers/lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.create-list.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/lisp_code_generators_legacy",
				"patcherrelativepath" : "../../patchers/lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.arithm-ser.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/lisp_code_generators_legacy",
				"patcherrelativepath" : "../../patchers/lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.pmc.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/lisp_code_generators_legacy",
				"patcherrelativepath" : "../../patchers/lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.backquote.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/lisp_code_generators_legacy",
				"patcherrelativepath" : "../../patchers/lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.make-rule.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/lisp_code_generators_legacy",
				"patcherrelativepath" : "../../patchers/lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.?if.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/lisp_code_generators_legacy",
				"patcherrelativepath" : "../../patchers/lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.comma-at.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/lisp_code_generators_legacy",
				"patcherrelativepath" : "../../patchers/lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.make-?1-from-to.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/lisp_code_generators_legacy",
				"patcherrelativepath" : "../../patchers/lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jbs.mk-fix-profile-rule.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/lisp_code_generators_legacy/rules",
				"patcherrelativepath" : "../../patchers/lisp_code_generators_legacy/rules",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.collect-heuristic-rules.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/lisp_code_generators_legacy",
				"patcherrelativepath" : "../../patchers/lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.collect-true-false-rules.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/lisp_code_generators_legacy",
				"patcherrelativepath" : "../../patchers/lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jbs.no-spaced-repetition-rule.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/lisp_code_generators_legacy/rules",
				"patcherrelativepath" : "../../patchers/lisp_code_generators_legacy/rules",
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
				"name" : "bach.abs.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.-.maxpat",
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
				"name" : "bach.remainder.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "stop_process.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "moz_six.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "moz_five.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "bach.roll.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.flat.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.expr.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.portal.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.args.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.playkeys.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.collect.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.reg.mxo",
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
				"name" : "bach.length.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.slice.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.pad.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.wrap.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.eq.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.nth.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.arithmser.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.sort.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.group.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.minmax.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.mapelem.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.pick.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.neq.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.resample.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.append.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.write.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "shell.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.read.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "MOZ-numint",
				"default" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"fontsize" : [ 16.95833875454338 ],
					"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
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
				"name" : "orjan style",
				"default" : 				{
					"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ],
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
						"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}

				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
