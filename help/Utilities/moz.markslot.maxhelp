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
		"rect" : [ 34.0, 79.0, 932.0, 510.0 ],
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
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 128.0, 207.866815567016602, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-1",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 749.0, 15.5, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.0,
					"hidden" : 1,
					"id" : "obj-4",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 853.0, 70.1875, 37.0, 17.0 ],
					"text" : "932 510"
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
					"patching_rect" : [ 749.0, 44.1875, 141.0, 17.0 ],
					"text" : "moz.resolution-helpfiles-moz 932 510"
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
					"patching_rect" : [ 749.0, 67.333070721870399, 48.0, 17.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-15",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 534.0, 469.366813882392876, 151.0, 32.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.theme_textcolor"
						}

					}
,
					"text" : "bang if markers have been changed manually",
					"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ],
					"varname" : "autohelp_top_digest[8]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 543.0, 430.866813882392876, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-12",
					"linecount" : 6,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 576.5, 289.0, 346.0, 83.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.theme_textcolor"
						}

					}
,
					"text" : "Note that marker values correspond to the rank\nof values in the actual profile, which is also \ntheir X coordinate. This is why markers will always\n'snap' to the closest point in the profile.\nIf markers exceed the total length of the profile, they will be cropped automatically.",
					"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ],
					"varname" : "autohelp_top_digest[7]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-10",
					"linecount" : 3,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 582.5, 159.476188882392876, 254.0, 45.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.theme_textcolor"
						}

					}
,
					"text" : "Markers can be added via message,\nor just like with a regular bach.roll\nwith the shortcut alt+shift+click.",
					"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ],
					"varname" : "autohelp_top_digest[5]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-9",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 146.366813882392876, 300.0, 58.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.theme_textcolor"
						}

					}
,
					"text" : "First you need to enter the profile itself \n(shown in red), by providing a flat list \nof numbers. Internally, the module will lay\nout those points regularly along the X axis.",
					"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ],
					"varname" : "autohelp_top_digest[4]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-8",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 369.5, 146.476188882392876, 187.0, 58.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.theme_textcolor"
						}

					}
,
					"text" : "If you want to annotate\nmore complex shapes you\nwill need to resample them,\nas show right here.",
					"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ],
					"varname" : "autohelp_top_digest[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 128.0, 237.866813882392876, 75.0, 22.0 ],
					"text" : "4 3 2 1 0 1 2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 18.278050682261213,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 42.0, 234.866813882392876, 31.0, 28.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.theme_textcolor"
						}

					}
,
					"text" : "=",
					"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ],
					"varname" : "autohelp_top_digest[1]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-5",
					"linecount" : 5,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 8.0, 60.866813882392876, 677.0, 71.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.theme_textcolor"
						}

					}
,
					"text" : "A complement to GRAPHview, this module allows to add some markers synchronized to a single track\nBPF profile (a.k.a. bach.slot). The marker layer, always in front, is actually a hidden bach.roll.\n\nIt can be useful when you need to quickly obtain certain 'time proportions' within a curve\nthat you can obviously see but may have trouble to turn into numbers.",
					"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ],
					"varname" : "autohelp_top_digest"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 36.0,
					"id" : "obj-32",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 119.0, 3.6875, 95.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.theme_textcolor"
						}

					}
,
					"text" : "slot",
					"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ],
					"varname" : "autohelp_top_digest[6]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 48.0,
					"id" : "obj-11",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 5.0, 7.6875, 153.0, 60.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.theme_textcolor"
						}

					}
,
					"text" : "MARK",
					"textcolor" : [ 0.129412, 0.129412, 0.129412, 1.0 ],
					"varname" : "autohelp_top_digest[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-78",
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
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 140.5, 306.0, 69.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.pick 2"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-7",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 140.5, 341.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 140.5, 269.0, 105.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80300
									}
,
									"text" : "bach.keys sample"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-42",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 113.0, 94.0, 23.0 ],
									"text" : "sample 1 1000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 50.0, 77.0, 118.0, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"bwcompatibility" : 80300,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-76",
									"maxclass" : "bach.slot",
									"numinlets" : 1,
									"numoutlets" : 3,
									"out" : "nnn",
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 50.0, 159.0, 200.0, 100.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"versionnumber" : 80900,
									"whole_uislot_data_0000000000" : [ "slot", "[", "slotinfo", "[", 1, "[", "name", "velocity envelope", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075052544, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1075340902, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 2, "[", "name", "slot function", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 3, "[", "name", "slot intlist", "]", "[", "type", "intlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 4, "[", "name", "slot floatlist", "]", "[", "type", "floatlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 5, "[", "name", "slot int", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 6, "[", "name", "slot float", "]", "[", "type", "float", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 7, "[", "name", "slot text", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 8, "[", "name", "slot filelist", "]", "[", "type", "filelist", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 9, "[", "name", "slot spat", "]", "[", "type", "spat", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076101120, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 10, "[", "name", "slot llll", "]", "[", "type", "llll", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 11, "[", "name", "slot 11", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 12, "[", "name", "slot 12", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 13, "[", "name", "slot 13", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 14, "[", "name", "slot 14", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 15, "[", "name", "slot 15", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 16, "[", "name", "slot 16", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 17, "[", "name", "slot 17", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 18, "[", "name", "slot 18", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 19, "[", "name", "slot 19", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 20, "[", "name", "dynamics", "]", "[", "type", "dynamics", "]", "[", "key", "d", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 21, "[", "name", "lyrics", "]", "[", "type", "text", "]", "[", "key", "l", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 22, "[", "name", "articulations", "]", "[", "type", "articulations", "]", "[", "key", "a", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 23, "[", "name", "notehead", "]", "[", "type", "notehead", "]", "[", "key", "h", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 24, "[", "name", "annotation", "]", "[", "type", "text", "]", "[", "key", "t", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 25, "[", "name", "slot 25", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 26, "[", "name", "slot 26", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 27, "[", "name", "slot 27", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 28, "[", "name", "slot 28", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 29, "[", "name", "slot 29", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 30, "[", "name", "slot 30", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "]", "[", "slots", "[", 1, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1073217536, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074266112, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1074161254, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1073741824, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1074318540, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074790400, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074921472, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074266112, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1075340902, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075052544, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "]" ],
									"whole_uislot_data_count" : [ 1 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 149.0, 113.0, 105.0, 22.0 ],
									"text" : "moz.ezbpf2slot-xy"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-77",
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
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-73", 0 ],
									"source" : [ "obj-1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-76", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 343.5, 237.866813882392876, 121.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p xy-profile-resample"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 586.0, 210.476188882392876, 75.0, 22.0 ],
					"text" : "0 1 2 3 4 5 6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 65.0, 237.866813882392876, 50.0, 22.0 ],
					"text" : "dump"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 343.5, 179.476190567016602, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 343.5, 210.476188882392876, 117.0, 22.0 ],
					"reg_data_0000000000" : [ "[", 0, 1, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1073217536, 3, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1074161254, 2, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3435973837, 1074318540, 4, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074921472, 3, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 1717986918, 1075340902, 5, "]" ],
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
					"id" : "obj-44",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 218.0, 206.866815567016602, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 218.0, 237.866813882392876, 117.0, 22.0 ],
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
					"id" : "obj-61",
					"linecount" : 483,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 128.0, 474.366813882392876, 129.0, 6484.0 ],
					"text" : "0.043182 0.043182 0.086584 0.086584 0.021386 0.018571 0.018571 0.09387 0.09387 0.116287 0.079686 0.079686 0.077945 0.077945 0.082969 0.096371 0.091828 0.077425 0.077425 0.092891 0.092891 0.131385 0.117223 0.107055 0.107055 0.092683 0.082563 0.073858 0.066875 0.066875 0.080988 0.094138 0.094138 0.117043 0.132877 0.154978 0.155482 0.155482 0.166414 0.195431 0.195431 0.197412 0.197412 0.220445 0.255025 0.255025 0.334811 0.334811 0.497507 0.579705 0.579705 0.633871 0.633871 0.6412 0.544149 0.467108 0.311402 0.311402 0.253241 0.190767 0.190767 0.153885 0.152371 0.141092 0.107693 0.107693 0.070673 0.083661 0.104072 0.10231 0.10231 0.066857 0.041145 0.041145 0.075543 0.075543 0.055836 0.037337 0.037337 0.053619 0.064058 0.072288 0.073642 0.073642 0.061201 0.058797 0.058797 0.063103 0.063103 0.05828 0.05828 0.062552 0.059035 0.059035 0.052696 0.039474 0.039474 0.039474 0.04427 0.04427 0.051074 0.048275 0.048275 0.044603 0.044603 0.055993 0.060878 0.060878 0.063192 0.063192 0.063939 0.071223 0.073912 0.049226 0.049226 0.043291 0.042068 0.042068 0.048398 0.046554 0.037404 0.032134 0.032134 0.063144 0.058448 0.058076 0.051476 0.051476 0.070001 0.075818 0.075818 0.064193 0.064193 0.076774 0.079932 0.079932 0.085772 0.085772 0.084179 0.095406 0.095406 0.085896 0.084045 0.084045 0.082434 0.082434 0.074585 0.063848 0.063848 0.075097 0.075097 0.081342 0.07364 0.073133 0.078898 0.079326 0.081511 0.073748 0.068371 0.067491 0.076023 0.077866 0.085322 0.085322 0.077145 0.071677 0.070578 0.067241 0.067241 0.057926 0.054877 0.057298 0.080625 0.080625 0.07959 0.072825 0.072825 0.064599 0.064599 0.06447 0.063748 0.063748 0.064537 0.072241 0.072241 0.062476 0.062476 0.066755 0.070171 0.070171 0.067732 0.067732 0.064642 0.061177 0.061177 0.069554 0.069554 0.079223 0.083695 0.083695 0.09735 0.09735 0.115509 0.123522 0.123522 0.152262 0.178081 0.178081 0.174669 0.174669 0.309569 0.401999 0.438495 0.566181 0.566181 0.700926 0.811318 0.882751 0.985114 0.985114 0.998504 1. 1. 0.830108 0.706745 0.711051 0.716918 0.716918 0.665097 0.630904 0.585578 0.482524 0.482524 0.410843 0.445748 0.445748 0.752762 0.752762 0.674935 0.556186 0.556186 0.549388 0.500218 0.500218 0.383231 0.383231 0.291792 0.225454 0.225454 0.225454 0.158565 0.158565 0.19439 0.271657 0.271657 0.271657 0.340677 0.340677 0.346552 0.326974 0.326974 0.315641 0.315641 0.337997 0.548394 0.548394 0.829867 0.829867 0.829867 0.978198 0.994767 0.994767 0.839905 0.839905 0.679417 0.504417 0.504417 0.275652 0.094017 0.043539 0.050414 0.050414 0.067969 0.029564 0.029564 0.038546 0.038546 0.068503 0.041253 0.041253 0.019882 0.019882 0.077855 0.056811 0.056811 0.04361 0.066494 0.066494 0.069557 0.069557 0.052986 0.053924 0.053924 0.080575 0.080575 0.070121 0.0658 0.0658 0.068434 0.068434 0.060975 0.061581 0.060379 0.048394 0.048394 0.053073 0.067137 0.06348 0.0581 0.068099 0.086809 0.082265 0.082265 0.059617 0.066441 0.07276 0.07276 0.069319 0.059674 0.07033 0.07033 0.07708 0.074636 0.074636 0.055698 0.055698 0.07057 0.087108 0.087108 0.07849 0.063042 0.06624 0.06624 0.074679 0.074679 0.064618 0.064618 0.066979 0.074805 0.074805 0.068885 0.068885 0.066761 0.07272 0.07272 0.067398 0.059365 0.057598 0.065724 0.064414 0.063584 0.067587 0.065377 0.068194 0.068194 0.068495 0.069612 0.070196 0.064074 0.064074 0.060192 0.078079 0.08227 0.072545 0.072545 0.071444 0.091096 0.091096 0.093364 0.087451 0.087048 0.085382 0.085382 0.08452 0.082352 0.082352 0.078298 0.078298 0.083268 0.080452 0.080452 0.085061 0.085061 0.1013 0.099502 0.099502 0.099021 0.099021 0.104064 0.105066 0.105066 0.10596 0.112087 0.115104 0.11398 0.11398 0.105504 0.098267 0.094164 0.09622 0.09622 0.099514 0.095627 0.098101 0.111239 0.111239 0.133633 0.170971 0.170971 0.196756 0.196756 0.235389 0.24199 0.24199 0.311501 0.73458 0.865523 0.829756 0.829756 0.956518 0.98918 0.98918 0.207398 0.207398 0.1557 0.164816 0.164816 0.129341 0.129341 0.14883 0.118906 0.118906 0.09185 0.069796 0.069796 0.041303 0.041303 0.027215 0.018157 0.018157 0.016203 0.016203 0.024284 0.033211 0.033211 0.03877 0.03877 0.043412 0.04541 0.049286 0.081023 0.081023 0.090189 0.06582 0.06582 0.07201 0.072861 0.068077 0.052009 0.052009 0.052009 0.026688 0.026688 0.048398 0.080774 0.080774 0.142176 0.142176 0.166394 0.30043 0.30043 0.524414 0.877837 0.917177 0.9306 0.9306 0.982503 0.995877 0.995877 0.319015 0.319015 0.387421 0.295682 0.295682 0.112986 0.112199 0.122017 0.043563 0.043563 0.021398 0.056019 0.056019 0.042881 0.042881 0.025363 0.025363 0.025363 0.032432 0.046713 0.046713 0.081003 0.081003 0.05667 0.050646 0.072325 0.084559 0.084559 0.049449 0.040589 0.040589 0.064384 0.039292 0.044236 0.037162 0.037162 0.057842 0.063034 0.062835 0.063852 0.063852 0.074527 0.075125 0.075125 0.060109 0.060109 0.078789 0.07901 0.07901 0.07333 0.073925 0.077945 0.07813 0.07813 0.075898 0.068356 0.067212 0.077866 0.077866 0.074411 0.074657 0.074657 0.073863 0.073863 0.065122 0.060053 0.060053 0.054657 0.054657 0.079655 0.08157 0.08157 0.07228 0.07212 0.07212 0.07212 0.073791 0.073791 0.072037 0.072037 0.060899 0.058305 0.056773 0.049681 0.049681 0.053393 0.060006 0.060006 0.0659 0.0659 0.073796 0.080984 0.080984 0.084391 0.080441 0.079478 0.092509 0.092509 0.079032 0.059603 0.059603 0.059471 0.059471 0.061945 0.057728 0.057728 0.060652 0.066595 0.066595 0.083627 0.083627 0.091085 0.10012 0.10012 0.097688 0.103853 0.107841 0.097192 0.097192 0.091569 0.084828 0.084828 0.068688 0.068688 0.052723 0.061109 0.061109 0.05822 0.05822 0.059362 0.067334 0.069403 0.074883 0.074883 0.073155 0.078753 0.078753 0.086004 0.07873 0.071632 0.067939 0.067939 0.071662 0.079298 0.079298 0.093803 0.096791 0.105587 0.108767 0.108767 0.110944 0.111026 0.114027 0.118737 0.118737 0.121638 0.136347 0.136347 0.154094 0.154094 0.177305 0.191427 0.191427 0.222281 0.235596 0.264008 0.287079 0.287079 0.29984 0.313635 0.311364 0.303367 0.303367 0.274168 0.23502 0.23502 0.161875 0.161875 0.12613 0.069208 0.069208 0.052439 0.052439 0.031971 0.061581 0.061581 0.101385 0.089376 0.065847 0.035979 0.051708 0.054576 0.014683 0.004455 0. 0. 0.013261 0.063873 0.068749 0.063035 0.063035 0.052487 0.080265 0.09237 0.098447 0.098447 0.138916 0.188456 0.188456 0.1826 0.1826 0.198489 0.233401 0.233401 0.188078 0.156814 0.153941 0.157757 0.157757 0.141244 0.127306 0.127306 0.120342 0.120342 0.105665 0.095958 0.093241 0.118936 0.133846 0.133846 0.139467 0.139467 0.175324 0.17206 0.17206 0.169608 0.169608 0.159712 0.1508 0.137039 0.131811 0.131811 0.126497 0.117001 0.101754 0.082294 0.073722 0.066584 0.054075 0.054075 0.032455 0.027672 0.02125 0.02125 0.015239 0.015239 0.022884 0.022884 0.026501 0.025193 0.025193 0.03768 0.047586 0.047586 0.037045 0.037045 0.037453 0.046064 0.046064 0.052873 0.052873 0.036129 0.055556 0.055556 0.053663 0.053663 0.049451 0.051891 0.052847 0.05055 0.049377 0.049377 0.05608 0.05608 0.053713 0.049151 0.044092 0.052145 0.052145 0.055919 0.053885 0.053885 0.047457 0.047457 0.047061 0.056769 0.056769 0.058927 0.050649 0.041928 0.050326 0.050326 0.05142 0.047919 0.047919 0.055993 0.055993 0.062095 0.060141 0.060141 0.051864 0.051864 0.055744 0.062701 0.062701 0.054 0.054634 0.0555 0.05763 0.05763 0.058115 0.056995 0.056995 0.054023 0.05708 0.05708 0.052336 0.052336 0.034246 0.039753 0.047279 0.051859 0.051859 0.053947 0.041084 0.044808 0.061516 0.061516 0.065252 0.067921 0.067921 0.068154 0.068154 0.073202 0.069148 0.069148 0.07573 0.074725 0.079571 0.077461 0.077461 0.069178 0.071824 0.071543 0.064534 0.064534 0.045453 0.057885 0.057885 0.08084 0.08084 0.064446 0.074242 0.074242 0.078196 0.078196 0.065068 0.066213 0.071107 0.081937 0.081937 0.084665 0.084665 0.076883 0.078428 0.074036 0.074036 0.081616 0.063283 0.062055 0.075708 0.075708 0.074893 0.065866 0.065866 0.074193 0.076398 0.079612 0.083645 0.083645 0.070143 0.066971 0.063834 0.063314 0.063314 0.063323 0.067909 0.067909 0.06986 0.06986 0.087013 0.091778 0.091778 0.083977 0.083977 0.076095 0.060113 0.060113 0.063363 0.063363 0.060438 0.061139 0.061139 0.06513 0.063072 0.063072 0.063072 0.063072 0.069735 0.069609 0.069609 0.071736 0.071736 0.081398 0.083576 0.083576 0.084429 0.084429 0.077749 0.069101 0.071806 0.065224 0.065224 0.065493 0.062142 0.062142 0.057324 0.057324 0.056449 0.064816 0.064816 0.066952 0.066992 0.068155 0.06816 0.06816 0.070591 0.06862 0.06862 0.063022 0.063022 0.065565 0.065565 0.065565 0.069544 0.069544 0.065658 0.070631 0.070631 0.069434 0.069363 0.068388 0.073532 0.073532 0.069847 0.070366 0.070366 0.065108 0.065108 0.06255 0.067866 0.067866 0.067866 0.068658 0.068658 0.062942 0.062942 0.067466 0.075074"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 128.0, 430.866813882392876, 113.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80300
					}
,
					"text" : "bach.portal @out m"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 335.5, 474.366813882392876, 132.0, 22.0 ],
					"text" : "0 400 514 967"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 335.5, 430.866813882392876, 113.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80300
					}
,
					"text" : "bach.portal @out m"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 12.0, 237.866813882392876, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 667.0, 210.476188882392876, 35.0, 22.0 ],
					"text" : "0 4 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 707.0, 210.476188882392876, 85.0, 22.0 ],
					"text" : "0 400 500 960"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 586.0, 237.866813882392876, 99.0, 22.0 ],
					"text" : "prepend markers"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-21",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "moz.markslot.maxpat",
					"numinlets" : 1,
					"numoutlets" : 3,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 128.0, 289.0, 434.0, 130.0 ],
					"varname" : "bp242092057808",
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"hidden" : 1,
					"source" : [ "obj-1", 0 ]
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
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-21", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-21", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"midpoints" : [ 595.5, 273.933406941196438, 137.5, 273.933406941196438 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 716.5, 234.671501382392876, 595.5, 234.671501382392876 ],
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 676.5, 234.671501382392876, 595.5, 234.671501382392876 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"midpoints" : [ 21.5, 274.933406941196438, 137.5, 274.933406941196438 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 1 ],
					"midpoints" : [ 345.0, 463.116813882392876, 458.0, 463.116813882392876 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 1 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"midpoints" : [ 227.5, 273.933406941196438, 137.5, 273.933406941196438 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-78", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"midpoints" : [ 74.5, 273.933406941196438, 137.5, 273.933406941196438 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 595.5, 234.671501382392876, 595.5, 234.671501382392876 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 1 ],
					"hidden" : 1,
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"midpoints" : [ 353.0, 273.933406941196438, 137.5, 273.933406941196438 ],
					"source" : [ "obj-78", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 1 ],
					"hidden" : 1,
					"source" : [ "obj-99", 1 ]
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
				"name" : "bach.wrap.mxo",
				"type" : "iLaX"
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
				"name" : "erase.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "moz.ezbpf2slot-XY.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.ezbpf2slot.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../patchers/utilities",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "moz.markslot.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/moz_modules",
				"patcherrelativepath" : "../../patchers/moz_modules",
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
				"name" : "thru.maxpat",
				"bootpath" : "C74:/patchers/m4l/Pluggo for Live resources/patches",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
