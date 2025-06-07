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
		"rect" : [ 34.0, 79.0, 883.0, 536.0 ],
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
					"fontface" : 1,
					"fontname" : "Menlo Bold",
					"id" : "obj-85",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 412.0, 351.0, 17.0, 34.0 ],
					"text" : "|\nv",
					"textcolor" : [ 0.952941176470588, 0.564705882352941, 0.098039215686275, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-28",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 97.0, 47.202096939086914, 40.0, 22.0 ],
					"text" : "active"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
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
									"id" : "obj-80",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 166.641161504104502, 89.0, 22.0 ],
									"text" : "moz.ezbpf2slot"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 241.9375, 105.541015625, 54.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80105
									}
,
									"text" : "bach.flat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-51",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 241.9375, 133.541015625, 65.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80105
									}
,
									"text" : "bach.nth 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 121.541015625, 165.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80105
									}
,
									"text" : "bach.mapelem @maxdepth 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-81",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 39.999999624999987, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-82",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 248.641174624999962, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-50", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 1 ],
									"source" : [ "obj-51", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-51", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 448.5, 155.0, 97.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p all-firsts-to-slot"
				}

			}
, 			{
				"box" : 				{
					"bwcompatibility" : 80105,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-71",
					"maxclass" : "bach.slot",
					"numinlets" : 1,
					"numoutlets" : 3,
					"out" : "nn",
					"outlettype" : [ "", "", "bang" ],
					"patching_rect" : [ 406.0, 436.0, 123.0, 76.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"versionnumber" : 80105,
					"whole_uislot_data_0000000000" : [ "slot", "[", "slotinfo", "[", 1, "[", "name", "velocity envelope", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078886400, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079099392, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076101120, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 2, "[", "name", "slot function", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 3, "[", "name", "slot intlist", "]", "[", "type", "intlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 4, "[", "name", "slot floatlist", "]", "[", "type", "floatlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 5, "[", "name", "slot int", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 6, "[", "name", "slot float", "]", "[", "type", "float", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 7, "[", "name", "slot text", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 8, "[", "name", "slot filelist", "]", "[", "type", "filelist", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 9, "[", "name", "slot spat", "]", "[", "type", "spat", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076101120, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 10, "[", "name", "slot llll", "]", "[", "type", "llll", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 11, "[", "name", "slot 11", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 12, "[", "name", "slot 12", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 13, "[", "name", "slot 13", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 14, "[", "name", "slot 14", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 15, "[", "name", "slot 15", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 16, "[", "name", "slot 16", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 17, "[", "name", "slot 17", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 18, "[", "name", "slot 18", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 19, "[", "name", "slot 19", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 20, "[", "name", "dynamics", "]", "[", "type", "dynamics", "]", "[", "key", "d", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 21, "[", "name", "lyrics", "]", "[", "type", "text", "]", "[", "key", "l", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 22, "[", "name", "articulations", "]", "[", "type", "articulations", "]", "[", "key", "a", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 23, "[", "name", "notehead", "]", "[", "type", "notehead", "]", "[", "key", "h", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 24, "[", "name", "annotation", "]", "[", "type", "text", "]", "[", "key", "t", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 25, "[", "name", "slot 25", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 26, "[", "name", "slot 26", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 27, "[", "name", "slot 27", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 28, "[", "name", "slot 28", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 29, "[", "name", "slot 29", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 30, "[", "name", "slot 30", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "]", "[", "slots", "[", 1, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078886400, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1073741824, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079083008, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074266112, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079017472, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074790400, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075052544, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079017472, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075314688, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079017472, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075576832, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079001088, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075838976, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079017472, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075970048, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079099392, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076101120, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078886400, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "]" ],
					"whole_uislot_data_count" : [ 1 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 335.375, 281.0, 29.5, 22.0 ],
					"text" : "10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 303.875, 281.0, 29.5, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 303.875, 249.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "int" ],
					"patching_rect" : [ 40.625, 270.899854120895498, 29.5, 22.0 ],
					"text" : "t b i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 173.0, 255.0, 38.0, 22.0 ],
					"text" : "int 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 127.0, 143.0, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 173.0, 84.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 173.0, 51.837433879104537, 77.0, 22.0 ],
					"text" : "loadmess 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 255.375, 122.0, 82.0, 20.0 ],
					"text" : "<=== try this !"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-45",
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 178.262711864406697, 153.0, 22.0 ],
									"text" : "bach.prepend curve @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 150.262711864406697, 54.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80105
									}
,
									"text" : "bach.flat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 50.0, 125.0, 73.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80105
									}
,
									"text" : "bach.keys 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 50.0, 100.0, 91.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80105
									}
,
									"text" : "bach.keys slots"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-43",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 40.000000864406701, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-44",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 260.262711864406697, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-43", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 214.0, 213.0, 53.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p format"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 214.0, 122.0, 39.0, 22.0 ],
					"text" : "dump"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "dump" ],
					"patching_rect" : [ 306.625, 213.0, 45.0, 22.0 ],
					"text" : "t dump"
				}

			}
, 			{
				"box" : 				{
					"bwcompatibility" : 80105,
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-27",
					"maxclass" : "bach.slot",
					"numinlets" : 1,
					"numoutlets" : 3,
					"out" : "nn",
					"outlettype" : [ "", "", "bang" ],
					"patching_rect" : [ 214.0, 155.0, 111.625, 51.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
					"versionnumber" : 80105,
					"whole_uislot_data_0000000000" : [ "slot", "[", "slotinfo", "[", 1, "[", "name", "velocity envelope", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 2, "[", "name", "slot function", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 3, "[", "name", "slot intlist", "]", "[", "type", "intlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 4, "[", "name", "slot floatlist", "]", "[", "type", "floatlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 5, "[", "name", "slot int", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 6, "[", "name", "slot float", "]", "[", "type", "float", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 7, "[", "name", "slot text", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 8, "[", "name", "slot filelist", "]", "[", "type", "filelist", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 9, "[", "name", "slot spat", "]", "[", "type", "spat", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076101120, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 10, "[", "name", "slot llll", "]", "[", "type", "llll", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 11, "[", "name", "slot 11", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 12, "[", "name", "slot 12", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 13, "[", "name", "slot 13", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 14, "[", "name", "slot 14", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 15, "[", "name", "slot 15", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 16, "[", "name", "slot 16", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 17, "[", "name", "slot 17", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 18, "[", "name", "slot 18", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 19, "[", "name", "slot 19", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 20, "[", "name", "dynamics", "]", "[", "type", "dynamics", "]", "[", "key", "d", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 21, "[", "name", "lyrics", "]", "[", "type", "text", "]", "[", "key", "l", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 22, "[", "name", "articulations", "]", "[", "type", "articulations", "]", "[", "key", "a", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 23, "[", "name", "notehead", "]", "[", "type", "notehead", "]", "[", "key", "h", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 24, "[", "name", "annotation", "]", "[", "type", "text", "]", "[", "key", "t", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 25, "[", "name", "slot 25", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 26, "[", "name", "slot 26", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 27, "[", "name", "slot 27", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 28, "[", "name", "slot 28", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 29, "[", "name", "slot 29", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 30, "[", "name", "slot 30", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "]", "[", "slots", "[", 1, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 4272242601, 1069808276, "_x_x_x_x_bach_float64_x_x_x_x_", 3269627889, 1079472043, "_x_x_x_x_bach_float64_x_x_x_x_", 3722304987, 3217939933, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 522667978, 1070890141, "_x_x_x_x_bach_float64_x_x_x_x_", 1072933767, 1078067776, "_x_x_x_x_bach_float64_x_x_x_x_", 954437178, 3218662286, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3204181951, 1071578095, "_x_x_x_x_bach_float64_x_x_x_x_", 4273646219, 1079309905, "_x_x_x_x_bach_float64_x_x_x_x_", 954437178, 1071178638, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 977161872, 1071966457, "_x_x_x_x_bach_float64_x_x_x_x_", 3025191628, 1078446097, "_x_x_x_x_bach_float64_x_x_x_x_", 2481536662, 3219384638, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 3226906646, 1072365914, "_x_x_x_x_bach_float64_x_x_x_x_", 4217867423, 1080012502, "_x_x_x_x_bach_float64_x_x_x_x_", 2958755248, 1071667973, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 1431655768, 1070945621, "]", "]", "]" ],
					"whole_uislot_data_count" : [ 1 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 16.035368734467561,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
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
						"rect" : [ 34.0, 79.0, 792.0, 687.0 ],
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
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-33",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "moz.chord_view.maxpat",
									"numinlets" : 2,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 564.0, 377.0, 151.0, 202.0 ],
									"varname" : "bp556905767840[2]",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 411.5, 65.0, 40.0, 22.0 ],
									"text" : "active"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 140.0, 136.0, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80105
									}
,
									"text" : "bach.length"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "dump", "" ],
									"patching_rect" : [ 212.875, 294.0, 51.0, 22.0 ],
									"text" : "t dump l"
								}

							}
, 							{
								"box" : 								{
									"bwcompatibility" : 80105,
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-20",
									"maxclass" : "bach.slot",
									"numinlets" : 1,
									"numoutlets" : 3,
									"out" : "nn",
									"outlettype" : [ "", "", "bang" ],
									"patching_rect" : [ 212.875, 326.0, 118.0, 53.0 ],
									"textcolor" : [ 0.0, 0.0, 0.0, 0.0 ],
									"versionnumber" : 80105,
									"whole_uislot_data_0000000000" : [ "slot", "[", "slotinfo", "[", 1, "[", "name", "velocity envelope", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085763584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086070784, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075314688, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 2, "[", "name", "slot function", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 3, "[", "name", "slot intlist", "]", "[", "type", "intlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 4, "[", "name", "slot floatlist", "]", "[", "type", "floatlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 5, "[", "name", "slot int", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 6, "[", "name", "slot float", "]", "[", "type", "float", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 7, "[", "name", "slot text", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 8, "[", "name", "slot filelist", "]", "[", "type", "filelist", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 9, "[", "name", "slot spat", "]", "[", "type", "spat", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076101120, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 10, "[", "name", "slot llll", "]", "[", "type", "llll", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 11, "[", "name", "slot 11", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 12, "[", "name", "slot 12", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 13, "[", "name", "slot 13", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 14, "[", "name", "slot 14", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 15, "[", "name", "slot 15", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 16, "[", "name", "slot 16", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 17, "[", "name", "slot 17", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 18, "[", "name", "slot 18", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 19, "[", "name", "slot 19", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 20, "[", "name", "dynamics", "]", "[", "type", "dynamics", "]", "[", "key", "d", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 21, "[", "name", "lyrics", "]", "[", "type", "text", "]", "[", "key", "l", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "]", "[", 22, "[", "name", "articulations", "]", "[", "type", "articulations", "]", "[", "key", "a", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 23, "[", "name", "notehead", "]", "[", "type", "notehead", "]", "[", "key", "h", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 24, "[", "name", "annotation", "]", "[", "type", "text", "]", "[", "key", "t", "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 25, "[", "name", "slot 25", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 26, "[", "name", "slot 26", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 27, "[", "name", "slot 27", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 28, "[", "name", "slot 28", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 29, "[", "name", "slot 29", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "[", 30, "[", "name", "slot 30", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "]", "]", "[", "slots", "[", 1, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085763584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1073741824, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086070784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074266112, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085942784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1074790400, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086019584, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075052544, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085840384, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1075314688, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085865984, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "]", "]" ],
									"whole_uislot_data_count" : [ 1 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 3,
											"revision" : 1,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 104.0, 404.0, 595.0 ],
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
													"id" : "obj-77",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 4,
													"outlettype" : [ "", "", "", "" ],
													"patching_rect" : [ 307.0, 218.0, 80.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80105
													}
,
													"text" : "bach.minmax"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-76",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 235.0, 218.0, 71.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80105
													}
,
													"text" : "bach.length"
												}

											}
, 											{
												"box" : 												{
													"code" : "[ `slotinfo [ 1 [ `domain 1 $x1 ] [ `range $x2 $x3 ] ] ] ",
													"id" : "obj-75",
													"linecount" : 3,
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 235.0, 307.0, 143.0, 49.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1,
														"versionnumber" : 80105
													}
,
													"text" : "bach.eval [ `slotinfo [ 1 [ `domain 1 $x1 ] [ `range $x2 $x3 ] ] ]"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-74",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 100.0, 317.0, 97.0, 22.0 ],
													"text" : "bach.postpend 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-70",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 375.0, 133.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80105
													}
,
													"text" : "bach.collect @inwrap 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-69",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "", "" ],
													"patching_rect" : [ 50.0, 100.0, 185.0, 22.0 ],
													"text" : "t b l l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-68",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 99.0, 274.0, 55.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80105
													}
,
													"text" : "bach.rev"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-66",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 95.0, 230.0, 57.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80105
													}
,
													"text" : "bach.join"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-65",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "" ],
													"patching_rect" : [ 95.0, 158.0, 55.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80105
													}
,
													"text" : "bach.iter"
												}

											}
, 											{
												"box" : 												{
													"code" : "`setslot [ 1 $l1 ] ",
													"id" : "obj-62",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 412.0, 145.0, 22.0 ],
													"saved_object_attributes" : 													{
														"embed" : 1,
														"versionnumber" : 80105
													}
,
													"text" : "bach.eval `setslot [ 1 $l1 ]"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-78",
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
													"id" : "obj-79",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 235.0, 523.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-79", 0 ],
													"source" : [ "obj-62", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-66", 1 ],
													"source" : [ "obj-65", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-66", 0 ],
													"source" : [ "obj-65", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-68", 0 ],
													"source" : [ "obj-66", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-74", 0 ],
													"source" : [ "obj-68", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-65", 0 ],
													"source" : [ "obj-69", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-70", 0 ],
													"source" : [ "obj-69", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-76", 0 ],
													"order" : 1,
													"source" : [ "obj-69", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-77", 0 ],
													"order" : 0,
													"source" : [ "obj-69", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 0 ],
													"source" : [ "obj-70", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-70", 1 ],
													"source" : [ "obj-74", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-79", 0 ],
													"source" : [ "obj-75", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-75", 0 ],
													"source" : [ "obj-76", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-75", 2 ],
													"source" : [ "obj-77", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-75", 1 ],
													"source" : [ "obj-77", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-69", 0 ],
													"source" : [ "obj-78", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 212.875, 268.0, 74.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p mk-ez-slot"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-16",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 212.875, 8.202096939086914, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-11",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 212.875, 34.202096939086914, 185.0, 22.0 ],
									"text" : "6000 7200 6700 7000 6300 6400"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 244.375, 34.202096939086914, 172.0, 22.0 ],
									"text" : "to_chord zoom 130, collapse 2"
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
									"name" : "moz.chord_view.maxpat",
									"numinlets" : 2,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 212.0, 62.0, 151.0, 202.0 ],
									"varname" : "bp556905767840[1]",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-83",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 3,
											"revision" : 1,
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
													"id" : "obj-37",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 163.0, 66.0, 22.0 ],
													"text" : "bach.* 100"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 55.0, 222.641174624999962, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-58",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 241.9375, 105.541015625, 54.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80105
													}
,
													"text" : "bach.flat"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-51",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 241.9375, 133.541015625, 65.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80105
													}
,
													"text" : "bach.nth 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-50",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 50.0, 121.541015625, 165.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80105
													}
,
													"text" : "bach.mapelem @maxdepth 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-81",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 39.999999624999987, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"source" : [ "obj-50", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-58", 0 ],
													"source" : [ "obj-50", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-50", 1 ],
													"source" : [ "obj-51", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-51", 0 ],
													"source" : [ "obj-58", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-50", 0 ],
													"source" : [ "obj-81", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 564.0, 348.0, 60.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p all-firsts"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 334.375, 414.0, 29.5, 22.0 ],
									"text" : "10"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 302.875, 414.0, 29.5, 22.0 ],
									"text" : "1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-43",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 302.875, 382.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-19",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 39.625, 403.899854120895498, 29.5, 22.0 ],
									"text" : "t b i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 172.0, 388.0, 31.0, 22.0 ],
									"text" : "int 6"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 96.0, 170.0, 72.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 3,
											"revision" : 1,
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
													"id" : "obj-40",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 178.262711864406697, 153.0, 22.0 ],
													"text" : "bach.prepend curve @out t"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-39",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 150.262711864406697, 54.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80105
													}
,
													"text" : "bach.flat"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 50.0, 125.0, 73.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80105
													}
,
													"text" : "bach.keys 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"patching_rect" : [ 50.0, 100.0, 91.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80105
													}
,
													"text" : "bach.keys slots"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-43",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 40.000000864406701, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-44",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 260.262711864406697, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 0 ],
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 0 ],
													"source" : [ "obj-40", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-43", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 212.875, 387.0, 53.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p format"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 411.5, 94.202096939086914, 68.0, 22.0 ],
									"text" : "key_trigger"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-52",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 411.5, 322.0, 54.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80105
									}
,
									"text" : "bach.flat"
								}

							}
, 							{
								"box" : 								{
									"bgmode" : 1,
									"border" : 1,
									"clickthrough" : 0,
									"enablehscroll" : 0,
									"enablevscroll" : 0,
									"id" : "obj-53",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "moz.nth.maxpat",
									"numinlets" : 2,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 411.0, 257.0, 120.0, 58.0 ],
									"varname" : "bp262560650131",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 71.0, 104.0, 50.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 7.843485923656835,
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 71.0, 82.854084507042273, 50.0, 17.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80105
									}
,
									"text" : "bach.length"
								}

							}
, 							{
								"box" : 								{
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
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
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
										"boxes" : [ 											{
												"box" : 												{
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
, 											{
												"box" : 												{
													"id" : "obj-69",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 976.0, 358.0, 32.0, 22.0 ],
													"text" : "gate"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-68",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1196.0, 385.0, 29.5, 22.0 ],
													"text" : "1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-66",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 1097.0, 354.5, 118.0, 22.0 ],
													"text" : "bach.filternull @out t"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-65",
													"linecount" : 2,
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1097.0, 278.5, 105.0, 35.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80103
													}
,
													"text" : "bach.value moz.safe-printed?"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-62",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "bang" ],
													"patching_rect" : [ 881.0, 198.0, 235.0, 22.0 ],
													"text" : "t b b b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-61",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 881.0, 278.5, 166.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80103
													}
,
													"text" : "bach.value moz.safe-printed?"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-59",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 976.0, 477.882797241210938, 109.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80103
													}
,
													"text" : "bach.print MOZ'Lib"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-58",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 881.0, 244.0, 29.5, 22.0 ],
													"text" : "0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-42",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 881.0, 158.5, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-31",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 35.299999999999955, 361.0, 54.0, 22.0 ],
													"text" : "deferlow"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-41",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 35.299999999999955, 332.0, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-29",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 232.0, 304.0, 64.299999999999955, 22.0 ],
													"text" : "t b l"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-50",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 460.5, 722.382795556587212, 33.0, 22.0 ],
													"text" : "-7 -6"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-47",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 3,
													"outlettype" : [ "bang", "bang", "" ],
													"patching_rect" : [ 398.5, 612.5, 44.0, 22.0 ],
													"text" : "sel 1 0"
												}

											}
, 											{
												"box" : 												{
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
, 											{
												"box" : 												{
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
, 											{
												"box" : 												{
													"id" : "obj-36",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 321.0, 42.0, 72.0, 22.0 ],
													"text" : "prepend set"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-34",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 321.0, 6.0, 29.5, 22.0 ],
													"text" : "!- 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 321.0, 134.0, 29.5, 22.0 ],
													"text" : "!- 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-27",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 280.0, 209.0, 65.0, 22.0 ],
													"text" : "route state"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-28",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 520.0, 521.882797241210938, 92.0, 22.0 ],
													"text" : "prepend hidden"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 391.0, 566.882797241210938, 92.0, 22.0 ],
													"text" : "prepend hidden"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 464.0, 527.882797241210938, 29.5, 22.0 ],
													"text" : "!- 1"
												}

											}
, 											{
												"box" : 												{
													"border" : 2.0,
													"id" : "obj-23",
													"linecolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"maxclass" : "live.line",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 621.0, 263.5, 91.0, 5.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 0.299999999999955, 2.285714285714285, 91.0, 5.0 ],
													"saved_attribute_attributes" : 													{
														"linecolor" : 														{
															"expression" : ""
														}

													}

												}

											}
, 											{
												"box" : 												{
													"border" : 2.0,
													"id" : "obj-24",
													"linecolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"maxclass" : "live.line",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 621.0, 254.0, 88.0, 5.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 0.299999999999955, 22.285714285714285, 88.0, 5.0 ],
													"saved_attribute_attributes" : 													{
														"linecolor" : 														{
															"expression" : ""
														}

													}

												}

											}
, 											{
												"box" : 												{
													"border" : 2.0,
													"id" : "obj-21",
													"linecolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"maxclass" : "live.line",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 621.0, 242.5, 91.0, 5.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 0.299999999999955, 14.285714285714285, 91.0, 5.0 ],
													"saved_attribute_attributes" : 													{
														"linecolor" : 														{
															"expression" : ""
														}

													}

												}

											}
, 											{
												"box" : 												{
													"border" : 2.0,
													"id" : "obj-22",
													"linecolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"maxclass" : "live.line",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 621.0, 233.0, 88.0, 5.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 0.299999999999955, -1.714285714285715, 88.0, 5.0 ],
													"saved_attribute_attributes" : 													{
														"linecolor" : 														{
															"expression" : ""
														}

													}

												}

											}
, 											{
												"box" : 												{
													"border" : 2.0,
													"id" : "obj-19",
													"linecolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"maxclass" : "live.line",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 621.0, 218.5, 91.0, 5.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 0.299999999999955, 26.285714285714285, 91.0, 5.0 ],
													"saved_attribute_attributes" : 													{
														"linecolor" : 														{
															"expression" : ""
														}

													}

												}

											}
, 											{
												"box" : 												{
													"border" : 2.0,
													"id" : "obj-20",
													"linecolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"maxclass" : "live.line",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 621.0, 209.0, 88.0, 5.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 0.299999999999955, 18.285714285714285, 88.0, 5.0 ],
													"saved_attribute_attributes" : 													{
														"linecolor" : 														{
															"expression" : ""
														}

													}

												}

											}
, 											{
												"box" : 												{
													"border" : 2.0,
													"id" : "obj-17",
													"linecolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"maxclass" : "live.line",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 621.0, 195.5, 91.0, 5.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 0.299999999999955, 10.285714285714285, 91.0, 5.0 ],
													"saved_attribute_attributes" : 													{
														"linecolor" : 														{
															"expression" : ""
														}

													}

												}

											}
, 											{
												"box" : 												{
													"border" : 2.0,
													"id" : "obj-18",
													"linecolor" : [ 1.0, 0.0, 0.0, 1.0 ],
													"maxclass" : "live.line",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 621.0, 186.0, 88.0, 5.0 ],
													"presentation" : 1,
													"presentation_rect" : [ 0.299999999999955, 6.285714285714285, 88.0, 5.0 ],
													"saved_attribute_attributes" : 													{
														"linecolor" : 														{
															"expression" : ""
														}

													}

												}

											}
, 											{
												"box" : 												{
													"id" : "obj-35",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 176.299999999999955, 304.0, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
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
													"saved_attribute_attributes" : 													{
														"linecolor" : 														{
															"expression" : ""
														}

													}

												}

											}
, 											{
												"box" : 												{
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
													"saved_attribute_attributes" : 													{
														"linecolor" : 														{
															"expression" : ""
														}

													}

												}

											}
, 											{
												"box" : 												{
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
													"saved_attribute_attributes" : 													{
														"linecolor" : 														{
															"expression" : ""
														}

													}

												}

											}
, 											{
												"box" : 												{
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
													"saved_attribute_attributes" : 													{
														"linecolor" : 														{
															"expression" : ""
														}

													}

												}

											}
, 											{
												"box" : 												{
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
													"saved_attribute_attributes" : 													{
														"linecolor" : 														{
															"expression" : ""
														}

													}

												}

											}
, 											{
												"box" : 												{
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
													"saved_attribute_attributes" : 													{
														"linecolor" : 														{
															"expression" : ""
														}

													}

												}

											}
, 											{
												"box" : 												{
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
													"saved_attribute_attributes" : 													{
														"linecolor" : 														{
															"expression" : ""
														}

													}

												}

											}
, 											{
												"box" : 												{
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
													"saved_attribute_attributes" : 													{
														"linecolor" : 														{
															"expression" : ""
														}

													}

												}

											}
, 											{
												"box" : 												{
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
													"saved_attribute_attributes" : 													{
														"linecolor" : 														{
															"expression" : ""
														}

													}

												}

											}
, 											{
												"box" : 												{
													"id" : "obj-32",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 498.5, 722.382795556587212, 29.5, 22.0 ],
													"text" : "0 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 466.0, 766.382795556587212, 85.0, 22.0 ],
													"text" : "prepend offset"
												}

											}
, 											{
												"box" : 												{
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
, 											{
												"box" : 												{
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
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 347.5, 701.674087524414062, 52.0, 22.0 ],
													"text" : "70 70"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 3,
													"outlettype" : [ "", "", "bang" ],
													"patching_rect" : [ 275.0, 667.882797241210938, 210.0, 22.0 ],
													"text" : "bpatcher-resize-gizmo (70 70) (55 55)"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-54",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 486.0, 604.882797241210938, 47.0, 22.0 ],
													"text" : "getsize"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-55",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 275.0, 593.882797241210938, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-56",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 486.0, 634.882797241210938, 103.0, 22.0 ],
													"saved_object_attributes" : 													{
														"filename" : "bpatcher-resize",
														"parameter_enable" : 0
													}
,
													"text" : "js bpatcher-resize"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 694.299999999999955, 370.0, 116.0, 22.0 ],
													"text" : "gate 1 0"
												}

											}
, 											{
												"box" : 												{
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
, 											{
												"box" : 												{
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
													"reg_data_0000000000" : [ "[", 72, 71, 70, 69, "]", "[", 72, 71, 70, 68, "]", "[", 72, 71, 70, 67, "]", "[", 72, 71, 70, 66, "]", "[", 72, 71, 70, 65, "]", "[", 72, 71, 70, 64, "]", "[", 72, 71, 70, 63, "]", "[", 72, 71, 70, 62, "]", "[", 72, 71, 70, 61, "]", "[", 72, 71, 70, 60, "]", "[", 72, 71, 69, 70, "]", "[", 72, 71, 69, 68, "]", "[", 72, 71, 69, 67, "]", "[", 72, 71, 69, 66, "]", "[", 72, 71, 69, 65, "]", "[", 72, 71, 69, 64, "]", "[", 72, 71, 69, 63, "]", "[", 72, 71, 69, 62, "]", "[", 72, 71, 69, 61, "]", "[", 72, 71, 69, 60, "]", "[", 72, 71, 68, 70, "]", "[", 72, 71, 68, 69, "]", "[", 72, 71, 68, 67, "]", "[", 72, 71, 68, 66, "]", "[", 72, 71, 68, 65, "]", "[", 72, 71, 68, 64, "]", "[", 72, 71, 68, 63, "]", "[", 72, 71, 68, 62, "]", "[", 72, 71, 68, 61, "]", "[", 72, 71, 68, 60, "]", "[", 72, 71, 67, 70, "]", "[", 72, 71, 67, 69, "]", "[", 72, 71, 67, 68, "]", "[", 72, 71, 67, 66, "]", "[", 72, 71, 67, 65, "]", "[", 72, 71, 67, 64, "]", "[", 72, 71, 67, 63, "]", "[", 72, 71, 67, 62, "]", "[", 72, 71, 67, 61, "]", "[", 72, 71, 67, 60, "]", "[", 72, 71, 66, 70, "]", "[", 72, 71, 66, 69, "]", "[", 72, 71, 66, 68, "]", "[", 72, 71, 66, 67, "]", "[", 72, 71, 66, 65, "]", "[", 72, 71, 66, 64, "]", "[", 72, 71, 66, 63, "]", "[", 72, 71, 66, 62, "]", "[", 72, 71, 66, 61, "]", "[", 72, 71, 66, 60, "]", "[", 72, 71, 65, 70, "]", "[", 72, 71, 65, 69, "]", "[", 72, 71, 65, 68, "]", "[", 72, 71, 65, 67, "]", "[", 72, 71, 65, 66, "]", "[", 72, 71, 65, 64, "]", "[", 72, 71, 65, 63, "]", "[", 72, 71, 65, 62, "]", "[", 72, 71, 65, 61, "]", "[", 72, 71, 65, 60, "]", "[", 72, 71, 64, 70, "]", "[", 72, 71, 64, 69, "]", "[", 72, 71, 64, 68, "]", "[", 72, 71, 64, 67, "]", "[", 72, 71, 64, 66, "]", "[", 72, 71, 64, 65, "]", "[", 72, 71, 64, 63, "]", "[", 72, 71, 64, 62, "]", "[", 72, 71, 64, 61, "]", "[", 72, 71, 64, 60, "]", "[", 72, 71, 63, 70, "]", "[", 72, 71, 63, 69, "]", "[", 72, 71, 63, 68, "]", "[", 72, 71, 63, 67, "]", "[", 72, 71, 63, 66, "]", "[", 72, 71, 63, 65, "]", "[", 72, 71, 63, 64, "]", "[", 72, 71, 63, 62, "]", "[", 72, 71, 63, 61, "]", "[", 72, 71, 63, 60, "]", "[", 72, 71, 62, 70, "]", "[", 72, 71, 62, 69, "]", "[", 72, 71, 62, 68, "]", "[", 72, 71, 62, 67, "]", "[", 72, 71, 62, 66, "]", "[", 72, 71, 62, 65, "]", "[", 72, 71, 62, 64, "]", "[", 72, 71, 62, 63, "]", "[", 72, 71, 62, 61, "]", "[", 72, 71, 62, 60, "]", "[", 72, 71, 61, 70, "]", "[", 72, 71, 61, 69, "]", "[", 72, 71, 61, 68, "]", "[", 72, 71, 61, 67, "]", "[", 72, 71, 61, 66, "]", "[", 72, 71, 61, 65, "]", "[", 72, 71, 61, 64, "]", "[", 72, 71, 61, 63, "]", "[", 72, 71, 61, 62, "]", "[", 72, 71, 61, 60, "]", "[", 72, 71, 60, 70, "]", "[", 72, 71, 60, 69, "]", "[", 72, 71, 60, 68, "]", "[", 72, 71, 60, 67, "]", "[", 72, 71, 60, 66, "]", "[", 72, 71, 60, 65, "]", "[", 72, 71, 60, 64, "]", "[", 72, 71, 60, 63, "]", "[", 72, 71, 60, 62, "]", "[", 72, 71, 60, 61, "]", "[", 72, 70, 71, 69, "]", "[", 72, 70, 71, 68, "]", "[", 72, 70, 71, 67, "]", "[", 72, 70, 71, 66, "]", "[", 72, 70, 71, 65, "]", "[", 72, 70, 71, 64, "]", "[", 72, 70, 71, 63, "]", "[", 72, 70, 71, 62, "]", "[", 72, 70, 71, 61, "]", "[", 72, 70, 71, 60, "]", "[", 72, 70, 69, 71, "]", "[", 72, 70, 69, 68, "]", "[", 72, 70, 69, 67, "]", "[", 72, 70, 69, 66, "]", "[", 72, 70, 69, 65, "]", "[", 72, 70, 69, 64, "]", "[", 72, 70, 69, 63, "]", "[", 72, 70, 69, 62, "]", "[", 72, 70, 69, 61, "]", "[", 72, 70, 69, 60, "]", "[", 72, 70, 68, 71, "]", "[", 72, 70, 68, 69, "]", "[", 72, 70, 68, 67, "]", "[", 72, 70, 68, 66, "]", "[", 72, 70, 68, 65, "]", "[", 72, 70, 68, 64, "]", "[", 72, 70, 68, 63, "]", "[", 72, 70, 68, 62, "]", "[", 72, 70, 68, 61, "]", "[", 72, 70, 68, 60, "]", "[", 72, 70, 67, 71, "]", "[", 72, 70, 67, 69, "]", "[", 72, 70, 67, 68, "]", "[", 72, 70, 67, 66, "]", "[", 72, 70, 67, 65, "]", "[", 72, 70, 67, 64, "]", "[", 72, 70, 67, 63, "]", "[", 72, 70, 67, 62, "]", "[", 72, 70, 67, 61, "]", "[", 72, 70, 67, 60, "]", "[", 72, 70, 66, 71, "]", "[", 72, 70, 66, 69, "]", "[", 72, 70, 66, 68, "]", "[", 72, 70, 66, 67, "]", "[", 72, 70, 66, 65, "]", "[", 72, 70, 66, 64, "]", "[", 72, 70, 66, 63, "]", "[", 72, 70, 66, 62, "]", "[", 72, 70, 66, 61, "]", "[", 72, 70, 66, 60, "]", "[", 72, 70, 65, 71, "]", "[", 72, 70, 65, 69, "]", "[", 72, 70, 65, 68, "]", "[", 72, 70, 65, 67, "]", "[", 72, 70, 65, 66, "]", "[", 72, 70, 65, 64, "]", "[", 72, 70, 65, 63, "]", "[", 72, 70, 65, 62, "]", "[", 72, 70, 65, 61, "]", "[", 72, 70, 65, 60, "]", "[", 72, 70, 64, 71, "]", "[", 72, 70, 64, 69, "]", "[", 72, 70, 64, 68, "]", "[", 72, 70, 64, 67, "]", "[", 72, 70, 64, 66, "]", "[", 72, 70, 64, 65, "]", "[", 72, 70, 64, 63, "]", "[", 72, 70, 64, 62, "]", "[", 72, 70, 64, 61, "]", "[", 72, 70, 64, 60, "]", "[", 72, 70, 63, 71, "]", "[", 72, 70, 63, 69, "]", "[", 72, 70, 63, 68, "]", "[", 72, 70, 63, 67, "]", "[", 72, 70, 63, 66, "]", "[", 72, 70, 63, 65, "]", "[", 72, 70, 63, 64, "]", "[", 72, 70, 63, 62, "]", "[", 72, 70, 63, 61, "]", "[", 72, 70, 63, 60, "]", "[", 72, 70, 62, 71, "]", "[", 72, 70, 62, 69, "]", "[", 72, 70, 62, 68, "]", "[", 72, 70, 62, 67, "]", "[", 72, 70, 62, 66, "]", "[", 72, 70, 62, 65, "]", "[", 72, 70, 62, 64, "]", "[", 72, 70, 62, 63, "]", "[", 72, 70, 62, 61, "]", "[", 72, 70, 62, 60, "]", "[", 72, 70, 61, 71, "]", "[", 72, 70, 61, 69, "]", "[", 72, 70, 61, 68, "]", "[", 72, 70, 61, 67, "]", "[", 72, 70, 61, 66, "]", "[", 72, 70, 61, 65, "]", "[", 72, 70, 61, 64, "]", "[", 72, 70, 61, 63, "]", "[", 72, 70, 61, 62, "]", "[", 72, 70, 61, 60, "]", "[", 72, 70, 60, 71, "]", "[", 72, 70, 60, 69, "]", "[", 72, 70, 60, 68, "]", "[", 72, 70, 60, 67, "]", "[", 72, 70, 60, 66, "]", "[", 72, 70, 60, 65, "]", "[", 72, 70, 60, 64, "]", "[", 72, 70, 60, 63, "]", "[", 72, 70, 60, 62, "]", "[", 72, 70, 60, 61, "]", "[", 72, 69, 71, 70, "]", "[", 72, 69, 71, 68, "]", "[", 72, 69, 71, 67, "]", "[", 72, 69, 71, 66, "]", "[", 72, 69, 71, 65, "]", "[", 72, 69, 71, 64, "]", "[", 72, 69, 71, 63, "]", "[", 72, 69, 71, 62, "]", "[", 72, 69, 71, 61, "]", "[", 72, 69, 71, 60, "]", "[", 72, 69, 70, 71, "]", "[", 72, 69, 70, 68, "]", "[", 72, 69, 70, 67, "]", "[", 72, 69, 70, 66, "]", "[", 72, 69, 70, 65, "]", "[", 72, 69, 70, 64, "]", "[", 72, 69, 70, 63, "]", "[", 72, 69, 70, 62, "]", "[", 72, 69, 70, 61, "]", "[", 72, 69, 70, 60, "]", "[", 72, 69, 68, 71, "]", "[", 72, 69, 68, 70, "]", "[", 72, 69, 68, 67, "]", "[", 72, 69, 68, 66, "]", "[", 72, 69, 68, 65, "]", "[", 72, 69, 68, 64, "]", "[", 72, 69, 68, 63, "]", "[", 72, 69, 68, 62, "]", "[", 72, 69, 68, 61, "]", "[", 72, 69, 68, 60, "]", "[", 72, 69, 67, 71, "]", "[", 72, 69, 67, 70, "]", "[", 72, 69, 67, 68, "]", "[", 72, 69, 67, 66, "]", "[", 72, 69, 67, 65, "]", "[", 72, 69, 67, 64, "]", "[", 72, 69, 67, 63, "]", "[", 72, 69, 67, 62, "]", "[", 72, 69, 67, 61, "]", "[", 72, 69, 67, 60, "]", "[", 72, 69, 66, 71, "]", "[", 72, 69, 66, 70, "]", "[", 72, 69, 66, 68, "]", "[", 72, 69, 66, 67, "]", "[", 72, 69, 66, 65, "]", "[", 72, 69, 66, 64, "]", "[", 72, 69, 66, 63, "]", "[", 72, 69, 66, 62, "]", "[", 72, 69, 66, 61, "]", "[", 72, 69, 66, 60, "]", "[", 72, 69, 65, 71, "]", "[", 72, 69, 65, 70, "]", "[", 72, 69, 65, 68, "]", "[", 72, 69, 65, 67, "]", "[", 72, 69, 65, 66, "]", "[", 72, 69, 65, 64, "]", "[", 72, 69, 65, 63, "]", "[", 72, 69, 65, 62, "]", "[", 72, 69, 65, 61, "]", "[", 72, 69, 65, 60, "]", "[", 72, 69, 64, 71, "]", "[", 72, 69, 64, 70, "]", "[", 72, 69, 64, 68, "]", "[", 72, 69, 64, 67, "]", "[", 72, 69, 64, 66, "]", "[", 72, 69, 64, 65, "]", "[", 72, 69, 64, 63, "]", "[", 72, 69, 64, 62, "]", "[", 72, 69, 64, 61, "]", "[", 72, 69, 64, 60, "]", "[", 72, 69, 63, 71, "]", "[", 72, 69, 63, 70, "]", "[", 72, 69, 63, 68, "]", "[", 72, 69, 63, 67, "]", "[", 72, 69, 63, 66, "]", "[", 72, 69, 63, 65, "]", "[", 72, 69, 63, 64, "]", "[", 72, 69, 63, 62, "]", "[", 72, 69, 63, 61, "]", "[", 72, 69, 63, 60, "]", "[", 72, 69, 62, 71, "]", "[", 72, 69, 62, 70, "]", "[", 72, 69, 62, 68, "]", "[", 72, 69, 62, 67, "]", "[", 72, 69, 62, 66, "]", "[", 72, 69, 62, 65, "]", "[", 72, 69, 62, 64, "]", "[", 72, 69, 62, 63, "]", "[", 72, 69, 62, 61, "]", "[", 72, 69, 62, 60, "]", "[", 72, 69, 61, 71, "]", "[", 72, 69, 61, 70, "]", "[", 72, 69, 61, 68, "]", "[", 72, 69, 61, 67, "]", "[", 72, 69, 61, 66, "]", "[", 72, 69, 61, 65, "]", "[", 72, 69, 61, 64, "]", "[", 72, 69, 61, 63, "]", "[", 72, 69, 61, 62, "]", "[", 72, 69, 61, 60, "]", "[", 72, 69, 60, 71, "]", "[", 72, 69, 60, 70, "]", "[", 72, 69, 60, 68, "]", "[", 72, 69, 60, 67, "]", "[", 72, 69, 60, 66, "]", "[", 72, 69, 60, 65, "]", "[", 72, 69, 60, 64, "]", "[", 72, 69, 60, 63, "]", "[", 72, 69, 60, 62, "]", "[", 72, 69, 60, 61, "]", "[", 72, 68, 71, 70, "]", "[", 72, 68, 71, 69, "]", "[", 72, 68, 71, 67, "]", "[", 72, 68, 71, 66, "]", "[", 72, 68, 71, 65, "]", "[", 72, 68, 71, 64, "]", "[", 72, 68, 71, 63, "]", "[", 72, 68, 71, 62, "]", "[", 72, 68, 71, 61, "]", "[", 72, 68, 71, 60, "]", "[", 72, 68, 70, 71, "]", "[", 72, 68, 70, 69, "]", "[", 72, 68, 70, 67, "]", "[", 72, 68, 70, 66, "]", "[", 72, 68, 70, 65, "]", "[", 72, 68, 70, 64, "]", "[", 72, 68, 70, 63, "]", "[", 72, 68, 70, 62, "]", "[", 72, 68, 70, 61, "]", "[", 72, 68, 70, 60, "]", "[", 72, 68, 69, 71, "]", "[", 72, 68, 69, 70, "]", "[", 72, 68, 69, 67, "]", "[", 72, 68, 69, 66, "]", "[", 72, 68, 69, 65, "]", "[", 72, 68, 69, 64, "]", "[", 72, 68, 69, 63, "]", "[", 72, 68, 69, 62, "]", "[", 72, 68, 69, 61, "]", "[", 72, 68, 69, 60, "]", "[", 72, 68, 67, 71, "]", "[", 72, 68, 67, 70, "]", "[", 72, 68, 67, 69, "]", "[", 72, 68, 67, 66, "]", "[", 72, 68, 67, 65, "]", "[", 72, 68, 67, 64, "]", "[", 72, 68, 67, 63, "]", "[", 72, 68, 67, 62, "]", "[", 72, 68, 67, 61, "]", "[", 72, 68, 67, 60, "]", "[", 72, 68, 66, 71, "]", "[", 72, 68, 66, 70, "]", "[", 72, 68, 66, 69, "]", "[", 72, 68, 66, 67, "]", "[", 72, 68, 66, 65, "]", "[", 72, 68, 66, 64, "]", "[", 72, 68, 66, 63, "]", "[", 72, 68, 66, 62, "]", "[", 72, 68, 66, 61, "]", "[", 72, 68, 66, 60, "]", "[", 72, 68, 65, 71, "]", "[", 72, 68, 65, 70, "]", "[", 72, 68, 65, 69, "]", "[", 72, 68, 65, 67, "]", "[", 72, 68, 65, 66, "]", "[", 72, 68, 65, 64, "]", "[", 72, 68, 65, 63, "]", "[", 72, 68, 65, 62, "]", "[", 72, 68, 65, 61, "]", "[", 72, 68, 65, 60, "]", "[", 72, 68, 64, 71, "]", "[", 72, 68, 64, 70, "]", "[", 72, 68, 64, 69, "]", "[", 72, 68, 64, 67, "]", "[", 72, 68, 64, 66, "]", "[", 72, 68, 64, 65, "]", "[", 72, 68, 64, 63, "]", "[", 72, 68, 64, 62, "]", "[", 72, 68, 64, 61, "]", "[", 72, 68, 64, 60, "]", "[", 72, 68, 63, 71, "]", "[", 72, 68, 63, 70, "]", "[", 72, 68, 63, 69, "]", "[", 72, 68, 63, 67, "]", "[", 72, 68, 63, 66, "]", "[", 72, 68, 63, 65, "]", "[", 72, 68, 63, 64, "]", "[", 72, 68, 63, 62, "]", "[", 72, 68, 63, 61, "]", "[", 72, 68, 63, 60, "]", "[", 72, 68, 62, 71, "]", "[", 72, 68, 62, 70, "]", "[", 72, 68, 62, 69, "]", "[", 72, 68, 62, 67, "]", "[", 72, 68, 62, 66, "]", "[", 72, 68, 62, 65, "]", "[", 72, 68, 62, 64, "]", "[", 72, 68, 62, 63, "]", "[", 72, 68, 62, 61, "]", "[", 72, 68, 62, 60, "]", "[", 72, 68, 61, 71, "]", "[", 72, 68, 61, 70, "]", "[", 72, 68, 61, 69, "]", "[", 72, 68, 61, 67, "]", "[", 72, 68, 61, 66, "]", "[", 72, 68, 61, 65, "]", "[", 72, 68, 61, 64, "]", "[", 72, 68, 61, 63, "]", "[", 72, 68, 61, 62, "]", "[", 72, 68, 61, 60, "]", "[", 72, 68, 60, 71, "]", "[", 72, 68, 60, 70, "]", "[", 72, 68, 60, 69, "]", "[", 72, 68, 60, 67, "]", "[", 72, 68, 60, 66, "]", "[", 72, 68, 60, 65, "]", "[", 72, 68, 60, 64, "]", "[", 72, 68, 60, 63, "]", "[", 72, 68, 60, 62, "]", "[", 72, 68, 60, 61, "]", "[", 72, 67, 71, 70, "]", "[", 72, 67, 71, 69, "]", "[", 72, 67, 71, 68, "]", "[", 72, 67, 71, 66, "]", "[", 72, 67, 71, 65, "]", "[", 72, 67, 71, 64, "]", "[", 72, 67, 71, 63, "]", "[", 72, 67, 71, 62, "]", "[", 72, 67, 71, 61, "]", "[", 72, 67, 71, 60, "]", "[", 72, 67, 70, 71, "]", "[", 72, 67, 70, 69, "]", "[", 72, 67, 70, 68, "]", "[", 72, 67, 70, 66, "]", "[", 72, 67, 70, 65, "]", "[", 72, 67, 70, 64, "]", "[", 72, 67, 70, 63, "]", "[", 72, 67, 70, 62, "]", "[", 72, 67, 70, 61, "]", "[", 72, 67, 70, 60, "]", "[", 72, 67, 69, 71, "]", "[", 72, 67, 69, 70, "]", "[", 72, 67, 69, 68, "]", "[", 72, 67, 69, 66, "]", "[", 72, 67, 69, 65, "]", "[", 72, 67, 69, 64, "]", "[", 72, 67, 69, 63, "]", "[", 72, 67, 69, 62, "]", "[", 72, 67, 69, 61, "]", "[", 72, 67, 69, 60, "]", "[", 72, 67, 68, 71, "]", "[", 72, 67, 68, 70, "]", "[", 72, 67, 68, 69, "]", "[", 72, 67, 68, 66, "]", "[", 72, 67, 68, 65, "]", "[", 72, 67, 68, 64, "]", "[", 72, 67, 68, 63, "]", "[", 72, 67, 68, 62, "]", "[", 72, 67, 68, 61, "]", "[", 72, 67, 68, 60, "]", "[", 72, 67, 66, 71, "]", "[", 72, 67, 66, 70, "]", "[", 72, 67, 66, 69, "]", "[", 72, 67, 66, 68, "]", "[", 72, 67, 66, 65, "]", "[", 72, 67, 66, 64, "]", "[", 72, 67, 66, 63, "]", "[", 72, 67, 66, 62, "]", "[", 72, 67, 66, 61, "]", "[", 72, 67, 66, 60, "]", "[", 72, 67, 65, 71, "]", "[", 72, 67, 65, 70, "]", "[", 72, 67, 65, 69, "]", "[", 72, 67, 65, 68, "]", "[", 72, 67, 65, 66, "]", "[", 72, 67, 65, 64, "]", "[", 72, 67, 65, 63, "]", "[", 72, 67, 65, 62, "]", "[", 72, 67, 65, 61, "]", "[", 72, 67, 65, 60, "]", "[", 72, 67, 64, 71, "]", "[", 72, 67, 64, 70, "]", "[", 72, 67, 64, 69, "]", "[", 72, 67, 64, 68, "]", "[", 72, 67, 64, 66, "]", "[", 72, 67, 64, 65, "]", "[", 72, 67, 64, 63, "]", "[", 72, 67, 64, 62, "]", "[", 72, 67, 64, 61, "]", "[", 72, 67, 64, 60, "]", "[", 72, 67, 63, 71, "]", "[", 72, 67, 63, 70, "]", "[", 72, 67, 63, 69, "]", "[", 72, 67, 63, 68, "]", "[", 72, 67, 63, 66, "]", "[", 72, 67, 63, 65, "]", "[", 72, 67, 63, 64, "]", "[", 72, 67, 63, 62, "]", "[", 72, 67, 63, 61, "]", "[", 72, 67, 63, 60, "]", "[", 72, 67, 62, 71, "]", "[", 72, 67, 62, 70, "]", "[", 72, 67, 62, 69, "]", "[", 72, 67, 62, 68, "]", "[", 72, 67, 62, 66, "]", "[", 72, 67, 62, 65, "]", "[", 72, 67, 62, 64, "]", "[", 72, 67, 62, 63, "]", "[", 72, 67, 62, 61, "]", "[", 72, 67, 62, 60, "]", "[", 72, 67, 61, 71, "]", "[", 72, 67, 61, 70, "]", "[", 72, 67, 61, 69, "]", "[", 72, 67, 61, 68, "]", "[", 72, 67, 61, 66, "]", "[", 72, 67, 61, 65, "]", "[", 72, 67, 61, 64, "]", "[", 72, 67, 61, 63, "]", "[", 72, 67, 61, 62, "]", "[", 72, 67, 61, 60, "]", "[", 72, 67, 60, 71, "]", "[", 72, 67, 60, 70, "]", "[", 72, 67, 60, 69, "]", "[", 72, 67, 60, 68, "]", "[", 72, 67, 60, 66, "]", "[", 72, 67, 60, 65, "]", "[", 72, 67, 60, 64, "]", "[", 72, 67, 60, 63, "]", "[", 72, 67, 60, 62, "]", "[", 72, 67, 60, 61, "]", "[", 72, 66, 71, 70, "]", "[", 72, 66, 71, 69, "]", "[", 72, 66, 71, 68, "]", "[", 72, 66, 71, 67, "]", "[", 72, 66, 71, 65, "]", "[", 72, 66, 71, 64, "]", "[", 72, 66, 71, 63, "]", "[", 72, 66, 71, 62, "]", "[", 72, 66, 71, 61, "]", "[", 72, 66, 71, 60, "]", "[", 72, 66, 70, 71, "]", "[", 72, 66, 70, 69, "]", "[", 72, 66, 70, 68, "]", "[", 72, 66, 70, 67, "]", "[", 72, 66, 70, 65, "]", "[", 72, 66, 70, 64, "]", "[", 72, 66, 70, 63, "]", "[", 72, 66, 70, 62, "]", "[", 72, 66, 70, 61, "]", "[", 72, 66, 70, 60, "]", "[", 72, 66, 69, 71, "]", "[", 72, 66, 69, 70, "]", "[", 72, 66, 69, 68, "]", "[", 72, 66, 69, 67, "]", "[", 72, 66, 69, 65, "]", "[", 72, 66, 69, 64, "]", "[", 72, 66, 69, 63, "]", "[", 72, 66, 69, 62, "]", "[", 72, 66, 69, 61, "]", "[", 72, 66, 69, 60, "]", "[", 72, 66, 68, 71, "]", "[", 72, 66, 68, 70, "]", "[", 72, 66, 68, 69, "]", "[", 72, 66, 68, 67, "]", "[", 72, 66, 68, 65, "]", "[", 72, 66, 68, 64, "]", "[", 72, 66, 68, 63, "]", "[", 72, 66, 68, 62, "]", "[", 72, 66, 68, 61, "]", "[", 72, 66, 68, 60, "]", "[", 72, 66, 67, 71, "]", "[", 72, 66, 67, 70, "]", "[", 72, 66, 67, 69, "]", "[", 72, 66, 67, 68, "]", "[", 72, 66, 67, 65, "]", "[", 72, 66, 67, 64, "]", "[", 72, 66, 67, 63, "]", "[", 72, 66, 67, 62, "]", "[", 72, 66, 67, 61, "]", "[", 72, 66, 67, 60, "]", "[", 72, 66, 65, 71, "]", "[", 72, 66, 65, 70, "]", "[", 72, 66, 65, 69, "]", "[", 72, 66, 65, 68, "]", "[", 72, 66, 65, 67, "]", "[", 72, 66, 65, 64, "]", "[", 72, 66, 65, 63, "]", "[", 72, 66, 65, 62, "]", "[", 72, 66, 65, 61, "]", "[", 72, 66, 65, 60, "]", "[", 72, 66, 64, 71, "]", "[", 72, 66, 64, 70, "]", "[", 72, 66, 64, 69, "]", "[", 72, 66, 64, 68, "]", "[", 72, 66, 64, 67, "]", "[", 72, 66, 64, 65, "]", "[", 72, 66, 64, 63, "]", "[", 72, 66, 64, 62, "]", "[", 72, 66, 64, 61, "]", "[", 72, 66, 64, 60, "]", "[", 72, 66, 63, 71, "]", "[", 72, 66, 63, 70, "]", "[", 72, 66, 63, 69, "]", "[", 72, 66, 63, 68, "]", "[", 72, 66, 63, 67, "]", "[", 72, 66, 63, 65, "]", "[", 72, 66, 63, 64, "]", "[", 72, 66, 63, 62, "]", "[", 72, 66, 63, 61, "]", "[", 72, 66, 63, 60, "]", "[", 72, 66, 62, 71, "]", "[", 72, 66, 62, 70, "]", "[", 72, 66, 62, 69, "]", "[", 72, 66, 62, 68, "]", "[", 72, 66, 62, 67, "]", "[", 72, 66, 62, 65, "]", "[", 72, 66, 62, 64, "]", "[", 72, 66, 62, 63, "]", "[", 72, 66, 62, 61, "]", "[", 72, 66, 62, 60, "]", "[", 72, 66, 61, 71, "]", "[", 72, 66, 61, 70, "]", "[", 72, 66, 61, 69, "]", "[", 72, 66, 61, 68, "]", "[", 72, 66, 61, 67, "]", "[", 72, 66, 61, 65, "]", "[", 72, 66, 61, 64, "]", "[", 72, 66, 61, 63, "]", "[", 72, 66, 61, 62, "]", "[", 72, 66, 61, 60, "]", "[", 72, 66, 60, 71, "]", "[", 72, 66, 60, 70, "]", "[", 72, 66, 60, 69, "]", "[", 72, 66, 60, 68, "]", "[", 72, 66, 60, 67, "]", "[", 72, 66, 60, 65, "]", "[", 72, 66, 60, 64, "]", "[", 72, 66, 60, 63, "]", "[", 72, 66, 60, 62, "]", "[", 72, 66, 60, 61, "]", "[", 72, 65, 71, 70, "]", "[", 72, 65, 71, 69, "]", "[", 72, 65, 71, 68, "]", "[", 72, 65, 71, 67, "]", "[", 72, 65, 71, 66, "]", "[", 72, 65, 71, 64, "]", "[", 72, 65, 71, 63, "]", "[", 72, 65, 71, 62, "]", "[", 72, 65, 71, 61, "]", "[", 72, 65, 71, 60, "]", "[", 72, 65, 70, 71, "]", "[", 72, 65, 70, 69, "]", "[", 72, 65, 70, 68, "]", "[", 72, 65, 70, 67, "]", "[", 72, 65, 70, 66, "]", "[", 72, 65, 70, 64, "]", "[", 72, 65, 70, 63, "]", "[", 72, 65, 70, 62, "]", "[", 72, 65, 70, 61, "]", "[", 72, 65, 70, 60, "]", "[", 72, 65, 69, 71, "]", "[", 72, 65, 69, 70, "]", "[", 72, 65, 69 ],
													"reg_data_0000000001" : [ 68, "]", "[", 72, 65, 69, 67, "]", "[", 72, 65, 69, 66, "]", "[", 72, 65, 69, 64, "]", "[", 72, 65, 69, 63, "]", "[", 72, 65, 69, 62, "]", "[", 72, 65, 69, 61, "]", "[", 72, 65, 69, 60, "]", "[", 72, 65, 68, 71, "]", "[", 72, 65, 68, 70, "]", "[", 72, 65, 68, 69, "]", "[", 72, 65, 68, 67, "]", "[", 72, 65, 68, 66, "]", "[", 72, 65, 68, 64, "]", "[", 72, 65, 68, 63, "]", "[", 72, 65, 68, 62, "]", "[", 72, 65, 68, 61, "]", "[", 72, 65, 68, 60, "]", "[", 72, 65, 67, 71, "]", "[", 72, 65, 67, 70, "]", "[", 72, 65, 67, 69, "]", "[", 72, 65, 67, 68, "]", "[", 72, 65, 67, 66, "]", "[", 72, 65, 67, 64, "]", "[", 72, 65, 67, 63, "]", "[", 72, 65, 67, 62, "]", "[", 72, 65, 67, 61, "]", "[", 72, 65, 67, 60, "]", "[", 72, 65, 66, 71, "]", "[", 72, 65, 66, 70, "]", "[", 72, 65, 66, 69, "]", "[", 72, 65, 66, 68, "]", "[", 72, 65, 66, 67, "]", "[", 72, 65, 66, 64, "]", "[", 72, 65, 66, 63, "]", "[", 72, 65, 66, 62, "]", "[", 72, 65, 66, 61, "]", "[", 72, 65, 66, 60, "]", "[", 72, 65, 64, 71, "]", "[", 72, 65, 64, 70, "]", "[", 72, 65, 64, 69, "]", "[", 72, 65, 64, 68, "]", "[", 72, 65, 64, 67, "]", "[", 72, 65, 64, 66, "]", "[", 72, 65, 64, 63, "]", "[", 72, 65, 64, 62, "]", "[", 72, 65, 64, 61, "]", "[", 72, 65, 64, 60, "]", "[", 72, 65, 63, 71, "]", "[", 72, 65, 63, 70, "]", "[", 72, 65, 63, 69, "]", "[", 72, 65, 63, 68, "]", "[", 72, 65, 63, 67, "]", "[", 72, 65, 63, 66, "]", "[", 72, 65, 63, 64, "]", "[", 72, 65, 63, 62, "]", "[", 72, 65, 63, 61, "]", "[", 72, 65, 63, 60, "]", "[", 72, 65, 62, 71, "]", "[", 72, 65, 62, 70, "]", "[", 72, 65, 62, 69, "]", "[", 72, 65, 62, 68, "]", "[", 72, 65, 62, 67, "]", "[", 72, 65, 62, 66, "]", "[", 72, 65, 62, 64, "]", "[", 72, 65, 62, 63, "]", "[", 72, 65, 62, 61, "]", "[", 72, 65, 62, 60, "]", "[", 72, 65, 61, 71, "]", "[", 72, 65, 61, 70, "]", "[", 72, 65, 61, 69, "]", "[", 72, 65, 61, 68, "]", "[", 72, 65, 61, 67, "]", "[", 72, 65, 61, 66, "]", "[", 72, 65, 61, 64, "]", "[", 72, 65, 61, 63, "]", "[", 72, 65, 61, 62, "]", "[", 72, 65, 61, 60, "]", "[", 72, 65, 60, 71, "]", "[", 72, 65, 60, 70, "]", "[", 72, 65, 60, 69, "]", "[", 72, 65, 60, 68, "]", "[", 72, 65, 60, 67, "]", "[", 72, 65, 60, 66, "]", "[", 72, 65, 60, 64, "]", "[", 72, 65, 60, 63, "]", "[", 72, 65, 60, 62, "]", "[", 72, 65, 60, 61, "]", "[", 72, 64, 71, 70, "]", "[", 72, 64, 71, 69, "]", "[", 72, 64, 71, 68, "]", "[", 72, 64, 71, 67, "]", "[", 72, 64, 71, 66, "]", "[", 72, 64, 71, 65, "]", "[", 72, 64, 71, 63, "]", "[", 72, 64, 71, 62, "]", "[", 72, 64, 71, 61, "]", "[", 72, 64, 71, 60, "]", "[", 72, 64, 70, 71, "]", "[", 72, 64, 70, 69, "]", "[", 72, 64, 70, 68, "]", "[", 72, 64, 70, 67, "]", "[", 72, 64, 70, 66, "]", "[", 72, 64, 70, 65, "]", "[", 72, 64, 70, 63, "]", "[", 72, 64, 70, 62, "]", "[", 72, 64, 70, 61, "]", "[", 72, 64, 70, 60, "]", "[", 72, 64, 69, 71, "]", "[", 72, 64, 69, 70, "]", "[", 72, 64, 69, 68, "]", "[", 72, 64, 69, 67, "]", "[", 72, 64, 69, 66, "]", "[", 72, 64, 69, 65, "]", "[", 72, 64, 69, 63, "]", "[", 72, 64, 69, 62, "]", "[", 72, 64, 69, 61, "]", "[", 72, 64, 69, 60, "]", "[", 72, 64, 68, 71, "]", "[", 72, 64, 68, 70, "]", "[", 72, 64, 68, 69, "]", "[", 72, 64, 68, 67, "]", "[", 72, 64, 68, 66, "]", "[", 72, 64, 68, 65, "]", "[", 72, 64, 68, 63, "]", "[", 72, 64, 68, 62, "]", "[", 72, 64, 68, 61, "]", "[", 72, 64, 68, 60, "]", "[", 72, 64, 67, 71, "]", "[", 72, 64, 67, 70, "]", "[", 72, 64, 67, 69, "]", "[", 72, 64, 67, 68, "]", "[", 72, 64, 67, 66, "]", "[", 72, 64, 67, 65, "]", "[", 72, 64, 67, 63, "]", "[", 72, 64, 67, 62, "]", "[", 72, 64, 67, 61, "]", "[", 72, 64, 67, 60, "]", "[", 72, 64, 66, 71, "]", "[", 72, 64, 66, 70, "]", "[", 72, 64, 66, 69, "]", "[", 72, 64, 66, 68, "]", "[", 72, 64, 66, 67, "]", "[", 72, 64, 66, 65, "]", "[", 72, 64, 66, 63, "]", "[", 72, 64, 66, 62, "]", "[", 72, 64, 66, 61, "]", "[", 72, 64, 66, 60, "]", "[", 72, 64, 65, 71, "]", "[", 72, 64, 65, 70, "]", "[", 72, 64, 65, 69, "]", "[", 72, 64, 65, 68, "]", "[", 72, 64, 65, 67, "]", "[", 72, 64, 65, 66, "]", "[", 72, 64, 65, 63, "]", "[", 72, 64, 65, 62, "]", "[", 72, 64, 65, 61, "]", "[", 72, 64, 65, 60, "]", "[", 72, 64, 63, 71, "]", "[", 72, 64, 63, 70, "]", "[", 72, 64, 63, 69, "]", "[", 72, 64, 63, 68, "]", "[", 72, 64, 63, 67, "]", "[", 72, 64, 63, 66, "]", "[", 72, 64, 63, 65, "]", "[", 72, 64, 63, 62, "]", "[", 72, 64, 63, 61, "]", "[", 72, 64, 63, 60, "]", "[", 72, 64, 62, 71, "]", "[", 72, 64, 62, 70, "]", "[", 72, 64, 62, 69, "]", "[", 72, 64, 62, 68, "]", "[", 72, 64, 62, 67, "]", "[", 72, 64, 62, 66, "]", "[", 72, 64, 62, 65, "]", "[", 72, 64, 62, 63, "]", "[", 72, 64, 62, 61, "]", "[", 72, 64, 62, 60, "]", "[", 72, 64, 61, 71, "]", "[", 72, 64, 61, 70, "]", "[", 72, 64, 61, 69, "]", "[", 72, 64, 61, 68, "]", "[", 72, 64, 61, 67, "]", "[", 72, 64, 61, 66, "]", "[", 72, 64, 61, 65, "]", "[", 72, 64, 61, 63, "]", "[", 72, 64, 61, 62, "]", "[", 72, 64, 61, 60, "]", "[", 72, 64, 60, 71, "]", "[", 72, 64, 60, 70, "]", "[", 72, 64, 60, 69, "]", "[", 72, 64, 60, 68, "]", "[", 72, 64, 60, 67, "]", "[", 72, 64, 60, 66, "]", "[", 72, 64, 60, 65, "]", "[", 72, 64, 60, 63, "]", "[", 72, 64, 60, 62, "]", "[", 72, 64, 60, 61, "]", "[", 72, 63, 71, 70, "]", "[", 72, 63, 71, 69, "]", "[", 72, 63, 71, 68, "]", "[", 72, 63, 71, 67, "]", "[", 72, 63, 71, 66, "]", "[", 72, 63, 71, 65, "]", "[", 72, 63, 71, 64, "]", "[", 72, 63, 71, 62, "]", "[", 72, 63, 71, 61, "]", "[", 72, 63, 71, 60, "]", "[", 72, 63, 70, 71, "]", "[", 72, 63, 70, 69, "]", "[", 72, 63, 70, 68, "]", "[", 72, 63, 70, 67, "]", "[", 72, 63, 70, 66, "]", "[", 72, 63, 70, 65, "]", "[", 72, 63, 70, 64, "]", "[", 72, 63, 70, 62, "]", "[", 72, 63, 70, 61, "]", "[", 72, 63, 70, 60, "]", "[", 72, 63, 69, 71, "]", "[", 72, 63, 69, 70, "]", "[", 72, 63, 69, 68, "]", "[", 72, 63, 69, 67, "]", "[", 72, 63, 69, 66, "]", "[", 72, 63, 69, 65, "]", "[", 72, 63, 69, 64, "]", "[", 72, 63, 69, 62, "]", "[", 72, 63, 69, 61, "]", "[", 72, 63, 69, 60, "]", "[", 72, 63, 68, 71, "]", "[", 72, 63, 68, 70, "]", "[", 72, 63, 68, 69, "]", "[", 72, 63, 68, 67, "]", "[", 72, 63, 68, 66, "]", "[", 72, 63, 68, 65, "]", "[", 72, 63, 68, 64, "]", "[", 72, 63, 68, 62, "]", "[", 72, 63, 68, 61, "]", "[", 72, 63, 68, 60, "]", "[", 72, 63, 67, 71, "]", "[", 72, 63, 67, 70, "]", "[", 72, 63, 67, 69, "]", "[", 72, 63, 67, 68, "]", "[", 72, 63, 67, 66, "]", "[", 72, 63, 67, 65, "]", "[", 72, 63, 67, 64, "]", "[", 72, 63, 67, 62, "]", "[", 72, 63, 67, 61, "]", "[", 72, 63, 67, 60, "]", "[", 72, 63, 66, 71, "]", "[", 72, 63, 66, 70, "]", "[", 72, 63, 66, 69, "]", "[", 72, 63, 66, 68, "]", "[", 72, 63, 66, 67, "]", "[", 72, 63, 66, 65, "]", "[", 72, 63, 66, 64, "]", "[", 72, 63, 66, 62, "]", "[", 72, 63, 66, 61, "]", "[", 72, 63, 66, 60, "]", "[", 72, 63, 65, 71, "]", "[", 72, 63, 65, 70, "]", "[", 72, 63, 65, 69, "]", "[", 72, 63, 65, 68, "]", "[", 72, 63, 65, 67, "]", "[", 72, 63, 65, 66, "]", "[", 72, 63, 65, 64, "]", "[", 72, 63, 65, 62, "]", "[", 72, 63, 65, 61, "]", "[", 72, 63, 65, 60, "]", "[", 72, 63, 64, 71, "]", "[", 72, 63, 64, 70, "]", "[", 72, 63, 64, 69, "]", "[", 72, 63, 64, 68, "]", "[", 72, 63, 64, 67, "]", "[", 72, 63, 64, 66, "]", "[", 72, 63, 64, 65, "]", "[", 72, 63, 64, 62, "]", "[", 72, 63, 64, 61, "]", "[", 72, 63, 64, 60, "]", "[", 72, 63, 62, 71, "]", "[", 72, 63, 62, 70, "]", "[", 72, 63, 62, 69, "]", "[", 72, 63, 62, 68, "]", "[", 72, 63, 62, 67, "]", "[", 72, 63, 62, 66, "]", "[", 72, 63, 62, 65, "]", "[", 72, 63, 62, 64, "]", "[", 72, 63, 62, 61, "]", "[", 72, 63, 62, 60, "]", "[", 72, 63, 61, 71, "]", "[", 72, 63, 61, 70, "]", "[", 72, 63, 61, 69, "]", "[", 72, 63, 61, 68, "]", "[", 72, 63, 61, 67, "]", "[", 72, 63, 61, 66, "]", "[", 72, 63, 61, 65, "]", "[", 72, 63, 61, 64, "]", "[", 72, 63, 61, 62, "]", "[", 72, 63, 61, 60, "]", "[", 72, 63, 60, 71, "]", "[", 72, 63, 60, 70, "]", "[", 72, 63, 60, 69, "]", "[", 72, 63, 60, 68, "]", "[", 72, 63, 60, 67, "]", "[", 72, 63, 60, 66, "]", "[", 72, 63, 60, 65, "]", "[", 72, 63, 60, 64, "]", "[", 72, 63, 60, 62, "]", "[", 72, 63, 60, 61, "]", "[", 72, 62, 71, 70, "]", "[", 72, 62, 71, 69, "]", "[", 72, 62, 71, 68, "]", "[", 72, 62, 71, 67, "]", "[", 72, 62, 71, 66, "]", "[", 72, 62, 71, 65, "]", "[", 72, 62, 71, 64, "]", "[", 72, 62, 71, 63, "]", "[", 72, 62, 71, 61, "]", "[", 72, 62, 71, 60, "]", "[", 72, 62, 70, 71, "]", "[", 72, 62, 70, 69, "]", "[", 72, 62, 70, 68, "]", "[", 72, 62, 70, 67, "]", "[", 72, 62, 70, 66, "]", "[", 72, 62, 70, 65, "]", "[", 72, 62, 70, 64, "]", "[", 72, 62, 70, 63, "]", "[", 72, 62, 70, 61, "]", "[", 72, 62, 70, 60, "]", "[", 72, 62, 69, 71, "]", "[", 72, 62, 69, 70, "]", "[", 72, 62, 69, 68, "]", "[", 72, 62, 69, 67, "]", "[", 72, 62, 69, 66, "]", "[", 72, 62, 69, 65, "]", "[", 72, 62, 69, 64, "]", "[", 72, 62, 69, 63, "]", "[", 72, 62, 69, 61, "]", "[", 72, 62, 69, 60, "]", "[", 72, 62, 68, 71, "]", "[", 72, 62, 68, 70, "]", "[", 72, 62, 68, 69, "]", "[", 72, 62, 68, 67, "]", "[", 72, 62, 68, 66, "]", "[", 72, 62, 68, 65, "]", "[", 72, 62, 68, 64, "]", "[", 72, 62, 68, 63, "]", "[", 72, 62, 68, 61, "]", "[", 72, 62, 68, 60, "]", "[", 72, 62, 67, 71, "]", "[", 72, 62, 67, 70, "]", "[", 72, 62, 67, 69, "]", "[", 72, 62, 67, 68, "]", "[", 72, 62, 67, 66, "]", "[", 72, 62, 67, 65, "]", "[", 72, 62, 67, 64, "]", "[", 72, 62, 67, 63, "]", "[", 72, 62, 67, 61, "]", "[", 72, 62, 67, 60, "]", "[", 72, 62, 66, 71, "]", "[", 72, 62, 66, 70, "]", "[", 72, 62, 66, 69, "]", "[", 72, 62, 66, 68, "]", "[", 72, 62, 66, 67, "]", "[", 72, 62, 66, 65, "]", "[", 72, 62, 66, 64, "]", "[", 72, 62, 66, 63, "]", "[", 72, 62, 66, 61, "]", "[", 72, 62, 66, 60, "]", "[", 72, 62, 65, 71, "]", "[", 72, 62, 65, 70, "]", "[", 72, 62, 65, 69, "]", "[", 72, 62, 65, 68, "]", "[", 72, 62, 65, 67, "]", "[", 72, 62, 65, 66, "]", "[", 72, 62, 65, 64, "]", "[", 72, 62, 65, 63, "]", "[", 72, 62, 65, 61, "]", "[", 72, 62, 65, 60, "]", "[", 72, 62, 64, 71, "]", "[", 72, 62, 64, 70, "]", "[", 72, 62, 64, 69, "]", "[", 72, 62, 64, 68, "]", "[", 72, 62, 64, 67, "]", "[", 72, 62, 64, 66, "]", "[", 72, 62, 64, 65, "]", "[", 72, 62, 64, 63, "]", "[", 72, 62, 64, 61, "]", "[", 72, 62, 64, 60, "]", "[", 72, 62, 63, 71, "]", "[", 72, 62, 63, 70, "]", "[", 72, 62, 63, 69, "]", "[", 72, 62, 63, 68, "]", "[", 72, 62, 63, 67, "]", "[", 72, 62, 63, 66, "]", "[", 72, 62, 63, 65, "]", "[", 72, 62, 63, 64, "]", "[", 72, 62, 63, 61, "]", "[", 72, 62, 63, 60, "]", "[", 72, 62, 61, 71, "]", "[", 72, 62, 61, 70, "]", "[", 72, 62, 61, 69, "]", "[", 72, 62, 61, 68, "]", "[", 72, 62, 61, 67, "]", "[", 72, 62, 61, 66, "]", "[", 72, 62, 61, 65, "]", "[", 72, 62, 61, 64, "]", "[", 72, 62, 61, 63, "]", "[", 72, 62, 61, 60, "]", "[", 72, 62, 60, 71, "]", "[", 72, 62, 60, 70, "]", "[", 72, 62, 60, 69, "]", "[", 72, 62, 60, 68, "]", "[", 72, 62, 60, 67, "]", "[", 72, 62, 60, 66, "]", "[", 72, 62, 60, 65, "]", "[", 72, 62, 60, 64, "]", "[", 72, 62, 60, 63, "]", "[", 72, 62, 60, 61, "]", "[", 72, 61, 71, 70, "]", "[", 72, 61, 71, 69, "]", "[", 72, 61, 71, 68, "]", "[", 72, 61, 71, 67, "]", "[", 72, 61, 71, 66, "]", "[", 72, 61, 71, 65, "]", "[", 72, 61, 71, 64, "]", "[", 72, 61, 71, 63, "]", "[", 72, 61, 71, 62, "]", "[", 72, 61, 71, 60, "]", "[", 72, 61, 70, 71, "]", "[", 72, 61, 70, 69, "]", "[", 72, 61, 70, 68, "]", "[", 72, 61, 70, 67, "]", "[", 72, 61, 70, 66, "]", "[", 72, 61, 70, 65, "]", "[", 72, 61, 70, 64, "]", "[", 72, 61, 70, 63, "]", "[", 72, 61, 70, 62, "]", "[", 72, 61, 70, 60, "]", "[", 72, 61, 69, 71, "]", "[", 72, 61, 69, 70, "]", "[", 72, 61, 69, 68, "]", "[", 72, 61, 69, 67, "]", "[", 72, 61, 69, 66, "]", "[", 72, 61, 69, 65, "]", "[", 72, 61, 69, 64, "]", "[", 72, 61, 69, 63, "]", "[", 72, 61, 69, 62, "]", "[", 72, 61, 69, 60, "]", "[", 72, 61, 68, 71, "]", "[", 72, 61, 68, 70, "]", "[", 72, 61, 68, 69, "]", "[", 72, 61, 68, 67, "]", "[", 72, 61, 68, 66, "]", "[", 72, 61, 68, 65, "]", "[", 72, 61, 68, 64, "]", "[", 72, 61, 68, 63, "]", "[", 72, 61, 68, 62, "]", "[", 72, 61, 68, 60, "]", "[", 72, 61, 67, 71, "]", "[", 72, 61, 67, 70, "]", "[", 72, 61, 67, 69, "]", "[", 72, 61, 67, 68, "]", "[", 72, 61, 67, 66, "]", "[", 72, 61, 67, 65, "]", "[", 72, 61, 67, 64, "]", "[", 72, 61, 67, 63, "]", "[", 72, 61, 67, 62, "]", "[", 72, 61, 67, 60, "]", "[", 72, 61, 66, 71, "]", "[", 72, 61, 66, 70, "]", "[", 72, 61, 66, 69, "]", "[", 72, 61, 66, 68, "]", "[", 72, 61, 66, 67, "]", "[", 72, 61, 66, 65, "]", "[", 72, 61, 66, 64, "]", "[", 72, 61, 66, 63, "]", "[", 72, 61, 66, 62, "]", "[", 72, 61, 66, 60, "]", "[", 72, 61, 65, 71, "]", "[", 72, 61, 65, 70, "]", "[", 72, 61, 65, 69, "]", "[", 72, 61, 65, 68, "]", "[", 72, 61, 65, 67, "]", "[", 72, 61, 65, 66, "]", "[", 72, 61, 65, 64, "]", "[", 72, 61, 65, 63, "]", "[", 72, 61, 65, 62, "]", "[", 72, 61, 65, 60, "]", "[", 72, 61, 64, 71, "]", "[", 72, 61, 64, 70, "]", "[", 72, 61, 64, 69, "]", "[", 72, 61, 64, 68, "]", "[", 72, 61, 64, 67, "]", "[", 72, 61, 64, 66, "]", "[", 72, 61, 64, 65, "]", "[", 72, 61, 64, 63, "]", "[", 72, 61, 64, 62, "]", "[", 72, 61, 64, 60, "]", "[", 72, 61, 63, 71, "]", "[", 72, 61, 63, 70, "]", "[", 72, 61, 63, 69, "]", "[", 72, 61, 63, 68, "]", "[", 72, 61, 63, 67, "]", "[", 72, 61, 63, 66, "]", "[", 72, 61, 63, 65, "]", "[", 72, 61, 63, 64, "]", "[", 72, 61, 63, 62, "]", "[", 72, 61, 63, 60, "]", "[", 72, 61, 62, 71, "]", "[", 72, 61, 62, 70, "]", "[", 72, 61, 62, 69, "]", "[", 72, 61, 62, 68, "]", "[", 72, 61, 62, 67, "]", "[", 72, 61, 62, 66, "]", "[", 72, 61, 62, 65, "]", "[", 72, 61, 62, 64, "]", "[", 72, 61, 62, 63, "]", "[", 72, 61, 62, 60, "]", "[", 72, 61, 60, 71, "]", "[", 72, 61, 60, 70, "]", "[", 72, 61, 60, 69, "]", "[", 72, 61, 60, 68, "]", "[", 72, 61, 60, 67, "]", "[", 72, 61, 60, 66, "]", "[", 72, 61, 60, 65, "]", "[", 72, 61, 60, 64, "]", "[", 72, 61, 60, 63, "]", "[", 72, 61, 60, 62, "]", "[", 72, 60, 71, 70, "]", "[", 72, 60, 71, 69, "]", "[", 72, 60, 71, 68, "]", "[", 72, 60, 71, 67, "]", "[", 72, 60, 71, 66, "]", "[", 72, 60, 71, 65, "]", "[", 72, 60, 71, 64, "]", "[", 72, 60, 71, 63, "]", "[", 72, 60, 71, 62, "]", "[", 72, 60, 71, 61, "]", "[", 72, 60, 70, 71, "]", "[", 72, 60, 70, 69, "]", "[", 72, 60, 70, 68, "]", "[", 72, 60, 70, 67, "]", "[", 72, 60, 70, 66, "]", "[", 72, 60, 70, 65, "]", "[", 72, 60, 70, 64, "]", "[", 72, 60, 70, 63, "]", "[", 72, 60, 70, 62, "]", "[", 72, 60, 70, 61, "]", "[", 72, 60, 69, 71, "]", "[", 72, 60, 69, 70, "]", "[", 72, 60, 69, 68, "]", "[", 72, 60, 69, 67, "]", "[", 72, 60, 69, 66, "]", "[", 72, 60, 69, 65, "]", "[", 72, 60, 69, 64, "]", "[", 72, 60, 69, 63, "]", "[", 72, 60, 69, 62, "]", "[", 72, 60, 69, 61, "]", "[", 72, 60, 68, 71, "]", "[", 72, 60, 68, 70, "]", "[", 72, 60, 68, 69, "]", "[", 72, 60, 68, 67, "]", "[", 72, 60, 68, 66, "]", "[", 72, 60, 68, 65, "]", "[", 72, 60, 68, 64, "]", "[", 72, 60, 68, 63, "]", "[", 72, 60, 68, 62, "]", "[", 72, 60, 68, 61, "]", "[", 72, 60, 67, 71, "]", "[", 72, 60, 67, 70, "]", "[", 72, 60, 67, 69, "]", "[", 72, 60, 67, 68, "]", "[", 72, 60, 67, 66, "]", "[", 72, 60, 67, 65, "]", "[", 72, 60, 67, 64, "]", "[", 72, 60, 67, 63, "]", "[", 72, 60, 67, 62, "]", "[", 72, 60, 67, 61, "]", "[", 72, 60, 66, 71, "]", "[", 72, 60, 66, 70, "]", "[", 72, 60, 66, 69, "]", "[", 72, 60, 66, 68, "]", "[", 72, 60, 66, 67, "]", "[", 72, 60, 66, 65, "]", "[", 72, 60, 66, 64, "]", "[", 72, 60, 66, 63, "]", "[", 72, 60, 66, 62, "]", "[", 72, 60, 66, 61, "]", "[", 72, 60, 65, 71, "]", "[", 72, 60, 65, 70, "]", "[", 72, 60, 65, 69, "]", "[", 72, 60, 65, 68, "]", "[", 72, 60, 65, 67, "]", "[", 72, 60, 65, 66, "]", "[", 72, 60, 65, 64, "]", "[", 72, 60, 65, 63, "]", "[", 72, 60, 65, 62, "]", "[", 72, 60, 65, 61, "]", "[", 72, 60, 64, 71, "]", "[", 72, 60, 64, 70, "]", "[", 72, 60, 64, 69, "]", "[", 72, 60, 64, 68, "]", "[", 72, 60, 64, 67, "]", "[", 72, 60, 64, 66, "]", "[", 72, 60, 64, 65, "]", "[", 72, 60, 64, 63, "]", "[", 72, 60, 64, 62, "]", "[", 72, 60, 64, 61, "]", "[", 72, 60, 63, 71, "]", "[", 72, 60, 63, 70, "]", "[", 72, 60, 63, 69, "]", "[", 72, 60, 63, 68, "]", "[", 72, 60, 63, 67, "]", "[", 72, 60, 63, 66, "]", "[", 72, 60, 63, 65, "]", "[", 72, 60, 63, 64, "]", "[", 72, 60, 63, 62, "]", "[", 72, 60, 63, 61, "]", "[", 72, 60, 62, 71, "]", "[", 72, 60, 62, 70, "]", "[", 72, 60, 62, 69, "]", "[", 72, 60, 62, 68, "]", "[", 72, 60, 62, 67, "]", "[", 72, 60, 62, 66, "]", "[", 72, 60, 62, 65, "]", "[", 72, 60, 62, 64, "]", "[", 72, 60, 62, 63, "]", "[", 72, 60, 62, 61, "]", "[", 72, 60, 61, 71, "]", "[", 72, 60, 61, 70, "]", "[", 72, 60, 61, 69, "]", "[", 72, 60, 61, 68, "]", "[", 72, 60, 61, 67, "]", "[", 72, 60, 61, 66, "]", "[", 72, 60, 61, 65, "]", "[", 72, 60, 61, 64, "]", "[", 72, 60, 61, 63, "]", "[", 72, 60, 61, 62, "]", "[", 71, 72, 70, 69, "]", "[", 71, 72, 70, 68, "]", "[", 71, 72, 70, 67, "]", "[", 71, 72, 70, 66, "]", "[", 71, 72, 70, 65, "]", "[", 71, 72, 70, 64, "]", "[", 71, 72, 70, 63, "]", "[", 71, 72, 70, 62, "]", "[", 71, 72, 70, 61, "]", "[", 71, 72, 70, 60, "]", "[", 71, 72, 69, 70, "]", "[", 71, 72, 69, 68, "]", "[", 71, 72, 69, 67, "]", "[", 71, 72, 69, 66, "]", "[", 71, 72, 69, 65, "]", "[", 71, 72, 69, 64, "]", "[", 71, 72, 69, 63, "]", "[", 71, 72, 69, 62, "]", "[", 71, 72, 69, 61, "]", "[", 71, 72, 69, 60, "]", "[", 71, 72, 68, 70, "]", "[", 71, 72, 68, 69, "]", "[", 71, 72, 68, 67, "]", "[", 71, 72, 68, 66, "]", "[", 71, 72, 68, 65, "]", "[", 71, 72, 68, 64, "]", "[", 71, 72, 68, 63, "]", "[", 71, 72, 68, 62, "]", "[", 71, 72, 68, 61, "]", "[", 71, 72, 68, 60, "]", "[", 71, 72, 67, 70, "]", "[", 71, 72, 67, 69, "]", "[", 71, 72, 67, 68, "]", "[", 71, 72, 67, 66, "]", "[", 71, 72, 67, 65, "]", "[", 71, 72, 67, 64, "]", "[", 71, 72, 67, 63, "]", "[", 71, 72, 67, 62, "]", "[", 71, 72, 67, 61, "]", "[", 71, 72, 67, 60, "]", "[", 71, 72, 66, 70, "]", "[", 71, 72, 66, 69, "]", "[", 71, 72, 66, 68, "]", "[", 71, 72, 66, 67, "]", "[", 71, 72, 66, 65, "]", "[", 71 ],
													"reg_data_0000000002" : [ 72, 66, 64, "]", "[", 71, 72, 66, 63, "]", "[", 71, 72, 66, 62, "]", "[", 71, 72, 66, 61, "]", "[", 71, 72, 66, 60, "]", "[", 71, 72, 65, 70, "]", "[", 71, 72, 65, 69, "]", "[", 71, 72, 65, 68, "]", "[", 71, 72, 65, 67, "]", "[", 71, 72, 65, 66, "]", "[", 71, 72, 65, 64, "]", "[", 71, 72, 65, 63, "]", "[", 71, 72, 65, 62, "]", "[", 71, 72, 65, 61, "]", "[", 71, 72, 65, 60, "]", "[", 71, 72, 64, 70, "]", "[", 71, 72, 64, 69, "]", "[", 71, 72, 64, 68, "]", "[", 71, 72, 64, 67, "]", "[", 71, 72, 64, 66, "]", "[", 71, 72, 64, 65, "]", "[", 71, 72, 64, 63, "]", "[", 71, 72, 64, 62, "]", "[", 71, 72, 64, 61, "]", "[", 71, 72, 64, 60, "]", "[", 71, 72, 63, 70, "]", "[", 71, 72, 63, 69, "]", "[", 71, 72, 63, 68, "]", "[", 71, 72, 63, 67, "]", "[", 71, 72, 63, 66, "]", "[", 71, 72, 63, 65, "]", "[", 71, 72, 63, 64, "]", "[", 71, 72, 63, 62, "]", "[", 71, 72, 63, 61, "]", "[", 71, 72, 63, 60, "]", "[", 71, 72, 62, 70, "]", "[", 71, 72, 62, 69, "]", "[", 71, 72, 62, 68, "]", "[", 71, 72, 62, 67, "]", "[", 71, 72, 62, 66, "]", "[", 71, 72, 62, 65, "]", "[", 71, 72, 62, 64, "]", "[", 71, 72, 62, 63, "]", "[", 71, 72, 62, 61, "]", "[", 71, 72, 62, 60, "]", "[", 71, 72, 61, 70, "]", "[", 71, 72, 61, 69, "]", "[", 71, 72, 61, 68, "]", "[", 71, 72, 61, 67, "]", "[", 71, 72, 61, 66, "]", "[", 71, 72, 61, 65, "]", "[", 71, 72, 61, 64, "]", "[", 71, 72, 61, 63, "]", "[", 71, 72, 61, 62, "]", "[", 71, 72, 61, 60, "]", "[", 71, 72, 60, 70, "]", "[", 71, 72, 60, 69, "]", "[", 71, 72, 60, 68, "]", "[", 71, 72, 60, 67, "]", "[", 71, 72, 60, 66, "]", "[", 71, 72, 60, 65, "]", "[", 71, 72, 60, 64, "]", "[", 71, 72, 60, 63, "]", "[", 71, 72, 60, 62, "]", "[", 71, 72, 60, 61, "]", "[", 71, 70, 72, 69, "]", "[", 71, 70, 72, 68, "]", "[", 71, 70, 72, 67, "]", "[", 71, 70, 72, 66, "]", "[", 71, 70, 72, 65, "]", "[", 71, 70, 72, 64, "]", "[", 71, 70, 72, 63, "]", "[", 71, 70, 72, 62, "]", "[", 71, 70, 72, 61, "]", "[", 71, 70, 72, 60, "]", "[", 71, 70, 69, 72, "]", "[", 71, 70, 69, 68, "]", "[", 71, 70, 69, 67, "]", "[", 71, 70, 69, 66, "]", "[", 71, 70, 69, 65, "]", "[", 71, 70, 69, 64, "]", "[", 71, 70, 69, 63, "]", "[", 71, 70, 69, 62, "]", "[", 71, 70, 69, 61, "]", "[", 71, 70, 69, 60, "]", "[", 71, 70, 68, 72, "]", "[", 71, 70, 68, 69, "]", "[", 71, 70, 68, 67, "]", "[", 71, 70, 68, 66, "]", "[", 71, 70, 68, 65, "]", "[", 71, 70, 68, 64, "]", "[", 71, 70, 68, 63, "]", "[", 71, 70, 68, 62, "]", "[", 71, 70, 68, 61, "]", "[", 71, 70, 68, 60, "]", "[", 71, 70, 67, 72, "]", "[", 71, 70, 67, 69, "]", "[", 71, 70, 67, 68, "]", "[", 71, 70, 67, 66, "]", "[", 71, 70, 67, 65, "]", "[", 71, 70, 67, 64, "]", "[", 71, 70, 67, 63, "]", "[", 71, 70, 67, 62, "]", "[", 71, 70, 67, 61, "]", "[", 71, 70, 67, 60, "]", "[", 71, 70, 66, 72, "]", "[", 71, 70, 66, 69, "]", "[", 71, 70, 66, 68, "]", "[", 71, 70, 66, 67, "]", "[", 71, 70, 66, 65, "]", "[", 71, 70, 66, 64, "]", "[", 71, 70, 66, 63, "]", "[", 71, 70, 66, 62, "]", "[", 71, 70, 66, 61, "]", "[", 71, 70, 66, 60, "]", "[", 71, 70, 65, 72, "]", "[", 71, 70, 65, 69, "]", "[", 71, 70, 65, 68, "]", "[", 71, 70, 65, 67, "]", "[", 71, 70, 65, 66, "]", "[", 71, 70, 65, 64, "]", "[", 71, 70, 65, 63, "]", "[", 71, 70, 65, 62, "]", "[", 71, 70, 65, 61, "]", "[", 71, 70, 65, 60, "]", "[", 71, 70, 64, 72, "]", "[", 71, 70, 64, 69, "]", "[", 71, 70, 64, 68, "]", "[", 71, 70, 64, 67, "]", "[", 71, 70, 64, 66, "]", "[", 71, 70, 64, 65, "]", "[", 71, 70, 64, 63, "]", "[", 71, 70, 64, 62, "]", "[", 71, 70, 64, 61, "]", "[", 71, 70, 64, 60, "]", "[", 71, 70, 63, 72, "]", "[", 71, 70, 63, 69, "]", "[", 71, 70, 63, 68, "]", "[", 71, 70, 63, 67, "]", "[", 71, 70, 63, 66, "]", "[", 71, 70, 63, 65, "]", "[", 71, 70, 63, 64, "]", "[", 71, 70, 63, 62, "]", "[", 71, 70, 63, 61, "]", "[", 71, 70, 63, 60, "]", "[", 71, 70, 62, 72, "]", "[", 71, 70, 62, 69, "]", "[", 71, 70, 62, 68, "]", "[", 71, 70, 62, 67, "]", "[", 71, 70, 62, 66, "]", "[", 71, 70, 62, 65, "]", "[", 71, 70, 62, 64, "]", "[", 71, 70, 62, 63, "]", "[", 71, 70, 62, 61, "]", "[", 71, 70, 62, 60, "]", "[", 71, 70, 61, 72, "]", "[", 71, 70, 61, 69, "]", "[", 71, 70, 61, 68, "]", "[", 71, 70, 61, 67, "]", "[", 71, 70, 61, 66, "]", "[", 71, 70, 61, 65, "]", "[", 71, 70, 61, 64, "]", "[", 71, 70, 61, 63, "]", "[", 71, 70, 61, 62, "]", "[", 71, 70, 61, 60, "]", "[", 71, 70, 60, 72, "]", "[", 71, 70, 60, 69, "]", "[", 71, 70, 60, 68, "]", "[", 71, 70, 60, 67, "]", "[", 71, 70, 60, 66, "]", "[", 71, 70, 60, 65, "]", "[", 71, 70, 60, 64, "]", "[", 71, 70, 60, 63, "]", "[", 71, 70, 60, 62, "]", "[", 71, 70, 60, 61, "]", "[", 71, 69, 72, 70, "]", "[", 71, 69, 72, 68, "]", "[", 71, 69, 72, 67, "]", "[", 71, 69, 72, 66, "]", "[", 71, 69, 72, 65, "]", "[", 71, 69, 72, 64, "]", "[", 71, 69, 72, 63, "]", "[", 71, 69, 72, 62, "]", "[", 71, 69, 72, 61, "]", "[", 71, 69, 72, 60, "]", "[", 71, 69, 70, 72, "]", "[", 71, 69, 70, 68, "]", "[", 71, 69, 70, 67, "]", "[", 71, 69, 70, 66, "]", "[", 71, 69, 70, 65, "]", "[", 71, 69, 70, 64, "]", "[", 71, 69, 70, 63, "]", "[", 71, 69, 70, 62, "]", "[", 71, 69, 70, 61, "]", "[", 71, 69, 70, 60, "]", "[", 71, 69, 68, 72, "]", "[", 71, 69, 68, 70, "]", "[", 71, 69, 68, 67, "]", "[", 71, 69, 68, 66, "]", "[", 71, 69, 68, 65, "]", "[", 71, 69, 68, 64, "]", "[", 71, 69, 68, 63, "]", "[", 71, 69, 68, 62, "]", "[", 71, 69, 68, 61, "]", "[", 71, 69, 68, 60, "]", "[", 71, 69, 67, 72, "]", "[", 71, 69, 67, 70, "]", "[", 71, 69, 67, 68, "]", "[", 71, 69, 67, 66, "]", "[", 71, 69, 67, 65, "]", "[", 71, 69, 67, 64, "]", "[", 71, 69, 67, 63, "]", "[", 71, 69, 67, 62, "]", "[", 71, 69, 67, 61, "]", "[", 71, 69, 67, 60, "]", "[", 71, 69, 66, 72, "]", "[", 71, 69, 66, 70, "]", "[", 71, 69, 66, 68, "]", "[", 71, 69, 66, 67, "]", "[", 71, 69, 66, 65, "]", "[", 71, 69, 66, 64, "]", "[", 71, 69, 66, 63, "]", "[", 71, 69, 66, 62, "]", "[", 71, 69, 66, 61, "]", "[", 71, 69, 66, 60, "]", "[", 71, 69, 65, 72, "]", "[", 71, 69, 65, 70, "]", "[", 71, 69, 65, 68, "]", "[", 71, 69, 65, 67, "]", "[", 71, 69, 65, 66, "]", "[", 71, 69, 65, 64, "]", "[", 71, 69, 65, 63, "]", "[", 71, 69, 65, 62, "]", "[", 71, 69, 65, 61, "]", "[", 71, 69, 65, 60, "]", "[", 71, 69, 64, 72, "]", "[", 71, 69, 64, 70, "]", "[", 71, 69, 64, 68, "]", "[", 71, 69, 64, 67, "]", "[", 71, 69, 64, 66, "]", "[", 71, 69, 64, 65, "]", "[", 71, 69, 64, 63, "]", "[", 71, 69, 64, 62, "]", "[", 71, 69, 64, 61, "]", "[", 71, 69, 64, 60, "]", "[", 71, 69, 63, 72, "]", "[", 71, 69, 63, 70, "]", "[", 71, 69, 63, 68, "]", "[", 71, 69, 63, 67, "]", "[", 71, 69, 63, 66, "]", "[", 71, 69, 63, 65, "]", "[", 71, 69, 63, 64, "]", "[", 71, 69, 63, 62, "]", "[", 71, 69, 63, 61, "]", "[", 71, 69, 63, 60, "]", "[", 71, 69, 62, 72, "]", "[", 71, 69, 62, 70, "]", "[", 71, 69, 62, 68, "]", "[", 71, 69, 62, 67, "]", "[", 71, 69, 62, 66, "]", "[", 71, 69, 62, 65, "]", "[", 71, 69, 62, 64, "]", "[", 71, 69, 62, 63, "]", "[", 71, 69, 62, 61, "]", "[", 71, 69, 62, 60, "]", "[", 71, 69, 61, 72, "]", "[", 71, 69, 61, 70, "]", "[", 71, 69, 61, 68, "]", "[", 71, 69, 61, 67, "]", "[", 71, 69, 61, 66, "]", "[", 71, 69, 61, 65, "]", "[", 71, 69, 61, 64, "]", "[", 71, 69, 61, 63, "]", "[", 71, 69, 61, 62, "]", "[", 71, 69, 61, 60, "]", "[", 71, 69, 60, 72, "]", "[", 71, 69, 60, 70, "]", "[", 71, 69, 60, 68, "]", "[", 71, 69, 60, 67, "]", "[", 71, 69, 60, 66, "]", "[", 71, 69, 60, 65, "]", "[", 71, 69, 60, 64, "]", "[", 71, 69, 60, 63, "]", "[", 71, 69, 60, 62, "]", "[", 71, 69, 60, 61, "]", "[", 71, 68, 72, 70, "]", "[", 71, 68, 72, 69, "]", "[", 71, 68, 72, 67, "]", "[", 71, 68, 72, 66, "]", "[", 71, 68, 72, 65, "]", "[", 71, 68, 72, 64, "]", "[", 71, 68, 72, 63, "]", "[", 71, 68, 72, 62, "]", "[", 71, 68, 72, 61, "]", "[", 71, 68, 72, 60, "]", "[", 71, 68, 70, 72, "]", "[", 71, 68, 70, 69, "]", "[", 71, 68, 70, 67, "]", "[", 71, 68, 70, 66, "]", "[", 71, 68, 70, 65, "]", "[", 71, 68, 70, 64, "]", "[", 71, 68, 70, 63, "]", "[", 71, 68, 70, 62, "]", "[", 71, 68, 70, 61, "]", "[", 71, 68, 70, 60, "]", "[", 71, 68, 69, 72, "]", "[", 71, 68, 69, 70, "]", "[", 71, 68, 69, 67, "]", "[", 71, 68, 69, 66, "]", "[", 71, 68, 69, 65, "]", "[", 71, 68, 69, 64, "]", "[", 71, 68, 69, 63, "]", "[", 71, 68, 69, 62, "]", "[", 71, 68, 69, 61, "]", "[", 71, 68, 69, 60, "]", "[", 71, 68, 67, 72, "]", "[", 71, 68, 67, 70, "]", "[", 71, 68, 67, 69, "]", "[", 71, 68, 67, 66, "]", "[", 71, 68, 67, 65, "]", "[", 71, 68, 67, 64, "]", "[", 71, 68, 67, 63, "]", "[", 71, 68, 67, 62, "]", "[", 71, 68, 67, 61, "]", "[", 71, 68, 67, 60, "]", "[", 71, 68, 66, 72, "]", "[", 71, 68, 66, 70, "]", "[", 71, 68, 66, 69, "]", "[", 71, 68, 66, 67, "]", "[", 71, 68, 66, 65, "]", "[", 71, 68, 66, 64, "]", "[", 71, 68, 66, 63, "]", "[", 71, 68, 66, 62, "]", "[", 71, 68, 66, 61, "]", "[", 71, 68, 66, 60, "]", "[", 71, 68, 65, 72, "]", "[", 71, 68, 65, 70, "]", "[", 71, 68, 65, 69, "]", "[", 71, 68, 65, 67, "]", "[", 71, 68, 65, 66, "]", "[", 71, 68, 65, 64, "]", "[", 71, 68, 65, 63, "]", "[", 71, 68, 65, 62, "]", "[", 71, 68, 65, 61, "]", "[", 71, 68, 65, 60, "]", "[", 71, 68, 64, 72, "]", "[", 71, 68, 64, 70, "]", "[", 71, 68, 64, 69, "]", "[", 71, 68, 64, 67, "]", "[", 71, 68, 64, 66, "]", "[", 71, 68, 64, 65, "]", "[", 71, 68, 64, 63, "]", "[", 71, 68, 64, 62, "]", "[", 71, 68, 64, 61, "]", "[", 71, 68, 64, 60, "]", "[", 71, 68, 63, 72, "]", "[", 71, 68, 63, 70, "]", "[", 71, 68, 63, 69, "]", "[", 71, 68, 63, 67, "]", "[", 71, 68, 63, 66, "]", "[", 71, 68, 63, 65, "]", "[", 71, 68, 63, 64, "]", "[", 71, 68, 63, 62, "]", "[", 71, 68, 63, 61, "]", "[", 71, 68, 63, 60, "]", "[", 71, 68, 62, 72, "]", "[", 71, 68, 62, 70, "]", "[", 71, 68, 62, 69, "]", "[", 71, 68, 62, 67, "]", "[", 71, 68, 62, 66, "]", "[", 71, 68, 62, 65, "]", "[", 71, 68, 62, 64, "]", "[", 71, 68, 62, 63, "]", "[", 71, 68, 62, 61, "]", "[", 71, 68, 62, 60, "]", "[", 71, 68, 61, 72, "]", "[", 71, 68, 61, 70, "]", "[", 71, 68, 61, 69, "]", "[", 71, 68, 61, 67, "]", "[", 71, 68, 61, 66, "]", "[", 71, 68, 61, 65, "]", "[", 71, 68, 61, 64, "]", "[", 71, 68, 61, 63, "]", "[", 71, 68, 61, 62, "]", "[", 71, 68, 61, 60, "]", "[", 71, 68, 60, 72, "]", "[", 71, 68, 60, 70, "]", "[", 71, 68, 60, 69, "]", "[", 71, 68, 60, 67, "]", "[", 71, 68, 60, 66, "]", "[", 71, 68, 60, 65, "]", "[", 71, 68, 60, 64, "]", "[", 71, 68, 60, 63, "]", "[", 71, 68, 60, 62, "]", "[", 71, 68, 60, 61, "]", "[", 71, 67, 72, 70, "]", "[", 71, 67, 72, 69, "]", "[", 71, 67, 72, 68, "]", "[", 71, 67, 72, 66, "]", "[", 71, 67, 72, 65, "]", "[", 71, 67, 72, 64, "]", "[", 71, 67, 72, 63, "]", "[", 71, 67, 72, 62, "]", "[", 71, 67, 72, 61, "]", "[", 71, 67, 72, 60, "]", "[", 71, 67, 70, 72, "]", "[", 71, 67, 70, 69, "]", "[", 71, 67, 70, 68, "]", "[", 71, 67, 70, 66, "]", "[", 71, 67, 70, 65, "]", "[", 71, 67, 70, 64, "]", "[", 71, 67, 70, 63, "]", "[", 71, 67, 70, 62, "]", "[", 71, 67, 70, 61, "]", "[", 71, 67, 70, 60, "]", "[", 71, 67, 69, 72, "]", "[", 71, 67, 69, 70, "]", "[", 71, 67, 69, 68, "]", "[", 71, 67, 69, 66, "]", "[", 71, 67, 69, 65, "]", "[", 71, 67, 69, 64, "]", "[", 71, 67, 69, 63, "]", "[", 71, 67, 69, 62, "]", "[", 71, 67, 69, 61, "]", "[", 71, 67, 69, 60, "]", "[", 71, 67, 68, 72, "]", "[", 71, 67, 68, 70, "]", "[", 71, 67, 68, 69, "]", "[", 71, 67, 68, 66, "]", "[", 71, 67, 68, 65, "]", "[", 71, 67, 68, 64, "]", "[", 71, 67, 68, 63, "]", "[", 71, 67, 68, 62, "]", "[", 71, 67, 68, 61, "]", "[", 71, 67, 68, 60, "]", "[", 71, 67, 66, 72, "]", "[", 71, 67, 66, 70, "]", "[", 71, 67, 66, 69, "]", "[", 71, 67, 66, 68, "]", "[", 71, 67, 66, 65, "]", "[", 71, 67, 66, 64, "]", "[", 71, 67, 66, 63, "]", "[", 71, 67, 66, 62, "]", "[", 71, 67, 66, 61, "]", "[", 71, 67, 66, 60, "]", "[", 71, 67, 65, 72, "]", "[", 71, 67, 65, 70, "]", "[", 71, 67, 65, 69, "]", "[", 71, 67, 65, 68, "]", "[", 71, 67, 65, 66, "]", "[", 71, 67, 65, 64, "]", "[", 71, 67, 65, 63, "]", "[", 71, 67, 65, 62, "]", "[", 71, 67, 65, 61, "]", "[", 71, 67, 65, 60, "]", "[", 71, 67, 64, 72, "]", "[", 71, 67, 64, 70, "]", "[", 71, 67, 64, 69, "]", "[", 71, 67, 64, 68, "]", "[", 71, 67, 64, 66, "]", "[", 71, 67, 64, 65, "]", "[", 71, 67, 64, 63, "]", "[", 71, 67, 64, 62, "]", "[", 71, 67, 64, 61, "]", "[", 71, 67, 64, 60, "]", "[", 71, 67, 63, 72, "]", "[", 71, 67, 63, 70, "]", "[", 71, 67, 63, 69, "]", "[", 71, 67, 63, 68, "]", "[", 71, 67, 63, 66, "]", "[", 71, 67, 63, 65, "]", "[", 71, 67, 63, 64, "]", "[", 71, 67, 63, 62, "]", "[", 71, 67, 63, 61, "]", "[", 71, 67, 63, 60, "]", "[", 71, 67, 62, 72, "]", "[", 71, 67, 62, 70, "]", "[", 71, 67, 62, 69, "]", "[", 71, 67, 62, 68, "]", "[", 71, 67, 62, 66, "]", "[", 71, 67, 62, 65, "]", "[", 71, 67, 62, 64, "]", "[", 71, 67, 62, 63, "]", "[", 71, 67, 62, 61, "]", "[", 71, 67, 62, 60, "]", "[", 71, 67, 61, 72, "]", "[", 71, 67, 61, 70, "]", "[", 71, 67, 61, 69, "]", "[", 71, 67, 61, 68, "]", "[", 71, 67, 61, 66, "]", "[", 71, 67, 61, 65, "]", "[", 71, 67, 61, 64, "]", "[", 71, 67, 61, 63, "]", "[", 71, 67, 61, 62, "]", "[", 71, 67, 61, 60, "]", "[", 71, 67, 60, 72, "]", "[", 71, 67, 60, 70, "]", "[", 71, 67, 60, 69, "]", "[", 71, 67, 60, 68, "]", "[", 71, 67, 60, 66, "]", "[", 71, 67, 60, 65, "]", "[", 71, 67, 60, 64, "]", "[", 71, 67, 60, 63, "]", "[", 71, 67, 60, 62, "]", "[", 71, 67, 60, 61, "]", "[", 71, 66, 72, 70, "]", "[", 71, 66, 72, 69, "]", "[", 71, 66, 72, 68, "]", "[", 71, 66, 72, 67, "]", "[", 71, 66, 72, 65, "]", "[", 71, 66, 72, 64, "]", "[", 71, 66, 72, 63, "]", "[", 71, 66, 72, 62, "]", "[", 71, 66, 72, 61, "]", "[", 71, 66, 72, 60, "]", "[", 71, 66, 70, 72, "]", "[", 71, 66, 70, 69, "]", "[", 71, 66, 70, 68, "]", "[", 71, 66, 70, 67, "]", "[", 71, 66, 70, 65, "]", "[", 71, 66, 70, 64, "]", "[", 71, 66, 70, 63, "]", "[", 71, 66, 70, 62, "]", "[", 71, 66, 70, 61, "]", "[", 71, 66, 70, 60, "]", "[", 71, 66, 69, 72, "]", "[", 71, 66, 69, 70, "]", "[", 71, 66, 69, 68, "]", "[", 71, 66, 69, 67, "]", "[", 71, 66, 69, 65, "]", "[", 71, 66, 69, 64, "]", "[", 71, 66, 69, 63, "]", "[", 71, 66, 69, 62, "]", "[", 71, 66, 69, 61, "]", "[", 71, 66, 69, 60, "]", "[", 71, 66, 68, 72, "]", "[", 71, 66, 68, 70, "]", "[", 71, 66, 68, 69, "]", "[", 71, 66, 68, 67, "]", "[", 71, 66, 68, 65, "]", "[", 71, 66, 68, 64, "]", "[", 71, 66, 68, 63, "]", "[", 71, 66, 68, 62, "]", "[", 71, 66, 68, 61, "]", "[", 71, 66, 68, 60, "]", "[", 71, 66, 67, 72, "]", "[", 71, 66, 67, 70, "]", "[", 71, 66, 67, 69, "]", "[", 71, 66, 67, 68, "]", "[", 71, 66, 67, 65, "]", "[", 71, 66, 67, 64, "]", "[", 71, 66, 67, 63, "]", "[", 71, 66, 67, 62, "]", "[", 71, 66, 67, 61, "]", "[", 71, 66, 67, 60, "]", "[", 71, 66, 65, 72, "]", "[", 71, 66, 65, 70, "]", "[", 71, 66, 65, 69, "]", "[", 71, 66, 65, 68, "]", "[", 71, 66, 65, 67, "]", "[", 71, 66, 65, 64, "]", "[", 71, 66, 65, 63, "]", "[", 71, 66, 65, 62, "]", "[", 71, 66, 65, 61, "]", "[", 71, 66, 65, 60, "]", "[", 71, 66, 64, 72, "]", "[", 71, 66, 64, 70, "]", "[", 71, 66, 64, 69, "]", "[", 71, 66, 64, 68, "]", "[", 71, 66, 64, 67, "]", "[", 71, 66, 64, 65, "]", "[", 71, 66, 64, 63, "]", "[", 71, 66, 64, 62, "]", "[", 71, 66, 64, 61, "]", "[", 71, 66, 64, 60, "]", "[", 71, 66, 63, 72, "]", "[", 71, 66, 63, 70, "]", "[", 71, 66, 63, 69, "]", "[", 71, 66, 63, 68, "]", "[", 71, 66, 63, 67, "]", "[", 71, 66, 63, 65, "]", "[", 71, 66, 63, 64, "]", "[", 71, 66, 63, 62, "]", "[", 71, 66, 63, 61, "]", "[", 71, 66, 63, 60, "]", "[", 71, 66, 62, 72, "]", "[", 71, 66, 62, 70, "]", "[", 71, 66, 62, 69, "]", "[", 71, 66, 62, 68, "]", "[", 71, 66, 62, 67, "]", "[", 71, 66, 62, 65, "]", "[", 71, 66, 62, 64, "]", "[", 71, 66, 62, 63, "]", "[", 71, 66, 62, 61, "]", "[", 71, 66, 62, 60, "]", "[", 71, 66, 61, 72, "]", "[", 71, 66, 61, 70, "]", "[", 71, 66, 61, 69, "]", "[", 71, 66, 61, 68, "]", "[", 71, 66, 61, 67, "]", "[", 71, 66, 61, 65, "]", "[", 71, 66, 61, 64, "]", "[", 71, 66, 61, 63, "]", "[", 71, 66, 61, 62, "]", "[", 71, 66, 61, 60, "]", "[", 71, 66, 60, 72, "]", "[", 71, 66, 60, 70, "]", "[", 71, 66, 60, 69, "]", "[", 71, 66, 60, 68, "]", "[", 71, 66, 60, 67, "]", "[", 71, 66, 60, 65, "]", "[", 71, 66, 60, 64, "]", "[", 71, 66, 60, 63, "]", "[", 71, 66, 60, 62, "]", "[", 71, 66, 60, 61, "]", "[", 71, 65, 72, 70, "]", "[", 71, 65, 72, 69, "]", "[", 71, 65, 72, 68, "]", "[", 71, 65, 72, 67, "]", "[", 71, 65, 72, 66, "]", "[", 71, 65, 72, 64, "]", "[", 71, 65, 72, 63, "]", "[", 71, 65, 72, 62, "]", "[", 71, 65, 72, 61, "]", "[", 71, 65, 72, 60, "]", "[", 71, 65, 70, 72, "]", "[", 71, 65, 70, 69, "]", "[", 71, 65, 70, 68, "]", "[", 71, 65, 70, 67, "]", "[", 71, 65, 70, 66, "]", "[", 71, 65, 70, 64, "]", "[", 71, 65, 70, 63, "]", "[", 71, 65, 70, 62, "]", "[", 71, 65, 70, 61, "]", "[", 71, 65, 70, 60, "]", "[", 71, 65, 69, 72, "]", "[", 71, 65, 69, 70, "]", "[", 71, 65, 69, 68, "]", "[", 71, 65, 69, 67, "]", "[", 71, 65, 69, 66, "]", "[", 71, 65, 69, 64, "]", "[", 71, 65, 69, 63, "]", "[", 71, 65, 69, 62, "]", "[", 71, 65, 69, 61, "]", "[", 71, 65, 69, 60, "]", "[", 71, 65, 68, 72, "]", "[", 71, 65, 68, 70, "]", "[", 71, 65, 68, 69, "]", "[", 71, 65, 68, 67, "]", "[", 71, 65, 68, 66, "]", "[", 71, 65, 68, 64, "]", "[", 71, 65, 68, 63, "]", "[", 71, 65, 68, 62, "]", "[", 71, 65, 68, 61, "]", "[", 71, 65, 68, 60, "]", "[", 71, 65, 67, 72, "]", "[", 71, 65, 67, 70, "]", "[", 71, 65, 67, 69, "]", "[", 71, 65, 67, 68, "]", "[", 71, 65, 67, 66, "]", "[", 71, 65, 67, 64, "]", "[", 71, 65, 67, 63, "]", "[", 71, 65, 67, 62, "]", "[", 71, 65, 67, 61, "]", "[", 71, 65, 67, 60, "]", "[", 71, 65, 66, 72, "]", "[", 71, 65, 66, 70, "]", "[", 71, 65, 66, 69, "]", "[", 71, 65, 66, 68, "]", "[", 71, 65, 66, 67, "]", "[", 71, 65, 66, 64, "]", "[", 71, 65, 66, 63, "]", "[", 71, 65, 66, 62, "]", "[", 71, 65, 66, 61, "]", "[", 71, 65, 66, 60, "]", "[", 71, 65, 64, 72, "]", "[", 71, 65, 64, 70, "]", "[", 71, 65, 64, 69, "]", "[", 71, 65, 64, 68, "]", "[", 71, 65, 64, 67, "]", "[", 71, 65, 64, 66, "]", "[", 71, 65, 64, 63, "]", "[", 71, 65, 64, 62, "]" ],
													"reg_data_0000000003" : [ "[", 71, 65, 64, 61, "]", "[", 71, 65, 64, 60, "]", "[", 71, 65, 63, 72, "]", "[", 71, 65, 63, 70, "]", "[", 71, 65, 63, 69, "]", "[", 71, 65, 63, 68, "]", "[", 71, 65, 63, 67, "]", "[", 71, 65, 63, 66, "]", "[", 71, 65, 63, 64, "]", "[", 71, 65, 63, 62, "]", "[", 71, 65, 63, 61, "]", "[", 71, 65, 63, 60, "]", "[", 71, 65, 62, 72, "]", "[", 71, 65, 62, 70, "]", "[", 71, 65, 62, 69, "]", "[", 71, 65, 62, 68, "]", "[", 71, 65, 62, 67, "]", "[", 71, 65, 62, 66, "]", "[", 71, 65, 62, 64, "]", "[", 71, 65, 62, 63, "]", "[", 71, 65, 62, 61, "]", "[", 71, 65, 62, 60, "]", "[", 71, 65, 61, 72, "]", "[", 71, 65, 61, 70, "]", "[", 71, 65, 61, 69, "]", "[", 71, 65, 61, 68, "]", "[", 71, 65, 61, 67, "]", "[", 71, 65, 61, 66, "]", "[", 71, 65, 61, 64, "]", "[", 71, 65, 61, 63, "]", "[", 71, 65, 61, 62, "]", "[", 71, 65, 61, 60, "]", "[", 71, 65, 60, 72, "]", "[", 71, 65, 60, 70, "]", "[", 71, 65, 60, 69, "]", "[", 71, 65, 60, 68, "]", "[", 71, 65, 60, 67, "]", "[", 71, 65, 60, 66, "]", "[", 71, 65, 60, 64, "]", "[", 71, 65, 60, 63, "]", "[", 71, 65, 60, 62, "]", "[", 71, 65, 60, 61, "]", "[", 71, 64, 72, 70, "]", "[", 71, 64, 72, 69, "]", "[", 71, 64, 72, 68, "]", "[", 71, 64, 72, 67, "]", "[", 71, 64, 72, 66, "]", "[", 71, 64, 72, 65, "]", "[", 71, 64, 72, 63, "]", "[", 71, 64, 72, 62, "]", "[", 71, 64, 72, 61, "]", "[", 71, 64, 72, 60, "]", "[", 71, 64, 70, 72, "]", "[", 71, 64, 70, 69, "]", "[", 71, 64, 70, 68, "]", "[", 71, 64, 70, 67, "]", "[", 71, 64, 70, 66, "]", "[", 71, 64, 70, 65, "]", "[", 71, 64, 70, 63, "]", "[", 71, 64, 70, 62, "]", "[", 71, 64, 70, 61, "]", "[", 71, 64, 70, 60, "]", "[", 71, 64, 69, 72, "]", "[", 71, 64, 69, 70, "]", "[", 71, 64, 69, 68, "]", "[", 71, 64, 69, 67, "]", "[", 71, 64, 69, 66, "]", "[", 71, 64, 69, 65, "]", "[", 71, 64, 69, 63, "]", "[", 71, 64, 69, 62, "]", "[", 71, 64, 69, 61, "]", "[", 71, 64, 69, 60, "]", "[", 71, 64, 68, 72, "]", "[", 71, 64, 68, 70, "]", "[", 71, 64, 68, 69, "]", "[", 71, 64, 68, 67, "]", "[", 71, 64, 68, 66, "]", "[", 71, 64, 68, 65, "]", "[", 71, 64, 68, 63, "]", "[", 71, 64, 68, 62, "]", "[", 71, 64, 68, 61, "]", "[", 71, 64, 68, 60, "]", "[", 71, 64, 67, 72, "]", "[", 71, 64, 67, 70, "]", "[", 71, 64, 67, 69, "]", "[", 71, 64, 67, 68, "]", "[", 71, 64, 67, 66, "]", "[", 71, 64, 67, 65, "]", "[", 71, 64, 67, 63, "]", "[", 71, 64, 67, 62, "]", "[", 71, 64, 67, 61, "]", "[", 71, 64, 67, 60, "]", "[", 71, 64, 66, 72, "]", "[", 71, 64, 66, 70, "]", "[", 71, 64, 66, 69, "]", "[", 71, 64, 66, 68, "]", "[", 71, 64, 66, 67, "]", "[", 71, 64, 66, 65, "]", "[", 71, 64, 66, 63, "]", "[", 71, 64, 66, 62, "]", "[", 71, 64, 66, 61, "]", "[", 71, 64, 66, 60, "]", "[", 71, 64, 65, 72, "]", "[", 71, 64, 65, 70, "]", "[", 71, 64, 65, 69, "]", "[", 71, 64, 65, 68, "]", "[", 71, 64, 65, 67, "]", "[", 71, 64, 65, 66, "]", "[", 71, 64, 65, 63, "]", "[", 71, 64, 65, 62, "]", "[", 71, 64, 65, 61, "]", "[", 71, 64, 65, 60, "]", "[", 71, 64, 63, 72, "]", "[", 71, 64, 63, 70, "]", "[", 71, 64, 63, 69, "]", "[", 71, 64, 63, 68, "]", "[", 71, 64, 63, 67, "]", "[", 71, 64, 63, 66, "]", "[", 71, 64, 63, 65, "]", "[", 71, 64, 63, 62, "]", "[", 71, 64, 63, 61, "]", "[", 71, 64, 63, 60, "]", "[", 71, 64, 62, 72, "]", "[", 71, 64, 62, 70, "]", "[", 71, 64, 62, 69, "]", "[", 71, 64, 62, 68, "]", "[", 71, 64, 62, 67, "]", "[", 71, 64, 62, 66, "]", "[", 71, 64, 62, 65, "]", "[", 71, 64, 62, 63, "]", "[", 71, 64, 62, 61, "]", "[", 71, 64, 62, 60, "]", "[", 71, 64, 61, 72, "]", "[", 71, 64, 61, 70, "]", "[", 71, 64, 61, 69, "]", "[", 71, 64, 61, 68, "]", "[", 71, 64, 61, 67, "]", "[", 71, 64, 61, 66, "]", "[", 71, 64, 61, 65, "]", "[", 71, 64, 61, 63, "]", "[", 71, 64, 61, 62, "]", "[", 71, 64, 61, 60, "]", "[", 71, 64, 60, 72, "]", "[", 71, 64, 60, 70, "]", "[", 71, 64, 60, 69, "]", "[", 71, 64, 60, 68, "]", "[", 71, 64, 60, 67, "]", "[", 71, 64, 60, 66, "]", "[", 71, 64, 60, 65, "]", "[", 71, 64, 60, 63, "]", "[", 71, 64, 60, 62, "]", "[", 71, 64, 60, 61, "]", "[", 71, 63, 72, 70, "]", "[", 71, 63, 72, 69, "]", "[", 71, 63, 72, 68, "]", "[", 71, 63, 72, 67, "]", "[", 71, 63, 72, 66, "]", "[", 71, 63, 72, 65, "]", "[", 71, 63, 72, 64, "]", "[", 71, 63, 72, 62, "]", "[", 71, 63, 72, 61, "]", "[", 71, 63, 72, 60, "]", "[", 71, 63, 70, 72, "]", "[", 71, 63, 70, 69, "]", "[", 71, 63, 70, 68, "]", "[", 71, 63, 70, 67, "]", "[", 71, 63, 70, 66, "]", "[", 71, 63, 70, 65, "]", "[", 71, 63, 70, 64, "]", "[", 71, 63, 70, 62, "]", "[", 71, 63, 70, 61, "]", "[", 71, 63, 70, 60, "]", "[", 71, 63, 69, 72, "]", "[", 71, 63, 69, 70, "]", "[", 71, 63, 69, 68, "]", "[", 71, 63, 69, 67, "]", "[", 71, 63, 69, 66, "]", "[", 71, 63, 69, 65, "]", "[", 71, 63, 69, 64, "]", "[", 71, 63, 69, 62, "]", "[", 71, 63, 69, 61, "]", "[", 71, 63, 69, 60, "]", "[", 71, 63, 68, 72, "]", "[", 71, 63, 68, 70, "]", "[", 71, 63, 68, 69, "]", "[", 71, 63, 68, 67, "]", "[", 71, 63, 68, 66, "]", "[", 71, 63, 68, 65, "]", "[", 71, 63, 68, 64, "]", "[", 71, 63, 68, 62, "]", "[", 71, 63, 68, 61, "]", "[", 71, 63, 68, 60, "]", "[", 71, 63, 67, 72, "]", "[", 71, 63, 67, 70, "]", "[", 71, 63, 67, 69, "]", "[", 71, 63, 67, 68, "]", "[", 71, 63, 67, 66, "]", "[", 71, 63, 67, 65, "]", "[", 71, 63, 67, 64, "]", "[", 71, 63, 67, 62, "]", "[", 71, 63, 67, 61, "]", "[", 71, 63, 67, 60, "]", "[", 71, 63, 66, 72, "]", "[", 71, 63, 66, 70, "]", "[", 71, 63, 66, 69, "]", "[", 71, 63, 66, 68, "]", "[", 71, 63, 66, 67, "]", "[", 71, 63, 66, 65, "]", "[", 71, 63, 66, 64, "]", "[", 71, 63, 66, 62, "]", "[", 71, 63, 66, 61, "]", "[", 71, 63, 66, 60, "]", "[", 71, 63, 65, 72, "]", "[", 71, 63, 65, 70, "]", "[", 71, 63, 65, 69, "]", "[", 71, 63, 65, 68, "]", "[", 71, 63, 65, 67, "]", "[", 71, 63, 65, 66, "]", "[", 71, 63, 65, 64, "]", "[", 71, 63, 65, 62, "]", "[", 71, 63, 65, 61, "]", "[", 71, 63, 65, 60, "]", "[", 71, 63, 64, 72, "]", "[", 71, 63, 64, 70, "]", "[", 71, 63, 64, 69, "]", "[", 71, 63, 64, 68, "]", "[", 71, 63, 64, 67, "]", "[", 71, 63, 64, 66, "]", "[", 71, 63, 64, 65, "]", "[", 71, 63, 64, 62, "]", "[", 71, 63, 64, 61, "]", "[", 71, 63, 64, 60, "]", "[", 71, 63, 62, 72, "]", "[", 71, 63, 62, 70, "]", "[", 71, 63, 62, 69, "]", "[", 71, 63, 62, 68, "]", "[", 71, 63, 62, 67, "]", "[", 71, 63, 62, 66, "]", "[", 71, 63, 62, 65, "]", "[", 71, 63, 62, 64, "]", "[", 71, 63, 62, 61, "]", "[", 71, 63, 62, 60, "]", "[", 71, 63, 61, 72, "]", "[", 71, 63, 61, 70, "]", "[", 71, 63, 61, 69, "]", "[", 71, 63, 61, 68, "]", "[", 71, 63, 61, 67, "]", "[", 71, 63, 61, 66, "]", "[", 71, 63, 61, 65, "]", "[", 71, 63, 61, 64, "]", "[", 71, 63, 61, 62, "]", "[", 71, 63, 61, 60, "]", "[", 71, 63, 60, 72, "]", "[", 71, 63, 60, 70, "]", "[", 71, 63, 60, 69, "]", "[", 71, 63, 60, 68, "]", "[", 71, 63, 60, 67, "]", "[", 71, 63, 60, 66, "]", "[", 71, 63, 60, 65, "]", "[", 71, 63, 60, 64, "]", "[", 71, 63, 60, 62, "]", "[", 71, 63, 60, 61, "]", "[", 71, 62, 72, 70, "]", "[", 71, 62, 72, 69, "]", "[", 71, 62, 72, 68, "]", "[", 71, 62, 72, 67, "]", "[", 71, 62, 72, 66, "]", "[", 71, 62, 72, 65, "]", "[", 71, 62, 72, 64, "]", "[", 71, 62, 72, 63, "]", "[", 71, 62, 72, 61, "]", "[", 71, 62, 72, 60, "]", "[", 71, 62, 70, 72, "]", "[", 71, 62, 70, 69, "]", "[", 71, 62, 70, 68, "]", "[", 71, 62, 70, 67, "]", "[", 71, 62, 70, 66, "]", "[", 71, 62, 70, 65, "]", "[", 71, 62, 70, 64, "]", "[", 71, 62, 70, 63, "]", "[", 71, 62, 70, 61, "]", "[", 71, 62, 70, 60, "]", "[", 71, 62, 69, 72, "]", "[", 71, 62, 69, 70, "]", "[", 71, 62, 69, 68, "]", "[", 71, 62, 69, 67, "]", "[", 71, 62, 69, 66, "]", "[", 71, 62, 69, 65, "]", "[", 71, 62, 69, 64, "]", "[", 71, 62, 69, 63, "]", "[", 71, 62, 69, 61, "]", "[", 71, 62, 69, 60, "]", "[", 71, 62, 68, 72, "]", "[", 71, 62, 68, 70, "]", "[", 71, 62, 68, 69, "]", "[", 71, 62, 68, 67, "]", "[", 71, 62, 68, 66, "]", "[", 71, 62, 68, 65, "]", "[", 71, 62, 68, 64, "]", "[", 71, 62, 68, 63, "]", "[", 71, 62, 68, 61, "]", "[", 71, 62, 68, 60, "]", "[", 71, 62, 67, 72, "]", "[", 71, 62, 67, 70, "]", "[", 71, 62, 67, 69, "]", "[", 71, 62, 67, 68, "]", "[", 71, 62, 67, 66, "]", "[", 71, 62, 67, 65, "]", "[", 71, 62, 67, 64, "]", "[", 71, 62, 67, 63, "]", "[", 71, 62, 67, 61, "]", "[", 71, 62, 67, 60, "]", "[", 71, 62, 66, 72, "]", "[", 71, 62, 66, 70, "]", "[", 71, 62, 66, 69, "]", "[", 71, 62, 66, 68, "]", "[", 71, 62, 66, 67, "]", "[", 71, 62, 66, 65, "]", "[", 71, 62, 66, 64, "]", "[", 71, 62, 66, 63, "]", "[", 71, 62, 66, 61, "]", "[", 71, 62, 66, 60, "]", "[", 71, 62, 65, 72, "]", "[", 71, 62, 65, 70, "]", "[", 71, 62, 65, 69, "]", "[", 71, 62, 65, 68, "]", "[", 71, 62, 65, 67, "]", "[", 71, 62, 65, 66, "]", "[", 71, 62, 65, 64, "]", "[", 71, 62, 65, 63, "]", "[", 71, 62, 65, 61, "]", "[", 71, 62, 65, 60, "]", "[", 71, 62, 64, 72, "]", "[", 71, 62, 64, 70, "]", "[", 71, 62, 64, 69, "]", "[", 71, 62, 64, 68, "]", "[", 71, 62, 64, 67, "]", "[", 71, 62, 64, 66, "]", "[", 71, 62, 64, 65, "]", "[", 71, 62, 64, 63, "]", "[", 71, 62, 64, 61, "]", "[", 71, 62, 64, 60, "]", "[", 71, 62, 63, 72, "]", "[", 71, 62, 63, 70, "]", "[", 71, 62, 63, 69, "]", "[", 71, 62, 63, 68, "]", "[", 71, 62, 63, 67, "]", "[", 71, 62, 63, 66, "]", "[", 71, 62, 63, 65, "]", "[", 71, 62, 63, 64, "]", "[", 71, 62, 63, 61, "]", "[", 71, 62, 63, 60, "]", "[", 71, 62, 61, 72, "]", "[", 71, 62, 61, 70, "]", "[", 71, 62, 61, 69, "]", "[", 71, 62, 61, 68, "]", "[", 71, 62, 61, 67, "]", "[", 71, 62, 61, 66, "]", "[", 71, 62, 61, 65, "]", "[", 71, 62, 61, 64, "]", "[", 71, 62, 61, 63, "]", "[", 71, 62, 61, 60, "]", "[", 71, 62, 60, 72, "]", "[", 71, 62, 60, 70, "]", "[", 71, 62, 60, 69, "]", "[", 71, 62, 60, 68, "]", "[", 71, 62, 60, 67, "]", "[", 71, 62, 60, 66, "]", "[", 71, 62, 60, 65, "]", "[", 71, 62, 60, 64, "]", "[", 71, 62, 60, 63, "]", "[", 71, 62, 60, 61, "]", "[", 71, 61, 72, 70, "]", "[", 71, 61, 72, 69, "]", "[", 71, 61, 72, 68, "]", "[", 71, 61, 72, 67, "]", "[", 71, 61, 72, 66, "]", "[", 71, 61, 72, 65, "]", "[", 71, 61, 72, 64, "]", "[", 71, 61, 72, 63, "]", "[", 71, 61, 72, 62, "]", "[", 71, 61, 72, 60, "]", "[", 71, 61, 70, 72, "]", "[", 71, 61, 70, 69, "]", "[", 71, 61, 70, 68, "]", "[", 71, 61, 70, 67, "]", "[", 71, 61, 70, 66, "]", "[", 71, 61, 70, 65, "]", "[", 71, 61, 70, 64, "]", "[", 71, 61, 70, 63, "]", "[", 71, 61, 70, 62, "]", "[", 71, 61, 70, 60, "]", "[", 71, 61, 69, 72, "]", "[", 71, 61, 69, 70, "]", "[", 71, 61, 69, 68, "]", "[", 71, 61, 69, 67, "]", "[", 71, 61, 69, 66, "]", "[", 71, 61, 69, 65, "]", "[", 71, 61, 69, 64, "]", "[", 71, 61, 69, 63, "]", "[", 71, 61, 69, 62, "]", "[", 71, 61, 69, 60, "]", "[", 71, 61, 68, 72, "]", "[", 71, 61, 68, 70, "]", "[", 71, 61, 68, 69, "]", "[", 71, 61, 68, 67, "]", "[", 71, 61, 68, 66, "]", "[", 71, 61, 68, 65, "]", "[", 71, 61, 68, 64, "]", "[", 71, 61, 68, 63, "]", "[", 71, 61, 68, 62, "]", "[", 71, 61, 68, 60, "]", "[", 71, 61, 67, 72, "]", "[", 71, 61, 67, 70, "]", "[", 71, 61, 67, 69, "]", "[", 71, 61, 67, 68, "]", "[", 71, 61, 67, 66, "]", "[", 71, 61, 67, 65, "]", "[", 71, 61, 67, 64, "]", "[", 71, 61, 67, 63, "]", "[", 71, 61, 67, 62, "]", "[", 71, 61, 67, 60, "]", "[", 71, 61, 66, 72, "]", "[", 71, 61, 66, 70, "]", "[", 71, 61, 66, 69, "]", "[", 71, 61, 66, 68, "]", "[", 71, 61, 66, 67, "]", "[", 71, 61, 66, 65, "]", "[", 71, 61, 66, 64, "]", "[", 71, 61, 66, 63, "]", "[", 71, 61, 66, 62, "]", "[", 71, 61, 66, 60, "]", "[", 71, 61, 65, 72, "]", "[", 71, 61, 65, 70, "]", "[", 71, 61, 65, 69, "]", "[", 71, 61, 65, 68, "]", "[", 71, 61, 65, 67, "]", "[", 71, 61, 65, 66, "]", "[", 71, 61, 65, 64, "]", "[", 71, 61, 65, 63, "]", "[", 71, 61, 65, 62, "]", "[", 71, 61, 65, 60, "]", "[", 71, 61, 64, 72, "]", "[", 71, 61, 64, 70, "]", "[", 71, 61, 64, 69, "]", "[", 71, 61, 64, 68, "]", "[", 71, 61, 64, 67, "]", "[", 71, 61, 64, 66, "]", "[", 71, 61, 64, 65, "]", "[", 71, 61, 64, 63, "]", "[", 71, 61, 64, 62, "]", "[", 71, 61, 64, 60, "]", "[", 71, 61, 63, 72, "]", "[", 71, 61, 63, 70, "]", "[", 71, 61, 63, 69, "]", "[", 71, 61, 63, 68, "]", "[", 71, 61, 63, 67, "]", "[", 71, 61, 63, 66, "]", "[", 71, 61, 63, 65, "]", "[", 71, 61, 63, 64, "]", "[", 71, 61, 63, 62, "]", "[", 71, 61, 63, 60, "]", "[", 71, 61, 62, 72, "]", "[", 71, 61, 62, 70, "]", "[", 71, 61, 62, 69, "]", "[", 71, 61, 62, 68, "]", "[", 71, 61, 62, 67, "]", "[", 71, 61, 62, 66, "]", "[", 71, 61, 62, 65, "]", "[", 71, 61, 62, 64, "]", "[", 71, 61, 62, 63, "]", "[", 71, 61, 62, 60, "]", "[", 71, 61, 60, 72, "]", "[", 71, 61, 60, 70, "]", "[", 71, 61, 60, 69, "]", "[", 71, 61, 60, 68, "]", "[", 71, 61, 60, 67, "]", "[", 71, 61, 60, 66, "]", "[", 71, 61, 60, 65, "]", "[", 71, 61, 60, 64, "]", "[", 71, 61, 60, 63, "]", "[", 71, 61, 60, 62, "]", "[", 71, 60, 72, 70, "]", "[", 71, 60, 72, 69, "]", "[", 71, 60, 72, 68, "]", "[", 71, 60, 72, 67, "]", "[", 71, 60, 72, 66, "]", "[", 71, 60, 72, 65, "]", "[", 71, 60, 72, 64, "]", "[", 71, 60, 72, 63, "]", "[", 71, 60, 72, 62, "]", "[", 71, 60, 72, 61, "]", "[", 71, 60, 70, 72, "]", "[", 71, 60, 70, 69, "]", "[", 71, 60, 70, 68, "]", "[", 71, 60, 70, 67, "]", "[", 71, 60, 70, 66, "]", "[", 71, 60, 70, 65, "]", "[", 71, 60, 70, 64, "]", "[", 71, 60, 70, 63, "]", "[", 71, 60, 70, 62, "]", "[", 71, 60, 70, 61, "]", "[", 71, 60, 69, 72, "]", "[", 71, 60, 69, 70, "]", "[", 71, 60, 69, 68, "]", "[", 71, 60, 69, 67, "]", "[", 71, 60, 69, 66, "]", "[", 71, 60, 69, 65, "]", "[", 71, 60, 69, 64, "]", "[", 71, 60, 69, 63, "]", "[", 71, 60, 69, 62, "]", "[", 71, 60, 69, 61, "]", "[", 71, 60, 68, 72, "]", "[", 71, 60, 68, 70, "]", "[", 71, 60, 68, 69, "]", "[", 71, 60, 68, 67, "]", "[", 71, 60, 68, 66, "]", "[", 71, 60, 68, 65, "]", "[", 71, 60, 68, 64, "]", "[", 71, 60, 68, 63, "]", "[", 71, 60, 68, 62, "]", "[", 71, 60, 68, 61, "]", "[", 71, 60, 67, 72, "]", "[", 71, 60, 67, 70, "]", "[", 71, 60, 67, 69, "]", "[", 71, 60, 67, 68, "]", "[", 71, 60, 67, 66, "]", "[", 71, 60, 67, 65, "]", "[", 71, 60, 67, 64, "]", "[", 71, 60, 67, 63, "]", "[", 71, 60, 67, 62, "]", "[", 71, 60, 67, 61, "]", "[", 71, 60, 66, 72, "]", "[", 71, 60, 66, 70, "]", "[", 71, 60, 66, 69, "]", "[", 71, 60, 66, 68, "]", "[", 71, 60, 66, 67, "]", "[", 71, 60, 66, 65, "]", "[", 71, 60, 66, 64, "]", "[", 71, 60, 66, 63, "]", "[", 71, 60, 66, 62, "]", "[", 71, 60, 66, 61, "]", "[", 71, 60, 65, 72, "]", "[", 71, 60, 65, 70, "]", "[", 71, 60, 65, 69, "]", "[", 71, 60, 65, 68, "]", "[", 71, 60, 65, 67, "]", "[", 71, 60, 65, 66, "]", "[", 71, 60, 65, 64, "]", "[", 71, 60, 65, 63, "]", "[", 71, 60, 65, 62, "]", "[", 71, 60, 65, 61, "]", "[", 71, 60, 64, 72, "]", "[", 71, 60, 64, 70, "]", "[", 71, 60, 64, 69, "]", "[", 71, 60, 64, 68, "]", "[", 71, 60, 64, 67, "]", "[", 71, 60, 64, 66, "]", "[", 71, 60, 64, 65, "]", "[", 71, 60, 64, 63, "]", "[", 71, 60, 64, 62, "]", "[", 71, 60, 64, 61, "]", "[", 71, 60, 63, 72, "]", "[", 71, 60, 63, 70, "]", "[", 71, 60, 63, 69, "]", "[", 71, 60, 63, 68, "]", "[", 71, 60, 63, 67, "]", "[", 71, 60, 63, 66, "]", "[", 71, 60, 63, 65, "]", "[", 71, 60, 63, 64, "]", "[", 71, 60, 63, 62, "]", "[", 71, 60, 63, 61, "]", "[", 71, 60, 62, 72, "]", "[", 71, 60, 62, 70, "]", "[", 71, 60, 62, 69, "]", "[", 71, 60, 62, 68, "]", "[", 71, 60, 62, 67, "]", "[", 71, 60, 62, 66, "]", "[", 71, 60, 62, 65, "]", "[", 71, 60, 62, 64, "]", "[", 71, 60, 62, 63, "]", "[", 71, 60, 62, 61, "]", "[", 71, 60, 61, 72, "]", "[", 71, 60, 61, 70, "]", "[", 71, 60, 61, 69, "]", "[", 71, 60, 61, 68, "]", "[", 71, 60, 61, 67, "]", "[", 71, 60, 61, 66, "]", "[", 71, 60, 61, 65, "]", "[", 71, 60, 61, 64, "]", "[", 71, 60, 61, 63, "]", "[", 71, 60, 61, 62, "]", "[", 70, 72, 71, 69, "]", "[", 70, 72, 71, 68, "]", "[", 70, 72, 71, 67, "]", "[", 70, 72, 71, 66, "]", "[", 70, 72, 71, 65, "]", "[", 70, 72, 71, 64, "]", "[", 70, 72, 71, 63, "]", "[", 70, 72, 71, 62, "]", "[", 70, 72, 71, 61, "]", "[", 70, 72, 71, 60, "]", "[", 70, 72, 69, 71, "]", "[", 70, 72, 69, 68, "]", "[", 70, 72, 69, 67, "]", "[", 70, 72, 69, 66, "]", "[", 70, 72, 69, 65, "]", "[", 70, 72, 69, 64, "]", "[", 70, 72, 69, 63, "]", "[", 70, 72, 69, 62, "]", "[", 70, 72, 69, 61, "]", "[", 70, 72, 69, 60, "]", "[", 70, 72, 68, 71, "]", "[", 70, 72, 68, 69, "]", "[", 70, 72, 68, 67, "]", "[", 70, 72, 68, 66, "]", "[", 70, 72, 68, 65, "]", "[", 70, 72, 68, 64, "]", "[", 70, 72, 68, 63, "]", "[", 70, 72, 68, 62, "]", "[", 70, 72, 68, 61, "]", "[", 70, 72, 68, 60, "]", "[", 70, 72, 67, 71, "]", "[", 70, 72, 67, 69, "]", "[", 70, 72, 67, 68, "]", "[", 70, 72, 67, 66, "]", "[", 70, 72, 67, 65, "]", "[", 70, 72, 67, 64, "]", "[", 70, 72, 67, 63, "]", "[", 70, 72, 67, 62, "]", "[", 70, 72, 67, 61, "]", "[", 70, 72, 67, 60, "]", "[", 70, 72, 66, 71, "]", "[", 70, 72, 66, 69, "]", "[", 70, 72, 66, 68, "]", "[", 70, 72, 66, 67, "]", "[", 70, 72, 66, 65, "]", "[", 70, 72, 66, 64, "]", "[", 70, 72, 66, 63, "]", "[", 70, 72, 66, 62, "]", "[", 70, 72, 66, 61, "]", "[", 70, 72, 66, 60, "]", "[", 70, 72, 65, 71, "]", "[", 70, 72, 65, 69, "]", "[", 70, 72, 65, 68, "]", "[", 70, 72, 65, 67, "]", "[", 70, 72, 65, 66, "]", "[", 70, 72, 65, 64, "]", "[", 70, 72, 65, 63, "]", "[", 70, 72, 65, 62, "]", "[", 70, 72, 65, 61, "]", "[", 70, 72, 65, 60, "]", "[", 70, 72, 64, 71, "]", "[", 70, 72, 64, 69, "]", "[", 70, 72, 64, 68, "]", "[", 70, 72, 64, 67, "]", "[", 70, 72, 64, 66, "]", "[", 70, 72, 64, 65, "]", "[", 70, 72, 64, 63, "]", "[", 70, 72, 64, 62, "]", "[", 70, 72, 64, 61, "]", "[", 70, 72, 64, 60, "]", "[", 70, 72, 63, 71, "]", "[", 70, 72, 63, 69, "]", "[", 70, 72, 63, 68, "]", "[", 70, 72, 63, 67, "]", "[", 70, 72, 63, 66, "]", "[", 70, 72, 63, 65, "]", "[", 70, 72, 63, 64, "]", "[", 70, 72, 63, 62, "]", "[", 70, 72, 63, 61, "]", "[", 70, 72, 63, 60, "]", "[", 70, 72, 62, 71, "]", "[", 70, 72, 62, 69, "]", "[", 70, 72, 62, 68, "]", "[", 70, 72, 62, 67, "]", "[", 70, 72, 62, 66, "]", "[", 70, 72, 62, 65, "]", "[", 70, 72, 62, 64, "]", "[", 70, 72, 62, 63, "]", "[", 70, 72, 62, 61, "]", "[", 70, 72, 62, 60, "]", "[", 70, 72, 61 ],
													"reg_data_0000000004" : [ 71, "]", "[", 70, 72, 61, 69, "]", "[", 70, 72, 61, 68, "]", "[", 70, 72, 61, 67, "]", "[", 70, 72, 61, 66, "]", "[", 70, 72, 61, 65, "]", "[", 70, 72, 61, 64, "]", "[", 70, 72, 61, 63, "]", "[", 70, 72, 61, 62, "]", "[", 70, 72, 61, 60, "]", "[", 70, 72, 60, 71, "]", "[", 70, 72, 60, 69, "]", "[", 70, 72, 60, 68, "]", "[", 70, 72, 60, 67, "]", "[", 70, 72, 60, 66, "]", "[", 70, 72, 60, 65, "]", "[", 70, 72, 60, 64, "]", "[", 70, 72, 60, 63, "]", "[", 70, 72, 60, 62, "]", "[", 70, 72, 60, 61, "]", "[", 70, 71, 72, 69, "]", "[", 70, 71, 72, 68, "]", "[", 70, 71, 72, 67, "]", "[", 70, 71, 72, 66, "]", "[", 70, 71, 72, 65, "]", "[", 70, 71, 72, 64, "]", "[", 70, 71, 72, 63, "]", "[", 70, 71, 72, 62, "]", "[", 70, 71, 72, 61, "]", "[", 70, 71, 72, 60, "]", "[", 70, 71, 69, 72, "]", "[", 70, 71, 69, 68, "]", "[", 70, 71, 69, 67, "]", "[", 70, 71, 69, 66, "]", "[", 70, 71, 69, 65, "]", "[", 70, 71, 69, 64, "]", "[", 70, 71, 69, 63, "]", "[", 70, 71, 69, 62, "]", "[", 70, 71, 69, 61, "]", "[", 70, 71, 69, 60, "]", "[", 70, 71, 68, 72, "]", "[", 70, 71, 68, 69, "]", "[", 70, 71, 68, 67, "]", "[", 70, 71, 68, 66, "]", "[", 70, 71, 68, 65, "]", "[", 70, 71, 68, 64, "]", "[", 70, 71, 68, 63, "]", "[", 70, 71, 68, 62, "]", "[", 70, 71, 68, 61, "]", "[", 70, 71, 68, 60, "]", "[", 70, 71, 67, 72, "]", "[", 70, 71, 67, 69, "]", "[", 70, 71, 67, 68, "]", "[", 70, 71, 67, 66, "]", "[", 70, 71, 67, 65, "]", "[", 70, 71, 67, 64, "]", "[", 70, 71, 67, 63, "]", "[", 70, 71, 67, 62, "]", "[", 70, 71, 67, 61, "]", "[", 70, 71, 67, 60, "]", "[", 70, 71, 66, 72, "]", "[", 70, 71, 66, 69, "]", "[", 70, 71, 66, 68, "]", "[", 70, 71, 66, 67, "]", "[", 70, 71, 66, 65, "]", "[", 70, 71, 66, 64, "]", "[", 70, 71, 66, 63, "]", "[", 70, 71, 66, 62, "]", "[", 70, 71, 66, 61, "]", "[", 70, 71, 66, 60, "]", "[", 70, 71, 65, 72, "]", "[", 70, 71, 65, 69, "]", "[", 70, 71, 65, 68, "]", "[", 70, 71, 65, 67, "]", "[", 70, 71, 65, 66, "]", "[", 70, 71, 65, 64, "]", "[", 70, 71, 65, 63, "]", "[", 70, 71, 65, 62, "]", "[", 70, 71, 65, 61, "]", "[", 70, 71, 65, 60, "]", "[", 70, 71, 64, 72, "]", "[", 70, 71, 64, 69, "]", "[", 70, 71, 64, 68, "]", "[", 70, 71, 64, 67, "]", "[", 70, 71, 64, 66, "]", "[", 70, 71, 64, 65, "]", "[", 70, 71, 64, 63, "]", "[", 70, 71, 64, 62, "]", "[", 70, 71, 64, 61, "]", "[", 70, 71, 64, 60, "]", "[", 70, 71, 63, 72, "]", "[", 70, 71, 63, 69, "]", "[", 70, 71, 63, 68, "]", "[", 70, 71, 63, 67, "]", "[", 70, 71, 63, 66, "]", "[", 70, 71, 63, 65, "]", "[", 70, 71, 63, 64, "]", "[", 70, 71, 63, 62, "]", "[", 70, 71, 63, 61, "]", "[", 70, 71, 63, 60, "]", "[", 70, 71, 62, 72, "]", "[", 70, 71, 62, 69, "]", "[", 70, 71, 62, 68, "]", "[", 70, 71, 62, 67, "]", "[", 70, 71, 62, 66, "]", "[", 70, 71, 62, 65, "]", "[", 70, 71, 62, 64, "]", "[", 70, 71, 62, 63, "]", "[", 70, 71, 62, 61, "]", "[", 70, 71, 62, 60, "]", "[", 70, 71, 61, 72, "]", "[", 70, 71, 61, 69, "]", "[", 70, 71, 61, 68, "]", "[", 70, 71, 61, 67, "]", "[", 70, 71, 61, 66, "]", "[", 70, 71, 61, 65, "]", "[", 70, 71, 61, 64, "]", "[", 70, 71, 61, 63, "]", "[", 70, 71, 61, 62, "]", "[", 70, 71, 61, 60, "]", "[", 70, 71, 60, 72, "]", "[", 70, 71, 60, 69, "]", "[", 70, 71, 60, 68, "]", "[", 70, 71, 60, 67, "]", "[", 70, 71, 60, 66, "]", "[", 70, 71, 60, 65, "]", "[", 70, 71, 60, 64, "]", "[", 70, 71, 60, 63, "]", "[", 70, 71, 60, 62, "]", "[", 70, 71, 60, 61, "]", "[", 70, 69, 72, 71, "]", "[", 70, 69, 72, 68, "]", "[", 70, 69, 72, 67, "]", "[", 70, 69, 72, 66, "]", "[", 70, 69, 72, 65, "]", "[", 70, 69, 72, 64, "]", "[", 70, 69, 72, 63, "]", "[", 70, 69, 72, 62, "]", "[", 70, 69, 72, 61, "]", "[", 70, 69, 72, 60, "]", "[", 70, 69, 71, 72, "]", "[", 70, 69, 71, 68, "]", "[", 70, 69, 71, 67, "]", "[", 70, 69, 71, 66, "]", "[", 70, 69, 71, 65, "]", "[", 70, 69, 71, 64, "]", "[", 70, 69, 71, 63, "]", "[", 70, 69, 71, 62, "]", "[", 70, 69, 71, 61, "]", "[", 70, 69, 71, 60, "]", "[", 70, 69, 68, 72, "]", "[", 70, 69, 68, 71, "]", "[", 70, 69, 68, 67, "]", "[", 70, 69, 68, 66, "]", "[", 70, 69, 68, 65, "]", "[", 70, 69, 68, 64, "]", "[", 70, 69, 68, 63, "]", "[", 70, 69, 68, 62, "]", "[", 70, 69, 68, 61, "]", "[", 70, 69, 68, 60, "]", "[", 70, 69, 67, 72, "]", "[", 70, 69, 67, 71, "]", "[", 70, 69, 67, 68, "]", "[", 70, 69, 67, 66, "]", "[", 70, 69, 67, 65, "]", "[", 70, 69, 67, 64, "]", "[", 70, 69, 67, 63, "]", "[", 70, 69, 67, 62, "]", "[", 70, 69, 67, 61, "]", "[", 70, 69, 67, 60, "]", "[", 70, 69, 66, 72, "]", "[", 70, 69, 66, 71, "]", "[", 70, 69, 66, 68, "]", "[", 70, 69, 66, 67, "]", "[", 70, 69, 66, 65, "]", "[", 70, 69, 66, 64, "]", "[", 70, 69, 66, 63, "]", "[", 70, 69, 66, 62, "]", "[", 70, 69, 66, 61, "]", "[", 70, 69, 66, 60, "]", "[", 70, 69, 65, 72, "]", "[", 70, 69, 65, 71, "]", "[", 70, 69, 65, 68, "]", "[", 70, 69, 65, 67, "]", "[", 70, 69, 65, 66, "]", "[", 70, 69, 65, 64, "]", "[", 70, 69, 65, 63, "]", "[", 70, 69, 65, 62, "]", "[", 70, 69, 65, 61, "]", "[", 70, 69, 65, 60, "]", "[", 70, 69, 64, 72, "]", "[", 70, 69, 64, 71, "]", "[", 70, 69, 64, 68, "]", "[", 70, 69, 64, 67, "]", "[", 70, 69, 64, 66, "]", "[", 70, 69, 64, 65, "]", "[", 70, 69, 64, 63, "]", "[", 70, 69, 64, 62, "]", "[", 70, 69, 64, 61, "]", "[", 70, 69, 64, 60, "]", "[", 70, 69, 63, 72, "]", "[", 70, 69, 63, 71, "]", "[", 70, 69, 63, 68, "]", "[", 70, 69, 63, 67, "]", "[", 70, 69, 63, 66, "]", "[", 70, 69, 63, 65, "]", "[", 70, 69, 63, 64, "]", "[", 70, 69, 63, 62, "]", "[", 70, 69, 63, 61, "]", "[", 70, 69, 63, 60, "]", "[", 70, 69, 62, 72, "]", "[", 70, 69, 62, 71, "]", "[", 70, 69, 62, 68, "]", "[", 70, 69, 62, 67, "]", "[", 70, 69, 62, 66, "]", "[", 70, 69, 62, 65, "]", "[", 70, 69, 62, 64, "]", "[", 70, 69, 62, 63, "]", "[", 70, 69, 62, 61, "]", "[", 70, 69, 62, 60, "]", "[", 70, 69, 61, 72, "]", "[", 70, 69, 61, 71, "]", "[", 70, 69, 61, 68, "]", "[", 70, 69, 61, 67, "]", "[", 70, 69, 61, 66, "]", "[", 70, 69, 61, 65, "]", "[", 70, 69, 61, 64, "]", "[", 70, 69, 61, 63, "]", "[", 70, 69, 61, 62, "]", "[", 70, 69, 61, 60, "]", "[", 70, 69, 60, 72, "]", "[", 70, 69, 60, 71, "]", "[", 70, 69, 60, 68, "]", "[", 70, 69, 60, 67, "]", "[", 70, 69, 60, 66, "]", "[", 70, 69, 60, 65, "]", "[", 70, 69, 60, 64, "]", "[", 70, 69, 60, 63, "]", "[", 70, 69, 60, 62, "]", "[", 70, 69, 60, 61, "]", "[", 70, 68, 72, 71, "]", "[", 70, 68, 72, 69, "]", "[", 70, 68, 72, 67, "]", "[", 70, 68, 72, 66, "]", "[", 70, 68, 72, 65, "]", "[", 70, 68, 72, 64, "]", "[", 70, 68, 72, 63, "]", "[", 70, 68, 72, 62, "]", "[", 70, 68, 72, 61, "]", "[", 70, 68, 72, 60, "]", "[", 70, 68, 71, 72, "]", "[", 70, 68, 71, 69, "]", "[", 70, 68, 71, 67, "]", "[", 70, 68, 71, 66, "]", "[", 70, 68, 71, 65, "]", "[", 70, 68, 71, 64, "]", "[", 70, 68, 71, 63, "]", "[", 70, 68, 71, 62, "]", "[", 70, 68, 71, 61, "]", "[", 70, 68, 71, 60, "]", "[", 70, 68, 69, 72, "]", "[", 70, 68, 69, 71, "]", "[", 70, 68, 69, 67, "]", "[", 70, 68, 69, 66, "]", "[", 70, 68, 69, 65, "]", "[", 70, 68, 69, 64, "]", "[", 70, 68, 69, 63, "]", "[", 70, 68, 69, 62, "]", "[", 70, 68, 69, 61, "]", "[", 70, 68, 69, 60, "]", "[", 70, 68, 67, 72, "]", "[", 70, 68, 67, 71, "]", "[", 70, 68, 67, 69, "]", "[", 70, 68, 67, 66, "]", "[", 70, 68, 67, 65, "]", "[", 70, 68, 67, 64, "]", "[", 70, 68, 67, 63, "]", "[", 70, 68, 67, 62, "]", "[", 70, 68, 67, 61, "]", "[", 70, 68, 67, 60, "]", "[", 70, 68, 66, 72, "]", "[", 70, 68, 66, 71, "]", "[", 70, 68, 66, 69, "]", "[", 70, 68, 66, 67, "]", "[", 70, 68, 66, 65, "]", "[", 70, 68, 66, 64, "]", "[", 70, 68, 66, 63, "]", "[", 70, 68, 66, 62, "]", "[", 70, 68, 66, 61, "]", "[", 70, 68, 66, 60, "]", "[", 70, 68, 65, 72, "]", "[", 70, 68, 65, 71, "]", "[", 70, 68, 65, 69, "]", "[", 70, 68, 65, 67, "]", "[", 70, 68, 65, 66, "]", "[", 70, 68, 65, 64, "]", "[", 70, 68, 65, 63, "]", "[", 70, 68, 65, 62, "]", "[", 70, 68, 65, 61, "]", "[", 70, 68, 65, 60, "]", "[", 70, 68, 64, 72, "]", "[", 70, 68, 64, 71, "]", "[", 70, 68, 64, 69, "]", "[", 70, 68, 64, 67, "]", "[", 70, 68, 64, 66, "]", "[", 70, 68, 64, 65, "]", "[", 70, 68, 64, 63, "]", "[", 70, 68, 64, 62, "]", "[", 70, 68, 64, 61, "]", "[", 70, 68, 64, 60, "]", "[", 70, 68, 63, 72, "]", "[", 70, 68, 63, 71, "]", "[", 70, 68, 63, 69, "]", "[", 70, 68, 63, 67, "]", "[", 70, 68, 63, 66, "]", "[", 70, 68, 63, 65, "]", "[", 70, 68, 63, 64, "]", "[", 70, 68, 63, 62, "]", "[", 70, 68, 63, 61, "]", "[", 70, 68, 63, 60, "]", "[", 70, 68, 62, 72, "]", "[", 70, 68, 62, 71, "]", "[", 70, 68, 62, 69, "]", "[", 70, 68, 62, 67, "]", "[", 70, 68, 62, 66, "]", "[", 70, 68, 62, 65, "]", "[", 70, 68, 62, 64, "]", "[", 70, 68, 62, 63, "]", "[", 70, 68, 62, 61, "]", "[", 70, 68, 62, 60, "]", "[", 70, 68, 61, 72, "]", "[", 70, 68, 61, 71, "]", "[", 70, 68, 61, 69, "]", "[", 70, 68, 61, 67, "]", "[", 70, 68, 61, 66, "]", "[", 70, 68, 61, 65, "]", "[", 70, 68, 61, 64, "]", "[", 70, 68, 61, 63, "]", "[", 70, 68, 61, 62, "]", "[", 70, 68, 61, 60, "]", "[", 70, 68, 60, 72, "]", "[", 70, 68, 60, 71, "]", "[", 70, 68, 60, 69, "]", "[", 70, 68, 60, 67, "]", "[", 70, 68, 60, 66, "]", "[", 70, 68, 60, 65, "]", "[", 70, 68, 60, 64, "]", "[", 70, 68, 60, 63, "]", "[", 70, 68, 60, 62, "]", "[", 70, 68, 60, 61, "]", "[", 70, 67, 72, 71, "]", "[", 70, 67, 72, 69, "]", "[", 70, 67, 72, 68, "]", "[", 70, 67, 72, 66, "]", "[", 70, 67, 72, 65, "]", "[", 70, 67, 72, 64, "]", "[", 70, 67, 72, 63, "]", "[", 70, 67, 72, 62, "]", "[", 70, 67, 72, 61, "]", "[", 70, 67, 72, 60, "]", "[", 70, 67, 71, 72, "]", "[", 70, 67, 71, 69, "]", "[", 70, 67, 71, 68, "]", "[", 70, 67, 71, 66, "]", "[", 70, 67, 71, 65, "]", "[", 70, 67, 71, 64, "]", "[", 70, 67, 71, 63, "]", "[", 70, 67, 71, 62, "]", "[", 70, 67, 71, 61, "]", "[", 70, 67, 71, 60, "]", "[", 70, 67, 69, 72, "]", "[", 70, 67, 69, 71, "]", "[", 70, 67, 69, 68, "]", "[", 70, 67, 69, 66, "]", "[", 70, 67, 69, 65, "]", "[", 70, 67, 69, 64, "]", "[", 70, 67, 69, 63, "]", "[", 70, 67, 69, 62, "]", "[", 70, 67, 69, 61, "]", "[", 70, 67, 69, 60, "]", "[", 70, 67, 68, 72, "]", "[", 70, 67, 68, 71, "]", "[", 70, 67, 68, 69, "]", "[", 70, 67, 68, 66, "]", "[", 70, 67, 68, 65, "]", "[", 70, 67, 68, 64, "]", "[", 70, 67, 68, 63, "]", "[", 70, 67, 68, 62, "]", "[", 70, 67, 68, 61, "]", "[", 70, 67, 68, 60, "]", "[", 70, 67, 66, 72, "]", "[", 70, 67, 66, 71, "]", "[", 70, 67, 66, 69, "]", "[", 70, 67, 66, 68, "]", "[", 70, 67, 66, 65, "]", "[", 70, 67, 66, 64, "]", "[", 70, 67, 66, 63, "]", "[", 70, 67, 66, 62, "]", "[", 70, 67, 66, 61, "]", "[", 70, 67, 66, 60, "]", "[", 70, 67, 65, 72, "]", "[", 70, 67, 65, 71, "]", "[", 70, 67, 65, 69, "]", "[", 70, 67, 65, 68, "]", "[", 70, 67, 65, 66, "]", "[", 70, 67, 65, 64, "]", "[", 70, 67, 65, 63, "]", "[", 70, 67, 65, 62, "]", "[", 70, 67, 65, 61, "]", "[", 70, 67, 65, 60, "]", "[", 70, 67, 64, 72, "]", "[", 70, 67, 64, 71, "]", "[", 70, 67, 64, 69, "]", "[", 70, 67, 64, 68, "]", "[", 70, 67, 64, 66, "]", "[", 70, 67, 64, 65, "]", "[", 70, 67, 64, 63, "]", "[", 70, 67, 64, 62, "]", "[", 70, 67, 64, 61, "]", "[", 70, 67, 64, 60, "]", "[", 70, 67, 63, 72, "]", "[", 70, 67, 63, 71, "]", "[", 70, 67, 63, 69, "]", "[", 70, 67, 63, 68, "]", "[", 70, 67, 63, 66, "]", "[", 70, 67, 63, 65, "]", "[", 70, 67, 63, 64, "]", "[", 70, 67, 63, 62, "]", "[", 70, 67, 63, 61, "]", "[", 70, 67, 63, 60, "]", "[", 70, 67, 62, 72, "]", "[", 70, 67, 62, 71, "]", "[", 70, 67, 62, 69, "]", "[", 70, 67, 62, 68, "]", "[", 70, 67, 62, 66, "]", "[", 70, 67, 62, 65, "]", "[", 70, 67, 62, 64, "]", "[", 70, 67, 62, 63, "]", "[", 70, 67, 62, 61, "]", "[", 70, 67, 62, 60, "]", "[", 70, 67, 61, 72, "]", "[", 70, 67, 61, 71, "]", "[", 70, 67, 61, 69, "]", "[", 70, 67, 61, 68, "]", "[", 70, 67, 61, 66, "]", "[", 70, 67, 61, 65, "]", "[", 70, 67, 61, 64, "]", "[", 70, 67, 61, 63, "]", "[", 70, 67, 61, 62, "]", "[", 70, 67, 61, 60, "]", "[", 70, 67, 60, 72, "]", "[", 70, 67, 60, 71, "]", "[", 70, 67, 60, 69, "]", "[", 70, 67, 60, 68, "]", "[", 70, 67, 60, 66, "]", "[", 70, 67, 60, 65, "]", "[", 70, 67, 60, 64, "]", "[", 70, 67, 60, 63, "]", "[", 70, 67, 60, 62, "]", "[", 70, 67, 60, 61, "]", "[", 70, 66, 72, 71, "]", "[", 70, 66, 72, 69, "]", "[", 70, 66, 72, 68, "]", "[", 70, 66, 72, 67, "]", "[", 70, 66, 72, 65, "]", "[", 70, 66, 72, 64, "]", "[", 70, 66, 72, 63, "]", "[", 70, 66, 72, 62, "]", "[", 70, 66, 72, 61, "]", "[", 70, 66, 72, 60, "]", "[", 70, 66, 71, 72, "]", "[", 70, 66, 71, 69, "]", "[", 70, 66, 71, 68, "]", "[", 70, 66, 71, 67, "]", "[", 70, 66, 71, 65, "]", "[", 70, 66, 71, 64, "]", "[", 70, 66, 71, 63, "]", "[", 70, 66, 71, 62, "]", "[", 70, 66, 71, 61, "]", "[", 70, 66, 71, 60, "]", "[", 70, 66, 69, 72, "]", "[", 70, 66, 69, 71, "]", "[", 70, 66, 69, 68, "]", "[", 70, 66, 69, 67, "]", "[", 70, 66, 69, 65, "]", "[", 70, 66, 69, 64, "]", "[", 70, 66, 69, 63, "]", "[", 70, 66, 69, 62, "]", "[", 70, 66, 69, 61, "]", "[", 70, 66, 69, 60, "]", "[", 70, 66, 68, 72, "]", "[", 70, 66, 68, 71, "]", "[", 70, 66, 68, 69, "]", "[", 70, 66, 68, 67, "]", "[", 70, 66, 68, 65, "]", "[", 70, 66, 68, 64, "]", "[", 70, 66, 68, 63, "]", "[", 70, 66, 68, 62, "]", "[", 70, 66, 68, 61, "]", "[", 70, 66, 68, 60, "]", "[", 70, 66, 67, 72, "]", "[", 70, 66, 67, 71, "]", "[", 70, 66, 67, 69, "]", "[", 70, 66, 67, 68, "]", "[", 70, 66, 67, 65, "]", "[", 70, 66, 67, 64, "]", "[", 70, 66, 67, 63, "]", "[", 70, 66, 67, 62, "]", "[", 70, 66, 67, 61, "]", "[", 70, 66, 67, 60, "]", "[", 70, 66, 65, 72, "]", "[", 70, 66, 65, 71, "]", "[", 70, 66, 65, 69, "]", "[", 70, 66, 65, 68, "]", "[", 70, 66, 65, 67, "]", "[", 70, 66, 65, 64, "]", "[", 70, 66, 65, 63, "]", "[", 70, 66, 65, 62, "]", "[", 70, 66, 65, 61, "]", "[", 70, 66, 65, 60, "]", "[", 70, 66, 64, 72, "]", "[", 70, 66, 64, 71, "]", "[", 70, 66, 64, 69, "]", "[", 70, 66, 64, 68, "]", "[", 70, 66, 64, 67, "]", "[", 70, 66, 64, 65, "]", "[", 70, 66, 64, 63, "]", "[", 70, 66, 64, 62, "]", "[", 70, 66, 64, 61, "]", "[", 70, 66, 64, 60, "]", "[", 70, 66, 63, 72, "]", "[", 70, 66, 63, 71, "]", "[", 70, 66, 63, 69, "]", "[", 70, 66, 63, 68, "]", "[", 70, 66, 63, 67, "]", "[", 70, 66, 63, 65, "]", "[", 70, 66, 63, 64, "]", "[", 70, 66, 63, 62, "]", "[", 70, 66, 63, 61, "]", "[", 70, 66, 63, 60, "]", "[", 70, 66, 62, 72, "]", "[", 70, 66, 62, 71, "]", "[", 70, 66, 62, 69, "]", "[", 70, 66, 62, 68, "]", "[", 70, 66, 62, 67, "]", "[", 70, 66, 62, 65, "]", "[", 70, 66, 62, 64, "]", "[", 70, 66, 62, 63, "]", "[", 70, 66, 62, 61, "]", "[", 70, 66, 62, 60, "]", "[", 70, 66, 61, 72, "]", "[", 70, 66, 61, 71, "]", "[", 70, 66, 61, 69, "]", "[", 70, 66, 61, 68, "]", "[", 70, 66, 61, 67, "]", "[", 70, 66, 61, 65, "]", "[", 70, 66, 61, 64, "]", "[", 70, 66, 61, 63, "]", "[", 70, 66, 61, 62, "]", "[", 70, 66, 61, 60, "]", "[", 70, 66, 60, 72, "]", "[", 70, 66, 60, 71, "]", "[", 70, 66, 60, 69, "]", "[", 70, 66, 60, 68, "]", "[", 70, 66, 60, 67, "]", "[", 70, 66, 60, 65, "]", "[", 70, 66, 60, 64, "]", "[", 70, 66, 60, 63, "]", "[", 70, 66, 60, 62, "]", "[", 70, 66, 60, 61, "]", "[", 70, 65, 72, 71, "]", "[", 70, 65, 72, 69, "]", "[", 70, 65, 72, 68, "]", "[", 70, 65, 72, 67, "]", "[", 70, 65, 72, 66, "]", "[", 70, 65, 72, 64, "]", "[", 70, 65, 72, 63, "]", "[", 70, 65, 72, 62, "]", "[", 70, 65, 72, 61, "]", "[", 70, 65, 72, 60, "]", "[", 70, 65, 71, 72, "]", "[", 70, 65, 71, 69, "]", "[", 70, 65, 71, 68, "]", "[", 70, 65, 71, 67, "]", "[", 70, 65, 71, 66, "]", "[", 70, 65, 71, 64, "]", "[", 70, 65, 71, 63, "]", "[", 70, 65, 71, 62, "]", "[", 70, 65, 71, 61, "]", "[", 70, 65, 71, 60, "]", "[", 70, 65, 69, 72, "]", "[", 70, 65, 69, 71, "]", "[", 70, 65, 69, 68, "]", "[", 70, 65, 69, 67, "]", "[", 70, 65, 69, 66, "]", "[", 70, 65, 69, 64, "]", "[", 70, 65, 69, 63, "]", "[", 70, 65, 69, 62, "]", "[", 70, 65, 69, 61, "]", "[", 70, 65, 69, 60, "]", "[", 70, 65, 68, 72, "]", "[", 70, 65, 68, 71, "]", "[", 70, 65, 68, 69, "]", "[", 70, 65, 68, 67, "]", "[", 70, 65, 68, 66, "]", "[", 70, 65, 68, 64, "]", "[", 70, 65, 68, 63, "]", "[", 70, 65, 68, 62, "]", "[", 70, 65, 68, 61, "]", "[", 70, 65, 68, 60, "]", "[", 70, 65, 67, 72, "]", "[", 70, 65, 67, 71, "]", "[", 70, 65, 67, 69, "]", "[", 70, 65, 67, 68, "]", "[", 70, 65, 67, 66, "]", "[", 70, 65, 67, 64, "]", "[", 70, 65, 67, 63, "]", "[", 70, 65, 67, 62, "]", "[", 70, 65, 67, 61, "]", "[", 70, 65, 67, 60, "]", "[", 70, 65, 66, 72, "]", "[", 70, 65, 66, 71, "]", "[", 70, 65, 66, 69, "]", "[", 70, 65, 66, 68, "]", "[", 70, 65, 66, 67, "]", "[", 70, 65, 66, 64, "]", "[", 70, 65, 66, 63, "]", "[", 70, 65, 66, 62, "]", "[", 70, 65, 66, 61, "]", "[", 70, 65, 66, 60, "]", "[", 70, 65, 64, 72, "]", "[", 70, 65, 64, 71, "]", "[", 70, 65, 64, 69, "]", "[", 70, 65, 64, 68, "]", "[", 70, 65, 64, 67, "]", "[", 70, 65, 64, 66, "]", "[", 70, 65, 64, 63, "]", "[", 70, 65, 64, 62, "]", "[", 70, 65, 64, 61, "]", "[", 70, 65, 64, 60, "]", "[", 70, 65, 63, 72, "]", "[", 70, 65, 63, 71, "]", "[", 70, 65, 63, 69, "]", "[", 70, 65, 63, 68, "]", "[", 70, 65, 63, 67, "]", "[", 70, 65, 63, 66, "]", "[", 70, 65, 63, 64, "]", "[", 70, 65, 63, 62, "]", "[", 70, 65, 63, 61, "]", "[", 70, 65, 63, 60, "]", "[", 70, 65, 62, 72, "]", "[", 70, 65, 62, 71, "]", "[", 70, 65, 62, 69, "]", "[", 70, 65, 62, 68, "]", "[", 70, 65, 62, 67, "]", "[", 70, 65, 62, 66, "]", "[", 70, 65, 62, 64, "]", "[", 70, 65, 62, 63, "]", "[", 70, 65, 62, 61, "]", "[", 70, 65, 62, 60, "]", "[", 70, 65, 61, 72, "]", "[", 70, 65, 61, 71, "]", "[", 70, 65, 61, 69, "]", "[", 70, 65, 61, 68, "]", "[", 70, 65, 61, 67, "]", "[", 70, 65, 61, 66, "]", "[", 70, 65, 61, 64, "]", "[", 70, 65, 61, 63, "]", "[", 70, 65, 61, 62, "]", "[", 70, 65, 61, 60, "]", "[", 70, 65, 60, 72, "]", "[", 70, 65, 60, 71, "]", "[", 70, 65, 60, 69, "]", "[", 70, 65, 60, 68, "]", "[", 70, 65, 60, 67, "]", "[", 70, 65, 60, 66, "]", "[", 70, 65, 60, 64, "]", "[", 70, 65, 60, 63, "]", "[", 70, 65, 60, 62, "]", "[", 70, 65, 60, 61, "]", "[", 70, 64, 72, 71, "]", "[", 70, 64, 72, 69, "]", "[", 70, 64, 72, 68, "]", "[", 70 ],
													"reg_data_0000000005" : [ 64, 72, 67, "]", "[", 70, 64, 72, 66, "]", "[", 70, 64, 72, 65, "]", "[", 70, 64, 72, 63, "]", "[", 70, 64, 72, 62, "]", "[", 70, 64, 72, 61, "]", "[", 70, 64, 72, 60, "]", "[", 70, 64, 71, 72, "]", "[", 70, 64, 71, 69, "]", "[", 70, 64, 71, 68, "]", "[", 70, 64, 71, 67, "]", "[", 70, 64, 71, 66, "]", "[", 70, 64, 71, 65, "]", "[", 70, 64, 71, 63, "]", "[", 70, 64, 71, 62, "]", "[", 70, 64, 71, 61, "]", "[", 70, 64, 71, 60, "]", "[", 70, 64, 69, 72, "]", "[", 70, 64, 69, 71, "]", "[", 70, 64, 69, 68, "]", "[", 70, 64, 69, 67, "]", "[", 70, 64, 69, 66, "]", "[", 70, 64, 69, 65, "]", "[", 70, 64, 69, 63, "]", "[", 70, 64, 69, 62, "]", "[", 70, 64, 69, 61, "]", "[", 70, 64, 69, 60, "]", "[", 70, 64, 68, 72, "]", "[", 70, 64, 68, 71, "]", "[", 70, 64, 68, 69, "]", "[", 70, 64, 68, 67, "]", "[", 70, 64, 68, 66, "]", "[", 70, 64, 68, 65, "]", "[", 70, 64, 68, 63, "]", "[", 70, 64, 68, 62, "]", "[", 70, 64, 68, 61, "]", "[", 70, 64, 68, 60, "]", "[", 70, 64, 67, 72, "]", "[", 70, 64, 67, 71, "]", "[", 70, 64, 67, 69, "]", "[", 70, 64, 67, 68, "]", "[", 70, 64, 67, 66, "]", "[", 70, 64, 67, 65, "]", "[", 70, 64, 67, 63, "]", "[", 70, 64, 67, 62, "]", "[", 70, 64, 67, 61, "]", "[", 70, 64, 67, 60, "]", "[", 70, 64, 66, 72, "]", "[", 70, 64, 66, 71, "]", "[", 70, 64, 66, 69, "]", "[", 70, 64, 66, 68, "]", "[", 70, 64, 66, 67, "]", "[", 70, 64, 66, 65, "]", "[", 70, 64, 66, 63, "]", "[", 70, 64, 66, 62, "]", "[", 70, 64, 66, 61, "]", "[", 70, 64, 66, 60, "]", "[", 70, 64, 65, 72, "]", "[", 70, 64, 65, 71, "]", "[", 70, 64, 65, 69, "]", "[", 70, 64, 65, 68, "]", "[", 70, 64, 65, 67, "]", "[", 70, 64, 65, 66, "]", "[", 70, 64, 65, 63, "]", "[", 70, 64, 65, 62, "]", "[", 70, 64, 65, 61, "]", "[", 70, 64, 65, 60, "]", "[", 70, 64, 63, 72, "]", "[", 70, 64, 63, 71, "]", "[", 70, 64, 63, 69, "]", "[", 70, 64, 63, 68, "]", "[", 70, 64, 63, 67, "]", "[", 70, 64, 63, 66, "]", "[", 70, 64, 63, 65, "]", "[", 70, 64, 63, 62, "]", "[", 70, 64, 63, 61, "]", "[", 70, 64, 63, 60, "]", "[", 70, 64, 62, 72, "]", "[", 70, 64, 62, 71, "]", "[", 70, 64, 62, 69, "]", "[", 70, 64, 62, 68, "]", "[", 70, 64, 62, 67, "]", "[", 70, 64, 62, 66, "]", "[", 70, 64, 62, 65, "]", "[", 70, 64, 62, 63, "]", "[", 70, 64, 62, 61, "]", "[", 70, 64, 62, 60, "]", "[", 70, 64, 61, 72, "]", "[", 70, 64, 61, 71, "]", "[", 70, 64, 61, 69, "]", "[", 70, 64, 61, 68, "]", "[", 70, 64, 61, 67, "]", "[", 70, 64, 61, 66, "]", "[", 70, 64, 61, 65, "]", "[", 70, 64, 61, 63, "]", "[", 70, 64, 61, 62, "]", "[", 70, 64, 61, 60, "]", "[", 70, 64, 60, 72, "]", "[", 70, 64, 60, 71, "]", "[", 70, 64, 60, 69, "]", "[", 70, 64, 60, 68, "]", "[", 70, 64, 60, 67, "]", "[", 70, 64, 60, 66, "]", "[", 70, 64, 60, 65, "]", "[", 70, 64, 60, 63, "]", "[", 70, 64, 60, 62, "]", "[", 70, 64, 60, 61, "]", "[", 70, 63, 72, 71, "]", "[", 70, 63, 72, 69, "]", "[", 70, 63, 72, 68, "]", "[", 70, 63, 72, 67, "]", "[", 70, 63, 72, 66, "]", "[", 70, 63, 72, 65, "]", "[", 70, 63, 72, 64, "]", "[", 70, 63, 72, 62, "]", "[", 70, 63, 72, 61, "]", "[", 70, 63, 72, 60, "]", "[", 70, 63, 71, 72, "]", "[", 70, 63, 71, 69, "]", "[", 70, 63, 71, 68, "]", "[", 70, 63, 71, 67, "]", "[", 70, 63, 71, 66, "]", "[", 70, 63, 71, 65, "]", "[", 70, 63, 71, 64, "]", "[", 70, 63, 71, 62, "]", "[", 70, 63, 71, 61, "]", "[", 70, 63, 71, 60, "]", "[", 70, 63, 69, 72, "]", "[", 70, 63, 69, 71, "]", "[", 70, 63, 69, 68, "]", "[", 70, 63, 69, 67, "]", "[", 70, 63, 69, 66, "]", "[", 70, 63, 69, 65, "]", "[", 70, 63, 69, 64, "]", "[", 70, 63, 69, 62, "]", "[", 70, 63, 69, 61, "]", "[", 70, 63, 69, 60, "]", "[", 70, 63, 68, 72, "]", "[", 70, 63, 68, 71, "]", "[", 70, 63, 68, 69, "]", "[", 70, 63, 68, 67, "]", "[", 70, 63, 68, 66, "]", "[", 70, 63, 68, 65, "]", "[", 70, 63, 68, 64, "]", "[", 70, 63, 68, 62, "]", "[", 70, 63, 68, 61, "]", "[", 70, 63, 68, 60, "]", "[", 70, 63, 67, 72, "]", "[", 70, 63, 67, 71, "]", "[", 70, 63, 67, 69, "]", "[", 70, 63, 67, 68, "]", "[", 70, 63, 67, 66, "]", "[", 70, 63, 67, 65, "]", "[", 70, 63, 67, 64, "]", "[", 70, 63, 67, 62, "]", "[", 70, 63, 67, 61, "]", "[", 70, 63, 67, 60, "]", "[", 70, 63, 66, 72, "]", "[", 70, 63, 66, 71, "]", "[", 70, 63, 66, 69, "]", "[", 70, 63, 66, 68, "]", "[", 70, 63, 66, 67, "]", "[", 70, 63, 66, 65, "]", "[", 70, 63, 66, 64, "]", "[", 70, 63, 66, 62, "]", "[", 70, 63, 66, 61, "]", "[", 70, 63, 66, 60, "]", "[", 70, 63, 65, 72, "]", "[", 70, 63, 65, 71, "]", "[", 70, 63, 65, 69, "]", "[", 70, 63, 65, 68, "]", "[", 70, 63, 65, 67, "]", "[", 70, 63, 65, 66, "]", "[", 70, 63, 65, 64, "]", "[", 70, 63, 65, 62, "]", "[", 70, 63, 65, 61, "]", "[", 70, 63, 65, 60, "]", "[", 70, 63, 64, 72, "]", "[", 70, 63, 64, 71, "]", "[", 70, 63, 64, 69, "]", "[", 70, 63, 64, 68, "]", "[", 70, 63, 64, 67, "]", "[", 70, 63, 64, 66, "]", "[", 70, 63, 64, 65, "]", "[", 70, 63, 64, 62, "]", "[", 70, 63, 64, 61, "]", "[", 70, 63, 64, 60, "]", "[", 70, 63, 62, 72, "]", "[", 70, 63, 62, 71, "]", "[", 70, 63, 62, 69, "]", "[", 70, 63, 62, 68, "]", "[", 70, 63, 62, 67, "]", "[", 70, 63, 62, 66, "]", "[", 70, 63, 62, 65, "]", "[", 70, 63, 62, 64, "]", "[", 70, 63, 62, 61, "]", "[", 70, 63, 62, 60, "]", "[", 70, 63, 61, 72, "]", "[", 70, 63, 61, 71, "]", "[", 70, 63, 61, 69, "]", "[", 70, 63, 61, 68, "]", "[", 70, 63, 61, 67, "]", "[", 70, 63, 61, 66, "]", "[", 70, 63, 61, 65, "]", "[", 70, 63, 61, 64, "]", "[", 70, 63, 61, 62, "]", "[", 70, 63, 61, 60, "]", "[", 70, 63, 60, 72, "]", "[", 70, 63, 60, 71, "]", "[", 70, 63, 60, 69, "]", "[", 70, 63, 60, 68, "]", "[", 70, 63, 60, 67, "]", "[", 70, 63, 60, 66, "]", "[", 70, 63, 60, 65, "]", "[", 70, 63, 60, 64, "]", "[", 70, 63, 60, 62, "]", "[", 70, 63, 60, 61, "]", "[", 70, 62, 72, 71, "]", "[", 70, 62, 72, 69, "]", "[", 70, 62, 72, 68, "]", "[", 70, 62, 72, 67, "]", "[", 70, 62, 72, 66, "]", "[", 70, 62, 72, 65, "]", "[", 70, 62, 72, 64, "]", "[", 70, 62, 72, 63, "]", "[", 70, 62, 72, 61, "]", "[", 70, 62, 72, 60, "]", "[", 70, 62, 71, 72, "]", "[", 70, 62, 71, 69, "]", "[", 70, 62, 71, 68, "]", "[", 70, 62, 71, 67, "]", "[", 70, 62, 71, 66, "]", "[", 70, 62, 71, 65, "]", "[", 70, 62, 71, 64, "]", "[", 70, 62, 71, 63, "]", "[", 70, 62, 71, 61, "]", "[", 70, 62, 71, 60, "]", "[", 70, 62, 69, 72, "]", "[", 70, 62, 69, 71, "]", "[", 70, 62, 69, 68, "]", "[", 70, 62, 69, 67, "]", "[", 70, 62, 69, 66, "]", "[", 70, 62, 69, 65, "]", "[", 70, 62, 69, 64, "]", "[", 70, 62, 69, 63, "]", "[", 70, 62, 69, 61, "]", "[", 70, 62, 69, 60, "]", "[", 70, 62, 68, 72, "]", "[", 70, 62, 68, 71, "]", "[", 70, 62, 68, 69, "]", "[", 70, 62, 68, 67, "]", "[", 70, 62, 68, 66, "]", "[", 70, 62, 68, 65, "]", "[", 70, 62, 68, 64, "]", "[", 70, 62, 68, 63, "]", "[", 70, 62, 68, 61, "]", "[", 70, 62, 68, 60, "]", "[", 70, 62, 67, 72, "]", "[", 70, 62, 67, 71, "]", "[", 70, 62, 67, 69, "]", "[", 70, 62, 67, 68, "]", "[", 70, 62, 67, 66, "]", "[", 70, 62, 67, 65, "]", "[", 70, 62, 67, 64, "]", "[", 70, 62, 67, 63, "]", "[", 70, 62, 67, 61, "]", "[", 70, 62, 67, 60, "]", "[", 70, 62, 66, 72, "]", "[", 70, 62, 66, 71, "]", "[", 70, 62, 66, 69, "]", "[", 70, 62, 66, 68, "]", "[", 70, 62, 66, 67, "]", "[", 70, 62, 66, 65, "]", "[", 70, 62, 66, 64, "]", "[", 70, 62, 66, 63, "]", "[", 70, 62, 66, 61, "]", "[", 70, 62, 66, 60, "]", "[", 70, 62, 65, 72, "]", "[", 70, 62, 65, 71, "]", "[", 70, 62, 65, 69, "]", "[", 70, 62, 65, 68, "]", "[", 70, 62, 65, 67, "]", "[", 70, 62, 65, 66, "]", "[", 70, 62, 65, 64, "]", "[", 70, 62, 65, 63, "]", "[", 70, 62, 65, 61, "]", "[", 70, 62, 65, 60, "]", "[", 70, 62, 64, 72, "]", "[", 70, 62, 64, 71, "]", "[", 70, 62, 64, 69, "]", "[", 70, 62, 64, 68, "]", "[", 70, 62, 64, 67, "]", "[", 70, 62, 64, 66, "]", "[", 70, 62, 64, 65, "]", "[", 70, 62, 64, 63, "]", "[", 70, 62, 64, 61, "]", "[", 70, 62, 64, 60, "]", "[", 70, 62, 63, 72, "]", "[", 70, 62, 63, 71, "]", "[", 70, 62, 63, 69, "]", "[", 70, 62, 63, 68, "]", "[", 70, 62, 63, 67, "]", "[", 70, 62, 63, 66, "]", "[", 70, 62, 63, 65, "]", "[", 70, 62, 63, 64, "]", "[", 70, 62, 63, 61, "]", "[", 70, 62, 63, 60, "]", "[", 70, 62, 61, 72, "]", "[", 70, 62, 61, 71, "]", "[", 70, 62, 61, 69, "]", "[", 70, 62, 61, 68, "]", "[", 70, 62, 61, 67, "]", "[", 70, 62, 61, 66, "]", "[", 70, 62, 61, 65, "]", "[", 70, 62, 61, 64, "]", "[", 70, 62, 61, 63, "]", "[", 70, 62, 61, 60, "]", "[", 70, 62, 60, 72, "]", "[", 70, 62, 60, 71, "]", "[", 70, 62, 60, 69, "]", "[", 70, 62, 60, 68, "]", "[", 70, 62, 60, 67, "]", "[", 70, 62, 60, 66, "]", "[", 70, 62, 60, 65, "]", "[", 70, 62, 60, 64, "]", "[", 70, 62, 60, 63, "]", "[", 70, 62, 60, 61, "]", "[", 70, 61, 72, 71, "]", "[", 70, 61, 72, 69, "]", "[", 70, 61, 72, 68, "]", "[", 70, 61, 72, 67, "]", "[", 70, 61, 72, 66, "]", "[", 70, 61, 72, 65, "]", "[", 70, 61, 72, 64, "]", "[", 70, 61, 72, 63, "]", "[", 70, 61, 72, 62, "]", "[", 70, 61, 72, 60, "]", "[", 70, 61, 71, 72, "]", "[", 70, 61, 71, 69, "]", "[", 70, 61, 71, 68, "]", "[", 70, 61, 71, 67, "]", "[", 70, 61, 71, 66, "]", "[", 70, 61, 71, 65, "]", "[", 70, 61, 71, 64, "]", "[", 70, 61, 71, 63, "]", "[", 70, 61, 71, 62, "]", "[", 70, 61, 71, 60, "]", "[", 70, 61, 69, 72, "]", "[", 70, 61, 69, 71, "]", "[", 70, 61, 69, 68, "]", "[", 70, 61, 69, 67, "]", "[", 70, 61, 69, 66, "]", "[", 70, 61, 69, 65, "]", "[", 70, 61, 69, 64, "]", "[", 70, 61, 69, 63, "]", "[", 70, 61, 69, 62, "]", "[", 70, 61, 69, 60, "]", "[", 70, 61, 68, 72, "]", "[", 70, 61, 68, 71, "]", "[", 70, 61, 68, 69, "]", "[", 70, 61, 68, 67, "]", "[", 70, 61, 68, 66, "]", "[", 70, 61, 68, 65, "]", "[", 70, 61, 68, 64, "]", "[", 70, 61, 68, 63, "]", "[", 70, 61, 68, 62, "]", "[", 70, 61, 68, 60, "]", "[", 70, 61, 67, 72, "]", "[", 70, 61, 67, 71, "]", "[", 70, 61, 67, 69, "]", "[", 70, 61, 67, 68, "]", "[", 70, 61, 67, 66, "]", "[", 70, 61, 67, 65, "]", "[", 70, 61, 67, 64, "]", "[", 70, 61, 67, 63, "]", "[", 70, 61, 67, 62, "]", "[", 70, 61, 67, 60, "]", "[", 70, 61, 66, 72, "]", "[", 70, 61, 66, 71, "]", "[", 70, 61, 66, 69, "]", "[", 70, 61, 66, 68, "]", "[", 70, 61, 66, 67, "]", "[", 70, 61, 66, 65, "]", "[", 70, 61, 66, 64, "]", "[", 70, 61, 66, 63, "]", "[", 70, 61, 66, 62, "]", "[", 70, 61, 66, 60, "]", "[", 70, 61, 65, 72, "]", "[", 70, 61, 65, 71, "]", "[", 70, 61, 65, 69, "]", "[", 70, 61, 65, 68, "]", "[", 70, 61, 65, 67, "]", "[", 70, 61, 65, 66, "]", "[", 70, 61, 65, 64, "]", "[", 70, 61, 65, 63, "]", "[", 70, 61, 65, 62, "]", "[", 70, 61, 65, 60, "]", "[", 70, 61, 64, 72, "]", "[", 70, 61, 64, 71, "]", "[", 70, 61, 64, 69, "]", "[", 70, 61, 64, 68, "]", "[", 70, 61, 64, 67, "]", "[", 70, 61, 64, 66, "]", "[", 70, 61, 64, 65, "]", "[", 70, 61, 64, 63, "]", "[", 70, 61, 64, 62, "]", "[", 70, 61, 64, 60, "]", "[", 70, 61, 63, 72, "]", "[", 70, 61, 63, 71, "]", "[", 70, 61, 63, 69, "]", "[", 70, 61, 63, 68, "]", "[", 70, 61, 63, 67, "]", "[", 70, 61, 63, 66, "]", "[", 70, 61, 63, 65, "]", "[", 70, 61, 63, 64, "]", "[", 70, 61, 63, 62, "]", "[", 70, 61, 63, 60, "]", "[", 70, 61, 62, 72, "]", "[", 70, 61, 62, 71, "]", "[", 70, 61, 62, 69, "]", "[", 70, 61, 62, 68, "]", "[", 70, 61, 62, 67, "]", "[", 70, 61, 62, 66, "]", "[", 70, 61, 62, 65, "]", "[", 70, 61, 62, 64, "]", "[", 70, 61, 62, 63, "]", "[", 70, 61, 62, 60, "]", "[", 70, 61, 60, 72, "]", "[", 70, 61, 60, 71, "]", "[", 70, 61, 60, 69, "]", "[", 70, 61, 60, 68, "]", "[", 70, 61, 60, 67, "]", "[", 70, 61, 60, 66, "]", "[", 70, 61, 60, 65, "]", "[", 70, 61, 60, 64, "]", "[", 70, 61, 60, 63, "]", "[", 70, 61, 60, 62, "]", "[", 70, 60, 72, 71, "]", "[", 70, 60, 72, 69, "]", "[", 70, 60, 72, 68, "]", "[", 70, 60, 72, 67, "]", "[", 70, 60, 72, 66, "]", "[", 70, 60, 72, 65, "]", "[", 70, 60, 72, 64, "]", "[", 70, 60, 72, 63, "]", "[", 70, 60, 72, 62, "]", "[", 70, 60, 72, 61, "]", "[", 70, 60, 71, 72, "]", "[", 70, 60, 71, 69, "]", "[", 70, 60, 71, 68, "]", "[", 70, 60, 71, 67, "]", "[", 70, 60, 71, 66, "]", "[", 70, 60, 71, 65, "]", "[", 70, 60, 71, 64, "]", "[", 70, 60, 71, 63, "]", "[", 70, 60, 71, 62, "]", "[", 70, 60, 71, 61, "]", "[", 70, 60, 69, 72, "]", "[", 70, 60, 69, 71, "]", "[", 70, 60, 69, 68, "]", "[", 70, 60, 69, 67, "]", "[", 70, 60, 69, 66, "]", "[", 70, 60, 69, 65, "]", "[", 70, 60, 69, 64, "]", "[", 70, 60, 69, 63, "]", "[", 70, 60, 69, 62, "]", "[", 70, 60, 69, 61, "]", "[", 70, 60, 68, 72, "]", "[", 70, 60, 68, 71, "]", "[", 70, 60, 68, 69, "]", "[", 70, 60, 68, 67, "]", "[", 70, 60, 68, 66, "]", "[", 70, 60, 68, 65, "]", "[", 70, 60, 68, 64, "]", "[", 70, 60, 68, 63, "]", "[", 70, 60, 68, 62, "]", "[", 70, 60, 68, 61, "]", "[", 70, 60, 67, 72, "]", "[", 70, 60, 67, 71, "]", "[", 70, 60, 67, 69, "]", "[", 70, 60, 67, 68, "]", "[", 70, 60, 67, 66, "]", "[", 70, 60, 67, 65, "]", "[", 70, 60, 67, 64, "]", "[", 70, 60, 67, 63, "]", "[", 70, 60, 67, 62, "]", "[", 70, 60, 67, 61, "]", "[", 70, 60, 66, 72, "]", "[", 70, 60, 66, 71, "]", "[", 70, 60, 66, 69, "]", "[", 70, 60, 66, 68, "]", "[", 70, 60, 66, 67, "]", "[", 70, 60, 66, 65, "]", "[", 70, 60, 66, 64, "]", "[", 70, 60, 66, 63, "]", "[", 70, 60, 66, 62, "]", "[", 70, 60, 66, 61, "]", "[", 70, 60, 65, 72, "]", "[", 70, 60, 65, 71, "]", "[", 70, 60, 65, 69, "]", "[", 70, 60, 65, 68, "]", "[", 70, 60, 65, 67, "]", "[", 70, 60, 65, 66, "]", "[", 70, 60, 65, 64, "]", "[", 70, 60, 65, 63, "]", "[", 70, 60, 65, 62, "]", "[", 70, 60, 65, 61, "]", "[", 70, 60, 64, 72, "]", "[", 70, 60, 64, 71, "]", "[", 70, 60, 64, 69, "]", "[", 70, 60, 64, 68, "]", "[", 70, 60, 64, 67, "]", "[", 70, 60, 64, 66, "]", "[", 70, 60, 64, 65, "]", "[", 70, 60, 64, 63, "]", "[", 70, 60, 64, 62, "]", "[", 70, 60, 64, 61, "]", "[", 70, 60, 63, 72, "]", "[", 70, 60, 63, 71, "]", "[", 70, 60, 63, 69, "]", "[", 70, 60, 63, 68, "]", "[", 70, 60, 63, 67, "]", "[", 70, 60, 63, 66, "]", "[", 70, 60, 63, 65, "]", "[", 70, 60, 63, 64, "]", "[", 70, 60, 63, 62, "]", "[", 70, 60, 63, 61, "]", "[", 70, 60, 62, 72, "]", "[", 70, 60, 62, 71, "]", "[", 70, 60, 62, 69, "]", "[", 70, 60, 62, 68, "]", "[", 70, 60, 62, 67, "]", "[", 70, 60, 62, 66, "]", "[", 70, 60, 62, 65, "]", "[", 70, 60, 62, 64, "]", "[", 70, 60, 62, 63, "]", "[", 70, 60, 62, 61, "]", "[", 70, 60, 61, 72, "]", "[", 70, 60, 61, 71, "]", "[", 70, 60, 61, 69, "]", "[", 70, 60, 61, 68, "]", "[", 70, 60, 61, 67, "]", "[", 70, 60, 61, 66, "]", "[", 70, 60, 61, 65, "]", "[", 70, 60, 61, 64, "]", "[", 70, 60, 61, 63, "]", "[", 70, 60, 61, 62, "]", "[", 69, 72, 71, 70, "]", "[", 69, 72, 71, 68, "]", "[", 69, 72, 71, 67, "]", "[", 69, 72, 71, 66, "]", "[", 69, 72, 71, 65, "]", "[", 69, 72, 71, 64, "]", "[", 69, 72, 71, 63, "]", "[", 69, 72, 71, 62, "]", "[", 69, 72, 71, 61, "]", "[", 69, 72, 71, 60, "]", "[", 69, 72, 70, 71, "]", "[", 69, 72, 70, 68, "]", "[", 69, 72, 70, 67, "]", "[", 69, 72, 70, 66, "]", "[", 69, 72, 70, 65, "]", "[", 69, 72, 70, 64, "]", "[", 69, 72, 70, 63, "]", "[", 69, 72, 70, 62, "]", "[", 69, 72, 70, 61, "]", "[", 69, 72, 70, 60, "]", "[", 69, 72, 68, 71, "]", "[", 69, 72, 68, 70, "]", "[", 69, 72, 68, 67, "]", "[", 69, 72, 68, 66, "]", "[", 69, 72, 68, 65, "]", "[", 69, 72, 68, 64, "]", "[", 69, 72, 68, 63, "]", "[", 69, 72, 68, 62, "]", "[", 69, 72, 68, 61, "]", "[", 69, 72, 68, 60, "]", "[", 69, 72, 67, 71, "]", "[", 69, 72, 67, 70, "]", "[", 69, 72, 67, 68, "]", "[", 69, 72, 67, 66, "]", "[", 69, 72, 67, 65, "]", "[", 69, 72, 67, 64, "]", "[", 69, 72, 67, 63, "]", "[", 69, 72, 67, 62, "]", "[", 69, 72, 67, 61, "]", "[", 69, 72, 67, 60, "]", "[", 69, 72, 66, 71, "]", "[", 69, 72, 66, 70, "]", "[", 69, 72, 66, 68, "]", "[", 69, 72, 66, 67, "]", "[", 69, 72, 66, 65, "]", "[", 69, 72, 66, 64, "]", "[", 69, 72, 66, 63, "]", "[", 69, 72, 66, 62, "]", "[", 69, 72, 66, 61, "]", "[", 69, 72, 66, 60, "]", "[", 69, 72, 65, 71, "]", "[", 69, 72, 65, 70, "]", "[", 69, 72, 65, 68, "]", "[", 69, 72, 65, 67, "]", "[", 69, 72, 65, 66, "]", "[", 69, 72, 65, 64, "]", "[", 69, 72, 65, 63, "]", "[", 69, 72, 65, 62, "]", "[", 69, 72, 65, 61, "]", "[", 69, 72, 65, 60, "]", "[", 69, 72, 64, 71, "]", "[", 69, 72, 64, 70, "]", "[", 69, 72, 64, 68, "]", "[", 69, 72, 64, 67, "]", "[", 69, 72, 64, 66, "]", "[", 69, 72, 64, 65, "]", "[", 69, 72, 64, 63, "]", "[", 69, 72, 64, 62, "]", "[", 69, 72, 64, 61, "]", "[", 69, 72, 64, 60, "]", "[", 69, 72, 63, 71, "]", "[", 69, 72, 63, 70, "]", "[", 69, 72, 63, 68, "]", "[", 69, 72, 63, 67, "]", "[", 69, 72, 63, 66, "]", "[", 69, 72, 63, 65, "]", "[", 69, 72, 63, 64, "]", "[", 69, 72, 63, 62, "]", "[", 69, 72, 63, 61, "]", "[", 69, 72, 63, 60, "]", "[", 69, 72, 62, 71, "]", "[", 69, 72, 62, 70, "]", "[", 69, 72, 62, 68, "]", "[", 69, 72, 62, 67, "]", "[", 69, 72, 62, 66, "]", "[", 69, 72, 62, 65, "]", "[", 69, 72, 62, 64, "]", "[", 69, 72, 62, 63, "]", "[", 69, 72, 62, 61, "]", "[", 69, 72, 62, 60, "]", "[", 69, 72, 61, 71, "]", "[", 69, 72, 61, 70, "]", "[", 69, 72, 61, 68, "]", "[", 69, 72, 61, 67, "]", "[", 69, 72, 61, 66, "]", "[", 69, 72, 61, 65, "]", "[", 69, 72, 61, 64, "]", "[", 69, 72, 61, 63, "]", "[", 69, 72, 61, 62, "]", "[", 69, 72, 61, 60, "]", "[", 69, 72, 60, 71, "]", "[", 69, 72, 60, 70, "]", "[", 69, 72, 60, 68, "]", "[", 69, 72, 60, 67, "]", "[", 69, 72, 60, 66, "]", "[", 69, 72, 60, 65, "]", "[", 69, 72, 60, 64, "]", "[", 69, 72, 60, 63, "]", "[", 69, 72, 60, 62, "]", "[", 69, 72, 60, 61, "]", "[", 69, 71, 72, 70, "]", "[", 69, 71, 72, 68, "]", "[", 69, 71, 72, 67, "]", "[", 69, 71, 72, 66, "]", "[", 69, 71, 72, 65, "]", "[", 69, 71, 72, 64, "]", "[", 69, 71, 72, 63, "]", "[", 69, 71, 72, 62, "]", "[", 69, 71, 72, 61, "]", "[", 69, 71, 72, 60, "]", "[", 69, 71, 70, 72, "]", "[", 69, 71, 70, 68, "]", "[", 69, 71, 70, 67, "]", "[", 69, 71, 70, 66, "]", "[", 69, 71, 70, 65, "]", "[", 69, 71, 70, 64, "]", "[", 69, 71, 70, 63, "]", "[", 69, 71, 70, 62, "]", "[", 69, 71, 70, 61, "]", "[", 69, 71, 70, 60, "]", "[", 69, 71, 68, 72, "]", "[", 69, 71, 68, 70, "]", "[", 69, 71, 68, 67, "]", "[", 69, 71, 68, 66, "]", "[", 69, 71, 68, 65, "]", "[", 69, 71, 68, 64, "]" ],
													"reg_data_0000000006" : [ "[", 69, 71, 68, 63, "]", "[", 69, 71, 68, 62, "]", "[", 69, 71, 68, 61, "]", "[", 69, 71, 68, 60, "]", "[", 69, 71, 67, 72, "]", "[", 69, 71, 67, 70, "]", "[", 69, 71, 67, 68, "]", "[", 69, 71, 67, 66, "]", "[", 69, 71, 67, 65, "]", "[", 69, 71, 67, 64, "]", "[", 69, 71, 67, 63, "]", "[", 69, 71, 67, 62, "]", "[", 69, 71, 67, 61, "]", "[", 69, 71, 67, 60, "]", "[", 69, 71, 66, 72, "]", "[", 69, 71, 66, 70, "]", "[", 69, 71, 66, 68, "]", "[", 69, 71, 66, 67, "]", "[", 69, 71, 66, 65, "]", "[", 69, 71, 66, 64, "]", "[", 69, 71, 66, 63, "]", "[", 69, 71, 66, 62, "]", "[", 69, 71, 66, 61, "]", "[", 69, 71, 66, 60, "]", "[", 69, 71, 65, 72, "]", "[", 69, 71, 65, 70, "]", "[", 69, 71, 65, 68, "]", "[", 69, 71, 65, 67, "]", "[", 69, 71, 65, 66, "]", "[", 69, 71, 65, 64, "]", "[", 69, 71, 65, 63, "]", "[", 69, 71, 65, 62, "]", "[", 69, 71, 65, 61, "]", "[", 69, 71, 65, 60, "]", "[", 69, 71, 64, 72, "]", "[", 69, 71, 64, 70, "]", "[", 69, 71, 64, 68, "]", "[", 69, 71, 64, 67, "]", "[", 69, 71, 64, 66, "]", "[", 69, 71, 64, 65, "]", "[", 69, 71, 64, 63, "]", "[", 69, 71, 64, 62, "]", "[", 69, 71, 64, 61, "]", "[", 69, 71, 64, 60, "]", "[", 69, 71, 63, 72, "]", "[", 69, 71, 63, 70, "]", "[", 69, 71, 63, 68, "]", "[", 69, 71, 63, 67, "]", "[", 69, 71, 63, 66, "]", "[", 69, 71, 63, 65, "]", "[", 69, 71, 63, 64, "]", "[", 69, 71, 63, 62, "]", "[", 69, 71, 63, 61, "]", "[", 69, 71, 63, 60, "]", "[", 69, 71, 62, 72, "]", "[", 69, 71, 62, 70, "]", "[", 69, 71, 62, 68, "]", "[", 69, 71, 62, 67, "]", "[", 69, 71, 62, 66, "]", "[", 69, 71, 62, 65, "]", "[", 69, 71, 62, 64, "]", "[", 69, 71, 62, 63, "]", "[", 69, 71, 62, 61, "]", "[", 69, 71, 62, 60, "]", "[", 69, 71, 61, 72, "]", "[", 69, 71, 61, 70, "]", "[", 69, 71, 61, 68, "]", "[", 69, 71, 61, 67, "]", "[", 69, 71, 61, 66, "]", "[", 69, 71, 61, 65, "]", "[", 69, 71, 61, 64, "]", "[", 69, 71, 61, 63, "]", "[", 69, 71, 61, 62, "]", "[", 69, 71, 61, 60, "]", "[", 69, 71, 60, 72, "]", "[", 69, 71, 60, 70, "]", "[", 69, 71, 60, 68, "]", "[", 69, 71, 60, 67, "]", "[", 69, 71, 60, 66, "]", "[", 69, 71, 60, 65, "]", "[", 69, 71, 60, 64, "]", "[", 69, 71, 60, 63, "]", "[", 69, 71, 60, 62, "]", "[", 69, 71, 60, 61, "]", "[", 69, 70, 72, 71, "]", "[", 69, 70, 72, 68, "]", "[", 69, 70, 72, 67, "]", "[", 69, 70, 72, 66, "]", "[", 69, 70, 72, 65, "]", "[", 69, 70, 72, 64, "]", "[", 69, 70, 72, 63, "]", "[", 69, 70, 72, 62, "]", "[", 69, 70, 72, 61, "]", "[", 69, 70, 72, 60, "]", "[", 69, 70, 71, 72, "]", "[", 69, 70, 71, 68, "]", "[", 69, 70, 71, 67, "]", "[", 69, 70, 71, 66, "]", "[", 69, 70, 71, 65, "]", "[", 69, 70, 71, 64, "]", "[", 69, 70, 71, 63, "]", "[", 69, 70, 71, 62, "]", "[", 69, 70, 71, 61, "]", "[", 69, 70, 71, 60, "]", "[", 69, 70, 68, 72, "]", "[", 69, 70, 68, 71, "]", "[", 69, 70, 68, 67, "]", "[", 69, 70, 68, 66, "]", "[", 69, 70, 68, 65, "]", "[", 69, 70, 68, 64, "]", "[", 69, 70, 68, 63, "]", "[", 69, 70, 68, 62, "]", "[", 69, 70, 68, 61, "]", "[", 69, 70, 68, 60, "]", "[", 69, 70, 67, 72, "]", "[", 69, 70, 67, 71, "]", "[", 69, 70, 67, 68, "]", "[", 69, 70, 67, 66, "]", "[", 69, 70, 67, 65, "]", "[", 69, 70, 67, 64, "]", "[", 69, 70, 67, 63, "]", "[", 69, 70, 67, 62, "]", "[", 69, 70, 67, 61, "]", "[", 69, 70, 67, 60, "]", "[", 69, 70, 66, 72, "]", "[", 69, 70, 66, 71, "]", "[", 69, 70, 66, 68, "]", "[", 69, 70, 66, 67, "]", "[", 69, 70, 66, 65, "]", "[", 69, 70, 66, 64, "]", "[", 69, 70, 66, 63, "]", "[", 69, 70, 66, 62, "]", "[", 69, 70, 66, 61, "]", "[", 69, 70, 66, 60, "]", "[", 69, 70, 65, 72, "]", "[", 69, 70, 65, 71, "]", "[", 69, 70, 65, 68, "]", "[", 69, 70, 65, 67, "]", "[", 69, 70, 65, 66, "]", "[", 69, 70, 65, 64, "]", "[", 69, 70, 65, 63, "]", "[", 69, 70, 65, 62, "]", "[", 69, 70, 65, 61, "]", "[", 69, 70, 65, 60, "]", "[", 69, 70, 64, 72, "]", "[", 69, 70, 64, 71, "]", "[", 69, 70, 64, 68, "]", "[", 69, 70, 64, 67, "]", "[", 69, 70, 64, 66, "]", "[", 69, 70, 64, 65, "]", "[", 69, 70, 64, 63, "]", "[", 69, 70, 64, 62, "]", "[", 69, 70, 64, 61, "]", "[", 69, 70, 64, 60, "]", "[", 69, 70, 63, 72, "]", "[", 69, 70, 63, 71, "]", "[", 69, 70, 63, 68, "]", "[", 69, 70, 63, 67, "]", "[", 69, 70, 63, 66, "]", "[", 69, 70, 63, 65, "]", "[", 69, 70, 63, 64, "]", "[", 69, 70, 63, 62, "]", "[", 69, 70, 63, 61, "]", "[", 69, 70, 63, 60, "]", "[", 69, 70, 62, 72, "]", "[", 69, 70, 62, 71, "]", "[", 69, 70, 62, 68, "]", "[", 69, 70, 62, 67, "]", "[", 69, 70, 62, 66, "]", "[", 69, 70, 62, 65, "]", "[", 69, 70, 62, 64, "]", "[", 69, 70, 62, 63, "]", "[", 69, 70, 62, 61, "]", "[", 69, 70, 62, 60, "]", "[", 69, 70, 61, 72, "]", "[", 69, 70, 61, 71, "]", "[", 69, 70, 61, 68, "]", "[", 69, 70, 61, 67, "]", "[", 69, 70, 61, 66, "]", "[", 69, 70, 61, 65, "]", "[", 69, 70, 61, 64, "]", "[", 69, 70, 61, 63, "]", "[", 69, 70, 61, 62, "]", "[", 69, 70, 61, 60, "]", "[", 69, 70, 60, 72, "]", "[", 69, 70, 60, 71, "]", "[", 69, 70, 60, 68, "]", "[", 69, 70, 60, 67, "]", "[", 69, 70, 60, 66, "]", "[", 69, 70, 60, 65, "]", "[", 69, 70, 60, 64, "]", "[", 69, 70, 60, 63, "]", "[", 69, 70, 60, 62, "]", "[", 69, 70, 60, 61, "]", "[", 69, 68, 72, 71, "]", "[", 69, 68, 72, 70, "]", "[", 69, 68, 72, 67, "]", "[", 69, 68, 72, 66, "]", "[", 69, 68, 72, 65, "]", "[", 69, 68, 72, 64, "]", "[", 69, 68, 72, 63, "]", "[", 69, 68, 72, 62, "]", "[", 69, 68, 72, 61, "]", "[", 69, 68, 72, 60, "]", "[", 69, 68, 71, 72, "]", "[", 69, 68, 71, 70, "]", "[", 69, 68, 71, 67, "]", "[", 69, 68, 71, 66, "]", "[", 69, 68, 71, 65, "]", "[", 69, 68, 71, 64, "]", "[", 69, 68, 71, 63, "]", "[", 69, 68, 71, 62, "]", "[", 69, 68, 71, 61, "]", "[", 69, 68, 71, 60, "]", "[", 69, 68, 70, 72, "]", "[", 69, 68, 70, 71, "]", "[", 69, 68, 70, 67, "]", "[", 69, 68, 70, 66, "]", "[", 69, 68, 70, 65, "]", "[", 69, 68, 70, 64, "]", "[", 69, 68, 70, 63, "]", "[", 69, 68, 70, 62, "]", "[", 69, 68, 70, 61, "]", "[", 69, 68, 70, 60, "]", "[", 69, 68, 67, 72, "]", "[", 69, 68, 67, 71, "]", "[", 69, 68, 67, 70, "]", "[", 69, 68, 67, 66, "]", "[", 69, 68, 67, 65, "]", "[", 69, 68, 67, 64, "]", "[", 69, 68, 67, 63, "]", "[", 69, 68, 67, 62, "]", "[", 69, 68, 67, 61, "]", "[", 69, 68, 67, 60, "]", "[", 69, 68, 66, 72, "]", "[", 69, 68, 66, 71, "]", "[", 69, 68, 66, 70, "]", "[", 69, 68, 66, 67, "]", "[", 69, 68, 66, 65, "]", "[", 69, 68, 66, 64, "]", "[", 69, 68, 66, 63, "]", "[", 69, 68, 66, 62, "]", "[", 69, 68, 66, 61, "]", "[", 69, 68, 66, 60, "]", "[", 69, 68, 65, 72, "]", "[", 69, 68, 65, 71, "]", "[", 69, 68, 65, 70, "]", "[", 69, 68, 65, 67, "]", "[", 69, 68, 65, 66, "]", "[", 69, 68, 65, 64, "]", "[", 69, 68, 65, 63, "]", "[", 69, 68, 65, 62, "]", "[", 69, 68, 65, 61, "]", "[", 69, 68, 65, 60, "]", "[", 69, 68, 64, 72, "]", "[", 69, 68, 64, 71, "]", "[", 69, 68, 64, 70, "]", "[", 69, 68, 64, 67, "]", "[", 69, 68, 64, 66, "]", "[", 69, 68, 64, 65, "]", "[", 69, 68, 64, 63, "]", "[", 69, 68, 64, 62, "]", "[", 69, 68, 64, 61, "]", "[", 69, 68, 64, 60, "]", "[", 69, 68, 63, 72, "]", "[", 69, 68, 63, 71, "]", "[", 69, 68, 63, 70, "]", "[", 69, 68, 63, 67, "]", "[", 69, 68, 63, 66, "]", "[", 69, 68, 63, 65, "]", "[", 69, 68, 63, 64, "]", "[", 69, 68, 63, 62, "]", "[", 69, 68, 63, 61, "]", "[", 69, 68, 63, 60, "]", "[", 69, 68, 62, 72, "]", "[", 69, 68, 62, 71, "]", "[", 69, 68, 62, 70, "]", "[", 69, 68, 62, 67, "]", "[", 69, 68, 62, 66, "]", "[", 69, 68, 62, 65, "]", "[", 69, 68, 62, 64, "]", "[", 69, 68, 62, 63, "]", "[", 69, 68, 62, 61, "]", "[", 69, 68, 62, 60, "]", "[", 69, 68, 61, 72, "]", "[", 69, 68, 61, 71, "]", "[", 69, 68, 61, 70, "]", "[", 69, 68, 61, 67, "]", "[", 69, 68, 61, 66, "]", "[", 69, 68, 61, 65, "]", "[", 69, 68, 61, 64, "]", "[", 69, 68, 61, 63, "]", "[", 69, 68, 61, 62, "]", "[", 69, 68, 61, 60, "]", "[", 69, 68, 60, 72, "]", "[", 69, 68, 60, 71, "]", "[", 69, 68, 60, 70, "]", "[", 69, 68, 60, 67, "]", "[", 69, 68, 60, 66, "]", "[", 69, 68, 60, 65, "]", "[", 69, 68, 60, 64, "]", "[", 69, 68, 60, 63, "]", "[", 69, 68, 60, 62, "]", "[", 69, 68, 60, 61, "]", "[", 69, 67, 72, 71, "]", "[", 69, 67, 72, 70, "]", "[", 69, 67, 72, 68, "]", "[", 69, 67, 72, 66, "]", "[", 69, 67, 72, 65, "]", "[", 69, 67, 72, 64, "]", "[", 69, 67, 72, 63, "]", "[", 69, 67, 72, 62, "]", "[", 69, 67, 72, 61, "]", "[", 69, 67, 72, 60, "]", "[", 69, 67, 71, 72, "]", "[", 69, 67, 71, 70, "]", "[", 69, 67, 71, 68, "]", "[", 69, 67, 71, 66, "]", "[", 69, 67, 71, 65, "]", "[", 69, 67, 71, 64, "]", "[", 69, 67, 71, 63, "]", "[", 69, 67, 71, 62, "]", "[", 69, 67, 71, 61, "]", "[", 69, 67, 71, 60, "]", "[", 69, 67, 70, 72, "]", "[", 69, 67, 70, 71, "]", "[", 69, 67, 70, 68, "]", "[", 69, 67, 70, 66, "]", "[", 69, 67, 70, 65, "]", "[", 69, 67, 70, 64, "]", "[", 69, 67, 70, 63, "]", "[", 69, 67, 70, 62, "]", "[", 69, 67, 70, 61, "]", "[", 69, 67, 70, 60, "]", "[", 69, 67, 68, 72, "]", "[", 69, 67, 68, 71, "]", "[", 69, 67, 68, 70, "]", "[", 69, 67, 68, 66, "]", "[", 69, 67, 68, 65, "]", "[", 69, 67, 68, 64, "]", "[", 69, 67, 68, 63, "]", "[", 69, 67, 68, 62, "]", "[", 69, 67, 68, 61, "]", "[", 69, 67, 68, 60, "]", "[", 69, 67, 66, 72, "]", "[", 69, 67, 66, 71, "]", "[", 69, 67, 66, 70, "]", "[", 69, 67, 66, 68, "]", "[", 69, 67, 66, 65, "]", "[", 69, 67, 66, 64, "]", "[", 69, 67, 66, 63, "]", "[", 69, 67, 66, 62, "]", "[", 69, 67, 66, 61, "]", "[", 69, 67, 66, 60, "]", "[", 69, 67, 65, 72, "]", "[", 69, 67, 65, 71, "]", "[", 69, 67, 65, 70, "]", "[", 69, 67, 65, 68, "]", "[", 69, 67, 65, 66, "]", "[", 69, 67, 65, 64, "]", "[", 69, 67, 65, 63, "]", "[", 69, 67, 65, 62, "]", "[", 69, 67, 65, 61, "]", "[", 69, 67, 65, 60, "]", "[", 69, 67, 64, 72, "]", "[", 69, 67, 64, 71, "]", "[", 69, 67, 64, 70, "]", "[", 69, 67, 64, 68, "]", "[", 69, 67, 64, 66, "]", "[", 69, 67, 64, 65, "]", "[", 69, 67, 64, 63, "]", "[", 69, 67, 64, 62, "]", "[", 69, 67, 64, 61, "]", "[", 69, 67, 64, 60, "]", "[", 69, 67, 63, 72, "]", "[", 69, 67, 63, 71, "]", "[", 69, 67, 63, 70, "]", "[", 69, 67, 63, 68, "]", "[", 69, 67, 63, 66, "]", "[", 69, 67, 63, 65, "]", "[", 69, 67, 63, 64, "]", "[", 69, 67, 63, 62, "]", "[", 69, 67, 63, 61, "]", "[", 69, 67, 63, 60, "]", "[", 69, 67, 62, 72, "]", "[", 69, 67, 62, 71, "]", "[", 69, 67, 62, 70, "]", "[", 69, 67, 62, 68, "]", "[", 69, 67, 62, 66, "]", "[", 69, 67, 62, 65, "]", "[", 69, 67, 62, 64, "]", "[", 69, 67, 62, 63, "]", "[", 69, 67, 62, 61, "]", "[", 69, 67, 62, 60, "]", "[", 69, 67, 61, 72, "]", "[", 69, 67, 61, 71, "]", "[", 69, 67, 61, 70, "]", "[", 69, 67, 61, 68, "]", "[", 69, 67, 61, 66, "]", "[", 69, 67, 61, 65, "]", "[", 69, 67, 61, 64, "]", "[", 69, 67, 61, 63, "]", "[", 69, 67, 61, 62, "]", "[", 69, 67, 61, 60, "]", "[", 69, 67, 60, 72, "]", "[", 69, 67, 60, 71, "]", "[", 69, 67, 60, 70, "]", "[", 69, 67, 60, 68, "]", "[", 69, 67, 60, 66, "]", "[", 69, 67, 60, 65, "]", "[", 69, 67, 60, 64, "]", "[", 69, 67, 60, 63, "]", "[", 69, 67, 60, 62, "]", "[", 69, 67, 60, 61, "]", "[", 69, 66, 72, 71, "]", "[", 69, 66, 72, 70, "]", "[", 69, 66, 72, 68, "]", "[", 69, 66, 72, 67, "]", "[", 69, 66, 72, 65, "]", "[", 69, 66, 72, 64, "]", "[", 69, 66, 72, 63, "]", "[", 69, 66, 72, 62, "]", "[", 69, 66, 72, 61, "]", "[", 69, 66, 72, 60, "]", "[", 69, 66, 71, 72, "]", "[", 69, 66, 71, 70, "]", "[", 69, 66, 71, 68, "]", "[", 69, 66, 71, 67, "]", "[", 69, 66, 71, 65, "]", "[", 69, 66, 71, 64, "]", "[", 69, 66, 71, 63, "]", "[", 69, 66, 71, 62, "]", "[", 69, 66, 71, 61, "]", "[", 69, 66, 71, 60, "]", "[", 69, 66, 70, 72, "]", "[", 69, 66, 70, 71, "]", "[", 69, 66, 70, 68, "]", "[", 69, 66, 70, 67, "]", "[", 69, 66, 70, 65, "]", "[", 69, 66, 70, 64, "]", "[", 69, 66, 70, 63, "]", "[", 69, 66, 70, 62, "]", "[", 69, 66, 70, 61, "]", "[", 69, 66, 70, 60, "]", "[", 69, 66, 68, 72, "]", "[", 69, 66, 68, 71, "]", "[", 69, 66, 68, 70, "]", "[", 69, 66, 68, 67, "]", "[", 69, 66, 68, 65, "]", "[", 69, 66, 68, 64, "]", "[", 69, 66, 68, 63, "]", "[", 69, 66, 68, 62, "]", "[", 69, 66, 68, 61, "]", "[", 69, 66, 68, 60, "]", "[", 69, 66, 67, 72, "]", "[", 69, 66, 67, 71, "]", "[", 69, 66, 67, 70, "]", "[", 69, 66, 67, 68, "]", "[", 69, 66, 67, 65, "]", "[", 69, 66, 67, 64, "]", "[", 69, 66, 67, 63, "]", "[", 69, 66, 67, 62, "]", "[", 69, 66, 67, 61, "]", "[", 69, 66, 67, 60, "]", "[", 69, 66, 65, 72, "]", "[", 69, 66, 65, 71, "]", "[", 69, 66, 65, 70, "]", "[", 69, 66, 65, 68, "]", "[", 69, 66, 65, 67, "]", "[", 69, 66, 65, 64, "]", "[", 69, 66, 65, 63, "]", "[", 69, 66, 65, 62, "]", "[", 69, 66, 65, 61, "]", "[", 69, 66, 65, 60, "]", "[", 69, 66, 64, 72, "]", "[", 69, 66, 64, 71, "]", "[", 69, 66, 64, 70, "]", "[", 69, 66, 64, 68, "]", "[", 69, 66, 64, 67, "]", "[", 69, 66, 64, 65, "]", "[", 69, 66, 64, 63, "]", "[", 69, 66, 64, 62, "]", "[", 69, 66, 64, 61, "]", "[", 69, 66, 64, 60, "]", "[", 69, 66, 63, 72, "]", "[", 69, 66, 63, 71, "]", "[", 69, 66, 63, 70, "]", "[", 69, 66, 63, 68, "]", "[", 69, 66, 63, 67, "]", "[", 69, 66, 63, 65, "]", "[", 69, 66, 63, 64, "]", "[", 69, 66, 63, 62, "]", "[", 69, 66, 63, 61, "]", "[", 69, 66, 63, 60, "]", "[", 69, 66, 62, 72, "]", "[", 69, 66, 62, 71, "]", "[", 69, 66, 62, 70, "]", "[", 69, 66, 62, 68, "]", "[", 69, 66, 62, 67, "]", "[", 69, 66, 62, 65, "]", "[", 69, 66, 62, 64, "]", "[", 69, 66, 62, 63, "]", "[", 69, 66, 62, 61, "]", "[", 69, 66, 62, 60, "]", "[", 69, 66, 61, 72, "]", "[", 69, 66, 61, 71, "]", "[", 69, 66, 61, 70, "]", "[", 69, 66, 61, 68, "]", "[", 69, 66, 61, 67, "]", "[", 69, 66, 61, 65, "]", "[", 69, 66, 61, 64, "]", "[", 69, 66, 61, 63, "]", "[", 69, 66, 61, 62, "]", "[", 69, 66, 61, 60, "]", "[", 69, 66, 60, 72, "]", "[", 69, 66, 60, 71, "]", "[", 69, 66, 60, 70, "]", "[", 69, 66, 60, 68, "]", "[", 69, 66, 60, 67, "]", "[", 69, 66, 60, 65, "]", "[", 69, 66, 60, 64, "]", "[", 69, 66, 60, 63, "]", "[", 69, 66, 60, 62, "]", "[", 69, 66, 60, 61, "]", "[", 69, 65, 72, 71, "]", "[", 69, 65, 72, 70, "]", "[", 69, 65, 72, 68, "]", "[", 69, 65, 72, 67, "]", "[", 69, 65, 72, 66, "]", "[", 69, 65, 72, 64, "]", "[", 69, 65, 72, 63, "]", "[", 69, 65, 72, 62, "]", "[", 69, 65, 72, 61, "]", "[", 69, 65, 72, 60, "]", "[", 69, 65, 71, 72, "]", "[", 69, 65, 71, 70, "]", "[", 69, 65, 71, 68, "]", "[", 69, 65, 71, 67, "]", "[", 69, 65, 71, 66, "]", "[", 69, 65, 71, 64, "]", "[", 69, 65, 71, 63, "]", "[", 69, 65, 71, 62, "]", "[", 69, 65, 71, 61, "]", "[", 69, 65, 71, 60, "]", "[", 69, 65, 70, 72, "]", "[", 69, 65, 70, 71, "]", "[", 69, 65, 70, 68, "]", "[", 69, 65, 70, 67, "]", "[", 69, 65, 70, 66, "]", "[", 69, 65, 70, 64, "]", "[", 69, 65, 70, 63, "]", "[", 69, 65, 70, 62, "]", "[", 69, 65, 70, 61, "]", "[", 69, 65, 70, 60, "]", "[", 69, 65, 68, 72, "]", "[", 69, 65, 68, 71, "]", "[", 69, 65, 68, 70, "]", "[", 69, 65, 68, 67, "]", "[", 69, 65, 68, 66, "]", "[", 69, 65, 68, 64, "]", "[", 69, 65, 68, 63, "]", "[", 69, 65, 68, 62, "]", "[", 69, 65, 68, 61, "]", "[", 69, 65, 68, 60, "]", "[", 69, 65, 67, 72, "]", "[", 69, 65, 67, 71, "]", "[", 69, 65, 67, 70, "]", "[", 69, 65, 67, 68, "]", "[", 69, 65, 67, 66, "]", "[", 69, 65, 67, 64, "]", "[", 69, 65, 67, 63, "]", "[", 69, 65, 67, 62, "]", "[", 69, 65, 67, 61, "]", "[", 69, 65, 67, 60, "]", "[", 69, 65, 66, 72, "]", "[", 69, 65, 66, 71, "]", "[", 69, 65, 66, 70, "]", "[", 69, 65, 66, 68, "]", "[", 69, 65, 66, 67, "]", "[", 69, 65, 66, 64, "]", "[", 69, 65, 66, 63, "]", "[", 69, 65, 66, 62, "]", "[", 69, 65, 66, 61, "]", "[", 69, 65, 66, 60, "]", "[", 69, 65, 64, 72, "]", "[", 69, 65, 64, 71, "]", "[", 69, 65, 64, 70, "]", "[", 69, 65, 64, 68, "]", "[", 69, 65, 64, 67, "]", "[", 69, 65, 64, 66, "]", "[", 69, 65, 64, 63, "]", "[", 69, 65, 64, 62, "]", "[", 69, 65, 64, 61, "]", "[", 69, 65, 64, 60, "]", "[", 69, 65, 63, 72, "]", "[", 69, 65, 63, 71, "]", "[", 69, 65, 63, 70, "]", "[", 69, 65, 63, 68, "]", "[", 69, 65, 63, 67, "]", "[", 69, 65, 63, 66, "]", "[", 69, 65, 63, 64, "]", "[", 69, 65, 63, 62, "]", "[", 69, 65, 63, 61, "]", "[", 69, 65, 63, 60, "]", "[", 69, 65, 62, 72, "]", "[", 69, 65, 62, 71, "]", "[", 69, 65, 62, 70, "]", "[", 69, 65, 62, 68, "]", "[", 69, 65, 62, 67, "]", "[", 69, 65, 62, 66, "]", "[", 69, 65, 62, 64, "]", "[", 69, 65, 62, 63, "]", "[", 69, 65, 62, 61, "]", "[", 69, 65, 62, 60, "]", "[", 69, 65, 61, 72, "]", "[", 69, 65, 61, 71, "]", "[", 69, 65, 61, 70, "]", "[", 69, 65, 61, 68, "]", "[", 69, 65, 61, 67, "]", "[", 69, 65, 61, 66, "]", "[", 69, 65, 61, 64, "]", "[", 69, 65, 61, 63, "]", "[", 69, 65, 61, 62, "]", "[", 69, 65, 61, 60, "]", "[", 69, 65, 60, 72, "]", "[", 69, 65, 60, 71, "]", "[", 69, 65, 60, 70, "]", "[", 69, 65, 60, 68, "]", "[", 69, 65, 60, 67, "]", "[", 69, 65, 60, 66, "]", "[", 69, 65, 60, 64, "]", "[", 69, 65, 60, 63, "]", "[", 69, 65, 60, 62, "]", "[", 69, 65, 60, 61, "]", "[", 69, 64, 72, 71, "]", "[", 69, 64, 72, 70, "]", "[", 69, 64, 72, 68, "]", "[", 69, 64, 72, 67, "]", "[", 69, 64, 72, 66, "]", "[", 69, 64, 72, 65, "]", "[", 69, 64, 72, 63, "]", "[", 69, 64, 72, 62, "]", "[", 69, 64, 72, 61, "]", "[", 69, 64, 72, 60, "]", "[", 69, 64, 71, 72, "]", "[", 69, 64, 71, 70, "]", "[", 69, 64, 71, 68, "]", "[", 69, 64, 71, 67, "]", "[", 69, 64, 71, 66, "]", "[", 69, 64, 71, 65, "]", "[", 69, 64, 71, 63, "]", "[", 69, 64, 71, 62, "]", "[", 69, 64, 71, 61, "]", "[", 69, 64, 71, 60, "]", "[", 69, 64, 70, 72, "]", "[", 69, 64, 70, 71, "]", "[", 69, 64, 70, 68, "]", "[", 69, 64, 70, 67, "]", "[", 69, 64, 70, 66, "]", "[", 69, 64, 70, 65, "]", "[", 69, 64, 70, 63, "]", "[", 69, 64, 70, 62, "]", "[", 69, 64, 70, 61, "]", "[", 69, 64, 70, 60, "]", "[", 69, 64, 68, 72, "]", "[", 69, 64, 68, 71, "]", "[", 69, 64, 68, 70, "]", "[", 69, 64, 68, 67, "]", "[", 69, 64, 68, 66, "]", "[", 69, 64, 68, 65, "]", "[", 69, 64, 68, 63, "]", "[", 69, 64, 68, 62, "]", "[", 69, 64, 68, 61, "]", "[", 69, 64, 68, 60, "]", "[", 69, 64, 67, 72, "]", "[", 69, 64, 67, 71, "]", "[", 69, 64, 67, 70, "]", "[", 69, 64, 67, 68, "]", "[", 69, 64, 67, 66, "]", "[", 69, 64, 67, 65, "]", "[", 69, 64, 67, 63, "]", "[", 69, 64, 67, 62, "]", "[", 69, 64, 67 ],
													"reg_data_0000000007" : [ 61, "]", "[", 69, 64, 67, 60, "]", "[", 69, 64, 66, 72, "]", "[", 69, 64, 66, 71, "]", "[", 69, 64, 66, 70, "]", "[", 69, 64, 66, 68, "]", "[", 69, 64, 66, 67, "]", "[", 69, 64, 66, 65, "]", "[", 69, 64, 66, 63, "]", "[", 69, 64, 66, 62, "]", "[", 69, 64, 66, 61, "]", "[", 69, 64, 66, 60, "]", "[", 69, 64, 65, 72, "]", "[", 69, 64, 65, 71, "]", "[", 69, 64, 65, 70, "]", "[", 69, 64, 65, 68, "]", "[", 69, 64, 65, 67, "]", "[", 69, 64, 65, 66, "]", "[", 69, 64, 65, 63, "]", "[", 69, 64, 65, 62, "]", "[", 69, 64, 65, 61, "]", "[", 69, 64, 65, 60, "]", "[", 69, 64, 63, 72, "]", "[", 69, 64, 63, 71, "]", "[", 69, 64, 63, 70, "]", "[", 69, 64, 63, 68, "]", "[", 69, 64, 63, 67, "]", "[", 69, 64, 63, 66, "]", "[", 69, 64, 63, 65, "]", "[", 69, 64, 63, 62, "]", "[", 69, 64, 63, 61, "]", "[", 69, 64, 63, 60, "]", "[", 69, 64, 62, 72, "]", "[", 69, 64, 62, 71, "]", "[", 69, 64, 62, 70, "]", "[", 69, 64, 62, 68, "]", "[", 69, 64, 62, 67, "]", "[", 69, 64, 62, 66, "]", "[", 69, 64, 62, 65, "]", "[", 69, 64, 62, 63, "]", "[", 69, 64, 62, 61, "]", "[", 69, 64, 62, 60, "]", "[", 69, 64, 61, 72, "]", "[", 69, 64, 61, 71, "]", "[", 69, 64, 61, 70, "]", "[", 69, 64, 61, 68, "]", "[", 69, 64, 61, 67, "]", "[", 69, 64, 61, 66, "]", "[", 69, 64, 61, 65, "]", "[", 69, 64, 61, 63, "]", "[", 69, 64, 61, 62, "]", "[", 69, 64, 61, 60, "]", "[", 69, 64, 60, 72, "]", "[", 69, 64, 60, 71, "]", "[", 69, 64, 60, 70, "]", "[", 69, 64, 60, 68, "]", "[", 69, 64, 60, 67, "]", "[", 69, 64, 60, 66, "]", "[", 69, 64, 60, 65, "]", "[", 69, 64, 60, 63, "]", "[", 69, 64, 60, 62, "]", "[", 69, 64, 60, 61, "]", "[", 69, 63, 72, 71, "]", "[", 69, 63, 72, 70, "]", "[", 69, 63, 72, 68, "]", "[", 69, 63, 72, 67, "]", "[", 69, 63, 72, 66, "]", "[", 69, 63, 72, 65, "]", "[", 69, 63, 72, 64, "]", "[", 69, 63, 72, 62, "]", "[", 69, 63, 72, 61, "]", "[", 69, 63, 72, 60, "]", "[", 69, 63, 71, 72, "]", "[", 69, 63, 71, 70, "]", "[", 69, 63, 71, 68, "]", "[", 69, 63, 71, 67, "]", "[", 69, 63, 71, 66, "]", "[", 69, 63, 71, 65, "]", "[", 69, 63, 71, 64, "]", "[", 69, 63, 71, 62, "]", "[", 69, 63, 71, 61, "]", "[", 69, 63, 71, 60, "]", "[", 69, 63, 70, 72, "]", "[", 69, 63, 70, 71, "]", "[", 69, 63, 70, 68, "]", "[", 69, 63, 70, 67, "]", "[", 69, 63, 70, 66, "]", "[", 69, 63, 70, 65, "]", "[", 69, 63, 70, 64, "]", "[", 69, 63, 70, 62, "]", "[", 69, 63, 70, 61, "]", "[", 69, 63, 70, 60, "]", "[", 69, 63, 68, 72, "]", "[", 69, 63, 68, 71, "]", "[", 69, 63, 68, 70, "]", "[", 69, 63, 68, 67, "]", "[", 69, 63, 68, 66, "]", "[", 69, 63, 68, 65, "]", "[", 69, 63, 68, 64, "]", "[", 69, 63, 68, 62, "]", "[", 69, 63, 68, 61, "]", "[", 69, 63, 68, 60, "]", "[", 69, 63, 67, 72, "]", "[", 69, 63, 67, 71, "]", "[", 69, 63, 67, 70, "]", "[", 69, 63, 67, 68, "]", "[", 69, 63, 67, 66, "]", "[", 69, 63, 67, 65, "]", "[", 69, 63, 67, 64, "]", "[", 69, 63, 67, 62, "]", "[", 69, 63, 67, 61, "]", "[", 69, 63, 67, 60, "]", "[", 69, 63, 66, 72, "]", "[", 69, 63, 66, 71, "]", "[", 69, 63, 66, 70, "]", "[", 69, 63, 66, 68, "]", "[", 69, 63, 66, 67, "]", "[", 69, 63, 66, 65, "]", "[", 69, 63, 66, 64, "]", "[", 69, 63, 66, 62, "]", "[", 69, 63, 66, 61, "]", "[", 69, 63, 66, 60, "]", "[", 69, 63, 65, 72, "]", "[", 69, 63, 65, 71, "]", "[", 69, 63, 65, 70, "]", "[", 69, 63, 65, 68, "]", "[", 69, 63, 65, 67, "]", "[", 69, 63, 65, 66, "]", "[", 69, 63, 65, 64, "]", "[", 69, 63, 65, 62, "]", "[", 69, 63, 65, 61, "]", "[", 69, 63, 65, 60, "]", "[", 69, 63, 64, 72, "]", "[", 69, 63, 64, 71, "]", "[", 69, 63, 64, 70, "]", "[", 69, 63, 64, 68, "]", "[", 69, 63, 64, 67, "]", "[", 69, 63, 64, 66, "]", "[", 69, 63, 64, 65, "]", "[", 69, 63, 64, 62, "]", "[", 69, 63, 64, 61, "]", "[", 69, 63, 64, 60, "]", "[", 69, 63, 62, 72, "]", "[", 69, 63, 62, 71, "]", "[", 69, 63, 62, 70, "]", "[", 69, 63, 62, 68, "]", "[", 69, 63, 62, 67, "]", "[", 69, 63, 62, 66, "]", "[", 69, 63, 62, 65, "]", "[", 69, 63, 62, 64, "]", "[", 69, 63, 62, 61, "]", "[", 69, 63, 62, 60, "]", "[", 69, 63, 61, 72, "]", "[", 69, 63, 61, 71, "]", "[", 69, 63, 61, 70, "]", "[", 69, 63, 61, 68, "]", "[", 69, 63, 61, 67, "]", "[", 69, 63, 61, 66, "]", "[", 69, 63, 61, 65, "]", "[", 69, 63, 61, 64, "]", "[", 69, 63, 61, 62, "]", "[", 69, 63, 61, 60, "]", "[", 69, 63, 60, 72, "]", "[", 69, 63, 60, 71, "]", "[", 69, 63, 60, 70, "]", "[", 69, 63, 60, 68, "]", "[", 69, 63, 60, 67, "]", "[", 69, 63, 60, 66, "]", "[", 69, 63, 60, 65, "]", "[", 69, 63, 60, 64, "]", "[", 69, 63, 60, 62, "]", "[", 69, 63, 60, 61, "]", "[", 69, 62, 72, 71, "]", "[", 69, 62, 72, 70, "]", "[", 69, 62, 72, 68, "]", "[", 69, 62, 72, 67, "]", "[", 69, 62, 72, 66, "]", "[", 69, 62, 72, 65, "]", "[", 69, 62, 72, 64, "]", "[", 69, 62, 72, 63, "]", "[", 69, 62, 72, 61, "]", "[", 69, 62, 72, 60, "]", "[", 69, 62, 71, 72, "]", "[", 69, 62, 71, 70, "]", "[", 69, 62, 71, 68, "]", "[", 69, 62, 71, 67, "]", "[", 69, 62, 71, 66, "]", "[", 69, 62, 71, 65, "]", "[", 69, 62, 71, 64, "]", "[", 69, 62, 71, 63, "]", "[", 69, 62, 71, 61, "]", "[", 69, 62, 71, 60, "]", "[", 69, 62, 70, 72, "]", "[", 69, 62, 70, 71, "]", "[", 69, 62, 70, 68, "]", "[", 69, 62, 70, 67, "]", "[", 69, 62, 70, 66, "]", "[", 69, 62, 70, 65, "]", "[", 69, 62, 70, 64, "]", "[", 69, 62, 70, 63, "]", "[", 69, 62, 70, 61, "]", "[", 69, 62, 70, 60, "]", "[", 69, 62, 68, 72, "]", "[", 69, 62, 68, 71, "]", "[", 69, 62, 68, 70, "]", "[", 69, 62, 68, 67, "]", "[", 69, 62, 68, 66, "]", "[", 69, 62, 68, 65, "]", "[", 69, 62, 68, 64, "]", "[", 69, 62, 68, 63, "]", "[", 69, 62, 68, 61, "]", "[", 69, 62, 68, 60, "]", "[", 69, 62, 67, 72, "]", "[", 69, 62, 67, 71, "]", "[", 69, 62, 67, 70, "]", "[", 69, 62, 67, 68, "]", "[", 69, 62, 67, 66, "]", "[", 69, 62, 67, 65, "]", "[", 69, 62, 67, 64, "]", "[", 69, 62, 67, 63, "]", "[", 69, 62, 67, 61, "]", "[", 69, 62, 67, 60, "]", "[", 69, 62, 66, 72, "]", "[", 69, 62, 66, 71, "]", "[", 69, 62, 66, 70, "]", "[", 69, 62, 66, 68, "]", "[", 69, 62, 66, 67, "]", "[", 69, 62, 66, 65, "]", "[", 69, 62, 66, 64, "]", "[", 69, 62, 66, 63, "]", "[", 69, 62, 66, 61, "]", "[", 69, 62, 66, 60, "]", "[", 69, 62, 65, 72, "]", "[", 69, 62, 65, 71, "]", "[", 69, 62, 65, 70, "]", "[", 69, 62, 65, 68, "]", "[", 69, 62, 65, 67, "]", "[", 69, 62, 65, 66, "]", "[", 69, 62, 65, 64, "]", "[", 69, 62, 65, 63, "]", "[", 69, 62, 65, 61, "]", "[", 69, 62, 65, 60, "]", "[", 69, 62, 64, 72, "]", "[", 69, 62, 64, 71, "]", "[", 69, 62, 64, 70, "]", "[", 69, 62, 64, 68, "]", "[", 69, 62, 64, 67, "]", "[", 69, 62, 64, 66, "]", "[", 69, 62, 64, 65, "]", "[", 69, 62, 64, 63, "]", "[", 69, 62, 64, 61, "]", "[", 69, 62, 64, 60, "]", "[", 69, 62, 63, 72, "]", "[", 69, 62, 63, 71, "]", "[", 69, 62, 63, 70, "]", "[", 69, 62, 63, 68, "]", "[", 69, 62, 63, 67, "]", "[", 69, 62, 63, 66, "]", "[", 69, 62, 63, 65, "]", "[", 69, 62, 63, 64, "]", "[", 69, 62, 63, 61, "]", "[", 69, 62, 63, 60, "]", "[", 69, 62, 61, 72, "]", "[", 69, 62, 61, 71, "]", "[", 69, 62, 61, 70, "]", "[", 69, 62, 61, 68, "]", "[", 69, 62, 61, 67, "]", "[", 69, 62, 61, 66, "]", "[", 69, 62, 61, 65, "]", "[", 69, 62, 61, 64, "]", "[", 69, 62, 61, 63, "]", "[", 69, 62, 61, 60, "]", "[", 69, 62, 60, 72, "]", "[", 69, 62, 60, 71, "]", "[", 69, 62, 60, 70, "]", "[", 69, 62, 60, 68, "]", "[", 69, 62, 60, 67, "]", "[", 69, 62, 60, 66, "]", "[", 69, 62, 60, 65, "]", "[", 69, 62, 60, 64, "]", "[", 69, 62, 60, 63, "]", "[", 69, 62, 60, 61, "]", "[", 69, 61, 72, 71, "]", "[", 69, 61, 72, 70, "]", "[", 69, 61, 72, 68, "]", "[", 69, 61, 72, 67, "]", "[", 69, 61, 72, 66, "]", "[", 69, 61, 72, 65, "]", "[", 69, 61, 72, 64, "]", "[", 69, 61, 72, 63, "]", "[", 69, 61, 72, 62, "]", "[", 69, 61, 72, 60, "]", "[", 69, 61, 71, 72, "]", "[", 69, 61, 71, 70, "]", "[", 69, 61, 71, 68, "]", "[", 69, 61, 71, 67, "]", "[", 69, 61, 71, 66, "]", "[", 69, 61, 71, 65, "]", "[", 69, 61, 71, 64, "]", "[", 69, 61, 71, 63, "]", "[", 69, 61, 71, 62, "]", "[", 69, 61, 71, 60, "]", "[", 69, 61, 70, 72, "]", "[", 69, 61, 70, 71, "]", "[", 69, 61, 70, 68, "]", "[", 69, 61, 70, 67, "]", "[", 69, 61, 70, 66, "]", "[", 69, 61, 70, 65, "]", "[", 69, 61, 70, 64, "]", "[", 69, 61, 70, 63, "]", "[", 69, 61, 70, 62, "]", "[", 69, 61, 70, 60, "]", "[", 69, 61, 68, 72, "]", "[", 69, 61, 68, 71, "]", "[", 69, 61, 68, 70, "]", "[", 69, 61, 68, 67, "]", "[", 69, 61, 68, 66, "]", "[", 69, 61, 68, 65, "]", "[", 69, 61, 68, 64, "]", "[", 69, 61, 68, 63, "]", "[", 69, 61, 68, 62, "]", "[", 69, 61, 68, 60, "]", "[", 69, 61, 67, 72, "]", "[", 69, 61, 67, 71, "]", "[", 69, 61, 67, 70, "]", "[", 69, 61, 67, 68, "]", "[", 69, 61, 67, 66, "]", "[", 69, 61, 67, 65, "]", "[", 69, 61, 67, 64, "]", "[", 69, 61, 67, 63, "]", "[", 69, 61, 67, 62, "]", "[", 69, 61, 67, 60, "]", "[", 69, 61, 66, 72, "]", "[", 69, 61, 66, 71, "]", "[", 69, 61, 66, 70, "]", "[", 69, 61, 66, 68, "]", "[", 69, 61, 66, 67, "]", "[", 69, 61, 66, 65, "]", "[", 69, 61, 66, 64, "]", "[", 69, 61, 66, 63, "]", "[", 69, 61, 66, 62, "]", "[", 69, 61, 66, 60, "]", "[", 69, 61, 65, 72, "]", "[", 69, 61, 65, 71, "]", "[", 69, 61, 65, 70, "]", "[", 69, 61, 65, 68, "]", "[", 69, 61, 65, 67, "]", "[", 69, 61, 65, 66, "]", "[", 69, 61, 65, 64, "]", "[", 69, 61, 65, 63, "]", "[", 69, 61, 65, 62, "]", "[", 69, 61, 65, 60, "]", "[", 69, 61, 64, 72, "]", "[", 69, 61, 64, 71, "]", "[", 69, 61, 64, 70, "]", "[", 69, 61, 64, 68, "]", "[", 69, 61, 64, 67, "]", "[", 69, 61, 64, 66, "]", "[", 69, 61, 64, 65, "]", "[", 69, 61, 64, 63, "]", "[", 69, 61, 64, 62, "]", "[", 69, 61, 64, 60, "]", "[", 69, 61, 63, 72, "]", "[", 69, 61, 63, 71, "]", "[", 69, 61, 63, 70, "]", "[", 69, 61, 63, 68, "]", "[", 69, 61, 63, 67, "]", "[", 69, 61, 63, 66, "]", "[", 69, 61, 63, 65, "]", "[", 69, 61, 63, 64, "]", "[", 69, 61, 63, 62, "]", "[", 69, 61, 63, 60, "]", "[", 69, 61, 62, 72, "]", "[", 69, 61, 62, 71, "]", "[", 69, 61, 62, 70, "]", "[", 69, 61, 62, 68, "]", "[", 69, 61, 62, 67, "]", "[", 69, 61, 62, 66, "]", "[", 69, 61, 62, 65, "]", "[", 69, 61, 62, 64, "]", "[", 69, 61, 62, 63, "]", "[", 69, 61, 62, 60, "]", "[", 69, 61, 60, 72, "]", "[", 69, 61, 60, 71, "]", "[", 69, 61, 60, 70, "]", "[", 69, 61, 60, 68, "]", "[", 69, 61, 60, 67, "]", "[", 69, 61, 60, 66, "]", "[", 69, 61, 60, 65, "]", "[", 69, 61, 60, 64, "]", "[", 69, 61, 60, 63, "]", "[", 69, 61, 60, 62, "]", "[", 69, 60, 72, 71, "]", "[", 69, 60, 72, 70, "]", "[", 69, 60, 72, 68, "]", "[", 69, 60, 72, 67, "]", "[", 69, 60, 72, 66, "]", "[", 69, 60, 72, 65, "]", "[", 69, 60, 72, 64, "]", "[", 69, 60, 72, 63, "]", "[", 69, 60, 72, 62, "]", "[", 69, 60, 72, 61, "]", "[", 69, 60, 71, 72, "]", "[", 69, 60, 71, 70, "]", "[", 69, 60, 71, 68, "]", "[", 69, 60, 71, 67, "]", "[", 69, 60, 71, 66, "]", "[", 69, 60, 71, 65, "]", "[", 69, 60, 71, 64, "]", "[", 69, 60, 71, 63, "]", "[", 69, 60, 71, 62, "]", "[", 69, 60, 71, 61, "]", "[", 69, 60, 70, 72, "]", "[", 69, 60, 70, 71, "]", "[", 69, 60, 70, 68, "]", "[", 69, 60, 70, 67, "]", "[", 69, 60, 70, 66, "]", "[", 69, 60, 70, 65, "]", "[", 69, 60, 70, 64, "]", "[", 69, 60, 70, 63, "]", "[", 69, 60, 70, 62, "]", "[", 69, 60, 70, 61, "]", "[", 69, 60, 68, 72, "]", "[", 69, 60, 68, 71, "]", "[", 69, 60, 68, 70, "]", "[", 69, 60, 68, 67, "]", "[", 69, 60, 68, 66, "]", "[", 69, 60, 68, 65, "]", "[", 69, 60, 68, 64, "]", "[", 69, 60, 68, 63, "]", "[", 69, 60, 68, 62, "]", "[", 69, 60, 68, 61, "]", "[", 69, 60, 67, 72, "]", "[", 69, 60, 67, 71, "]", "[", 69, 60, 67, 70, "]", "[", 69, 60, 67, 68, "]", "[", 69, 60, 67, 66, "]", "[", 69, 60, 67, 65, "]", "[", 69, 60, 67, 64, "]", "[", 69, 60, 67, 63, "]", "[", 69, 60, 67, 62, "]", "[", 69, 60, 67, 61, "]", "[", 69, 60, 66, 72, "]", "[", 69, 60, 66, 71, "]", "[", 69, 60, 66, 70, "]", "[", 69, 60, 66, 68, "]", "[", 69, 60, 66, 67, "]", "[", 69, 60, 66, 65, "]", "[", 69, 60, 66, 64, "]", "[", 69, 60, 66, 63, "]", "[", 69, 60, 66, 62, "]", "[", 69, 60, 66, 61, "]", "[", 69, 60, 65, 72, "]", "[", 69, 60, 65, 71, "]", "[", 69, 60, 65, 70, "]", "[", 69, 60, 65, 68, "]", "[", 69, 60, 65, 67, "]", "[", 69, 60, 65, 66, "]", "[", 69, 60, 65, 64, "]", "[", 69, 60, 65, 63, "]", "[", 69, 60, 65, 62, "]", "[", 69, 60, 65, 61, "]", "[", 69, 60, 64, 72, "]", "[", 69, 60, 64, 71, "]", "[", 69, 60, 64, 70, "]", "[", 69, 60, 64, 68, "]", "[", 69, 60, 64, 67, "]", "[", 69, 60, 64, 66, "]", "[", 69, 60, 64, 65, "]", "[", 69, 60, 64, 63, "]", "[", 69, 60, 64, 62, "]", "[", 69, 60, 64, 61, "]", "[", 69, 60, 63, 72, "]", "[", 69, 60, 63, 71, "]", "[", 69, 60, 63, 70, "]", "[", 69, 60, 63, 68, "]", "[", 69, 60, 63, 67, "]", "[", 69, 60, 63, 66, "]", "[", 69, 60, 63, 65, "]", "[", 69, 60, 63, 64, "]", "[", 69, 60, 63, 62, "]", "[", 69, 60, 63, 61, "]", "[", 69, 60, 62, 72, "]", "[", 69, 60, 62, 71, "]", "[", 69, 60, 62, 70, "]", "[", 69, 60, 62, 68, "]", "[", 69, 60, 62, 67, "]", "[", 69, 60, 62, 66, "]", "[", 69, 60, 62, 65, "]", "[", 69, 60, 62, 64, "]", "[", 69, 60, 62, 63, "]", "[", 69, 60, 62, 61, "]", "[", 69, 60, 61, 72, "]", "[", 69, 60, 61, 71, "]", "[", 69, 60, 61, 70, "]", "[", 69, 60, 61, 68, "]", "[", 69, 60, 61, 67, "]", "[", 69, 60, 61, 66, "]", "[", 69, 60, 61, 65, "]", "[", 69, 60, 61, 64, "]", "[", 69, 60, 61, 63, "]", "[", 69, 60, 61, 62, "]", "[", 68, 72, 71, 70, "]", "[", 68, 72, 71, 69, "]", "[", 68, 72, 71, 67, "]", "[", 68, 72, 71, 66, "]", "[", 68, 72, 71, 65, "]", "[", 68, 72, 71, 64, "]", "[", 68, 72, 71, 63, "]", "[", 68, 72, 71, 62, "]", "[", 68, 72, 71, 61, "]", "[", 68, 72, 71, 60, "]", "[", 68, 72, 70, 71, "]", "[", 68, 72, 70, 69, "]", "[", 68, 72, 70, 67, "]", "[", 68, 72, 70, 66, "]", "[", 68, 72, 70, 65, "]", "[", 68, 72, 70, 64, "]", "[", 68, 72, 70, 63, "]", "[", 68, 72, 70, 62, "]", "[", 68, 72, 70, 61, "]", "[", 68, 72, 70, 60, "]", "[", 68, 72, 69, 71, "]", "[", 68, 72, 69, 70, "]", "[", 68, 72, 69, 67, "]", "[", 68, 72, 69, 66, "]", "[", 68, 72, 69, 65, "]", "[", 68, 72, 69, 64, "]", "[", 68, 72, 69, 63, "]", "[", 68, 72, 69, 62, "]", "[", 68, 72, 69, 61, "]", "[", 68, 72, 69, 60, "]", "[", 68, 72, 67, 71, "]", "[", 68, 72, 67, 70, "]", "[", 68, 72, 67, 69, "]", "[", 68, 72, 67, 66, "]", "[", 68, 72, 67, 65, "]", "[", 68, 72, 67, 64, "]", "[", 68, 72, 67, 63, "]", "[", 68, 72, 67, 62, "]", "[", 68, 72, 67, 61, "]", "[", 68, 72, 67, 60, "]", "[", 68, 72, 66, 71, "]", "[", 68, 72, 66, 70, "]", "[", 68, 72, 66, 69, "]", "[", 68, 72, 66, 67, "]", "[", 68, 72, 66, 65, "]", "[", 68, 72, 66, 64, "]", "[", 68, 72, 66, 63, "]", "[", 68, 72, 66, 62, "]", "[", 68, 72, 66, 61, "]", "[", 68, 72, 66, 60, "]", "[", 68, 72, 65, 71, "]", "[", 68, 72, 65, 70, "]", "[", 68, 72, 65, 69, "]", "[", 68, 72, 65, 67, "]", "[", 68, 72, 65, 66, "]", "[", 68, 72, 65, 64, "]", "[", 68, 72, 65, 63, "]", "[", 68, 72, 65, 62, "]", "[", 68, 72, 65, 61, "]", "[", 68, 72, 65, 60, "]", "[", 68, 72, 64, 71, "]", "[", 68, 72, 64, 70, "]", "[", 68, 72, 64, 69, "]", "[", 68, 72, 64, 67, "]", "[", 68, 72, 64, 66, "]", "[", 68, 72, 64, 65, "]", "[", 68, 72, 64, 63, "]", "[", 68, 72, 64, 62, "]", "[", 68, 72, 64, 61, "]", "[", 68, 72, 64, 60, "]", "[", 68, 72, 63, 71, "]", "[", 68, 72, 63, 70, "]", "[", 68, 72, 63, 69, "]", "[", 68, 72, 63, 67, "]", "[", 68, 72, 63, 66, "]", "[", 68, 72, 63, 65, "]", "[", 68, 72, 63, 64, "]", "[", 68, 72, 63, 62, "]", "[", 68, 72, 63, 61, "]", "[", 68, 72, 63, 60, "]", "[", 68, 72, 62, 71, "]", "[", 68, 72, 62, 70, "]", "[", 68, 72, 62, 69, "]", "[", 68, 72, 62, 67, "]", "[", 68, 72, 62, 66, "]", "[", 68, 72, 62, 65, "]", "[", 68, 72, 62, 64, "]", "[", 68, 72, 62, 63, "]", "[", 68, 72, 62, 61, "]", "[", 68, 72, 62, 60, "]", "[", 68, 72, 61, 71, "]", "[", 68, 72, 61, 70, "]", "[", 68, 72, 61, 69, "]", "[", 68, 72, 61, 67, "]", "[", 68, 72, 61, 66, "]", "[", 68, 72, 61, 65, "]", "[", 68, 72, 61, 64, "]", "[", 68, 72, 61, 63, "]", "[", 68, 72, 61, 62, "]", "[", 68, 72, 61, 60, "]", "[", 68, 72, 60, 71, "]", "[", 68, 72, 60, 70, "]", "[", 68, 72, 60, 69, "]", "[", 68, 72, 60, 67, "]", "[", 68, 72, 60, 66, "]", "[", 68, 72, 60, 65, "]", "[", 68, 72, 60, 64, "]", "[", 68, 72, 60, 63, "]", "[", 68, 72, 60, 62, "]", "[", 68, 72, 60, 61, "]", "[", 68, 71, 72, 70, "]", "[", 68, 71, 72, 69, "]", "[", 68, 71, 72, 67, "]", "[", 68, 71, 72, 66, "]", "[", 68, 71, 72, 65, "]", "[", 68, 71, 72, 64, "]", "[", 68, 71, 72, 63, "]", "[", 68, 71, 72, 62, "]", "[", 68, 71, 72, 61, "]", "[", 68, 71, 72, 60, "]", "[", 68, 71, 70, 72, "]", "[", 68, 71, 70, 69, "]", "[", 68, 71, 70, 67, "]", "[", 68, 71, 70, 66, "]", "[", 68, 71, 70, 65, "]", "[", 68, 71, 70, 64, "]", "[", 68, 71, 70, 63, "]", "[", 68, 71, 70, 62, "]", "[", 68, 71, 70, 61, "]", "[", 68, 71, 70, 60, "]", "[", 68, 71, 69, 72, "]", "[", 68, 71, 69, 70, "]", "[", 68, 71, 69, 67, "]", "[", 68, 71, 69, 66, "]", "[", 68, 71, 69, 65, "]", "[", 68, 71, 69, 64, "]", "[", 68, 71, 69, 63, "]", "[", 68, 71, 69, 62, "]", "[", 68, 71, 69, 61, "]", "[", 68, 71, 69, 60, "]", "[", 68, 71, 67, 72, "]", "[", 68, 71, 67, 70, "]", "[", 68, 71, 67, 69, "]", "[", 68, 71, 67, 66, "]", "[", 68, 71, 67, 65, "]", "[", 68, 71, 67, 64, "]", "[", 68, 71, 67, 63, "]", "[", 68, 71, 67, 62, "]", "[", 68, 71, 67, 61, "]", "[", 68, 71, 67, 60, "]", "[", 68, 71, 66, 72, "]", "[", 68, 71, 66, 70, "]", "[", 68, 71, 66, 69, "]", "[", 68, 71, 66, 67, "]", "[", 68, 71, 66, 65, "]", "[", 68, 71, 66, 64, "]", "[", 68, 71, 66, 63, "]", "[", 68, 71, 66, 62, "]", "[", 68, 71, 66, 61, "]", "[", 68, 71, 66, 60, "]", "[", 68, 71, 65, 72, "]", "[", 68, 71, 65, 70, "]", "[", 68, 71, 65, 69, "]", "[", 68, 71, 65, 67, "]", "[", 68, 71, 65, 66, "]", "[", 68, 71, 65, 64, "]", "[", 68, 71, 65, 63, "]", "[", 68, 71, 65, 62, "]", "[", 68, 71, 65, 61, "]", "[", 68, 71, 65, 60, "]", "[", 68, 71, 64, 72, "]", "[", 68, 71, 64, 70, "]", "[", 68, 71, 64, 69, "]", "[", 68, 71, 64, 67, "]", "[", 68, 71, 64, 66, "]", "[", 68, 71, 64, 65, "]", "[", 68, 71, 64, 63, "]", "[", 68, 71, 64, 62, "]", "[", 68, 71, 64, 61, "]", "[", 68, 71, 64, 60, "]", "[", 68, 71, 63, 72, "]", "[", 68 ],
													"reg_data_0000000008" : [ 71, 63, 70, "]", "[", 68, 71, 63, 69, "]", "[", 68, 71, 63, 67, "]", "[", 68, 71, 63, 66, "]", "[", 68, 71, 63, 65, "]", "[", 68, 71, 63, 64, "]", "[", 68, 71, 63, 62, "]", "[", 68, 71, 63, 61, "]", "[", 68, 71, 63, 60, "]", "[", 68, 71, 62, 72, "]", "[", 68, 71, 62, 70, "]", "[", 68, 71, 62, 69, "]", "[", 68, 71, 62, 67, "]", "[", 68, 71, 62, 66, "]", "[", 68, 71, 62, 65, "]", "[", 68, 71, 62, 64, "]", "[", 68, 71, 62, 63, "]", "[", 68, 71, 62, 61, "]", "[", 68, 71, 62, 60, "]", "[", 68, 71, 61, 72, "]", "[", 68, 71, 61, 70, "]", "[", 68, 71, 61, 69, "]", "[", 68, 71, 61, 67, "]", "[", 68, 71, 61, 66, "]", "[", 68, 71, 61, 65, "]", "[", 68, 71, 61, 64, "]", "[", 68, 71, 61, 63, "]", "[", 68, 71, 61, 62, "]", "[", 68, 71, 61, 60, "]", "[", 68, 71, 60, 72, "]", "[", 68, 71, 60, 70, "]", "[", 68, 71, 60, 69, "]", "[", 68, 71, 60, 67, "]", "[", 68, 71, 60, 66, "]", "[", 68, 71, 60, 65, "]", "[", 68, 71, 60, 64, "]", "[", 68, 71, 60, 63, "]", "[", 68, 71, 60, 62, "]", "[", 68, 71, 60, 61, "]", "[", 68, 70, 72, 71, "]", "[", 68, 70, 72, 69, "]", "[", 68, 70, 72, 67, "]", "[", 68, 70, 72, 66, "]", "[", 68, 70, 72, 65, "]", "[", 68, 70, 72, 64, "]", "[", 68, 70, 72, 63, "]", "[", 68, 70, 72, 62, "]", "[", 68, 70, 72, 61, "]", "[", 68, 70, 72, 60, "]", "[", 68, 70, 71, 72, "]", "[", 68, 70, 71, 69, "]", "[", 68, 70, 71, 67, "]", "[", 68, 70, 71, 66, "]", "[", 68, 70, 71, 65, "]", "[", 68, 70, 71, 64, "]", "[", 68, 70, 71, 63, "]", "[", 68, 70, 71, 62, "]", "[", 68, 70, 71, 61, "]", "[", 68, 70, 71, 60, "]", "[", 68, 70, 69, 72, "]", "[", 68, 70, 69, 71, "]", "[", 68, 70, 69, 67, "]", "[", 68, 70, 69, 66, "]", "[", 68, 70, 69, 65, "]", "[", 68, 70, 69, 64, "]", "[", 68, 70, 69, 63, "]", "[", 68, 70, 69, 62, "]", "[", 68, 70, 69, 61, "]", "[", 68, 70, 69, 60, "]", "[", 68, 70, 67, 72, "]", "[", 68, 70, 67, 71, "]", "[", 68, 70, 67, 69, "]", "[", 68, 70, 67, 66, "]", "[", 68, 70, 67, 65, "]", "[", 68, 70, 67, 64, "]", "[", 68, 70, 67, 63, "]", "[", 68, 70, 67, 62, "]", "[", 68, 70, 67, 61, "]", "[", 68, 70, 67, 60, "]", "[", 68, 70, 66, 72, "]", "[", 68, 70, 66, 71, "]", "[", 68, 70, 66, 69, "]", "[", 68, 70, 66, 67, "]", "[", 68, 70, 66, 65, "]", "[", 68, 70, 66, 64, "]", "[", 68, 70, 66, 63, "]", "[", 68, 70, 66, 62, "]", "[", 68, 70, 66, 61, "]", "[", 68, 70, 66, 60, "]", "[", 68, 70, 65, 72, "]", "[", 68, 70, 65, 71, "]", "[", 68, 70, 65, 69, "]", "[", 68, 70, 65, 67, "]", "[", 68, 70, 65, 66, "]", "[", 68, 70, 65, 64, "]", "[", 68, 70, 65, 63, "]", "[", 68, 70, 65, 62, "]", "[", 68, 70, 65, 61, "]", "[", 68, 70, 65, 60, "]", "[", 68, 70, 64, 72, "]", "[", 68, 70, 64, 71, "]", "[", 68, 70, 64, 69, "]", "[", 68, 70, 64, 67, "]", "[", 68, 70, 64, 66, "]", "[", 68, 70, 64, 65, "]", "[", 68, 70, 64, 63, "]", "[", 68, 70, 64, 62, "]", "[", 68, 70, 64, 61, "]", "[", 68, 70, 64, 60, "]", "[", 68, 70, 63, 72, "]", "[", 68, 70, 63, 71, "]", "[", 68, 70, 63, 69, "]", "[", 68, 70, 63, 67, "]", "[", 68, 70, 63, 66, "]", "[", 68, 70, 63, 65, "]", "[", 68, 70, 63, 64, "]", "[", 68, 70, 63, 62, "]", "[", 68, 70, 63, 61, "]", "[", 68, 70, 63, 60, "]", "[", 68, 70, 62, 72, "]", "[", 68, 70, 62, 71, "]", "[", 68, 70, 62, 69, "]", "[", 68, 70, 62, 67, "]", "[", 68, 70, 62, 66, "]", "[", 68, 70, 62, 65, "]", "[", 68, 70, 62, 64, "]", "[", 68, 70, 62, 63, "]", "[", 68, 70, 62, 61, "]", "[", 68, 70, 62, 60, "]", "[", 68, 70, 61, 72, "]", "[", 68, 70, 61, 71, "]", "[", 68, 70, 61, 69, "]", "[", 68, 70, 61, 67, "]", "[", 68, 70, 61, 66, "]", "[", 68, 70, 61, 65, "]", "[", 68, 70, 61, 64, "]", "[", 68, 70, 61, 63, "]", "[", 68, 70, 61, 62, "]", "[", 68, 70, 61, 60, "]", "[", 68, 70, 60, 72, "]", "[", 68, 70, 60, 71, "]", "[", 68, 70, 60, 69, "]", "[", 68, 70, 60, 67, "]", "[", 68, 70, 60, 66, "]", "[", 68, 70, 60, 65, "]", "[", 68, 70, 60, 64, "]", "[", 68, 70, 60, 63, "]", "[", 68, 70, 60, 62, "]", "[", 68, 70, 60, 61, "]", "[", 68, 69, 72, 71, "]", "[", 68, 69, 72, 70, "]", "[", 68, 69, 72, 67, "]", "[", 68, 69, 72, 66, "]", "[", 68, 69, 72, 65, "]", "[", 68, 69, 72, 64, "]", "[", 68, 69, 72, 63, "]", "[", 68, 69, 72, 62, "]", "[", 68, 69, 72, 61, "]", "[", 68, 69, 72, 60, "]", "[", 68, 69, 71, 72, "]", "[", 68, 69, 71, 70, "]", "[", 68, 69, 71, 67, "]", "[", 68, 69, 71, 66, "]", "[", 68, 69, 71, 65, "]", "[", 68, 69, 71, 64, "]", "[", 68, 69, 71, 63, "]", "[", 68, 69, 71, 62, "]", "[", 68, 69, 71, 61, "]", "[", 68, 69, 71, 60, "]", "[", 68, 69, 70, 72, "]", "[", 68, 69, 70, 71, "]", "[", 68, 69, 70, 67, "]", "[", 68, 69, 70, 66, "]", "[", 68, 69, 70, 65, "]", "[", 68, 69, 70, 64, "]", "[", 68, 69, 70, 63, "]", "[", 68, 69, 70, 62, "]", "[", 68, 69, 70, 61, "]", "[", 68, 69, 70, 60, "]", "[", 68, 69, 67, 72, "]", "[", 68, 69, 67, 71, "]", "[", 68, 69, 67, 70, "]", "[", 68, 69, 67, 66, "]", "[", 68, 69, 67, 65, "]", "[", 68, 69, 67, 64, "]", "[", 68, 69, 67, 63, "]", "[", 68, 69, 67, 62, "]", "[", 68, 69, 67, 61, "]", "[", 68, 69, 67, 60, "]", "[", 68, 69, 66, 72, "]", "[", 68, 69, 66, 71, "]", "[", 68, 69, 66, 70, "]", "[", 68, 69, 66, 67, "]", "[", 68, 69, 66, 65, "]", "[", 68, 69, 66, 64, "]", "[", 68, 69, 66, 63, "]", "[", 68, 69, 66, 62, "]", "[", 68, 69, 66, 61, "]", "[", 68, 69, 66, 60, "]", "[", 68, 69, 65, 72, "]", "[", 68, 69, 65, 71, "]", "[", 68, 69, 65, 70, "]", "[", 68, 69, 65, 67, "]", "[", 68, 69, 65, 66, "]", "[", 68, 69, 65, 64, "]", "[", 68, 69, 65, 63, "]", "[", 68, 69, 65, 62, "]", "[", 68, 69, 65, 61, "]", "[", 68, 69, 65, 60, "]", "[", 68, 69, 64, 72, "]", "[", 68, 69, 64, 71, "]", "[", 68, 69, 64, 70, "]", "[", 68, 69, 64, 67, "]", "[", 68, 69, 64, 66, "]", "[", 68, 69, 64, 65, "]", "[", 68, 69, 64, 63, "]", "[", 68, 69, 64, 62, "]", "[", 68, 69, 64, 61, "]", "[", 68, 69, 64, 60, "]", "[", 68, 69, 63, 72, "]", "[", 68, 69, 63, 71, "]", "[", 68, 69, 63, 70, "]", "[", 68, 69, 63, 67, "]", "[", 68, 69, 63, 66, "]", "[", 68, 69, 63, 65, "]", "[", 68, 69, 63, 64, "]", "[", 68, 69, 63, 62, "]", "[", 68, 69, 63, 61, "]", "[", 68, 69, 63, 60, "]", "[", 68, 69, 62, 72, "]", "[", 68, 69, 62, 71, "]", "[", 68, 69, 62, 70, "]", "[", 68, 69, 62, 67, "]", "[", 68, 69, 62, 66, "]", "[", 68, 69, 62, 65, "]", "[", 68, 69, 62, 64, "]", "[", 68, 69, 62, 63, "]", "[", 68, 69, 62, 61, "]", "[", 68, 69, 62, 60, "]", "[", 68, 69, 61, 72, "]", "[", 68, 69, 61, 71, "]", "[", 68, 69, 61, 70, "]", "[", 68, 69, 61, 67, "]", "[", 68, 69, 61, 66, "]", "[", 68, 69, 61, 65, "]", "[", 68, 69, 61, 64, "]", "[", 68, 69, 61, 63, "]", "[", 68, 69, 61, 62, "]", "[", 68, 69, 61, 60, "]", "[", 68, 69, 60, 72, "]", "[", 68, 69, 60, 71, "]", "[", 68, 69, 60, 70, "]", "[", 68, 69, 60, 67, "]", "[", 68, 69, 60, 66, "]", "[", 68, 69, 60, 65, "]", "[", 68, 69, 60, 64, "]", "[", 68, 69, 60, 63, "]", "[", 68, 69, 60, 62, "]", "[", 68, 69, 60, 61, "]", "[", 68, 67, 72, 71, "]", "[", 68, 67, 72, 70, "]", "[", 68, 67, 72, 69, "]", "[", 68, 67, 72, 66, "]", "[", 68, 67, 72, 65, "]", "[", 68, 67, 72, 64, "]", "[", 68, 67, 72, 63, "]", "[", 68, 67, 72, 62, "]", "[", 68, 67, 72, 61, "]", "[", 68, 67, 72, 60, "]", "[", 68, 67, 71, 72, "]", "[", 68, 67, 71, 70, "]", "[", 68, 67, 71, 69, "]", "[", 68, 67, 71, 66, "]", "[", 68, 67, 71, 65, "]", "[", 68, 67, 71, 64, "]", "[", 68, 67, 71, 63, "]", "[", 68, 67, 71, 62, "]", "[", 68, 67, 71, 61, "]", "[", 68, 67, 71, 60, "]", "[", 68, 67, 70, 72, "]", "[", 68, 67, 70, 71, "]", "[", 68, 67, 70, 69, "]", "[", 68, 67, 70, 66, "]", "[", 68, 67, 70, 65, "]", "[", 68, 67, 70, 64, "]", "[", 68, 67, 70, 63, "]", "[", 68, 67, 70, 62, "]", "[", 68, 67, 70, 61, "]", "[", 68, 67, 70, 60, "]", "[", 68, 67, 69, 72, "]", "[", 68, 67, 69, 71, "]", "[", 68, 67, 69, 70, "]", "[", 68, 67, 69, 66, "]", "[", 68, 67, 69, 65, "]", "[", 68, 67, 69, 64, "]", "[", 68, 67, 69, 63, "]", "[", 68, 67, 69, 62, "]", "[", 68, 67, 69, 61, "]", "[", 68, 67, 69, 60, "]", "[", 68, 67, 66, 72, "]", "[", 68, 67, 66, 71, "]", "[", 68, 67, 66, 70, "]", "[", 68, 67, 66, 69, "]", "[", 68, 67, 66, 65, "]", "[", 68, 67, 66, 64, "]", "[", 68, 67, 66, 63, "]", "[", 68, 67, 66, 62, "]", "[", 68, 67, 66, 61, "]", "[", 68, 67, 66, 60, "]", "[", 68, 67, 65, 72, "]", "[", 68, 67, 65, 71, "]", "[", 68, 67, 65, 70, "]", "[", 68, 67, 65, 69, "]", "[", 68, 67, 65, 66, "]", "[", 68, 67, 65, 64, "]", "[", 68, 67, 65, 63, "]", "[", 68, 67, 65, 62, "]", "[", 68, 67, 65, 61, "]", "[", 68, 67, 65, 60, "]", "[", 68, 67, 64, 72, "]", "[", 68, 67, 64, 71, "]", "[", 68, 67, 64, 70, "]", "[", 68, 67, 64, 69, "]", "[", 68, 67, 64, 66, "]", "[", 68, 67, 64, 65, "]", "[", 68, 67, 64, 63, "]", "[", 68, 67, 64, 62, "]", "[", 68, 67, 64, 61, "]", "[", 68, 67, 64, 60, "]", "[", 68, 67, 63, 72, "]", "[", 68, 67, 63, 71, "]", "[", 68, 67, 63, 70, "]", "[", 68, 67, 63, 69, "]", "[", 68, 67, 63, 66, "]", "[", 68, 67, 63, 65, "]", "[", 68, 67, 63, 64, "]", "[", 68, 67, 63, 62, "]", "[", 68, 67, 63, 61, "]", "[", 68, 67, 63, 60, "]", "[", 68, 67, 62, 72, "]", "[", 68, 67, 62, 71, "]", "[", 68, 67, 62, 70, "]", "[", 68, 67, 62, 69, "]", "[", 68, 67, 62, 66, "]", "[", 68, 67, 62, 65, "]", "[", 68, 67, 62, 64, "]", "[", 68, 67, 62, 63, "]", "[", 68, 67, 62, 61, "]", "[", 68, 67, 62, 60, "]", "[", 68, 67, 61, 72, "]", "[", 68, 67, 61, 71, "]", "[", 68, 67, 61, 70, "]", "[", 68, 67, 61, 69, "]", "[", 68, 67, 61, 66, "]", "[", 68, 67, 61, 65, "]", "[", 68, 67, 61, 64, "]", "[", 68, 67, 61, 63, "]", "[", 68, 67, 61, 62, "]", "[", 68, 67, 61, 60, "]", "[", 68, 67, 60, 72, "]", "[", 68, 67, 60, 71, "]", "[", 68, 67, 60, 70, "]", "[", 68, 67, 60, 69, "]", "[", 68, 67, 60, 66, "]", "[", 68, 67, 60, 65, "]", "[", 68, 67, 60, 64, "]", "[", 68, 67, 60, 63, "]", "[", 68, 67, 60, 62, "]", "[", 68, 67, 60, 61, "]", "[", 68, 66, 72, 71, "]", "[", 68, 66, 72, 70, "]", "[", 68, 66, 72, 69, "]", "[", 68, 66, 72, 67, "]", "[", 68, 66, 72, 65, "]", "[", 68, 66, 72, 64, "]", "[", 68, 66, 72, 63, "]", "[", 68, 66, 72, 62, "]", "[", 68, 66, 72, 61, "]", "[", 68, 66, 72, 60, "]", "[", 68, 66, 71, 72, "]", "[", 68, 66, 71, 70, "]", "[", 68, 66, 71, 69, "]", "[", 68, 66, 71, 67, "]", "[", 68, 66, 71, 65, "]", "[", 68, 66, 71, 64, "]", "[", 68, 66, 71, 63, "]", "[", 68, 66, 71, 62, "]", "[", 68, 66, 71, 61, "]", "[", 68, 66, 71, 60, "]", "[", 68, 66, 70, 72, "]", "[", 68, 66, 70, 71, "]", "[", 68, 66, 70, 69, "]", "[", 68, 66, 70, 67, "]", "[", 68, 66, 70, 65, "]", "[", 68, 66, 70, 64, "]", "[", 68, 66, 70, 63, "]", "[", 68, 66, 70, 62, "]", "[", 68, 66, 70, 61, "]", "[", 68, 66, 70, 60, "]", "[", 68, 66, 69, 72, "]", "[", 68, 66, 69, 71, "]", "[", 68, 66, 69, 70, "]", "[", 68, 66, 69, 67, "]", "[", 68, 66, 69, 65, "]", "[", 68, 66, 69, 64, "]", "[", 68, 66, 69, 63, "]", "[", 68, 66, 69, 62, "]", "[", 68, 66, 69, 61, "]", "[", 68, 66, 69, 60, "]", "[", 68, 66, 67, 72, "]", "[", 68, 66, 67, 71, "]", "[", 68, 66, 67, 70, "]", "[", 68, 66, 67, 69, "]", "[", 68, 66, 67, 65, "]", "[", 68, 66, 67, 64, "]", "[", 68, 66, 67, 63, "]", "[", 68, 66, 67, 62, "]", "[", 68, 66, 67, 61, "]", "[", 68, 66, 67, 60, "]", "[", 68, 66, 65, 72, "]", "[", 68, 66, 65, 71, "]", "[", 68, 66, 65, 70, "]", "[", 68, 66, 65, 69, "]", "[", 68, 66, 65, 67, "]", "[", 68, 66, 65, 64, "]", "[", 68, 66, 65, 63, "]", "[", 68, 66, 65, 62, "]", "[", 68, 66, 65, 61, "]", "[", 68, 66, 65, 60, "]", "[", 68, 66, 64, 72, "]", "[", 68, 66, 64, 71, "]", "[", 68, 66, 64, 70, "]", "[", 68, 66, 64, 69, "]", "[", 68, 66, 64, 67, "]", "[", 68, 66, 64, 65, "]", "[", 68, 66, 64, 63, "]", "[", 68, 66, 64, 62, "]", "[", 68, 66, 64, 61, "]", "[", 68, 66, 64, 60, "]", "[", 68, 66, 63, 72, "]", "[", 68, 66, 63, 71, "]", "[", 68, 66, 63, 70, "]", "[", 68, 66, 63, 69, "]", "[", 68, 66, 63, 67, "]", "[", 68, 66, 63, 65, "]", "[", 68, 66, 63, 64, "]", "[", 68, 66, 63, 62, "]", "[", 68, 66, 63, 61, "]", "[", 68, 66, 63, 60, "]", "[", 68, 66, 62, 72, "]", "[", 68, 66, 62, 71, "]", "[", 68, 66, 62, 70, "]", "[", 68, 66, 62, 69, "]", "[", 68, 66, 62, 67, "]", "[", 68, 66, 62, 65, "]", "[", 68, 66, 62, 64, "]", "[", 68, 66, 62, 63, "]", "[", 68, 66, 62, 61, "]", "[", 68, 66, 62, 60, "]", "[", 68, 66, 61, 72, "]", "[", 68, 66, 61, 71, "]", "[", 68, 66, 61, 70, "]", "[", 68, 66, 61, 69, "]", "[", 68, 66, 61, 67, "]", "[", 68, 66, 61, 65, "]", "[", 68, 66, 61, 64, "]", "[", 68, 66, 61, 63, "]", "[", 68, 66, 61, 62, "]", "[", 68, 66, 61, 60, "]", "[", 68, 66, 60, 72, "]", "[", 68, 66, 60, 71, "]", "[", 68, 66, 60, 70, "]", "[", 68, 66, 60, 69, "]", "[", 68, 66, 60, 67, "]", "[", 68, 66, 60, 65, "]", "[", 68, 66, 60, 64, "]", "[", 68, 66, 60, 63, "]", "[", 68, 66, 60, 62, "]", "[", 68, 66, 60, 61, "]", "[", 68, 65, 72, 71, "]", "[", 68, 65, 72, 70, "]", "[", 68, 65, 72, 69, "]", "[", 68, 65, 72, 67, "]", "[", 68, 65, 72, 66, "]", "[", 68, 65, 72, 64, "]", "[", 68, 65, 72, 63, "]", "[", 68, 65, 72, 62, "]", "[", 68, 65, 72, 61, "]", "[", 68, 65, 72, 60, "]", "[", 68, 65, 71, 72, "]", "[", 68, 65, 71, 70, "]", "[", 68, 65, 71, 69, "]", "[", 68, 65, 71, 67, "]", "[", 68, 65, 71, 66, "]", "[", 68, 65, 71, 64, "]", "[", 68, 65, 71, 63, "]", "[", 68, 65, 71, 62, "]", "[", 68, 65, 71, 61, "]", "[", 68, 65, 71, 60, "]", "[", 68, 65, 70, 72, "]", "[", 68, 65, 70, 71, "]", "[", 68, 65, 70, 69, "]", "[", 68, 65, 70, 67, "]", "[", 68, 65, 70, 66, "]", "[", 68, 65, 70, 64, "]", "[", 68, 65, 70, 63, "]", "[", 68, 65, 70, 62, "]", "[", 68, 65, 70, 61, "]", "[", 68, 65, 70, 60, "]", "[", 68, 65, 69, 72, "]", "[", 68, 65, 69, 71, "]", "[", 68, 65, 69, 70, "]", "[", 68, 65, 69, 67, "]", "[", 68, 65, 69, 66, "]", "[", 68, 65, 69, 64, "]", "[", 68, 65, 69, 63, "]", "[", 68, 65, 69, 62, "]", "[", 68, 65, 69, 61, "]", "[", 68, 65, 69, 60, "]", "[", 68, 65, 67, 72, "]", "[", 68, 65, 67, 71, "]", "[", 68, 65, 67, 70, "]", "[", 68, 65, 67, 69, "]", "[", 68, 65, 67, 66, "]", "[", 68, 65, 67, 64, "]", "[", 68, 65, 67, 63, "]", "[", 68, 65, 67, 62, "]", "[", 68, 65, 67, 61, "]", "[", 68, 65, 67, 60, "]", "[", 68, 65, 66, 72, "]", "[", 68, 65, 66, 71, "]", "[", 68, 65, 66, 70, "]", "[", 68, 65, 66, 69, "]", "[", 68, 65, 66, 67, "]", "[", 68, 65, 66, 64, "]", "[", 68, 65, 66, 63, "]", "[", 68, 65, 66, 62, "]", "[", 68, 65, 66, 61, "]", "[", 68, 65, 66, 60, "]", "[", 68, 65, 64, 72, "]", "[", 68, 65, 64, 71, "]", "[", 68, 65, 64, 70, "]", "[", 68, 65, 64, 69, "]", "[", 68, 65, 64, 67, "]", "[", 68, 65, 64, 66, "]", "[", 68, 65, 64, 63, "]", "[", 68, 65, 64, 62, "]", "[", 68, 65, 64, 61, "]", "[", 68, 65, 64, 60, "]", "[", 68, 65, 63, 72, "]", "[", 68, 65, 63, 71, "]", "[", 68, 65, 63, 70, "]", "[", 68, 65, 63, 69, "]", "[", 68, 65, 63, 67, "]", "[", 68, 65, 63, 66, "]", "[", 68, 65, 63, 64, "]", "[", 68, 65, 63, 62, "]", "[", 68, 65, 63, 61, "]", "[", 68, 65, 63, 60, "]", "[", 68, 65, 62, 72, "]", "[", 68, 65, 62, 71, "]", "[", 68, 65, 62, 70, "]", "[", 68, 65, 62, 69, "]", "[", 68, 65, 62, 67, "]", "[", 68, 65, 62, 66, "]", "[", 68, 65, 62, 64, "]", "[", 68, 65, 62, 63, "]", "[", 68, 65, 62, 61, "]", "[", 68, 65, 62, 60, "]", "[", 68, 65, 61, 72, "]", "[", 68, 65, 61, 71, "]", "[", 68, 65, 61, 70, "]", "[", 68, 65, 61, 69, "]", "[", 68, 65, 61, 67, "]", "[", 68, 65, 61, 66, "]", "[", 68, 65, 61, 64, "]", "[", 68, 65, 61, 63, "]", "[", 68, 65, 61, 62, "]", "[", 68, 65, 61, 60, "]", "[", 68, 65, 60, 72, "]", "[", 68, 65, 60, 71, "]", "[", 68, 65, 60, 70, "]", "[", 68, 65, 60, 69, "]", "[", 68, 65, 60, 67, "]", "[", 68, 65, 60, 66, "]", "[", 68, 65, 60, 64, "]", "[", 68, 65, 60, 63, "]", "[", 68, 65, 60, 62, "]", "[", 68, 65, 60, 61, "]", "[", 68, 64, 72, 71, "]", "[", 68, 64, 72, 70, "]", "[", 68, 64, 72, 69, "]", "[", 68, 64, 72, 67, "]", "[", 68, 64, 72, 66, "]", "[", 68, 64, 72, 65, "]", "[", 68, 64, 72, 63, "]", "[", 68, 64, 72, 62, "]", "[", 68, 64, 72, 61, "]", "[", 68, 64, 72, 60, "]", "[", 68, 64, 71, 72, "]", "[", 68, 64, 71, 70, "]", "[", 68, 64, 71, 69, "]", "[", 68, 64, 71, 67, "]", "[", 68, 64, 71, 66, "]", "[", 68, 64, 71, 65, "]", "[", 68, 64, 71, 63, "]", "[", 68, 64, 71, 62, "]", "[", 68, 64, 71, 61, "]", "[", 68, 64, 71, 60, "]", "[", 68, 64, 70, 72, "]", "[", 68, 64, 70, 71, "]", "[", 68, 64, 70, 69, "]", "[", 68, 64, 70, 67, "]", "[", 68, 64, 70, 66, "]", "[", 68, 64, 70, 65, "]", "[", 68, 64, 70, 63, "]", "[", 68, 64, 70, 62, "]", "[", 68, 64, 70, 61, "]", "[", 68, 64, 70, 60, "]", "[", 68, 64, 69, 72, "]", "[", 68, 64, 69, 71, "]", "[", 68, 64, 69, 70, "]", "[", 68, 64, 69, 67, "]", "[", 68, 64, 69, 66, "]", "[", 68, 64, 69, 65, "]", "[", 68, 64, 69, 63, "]", "[", 68, 64, 69, 62, "]", "[", 68, 64, 69, 61, "]", "[", 68, 64, 69, 60, "]", "[", 68, 64, 67, 72, "]", "[", 68, 64, 67, 71, "]", "[", 68, 64, 67, 70, "]", "[", 68, 64, 67, 69, "]", "[", 68, 64, 67, 66, "]", "[", 68, 64, 67, 65, "]", "[", 68, 64, 67, 63, "]", "[", 68, 64, 67, 62, "]", "[", 68, 64, 67, 61, "]", "[", 68, 64, 67, 60, "]", "[", 68, 64, 66, 72, "]", "[", 68, 64, 66, 71, "]", "[", 68, 64, 66, 70, "]", "[", 68, 64, 66, 69, "]", "[", 68, 64, 66, 67, "]", "[", 68, 64, 66, 65, "]", "[", 68, 64, 66, 63, "]", "[", 68, 64, 66, 62, "]", "[", 68, 64, 66, 61, "]", "[", 68, 64, 66, 60, "]", "[", 68, 64, 65, 72, "]", "[", 68, 64, 65, 71, "]", "[", 68, 64, 65, 70, "]", "[", 68, 64, 65, 69, "]", "[", 68, 64, 65, 67, "]", "[", 68, 64, 65, 66, "]", "[", 68, 64, 65, 63, "]", "[", 68, 64, 65, 62, "]", "[", 68, 64, 65, 61, "]", "[", 68, 64, 65, 60, "]", "[", 68, 64, 63, 72, "]", "[", 68, 64, 63, 71, "]", "[", 68, 64, 63, 70, "]", "[", 68, 64, 63, 69, "]", "[", 68, 64, 63, 67, "]", "[", 68, 64, 63, 66, "]", "[", 68, 64, 63, 65, "]", "[", 68, 64, 63, 62, "]", "[", 68, 64, 63, 61, "]", "[", 68, 64, 63, 60, "]", "[", 68, 64, 62, 72, "]", "[", 68, 64, 62, 71, "]", "[", 68, 64, 62, 70, "]", "[", 68, 64, 62, 69, "]", "[", 68, 64, 62, 67, "]", "[", 68, 64, 62, 66, "]", "[", 68, 64, 62, 65, "]", "[", 68, 64, 62, 63, "]", "[", 68, 64, 62, 61, "]", "[", 68, 64, 62, 60, "]", "[", 68, 64, 61, 72, "]", "[", 68, 64, 61, 71, "]", "[", 68, 64, 61, 70, "]", "[", 68, 64, 61, 69, "]" ],
													"reg_data_0000000009" : [ "[", 68, 64, 61, 67, "]", "[", 68, 64, 61, 66, "]", "[", 68, 64, 61, 65, "]", "[", 68, 64, 61, 63, "]", "[", 68, 64, 61, 62, "]", "[", 68, 64, 61, 60, "]", "[", 68, 64, 60, 72, "]", "[", 68, 64, 60, 71, "]", "[", 68, 64, 60, 70, "]", "[", 68, 64, 60, 69, "]", "[", 68, 64, 60, 67, "]", "[", 68, 64, 60, 66, "]", "[", 68, 64, 60, 65, "]", "[", 68, 64, 60, 63, "]", "[", 68, 64, 60, 62, "]", "[", 68, 64, 60, 61, "]", "[", 68, 63, 72, 71, "]", "[", 68, 63, 72, 70, "]", "[", 68, 63, 72, 69, "]", "[", 68, 63, 72, 67, "]", "[", 68, 63, 72, 66, "]", "[", 68, 63, 72, 65, "]", "[", 68, 63, 72, 64, "]", "[", 68, 63, 72, 62, "]", "[", 68, 63, 72, 61, "]", "[", 68, 63, 72, 60, "]", "[", 68, 63, 71, 72, "]", "[", 68, 63, 71, 70, "]", "[", 68, 63, 71, 69, "]", "[", 68, 63, 71, 67, "]", "[", 68, 63, 71, 66, "]", "[", 68, 63, 71, 65, "]", "[", 68, 63, 71, 64, "]", "[", 68, 63, 71, 62, "]", "[", 68, 63, 71, 61, "]", "[", 68, 63, 71, 60, "]", "[", 68, 63, 70, 72, "]", "[", 68, 63, 70, 71, "]", "[", 68, 63, 70, 69, "]", "[", 68, 63, 70, 67, "]", "[", 68, 63, 70, 66, "]", "[", 68, 63, 70, 65, "]", "[", 68, 63, 70, 64, "]", "[", 68, 63, 70, 62, "]", "[", 68, 63, 70, 61, "]", "[", 68, 63, 70, 60, "]", "[", 68, 63, 69, 72, "]", "[", 68, 63, 69, 71, "]", "[", 68, 63, 69, 70, "]", "[", 68, 63, 69, 67, "]", "[", 68, 63, 69, 66, "]", "[", 68, 63, 69, 65, "]", "[", 68, 63, 69, 64, "]", "[", 68, 63, 69, 62, "]", "[", 68, 63, 69, 61, "]", "[", 68, 63, 69, 60, "]", "[", 68, 63, 67, 72, "]", "[", 68, 63, 67, 71, "]", "[", 68, 63, 67, 70, "]", "[", 68, 63, 67, 69, "]", "[", 68, 63, 67, 66, "]", "[", 68, 63, 67, 65, "]", "[", 68, 63, 67, 64, "]", "[", 68, 63, 67, 62, "]", "[", 68, 63, 67, 61, "]", "[", 68, 63, 67, 60, "]", "[", 68, 63, 66, 72, "]", "[", 68, 63, 66, 71, "]", "[", 68, 63, 66, 70, "]", "[", 68, 63, 66, 69, "]", "[", 68, 63, 66, 67, "]", "[", 68, 63, 66, 65, "]", "[", 68, 63, 66, 64, "]", "[", 68, 63, 66, 62, "]", "[", 68, 63, 66, 61, "]", "[", 68, 63, 66, 60, "]", "[", 68, 63, 65, 72, "]", "[", 68, 63, 65, 71, "]", "[", 68, 63, 65, 70, "]", "[", 68, 63, 65, 69, "]", "[", 68, 63, 65, 67, "]", "[", 68, 63, 65, 66, "]", "[", 68, 63, 65, 64, "]", "[", 68, 63, 65, 62, "]", "[", 68, 63, 65, 61, "]", "[", 68, 63, 65, 60, "]", "[", 68, 63, 64, 72, "]", "[", 68, 63, 64, 71, "]", "[", 68, 63, 64, 70, "]", "[", 68, 63, 64, 69, "]", "[", 68, 63, 64, 67, "]", "[", 68, 63, 64, 66, "]", "[", 68, 63, 64, 65, "]", "[", 68, 63, 64, 62, "]", "[", 68, 63, 64, 61, "]", "[", 68, 63, 64, 60, "]", "[", 68, 63, 62, 72, "]", "[", 68, 63, 62, 71, "]", "[", 68, 63, 62, 70, "]", "[", 68, 63, 62, 69, "]", "[", 68, 63, 62, 67, "]", "[", 68, 63, 62, 66, "]", "[", 68, 63, 62, 65, "]", "[", 68, 63, 62, 64, "]", "[", 68, 63, 62, 61, "]", "[", 68, 63, 62, 60, "]", "[", 68, 63, 61, 72, "]", "[", 68, 63, 61, 71, "]", "[", 68, 63, 61, 70, "]", "[", 68, 63, 61, 69, "]", "[", 68, 63, 61, 67, "]", "[", 68, 63, 61, 66, "]", "[", 68, 63, 61, 65, "]", "[", 68, 63, 61, 64, "]", "[", 68, 63, 61, 62, "]", "[", 68, 63, 61, 60, "]", "[", 68, 63, 60, 72, "]", "[", 68, 63, 60, 71, "]", "[", 68, 63, 60, 70, "]", "[", 68, 63, 60, 69, "]", "[", 68, 63, 60, 67, "]", "[", 68, 63, 60, 66, "]", "[", 68, 63, 60, 65, "]", "[", 68, 63, 60, 64, "]", "[", 68, 63, 60, 62, "]", "[", 68, 63, 60, 61, "]", "[", 68, 62, 72, 71, "]", "[", 68, 62, 72, 70, "]", "[", 68, 62, 72, 69, "]", "[", 68, 62, 72, 67, "]", "[", 68, 62, 72, 66, "]", "[", 68, 62, 72, 65, "]", "[", 68, 62, 72, 64, "]", "[", 68, 62, 72, 63, "]", "[", 68, 62, 72, 61, "]", "[", 68, 62, 72, 60, "]", "[", 68, 62, 71, 72, "]", "[", 68, 62, 71, 70, "]", "[", 68, 62, 71, 69, "]", "[", 68, 62, 71, 67, "]", "[", 68, 62, 71, 66, "]", "[", 68, 62, 71, 65, "]", "[", 68, 62, 71, 64, "]", "[", 68, 62, 71, 63, "]", "[", 68, 62, 71, 61, "]", "[", 68, 62, 71, 60, "]", "[", 68, 62, 70, 72, "]", "[", 68, 62, 70, 71, "]", "[", 68, 62, 70, 69, "]", "[", 68, 62, 70, 67, "]", "[", 68, 62, 70, 66, "]", "[", 68, 62, 70, 65, "]", "[", 68, 62, 70, 64, "]", "[", 68, 62, 70, 63, "]", "[", 68, 62, 70, 61, "]", "[", 68, 62, 70, 60, "]", "[", 68, 62, 69, 72, "]", "[", 68, 62, 69, 71, "]", "[", 68, 62, 69, 70, "]", "[", 68, 62, 69, 67, "]", "[", 68, 62, 69, 66, "]", "[", 68, 62, 69, 65, "]", "[", 68, 62, 69, 64, "]", "[", 68, 62, 69, 63, "]", "[", 68, 62, 69, 61, "]", "[", 68, 62, 69, 60, "]", "[", 68, 62, 67, 72, "]", "[", 68, 62, 67, 71, "]", "[", 68, 62, 67, 70, "]", "[", 68, 62, 67, 69, "]", "[", 68, 62, 67, 66, "]", "[", 68, 62, 67, 65, "]", "[", 68, 62, 67, 64, "]", "[", 68, 62, 67, 63, "]", "[", 68, 62, 67, 61, "]", "[", 68, 62, 67, 60, "]", "[", 68, 62, 66, 72, "]", "[", 68, 62, 66, 71, "]", "[", 68, 62, 66, 70, "]", "[", 68, 62, 66, 69, "]", "[", 68, 62, 66, 67, "]", "[", 68, 62, 66, 65, "]", "[", 68, 62, 66, 64, "]", "[", 68, 62, 66, 63, "]", "[", 68, 62, 66, 61, "]", "[", 68, 62, 66, 60, "]", "[", 68, 62, 65, 72, "]", "[", 68, 62, 65, 71, "]", "[", 68, 62, 65, 70, "]", "[", 68, 62, 65, 69, "]", "[", 68, 62, 65, 67, "]", "[", 68, 62, 65, 66, "]", "[", 68, 62, 65, 64, "]", "[", 68, 62, 65, 63, "]", "[", 68, 62, 65, 61, "]", "[", 68, 62, 65, 60, "]", "[", 68, 62, 64, 72, "]", "[", 68, 62, 64, 71, "]", "[", 68, 62, 64, 70, "]", "[", 68, 62, 64, 69, "]", "[", 68, 62, 64, 67, "]", "[", 68, 62, 64, 66, "]", "[", 68, 62, 64, 65, "]", "[", 68, 62, 64, 63, "]", "[", 68, 62, 64, 61, "]", "[", 68, 62, 64, 60, "]", "[", 68, 62, 63, 72, "]", "[", 68, 62, 63, 71, "]", "[", 68, 62, 63, 70, "]", "[", 68, 62, 63, 69, "]", "[", 68, 62, 63, 67, "]", "[", 68, 62, 63, 66, "]", "[", 68, 62, 63, 65, "]", "[", 68, 62, 63, 64, "]", "[", 68, 62, 63, 61, "]", "[", 68, 62, 63, 60, "]", "[", 68, 62, 61, 72, "]", "[", 68, 62, 61, 71, "]", "[", 68, 62, 61, 70, "]", "[", 68, 62, 61, 69, "]", "[", 68, 62, 61, 67, "]", "[", 68, 62, 61, 66, "]", "[", 68, 62, 61, 65, "]", "[", 68, 62, 61, 64, "]", "[", 68, 62, 61, 63, "]", "[", 68, 62, 61, 60, "]", "[", 68, 62, 60, 72, "]", "[", 68, 62, 60, 71, "]", "[", 68, 62, 60, 70, "]", "[", 68, 62, 60, 69, "]", "[", 68, 62, 60, 67, "]", "[", 68, 62, 60, 66, "]", "[", 68, 62, 60, 65, "]", "[", 68, 62, 60, 64, "]", "[", 68, 62, 60, 63, "]", "[", 68, 62, 60, 61, "]", "[", 68, 61, 72, 71, "]", "[", 68, 61, 72, 70, "]", "[", 68, 61, 72, 69, "]", "[", 68, 61, 72, 67, "]", "[", 68, 61, 72, 66, "]", "[", 68, 61, 72, 65, "]", "[", 68, 61, 72, 64, "]", "[", 68, 61, 72, 63, "]", "[", 68, 61, 72, 62, "]", "[", 68, 61, 72, 60, "]", "[", 68, 61, 71, 72, "]", "[", 68, 61, 71, 70, "]", "[", 68, 61, 71, 69, "]", "[", 68, 61, 71, 67, "]", "[", 68, 61, 71, 66, "]", "[", 68, 61, 71, 65, "]", "[", 68, 61, 71, 64, "]", "[", 68, 61, 71, 63, "]", "[", 68, 61, 71, 62, "]", "[", 68, 61, 71, 60, "]", "[", 68, 61, 70, 72, "]", "[", 68, 61, 70, 71, "]", "[", 68, 61, 70, 69, "]", "[", 68, 61, 70, 67, "]", "[", 68, 61, 70, 66, "]", "[", 68, 61, 70, 65, "]", "[", 68, 61, 70, 64, "]", "[", 68, 61, 70, 63, "]", "[", 68, 61, 70, 62, "]", "[", 68, 61, 70, 60, "]", "[", 68, 61, 69, 72, "]", "[", 68, 61, 69, 71, "]", "[", 68, 61, 69, 70, "]", "[", 68, 61, 69, 67, "]", "[", 68, 61, 69, 66, "]", "[", 68, 61, 69, 65, "]", "[", 68, 61, 69, 64, "]", "[", 68, 61, 69, 63, "]", "[", 68, 61, 69, 62, "]", "[", 68, 61, 69, 60, "]", "[", 68, 61, 67, 72, "]", "[", 68, 61, 67, 71, "]", "[", 68, 61, 67, 70, "]", "[", 68, 61, 67, 69, "]", "[", 68, 61, 67, 66, "]", "[", 68, 61, 67, 65, "]", "[", 68, 61, 67, 64, "]", "[", 68, 61, 67, 63, "]", "[", 68, 61, 67, 62, "]", "[", 68, 61, 67, 60, "]", "[", 68, 61, 66, 72, "]", "[", 68, 61, 66, 71, "]", "[", 68, 61, 66, 70, "]", "[", 68, 61, 66, 69, "]", "[", 68, 61, 66, 67, "]", "[", 68, 61, 66, 65, "]", "[", 68, 61, 66, 64, "]", "[", 68, 61, 66, 63, "]", "[", 68, 61, 66, 62, "]", "[", 68, 61, 66, 60, "]", "[", 68, 61, 65, 72, "]", "[", 68, 61, 65, 71, "]", "[", 68, 61, 65, 70, "]", "[", 68, 61, 65, 69, "]", "[", 68, 61, 65, 67, "]", "[", 68, 61, 65, 66, "]", "[", 68, 61, 65, 64, "]", "[", 68, 61, 65, 63, "]", "[", 68, 61, 65, 62, "]", "[", 68, 61, 65, 60, "]", "[", 68, 61, 64, 72, "]", "[", 68, 61, 64, 71, "]", "[", 68, 61, 64, 70, "]", "[", 68, 61, 64, 69, "]", "[", 68, 61, 64, 67, "]", "[", 68, 61, 64, 66, "]", "[", 68, 61, 64, 65, "]", "[", 68, 61, 64, 63, "]", "[", 68, 61, 64, 62, "]", "[", 68, 61, 64, 60, "]", "[", 68, 61, 63, 72, "]", "[", 68, 61, 63, 71, "]", "[", 68, 61, 63, 70, "]", "[", 68, 61, 63, 69, "]", "[", 68, 61, 63, 67, "]", "[", 68, 61, 63, 66, "]", "[", 68, 61, 63, 65, "]", "[", 68, 61, 63, 64, "]", "[", 68, 61, 63, 62, "]", "[", 68, 61, 63, 60, "]", "[", 68, 61, 62, 72, "]", "[", 68, 61, 62, 71, "]", "[", 68, 61, 62, 70, "]", "[", 68, 61, 62, 69, "]", "[", 68, 61, 62, 67, "]", "[", 68, 61, 62, 66, "]", "[", 68, 61, 62, 65, "]", "[", 68, 61, 62, 64, "]", "[", 68, 61, 62, 63, "]", "[", 68, 61, 62, 60, "]", "[", 68, 61, 60, 72, "]", "[", 68, 61, 60, 71, "]", "[", 68, 61, 60, 70, "]", "[", 68, 61, 60, 69, "]", "[", 68, 61, 60, 67, "]", "[", 68, 61, 60, 66, "]", "[", 68, 61, 60, 65, "]", "[", 68, 61, 60, 64, "]", "[", 68, 61, 60, 63, "]", "[", 68, 61, 60, 62, "]", "[", 68, 60, 72, 71, "]", "[", 68, 60, 72, 70, "]", "[", 68, 60, 72, 69, "]", "[", 68, 60, 72, 67, "]", "[", 68, 60, 72, 66, "]", "[", 68, 60, 72, 65, "]", "[", 68, 60, 72, 64, "]", "[", 68, 60, 72, 63, "]", "[", 68, 60, 72, 62, "]", "[", 68, 60, 72, 61, "]", "[", 68, 60, 71, 72, "]", "[", 68, 60, 71, 70, "]", "[", 68, 60, 71, 69, "]", "[", 68, 60, 71, 67, "]", "[", 68, 60, 71, 66, "]", "[", 68, 60, 71, 65, "]", "[", 68, 60, 71, 64, "]", "[", 68, 60, 71, 63, "]", "[", 68, 60, 71, 62, "]", "[", 68, 60, 71, 61, "]", "[", 68, 60, 70, 72, "]", "[", 68, 60, 70, 71, "]", "[", 68, 60, 70, 69, "]", "[", 68, 60, 70, 67, "]", "[", 68, 60, 70, 66, "]", "[", 68, 60, 70, 65, "]", "[", 68, 60, 70, 64, "]", "[", 68, 60, 70, 63, "]", "[", 68, 60, 70, 62, "]", "[", 68, 60, 70, 61, "]", "[", 68, 60, 69, 72, "]", "[", 68, 60, 69, 71, "]", "[", 68, 60, 69, 70, "]", "[", 68, 60, 69, 67, "]", "[", 68, 60, 69, 66, "]", "[", 68, 60, 69, 65, "]", "[", 68, 60, 69, 64, "]", "[", 68, 60, 69, 63, "]", "[", 68, 60, 69, 62, "]", "[", 68, 60, 69, 61, "]", "[", 68, 60, 67, 72, "]", "[", 68, 60, 67, 71, "]", "[", 68, 60, 67, 70, "]", "[", 68, 60, 67, 69, "]", "[", 68, 60, 67, 66, "]", "[", 68, 60, 67, 65, "]", "[", 68, 60, 67, 64, "]", "[", 68, 60, 67, 63, "]", "[", 68, 60, 67, 62, "]", "[", 68, 60, 67, 61, "]", "[", 68, 60, 66, 72, "]", "[", 68, 60, 66, 71, "]", "[", 68, 60, 66, 70, "]", "[", 68, 60, 66, 69, "]", "[", 68, 60, 66, 67, "]", "[", 68, 60, 66, 65, "]", "[", 68, 60, 66, 64, "]", "[", 68, 60, 66, 63, "]", "[", 68, 60, 66, 62, "]", "[", 68, 60, 66, 61, "]", "[", 68, 60, 65, 72, "]", "[", 68, 60, 65, 71, "]", "[", 68, 60, 65, 70, "]", "[", 68, 60, 65, 69, "]", "[", 68, 60, 65, 67, "]", "[", 68, 60, 65, 66, "]", "[", 68, 60, 65, 64, "]", "[", 68, 60, 65, 63, "]", "[", 68, 60, 65, 62, "]", "[", 68, 60, 65, 61, "]", "[", 68, 60, 64, 72, "]", "[", 68, 60, 64, 71, "]", "[", 68, 60, 64, 70, "]", "[", 68, 60, 64, 69, "]", "[", 68, 60, 64, 67, "]", "[", 68, 60, 64, 66, "]", "[", 68, 60, 64, 65, "]", "[", 68, 60, 64, 63, "]", "[", 68, 60, 64, 62, "]", "[", 68, 60, 64, 61, "]", "[", 68, 60, 63, 72, "]", "[", 68, 60, 63, 71, "]", "[", 68, 60, 63, 70, "]", "[", 68, 60, 63, 69, "]", "[", 68, 60, 63, 67, "]", "[", 68, 60, 63, 66, "]", "[", 68, 60, 63, 65, "]", "[", 68, 60, 63, 64, "]", "[", 68, 60, 63, 62, "]", "[", 68, 60, 63, 61, "]", "[", 68, 60, 62, 72, "]", "[", 68, 60, 62, 71, "]", "[", 68, 60, 62, 70, "]", "[", 68, 60, 62, 69, "]", "[", 68, 60, 62, 67, "]", "[", 68, 60, 62, 66, "]", "[", 68, 60, 62, 65, "]", "[", 68, 60, 62, 64, "]", "[", 68, 60, 62, 63, "]", "[", 68, 60, 62, 61, "]", "[", 68, 60, 61, 72, "]", "[", 68, 60, 61, 71, "]", "[", 68, 60, 61, 70, "]", "[", 68, 60, 61, 69, "]", "[", 68, 60, 61, 67, "]", "[", 68, 60, 61, 66, "]", "[", 68, 60, 61, 65, "]", "[", 68, 60, 61, 64, "]", "[", 68, 60, 61, 63, "]", "[", 68, 60, 61, 62, "]", "[", 67, 72, 71, 70, "]", "[", 67, 72, 71, 69, "]", "[", 67, 72, 71, 68, "]", "[", 67, 72, 71, 66, "]", "[", 67, 72, 71, 65, "]", "[", 67, 72, 71, 64, "]", "[", 67, 72, 71, 63, "]", "[", 67, 72, 71, 62, "]", "[", 67, 72, 71, 61, "]", "[", 67, 72, 71, 60, "]", "[", 67, 72, 70, 71, "]", "[", 67, 72, 70, 69, "]", "[", 67, 72, 70, 68, "]", "[", 67, 72, 70, 66, "]", "[", 67, 72, 70, 65, "]", "[", 67, 72, 70, 64, "]", "[", 67, 72, 70, 63, "]", "[", 67, 72, 70, 62, "]", "[", 67, 72, 70, 61, "]", "[", 67, 72, 70, 60, "]", "[", 67, 72, 69, 71, "]", "[", 67, 72, 69, 70, "]", "[", 67, 72, 69, 68, "]", "[", 67, 72, 69, 66, "]", "[", 67, 72, 69, 65, "]", "[", 67, 72, 69, 64, "]", "[", 67, 72, 69, 63, "]", "[", 67, 72, 69, 62, "]", "[", 67, 72, 69, 61, "]", "[", 67, 72, 69, 60, "]", "[", 67, 72, 68, 71, "]", "[", 67, 72, 68, 70, "]", "[", 67, 72, 68, 69, "]", "[", 67, 72, 68, 66, "]", "[", 67, 72, 68, 65, "]", "[", 67, 72, 68, 64, "]", "[", 67, 72, 68, 63, "]", "[", 67, 72, 68, 62, "]", "[", 67, 72, 68, 61, "]", "[", 67, 72, 68, 60, "]", "[", 67, 72, 66, 71, "]", "[", 67, 72, 66, 70, "]", "[", 67, 72, 66, 69, "]", "[", 67, 72, 66, 68, "]", "[", 67, 72, 66, 65, "]", "[", 67, 72, 66, 64, "]", "[", 67, 72, 66, 63, "]", "[", 67, 72, 66, 62, "]", "[", 67, 72, 66, 61, "]", "[", 67, 72, 66, 60, "]", "[", 67, 72, 65, 71, "]", "[", 67, 72, 65, 70, "]", "[", 67, 72, 65, 69, "]", "[", 67, 72, 65, 68, "]", "[", 67, 72, 65, 66, "]", "[", 67, 72, 65, 64, "]", "[", 67, 72, 65, 63, "]", "[", 67, 72, 65, 62, "]", "[", 67, 72, 65, 61, "]", "[", 67, 72, 65, 60, "]", "[", 67, 72, 64, 71, "]", "[", 67, 72, 64, 70, "]", "[", 67, 72, 64, 69, "]", "[", 67, 72, 64, 68, "]", "[", 67, 72, 64, 66, "]", "[", 67, 72, 64, 65, "]", "[", 67, 72, 64, 63, "]", "[", 67, 72, 64, 62, "]", "[", 67, 72, 64, 61, "]", "[", 67, 72, 64, 60, "]", "[", 67, 72, 63, 71, "]", "[", 67, 72, 63, 70, "]", "[", 67, 72, 63, 69, "]", "[", 67, 72, 63, 68, "]", "[", 67, 72, 63, 66, "]", "[", 67, 72, 63, 65, "]", "[", 67, 72, 63, 64, "]", "[", 67, 72, 63, 62, "]", "[", 67, 72, 63, 61, "]", "[", 67, 72, 63, 60, "]", "[", 67, 72, 62, 71, "]", "[", 67, 72, 62, 70, "]", "[", 67, 72, 62, 69, "]", "[", 67, 72, 62, 68, "]", "[", 67, 72, 62, 66, "]", "[", 67, 72, 62, 65, "]", "[", 67, 72, 62, 64, "]", "[", 67, 72, 62, 63, "]", "[", 67, 72, 62, 61, "]", "[", 67, 72, 62, 60, "]", "[", 67, 72, 61, 71, "]", "[", 67, 72, 61, 70, "]", "[", 67, 72, 61, 69, "]", "[", 67, 72, 61, 68, "]", "[", 67, 72, 61, 66, "]", "[", 67, 72, 61, 65, "]", "[", 67, 72, 61, 64, "]", "[", 67, 72, 61, 63, "]", "[", 67, 72, 61, 62, "]", "[", 67, 72, 61, 60, "]", "[", 67, 72, 60, 71, "]", "[", 67, 72, 60, 70, "]", "[", 67, 72, 60, 69, "]", "[", 67, 72, 60, 68, "]", "[", 67, 72, 60, 66, "]", "[", 67, 72, 60, 65, "]", "[", 67, 72, 60, 64, "]", "[", 67, 72, 60, 63, "]", "[", 67, 72, 60, 62, "]", "[", 67, 72, 60, 61, "]", "[", 67, 71, 72, 70, "]", "[", 67, 71, 72, 69, "]", "[", 67, 71, 72, 68, "]", "[", 67, 71, 72, 66, "]", "[", 67, 71, 72, 65, "]", "[", 67, 71, 72, 64, "]", "[", 67, 71, 72, 63, "]", "[", 67, 71, 72, 62, "]", "[", 67, 71, 72, 61, "]", "[", 67, 71, 72, 60, "]", "[", 67, 71, 70, 72, "]", "[", 67, 71, 70, 69, "]", "[", 67, 71, 70, 68, "]", "[", 67, 71, 70, 66, "]", "[", 67, 71, 70, 65, "]", "[", 67, 71, 70, 64, "]", "[", 67, 71, 70, 63, "]", "[", 67, 71, 70, 62, "]", "[", 67, 71, 70, 61, "]", "[", 67, 71, 70, 60, "]", "[", 67, 71, 69, 72, "]", "[", 67, 71, 69, 70, "]", "[", 67, 71, 69, 68, "]", "[", 67, 71, 69, 66, "]", "[", 67, 71, 69, 65, "]", "[", 67, 71, 69, 64, "]", "[", 67, 71, 69, 63, "]", "[", 67, 71, 69, 62, "]", "[", 67, 71, 69, 61, "]", "[", 67, 71, 69, 60, "]", "[", 67, 71, 68, 72, "]", "[", 67, 71, 68, 70, "]", "[", 67, 71, 68, 69, "]", "[", 67, 71, 68, 66, "]", "[", 67, 71, 68, 65, "]", "[", 67, 71, 68, 64, "]", "[", 67, 71, 68, 63, "]", "[", 67, 71, 68, 62, "]", "[", 67, 71, 68, 61, "]", "[", 67, 71, 68, 60, "]", "[", 67, 71, 66, 72, "]", "[", 67, 71, 66, 70, "]", "[", 67, 71, 66, 69, "]", "[", 67, 71, 66, 68, "]", "[", 67, 71, 66, 65, "]", "[", 67, 71, 66, 64, "]", "[", 67, 71, 66, 63, "]", "[", 67, 71, 66, 62, "]", "[", 67, 71, 66, 61, "]", "[", 67, 71, 66, 60, "]", "[", 67, 71, 65, 72, "]", "[", 67, 71, 65, 70, "]", "[", 67, 71, 65, 69, "]", "[", 67, 71, 65, 68, "]", "[", 67, 71, 65, 66, "]", "[", 67, 71, 65, 64, "]", "[", 67, 71, 65, 63, "]", "[", 67, 71, 65, 62, "]", "[", 67, 71, 65, 61, "]", "[", 67, 71, 65, 60, "]", "[", 67, 71, 64, 72, "]", "[", 67, 71, 64, 70, "]", "[", 67, 71, 64, 69, "]", "[", 67, 71, 64, 68, "]", "[", 67, 71, 64, 66, "]", "[", 67, 71, 64, 65, "]", "[", 67, 71, 64, 63, "]", "[", 67, 71, 64, 62, "]", "[", 67, 71, 64, 61, "]", "[", 67, 71, 64, 60, "]", "[", 67, 71, 63, 72, "]", "[", 67, 71, 63, 70, "]", "[", 67, 71, 63, 69, "]", "[", 67, 71, 63, 68, "]", "[", 67, 71, 63, 66, "]", "[", 67, 71, 63, 65, "]", "[", 67, 71, 63, 64, "]", "[", 67, 71, 63, 62, "]", "[", 67, 71, 63, 61, "]", "[", 67, 71, 63, 60, "]", "[", 67, 71, 62, 72, "]", "[", 67, 71, 62, 70, "]", "[", 67, 71, 62, 69, "]", "[", 67, 71, 62, 68, "]", "[", 67, 71, 62, 66, "]", "[", 67, 71, 62, 65, "]", "[", 67, 71, 62, 64, "]", "[", 67, 71, 62, 63, "]", "[", 67, 71, 62, 61, "]", "[", 67, 71, 62, 60, "]", "[", 67, 71, 61, 72, "]", "[", 67, 71, 61, 70, "]", "[", 67, 71, 61, 69, "]", "[", 67, 71, 61, 68, "]", "[", 67, 71, 61, 66, "]", "[", 67, 71, 61, 65, "]", "[", 67, 71, 61, 64, "]", "[", 67, 71, 61, 63, "]", "[", 67, 71, 61, 62, "]", "[", 67, 71, 61, 60, "]", "[", 67, 71, 60, 72, "]", "[", 67, 71, 60, 70, "]", "[", 67, 71, 60, 69, "]", "[", 67, 71, 60, 68, "]", "[", 67, 71, 60, 66, "]", "[", 67, 71, 60, 65, "]", "[", 67, 71, 60, 64, "]", "[", 67, 71, 60, 63, "]", "[", 67, 71, 60, 62, "]", "[", 67, 71, 60, 61, "]", "[", 67, 70, 72, 71, "]", "[", 67, 70, 72, 69, "]", "[", 67, 70, 72, 68, "]", "[", 67, 70, 72, 66, "]", "[", 67, 70, 72, 65, "]", "[", 67, 70, 72, 64, "]", "[", 67, 70, 72 ],
													"reg_data_0000000010" : [ 63, "]", "[", 67, 70, 72, 62, "]", "[", 67, 70, 72, 61, "]", "[", 67, 70, 72, 60, "]", "[", 67, 70, 71, 72, "]", "[", 67, 70, 71, 69, "]", "[", 67, 70, 71, 68, "]", "[", 67, 70, 71, 66, "]", "[", 67, 70, 71, 65, "]", "[", 67, 70, 71, 64, "]", "[", 67, 70, 71, 63, "]", "[", 67, 70, 71, 62, "]", "[", 67, 70, 71, 61, "]", "[", 67, 70, 71, 60, "]", "[", 67, 70, 69, 72, "]", "[", 67, 70, 69, 71, "]", "[", 67, 70, 69, 68, "]", "[", 67, 70, 69, 66, "]", "[", 67, 70, 69, 65, "]", "[", 67, 70, 69, 64, "]", "[", 67, 70, 69, 63, "]", "[", 67, 70, 69, 62, "]", "[", 67, 70, 69, 61, "]", "[", 67, 70, 69, 60, "]", "[", 67, 70, 68, 72, "]", "[", 67, 70, 68, 71, "]", "[", 67, 70, 68, 69, "]", "[", 67, 70, 68, 66, "]", "[", 67, 70, 68, 65, "]", "[", 67, 70, 68, 64, "]", "[", 67, 70, 68, 63, "]", "[", 67, 70, 68, 62, "]", "[", 67, 70, 68, 61, "]", "[", 67, 70, 68, 60, "]", "[", 67, 70, 66, 72, "]", "[", 67, 70, 66, 71, "]", "[", 67, 70, 66, 69, "]", "[", 67, 70, 66, 68, "]", "[", 67, 70, 66, 65, "]", "[", 67, 70, 66, 64, "]", "[", 67, 70, 66, 63, "]", "[", 67, 70, 66, 62, "]", "[", 67, 70, 66, 61, "]", "[", 67, 70, 66, 60, "]", "[", 67, 70, 65, 72, "]", "[", 67, 70, 65, 71, "]", "[", 67, 70, 65, 69, "]", "[", 67, 70, 65, 68, "]", "[", 67, 70, 65, 66, "]", "[", 67, 70, 65, 64, "]", "[", 67, 70, 65, 63, "]", "[", 67, 70, 65, 62, "]", "[", 67, 70, 65, 61, "]", "[", 67, 70, 65, 60, "]", "[", 67, 70, 64, 72, "]", "[", 67, 70, 64, 71, "]", "[", 67, 70, 64, 69, "]", "[", 67, 70, 64, 68, "]", "[", 67, 70, 64, 66, "]", "[", 67, 70, 64, 65, "]", "[", 67, 70, 64, 63, "]", "[", 67, 70, 64, 62, "]", "[", 67, 70, 64, 61, "]", "[", 67, 70, 64, 60, "]", "[", 67, 70, 63, 72, "]", "[", 67, 70, 63, 71, "]", "[", 67, 70, 63, 69, "]", "[", 67, 70, 63, 68, "]", "[", 67, 70, 63, 66, "]", "[", 67, 70, 63, 65, "]", "[", 67, 70, 63, 64, "]", "[", 67, 70, 63, 62, "]", "[", 67, 70, 63, 61, "]", "[", 67, 70, 63, 60, "]", "[", 67, 70, 62, 72, "]", "[", 67, 70, 62, 71, "]", "[", 67, 70, 62, 69, "]", "[", 67, 70, 62, 68, "]", "[", 67, 70, 62, 66, "]", "[", 67, 70, 62, 65, "]", "[", 67, 70, 62, 64, "]", "[", 67, 70, 62, 63, "]", "[", 67, 70, 62, 61, "]", "[", 67, 70, 62, 60, "]", "[", 67, 70, 61, 72, "]", "[", 67, 70, 61, 71, "]", "[", 67, 70, 61, 69, "]", "[", 67, 70, 61, 68, "]", "[", 67, 70, 61, 66, "]", "[", 67, 70, 61, 65, "]", "[", 67, 70, 61, 64, "]", "[", 67, 70, 61, 63, "]", "[", 67, 70, 61, 62, "]", "[", 67, 70, 61, 60, "]", "[", 67, 70, 60, 72, "]", "[", 67, 70, 60, 71, "]", "[", 67, 70, 60, 69, "]", "[", 67, 70, 60, 68, "]", "[", 67, 70, 60, 66, "]", "[", 67, 70, 60, 65, "]", "[", 67, 70, 60, 64, "]", "[", 67, 70, 60, 63, "]", "[", 67, 70, 60, 62, "]", "[", 67, 70, 60, 61, "]", "[", 67, 69, 72, 71, "]", "[", 67, 69, 72, 70, "]", "[", 67, 69, 72, 68, "]", "[", 67, 69, 72, 66, "]", "[", 67, 69, 72, 65, "]", "[", 67, 69, 72, 64, "]", "[", 67, 69, 72, 63, "]", "[", 67, 69, 72, 62, "]", "[", 67, 69, 72, 61, "]", "[", 67, 69, 72, 60, "]", "[", 67, 69, 71, 72, "]", "[", 67, 69, 71, 70, "]", "[", 67, 69, 71, 68, "]", "[", 67, 69, 71, 66, "]", "[", 67, 69, 71, 65, "]", "[", 67, 69, 71, 64, "]", "[", 67, 69, 71, 63, "]", "[", 67, 69, 71, 62, "]", "[", 67, 69, 71, 61, "]", "[", 67, 69, 71, 60, "]", "[", 67, 69, 70, 72, "]", "[", 67, 69, 70, 71, "]", "[", 67, 69, 70, 68, "]", "[", 67, 69, 70, 66, "]", "[", 67, 69, 70, 65, "]", "[", 67, 69, 70, 64, "]", "[", 67, 69, 70, 63, "]", "[", 67, 69, 70, 62, "]", "[", 67, 69, 70, 61, "]", "[", 67, 69, 70, 60, "]", "[", 67, 69, 68, 72, "]", "[", 67, 69, 68, 71, "]", "[", 67, 69, 68, 70, "]", "[", 67, 69, 68, 66, "]", "[", 67, 69, 68, 65, "]", "[", 67, 69, 68, 64, "]", "[", 67, 69, 68, 63, "]", "[", 67, 69, 68, 62, "]", "[", 67, 69, 68, 61, "]", "[", 67, 69, 68, 60, "]", "[", 67, 69, 66, 72, "]", "[", 67, 69, 66, 71, "]", "[", 67, 69, 66, 70, "]", "[", 67, 69, 66, 68, "]", "[", 67, 69, 66, 65, "]", "[", 67, 69, 66, 64, "]", "[", 67, 69, 66, 63, "]", "[", 67, 69, 66, 62, "]", "[", 67, 69, 66, 61, "]", "[", 67, 69, 66, 60, "]", "[", 67, 69, 65, 72, "]", "[", 67, 69, 65, 71, "]", "[", 67, 69, 65, 70, "]", "[", 67, 69, 65, 68, "]", "[", 67, 69, 65, 66, "]", "[", 67, 69, 65, 64, "]", "[", 67, 69, 65, 63, "]", "[", 67, 69, 65, 62, "]", "[", 67, 69, 65, 61, "]", "[", 67, 69, 65, 60, "]", "[", 67, 69, 64, 72, "]", "[", 67, 69, 64, 71, "]", "[", 67, 69, 64, 70, "]", "[", 67, 69, 64, 68, "]", "[", 67, 69, 64, 66, "]", "[", 67, 69, 64, 65, "]", "[", 67, 69, 64, 63, "]", "[", 67, 69, 64, 62, "]", "[", 67, 69, 64, 61, "]", "[", 67, 69, 64, 60, "]", "[", 67, 69, 63, 72, "]", "[", 67, 69, 63, 71, "]", "[", 67, 69, 63, 70, "]", "[", 67, 69, 63, 68, "]", "[", 67, 69, 63, 66, "]", "[", 67, 69, 63, 65, "]", "[", 67, 69, 63, 64, "]", "[", 67, 69, 63, 62, "]", "[", 67, 69, 63, 61, "]", "[", 67, 69, 63, 60, "]", "[", 67, 69, 62, 72, "]", "[", 67, 69, 62, 71, "]", "[", 67, 69, 62, 70, "]", "[", 67, 69, 62, 68, "]", "[", 67, 69, 62, 66, "]", "[", 67, 69, 62, 65, "]", "[", 67, 69, 62, 64, "]", "[", 67, 69, 62, 63, "]", "[", 67, 69, 62, 61, "]", "[", 67, 69, 62, 60, "]", "[", 67, 69, 61, 72, "]", "[", 67, 69, 61, 71, "]", "[", 67, 69, 61, 70, "]", "[", 67, 69, 61, 68, "]", "[", 67, 69, 61, 66, "]", "[", 67, 69, 61, 65, "]", "[", 67, 69, 61, 64, "]", "[", 67, 69, 61, 63, "]", "[", 67, 69, 61, 62, "]", "[", 67, 69, 61, 60, "]", "[", 67, 69, 60, 72, "]", "[", 67, 69, 60, 71, "]", "[", 67, 69, 60, 70, "]", "[", 67, 69, 60, 68, "]", "[", 67, 69, 60, 66, "]", "[", 67, 69, 60, 65, "]", "[", 67, 69, 60, 64, "]", "[", 67, 69, 60, 63, "]", "[", 67, 69, 60, 62, "]", "[", 67, 69, 60, 61, "]", "[", 67, 68, 72, 71, "]", "[", 67, 68, 72, 70, "]", "[", 67, 68, 72, 69, "]", "[", 67, 68, 72, 66, "]", "[", 67, 68, 72, 65, "]", "[", 67, 68, 72, 64, "]", "[", 67, 68, 72, 63, "]", "[", 67, 68, 72, 62, "]", "[", 67, 68, 72, 61, "]", "[", 67, 68, 72, 60, "]", "[", 67, 68, 71, 72, "]", "[", 67, 68, 71, 70, "]", "[", 67, 68, 71, 69, "]", "[", 67, 68, 71, 66, "]", "[", 67, 68, 71, 65, "]", "[", 67, 68, 71, 64, "]", "[", 67, 68, 71, 63, "]", "[", 67, 68, 71, 62, "]", "[", 67, 68, 71, 61, "]", "[", 67, 68, 71, 60, "]", "[", 67, 68, 70, 72, "]", "[", 67, 68, 70, 71, "]", "[", 67, 68, 70, 69, "]", "[", 67, 68, 70, 66, "]", "[", 67, 68, 70, 65, "]", "[", 67, 68, 70, 64, "]", "[", 67, 68, 70, 63, "]", "[", 67, 68, 70, 62, "]", "[", 67, 68, 70, 61, "]", "[", 67, 68, 70, 60, "]", "[", 67, 68, 69, 72, "]", "[", 67, 68, 69, 71, "]", "[", 67, 68, 69, 70, "]", "[", 67, 68, 69, 66, "]", "[", 67, 68, 69, 65, "]", "[", 67, 68, 69, 64, "]", "[", 67, 68, 69, 63, "]", "[", 67, 68, 69, 62, "]", "[", 67, 68, 69, 61, "]", "[", 67, 68, 69, 60, "]", "[", 67, 68, 66, 72, "]", "[", 67, 68, 66, 71, "]", "[", 67, 68, 66, 70, "]", "[", 67, 68, 66, 69, "]", "[", 67, 68, 66, 65, "]", "[", 67, 68, 66, 64, "]", "[", 67, 68, 66, 63, "]", "[", 67, 68, 66, 62, "]", "[", 67, 68, 66, 61, "]", "[", 67, 68, 66, 60, "]", "[", 67, 68, 65, 72, "]", "[", 67, 68, 65, 71, "]", "[", 67, 68, 65, 70, "]", "[", 67, 68, 65, 69, "]", "[", 67, 68, 65, 66, "]", "[", 67, 68, 65, 64, "]", "[", 67, 68, 65, 63, "]", "[", 67, 68, 65, 62, "]", "[", 67, 68, 65, 61, "]", "[", 67, 68, 65, 60, "]", "[", 67, 68, 64, 72, "]", "[", 67, 68, 64, 71, "]", "[", 67, 68, 64, 70, "]", "[", 67, 68, 64, 69, "]", "[", 67, 68, 64, 66, "]", "[", 67, 68, 64, 65, "]", "[", 67, 68, 64, 63, "]", "[", 67, 68, 64, 62, "]", "[", 67, 68, 64, 61, "]", "[", 67, 68, 64, 60, "]", "[", 67, 68, 63, 72, "]", "[", 67, 68, 63, 71, "]", "[", 67, 68, 63, 70, "]", "[", 67, 68, 63, 69, "]", "[", 67, 68, 63, 66, "]", "[", 67, 68, 63, 65, "]", "[", 67, 68, 63, 64, "]", "[", 67, 68, 63, 62, "]", "[", 67, 68, 63, 61, "]", "[", 67, 68, 63, 60, "]", "[", 67, 68, 62, 72, "]", "[", 67, 68, 62, 71, "]", "[", 67, 68, 62, 70, "]", "[", 67, 68, 62, 69, "]", "[", 67, 68, 62, 66, "]", "[", 67, 68, 62, 65, "]", "[", 67, 68, 62, 64, "]", "[", 67, 68, 62, 63, "]", "[", 67, 68, 62, 61, "]", "[", 67, 68, 62, 60, "]", "[", 67, 68, 61, 72, "]", "[", 67, 68, 61, 71, "]", "[", 67, 68, 61, 70, "]", "[", 67, 68, 61, 69, "]", "[", 67, 68, 61, 66, "]", "[", 67, 68, 61, 65, "]", "[", 67, 68, 61, 64, "]", "[", 67, 68, 61, 63, "]", "[", 67, 68, 61, 62, "]", "[", 67, 68, 61, 60, "]", "[", 67, 68, 60, 72, "]", "[", 67, 68, 60, 71, "]", "[", 67, 68, 60, 70, "]", "[", 67, 68, 60, 69, "]", "[", 67, 68, 60, 66, "]", "[", 67, 68, 60, 65, "]", "[", 67, 68, 60, 64, "]", "[", 67, 68, 60, 63, "]", "[", 67, 68, 60, 62, "]", "[", 67, 68, 60, 61, "]", "[", 67, 66, 72, 71, "]", "[", 67, 66, 72, 70, "]", "[", 67, 66, 72, 69, "]", "[", 67, 66, 72, 68, "]", "[", 67, 66, 72, 65, "]", "[", 67, 66, 72, 64, "]", "[", 67, 66, 72, 63, "]", "[", 67, 66, 72, 62, "]", "[", 67, 66, 72, 61, "]", "[", 67, 66, 72, 60, "]", "[", 67, 66, 71, 72, "]", "[", 67, 66, 71, 70, "]", "[", 67, 66, 71, 69, "]", "[", 67, 66, 71, 68, "]", "[", 67, 66, 71, 65, "]", "[", 67, 66, 71, 64, "]", "[", 67, 66, 71, 63, "]", "[", 67, 66, 71, 62, "]", "[", 67, 66, 71, 61, "]", "[", 67, 66, 71, 60, "]", "[", 67, 66, 70, 72, "]", "[", 67, 66, 70, 71, "]", "[", 67, 66, 70, 69, "]", "[", 67, 66, 70, 68, "]", "[", 67, 66, 70, 65, "]", "[", 67, 66, 70, 64, "]", "[", 67, 66, 70, 63, "]", "[", 67, 66, 70, 62, "]", "[", 67, 66, 70, 61, "]", "[", 67, 66, 70, 60, "]", "[", 67, 66, 69, 72, "]", "[", 67, 66, 69, 71, "]", "[", 67, 66, 69, 70, "]", "[", 67, 66, 69, 68, "]", "[", 67, 66, 69, 65, "]", "[", 67, 66, 69, 64, "]", "[", 67, 66, 69, 63, "]", "[", 67, 66, 69, 62, "]", "[", 67, 66, 69, 61, "]", "[", 67, 66, 69, 60, "]", "[", 67, 66, 68, 72, "]", "[", 67, 66, 68, 71, "]", "[", 67, 66, 68, 70, "]", "[", 67, 66, 68, 69, "]", "[", 67, 66, 68, 65, "]", "[", 67, 66, 68, 64, "]", "[", 67, 66, 68, 63, "]", "[", 67, 66, 68, 62, "]", "[", 67, 66, 68, 61, "]", "[", 67, 66, 68, 60, "]", "[", 67, 66, 65, 72, "]", "[", 67, 66, 65, 71, "]", "[", 67, 66, 65, 70, "]", "[", 67, 66, 65, 69, "]", "[", 67, 66, 65, 68, "]", "[", 67, 66, 65, 64, "]", "[", 67, 66, 65, 63, "]", "[", 67, 66, 65, 62, "]", "[", 67, 66, 65, 61, "]", "[", 67, 66, 65, 60, "]", "[", 67, 66, 64, 72, "]", "[", 67, 66, 64, 71, "]", "[", 67, 66, 64, 70, "]", "[", 67, 66, 64, 69, "]", "[", 67, 66, 64, 68, "]", "[", 67, 66, 64, 65, "]", "[", 67, 66, 64, 63, "]", "[", 67, 66, 64, 62, "]", "[", 67, 66, 64, 61, "]", "[", 67, 66, 64, 60, "]", "[", 67, 66, 63, 72, "]", "[", 67, 66, 63, 71, "]", "[", 67, 66, 63, 70, "]", "[", 67, 66, 63, 69, "]", "[", 67, 66, 63, 68, "]", "[", 67, 66, 63, 65, "]", "[", 67, 66, 63, 64, "]", "[", 67, 66, 63, 62, "]", "[", 67, 66, 63, 61, "]", "[", 67, 66, 63, 60, "]", "[", 67, 66, 62, 72, "]", "[", 67, 66, 62, 71, "]", "[", 67, 66, 62, 70, "]", "[", 67, 66, 62, 69, "]", "[", 67, 66, 62, 68, "]", "[", 67, 66, 62, 65, "]", "[", 67, 66, 62, 64, "]", "[", 67, 66, 62, 63, "]", "[", 67, 66, 62, 61, "]", "[", 67, 66, 62, 60, "]", "[", 67, 66, 61, 72, "]", "[", 67, 66, 61, 71, "]", "[", 67, 66, 61, 70, "]", "[", 67, 66, 61, 69, "]", "[", 67, 66, 61, 68, "]", "[", 67, 66, 61, 65, "]", "[", 67, 66, 61, 64, "]", "[", 67, 66, 61, 63, "]", "[", 67, 66, 61, 62, "]", "[", 67, 66, 61, 60, "]", "[", 67, 66, 60, 72, "]", "[", 67, 66, 60, 71, "]", "[", 67, 66, 60, 70, "]", "[", 67, 66, 60, 69, "]", "[", 67, 66, 60, 68, "]", "[", 67, 66, 60, 65, "]", "[", 67, 66, 60, 64, "]", "[", 67, 66, 60, 63, "]", "[", 67, 66, 60, 62, "]", "[", 67, 66, 60, 61, "]", "[", 67, 65, 72, 71, "]", "[", 67, 65, 72, 70, "]", "[", 67, 65, 72, 69, "]", "[", 67, 65, 72, 68, "]", "[", 67, 65, 72, 66, "]", "[", 67, 65, 72, 64, "]", "[", 67, 65, 72, 63, "]", "[", 67, 65, 72, 62, "]", "[", 67, 65, 72, 61, "]", "[", 67, 65, 72, 60, "]", "[", 67, 65, 71, 72, "]", "[", 67, 65, 71, 70, "]", "[", 67, 65, 71, 69, "]", "[", 67, 65, 71, 68, "]", "[", 67, 65, 71, 66, "]", "[", 67, 65, 71, 64, "]", "[", 67, 65, 71, 63, "]", "[", 67, 65, 71, 62, "]", "[", 67, 65, 71, 61, "]", "[", 67, 65, 71, 60, "]", "[", 67, 65, 70, 72, "]", "[", 67, 65, 70, 71, "]", "[", 67, 65, 70, 69, "]", "[", 67, 65, 70, 68, "]", "[", 67, 65, 70, 66, "]", "[", 67, 65, 70, 64, "]", "[", 67, 65, 70, 63, "]", "[", 67, 65, 70, 62, "]", "[", 67, 65, 70, 61, "]", "[", 67, 65, 70, 60, "]", "[", 67, 65, 69, 72, "]", "[", 67, 65, 69, 71, "]", "[", 67, 65, 69, 70, "]", "[", 67, 65, 69, 68, "]", "[", 67, 65, 69, 66, "]", "[", 67, 65, 69, 64, "]", "[", 67, 65, 69, 63, "]", "[", 67, 65, 69, 62, "]", "[", 67, 65, 69, 61, "]", "[", 67, 65, 69, 60, "]", "[", 67, 65, 68, 72, "]", "[", 67, 65, 68, 71, "]", "[", 67, 65, 68, 70, "]", "[", 67, 65, 68, 69, "]", "[", 67, 65, 68, 66, "]", "[", 67, 65, 68, 64, "]", "[", 67, 65, 68, 63, "]", "[", 67, 65, 68, 62, "]", "[", 67, 65, 68, 61, "]", "[", 67, 65, 68, 60, "]", "[", 67, 65, 66, 72, "]", "[", 67, 65, 66, 71, "]", "[", 67, 65, 66, 70, "]", "[", 67, 65, 66, 69, "]", "[", 67, 65, 66, 68, "]", "[", 67, 65, 66, 64, "]", "[", 67, 65, 66, 63, "]", "[", 67, 65, 66, 62, "]", "[", 67, 65, 66, 61, "]", "[", 67, 65, 66, 60, "]", "[", 67, 65, 64, 72, "]", "[", 67, 65, 64, 71, "]", "[", 67, 65, 64, 70, "]", "[", 67, 65, 64, 69, "]", "[", 67, 65, 64, 68, "]", "[", 67, 65, 64, 66, "]", "[", 67, 65, 64, 63, "]", "[", 67, 65, 64, 62, "]", "[", 67, 65, 64, 61, "]", "[", 67, 65, 64, 60, "]", "[", 67, 65, 63, 72, "]", "[", 67, 65, 63, 71, "]", "[", 67, 65, 63, 70, "]", "[", 67, 65, 63, 69, "]", "[", 67, 65, 63, 68, "]", "[", 67, 65, 63, 66, "]", "[", 67, 65, 63, 64, "]", "[", 67, 65, 63, 62, "]", "[", 67, 65, 63, 61, "]", "[", 67, 65, 63, 60, "]", "[", 67, 65, 62, 72, "]", "[", 67, 65, 62, 71, "]", "[", 67, 65, 62, 70, "]", "[", 67, 65, 62, 69, "]", "[", 67, 65, 62, 68, "]", "[", 67, 65, 62, 66, "]", "[", 67, 65, 62, 64, "]", "[", 67, 65, 62, 63, "]", "[", 67, 65, 62, 61, "]", "[", 67, 65, 62, 60, "]", "[", 67, 65, 61, 72, "]", "[", 67, 65, 61, 71, "]", "[", 67, 65, 61, 70, "]", "[", 67, 65, 61, 69, "]", "[", 67, 65, 61, 68, "]", "[", 67, 65, 61, 66, "]", "[", 67, 65, 61, 64, "]", "[", 67, 65, 61, 63, "]", "[", 67, 65, 61, 62, "]", "[", 67, 65, 61, 60, "]", "[", 67, 65, 60, 72, "]", "[", 67, 65, 60, 71, "]", "[", 67, 65, 60, 70, "]", "[", 67, 65, 60, 69, "]", "[", 67, 65, 60, 68, "]", "[", 67, 65, 60, 66, "]", "[", 67, 65, 60, 64, "]", "[", 67, 65, 60, 63, "]", "[", 67, 65, 60, 62, "]", "[", 67, 65, 60, 61, "]", "[", 67, 64, 72, 71, "]", "[", 67, 64, 72, 70, "]", "[", 67, 64, 72, 69, "]", "[", 67, 64, 72, 68, "]", "[", 67, 64, 72, 66, "]", "[", 67, 64, 72, 65, "]", "[", 67, 64, 72, 63, "]", "[", 67, 64, 72, 62, "]", "[", 67, 64, 72, 61, "]", "[", 67, 64, 72, 60, "]", "[", 67, 64, 71, 72, "]", "[", 67, 64, 71, 70, "]", "[", 67, 64, 71, 69, "]", "[", 67, 64, 71, 68, "]", "[", 67, 64, 71, 66, "]", "[", 67, 64, 71, 65, "]", "[", 67, 64, 71, 63, "]", "[", 67, 64, 71, 62, "]", "[", 67, 64, 71, 61, "]", "[", 67, 64, 71, 60, "]", "[", 67, 64, 70, 72, "]", "[", 67, 64, 70, 71, "]", "[", 67, 64, 70, 69, "]", "[", 67, 64, 70, 68, "]", "[", 67, 64, 70, 66, "]", "[", 67, 64, 70, 65, "]", "[", 67, 64, 70, 63, "]", "[", 67, 64, 70, 62, "]", "[", 67, 64, 70, 61, "]", "[", 67, 64, 70, 60, "]", "[", 67, 64, 69, 72, "]", "[", 67, 64, 69, 71, "]", "[", 67, 64, 69, 70, "]", "[", 67, 64, 69, 68, "]", "[", 67, 64, 69, 66, "]", "[", 67, 64, 69, 65, "]", "[", 67, 64, 69, 63, "]", "[", 67, 64, 69, 62, "]", "[", 67, 64, 69, 61, "]", "[", 67, 64, 69, 60, "]", "[", 67, 64, 68, 72, "]", "[", 67, 64, 68, 71, "]", "[", 67, 64, 68, 70, "]", "[", 67, 64, 68, 69, "]", "[", 67, 64, 68, 66, "]", "[", 67, 64, 68, 65, "]", "[", 67, 64, 68, 63, "]", "[", 67, 64, 68, 62, "]", "[", 67, 64, 68, 61, "]", "[", 67, 64, 68, 60, "]", "[", 67, 64, 66, 72, "]", "[", 67, 64, 66, 71, "]", "[", 67, 64, 66, 70, "]", "[", 67, 64, 66, 69, "]", "[", 67, 64, 66, 68, "]", "[", 67, 64, 66, 65, "]", "[", 67, 64, 66, 63, "]", "[", 67, 64, 66, 62, "]", "[", 67, 64, 66, 61, "]", "[", 67, 64, 66, 60, "]", "[", 67, 64, 65, 72, "]", "[", 67, 64, 65, 71, "]", "[", 67, 64, 65, 70, "]", "[", 67, 64, 65, 69, "]", "[", 67, 64, 65, 68, "]", "[", 67, 64, 65, 66, "]", "[", 67, 64, 65, 63, "]", "[", 67, 64, 65, 62, "]", "[", 67, 64, 65, 61, "]", "[", 67, 64, 65, 60, "]", "[", 67, 64, 63, 72, "]", "[", 67, 64, 63, 71, "]", "[", 67, 64, 63, 70, "]", "[", 67, 64, 63, 69, "]", "[", 67, 64, 63, 68, "]", "[", 67, 64, 63, 66, "]", "[", 67, 64, 63, 65, "]", "[", 67, 64, 63, 62, "]", "[", 67, 64, 63, 61, "]", "[", 67, 64, 63, 60, "]", "[", 67, 64, 62, 72, "]", "[", 67, 64, 62, 71, "]", "[", 67, 64, 62, 70, "]", "[", 67, 64, 62, 69, "]", "[", 67, 64, 62, 68, "]", "[", 67, 64, 62, 66, "]", "[", 67, 64, 62, 65, "]", "[", 67, 64, 62, 63, "]", "[", 67, 64, 62, 61, "]", "[", 67, 64, 62, 60, "]", "[", 67, 64, 61, 72, "]", "[", 67, 64, 61, 71, "]", "[", 67, 64, 61, 70, "]", "[", 67, 64, 61, 69, "]", "[", 67, 64, 61, 68, "]", "[", 67, 64, 61, 66, "]", "[", 67, 64, 61, 65, "]", "[", 67, 64, 61, 63, "]", "[", 67, 64, 61, 62, "]", "[", 67, 64, 61, 60, "]", "[", 67, 64, 60, 72, "]", "[", 67, 64, 60, 71, "]", "[", 67, 64, 60, 70, "]", "[", 67, 64, 60, 69, "]", "[", 67, 64, 60, 68, "]", "[", 67, 64, 60, 66, "]", "[", 67, 64, 60, 65, "]", "[", 67, 64, 60, 63, "]", "[", 67, 64, 60, 62, "]", "[", 67, 64, 60, 61, "]", "[", 67, 63, 72, 71, "]", "[", 67, 63, 72, 70, "]", "[", 67, 63, 72, 69, "]", "[", 67, 63, 72, 68, "]", "[", 67, 63, 72, 66, "]", "[", 67, 63, 72, 65, "]", "[", 67, 63, 72, 64, "]", "[", 67, 63, 72, 62, "]", "[", 67, 63, 72, 61, "]", "[", 67, 63, 72, 60, "]", "[", 67, 63, 71, 72, "]", "[", 67, 63, 71, 70, "]", "[", 67, 63, 71, 69, "]", "[", 67, 63, 71, 68, "]", "[", 67, 63, 71, 66, "]", "[", 67, 63, 71, 65, "]", "[", 67, 63, 71, 64, "]", "[", 67, 63, 71, 62, "]", "[", 67, 63, 71, 61, "]", "[", 67, 63, 71, 60, "]", "[", 67, 63, 70, 72, "]", "[", 67, 63, 70, 71, "]", "[", 67, 63, 70, 69, "]", "[", 67, 63, 70, 68, "]", "[", 67, 63, 70, 66, "]", "[", 67, 63, 70, 65, "]", "[", 67, 63, 70, 64, "]", "[", 67, 63, 70, 62, "]", "[", 67, 63, 70, 61, "]", "[", 67 ],
													"reg_data_0000000011" : [ 63, 70, 60, "]", "[", 67, 63, 69, 72, "]", "[", 67, 63, 69, 71, "]", "[", 67, 63, 69, 70, "]", "[", 67, 63, 69, 68, "]", "[", 67, 63, 69, 66, "]", "[", 67, 63, 69, 65, "]", "[", 67, 63, 69, 64, "]", "[", 67, 63, 69, 62, "]", "[", 67, 63, 69, 61, "]", "[", 67, 63, 69, 60, "]", "[", 67, 63, 68, 72, "]", "[", 67, 63, 68, 71, "]", "[", 67, 63, 68, 70, "]", "[", 67, 63, 68, 69, "]", "[", 67, 63, 68, 66, "]", "[", 67, 63, 68, 65, "]", "[", 67, 63, 68, 64, "]", "[", 67, 63, 68, 62, "]", "[", 67, 63, 68, 61, "]", "[", 67, 63, 68, 60, "]", "[", 67, 63, 66, 72, "]", "[", 67, 63, 66, 71, "]", "[", 67, 63, 66, 70, "]", "[", 67, 63, 66, 69, "]", "[", 67, 63, 66, 68, "]", "[", 67, 63, 66, 65, "]", "[", 67, 63, 66, 64, "]", "[", 67, 63, 66, 62, "]", "[", 67, 63, 66, 61, "]", "[", 67, 63, 66, 60, "]", "[", 67, 63, 65, 72, "]", "[", 67, 63, 65, 71, "]", "[", 67, 63, 65, 70, "]", "[", 67, 63, 65, 69, "]", "[", 67, 63, 65, 68, "]", "[", 67, 63, 65, 66, "]", "[", 67, 63, 65, 64, "]", "[", 67, 63, 65, 62, "]", "[", 67, 63, 65, 61, "]", "[", 67, 63, 65, 60, "]", "[", 67, 63, 64, 72, "]", "[", 67, 63, 64, 71, "]", "[", 67, 63, 64, 70, "]", "[", 67, 63, 64, 69, "]", "[", 67, 63, 64, 68, "]", "[", 67, 63, 64, 66, "]", "[", 67, 63, 64, 65, "]", "[", 67, 63, 64, 62, "]", "[", 67, 63, 64, 61, "]", "[", 67, 63, 64, 60, "]", "[", 67, 63, 62, 72, "]", "[", 67, 63, 62, 71, "]", "[", 67, 63, 62, 70, "]", "[", 67, 63, 62, 69, "]", "[", 67, 63, 62, 68, "]", "[", 67, 63, 62, 66, "]", "[", 67, 63, 62, 65, "]", "[", 67, 63, 62, 64, "]", "[", 67, 63, 62, 61, "]", "[", 67, 63, 62, 60, "]", "[", 67, 63, 61, 72, "]", "[", 67, 63, 61, 71, "]", "[", 67, 63, 61, 70, "]", "[", 67, 63, 61, 69, "]", "[", 67, 63, 61, 68, "]", "[", 67, 63, 61, 66, "]", "[", 67, 63, 61, 65, "]", "[", 67, 63, 61, 64, "]", "[", 67, 63, 61, 62, "]", "[", 67, 63, 61, 60, "]", "[", 67, 63, 60, 72, "]", "[", 67, 63, 60, 71, "]", "[", 67, 63, 60, 70, "]", "[", 67, 63, 60, 69, "]", "[", 67, 63, 60, 68, "]", "[", 67, 63, 60, 66, "]", "[", 67, 63, 60, 65, "]", "[", 67, 63, 60, 64, "]", "[", 67, 63, 60, 62, "]", "[", 67, 63, 60, 61, "]", "[", 67, 62, 72, 71, "]", "[", 67, 62, 72, 70, "]", "[", 67, 62, 72, 69, "]", "[", 67, 62, 72, 68, "]", "[", 67, 62, 72, 66, "]", "[", 67, 62, 72, 65, "]", "[", 67, 62, 72, 64, "]", "[", 67, 62, 72, 63, "]", "[", 67, 62, 72, 61, "]", "[", 67, 62, 72, 60, "]", "[", 67, 62, 71, 72, "]", "[", 67, 62, 71, 70, "]", "[", 67, 62, 71, 69, "]", "[", 67, 62, 71, 68, "]", "[", 67, 62, 71, 66, "]", "[", 67, 62, 71, 65, "]", "[", 67, 62, 71, 64, "]", "[", 67, 62, 71, 63, "]", "[", 67, 62, 71, 61, "]", "[", 67, 62, 71, 60, "]", "[", 67, 62, 70, 72, "]", "[", 67, 62, 70, 71, "]", "[", 67, 62, 70, 69, "]", "[", 67, 62, 70, 68, "]", "[", 67, 62, 70, 66, "]", "[", 67, 62, 70, 65, "]", "[", 67, 62, 70, 64, "]", "[", 67, 62, 70, 63, "]", "[", 67, 62, 70, 61, "]", "[", 67, 62, 70, 60, "]", "[", 67, 62, 69, 72, "]", "[", 67, 62, 69, 71, "]", "[", 67, 62, 69, 70, "]", "[", 67, 62, 69, 68, "]", "[", 67, 62, 69, 66, "]", "[", 67, 62, 69, 65, "]", "[", 67, 62, 69, 64, "]", "[", 67, 62, 69, 63, "]", "[", 67, 62, 69, 61, "]", "[", 67, 62, 69, 60, "]", "[", 67, 62, 68, 72, "]", "[", 67, 62, 68, 71, "]", "[", 67, 62, 68, 70, "]", "[", 67, 62, 68, 69, "]", "[", 67, 62, 68, 66, "]", "[", 67, 62, 68, 65, "]", "[", 67, 62, 68, 64, "]", "[", 67, 62, 68, 63, "]", "[", 67, 62, 68, 61, "]", "[", 67, 62, 68, 60, "]", "[", 67, 62, 66, 72, "]", "[", 67, 62, 66, 71, "]", "[", 67, 62, 66, 70, "]", "[", 67, 62, 66, 69, "]", "[", 67, 62, 66, 68, "]", "[", 67, 62, 66, 65, "]", "[", 67, 62, 66, 64, "]", "[", 67, 62, 66, 63, "]", "[", 67, 62, 66, 61, "]", "[", 67, 62, 66, 60, "]", "[", 67, 62, 65, 72, "]", "[", 67, 62, 65, 71, "]", "[", 67, 62, 65, 70, "]", "[", 67, 62, 65, 69, "]", "[", 67, 62, 65, 68, "]", "[", 67, 62, 65, 66, "]", "[", 67, 62, 65, 64, "]", "[", 67, 62, 65, 63, "]", "[", 67, 62, 65, 61, "]", "[", 67, 62, 65, 60, "]", "[", 67, 62, 64, 72, "]", "[", 67, 62, 64, 71, "]", "[", 67, 62, 64, 70, "]", "[", 67, 62, 64, 69, "]", "[", 67, 62, 64, 68, "]", "[", 67, 62, 64, 66, "]", "[", 67, 62, 64, 65, "]", "[", 67, 62, 64, 63, "]", "[", 67, 62, 64, 61, "]", "[", 67, 62, 64, 60, "]", "[", 67, 62, 63, 72, "]", "[", 67, 62, 63, 71, "]", "[", 67, 62, 63, 70, "]", "[", 67, 62, 63, 69, "]", "[", 67, 62, 63, 68, "]", "[", 67, 62, 63, 66, "]", "[", 67, 62, 63, 65, "]", "[", 67, 62, 63, 64, "]", "[", 67, 62, 63, 61, "]", "[", 67, 62, 63, 60, "]", "[", 67, 62, 61, 72, "]", "[", 67, 62, 61, 71, "]", "[", 67, 62, 61, 70, "]", "[", 67, 62, 61, 69, "]", "[", 67, 62, 61, 68, "]", "[", 67, 62, 61, 66, "]", "[", 67, 62, 61, 65, "]", "[", 67, 62, 61, 64, "]", "[", 67, 62, 61, 63, "]", "[", 67, 62, 61, 60, "]", "[", 67, 62, 60, 72, "]", "[", 67, 62, 60, 71, "]", "[", 67, 62, 60, 70, "]", "[", 67, 62, 60, 69, "]", "[", 67, 62, 60, 68, "]", "[", 67, 62, 60, 66, "]", "[", 67, 62, 60, 65, "]", "[", 67, 62, 60, 64, "]", "[", 67, 62, 60, 63, "]", "[", 67, 62, 60, 61, "]", "[", 67, 61, 72, 71, "]", "[", 67, 61, 72, 70, "]", "[", 67, 61, 72, 69, "]", "[", 67, 61, 72, 68, "]", "[", 67, 61, 72, 66, "]", "[", 67, 61, 72, 65, "]", "[", 67, 61, 72, 64, "]", "[", 67, 61, 72, 63, "]", "[", 67, 61, 72, 62, "]", "[", 67, 61, 72, 60, "]", "[", 67, 61, 71, 72, "]", "[", 67, 61, 71, 70, "]", "[", 67, 61, 71, 69, "]", "[", 67, 61, 71, 68, "]", "[", 67, 61, 71, 66, "]", "[", 67, 61, 71, 65, "]", "[", 67, 61, 71, 64, "]", "[", 67, 61, 71, 63, "]", "[", 67, 61, 71, 62, "]", "[", 67, 61, 71, 60, "]", "[", 67, 61, 70, 72, "]", "[", 67, 61, 70, 71, "]", "[", 67, 61, 70, 69, "]", "[", 67, 61, 70, 68, "]", "[", 67, 61, 70, 66, "]", "[", 67, 61, 70, 65, "]", "[", 67, 61, 70, 64, "]", "[", 67, 61, 70, 63, "]", "[", 67, 61, 70, 62, "]", "[", 67, 61, 70, 60, "]", "[", 67, 61, 69, 72, "]", "[", 67, 61, 69, 71, "]", "[", 67, 61, 69, 70, "]", "[", 67, 61, 69, 68, "]", "[", 67, 61, 69, 66, "]", "[", 67, 61, 69, 65, "]", "[", 67, 61, 69, 64, "]", "[", 67, 61, 69, 63, "]", "[", 67, 61, 69, 62, "]", "[", 67, 61, 69, 60, "]", "[", 67, 61, 68, 72, "]", "[", 67, 61, 68, 71, "]", "[", 67, 61, 68, 70, "]", "[", 67, 61, 68, 69, "]", "[", 67, 61, 68, 66, "]", "[", 67, 61, 68, 65, "]", "[", 67, 61, 68, 64, "]", "[", 67, 61, 68, 63, "]", "[", 67, 61, 68, 62, "]", "[", 67, 61, 68, 60, "]", "[", 67, 61, 66, 72, "]", "[", 67, 61, 66, 71, "]", "[", 67, 61, 66, 70, "]", "[", 67, 61, 66, 69, "]", "[", 67, 61, 66, 68, "]", "[", 67, 61, 66, 65, "]", "[", 67, 61, 66, 64, "]", "[", 67, 61, 66, 63, "]", "[", 67, 61, 66, 62, "]", "[", 67, 61, 66, 60, "]", "[", 67, 61, 65, 72, "]", "[", 67, 61, 65, 71, "]", "[", 67, 61, 65, 70, "]", "[", 67, 61, 65, 69, "]", "[", 67, 61, 65, 68, "]", "[", 67, 61, 65, 66, "]", "[", 67, 61, 65, 64, "]", "[", 67, 61, 65, 63, "]", "[", 67, 61, 65, 62, "]", "[", 67, 61, 65, 60, "]", "[", 67, 61, 64, 72, "]", "[", 67, 61, 64, 71, "]", "[", 67, 61, 64, 70, "]", "[", 67, 61, 64, 69, "]", "[", 67, 61, 64, 68, "]", "[", 67, 61, 64, 66, "]", "[", 67, 61, 64, 65, "]", "[", 67, 61, 64, 63, "]", "[", 67, 61, 64, 62, "]", "[", 67, 61, 64, 60, "]", "[", 67, 61, 63, 72, "]", "[", 67, 61, 63, 71, "]", "[", 67, 61, 63, 70, "]", "[", 67, 61, 63, 69, "]", "[", 67, 61, 63, 68, "]", "[", 67, 61, 63, 66, "]", "[", 67, 61, 63, 65, "]", "[", 67, 61, 63, 64, "]", "[", 67, 61, 63, 62, "]", "[", 67, 61, 63, 60, "]", "[", 67, 61, 62, 72, "]", "[", 67, 61, 62, 71, "]", "[", 67, 61, 62, 70, "]", "[", 67, 61, 62, 69, "]", "[", 67, 61, 62, 68, "]", "[", 67, 61, 62, 66, "]", "[", 67, 61, 62, 65, "]", "[", 67, 61, 62, 64, "]", "[", 67, 61, 62, 63, "]", "[", 67, 61, 62, 60, "]", "[", 67, 61, 60, 72, "]", "[", 67, 61, 60, 71, "]", "[", 67, 61, 60, 70, "]", "[", 67, 61, 60, 69, "]", "[", 67, 61, 60, 68, "]", "[", 67, 61, 60, 66, "]", "[", 67, 61, 60, 65, "]", "[", 67, 61, 60, 64, "]", "[", 67, 61, 60, 63, "]", "[", 67, 61, 60, 62, "]", "[", 67, 60, 72, 71, "]", "[", 67, 60, 72, 70, "]", "[", 67, 60, 72, 69, "]", "[", 67, 60, 72, 68, "]", "[", 67, 60, 72, 66, "]", "[", 67, 60, 72, 65, "]", "[", 67, 60, 72, 64, "]", "[", 67, 60, 72, 63, "]", "[", 67, 60, 72, 62, "]", "[", 67, 60, 72, 61, "]", "[", 67, 60, 71, 72, "]", "[", 67, 60, 71, 70, "]", "[", 67, 60, 71, 69, "]", "[", 67, 60, 71, 68, "]", "[", 67, 60, 71, 66, "]", "[", 67, 60, 71, 65, "]", "[", 67, 60, 71, 64, "]", "[", 67, 60, 71, 63, "]", "[", 67, 60, 71, 62, "]", "[", 67, 60, 71, 61, "]", "[", 67, 60, 70, 72, "]", "[", 67, 60, 70, 71, "]", "[", 67, 60, 70, 69, "]", "[", 67, 60, 70, 68, "]", "[", 67, 60, 70, 66, "]", "[", 67, 60, 70, 65, "]", "[", 67, 60, 70, 64, "]", "[", 67, 60, 70, 63, "]", "[", 67, 60, 70, 62, "]", "[", 67, 60, 70, 61, "]", "[", 67, 60, 69, 72, "]", "[", 67, 60, 69, 71, "]", "[", 67, 60, 69, 70, "]", "[", 67, 60, 69, 68, "]", "[", 67, 60, 69, 66, "]", "[", 67, 60, 69, 65, "]", "[", 67, 60, 69, 64, "]", "[", 67, 60, 69, 63, "]", "[", 67, 60, 69, 62, "]", "[", 67, 60, 69, 61, "]", "[", 67, 60, 68, 72, "]", "[", 67, 60, 68, 71, "]", "[", 67, 60, 68, 70, "]", "[", 67, 60, 68, 69, "]", "[", 67, 60, 68, 66, "]", "[", 67, 60, 68, 65, "]", "[", 67, 60, 68, 64, "]", "[", 67, 60, 68, 63, "]", "[", 67, 60, 68, 62, "]", "[", 67, 60, 68, 61, "]", "[", 67, 60, 66, 72, "]", "[", 67, 60, 66, 71, "]", "[", 67, 60, 66, 70, "]", "[", 67, 60, 66, 69, "]", "[", 67, 60, 66, 68, "]", "[", 67, 60, 66, 65, "]", "[", 67, 60, 66, 64, "]", "[", 67, 60, 66, 63, "]", "[", 67, 60, 66, 62, "]", "[", 67, 60, 66, 61, "]", "[", 67, 60, 65, 72, "]", "[", 67, 60, 65, 71, "]", "[", 67, 60, 65, 70, "]", "[", 67, 60, 65, 69, "]", "[", 67, 60, 65, 68, "]", "[", 67, 60, 65, 66, "]", "[", 67, 60, 65, 64, "]", "[", 67, 60, 65, 63, "]", "[", 67, 60, 65, 62, "]", "[", 67, 60, 65, 61, "]", "[", 67, 60, 64, 72, "]", "[", 67, 60, 64, 71, "]", "[", 67, 60, 64, 70, "]", "[", 67, 60, 64, 69, "]", "[", 67, 60, 64, 68, "]", "[", 67, 60, 64, 66, "]", "[", 67, 60, 64, 65, "]", "[", 67, 60, 64, 63, "]", "[", 67, 60, 64, 62, "]", "[", 67, 60, 64, 61, "]", "[", 67, 60, 63, 72, "]", "[", 67, 60, 63, 71, "]", "[", 67, 60, 63, 70, "]", "[", 67, 60, 63, 69, "]", "[", 67, 60, 63, 68, "]", "[", 67, 60, 63, 66, "]", "[", 67, 60, 63, 65, "]", "[", 67, 60, 63, 64, "]", "[", 67, 60, 63, 62, "]", "[", 67, 60, 63, 61, "]", "[", 67, 60, 62, 72, "]", "[", 67, 60, 62, 71, "]", "[", 67, 60, 62, 70, "]", "[", 67, 60, 62, 69, "]", "[", 67, 60, 62, 68, "]", "[", 67, 60, 62, 66, "]", "[", 67, 60, 62, 65, "]", "[", 67, 60, 62, 64, "]", "[", 67, 60, 62, 63, "]", "[", 67, 60, 62, 61, "]", "[", 67, 60, 61, 72, "]", "[", 67, 60, 61, 71, "]", "[", 67, 60, 61, 70, "]", "[", 67, 60, 61, 69, "]", "[", 67, 60, 61, 68, "]", "[", 67, 60, 61, 66, "]", "[", 67, 60, 61, 65, "]", "[", 67, 60, 61, 64, "]", "[", 67, 60, 61, 63, "]", "[", 67, 60, 61, 62, "]", "[", 66, 72, 71, 70, "]", "[", 66, 72, 71, 69, "]", "[", 66, 72, 71, 68, "]", "[", 66, 72, 71, 67, "]", "[", 66, 72, 71, 65, "]", "[", 66, 72, 71, 64, "]", "[", 66, 72, 71, 63, "]", "[", 66, 72, 71, 62, "]", "[", 66, 72, 71, 61, "]", "[", 66, 72, 71, 60, "]", "[", 66, 72, 70, 71, "]", "[", 66, 72, 70, 69, "]", "[", 66, 72, 70, 68, "]", "[", 66, 72, 70, 67, "]", "[", 66, 72, 70, 65, "]", "[", 66, 72, 70, 64, "]", "[", 66, 72, 70, 63, "]", "[", 66, 72, 70, 62, "]", "[", 66, 72, 70, 61, "]", "[", 66, 72, 70, 60, "]", "[", 66, 72, 69, 71, "]", "[", 66, 72, 69, 70, "]", "[", 66, 72, 69, 68, "]", "[", 66, 72, 69, 67, "]", "[", 66, 72, 69, 65, "]", "[", 66, 72, 69, 64, "]", "[", 66, 72, 69, 63, "]", "[", 66, 72, 69, 62, "]", "[", 66, 72, 69, 61, "]", "[", 66, 72, 69, 60, "]", "[", 66, 72, 68, 71, "]", "[", 66, 72, 68, 70, "]", "[", 66, 72, 68, 69, "]", "[", 66, 72, 68, 67, "]", "[", 66, 72, 68, 65, "]", "[", 66, 72, 68, 64, "]", "[", 66, 72, 68, 63, "]", "[", 66, 72, 68, 62, "]", "[", 66, 72, 68, 61, "]", "[", 66, 72, 68, 60, "]", "[", 66, 72, 67, 71, "]", "[", 66, 72, 67, 70, "]", "[", 66, 72, 67, 69, "]", "[", 66, 72, 67, 68, "]", "[", 66, 72, 67, 65, "]", "[", 66, 72, 67, 64, "]", "[", 66, 72, 67, 63, "]", "[", 66, 72, 67, 62, "]", "[", 66, 72, 67, 61, "]", "[", 66, 72, 67, 60, "]", "[", 66, 72, 65, 71, "]", "[", 66, 72, 65, 70, "]", "[", 66, 72, 65, 69, "]", "[", 66, 72, 65, 68, "]", "[", 66, 72, 65, 67, "]", "[", 66, 72, 65, 64, "]", "[", 66, 72, 65, 63, "]", "[", 66, 72, 65, 62, "]", "[", 66, 72, 65, 61, "]", "[", 66, 72, 65, 60, "]", "[", 66, 72, 64, 71, "]", "[", 66, 72, 64, 70, "]", "[", 66, 72, 64, 69, "]", "[", 66, 72, 64, 68, "]", "[", 66, 72, 64, 67, "]", "[", 66, 72, 64, 65, "]", "[", 66, 72, 64, 63, "]", "[", 66, 72, 64, 62, "]", "[", 66, 72, 64, 61, "]", "[", 66, 72, 64, 60, "]", "[", 66, 72, 63, 71, "]", "[", 66, 72, 63, 70, "]", "[", 66, 72, 63, 69, "]", "[", 66, 72, 63, 68, "]", "[", 66, 72, 63, 67, "]", "[", 66, 72, 63, 65, "]", "[", 66, 72, 63, 64, "]", "[", 66, 72, 63, 62, "]", "[", 66, 72, 63, 61, "]", "[", 66, 72, 63, 60, "]", "[", 66, 72, 62, 71, "]", "[", 66, 72, 62, 70, "]", "[", 66, 72, 62, 69, "]", "[", 66, 72, 62, 68, "]", "[", 66, 72, 62, 67, "]", "[", 66, 72, 62, 65, "]", "[", 66, 72, 62, 64, "]", "[", 66, 72, 62, 63, "]", "[", 66, 72, 62, 61, "]", "[", 66, 72, 62, 60, "]", "[", 66, 72, 61, 71, "]", "[", 66, 72, 61, 70, "]", "[", 66, 72, 61, 69, "]", "[", 66, 72, 61, 68, "]", "[", 66, 72, 61, 67, "]", "[", 66, 72, 61, 65, "]", "[", 66, 72, 61, 64, "]", "[", 66, 72, 61, 63, "]", "[", 66, 72, 61, 62, "]", "[", 66, 72, 61, 60, "]", "[", 66, 72, 60, 71, "]", "[", 66, 72, 60, 70, "]", "[", 66, 72, 60, 69, "]", "[", 66, 72, 60, 68, "]", "[", 66, 72, 60, 67, "]", "[", 66, 72, 60, 65, "]", "[", 66, 72, 60, 64, "]", "[", 66, 72, 60, 63, "]", "[", 66, 72, 60, 62, "]", "[", 66, 72, 60, 61, "]", "[", 66, 71, 72, 70, "]", "[", 66, 71, 72, 69, "]", "[", 66, 71, 72, 68, "]", "[", 66, 71, 72, 67, "]", "[", 66, 71, 72, 65, "]", "[", 66, 71, 72, 64, "]", "[", 66, 71, 72, 63, "]", "[", 66, 71, 72, 62, "]", "[", 66, 71, 72, 61, "]", "[", 66, 71, 72, 60, "]", "[", 66, 71, 70, 72, "]", "[", 66, 71, 70, 69, "]", "[", 66, 71, 70, 68, "]", "[", 66, 71, 70, 67, "]", "[", 66, 71, 70, 65, "]", "[", 66, 71, 70, 64, "]", "[", 66, 71, 70, 63, "]", "[", 66, 71, 70, 62, "]", "[", 66, 71, 70, 61, "]", "[", 66, 71, 70, 60, "]", "[", 66, 71, 69, 72, "]", "[", 66, 71, 69, 70, "]", "[", 66, 71, 69, 68, "]", "[", 66, 71, 69, 67, "]", "[", 66, 71, 69, 65, "]", "[", 66, 71, 69, 64, "]", "[", 66, 71, 69, 63, "]", "[", 66, 71, 69, 62, "]", "[", 66, 71, 69, 61, "]", "[", 66, 71, 69, 60, "]", "[", 66, 71, 68, 72, "]", "[", 66, 71, 68, 70, "]", "[", 66, 71, 68, 69, "]", "[", 66, 71, 68, 67, "]", "[", 66, 71, 68, 65, "]", "[", 66, 71, 68, 64, "]", "[", 66, 71, 68, 63, "]", "[", 66, 71, 68, 62, "]", "[", 66, 71, 68, 61, "]", "[", 66, 71, 68, 60, "]", "[", 66, 71, 67, 72, "]", "[", 66, 71, 67, 70, "]", "[", 66, 71, 67, 69, "]", "[", 66, 71, 67, 68, "]", "[", 66, 71, 67, 65, "]", "[", 66, 71, 67, 64, "]", "[", 66, 71, 67, 63, "]", "[", 66, 71, 67, 62, "]", "[", 66, 71, 67, 61, "]", "[", 66, 71, 67, 60, "]", "[", 66, 71, 65, 72, "]", "[", 66, 71, 65, 70, "]", "[", 66, 71, 65, 69, "]", "[", 66, 71, 65, 68, "]", "[", 66, 71, 65, 67, "]", "[", 66, 71, 65, 64, "]", "[", 66, 71, 65, 63, "]", "[", 66, 71, 65, 62, "]", "[", 66, 71, 65, 61, "]", "[", 66, 71, 65, 60, "]", "[", 66, 71, 64, 72, "]", "[", 66, 71, 64, 70, "]", "[", 66, 71, 64, 69, "]", "[", 66, 71, 64, 68, "]", "[", 66, 71, 64, 67, "]", "[", 66, 71, 64, 65, "]", "[", 66, 71, 64, 63, "]", "[", 66, 71, 64, 62, "]", "[", 66, 71, 64, 61, "]", "[", 66, 71, 64, 60, "]", "[", 66, 71, 63, 72, "]", "[", 66, 71, 63, 70, "]", "[", 66, 71, 63, 69, "]", "[", 66, 71, 63, 68, "]", "[", 66, 71, 63, 67, "]", "[", 66, 71, 63, 65, "]", "[", 66, 71, 63, 64, "]", "[", 66, 71, 63, 62, "]", "[", 66, 71, 63, 61, "]", "[", 66, 71, 63, 60, "]", "[", 66, 71, 62, 72, "]", "[", 66, 71, 62, 70, "]", "[", 66, 71, 62, 69, "]", "[", 66, 71, 62, 68, "]", "[", 66, 71, 62, 67, "]", "[", 66, 71, 62, 65, "]", "[", 66, 71, 62, 64, "]", "[", 66, 71, 62, 63, "]", "[", 66, 71, 62, 61, "]", "[", 66, 71, 62, 60, "]", "[", 66, 71, 61, 72, "]", "[", 66, 71, 61, 70, "]", "[", 66, 71, 61, 69, "]", "[", 66, 71, 61, 68, "]", "[", 66, 71, 61, 67, "]", "[", 66, 71, 61, 65, "]", "[", 66, 71, 61, 64, "]", "[", 66, 71, 61, 63, "]", "[", 66, 71, 61, 62, "]", "[", 66, 71, 61, 60, "]", "[", 66, 71, 60, 72, "]", "[", 66, 71, 60, 70, "]", "[", 66, 71, 60, 69, "]", "[", 66, 71, 60, 68, "]", "[", 66, 71, 60, 67, "]", "[", 66, 71, 60, 65, "]", "[", 66, 71, 60, 64, "]", "[", 66, 71, 60, 63, "]", "[", 66, 71, 60, 62, "]", "[", 66, 71, 60, 61, "]", "[", 66, 70, 72, 71, "]", "[", 66, 70, 72, 69, "]", "[", 66, 70, 72, 68, "]", "[", 66, 70, 72, 67, "]", "[", 66, 70, 72, 65, "]", "[", 66, 70, 72, 64, "]", "[", 66, 70, 72, 63, "]", "[", 66, 70, 72, 62, "]", "[", 66, 70, 72, 61, "]", "[", 66, 70, 72, 60, "]", "[", 66, 70, 71, 72, "]", "[", 66, 70, 71, 69, "]", "[", 66, 70, 71, 68, "]", "[", 66, 70, 71, 67, "]", "[", 66, 70, 71, 65, "]", "[", 66, 70, 71, 64, "]", "[", 66, 70, 71, 63, "]", "[", 66, 70, 71, 62, "]", "[", 66, 70, 71, 61, "]", "[", 66, 70, 71, 60, "]", "[", 66, 70, 69, 72, "]", "[", 66, 70, 69, 71, "]", "[", 66, 70, 69, 68, "]", "[", 66, 70, 69, 67, "]", "[", 66, 70, 69, 65, "]", "[", 66, 70, 69, 64, "]", "[", 66, 70, 69, 63, "]", "[", 66, 70, 69, 62, "]", "[", 66, 70, 69, 61, "]", "[", 66, 70, 69, 60, "]", "[", 66, 70, 68, 72, "]", "[", 66, 70, 68, 71, "]", "[", 66, 70, 68, 69, "]", "[", 66, 70, 68, 67, "]", "[", 66, 70, 68, 65, "]", "[", 66, 70, 68, 64, "]", "[", 66, 70, 68, 63, "]", "[", 66, 70, 68, 62, "]", "[", 66, 70, 68, 61, "]", "[", 66, 70, 68, 60, "]", "[", 66, 70, 67, 72, "]", "[", 66, 70, 67, 71, "]", "[", 66, 70, 67, 69, "]", "[", 66, 70, 67, 68, "]", "[", 66, 70, 67, 65, "]", "[", 66, 70, 67, 64, "]", "[", 66, 70, 67, 63, "]", "[", 66, 70, 67, 62, "]", "[", 66, 70, 67, 61, "]", "[", 66, 70, 67, 60, "]", "[", 66, 70, 65, 72, "]", "[", 66, 70, 65, 71, "]" ],
													"reg_data_0000000012" : [ "[", 66, 70, 65, 69, "]", "[", 66, 70, 65, 68, "]", "[", 66, 70, 65, 67, "]", "[", 66, 70, 65, 64, "]", "[", 66, 70, 65, 63, "]", "[", 66, 70, 65, 62, "]", "[", 66, 70, 65, 61, "]", "[", 66, 70, 65, 60, "]", "[", 66, 70, 64, 72, "]", "[", 66, 70, 64, 71, "]", "[", 66, 70, 64, 69, "]", "[", 66, 70, 64, 68, "]", "[", 66, 70, 64, 67, "]", "[", 66, 70, 64, 65, "]", "[", 66, 70, 64, 63, "]", "[", 66, 70, 64, 62, "]", "[", 66, 70, 64, 61, "]", "[", 66, 70, 64, 60, "]", "[", 66, 70, 63, 72, "]", "[", 66, 70, 63, 71, "]", "[", 66, 70, 63, 69, "]", "[", 66, 70, 63, 68, "]", "[", 66, 70, 63, 67, "]", "[", 66, 70, 63, 65, "]", "[", 66, 70, 63, 64, "]", "[", 66, 70, 63, 62, "]", "[", 66, 70, 63, 61, "]", "[", 66, 70, 63, 60, "]", "[", 66, 70, 62, 72, "]", "[", 66, 70, 62, 71, "]", "[", 66, 70, 62, 69, "]", "[", 66, 70, 62, 68, "]", "[", 66, 70, 62, 67, "]", "[", 66, 70, 62, 65, "]", "[", 66, 70, 62, 64, "]", "[", 66, 70, 62, 63, "]", "[", 66, 70, 62, 61, "]", "[", 66, 70, 62, 60, "]", "[", 66, 70, 61, 72, "]", "[", 66, 70, 61, 71, "]", "[", 66, 70, 61, 69, "]", "[", 66, 70, 61, 68, "]", "[", 66, 70, 61, 67, "]", "[", 66, 70, 61, 65, "]", "[", 66, 70, 61, 64, "]", "[", 66, 70, 61, 63, "]", "[", 66, 70, 61, 62, "]", "[", 66, 70, 61, 60, "]", "[", 66, 70, 60, 72, "]", "[", 66, 70, 60, 71, "]", "[", 66, 70, 60, 69, "]", "[", 66, 70, 60, 68, "]", "[", 66, 70, 60, 67, "]", "[", 66, 70, 60, 65, "]", "[", 66, 70, 60, 64, "]", "[", 66, 70, 60, 63, "]", "[", 66, 70, 60, 62, "]", "[", 66, 70, 60, 61, "]", "[", 66, 69, 72, 71, "]", "[", 66, 69, 72, 70, "]", "[", 66, 69, 72, 68, "]", "[", 66, 69, 72, 67, "]", "[", 66, 69, 72, 65, "]", "[", 66, 69, 72, 64, "]", "[", 66, 69, 72, 63, "]", "[", 66, 69, 72, 62, "]", "[", 66, 69, 72, 61, "]", "[", 66, 69, 72, 60, "]", "[", 66, 69, 71, 72, "]", "[", 66, 69, 71, 70, "]", "[", 66, 69, 71, 68, "]", "[", 66, 69, 71, 67, "]", "[", 66, 69, 71, 65, "]", "[", 66, 69, 71, 64, "]", "[", 66, 69, 71, 63, "]", "[", 66, 69, 71, 62, "]", "[", 66, 69, 71, 61, "]", "[", 66, 69, 71, 60, "]", "[", 66, 69, 70, 72, "]", "[", 66, 69, 70, 71, "]", "[", 66, 69, 70, 68, "]", "[", 66, 69, 70, 67, "]", "[", 66, 69, 70, 65, "]", "[", 66, 69, 70, 64, "]", "[", 66, 69, 70, 63, "]", "[", 66, 69, 70, 62, "]", "[", 66, 69, 70, 61, "]", "[", 66, 69, 70, 60, "]", "[", 66, 69, 68, 72, "]", "[", 66, 69, 68, 71, "]", "[", 66, 69, 68, 70, "]", "[", 66, 69, 68, 67, "]", "[", 66, 69, 68, 65, "]", "[", 66, 69, 68, 64, "]", "[", 66, 69, 68, 63, "]", "[", 66, 69, 68, 62, "]", "[", 66, 69, 68, 61, "]", "[", 66, 69, 68, 60, "]", "[", 66, 69, 67, 72, "]", "[", 66, 69, 67, 71, "]", "[", 66, 69, 67, 70, "]", "[", 66, 69, 67, 68, "]", "[", 66, 69, 67, 65, "]", "[", 66, 69, 67, 64, "]", "[", 66, 69, 67, 63, "]", "[", 66, 69, 67, 62, "]", "[", 66, 69, 67, 61, "]", "[", 66, 69, 67, 60, "]", "[", 66, 69, 65, 72, "]", "[", 66, 69, 65, 71, "]", "[", 66, 69, 65, 70, "]", "[", 66, 69, 65, 68, "]", "[", 66, 69, 65, 67, "]", "[", 66, 69, 65, 64, "]", "[", 66, 69, 65, 63, "]", "[", 66, 69, 65, 62, "]", "[", 66, 69, 65, 61, "]", "[", 66, 69, 65, 60, "]", "[", 66, 69, 64, 72, "]", "[", 66, 69, 64, 71, "]", "[", 66, 69, 64, 70, "]", "[", 66, 69, 64, 68, "]", "[", 66, 69, 64, 67, "]", "[", 66, 69, 64, 65, "]", "[", 66, 69, 64, 63, "]", "[", 66, 69, 64, 62, "]", "[", 66, 69, 64, 61, "]", "[", 66, 69, 64, 60, "]", "[", 66, 69, 63, 72, "]", "[", 66, 69, 63, 71, "]", "[", 66, 69, 63, 70, "]", "[", 66, 69, 63, 68, "]", "[", 66, 69, 63, 67, "]", "[", 66, 69, 63, 65, "]", "[", 66, 69, 63, 64, "]", "[", 66, 69, 63, 62, "]", "[", 66, 69, 63, 61, "]", "[", 66, 69, 63, 60, "]", "[", 66, 69, 62, 72, "]", "[", 66, 69, 62, 71, "]", "[", 66, 69, 62, 70, "]", "[", 66, 69, 62, 68, "]", "[", 66, 69, 62, 67, "]", "[", 66, 69, 62, 65, "]", "[", 66, 69, 62, 64, "]", "[", 66, 69, 62, 63, "]", "[", 66, 69, 62, 61, "]", "[", 66, 69, 62, 60, "]", "[", 66, 69, 61, 72, "]", "[", 66, 69, 61, 71, "]", "[", 66, 69, 61, 70, "]", "[", 66, 69, 61, 68, "]", "[", 66, 69, 61, 67, "]", "[", 66, 69, 61, 65, "]", "[", 66, 69, 61, 64, "]", "[", 66, 69, 61, 63, "]", "[", 66, 69, 61, 62, "]", "[", 66, 69, 61, 60, "]", "[", 66, 69, 60, 72, "]", "[", 66, 69, 60, 71, "]", "[", 66, 69, 60, 70, "]", "[", 66, 69, 60, 68, "]", "[", 66, 69, 60, 67, "]", "[", 66, 69, 60, 65, "]", "[", 66, 69, 60, 64, "]", "[", 66, 69, 60, 63, "]", "[", 66, 69, 60, 62, "]", "[", 66, 69, 60, 61, "]", "[", 66, 68, 72, 71, "]", "[", 66, 68, 72, 70, "]", "[", 66, 68, 72, 69, "]", "[", 66, 68, 72, 67, "]", "[", 66, 68, 72, 65, "]", "[", 66, 68, 72, 64, "]", "[", 66, 68, 72, 63, "]", "[", 66, 68, 72, 62, "]", "[", 66, 68, 72, 61, "]", "[", 66, 68, 72, 60, "]", "[", 66, 68, 71, 72, "]", "[", 66, 68, 71, 70, "]", "[", 66, 68, 71, 69, "]", "[", 66, 68, 71, 67, "]", "[", 66, 68, 71, 65, "]", "[", 66, 68, 71, 64, "]", "[", 66, 68, 71, 63, "]", "[", 66, 68, 71, 62, "]", "[", 66, 68, 71, 61, "]", "[", 66, 68, 71, 60, "]", "[", 66, 68, 70, 72, "]", "[", 66, 68, 70, 71, "]", "[", 66, 68, 70, 69, "]", "[", 66, 68, 70, 67, "]", "[", 66, 68, 70, 65, "]", "[", 66, 68, 70, 64, "]", "[", 66, 68, 70, 63, "]", "[", 66, 68, 70, 62, "]", "[", 66, 68, 70, 61, "]", "[", 66, 68, 70, 60, "]", "[", 66, 68, 69, 72, "]", "[", 66, 68, 69, 71, "]", "[", 66, 68, 69, 70, "]", "[", 66, 68, 69, 67, "]", "[", 66, 68, 69, 65, "]", "[", 66, 68, 69, 64, "]", "[", 66, 68, 69, 63, "]", "[", 66, 68, 69, 62, "]", "[", 66, 68, 69, 61, "]", "[", 66, 68, 69, 60, "]", "[", 66, 68, 67, 72, "]", "[", 66, 68, 67, 71, "]", "[", 66, 68, 67, 70, "]", "[", 66, 68, 67, 69, "]", "[", 66, 68, 67, 65, "]", "[", 66, 68, 67, 64, "]", "[", 66, 68, 67, 63, "]", "[", 66, 68, 67, 62, "]", "[", 66, 68, 67, 61, "]", "[", 66, 68, 67, 60, "]", "[", 66, 68, 65, 72, "]", "[", 66, 68, 65, 71, "]", "[", 66, 68, 65, 70, "]", "[", 66, 68, 65, 69, "]", "[", 66, 68, 65, 67, "]", "[", 66, 68, 65, 64, "]", "[", 66, 68, 65, 63, "]", "[", 66, 68, 65, 62, "]", "[", 66, 68, 65, 61, "]", "[", 66, 68, 65, 60, "]", "[", 66, 68, 64, 72, "]", "[", 66, 68, 64, 71, "]", "[", 66, 68, 64, 70, "]", "[", 66, 68, 64, 69, "]", "[", 66, 68, 64, 67, "]", "[", 66, 68, 64, 65, "]", "[", 66, 68, 64, 63, "]", "[", 66, 68, 64, 62, "]", "[", 66, 68, 64, 61, "]", "[", 66, 68, 64, 60, "]", "[", 66, 68, 63, 72, "]", "[", 66, 68, 63, 71, "]", "[", 66, 68, 63, 70, "]", "[", 66, 68, 63, 69, "]", "[", 66, 68, 63, 67, "]", "[", 66, 68, 63, 65, "]", "[", 66, 68, 63, 64, "]", "[", 66, 68, 63, 62, "]", "[", 66, 68, 63, 61, "]", "[", 66, 68, 63, 60, "]", "[", 66, 68, 62, 72, "]", "[", 66, 68, 62, 71, "]", "[", 66, 68, 62, 70, "]", "[", 66, 68, 62, 69, "]", "[", 66, 68, 62, 67, "]", "[", 66, 68, 62, 65, "]", "[", 66, 68, 62, 64, "]", "[", 66, 68, 62, 63, "]", "[", 66, 68, 62, 61, "]", "[", 66, 68, 62, 60, "]", "[", 66, 68, 61, 72, "]", "[", 66, 68, 61, 71, "]", "[", 66, 68, 61, 70, "]", "[", 66, 68, 61, 69, "]", "[", 66, 68, 61, 67, "]", "[", 66, 68, 61, 65, "]", "[", 66, 68, 61, 64, "]", "[", 66, 68, 61, 63, "]", "[", 66, 68, 61, 62, "]", "[", 66, 68, 61, 60, "]", "[", 66, 68, 60, 72, "]", "[", 66, 68, 60, 71, "]", "[", 66, 68, 60, 70, "]", "[", 66, 68, 60, 69, "]", "[", 66, 68, 60, 67, "]", "[", 66, 68, 60, 65, "]", "[", 66, 68, 60, 64, "]", "[", 66, 68, 60, 63, "]", "[", 66, 68, 60, 62, "]", "[", 66, 68, 60, 61, "]", "[", 66, 67, 72, 71, "]", "[", 66, 67, 72, 70, "]", "[", 66, 67, 72, 69, "]", "[", 66, 67, 72, 68, "]", "[", 66, 67, 72, 65, "]", "[", 66, 67, 72, 64, "]", "[", 66, 67, 72, 63, "]", "[", 66, 67, 72, 62, "]", "[", 66, 67, 72, 61, "]", "[", 66, 67, 72, 60, "]", "[", 66, 67, 71, 72, "]", "[", 66, 67, 71, 70, "]", "[", 66, 67, 71, 69, "]", "[", 66, 67, 71, 68, "]", "[", 66, 67, 71, 65, "]", "[", 66, 67, 71, 64, "]", "[", 66, 67, 71, 63, "]", "[", 66, 67, 71, 62, "]", "[", 66, 67, 71, 61, "]", "[", 66, 67, 71, 60, "]", "[", 66, 67, 70, 72, "]", "[", 66, 67, 70, 71, "]", "[", 66, 67, 70, 69, "]", "[", 66, 67, 70, 68, "]", "[", 66, 67, 70, 65, "]", "[", 66, 67, 70, 64, "]", "[", 66, 67, 70, 63, "]", "[", 66, 67, 70, 62, "]", "[", 66, 67, 70, 61, "]", "[", 66, 67, 70, 60, "]", "[", 66, 67, 69, 72, "]", "[", 66, 67, 69, 71, "]", "[", 66, 67, 69, 70, "]", "[", 66, 67, 69, 68, "]", "[", 66, 67, 69, 65, "]", "[", 66, 67, 69, 64, "]", "[", 66, 67, 69, 63, "]", "[", 66, 67, 69, 62, "]", "[", 66, 67, 69, 61, "]", "[", 66, 67, 69, 60, "]", "[", 66, 67, 68, 72, "]", "[", 66, 67, 68, 71, "]", "[", 66, 67, 68, 70, "]", "[", 66, 67, 68, 69, "]", "[", 66, 67, 68, 65, "]", "[", 66, 67, 68, 64, "]", "[", 66, 67, 68, 63, "]", "[", 66, 67, 68, 62, "]", "[", 66, 67, 68, 61, "]", "[", 66, 67, 68, 60, "]", "[", 66, 67, 65, 72, "]", "[", 66, 67, 65, 71, "]", "[", 66, 67, 65, 70, "]", "[", 66, 67, 65, 69, "]", "[", 66, 67, 65, 68, "]", "[", 66, 67, 65, 64, "]", "[", 66, 67, 65, 63, "]", "[", 66, 67, 65, 62, "]", "[", 66, 67, 65, 61, "]", "[", 66, 67, 65, 60, "]", "[", 66, 67, 64, 72, "]", "[", 66, 67, 64, 71, "]", "[", 66, 67, 64, 70, "]", "[", 66, 67, 64, 69, "]", "[", 66, 67, 64, 68, "]", "[", 66, 67, 64, 65, "]", "[", 66, 67, 64, 63, "]", "[", 66, 67, 64, 62, "]", "[", 66, 67, 64, 61, "]", "[", 66, 67, 64, 60, "]", "[", 66, 67, 63, 72, "]", "[", 66, 67, 63, 71, "]", "[", 66, 67, 63, 70, "]", "[", 66, 67, 63, 69, "]", "[", 66, 67, 63, 68, "]", "[", 66, 67, 63, 65, "]", "[", 66, 67, 63, 64, "]", "[", 66, 67, 63, 62, "]", "[", 66, 67, 63, 61, "]", "[", 66, 67, 63, 60, "]", "[", 66, 67, 62, 72, "]", "[", 66, 67, 62, 71, "]", "[", 66, 67, 62, 70, "]", "[", 66, 67, 62, 69, "]", "[", 66, 67, 62, 68, "]", "[", 66, 67, 62, 65, "]", "[", 66, 67, 62, 64, "]", "[", 66, 67, 62, 63, "]", "[", 66, 67, 62, 61, "]", "[", 66, 67, 62, 60, "]", "[", 66, 67, 61, 72, "]", "[", 66, 67, 61, 71, "]", "[", 66, 67, 61, 70, "]", "[", 66, 67, 61, 69, "]", "[", 66, 67, 61, 68, "]", "[", 66, 67, 61, 65, "]", "[", 66, 67, 61, 64, "]", "[", 66, 67, 61, 63, "]", "[", 66, 67, 61, 62, "]", "[", 66, 67, 61, 60, "]", "[", 66, 67, 60, 72, "]", "[", 66, 67, 60, 71, "]", "[", 66, 67, 60, 70, "]", "[", 66, 67, 60, 69, "]", "[", 66, 67, 60, 68, "]", "[", 66, 67, 60, 65, "]", "[", 66, 67, 60, 64, "]", "[", 66, 67, 60, 63, "]", "[", 66, 67, 60, 62, "]", "[", 66, 67, 60, 61, "]", "[", 66, 65, 72, 71, "]", "[", 66, 65, 72, 70, "]", "[", 66, 65, 72, 69, "]", "[", 66, 65, 72, 68, "]", "[", 66, 65, 72, 67, "]", "[", 66, 65, 72, 64, "]", "[", 66, 65, 72, 63, "]", "[", 66, 65, 72, 62, "]", "[", 66, 65, 72, 61, "]", "[", 66, 65, 72, 60, "]", "[", 66, 65, 71, 72, "]", "[", 66, 65, 71, 70, "]", "[", 66, 65, 71, 69, "]", "[", 66, 65, 71, 68, "]", "[", 66, 65, 71, 67, "]", "[", 66, 65, 71, 64, "]", "[", 66, 65, 71, 63, "]", "[", 66, 65, 71, 62, "]", "[", 66, 65, 71, 61, "]", "[", 66, 65, 71, 60, "]", "[", 66, 65, 70, 72, "]", "[", 66, 65, 70, 71, "]", "[", 66, 65, 70, 69, "]", "[", 66, 65, 70, 68, "]", "[", 66, 65, 70, 67, "]", "[", 66, 65, 70, 64, "]", "[", 66, 65, 70, 63, "]", "[", 66, 65, 70, 62, "]", "[", 66, 65, 70, 61, "]", "[", 66, 65, 70, 60, "]", "[", 66, 65, 69, 72, "]", "[", 66, 65, 69, 71, "]", "[", 66, 65, 69, 70, "]", "[", 66, 65, 69, 68, "]", "[", 66, 65, 69, 67, "]", "[", 66, 65, 69, 64, "]", "[", 66, 65, 69, 63, "]", "[", 66, 65, 69, 62, "]", "[", 66, 65, 69, 61, "]", "[", 66, 65, 69, 60, "]", "[", 66, 65, 68, 72, "]", "[", 66, 65, 68, 71, "]", "[", 66, 65, 68, 70, "]", "[", 66, 65, 68, 69, "]", "[", 66, 65, 68, 67, "]", "[", 66, 65, 68, 64, "]", "[", 66, 65, 68, 63, "]", "[", 66, 65, 68, 62, "]", "[", 66, 65, 68, 61, "]", "[", 66, 65, 68, 60, "]", "[", 66, 65, 67, 72, "]", "[", 66, 65, 67, 71, "]", "[", 66, 65, 67, 70, "]", "[", 66, 65, 67, 69, "]", "[", 66, 65, 67, 68, "]", "[", 66, 65, 67, 64, "]", "[", 66, 65, 67, 63, "]", "[", 66, 65, 67, 62, "]", "[", 66, 65, 67, 61, "]", "[", 66, 65, 67, 60, "]", "[", 66, 65, 64, 72, "]", "[", 66, 65, 64, 71, "]", "[", 66, 65, 64, 70, "]", "[", 66, 65, 64, 69, "]", "[", 66, 65, 64, 68, "]", "[", 66, 65, 64, 67, "]", "[", 66, 65, 64, 63, "]", "[", 66, 65, 64, 62, "]", "[", 66, 65, 64, 61, "]", "[", 66, 65, 64, 60, "]", "[", 66, 65, 63, 72, "]", "[", 66, 65, 63, 71, "]", "[", 66, 65, 63, 70, "]", "[", 66, 65, 63, 69, "]", "[", 66, 65, 63, 68, "]", "[", 66, 65, 63, 67, "]", "[", 66, 65, 63, 64, "]", "[", 66, 65, 63, 62, "]", "[", 66, 65, 63, 61, "]", "[", 66, 65, 63, 60, "]", "[", 66, 65, 62, 72, "]", "[", 66, 65, 62, 71, "]", "[", 66, 65, 62, 70, "]", "[", 66, 65, 62, 69, "]", "[", 66, 65, 62, 68, "]", "[", 66, 65, 62, 67, "]", "[", 66, 65, 62, 64, "]", "[", 66, 65, 62, 63, "]", "[", 66, 65, 62, 61, "]", "[", 66, 65, 62, 60, "]", "[", 66, 65, 61, 72, "]", "[", 66, 65, 61, 71, "]", "[", 66, 65, 61, 70, "]", "[", 66, 65, 61, 69, "]", "[", 66, 65, 61, 68, "]", "[", 66, 65, 61, 67, "]", "[", 66, 65, 61, 64, "]", "[", 66, 65, 61, 63, "]", "[", 66, 65, 61, 62, "]", "[", 66, 65, 61, 60, "]", "[", 66, 65, 60, 72, "]", "[", 66, 65, 60, 71, "]", "[", 66, 65, 60, 70, "]", "[", 66, 65, 60, 69, "]", "[", 66, 65, 60, 68, "]", "[", 66, 65, 60, 67, "]", "[", 66, 65, 60, 64, "]", "[", 66, 65, 60, 63, "]", "[", 66, 65, 60, 62, "]", "[", 66, 65, 60, 61, "]", "[", 66, 64, 72, 71, "]", "[", 66, 64, 72, 70, "]", "[", 66, 64, 72, 69, "]", "[", 66, 64, 72, 68, "]", "[", 66, 64, 72, 67, "]", "[", 66, 64, 72, 65, "]", "[", 66, 64, 72, 63, "]", "[", 66, 64, 72, 62, "]", "[", 66, 64, 72, 61, "]", "[", 66, 64, 72, 60, "]", "[", 66, 64, 71, 72, "]", "[", 66, 64, 71, 70, "]", "[", 66, 64, 71, 69, "]", "[", 66, 64, 71, 68, "]", "[", 66, 64, 71, 67, "]", "[", 66, 64, 71, 65, "]", "[", 66, 64, 71, 63, "]", "[", 66, 64, 71, 62, "]", "[", 66, 64, 71, 61, "]", "[", 66, 64, 71, 60, "]", "[", 66, 64, 70, 72, "]", "[", 66, 64, 70, 71, "]", "[", 66, 64, 70, 69, "]", "[", 66, 64, 70, 68, "]", "[", 66, 64, 70, 67, "]", "[", 66, 64, 70, 65, "]", "[", 66, 64, 70, 63, "]", "[", 66, 64, 70, 62, "]", "[", 66, 64, 70, 61, "]", "[", 66, 64, 70, 60, "]", "[", 66, 64, 69, 72, "]", "[", 66, 64, 69, 71, "]", "[", 66, 64, 69, 70, "]", "[", 66, 64, 69, 68, "]", "[", 66, 64, 69, 67, "]", "[", 66, 64, 69, 65, "]", "[", 66, 64, 69, 63, "]", "[", 66, 64, 69, 62, "]", "[", 66, 64, 69, 61, "]", "[", 66, 64, 69, 60, "]", "[", 66, 64, 68, 72, "]", "[", 66, 64, 68, 71, "]", "[", 66, 64, 68, 70, "]", "[", 66, 64, 68, 69, "]", "[", 66, 64, 68, 67, "]", "[", 66, 64, 68, 65, "]", "[", 66, 64, 68, 63, "]", "[", 66, 64, 68, 62, "]", "[", 66, 64, 68, 61, "]", "[", 66, 64, 68, 60, "]", "[", 66, 64, 67, 72, "]", "[", 66, 64, 67, 71, "]", "[", 66, 64, 67, 70, "]", "[", 66, 64, 67, 69, "]", "[", 66, 64, 67, 68, "]", "[", 66, 64, 67, 65, "]", "[", 66, 64, 67, 63, "]", "[", 66, 64, 67, 62, "]", "[", 66, 64, 67, 61, "]", "[", 66, 64, 67, 60, "]", "[", 66, 64, 65, 72, "]", "[", 66, 64, 65, 71, "]", "[", 66, 64, 65, 70, "]", "[", 66, 64, 65, 69, "]", "[", 66, 64, 65, 68, "]", "[", 66, 64, 65, 67, "]", "[", 66, 64, 65, 63, "]", "[", 66, 64, 65, 62, "]", "[", 66, 64, 65, 61, "]", "[", 66, 64, 65, 60, "]", "[", 66, 64, 63, 72, "]", "[", 66, 64, 63, 71, "]", "[", 66, 64, 63, 70, "]", "[", 66, 64, 63, 69, "]", "[", 66, 64, 63, 68, "]", "[", 66, 64, 63, 67, "]", "[", 66, 64, 63, 65, "]", "[", 66, 64, 63, 62, "]", "[", 66, 64, 63, 61, "]", "[", 66, 64, 63, 60, "]", "[", 66, 64, 62, 72, "]", "[", 66, 64, 62, 71, "]", "[", 66, 64, 62, 70, "]", "[", 66, 64, 62, 69, "]", "[", 66, 64, 62, 68, "]", "[", 66, 64, 62, 67, "]", "[", 66, 64, 62, 65, "]", "[", 66, 64, 62, 63, "]", "[", 66, 64, 62, 61, "]", "[", 66, 64, 62, 60, "]", "[", 66, 64, 61, 72, "]", "[", 66, 64, 61, 71, "]", "[", 66, 64, 61, 70, "]", "[", 66, 64, 61, 69, "]", "[", 66, 64, 61, 68, "]", "[", 66, 64, 61, 67, "]", "[", 66, 64, 61, 65, "]", "[", 66, 64, 61, 63, "]", "[", 66, 64, 61, 62, "]", "[", 66, 64, 61, 60, "]", "[", 66, 64, 60, 72, "]", "[", 66, 64, 60, 71, "]", "[", 66, 64, 60, 70, "]", "[", 66, 64, 60, 69, "]", "[", 66, 64, 60, 68, "]", "[", 66, 64, 60, 67, "]", "[", 66, 64, 60, 65, "]", "[", 66, 64, 60, 63, "]", "[", 66, 64, 60, 62, "]", "[", 66, 64, 60, 61, "]", "[", 66, 63, 72, 71, "]", "[", 66, 63, 72, 70, "]", "[", 66, 63, 72, 69, "]", "[", 66, 63, 72, 68, "]", "[", 66, 63, 72, 67, "]", "[", 66, 63, 72, 65, "]", "[", 66, 63, 72, 64, "]", "[", 66, 63, 72, 62, "]", "[", 66, 63, 72, 61, "]", "[", 66, 63, 72, 60, "]", "[", 66, 63, 71, 72, "]", "[", 66, 63, 71, 70, "]", "[", 66, 63, 71, 69, "]", "[", 66, 63, 71, 68, "]", "[", 66, 63, 71, 67, "]", "[", 66, 63, 71, 65, "]", "[", 66, 63, 71, 64, "]", "[", 66, 63, 71, 62, "]", "[", 66, 63, 71, 61, "]", "[", 66, 63, 71, 60, "]", "[", 66, 63, 70, 72, "]", "[", 66, 63, 70, 71, "]", "[", 66, 63, 70, 69, "]", "[", 66, 63, 70, 68, "]", "[", 66, 63, 70, 67, "]", "[", 66, 63, 70, 65, "]", "[", 66, 63, 70, 64, "]", "[", 66, 63, 70, 62, "]", "[", 66, 63, 70, 61, "]", "[", 66, 63, 70, 60, "]", "[", 66, 63, 69, 72, "]", "[", 66, 63, 69, 71, "]", "[", 66, 63, 69, 70, "]", "[", 66, 63, 69, 68, "]", "[", 66, 63, 69, 67, "]", "[", 66, 63, 69, 65, "]", "[", 66, 63, 69, 64, "]", "[", 66, 63, 69, 62, "]", "[", 66, 63, 69, 61, "]", "[", 66, 63, 69, 60, "]", "[", 66, 63, 68, 72, "]", "[", 66, 63, 68, 71, "]", "[", 66, 63, 68, 70, "]", "[", 66, 63, 68, 69, "]", "[", 66, 63, 68, 67, "]", "[", 66, 63, 68, 65, "]", "[", 66, 63, 68, 64, "]", "[", 66, 63, 68, 62, "]", "[", 66, 63, 68, 61, "]", "[", 66, 63, 68, 60, "]", "[", 66, 63, 67, 72, "]", "[", 66, 63, 67, 71, "]", "[", 66, 63, 67, 70, "]", "[", 66, 63, 67, 69, "]", "[", 66, 63, 67, 68, "]", "[", 66, 63, 67, 65, "]", "[", 66, 63, 67, 64, "]", "[", 66, 63, 67, 62, "]", "[", 66, 63, 67, 61, "]", "[", 66, 63, 67, 60, "]", "[", 66, 63, 65, 72, "]", "[", 66, 63, 65, 71, "]", "[", 66, 63, 65, 70, "]", "[", 66, 63, 65, 69, "]", "[", 66, 63, 65, 68, "]", "[", 66, 63, 65, 67, "]", "[", 66, 63, 65, 64, "]", "[", 66, 63, 65, 62, "]", "[", 66, 63, 65, 61, "]", "[", 66, 63, 65, 60, "]", "[", 66, 63, 64, 72, "]", "[", 66, 63, 64, 71, "]", "[", 66, 63, 64, 70, "]", "[", 66, 63, 64, 69, "]", "[", 66, 63, 64 ],
													"reg_data_0000000013" : [ 68, "]", "[", 66, 63, 64, 67, "]", "[", 66, 63, 64, 65, "]", "[", 66, 63, 64, 62, "]", "[", 66, 63, 64, 61, "]", "[", 66, 63, 64, 60, "]", "[", 66, 63, 62, 72, "]", "[", 66, 63, 62, 71, "]", "[", 66, 63, 62, 70, "]", "[", 66, 63, 62, 69, "]", "[", 66, 63, 62, 68, "]", "[", 66, 63, 62, 67, "]", "[", 66, 63, 62, 65, "]", "[", 66, 63, 62, 64, "]", "[", 66, 63, 62, 61, "]", "[", 66, 63, 62, 60, "]", "[", 66, 63, 61, 72, "]", "[", 66, 63, 61, 71, "]", "[", 66, 63, 61, 70, "]", "[", 66, 63, 61, 69, "]", "[", 66, 63, 61, 68, "]", "[", 66, 63, 61, 67, "]", "[", 66, 63, 61, 65, "]", "[", 66, 63, 61, 64, "]", "[", 66, 63, 61, 62, "]", "[", 66, 63, 61, 60, "]", "[", 66, 63, 60, 72, "]", "[", 66, 63, 60, 71, "]", "[", 66, 63, 60, 70, "]", "[", 66, 63, 60, 69, "]", "[", 66, 63, 60, 68, "]", "[", 66, 63, 60, 67, "]", "[", 66, 63, 60, 65, "]", "[", 66, 63, 60, 64, "]", "[", 66, 63, 60, 62, "]", "[", 66, 63, 60, 61, "]", "[", 66, 62, 72, 71, "]", "[", 66, 62, 72, 70, "]", "[", 66, 62, 72, 69, "]", "[", 66, 62, 72, 68, "]", "[", 66, 62, 72, 67, "]", "[", 66, 62, 72, 65, "]", "[", 66, 62, 72, 64, "]", "[", 66, 62, 72, 63, "]", "[", 66, 62, 72, 61, "]", "[", 66, 62, 72, 60, "]", "[", 66, 62, 71, 72, "]", "[", 66, 62, 71, 70, "]", "[", 66, 62, 71, 69, "]", "[", 66, 62, 71, 68, "]", "[", 66, 62, 71, 67, "]", "[", 66, 62, 71, 65, "]", "[", 66, 62, 71, 64, "]", "[", 66, 62, 71, 63, "]", "[", 66, 62, 71, 61, "]", "[", 66, 62, 71, 60, "]", "[", 66, 62, 70, 72, "]", "[", 66, 62, 70, 71, "]", "[", 66, 62, 70, 69, "]", "[", 66, 62, 70, 68, "]", "[", 66, 62, 70, 67, "]", "[", 66, 62, 70, 65, "]", "[", 66, 62, 70, 64, "]", "[", 66, 62, 70, 63, "]", "[", 66, 62, 70, 61, "]", "[", 66, 62, 70, 60, "]", "[", 66, 62, 69, 72, "]", "[", 66, 62, 69, 71, "]", "[", 66, 62, 69, 70, "]", "[", 66, 62, 69, 68, "]", "[", 66, 62, 69, 67, "]", "[", 66, 62, 69, 65, "]", "[", 66, 62, 69, 64, "]", "[", 66, 62, 69, 63, "]", "[", 66, 62, 69, 61, "]", "[", 66, 62, 69, 60, "]", "[", 66, 62, 68, 72, "]", "[", 66, 62, 68, 71, "]", "[", 66, 62, 68, 70, "]", "[", 66, 62, 68, 69, "]", "[", 66, 62, 68, 67, "]", "[", 66, 62, 68, 65, "]", "[", 66, 62, 68, 64, "]", "[", 66, 62, 68, 63, "]", "[", 66, 62, 68, 61, "]", "[", 66, 62, 68, 60, "]", "[", 66, 62, 67, 72, "]", "[", 66, 62, 67, 71, "]", "[", 66, 62, 67, 70, "]", "[", 66, 62, 67, 69, "]", "[", 66, 62, 67, 68, "]", "[", 66, 62, 67, 65, "]", "[", 66, 62, 67, 64, "]", "[", 66, 62, 67, 63, "]", "[", 66, 62, 67, 61, "]", "[", 66, 62, 67, 60, "]", "[", 66, 62, 65, 72, "]", "[", 66, 62, 65, 71, "]", "[", 66, 62, 65, 70, "]", "[", 66, 62, 65, 69, "]", "[", 66, 62, 65, 68, "]", "[", 66, 62, 65, 67, "]", "[", 66, 62, 65, 64, "]", "[", 66, 62, 65, 63, "]", "[", 66, 62, 65, 61, "]", "[", 66, 62, 65, 60, "]", "[", 66, 62, 64, 72, "]", "[", 66, 62, 64, 71, "]", "[", 66, 62, 64, 70, "]", "[", 66, 62, 64, 69, "]", "[", 66, 62, 64, 68, "]", "[", 66, 62, 64, 67, "]", "[", 66, 62, 64, 65, "]", "[", 66, 62, 64, 63, "]", "[", 66, 62, 64, 61, "]", "[", 66, 62, 64, 60, "]", "[", 66, 62, 63, 72, "]", "[", 66, 62, 63, 71, "]", "[", 66, 62, 63, 70, "]", "[", 66, 62, 63, 69, "]", "[", 66, 62, 63, 68, "]", "[", 66, 62, 63, 67, "]", "[", 66, 62, 63, 65, "]", "[", 66, 62, 63, 64, "]", "[", 66, 62, 63, 61, "]", "[", 66, 62, 63, 60, "]", "[", 66, 62, 61, 72, "]", "[", 66, 62, 61, 71, "]", "[", 66, 62, 61, 70, "]", "[", 66, 62, 61, 69, "]", "[", 66, 62, 61, 68, "]", "[", 66, 62, 61, 67, "]", "[", 66, 62, 61, 65, "]", "[", 66, 62, 61, 64, "]", "[", 66, 62, 61, 63, "]", "[", 66, 62, 61, 60, "]", "[", 66, 62, 60, 72, "]", "[", 66, 62, 60, 71, "]", "[", 66, 62, 60, 70, "]", "[", 66, 62, 60, 69, "]", "[", 66, 62, 60, 68, "]", "[", 66, 62, 60, 67, "]", "[", 66, 62, 60, 65, "]", "[", 66, 62, 60, 64, "]", "[", 66, 62, 60, 63, "]", "[", 66, 62, 60, 61, "]", "[", 66, 61, 72, 71, "]", "[", 66, 61, 72, 70, "]", "[", 66, 61, 72, 69, "]", "[", 66, 61, 72, 68, "]", "[", 66, 61, 72, 67, "]", "[", 66, 61, 72, 65, "]", "[", 66, 61, 72, 64, "]", "[", 66, 61, 72, 63, "]", "[", 66, 61, 72, 62, "]", "[", 66, 61, 72, 60, "]", "[", 66, 61, 71, 72, "]", "[", 66, 61, 71, 70, "]", "[", 66, 61, 71, 69, "]", "[", 66, 61, 71, 68, "]", "[", 66, 61, 71, 67, "]", "[", 66, 61, 71, 65, "]", "[", 66, 61, 71, 64, "]", "[", 66, 61, 71, 63, "]", "[", 66, 61, 71, 62, "]", "[", 66, 61, 71, 60, "]", "[", 66, 61, 70, 72, "]", "[", 66, 61, 70, 71, "]", "[", 66, 61, 70, 69, "]", "[", 66, 61, 70, 68, "]", "[", 66, 61, 70, 67, "]", "[", 66, 61, 70, 65, "]", "[", 66, 61, 70, 64, "]", "[", 66, 61, 70, 63, "]", "[", 66, 61, 70, 62, "]", "[", 66, 61, 70, 60, "]", "[", 66, 61, 69, 72, "]", "[", 66, 61, 69, 71, "]", "[", 66, 61, 69, 70, "]", "[", 66, 61, 69, 68, "]", "[", 66, 61, 69, 67, "]", "[", 66, 61, 69, 65, "]", "[", 66, 61, 69, 64, "]", "[", 66, 61, 69, 63, "]", "[", 66, 61, 69, 62, "]", "[", 66, 61, 69, 60, "]", "[", 66, 61, 68, 72, "]", "[", 66, 61, 68, 71, "]", "[", 66, 61, 68, 70, "]", "[", 66, 61, 68, 69, "]", "[", 66, 61, 68, 67, "]", "[", 66, 61, 68, 65, "]", "[", 66, 61, 68, 64, "]", "[", 66, 61, 68, 63, "]", "[", 66, 61, 68, 62, "]", "[", 66, 61, 68, 60, "]", "[", 66, 61, 67, 72, "]", "[", 66, 61, 67, 71, "]", "[", 66, 61, 67, 70, "]", "[", 66, 61, 67, 69, "]", "[", 66, 61, 67, 68, "]", "[", 66, 61, 67, 65, "]", "[", 66, 61, 67, 64, "]", "[", 66, 61, 67, 63, "]", "[", 66, 61, 67, 62, "]", "[", 66, 61, 67, 60, "]", "[", 66, 61, 65, 72, "]", "[", 66, 61, 65, 71, "]", "[", 66, 61, 65, 70, "]", "[", 66, 61, 65, 69, "]", "[", 66, 61, 65, 68, "]", "[", 66, 61, 65, 67, "]", "[", 66, 61, 65, 64, "]", "[", 66, 61, 65, 63, "]", "[", 66, 61, 65, 62, "]", "[", 66, 61, 65, 60, "]", "[", 66, 61, 64, 72, "]", "[", 66, 61, 64, 71, "]", "[", 66, 61, 64, 70, "]", "[", 66, 61, 64, 69, "]", "[", 66, 61, 64, 68, "]", "[", 66, 61, 64, 67, "]", "[", 66, 61, 64, 65, "]", "[", 66, 61, 64, 63, "]", "[", 66, 61, 64, 62, "]", "[", 66, 61, 64, 60, "]", "[", 66, 61, 63, 72, "]", "[", 66, 61, 63, 71, "]", "[", 66, 61, 63, 70, "]", "[", 66, 61, 63, 69, "]", "[", 66, 61, 63, 68, "]", "[", 66, 61, 63, 67, "]", "[", 66, 61, 63, 65, "]", "[", 66, 61, 63, 64, "]", "[", 66, 61, 63, 62, "]", "[", 66, 61, 63, 60, "]", "[", 66, 61, 62, 72, "]", "[", 66, 61, 62, 71, "]", "[", 66, 61, 62, 70, "]", "[", 66, 61, 62, 69, "]", "[", 66, 61, 62, 68, "]", "[", 66, 61, 62, 67, "]", "[", 66, 61, 62, 65, "]", "[", 66, 61, 62, 64, "]", "[", 66, 61, 62, 63, "]", "[", 66, 61, 62, 60, "]", "[", 66, 61, 60, 72, "]", "[", 66, 61, 60, 71, "]", "[", 66, 61, 60, 70, "]", "[", 66, 61, 60, 69, "]", "[", 66, 61, 60, 68, "]", "[", 66, 61, 60, 67, "]", "[", 66, 61, 60, 65, "]", "[", 66, 61, 60, 64, "]", "[", 66, 61, 60, 63, "]", "[", 66, 61, 60, 62, "]", "[", 66, 60, 72, 71, "]", "[", 66, 60, 72, 70, "]", "[", 66, 60, 72, 69, "]", "[", 66, 60, 72, 68, "]", "[", 66, 60, 72, 67, "]", "[", 66, 60, 72, 65, "]", "[", 66, 60, 72, 64, "]", "[", 66, 60, 72, 63, "]", "[", 66, 60, 72, 62, "]", "[", 66, 60, 72, 61, "]", "[", 66, 60, 71, 72, "]", "[", 66, 60, 71, 70, "]", "[", 66, 60, 71, 69, "]", "[", 66, 60, 71, 68, "]", "[", 66, 60, 71, 67, "]", "[", 66, 60, 71, 65, "]", "[", 66, 60, 71, 64, "]", "[", 66, 60, 71, 63, "]", "[", 66, 60, 71, 62, "]", "[", 66, 60, 71, 61, "]", "[", 66, 60, 70, 72, "]", "[", 66, 60, 70, 71, "]", "[", 66, 60, 70, 69, "]", "[", 66, 60, 70, 68, "]", "[", 66, 60, 70, 67, "]", "[", 66, 60, 70, 65, "]", "[", 66, 60, 70, 64, "]", "[", 66, 60, 70, 63, "]", "[", 66, 60, 70, 62, "]", "[", 66, 60, 70, 61, "]", "[", 66, 60, 69, 72, "]", "[", 66, 60, 69, 71, "]", "[", 66, 60, 69, 70, "]", "[", 66, 60, 69, 68, "]", "[", 66, 60, 69, 67, "]", "[", 66, 60, 69, 65, "]", "[", 66, 60, 69, 64, "]", "[", 66, 60, 69, 63, "]", "[", 66, 60, 69, 62, "]", "[", 66, 60, 69, 61, "]", "[", 66, 60, 68, 72, "]", "[", 66, 60, 68, 71, "]", "[", 66, 60, 68, 70, "]", "[", 66, 60, 68, 69, "]", "[", 66, 60, 68, 67, "]", "[", 66, 60, 68, 65, "]", "[", 66, 60, 68, 64, "]", "[", 66, 60, 68, 63, "]", "[", 66, 60, 68, 62, "]", "[", 66, 60, 68, 61, "]", "[", 66, 60, 67, 72, "]", "[", 66, 60, 67, 71, "]", "[", 66, 60, 67, 70, "]", "[", 66, 60, 67, 69, "]", "[", 66, 60, 67, 68, "]", "[", 66, 60, 67, 65, "]", "[", 66, 60, 67, 64, "]", "[", 66, 60, 67, 63, "]", "[", 66, 60, 67, 62, "]", "[", 66, 60, 67, 61, "]", "[", 66, 60, 65, 72, "]", "[", 66, 60, 65, 71, "]", "[", 66, 60, 65, 70, "]", "[", 66, 60, 65, 69, "]", "[", 66, 60, 65, 68, "]", "[", 66, 60, 65, 67, "]", "[", 66, 60, 65, 64, "]", "[", 66, 60, 65, 63, "]", "[", 66, 60, 65, 62, "]", "[", 66, 60, 65, 61, "]", "[", 66, 60, 64, 72, "]", "[", 66, 60, 64, 71, "]", "[", 66, 60, 64, 70, "]", "[", 66, 60, 64, 69, "]", "[", 66, 60, 64, 68, "]", "[", 66, 60, 64, 67, "]", "[", 66, 60, 64, 65, "]", "[", 66, 60, 64, 63, "]", "[", 66, 60, 64, 62, "]", "[", 66, 60, 64, 61, "]", "[", 66, 60, 63, 72, "]", "[", 66, 60, 63, 71, "]", "[", 66, 60, 63, 70, "]", "[", 66, 60, 63, 69, "]", "[", 66, 60, 63, 68, "]", "[", 66, 60, 63, 67, "]", "[", 66, 60, 63, 65, "]", "[", 66, 60, 63, 64, "]", "[", 66, 60, 63, 62, "]", "[", 66, 60, 63, 61, "]", "[", 66, 60, 62, 72, "]", "[", 66, 60, 62, 71, "]", "[", 66, 60, 62, 70, "]", "[", 66, 60, 62, 69, "]", "[", 66, 60, 62, 68, "]", "[", 66, 60, 62, 67, "]", "[", 66, 60, 62, 65, "]", "[", 66, 60, 62, 64, "]", "[", 66, 60, 62, 63, "]", "[", 66, 60, 62, 61, "]", "[", 66, 60, 61, 72, "]", "[", 66, 60, 61, 71, "]", "[", 66, 60, 61, 70, "]", "[", 66, 60, 61, 69, "]", "[", 66, 60, 61, 68, "]", "[", 66, 60, 61, 67, "]", "[", 66, 60, 61, 65, "]", "[", 66, 60, 61, 64, "]", "[", 66, 60, 61, 63, "]", "[", 66, 60, 61, 62, "]", "[", 65, 72, 71, 70, "]", "[", 65, 72, 71, 69, "]", "[", 65, 72, 71, 68, "]", "[", 65, 72, 71, 67, "]", "[", 65, 72, 71, 66, "]", "[", 65, 72, 71, 64, "]", "[", 65, 72, 71, 63, "]", "[", 65, 72, 71, 62, "]", "[", 65, 72, 71, 61, "]", "[", 65, 72, 71, 60, "]", "[", 65, 72, 70, 71, "]", "[", 65, 72, 70, 69, "]", "[", 65, 72, 70, 68, "]", "[", 65, 72, 70, 67, "]", "[", 65, 72, 70, 66, "]", "[", 65, 72, 70, 64, "]", "[", 65, 72, 70, 63, "]", "[", 65, 72, 70, 62, "]", "[", 65, 72, 70, 61, "]", "[", 65, 72, 70, 60, "]", "[", 65, 72, 69, 71, "]", "[", 65, 72, 69, 70, "]", "[", 65, 72, 69, 68, "]", "[", 65, 72, 69, 67, "]", "[", 65, 72, 69, 66, "]", "[", 65, 72, 69, 64, "]", "[", 65, 72, 69, 63, "]", "[", 65, 72, 69, 62, "]", "[", 65, 72, 69, 61, "]", "[", 65, 72, 69, 60, "]", "[", 65, 72, 68, 71, "]", "[", 65, 72, 68, 70, "]", "[", 65, 72, 68, 69, "]", "[", 65, 72, 68, 67, "]", "[", 65, 72, 68, 66, "]", "[", 65, 72, 68, 64, "]", "[", 65, 72, 68, 63, "]", "[", 65, 72, 68, 62, "]", "[", 65, 72, 68, 61, "]", "[", 65, 72, 68, 60, "]", "[", 65, 72, 67, 71, "]", "[", 65, 72, 67, 70, "]", "[", 65, 72, 67, 69, "]", "[", 65, 72, 67, 68, "]", "[", 65, 72, 67, 66, "]", "[", 65, 72, 67, 64, "]", "[", 65, 72, 67, 63, "]", "[", 65, 72, 67, 62, "]", "[", 65, 72, 67, 61, "]", "[", 65, 72, 67, 60, "]", "[", 65, 72, 66, 71, "]", "[", 65, 72, 66, 70, "]", "[", 65, 72, 66, 69, "]", "[", 65, 72, 66, 68, "]", "[", 65, 72, 66, 67, "]", "[", 65, 72, 66, 64, "]", "[", 65, 72, 66, 63, "]", "[", 65, 72, 66, 62, "]", "[", 65, 72, 66, 61, "]", "[", 65, 72, 66, 60, "]", "[", 65, 72, 64, 71, "]", "[", 65, 72, 64, 70, "]", "[", 65, 72, 64, 69, "]", "[", 65, 72, 64, 68, "]", "[", 65, 72, 64, 67, "]", "[", 65, 72, 64, 66, "]", "[", 65, 72, 64, 63, "]", "[", 65, 72, 64, 62, "]", "[", 65, 72, 64, 61, "]", "[", 65, 72, 64, 60, "]", "[", 65, 72, 63, 71, "]", "[", 65, 72, 63, 70, "]", "[", 65, 72, 63, 69, "]", "[", 65, 72, 63, 68, "]", "[", 65, 72, 63, 67, "]", "[", 65, 72, 63, 66, "]", "[", 65, 72, 63, 64, "]", "[", 65, 72, 63, 62, "]", "[", 65, 72, 63, 61, "]", "[", 65, 72, 63, 60, "]", "[", 65, 72, 62, 71, "]", "[", 65, 72, 62, 70, "]", "[", 65, 72, 62, 69, "]", "[", 65, 72, 62, 68, "]", "[", 65, 72, 62, 67, "]", "[", 65, 72, 62, 66, "]", "[", 65, 72, 62, 64, "]", "[", 65, 72, 62, 63, "]", "[", 65, 72, 62, 61, "]", "[", 65, 72, 62, 60, "]", "[", 65, 72, 61, 71, "]", "[", 65, 72, 61, 70, "]", "[", 65, 72, 61, 69, "]", "[", 65, 72, 61, 68, "]", "[", 65, 72, 61, 67, "]", "[", 65, 72, 61, 66, "]", "[", 65, 72, 61, 64, "]", "[", 65, 72, 61, 63, "]", "[", 65, 72, 61, 62, "]", "[", 65, 72, 61, 60, "]", "[", 65, 72, 60, 71, "]", "[", 65, 72, 60, 70, "]", "[", 65, 72, 60, 69, "]", "[", 65, 72, 60, 68, "]", "[", 65, 72, 60, 67, "]", "[", 65, 72, 60, 66, "]", "[", 65, 72, 60, 64, "]", "[", 65, 72, 60, 63, "]", "[", 65, 72, 60, 62, "]", "[", 65, 72, 60, 61, "]", "[", 65, 71, 72, 70, "]", "[", 65, 71, 72, 69, "]", "[", 65, 71, 72, 68, "]", "[", 65, 71, 72, 67, "]", "[", 65, 71, 72, 66, "]", "[", 65, 71, 72, 64, "]", "[", 65, 71, 72, 63, "]", "[", 65, 71, 72, 62, "]", "[", 65, 71, 72, 61, "]", "[", 65, 71, 72, 60, "]", "[", 65, 71, 70, 72, "]", "[", 65, 71, 70, 69, "]", "[", 65, 71, 70, 68, "]", "[", 65, 71, 70, 67, "]", "[", 65, 71, 70, 66, "]", "[", 65, 71, 70, 64, "]", "[", 65, 71, 70, 63, "]", "[", 65, 71, 70, 62, "]", "[", 65, 71, 70, 61, "]", "[", 65, 71, 70, 60, "]", "[", 65, 71, 69, 72, "]", "[", 65, 71, 69, 70, "]", "[", 65, 71, 69, 68, "]", "[", 65, 71, 69, 67, "]", "[", 65, 71, 69, 66, "]", "[", 65, 71, 69, 64, "]", "[", 65, 71, 69, 63, "]", "[", 65, 71, 69, 62, "]", "[", 65, 71, 69, 61, "]", "[", 65, 71, 69, 60, "]", "[", 65, 71, 68, 72, "]", "[", 65, 71, 68, 70, "]", "[", 65, 71, 68, 69, "]", "[", 65, 71, 68, 67, "]", "[", 65, 71, 68, 66, "]", "[", 65, 71, 68, 64, "]", "[", 65, 71, 68, 63, "]", "[", 65, 71, 68, 62, "]", "[", 65, 71, 68, 61, "]", "[", 65, 71, 68, 60, "]", "[", 65, 71, 67, 72, "]", "[", 65, 71, 67, 70, "]", "[", 65, 71, 67, 69, "]", "[", 65, 71, 67, 68, "]", "[", 65, 71, 67, 66, "]", "[", 65, 71, 67, 64, "]", "[", 65, 71, 67, 63, "]", "[", 65, 71, 67, 62, "]", "[", 65, 71, 67, 61, "]", "[", 65, 71, 67, 60, "]", "[", 65, 71, 66, 72, "]", "[", 65, 71, 66, 70, "]", "[", 65, 71, 66, 69, "]", "[", 65, 71, 66, 68, "]", "[", 65, 71, 66, 67, "]", "[", 65, 71, 66, 64, "]", "[", 65, 71, 66, 63, "]", "[", 65, 71, 66, 62, "]", "[", 65, 71, 66, 61, "]", "[", 65, 71, 66, 60, "]", "[", 65, 71, 64, 72, "]", "[", 65, 71, 64, 70, "]", "[", 65, 71, 64, 69, "]", "[", 65, 71, 64, 68, "]", "[", 65, 71, 64, 67, "]", "[", 65, 71, 64, 66, "]", "[", 65, 71, 64, 63, "]", "[", 65, 71, 64, 62, "]", "[", 65, 71, 64, 61, "]", "[", 65, 71, 64, 60, "]", "[", 65, 71, 63, 72, "]", "[", 65, 71, 63, 70, "]", "[", 65, 71, 63, 69, "]", "[", 65, 71, 63, 68, "]", "[", 65, 71, 63, 67, "]", "[", 65, 71, 63, 66, "]", "[", 65, 71, 63, 64, "]", "[", 65, 71, 63, 62, "]", "[", 65, 71, 63, 61, "]", "[", 65, 71, 63, 60, "]", "[", 65, 71, 62, 72, "]", "[", 65, 71, 62, 70, "]", "[", 65, 71, 62, 69, "]", "[", 65, 71, 62, 68, "]", "[", 65, 71, 62, 67, "]", "[", 65, 71, 62, 66, "]", "[", 65, 71, 62, 64, "]", "[", 65, 71, 62, 63, "]", "[", 65, 71, 62, 61, "]", "[", 65, 71, 62, 60, "]", "[", 65, 71, 61, 72, "]", "[", 65, 71, 61, 70, "]", "[", 65, 71, 61, 69, "]", "[", 65, 71, 61, 68, "]", "[", 65, 71, 61, 67, "]", "[", 65, 71, 61, 66, "]", "[", 65, 71, 61, 64, "]", "[", 65, 71, 61, 63, "]", "[", 65, 71, 61, 62, "]", "[", 65, 71, 61, 60, "]", "[", 65, 71, 60, 72, "]", "[", 65, 71, 60, 70, "]", "[", 65, 71, 60, 69, "]", "[", 65, 71, 60, 68, "]", "[", 65, 71, 60, 67, "]", "[", 65, 71, 60, 66, "]", "[", 65, 71, 60, 64, "]", "[", 65, 71, 60, 63, "]", "[", 65, 71, 60, 62, "]", "[", 65, 71, 60, 61, "]", "[", 65, 70, 72, 71, "]", "[", 65, 70, 72, 69, "]", "[", 65, 70, 72, 68, "]", "[", 65, 70, 72, 67, "]", "[", 65, 70, 72, 66, "]", "[", 65, 70, 72, 64, "]", "[", 65, 70, 72, 63, "]", "[", 65, 70, 72, 62, "]", "[", 65, 70, 72, 61, "]", "[", 65, 70, 72, 60, "]", "[", 65, 70, 71, 72, "]", "[", 65, 70, 71, 69, "]", "[", 65, 70, 71, 68, "]", "[", 65, 70, 71, 67, "]", "[", 65, 70, 71, 66, "]", "[", 65, 70, 71, 64, "]", "[", 65, 70, 71, 63, "]", "[", 65, 70, 71, 62, "]", "[", 65, 70, 71, 61, "]", "[", 65, 70, 71, 60, "]", "[", 65, 70, 69, 72, "]", "[", 65, 70, 69, 71, "]", "[", 65, 70, 69, 68, "]", "[", 65, 70, 69, 67, "]", "[", 65, 70, 69, 66, "]", "[", 65, 70, 69, 64, "]", "[", 65, 70, 69, 63, "]", "[", 65, 70, 69, 62, "]", "[", 65, 70, 69, 61, "]", "[", 65, 70, 69, 60, "]", "[", 65, 70, 68, 72, "]", "[", 65, 70, 68, 71, "]", "[", 65, 70, 68, 69, "]", "[", 65, 70, 68, 67, "]", "[", 65, 70, 68, 66, "]", "[", 65, 70, 68, 64, "]", "[", 65, 70, 68, 63, "]", "[", 65, 70, 68, 62, "]", "[", 65, 70, 68, 61, "]", "[", 65, 70, 68, 60, "]", "[", 65, 70, 67, 72, "]", "[", 65, 70, 67, 71, "]", "[", 65, 70, 67, 69, "]", "[", 65, 70, 67, 68, "]", "[", 65, 70, 67, 66, "]", "[", 65, 70, 67, 64, "]", "[", 65, 70, 67, 63, "]", "[", 65, 70, 67, 62, "]", "[", 65, 70, 67, 61, "]", "[", 65, 70, 67, 60, "]", "[", 65, 70, 66, 72, "]", "[", 65, 70, 66, 71, "]", "[", 65, 70, 66, 69, "]", "[", 65, 70, 66, 68, "]", "[", 65, 70, 66, 67, "]", "[", 65, 70, 66, 64, "]", "[", 65, 70, 66, 63, "]", "[", 65, 70, 66, 62, "]", "[", 65, 70, 66, 61, "]", "[", 65, 70, 66, 60, "]", "[", 65, 70, 64, 72, "]", "[", 65, 70, 64, 71, "]", "[", 65, 70, 64, 69, "]", "[", 65, 70, 64, 68, "]", "[", 65, 70, 64, 67, "]", "[", 65, 70, 64, 66, "]", "[", 65, 70, 64, 63, "]", "[", 65, 70, 64, 62, "]", "[", 65, 70, 64, 61, "]", "[", 65, 70, 64, 60, "]", "[", 65, 70, 63, 72, "]", "[", 65, 70, 63, 71, "]", "[", 65, 70, 63, 69, "]", "[", 65, 70, 63, 68, "]", "[", 65, 70, 63, 67, "]", "[", 65, 70, 63, 66, "]", "[", 65, 70, 63, 64, "]", "[", 65, 70, 63, 62, "]", "[", 65, 70, 63, 61, "]", "[", 65, 70, 63, 60, "]", "[", 65, 70, 62, 72, "]", "[", 65, 70, 62, 71, "]", "[", 65, 70, 62, 69, "]", "[", 65, 70, 62, 68, "]", "[", 65, 70, 62, 67, "]", "[", 65, 70, 62, 66, "]", "[", 65, 70, 62, 64, "]", "[", 65, 70, 62, 63, "]", "[", 65, 70, 62, 61, "]", "[", 65, 70, 62, 60, "]", "[", 65, 70, 61, 72, "]", "[", 65, 70, 61, 71, "]", "[", 65, 70, 61, 69, "]", "[", 65, 70, 61, 68, "]", "[", 65, 70, 61, 67, "]", "[", 65, 70, 61, 66, "]", "[", 65, 70, 61, 64, "]", "[", 65 ],
													"reg_data_0000000014" : [ 70, 61, 63, "]", "[", 65, 70, 61, 62, "]", "[", 65, 70, 61, 60, "]", "[", 65, 70, 60, 72, "]", "[", 65, 70, 60, 71, "]", "[", 65, 70, 60, 69, "]", "[", 65, 70, 60, 68, "]", "[", 65, 70, 60, 67, "]", "[", 65, 70, 60, 66, "]", "[", 65, 70, 60, 64, "]", "[", 65, 70, 60, 63, "]", "[", 65, 70, 60, 62, "]", "[", 65, 70, 60, 61, "]", "[", 65, 69, 72, 71, "]", "[", 65, 69, 72, 70, "]", "[", 65, 69, 72, 68, "]", "[", 65, 69, 72, 67, "]", "[", 65, 69, 72, 66, "]", "[", 65, 69, 72, 64, "]", "[", 65, 69, 72, 63, "]", "[", 65, 69, 72, 62, "]", "[", 65, 69, 72, 61, "]", "[", 65, 69, 72, 60, "]", "[", 65, 69, 71, 72, "]", "[", 65, 69, 71, 70, "]", "[", 65, 69, 71, 68, "]", "[", 65, 69, 71, 67, "]", "[", 65, 69, 71, 66, "]", "[", 65, 69, 71, 64, "]", "[", 65, 69, 71, 63, "]", "[", 65, 69, 71, 62, "]", "[", 65, 69, 71, 61, "]", "[", 65, 69, 71, 60, "]", "[", 65, 69, 70, 72, "]", "[", 65, 69, 70, 71, "]", "[", 65, 69, 70, 68, "]", "[", 65, 69, 70, 67, "]", "[", 65, 69, 70, 66, "]", "[", 65, 69, 70, 64, "]", "[", 65, 69, 70, 63, "]", "[", 65, 69, 70, 62, "]", "[", 65, 69, 70, 61, "]", "[", 65, 69, 70, 60, "]", "[", 65, 69, 68, 72, "]", "[", 65, 69, 68, 71, "]", "[", 65, 69, 68, 70, "]", "[", 65, 69, 68, 67, "]", "[", 65, 69, 68, 66, "]", "[", 65, 69, 68, 64, "]", "[", 65, 69, 68, 63, "]", "[", 65, 69, 68, 62, "]", "[", 65, 69, 68, 61, "]", "[", 65, 69, 68, 60, "]", "[", 65, 69, 67, 72, "]", "[", 65, 69, 67, 71, "]", "[", 65, 69, 67, 70, "]", "[", 65, 69, 67, 68, "]", "[", 65, 69, 67, 66, "]", "[", 65, 69, 67, 64, "]", "[", 65, 69, 67, 63, "]", "[", 65, 69, 67, 62, "]", "[", 65, 69, 67, 61, "]", "[", 65, 69, 67, 60, "]", "[", 65, 69, 66, 72, "]", "[", 65, 69, 66, 71, "]", "[", 65, 69, 66, 70, "]", "[", 65, 69, 66, 68, "]", "[", 65, 69, 66, 67, "]", "[", 65, 69, 66, 64, "]", "[", 65, 69, 66, 63, "]", "[", 65, 69, 66, 62, "]", "[", 65, 69, 66, 61, "]", "[", 65, 69, 66, 60, "]", "[", 65, 69, 64, 72, "]", "[", 65, 69, 64, 71, "]", "[", 65, 69, 64, 70, "]", "[", 65, 69, 64, 68, "]", "[", 65, 69, 64, 67, "]", "[", 65, 69, 64, 66, "]", "[", 65, 69, 64, 63, "]", "[", 65, 69, 64, 62, "]", "[", 65, 69, 64, 61, "]", "[", 65, 69, 64, 60, "]", "[", 65, 69, 63, 72, "]", "[", 65, 69, 63, 71, "]", "[", 65, 69, 63, 70, "]", "[", 65, 69, 63, 68, "]", "[", 65, 69, 63, 67, "]", "[", 65, 69, 63, 66, "]", "[", 65, 69, 63, 64, "]", "[", 65, 69, 63, 62, "]", "[", 65, 69, 63, 61, "]", "[", 65, 69, 63, 60, "]", "[", 65, 69, 62, 72, "]", "[", 65, 69, 62, 71, "]", "[", 65, 69, 62, 70, "]", "[", 65, 69, 62, 68, "]", "[", 65, 69, 62, 67, "]", "[", 65, 69, 62, 66, "]", "[", 65, 69, 62, 64, "]", "[", 65, 69, 62, 63, "]", "[", 65, 69, 62, 61, "]", "[", 65, 69, 62, 60, "]", "[", 65, 69, 61, 72, "]", "[", 65, 69, 61, 71, "]", "[", 65, 69, 61, 70, "]", "[", 65, 69, 61, 68, "]", "[", 65, 69, 61, 67, "]", "[", 65, 69, 61, 66, "]", "[", 65, 69, 61, 64, "]", "[", 65, 69, 61, 63, "]", "[", 65, 69, 61, 62, "]", "[", 65, 69, 61, 60, "]", "[", 65, 69, 60, 72, "]", "[", 65, 69, 60, 71, "]", "[", 65, 69, 60, 70, "]", "[", 65, 69, 60, 68, "]", "[", 65, 69, 60, 67, "]", "[", 65, 69, 60, 66, "]", "[", 65, 69, 60, 64, "]", "[", 65, 69, 60, 63, "]", "[", 65, 69, 60, 62, "]", "[", 65, 69, 60, 61, "]", "[", 65, 68, 72, 71, "]", "[", 65, 68, 72, 70, "]", "[", 65, 68, 72, 69, "]", "[", 65, 68, 72, 67, "]", "[", 65, 68, 72, 66, "]", "[", 65, 68, 72, 64, "]", "[", 65, 68, 72, 63, "]", "[", 65, 68, 72, 62, "]", "[", 65, 68, 72, 61, "]", "[", 65, 68, 72, 60, "]", "[", 65, 68, 71, 72, "]", "[", 65, 68, 71, 70, "]", "[", 65, 68, 71, 69, "]", "[", 65, 68, 71, 67, "]", "[", 65, 68, 71, 66, "]", "[", 65, 68, 71, 64, "]", "[", 65, 68, 71, 63, "]", "[", 65, 68, 71, 62, "]", "[", 65, 68, 71, 61, "]", "[", 65, 68, 71, 60, "]", "[", 65, 68, 70, 72, "]", "[", 65, 68, 70, 71, "]", "[", 65, 68, 70, 69, "]", "[", 65, 68, 70, 67, "]", "[", 65, 68, 70, 66, "]", "[", 65, 68, 70, 64, "]", "[", 65, 68, 70, 63, "]", "[", 65, 68, 70, 62, "]", "[", 65, 68, 70, 61, "]", "[", 65, 68, 70, 60, "]", "[", 65, 68, 69, 72, "]", "[", 65, 68, 69, 71, "]", "[", 65, 68, 69, 70, "]", "[", 65, 68, 69, 67, "]", "[", 65, 68, 69, 66, "]", "[", 65, 68, 69, 64, "]", "[", 65, 68, 69, 63, "]", "[", 65, 68, 69, 62, "]", "[", 65, 68, 69, 61, "]", "[", 65, 68, 69, 60, "]", "[", 65, 68, 67, 72, "]", "[", 65, 68, 67, 71, "]", "[", 65, 68, 67, 70, "]", "[", 65, 68, 67, 69, "]", "[", 65, 68, 67, 66, "]", "[", 65, 68, 67, 64, "]", "[", 65, 68, 67, 63, "]", "[", 65, 68, 67, 62, "]", "[", 65, 68, 67, 61, "]", "[", 65, 68, 67, 60, "]", "[", 65, 68, 66, 72, "]", "[", 65, 68, 66, 71, "]", "[", 65, 68, 66, 70, "]", "[", 65, 68, 66, 69, "]", "[", 65, 68, 66, 67, "]", "[", 65, 68, 66, 64, "]", "[", 65, 68, 66, 63, "]", "[", 65, 68, 66, 62, "]", "[", 65, 68, 66, 61, "]", "[", 65, 68, 66, 60, "]", "[", 65, 68, 64, 72, "]", "[", 65, 68, 64, 71, "]", "[", 65, 68, 64, 70, "]", "[", 65, 68, 64, 69, "]", "[", 65, 68, 64, 67, "]", "[", 65, 68, 64, 66, "]", "[", 65, 68, 64, 63, "]", "[", 65, 68, 64, 62, "]", "[", 65, 68, 64, 61, "]", "[", 65, 68, 64, 60, "]", "[", 65, 68, 63, 72, "]", "[", 65, 68, 63, 71, "]", "[", 65, 68, 63, 70, "]", "[", 65, 68, 63, 69, "]", "[", 65, 68, 63, 67, "]", "[", 65, 68, 63, 66, "]", "[", 65, 68, 63, 64, "]", "[", 65, 68, 63, 62, "]", "[", 65, 68, 63, 61, "]", "[", 65, 68, 63, 60, "]", "[", 65, 68, 62, 72, "]", "[", 65, 68, 62, 71, "]", "[", 65, 68, 62, 70, "]", "[", 65, 68, 62, 69, "]", "[", 65, 68, 62, 67, "]", "[", 65, 68, 62, 66, "]", "[", 65, 68, 62, 64, "]", "[", 65, 68, 62, 63, "]", "[", 65, 68, 62, 61, "]", "[", 65, 68, 62, 60, "]", "[", 65, 68, 61, 72, "]", "[", 65, 68, 61, 71, "]", "[", 65, 68, 61, 70, "]", "[", 65, 68, 61, 69, "]", "[", 65, 68, 61, 67, "]", "[", 65, 68, 61, 66, "]", "[", 65, 68, 61, 64, "]", "[", 65, 68, 61, 63, "]", "[", 65, 68, 61, 62, "]", "[", 65, 68, 61, 60, "]", "[", 65, 68, 60, 72, "]", "[", 65, 68, 60, 71, "]", "[", 65, 68, 60, 70, "]", "[", 65, 68, 60, 69, "]", "[", 65, 68, 60, 67, "]", "[", 65, 68, 60, 66, "]", "[", 65, 68, 60, 64, "]", "[", 65, 68, 60, 63, "]", "[", 65, 68, 60, 62, "]", "[", 65, 68, 60, 61, "]", "[", 65, 67, 72, 71, "]", "[", 65, 67, 72, 70, "]", "[", 65, 67, 72, 69, "]", "[", 65, 67, 72, 68, "]", "[", 65, 67, 72, 66, "]", "[", 65, 67, 72, 64, "]", "[", 65, 67, 72, 63, "]", "[", 65, 67, 72, 62, "]", "[", 65, 67, 72, 61, "]", "[", 65, 67, 72, 60, "]", "[", 65, 67, 71, 72, "]", "[", 65, 67, 71, 70, "]", "[", 65, 67, 71, 69, "]", "[", 65, 67, 71, 68, "]", "[", 65, 67, 71, 66, "]", "[", 65, 67, 71, 64, "]", "[", 65, 67, 71, 63, "]", "[", 65, 67, 71, 62, "]", "[", 65, 67, 71, 61, "]", "[", 65, 67, 71, 60, "]", "[", 65, 67, 70, 72, "]", "[", 65, 67, 70, 71, "]", "[", 65, 67, 70, 69, "]", "[", 65, 67, 70, 68, "]", "[", 65, 67, 70, 66, "]", "[", 65, 67, 70, 64, "]", "[", 65, 67, 70, 63, "]", "[", 65, 67, 70, 62, "]", "[", 65, 67, 70, 61, "]", "[", 65, 67, 70, 60, "]", "[", 65, 67, 69, 72, "]", "[", 65, 67, 69, 71, "]", "[", 65, 67, 69, 70, "]", "[", 65, 67, 69, 68, "]", "[", 65, 67, 69, 66, "]", "[", 65, 67, 69, 64, "]", "[", 65, 67, 69, 63, "]", "[", 65, 67, 69, 62, "]", "[", 65, 67, 69, 61, "]", "[", 65, 67, 69, 60, "]", "[", 65, 67, 68, 72, "]", "[", 65, 67, 68, 71, "]", "[", 65, 67, 68, 70, "]", "[", 65, 67, 68, 69, "]", "[", 65, 67, 68, 66, "]", "[", 65, 67, 68, 64, "]", "[", 65, 67, 68, 63, "]", "[", 65, 67, 68, 62, "]", "[", 65, 67, 68, 61, "]", "[", 65, 67, 68, 60, "]", "[", 65, 67, 66, 72, "]", "[", 65, 67, 66, 71, "]", "[", 65, 67, 66, 70, "]", "[", 65, 67, 66, 69, "]", "[", 65, 67, 66, 68, "]", "[", 65, 67, 66, 64, "]", "[", 65, 67, 66, 63, "]", "[", 65, 67, 66, 62, "]", "[", 65, 67, 66, 61, "]", "[", 65, 67, 66, 60, "]", "[", 65, 67, 64, 72, "]", "[", 65, 67, 64, 71, "]", "[", 65, 67, 64, 70, "]", "[", 65, 67, 64, 69, "]", "[", 65, 67, 64, 68, "]", "[", 65, 67, 64, 66, "]", "[", 65, 67, 64, 63, "]", "[", 65, 67, 64, 62, "]", "[", 65, 67, 64, 61, "]", "[", 65, 67, 64, 60, "]", "[", 65, 67, 63, 72, "]", "[", 65, 67, 63, 71, "]", "[", 65, 67, 63, 70, "]", "[", 65, 67, 63, 69, "]", "[", 65, 67, 63, 68, "]", "[", 65, 67, 63, 66, "]", "[", 65, 67, 63, 64, "]", "[", 65, 67, 63, 62, "]", "[", 65, 67, 63, 61, "]", "[", 65, 67, 63, 60, "]", "[", 65, 67, 62, 72, "]", "[", 65, 67, 62, 71, "]", "[", 65, 67, 62, 70, "]", "[", 65, 67, 62, 69, "]", "[", 65, 67, 62, 68, "]", "[", 65, 67, 62, 66, "]", "[", 65, 67, 62, 64, "]", "[", 65, 67, 62, 63, "]", "[", 65, 67, 62, 61, "]", "[", 65, 67, 62, 60, "]", "[", 65, 67, 61, 72, "]", "[", 65, 67, 61, 71, "]", "[", 65, 67, 61, 70, "]", "[", 65, 67, 61, 69, "]", "[", 65, 67, 61, 68, "]", "[", 65, 67, 61, 66, "]", "[", 65, 67, 61, 64, "]", "[", 65, 67, 61, 63, "]", "[", 65, 67, 61, 62, "]", "[", 65, 67, 61, 60, "]", "[", 65, 67, 60, 72, "]", "[", 65, 67, 60, 71, "]", "[", 65, 67, 60, 70, "]", "[", 65, 67, 60, 69, "]", "[", 65, 67, 60, 68, "]", "[", 65, 67, 60, 66, "]", "[", 65, 67, 60, 64, "]", "[", 65, 67, 60, 63, "]", "[", 65, 67, 60, 62, "]", "[", 65, 67, 60, 61, "]", "[", 65, 66, 72, 71, "]", "[", 65, 66, 72, 70, "]", "[", 65, 66, 72, 69, "]", "[", 65, 66, 72, 68, "]", "[", 65, 66, 72, 67, "]", "[", 65, 66, 72, 64, "]", "[", 65, 66, 72, 63, "]", "[", 65, 66, 72, 62, "]", "[", 65, 66, 72, 61, "]", "[", 65, 66, 72, 60, "]", "[", 65, 66, 71, 72, "]", "[", 65, 66, 71, 70, "]", "[", 65, 66, 71, 69, "]", "[", 65, 66, 71, 68, "]", "[", 65, 66, 71, 67, "]", "[", 65, 66, 71, 64, "]", "[", 65, 66, 71, 63, "]", "[", 65, 66, 71, 62, "]", "[", 65, 66, 71, 61, "]", "[", 65, 66, 71, 60, "]", "[", 65, 66, 70, 72, "]", "[", 65, 66, 70, 71, "]", "[", 65, 66, 70, 69, "]", "[", 65, 66, 70, 68, "]", "[", 65, 66, 70, 67, "]", "[", 65, 66, 70, 64, "]", "[", 65, 66, 70, 63, "]", "[", 65, 66, 70, 62, "]", "[", 65, 66, 70, 61, "]", "[", 65, 66, 70, 60, "]", "[", 65, 66, 69, 72, "]", "[", 65, 66, 69, 71, "]", "[", 65, 66, 69, 70, "]", "[", 65, 66, 69, 68, "]", "[", 65, 66, 69, 67, "]", "[", 65, 66, 69, 64, "]", "[", 65, 66, 69, 63, "]", "[", 65, 66, 69, 62, "]", "[", 65, 66, 69, 61, "]", "[", 65, 66, 69, 60, "]", "[", 65, 66, 68, 72, "]", "[", 65, 66, 68, 71, "]", "[", 65, 66, 68, 70, "]", "[", 65, 66, 68, 69, "]", "[", 65, 66, 68, 67, "]", "[", 65, 66, 68, 64, "]", "[", 65, 66, 68, 63, "]", "[", 65, 66, 68, 62, "]", "[", 65, 66, 68, 61, "]", "[", 65, 66, 68, 60, "]", "[", 65, 66, 67, 72, "]", "[", 65, 66, 67, 71, "]", "[", 65, 66, 67, 70, "]", "[", 65, 66, 67, 69, "]", "[", 65, 66, 67, 68, "]", "[", 65, 66, 67, 64, "]", "[", 65, 66, 67, 63, "]", "[", 65, 66, 67, 62, "]", "[", 65, 66, 67, 61, "]", "[", 65, 66, 67, 60, "]", "[", 65, 66, 64, 72, "]", "[", 65, 66, 64, 71, "]", "[", 65, 66, 64, 70, "]", "[", 65, 66, 64, 69, "]", "[", 65, 66, 64, 68, "]", "[", 65, 66, 64, 67, "]", "[", 65, 66, 64, 63, "]", "[", 65, 66, 64, 62, "]", "[", 65, 66, 64, 61, "]", "[", 65, 66, 64, 60, "]", "[", 65, 66, 63, 72, "]", "[", 65, 66, 63, 71, "]", "[", 65, 66, 63, 70, "]", "[", 65, 66, 63, 69, "]", "[", 65, 66, 63, 68, "]", "[", 65, 66, 63, 67, "]", "[", 65, 66, 63, 64, "]", "[", 65, 66, 63, 62, "]", "[", 65, 66, 63, 61, "]", "[", 65, 66, 63, 60, "]", "[", 65, 66, 62, 72, "]", "[", 65, 66, 62, 71, "]", "[", 65, 66, 62, 70, "]", "[", 65, 66, 62, 69, "]", "[", 65, 66, 62, 68, "]", "[", 65, 66, 62, 67, "]", "[", 65, 66, 62, 64, "]", "[", 65, 66, 62, 63, "]", "[", 65, 66, 62, 61, "]", "[", 65, 66, 62, 60, "]", "[", 65, 66, 61, 72, "]", "[", 65, 66, 61, 71, "]", "[", 65, 66, 61, 70, "]", "[", 65, 66, 61, 69, "]", "[", 65, 66, 61, 68, "]", "[", 65, 66, 61, 67, "]", "[", 65, 66, 61, 64, "]", "[", 65, 66, 61, 63, "]", "[", 65, 66, 61, 62, "]", "[", 65, 66, 61, 60, "]", "[", 65, 66, 60, 72, "]", "[", 65, 66, 60, 71, "]", "[", 65, 66, 60, 70, "]", "[", 65, 66, 60, 69, "]", "[", 65, 66, 60, 68, "]", "[", 65, 66, 60, 67, "]", "[", 65, 66, 60, 64, "]", "[", 65, 66, 60, 63, "]", "[", 65, 66, 60, 62, "]", "[", 65, 66, 60, 61, "]", "[", 65, 64, 72, 71, "]", "[", 65, 64, 72, 70, "]", "[", 65, 64, 72, 69, "]", "[", 65, 64, 72, 68, "]", "[", 65, 64, 72, 67, "]", "[", 65, 64, 72, 66, "]", "[", 65, 64, 72, 63, "]", "[", 65, 64, 72, 62, "]", "[", 65, 64, 72, 61, "]", "[", 65, 64, 72, 60, "]", "[", 65, 64, 71, 72, "]", "[", 65, 64, 71, 70, "]", "[", 65, 64, 71, 69, "]", "[", 65, 64, 71, 68, "]", "[", 65, 64, 71, 67, "]", "[", 65, 64, 71, 66, "]", "[", 65, 64, 71, 63, "]", "[", 65, 64, 71, 62, "]", "[", 65, 64, 71, 61, "]", "[", 65, 64, 71, 60, "]", "[", 65, 64, 70, 72, "]", "[", 65, 64, 70, 71, "]", "[", 65, 64, 70, 69, "]", "[", 65, 64, 70, 68, "]", "[", 65, 64, 70, 67, "]", "[", 65, 64, 70, 66, "]", "[", 65, 64, 70, 63, "]", "[", 65, 64, 70, 62, "]", "[", 65, 64, 70, 61, "]", "[", 65, 64, 70, 60, "]", "[", 65, 64, 69, 72, "]", "[", 65, 64, 69, 71, "]", "[", 65, 64, 69, 70, "]", "[", 65, 64, 69, 68, "]", "[", 65, 64, 69, 67, "]", "[", 65, 64, 69, 66, "]", "[", 65, 64, 69, 63, "]", "[", 65, 64, 69, 62, "]", "[", 65, 64, 69, 61, "]", "[", 65, 64, 69, 60, "]", "[", 65, 64, 68, 72, "]", "[", 65, 64, 68, 71, "]", "[", 65, 64, 68, 70, "]", "[", 65, 64, 68, 69, "]", "[", 65, 64, 68, 67, "]", "[", 65, 64, 68, 66, "]", "[", 65, 64, 68, 63, "]", "[", 65, 64, 68, 62, "]", "[", 65, 64, 68, 61, "]", "[", 65, 64, 68, 60, "]", "[", 65, 64, 67, 72, "]", "[", 65, 64, 67, 71, "]", "[", 65, 64, 67, 70, "]", "[", 65, 64, 67, 69, "]", "[", 65, 64, 67, 68, "]", "[", 65, 64, 67, 66, "]", "[", 65, 64, 67, 63, "]", "[", 65, 64, 67, 62, "]", "[", 65, 64, 67, 61, "]", "[", 65, 64, 67, 60, "]", "[", 65, 64, 66, 72, "]", "[", 65, 64, 66, 71, "]", "[", 65, 64, 66, 70, "]", "[", 65, 64, 66, 69, "]", "[", 65, 64, 66, 68, "]", "[", 65, 64, 66, 67, "]", "[", 65, 64, 66, 63, "]", "[", 65, 64, 66, 62, "]", "[", 65, 64, 66, 61, "]", "[", 65, 64, 66, 60, "]", "[", 65, 64, 63, 72, "]", "[", 65, 64, 63, 71, "]", "[", 65, 64, 63, 70, "]", "[", 65, 64, 63, 69, "]", "[", 65, 64, 63, 68, "]", "[", 65, 64, 63, 67, "]", "[", 65, 64, 63, 66, "]", "[", 65, 64, 63, 62, "]", "[", 65, 64, 63, 61, "]", "[", 65, 64, 63, 60, "]", "[", 65, 64, 62, 72, "]", "[", 65, 64, 62, 71, "]", "[", 65, 64, 62, 70, "]", "[", 65, 64, 62, 69, "]", "[", 65, 64, 62, 68, "]", "[", 65, 64, 62, 67, "]", "[", 65, 64, 62, 66, "]", "[", 65, 64, 62, 63, "]", "[", 65, 64, 62, 61, "]", "[", 65, 64, 62, 60, "]", "[", 65, 64, 61, 72, "]", "[", 65, 64, 61, 71, "]", "[", 65, 64, 61, 70, "]", "[", 65, 64, 61, 69, "]", "[", 65, 64, 61, 68, "]", "[", 65, 64, 61, 67, "]", "[", 65, 64, 61, 66, "]", "[", 65, 64, 61, 63, "]", "[", 65, 64, 61, 62, "]", "[", 65, 64, 61, 60, "]", "[", 65, 64, 60, 72, "]", "[", 65, 64, 60, 71, "]", "[", 65, 64, 60, 70, "]", "[", 65, 64, 60, 69, "]", "[", 65, 64, 60, 68, "]", "[", 65, 64, 60, 67, "]", "[", 65, 64, 60, 66, "]", "[", 65, 64, 60, 63, "]", "[", 65, 64, 60, 62, "]", "[", 65, 64, 60, 61, "]", "[", 65, 63, 72, 71, "]", "[", 65, 63, 72, 70, "]", "[", 65, 63, 72, 69, "]", "[", 65, 63, 72, 68, "]", "[", 65, 63, 72, 67, "]", "[", 65, 63, 72, 66, "]", "[", 65, 63, 72, 64, "]", "[", 65, 63, 72, 62, "]", "[", 65, 63, 72, 61, "]", "[", 65, 63, 72, 60, "]", "[", 65, 63, 71, 72, "]", "[", 65, 63, 71, 70, "]", "[", 65, 63, 71, 69, "]", "[", 65, 63, 71, 68, "]", "[", 65, 63, 71, 67, "]", "[", 65, 63, 71, 66, "]", "[", 65, 63, 71, 64, "]", "[", 65, 63, 71, 62, "]", "[", 65, 63, 71, 61, "]", "[", 65, 63, 71, 60, "]", "[", 65, 63, 70, 72, "]", "[", 65, 63, 70, 71, "]", "[", 65, 63, 70, 69, "]", "[", 65, 63, 70, 68, "]", "[", 65, 63, 70, 67, "]", "[", 65, 63, 70, 66, "]", "[", 65, 63, 70, 64, "]", "[", 65, 63, 70, 62, "]", "[", 65, 63, 70, 61, "]", "[", 65, 63, 70, 60, "]", "[", 65, 63, 69, 72, "]", "[", 65, 63, 69, 71, "]", "[", 65, 63, 69, 70, "]", "[", 65, 63, 69, 68, "]", "[", 65, 63, 69, 67, "]", "[", 65, 63, 69, 66, "]", "[", 65, 63, 69, 64, "]", "[", 65, 63, 69, 62, "]", "[", 65, 63, 69, 61, "]", "[", 65, 63, 69, 60, "]", "[", 65, 63, 68, 72, "]", "[", 65, 63, 68, 71, "]", "[", 65, 63, 68, 70, "]", "[", 65, 63, 68, 69, "]", "[", 65, 63, 68, 67, "]", "[", 65, 63, 68, 66, "]", "[", 65, 63, 68, 64, "]", "[", 65, 63, 68, 62, "]", "[", 65, 63, 68, 61, "]", "[", 65, 63, 68, 60, "]", "[", 65, 63, 67, 72, "]", "[", 65, 63, 67, 71, "]", "[", 65, 63, 67, 70, "]", "[", 65, 63, 67, 69, "]", "[", 65, 63, 67, 68, "]", "[", 65, 63, 67, 66, "]", "[", 65, 63, 67, 64, "]", "[", 65, 63, 67, 62, "]", "[", 65, 63, 67, 61, "]", "[", 65, 63, 67, 60, "]", "[", 65, 63, 66, 72, "]", "[", 65, 63, 66, 71, "]", "[", 65, 63, 66, 70, "]", "[", 65, 63, 66, 69, "]", "[", 65, 63, 66, 68, "]", "[", 65, 63, 66, 67, "]", "[", 65, 63, 66, 64, "]", "[", 65, 63, 66, 62, "]", "[", 65, 63, 66, 61, "]", "[", 65, 63, 66, 60, "]", "[", 65, 63, 64, 72, "]", "[", 65, 63, 64, 71, "]", "[", 65, 63, 64, 70, "]", "[", 65, 63, 64, 69, "]", "[", 65, 63, 64, 68, "]", "[", 65, 63, 64, 67, "]", "[", 65, 63, 64, 66, "]", "[", 65, 63, 64, 62, "]", "[", 65, 63, 64, 61, "]", "[", 65, 63, 64, 60, "]", "[", 65, 63, 62, 72, "]", "[", 65, 63, 62, 71, "]", "[", 65, 63, 62, 70, "]", "[", 65, 63, 62, 69, "]", "[", 65, 63, 62, 68, "]", "[", 65, 63, 62, 67, "]", "[", 65, 63, 62, 66, "]", "[", 65, 63, 62, 64, "]", "[", 65, 63, 62, 61, "]", "[", 65, 63, 62, 60, "]", "[", 65, 63, 61, 72, "]", "[", 65, 63, 61, 71, "]", "[", 65, 63, 61, 70, "]", "[", 65, 63, 61, 69, "]", "[", 65, 63, 61, 68, "]", "[", 65, 63, 61, 67, "]", "[", 65, 63, 61, 66, "]", "[", 65, 63, 61, 64, "]", "[", 65, 63, 61, 62, "]", "[", 65, 63, 61, 60, "]", "[", 65, 63, 60, 72, "]", "[", 65, 63, 60, 71, "]", "[", 65, 63, 60, 70, "]", "[", 65, 63, 60, 69, "]", "[", 65, 63, 60, 68, "]", "[", 65, 63, 60, 67, "]", "[", 65, 63, 60, 66, "]", "[", 65, 63, 60, 64, "]", "[", 65, 63, 60, 62, "]", "[", 65, 63, 60, 61, "]", "[", 65, 62, 72, 71, "]", "[", 65, 62, 72, 70, "]", "[", 65, 62, 72, 69, "]", "[", 65, 62, 72, 68, "]", "[", 65, 62, 72, 67, "]", "[", 65, 62, 72, 66, "]", "[", 65, 62, 72, 64, "]", "[", 65, 62, 72, 63, "]", "[", 65, 62, 72, 61, "]", "[", 65, 62, 72, 60, "]" ],
													"reg_data_0000000015" : [ "[", 65, 62, 71, 72, "]", "[", 65, 62, 71, 70, "]", "[", 65, 62, 71, 69, "]", "[", 65, 62, 71, 68, "]", "[", 65, 62, 71, 67, "]", "[", 65, 62, 71, 66, "]", "[", 65, 62, 71, 64, "]", "[", 65, 62, 71, 63, "]", "[", 65, 62, 71, 61, "]", "[", 65, 62, 71, 60, "]", "[", 65, 62, 70, 72, "]", "[", 65, 62, 70, 71, "]", "[", 65, 62, 70, 69, "]", "[", 65, 62, 70, 68, "]", "[", 65, 62, 70, 67, "]", "[", 65, 62, 70, 66, "]", "[", 65, 62, 70, 64, "]", "[", 65, 62, 70, 63, "]", "[", 65, 62, 70, 61, "]", "[", 65, 62, 70, 60, "]", "[", 65, 62, 69, 72, "]", "[", 65, 62, 69, 71, "]", "[", 65, 62, 69, 70, "]", "[", 65, 62, 69, 68, "]", "[", 65, 62, 69, 67, "]", "[", 65, 62, 69, 66, "]", "[", 65, 62, 69, 64, "]", "[", 65, 62, 69, 63, "]", "[", 65, 62, 69, 61, "]", "[", 65, 62, 69, 60, "]", "[", 65, 62, 68, 72, "]", "[", 65, 62, 68, 71, "]", "[", 65, 62, 68, 70, "]", "[", 65, 62, 68, 69, "]", "[", 65, 62, 68, 67, "]", "[", 65, 62, 68, 66, "]", "[", 65, 62, 68, 64, "]", "[", 65, 62, 68, 63, "]", "[", 65, 62, 68, 61, "]", "[", 65, 62, 68, 60, "]", "[", 65, 62, 67, 72, "]", "[", 65, 62, 67, 71, "]", "[", 65, 62, 67, 70, "]", "[", 65, 62, 67, 69, "]", "[", 65, 62, 67, 68, "]", "[", 65, 62, 67, 66, "]", "[", 65, 62, 67, 64, "]", "[", 65, 62, 67, 63, "]", "[", 65, 62, 67, 61, "]", "[", 65, 62, 67, 60, "]", "[", 65, 62, 66, 72, "]", "[", 65, 62, 66, 71, "]", "[", 65, 62, 66, 70, "]", "[", 65, 62, 66, 69, "]", "[", 65, 62, 66, 68, "]", "[", 65, 62, 66, 67, "]", "[", 65, 62, 66, 64, "]", "[", 65, 62, 66, 63, "]", "[", 65, 62, 66, 61, "]", "[", 65, 62, 66, 60, "]", "[", 65, 62, 64, 72, "]", "[", 65, 62, 64, 71, "]", "[", 65, 62, 64, 70, "]", "[", 65, 62, 64, 69, "]", "[", 65, 62, 64, 68, "]", "[", 65, 62, 64, 67, "]", "[", 65, 62, 64, 66, "]", "[", 65, 62, 64, 63, "]", "[", 65, 62, 64, 61, "]", "[", 65, 62, 64, 60, "]", "[", 65, 62, 63, 72, "]", "[", 65, 62, 63, 71, "]", "[", 65, 62, 63, 70, "]", "[", 65, 62, 63, 69, "]", "[", 65, 62, 63, 68, "]", "[", 65, 62, 63, 67, "]", "[", 65, 62, 63, 66, "]", "[", 65, 62, 63, 64, "]", "[", 65, 62, 63, 61, "]", "[", 65, 62, 63, 60, "]", "[", 65, 62, 61, 72, "]", "[", 65, 62, 61, 71, "]", "[", 65, 62, 61, 70, "]", "[", 65, 62, 61, 69, "]", "[", 65, 62, 61, 68, "]", "[", 65, 62, 61, 67, "]", "[", 65, 62, 61, 66, "]", "[", 65, 62, 61, 64, "]", "[", 65, 62, 61, 63, "]", "[", 65, 62, 61, 60, "]", "[", 65, 62, 60, 72, "]", "[", 65, 62, 60, 71, "]", "[", 65, 62, 60, 70, "]", "[", 65, 62, 60, 69, "]", "[", 65, 62, 60, 68, "]", "[", 65, 62, 60, 67, "]", "[", 65, 62, 60, 66, "]", "[", 65, 62, 60, 64, "]", "[", 65, 62, 60, 63, "]", "[", 65, 62, 60, 61, "]", "[", 65, 61, 72, 71, "]", "[", 65, 61, 72, 70, "]", "[", 65, 61, 72, 69, "]", "[", 65, 61, 72, 68, "]", "[", 65, 61, 72, 67, "]", "[", 65, 61, 72, 66, "]", "[", 65, 61, 72, 64, "]", "[", 65, 61, 72, 63, "]", "[", 65, 61, 72, 62, "]", "[", 65, 61, 72, 60, "]", "[", 65, 61, 71, 72, "]", "[", 65, 61, 71, 70, "]", "[", 65, 61, 71, 69, "]", "[", 65, 61, 71, 68, "]", "[", 65, 61, 71, 67, "]", "[", 65, 61, 71, 66, "]", "[", 65, 61, 71, 64, "]", "[", 65, 61, 71, 63, "]", "[", 65, 61, 71, 62, "]", "[", 65, 61, 71, 60, "]", "[", 65, 61, 70, 72, "]", "[", 65, 61, 70, 71, "]", "[", 65, 61, 70, 69, "]", "[", 65, 61, 70, 68, "]", "[", 65, 61, 70, 67, "]", "[", 65, 61, 70, 66, "]", "[", 65, 61, 70, 64, "]", "[", 65, 61, 70, 63, "]", "[", 65, 61, 70, 62, "]", "[", 65, 61, 70, 60, "]", "[", 65, 61, 69, 72, "]", "[", 65, 61, 69, 71, "]", "[", 65, 61, 69, 70, "]", "[", 65, 61, 69, 68, "]", "[", 65, 61, 69, 67, "]", "[", 65, 61, 69, 66, "]", "[", 65, 61, 69, 64, "]", "[", 65, 61, 69, 63, "]", "[", 65, 61, 69, 62, "]", "[", 65, 61, 69, 60, "]", "[", 65, 61, 68, 72, "]", "[", 65, 61, 68, 71, "]", "[", 65, 61, 68, 70, "]", "[", 65, 61, 68, 69, "]", "[", 65, 61, 68, 67, "]", "[", 65, 61, 68, 66, "]", "[", 65, 61, 68, 64, "]", "[", 65, 61, 68, 63, "]", "[", 65, 61, 68, 62, "]", "[", 65, 61, 68, 60, "]", "[", 65, 61, 67, 72, "]", "[", 65, 61, 67, 71, "]", "[", 65, 61, 67, 70, "]", "[", 65, 61, 67, 69, "]", "[", 65, 61, 67, 68, "]", "[", 65, 61, 67, 66, "]", "[", 65, 61, 67, 64, "]", "[", 65, 61, 67, 63, "]", "[", 65, 61, 67, 62, "]", "[", 65, 61, 67, 60, "]", "[", 65, 61, 66, 72, "]", "[", 65, 61, 66, 71, "]", "[", 65, 61, 66, 70, "]", "[", 65, 61, 66, 69, "]", "[", 65, 61, 66, 68, "]", "[", 65, 61, 66, 67, "]", "[", 65, 61, 66, 64, "]", "[", 65, 61, 66, 63, "]", "[", 65, 61, 66, 62, "]", "[", 65, 61, 66, 60, "]", "[", 65, 61, 64, 72, "]", "[", 65, 61, 64, 71, "]", "[", 65, 61, 64, 70, "]", "[", 65, 61, 64, 69, "]", "[", 65, 61, 64, 68, "]", "[", 65, 61, 64, 67, "]", "[", 65, 61, 64, 66, "]", "[", 65, 61, 64, 63, "]", "[", 65, 61, 64, 62, "]", "[", 65, 61, 64, 60, "]", "[", 65, 61, 63, 72, "]", "[", 65, 61, 63, 71, "]", "[", 65, 61, 63, 70, "]", "[", 65, 61, 63, 69, "]", "[", 65, 61, 63, 68, "]", "[", 65, 61, 63, 67, "]", "[", 65, 61, 63, 66, "]", "[", 65, 61, 63, 64, "]", "[", 65, 61, 63, 62, "]", "[", 65, 61, 63, 60, "]", "[", 65, 61, 62, 72, "]", "[", 65, 61, 62, 71, "]", "[", 65, 61, 62, 70, "]", "[", 65, 61, 62, 69, "]", "[", 65, 61, 62, 68, "]", "[", 65, 61, 62, 67, "]", "[", 65, 61, 62, 66, "]", "[", 65, 61, 62, 64, "]", "[", 65, 61, 62, 63, "]", "[", 65, 61, 62, 60, "]", "[", 65, 61, 60, 72, "]", "[", 65, 61, 60, 71, "]", "[", 65, 61, 60, 70, "]", "[", 65, 61, 60, 69, "]", "[", 65, 61, 60, 68, "]", "[", 65, 61, 60, 67, "]", "[", 65, 61, 60, 66, "]", "[", 65, 61, 60, 64, "]", "[", 65, 61, 60, 63, "]", "[", 65, 61, 60, 62, "]", "[", 65, 60, 72, 71, "]", "[", 65, 60, 72, 70, "]", "[", 65, 60, 72, 69, "]", "[", 65, 60, 72, 68, "]", "[", 65, 60, 72, 67, "]", "[", 65, 60, 72, 66, "]", "[", 65, 60, 72, 64, "]", "[", 65, 60, 72, 63, "]", "[", 65, 60, 72, 62, "]", "[", 65, 60, 72, 61, "]", "[", 65, 60, 71, 72, "]", "[", 65, 60, 71, 70, "]", "[", 65, 60, 71, 69, "]", "[", 65, 60, 71, 68, "]", "[", 65, 60, 71, 67, "]", "[", 65, 60, 71, 66, "]", "[", 65, 60, 71, 64, "]", "[", 65, 60, 71, 63, "]", "[", 65, 60, 71, 62, "]", "[", 65, 60, 71, 61, "]", "[", 65, 60, 70, 72, "]", "[", 65, 60, 70, 71, "]", "[", 65, 60, 70, 69, "]", "[", 65, 60, 70, 68, "]", "[", 65, 60, 70, 67, "]", "[", 65, 60, 70, 66, "]", "[", 65, 60, 70, 64, "]", "[", 65, 60, 70, 63, "]", "[", 65, 60, 70, 62, "]", "[", 65, 60, 70, 61, "]", "[", 65, 60, 69, 72, "]", "[", 65, 60, 69, 71, "]", "[", 65, 60, 69, 70, "]", "[", 65, 60, 69, 68, "]", "[", 65, 60, 69, 67, "]", "[", 65, 60, 69, 66, "]", "[", 65, 60, 69, 64, "]", "[", 65, 60, 69, 63, "]", "[", 65, 60, 69, 62, "]", "[", 65, 60, 69, 61, "]", "[", 65, 60, 68, 72, "]", "[", 65, 60, 68, 71, "]", "[", 65, 60, 68, 70, "]", "[", 65, 60, 68, 69, "]", "[", 65, 60, 68, 67, "]", "[", 65, 60, 68, 66, "]", "[", 65, 60, 68, 64, "]", "[", 65, 60, 68, 63, "]", "[", 65, 60, 68, 62, "]", "[", 65, 60, 68, 61, "]", "[", 65, 60, 67, 72, "]", "[", 65, 60, 67, 71, "]", "[", 65, 60, 67, 70, "]", "[", 65, 60, 67, 69, "]", "[", 65, 60, 67, 68, "]", "[", 65, 60, 67, 66, "]", "[", 65, 60, 67, 64, "]", "[", 65, 60, 67, 63, "]", "[", 65, 60, 67, 62, "]", "[", 65, 60, 67, 61, "]", "[", 65, 60, 66, 72, "]", "[", 65, 60, 66, 71, "]", "[", 65, 60, 66, 70, "]", "[", 65, 60, 66, 69, "]", "[", 65, 60, 66, 68, "]", "[", 65, 60, 66, 67, "]", "[", 65, 60, 66, 64, "]", "[", 65, 60, 66, 63, "]", "[", 65, 60, 66, 62, "]", "[", 65, 60, 66, 61, "]", "[", 65, 60, 64, 72, "]", "[", 65, 60, 64, 71, "]", "[", 65, 60, 64, 70, "]", "[", 65, 60, 64, 69, "]", "[", 65, 60, 64, 68, "]", "[", 65, 60, 64, 67, "]", "[", 65, 60, 64, 66, "]", "[", 65, 60, 64, 63, "]", "[", 65, 60, 64, 62, "]", "[", 65, 60, 64, 61, "]", "[", 65, 60, 63, 72, "]", "[", 65, 60, 63, 71, "]", "[", 65, 60, 63, 70, "]", "[", 65, 60, 63, 69, "]", "[", 65, 60, 63, 68, "]", "[", 65, 60, 63, 67, "]", "[", 65, 60, 63, 66, "]", "[", 65, 60, 63, 64, "]", "[", 65, 60, 63, 62, "]", "[", 65, 60, 63, 61, "]", "[", 65, 60, 62, 72, "]", "[", 65, 60, 62, 71, "]", "[", 65, 60, 62, 70, "]", "[", 65, 60, 62, 69, "]", "[", 65, 60, 62, 68, "]", "[", 65, 60, 62, 67, "]", "[", 65, 60, 62, 66, "]", "[", 65, 60, 62, 64, "]", "[", 65, 60, 62, 63, "]", "[", 65, 60, 62, 61, "]", "[", 65, 60, 61, 72, "]", "[", 65, 60, 61, 71, "]", "[", 65, 60, 61, 70, "]", "[", 65, 60, 61, 69, "]", "[", 65, 60, 61, 68, "]", "[", 65, 60, 61, 67, "]", "[", 65, 60, 61, 66, "]", "[", 65, 60, 61, 64, "]", "[", 65, 60, 61, 63, "]", "[", 65, 60, 61, 62, "]", "[", 64, 72, 71, 70, "]", "[", 64, 72, 71, 69, "]", "[", 64, 72, 71, 68, "]", "[", 64, 72, 71, 67, "]", "[", 64, 72, 71, 66, "]", "[", 64, 72, 71, 65, "]", "[", 64, 72, 71, 63, "]", "[", 64, 72, 71, 62, "]", "[", 64, 72, 71, 61, "]", "[", 64, 72, 71, 60, "]", "[", 64, 72, 70, 71, "]", "[", 64, 72, 70, 69, "]", "[", 64, 72, 70, 68, "]", "[", 64, 72, 70, 67, "]", "[", 64, 72, 70, 66, "]", "[", 64, 72, 70, 65, "]", "[", 64, 72, 70, 63, "]", "[", 64, 72, 70, 62, "]", "[", 64, 72, 70, 61, "]", "[", 64, 72, 70, 60, "]", "[", 64, 72, 69, 71, "]", "[", 64, 72, 69, 70, "]", "[", 64, 72, 69, 68, "]", "[", 64, 72, 69, 67, "]", "[", 64, 72, 69, 66, "]", "[", 64, 72, 69, 65, "]", "[", 64, 72, 69, 63, "]", "[", 64, 72, 69, 62, "]", "[", 64, 72, 69, 61, "]", "[", 64, 72, 69, 60, "]", "[", 64, 72, 68, 71, "]", "[", 64, 72, 68, 70, "]", "[", 64, 72, 68, 69, "]", "[", 64, 72, 68, 67, "]", "[", 64, 72, 68, 66, "]", "[", 64, 72, 68, 65, "]", "[", 64, 72, 68, 63, "]", "[", 64, 72, 68, 62, "]", "[", 64, 72, 68, 61, "]", "[", 64, 72, 68, 60, "]", "[", 64, 72, 67, 71, "]", "[", 64, 72, 67, 70, "]", "[", 64, 72, 67, 69, "]", "[", 64, 72, 67, 68, "]", "[", 64, 72, 67, 66, "]", "[", 64, 72, 67, 65, "]", "[", 64, 72, 67, 63, "]", "[", 64, 72, 67, 62, "]", "[", 64, 72, 67, 61, "]", "[", 64, 72, 67, 60, "]", "[", 64, 72, 66, 71, "]", "[", 64, 72, 66, 70, "]", "[", 64, 72, 66, 69, "]", "[", 64, 72, 66, 68, "]", "[", 64, 72, 66, 67, "]", "[", 64, 72, 66, 65, "]", "[", 64, 72, 66, 63, "]", "[", 64, 72, 66, 62, "]", "[", 64, 72, 66, 61, "]", "[", 64, 72, 66, 60, "]", "[", 64, 72, 65, 71, "]", "[", 64, 72, 65, 70, "]", "[", 64, 72, 65, 69, "]", "[", 64, 72, 65, 68, "]", "[", 64, 72, 65, 67, "]", "[", 64, 72, 65, 66, "]", "[", 64, 72, 65, 63, "]", "[", 64, 72, 65, 62, "]", "[", 64, 72, 65, 61, "]", "[", 64, 72, 65, 60, "]", "[", 64, 72, 63, 71, "]", "[", 64, 72, 63, 70, "]", "[", 64, 72, 63, 69, "]", "[", 64, 72, 63, 68, "]", "[", 64, 72, 63, 67, "]", "[", 64, 72, 63, 66, "]", "[", 64, 72, 63, 65, "]", "[", 64, 72, 63, 62, "]", "[", 64, 72, 63, 61, "]", "[", 64, 72, 63, 60, "]", "[", 64, 72, 62, 71, "]", "[", 64, 72, 62, 70, "]", "[", 64, 72, 62, 69, "]", "[", 64, 72, 62, 68, "]", "[", 64, 72, 62, 67, "]", "[", 64, 72, 62, 66, "]", "[", 64, 72, 62, 65, "]", "[", 64, 72, 62, 63, "]", "[", 64, 72, 62, 61, "]", "[", 64, 72, 62, 60, "]", "[", 64, 72, 61, 71, "]", "[", 64, 72, 61, 70, "]", "[", 64, 72, 61, 69, "]", "[", 64, 72, 61, 68, "]", "[", 64, 72, 61, 67, "]", "[", 64, 72, 61, 66, "]", "[", 64, 72, 61, 65, "]", "[", 64, 72, 61, 63, "]", "[", 64, 72, 61, 62, "]", "[", 64, 72, 61, 60, "]", "[", 64, 72, 60, 71, "]", "[", 64, 72, 60, 70, "]", "[", 64, 72, 60, 69, "]", "[", 64, 72, 60, 68, "]", "[", 64, 72, 60, 67, "]", "[", 64, 72, 60, 66, "]", "[", 64, 72, 60, 65, "]", "[", 64, 72, 60, 63, "]", "[", 64, 72, 60, 62, "]", "[", 64, 72, 60, 61, "]", "[", 64, 71, 72, 70, "]", "[", 64, 71, 72, 69, "]", "[", 64, 71, 72, 68, "]", "[", 64, 71, 72, 67, "]", "[", 64, 71, 72, 66, "]", "[", 64, 71, 72, 65, "]", "[", 64, 71, 72, 63, "]", "[", 64, 71, 72, 62, "]", "[", 64, 71, 72, 61, "]", "[", 64, 71, 72, 60, "]", "[", 64, 71, 70, 72, "]", "[", 64, 71, 70, 69, "]", "[", 64, 71, 70, 68, "]", "[", 64, 71, 70, 67, "]", "[", 64, 71, 70, 66, "]", "[", 64, 71, 70, 65, "]", "[", 64, 71, 70, 63, "]", "[", 64, 71, 70, 62, "]", "[", 64, 71, 70, 61, "]", "[", 64, 71, 70, 60, "]", "[", 64, 71, 69, 72, "]", "[", 64, 71, 69, 70, "]", "[", 64, 71, 69, 68, "]", "[", 64, 71, 69, 67, "]", "[", 64, 71, 69, 66, "]", "[", 64, 71, 69, 65, "]", "[", 64, 71, 69, 63, "]", "[", 64, 71, 69, 62, "]", "[", 64, 71, 69, 61, "]", "[", 64, 71, 69, 60, "]", "[", 64, 71, 68, 72, "]", "[", 64, 71, 68, 70, "]", "[", 64, 71, 68, 69, "]", "[", 64, 71, 68, 67, "]", "[", 64, 71, 68, 66, "]", "[", 64, 71, 68, 65, "]", "[", 64, 71, 68, 63, "]", "[", 64, 71, 68, 62, "]", "[", 64, 71, 68, 61, "]", "[", 64, 71, 68, 60, "]", "[", 64, 71, 67, 72, "]", "[", 64, 71, 67, 70, "]", "[", 64, 71, 67, 69, "]", "[", 64, 71, 67, 68, "]", "[", 64, 71, 67, 66, "]", "[", 64, 71, 67, 65, "]", "[", 64, 71, 67, 63, "]", "[", 64, 71, 67, 62, "]", "[", 64, 71, 67, 61, "]", "[", 64, 71, 67, 60, "]", "[", 64, 71, 66, 72, "]", "[", 64, 71, 66, 70, "]", "[", 64, 71, 66, 69, "]", "[", 64, 71, 66, 68, "]", "[", 64, 71, 66, 67, "]", "[", 64, 71, 66, 65, "]", "[", 64, 71, 66, 63, "]", "[", 64, 71, 66, 62, "]", "[", 64, 71, 66, 61, "]", "[", 64, 71, 66, 60, "]", "[", 64, 71, 65, 72, "]", "[", 64, 71, 65, 70, "]", "[", 64, 71, 65, 69, "]", "[", 64, 71, 65, 68, "]", "[", 64, 71, 65, 67, "]", "[", 64, 71, 65, 66, "]", "[", 64, 71, 65, 63, "]", "[", 64, 71, 65, 62, "]", "[", 64, 71, 65, 61, "]", "[", 64, 71, 65, 60, "]", "[", 64, 71, 63, 72, "]", "[", 64, 71, 63, 70, "]", "[", 64, 71, 63, 69, "]", "[", 64, 71, 63, 68, "]", "[", 64, 71, 63, 67, "]", "[", 64, 71, 63, 66, "]", "[", 64, 71, 63, 65, "]", "[", 64, 71, 63, 62, "]", "[", 64, 71, 63, 61, "]", "[", 64, 71, 63, 60, "]", "[", 64, 71, 62, 72, "]", "[", 64, 71, 62, 70, "]", "[", 64, 71, 62, 69, "]", "[", 64, 71, 62, 68, "]", "[", 64, 71, 62, 67, "]", "[", 64, 71, 62, 66, "]", "[", 64, 71, 62, 65, "]", "[", 64, 71, 62, 63, "]", "[", 64, 71, 62, 61, "]", "[", 64, 71, 62, 60, "]", "[", 64, 71, 61, 72, "]", "[", 64, 71, 61, 70, "]", "[", 64, 71, 61, 69, "]", "[", 64, 71, 61, 68, "]", "[", 64, 71, 61, 67, "]", "[", 64, 71, 61, 66, "]", "[", 64, 71, 61, 65, "]", "[", 64, 71, 61, 63, "]", "[", 64, 71, 61, 62, "]", "[", 64, 71, 61, 60, "]", "[", 64, 71, 60, 72, "]", "[", 64, 71, 60, 70, "]", "[", 64, 71, 60, 69, "]", "[", 64, 71, 60, 68, "]", "[", 64, 71, 60, 67, "]", "[", 64, 71, 60, 66, "]", "[", 64, 71, 60, 65, "]", "[", 64, 71, 60, 63, "]", "[", 64, 71, 60, 62, "]", "[", 64, 71, 60, 61, "]", "[", 64, 70, 72, 71, "]", "[", 64, 70, 72, 69, "]", "[", 64, 70, 72, 68, "]", "[", 64, 70, 72, 67, "]", "[", 64, 70, 72, 66, "]", "[", 64, 70, 72, 65, "]", "[", 64, 70, 72, 63, "]", "[", 64, 70, 72, 62, "]", "[", 64, 70, 72, 61, "]", "[", 64, 70, 72, 60, "]", "[", 64, 70, 71, 72, "]", "[", 64, 70, 71, 69, "]", "[", 64, 70, 71, 68, "]", "[", 64, 70, 71, 67, "]", "[", 64, 70, 71, 66, "]", "[", 64, 70, 71, 65, "]", "[", 64, 70, 71, 63, "]", "[", 64, 70, 71, 62, "]", "[", 64, 70, 71, 61, "]", "[", 64, 70, 71, 60, "]", "[", 64, 70, 69, 72, "]", "[", 64, 70, 69, 71, "]", "[", 64, 70, 69, 68, "]", "[", 64, 70, 69, 67, "]", "[", 64, 70, 69, 66, "]", "[", 64, 70, 69, 65, "]", "[", 64, 70, 69, 63, "]", "[", 64, 70, 69, 62, "]", "[", 64, 70, 69, 61, "]", "[", 64, 70, 69, 60, "]", "[", 64, 70, 68, 72, "]", "[", 64, 70, 68, 71, "]", "[", 64, 70, 68, 69, "]", "[", 64, 70, 68, 67, "]", "[", 64, 70, 68, 66, "]", "[", 64, 70, 68, 65, "]", "[", 64, 70, 68, 63, "]", "[", 64, 70, 68, 62, "]", "[", 64, 70, 68, 61, "]", "[", 64, 70, 68, 60, "]", "[", 64, 70, 67, 72, "]", "[", 64, 70, 67, 71, "]", "[", 64, 70, 67, 69, "]", "[", 64, 70, 67, 68, "]", "[", 64, 70, 67, 66, "]", "[", 64, 70, 67, 65, "]", "[", 64, 70, 67, 63, "]", "[", 64, 70, 67, 62, "]", "[", 64, 70, 67, 61, "]", "[", 64, 70, 67, 60, "]", "[", 64, 70, 66, 72, "]", "[", 64, 70, 66, 71, "]", "[", 64, 70, 66, 69, "]", "[", 64, 70, 66, 68, "]", "[", 64, 70, 66, 67, "]", "[", 64, 70, 66, 65, "]", "[", 64, 70, 66, 63, "]", "[", 64, 70, 66, 62, "]", "[", 64, 70, 66, 61, "]", "[", 64, 70, 66, 60, "]", "[", 64, 70, 65, 72, "]", "[", 64, 70, 65, 71, "]", "[", 64, 70, 65, 69, "]", "[", 64, 70, 65, 68, "]", "[", 64, 70, 65, 67, "]", "[", 64, 70, 65, 66, "]", "[", 64, 70, 65, 63, "]", "[", 64, 70, 65, 62, "]", "[", 64, 70, 65, 61, "]", "[", 64, 70, 65, 60, "]", "[", 64, 70, 63, 72, "]", "[", 64, 70, 63, 71, "]", "[", 64, 70, 63, 69, "]", "[", 64, 70, 63, 68, "]", "[", 64, 70, 63, 67, "]", "[", 64, 70, 63, 66, "]", "[", 64, 70, 63, 65, "]", "[", 64, 70, 63, 62, "]", "[", 64, 70, 63, 61, "]", "[", 64, 70, 63, 60, "]", "[", 64, 70, 62, 72, "]", "[", 64, 70, 62, 71, "]", "[", 64, 70, 62, 69, "]", "[", 64, 70, 62, 68, "]", "[", 64, 70, 62, 67, "]", "[", 64, 70, 62, 66, "]", "[", 64, 70, 62, 65, "]", "[", 64, 70, 62, 63, "]", "[", 64, 70, 62, 61, "]", "[", 64, 70, 62, 60, "]", "[", 64, 70, 61, 72, "]", "[", 64, 70, 61, 71, "]", "[", 64, 70, 61, 69, "]", "[", 64, 70, 61, 68, "]", "[", 64, 70, 61, 67, "]", "[", 64, 70, 61, 66, "]", "[", 64, 70, 61, 65, "]", "[", 64, 70, 61, 63, "]", "[", 64, 70, 61, 62, "]", "[", 64, 70, 61, 60, "]", "[", 64, 70, 60, 72, "]", "[", 64, 70, 60, 71, "]", "[", 64, 70, 60, 69, "]", "[", 64, 70, 60, 68, "]", "[", 64, 70, 60, 67, "]", "[", 64, 70, 60, 66, "]", "[", 64, 70, 60, 65, "]", "[", 64, 70, 60, 63, "]", "[", 64, 70, 60, 62, "]", "[", 64, 70, 60, 61, "]", "[", 64, 69, 72, 71, "]", "[", 64, 69, 72, 70, "]", "[", 64, 69, 72, 68, "]", "[", 64, 69, 72, 67, "]", "[", 64, 69, 72, 66, "]", "[", 64, 69, 72, 65, "]", "[", 64, 69, 72, 63, "]", "[", 64, 69, 72, 62, "]", "[", 64, 69, 72, 61, "]", "[", 64, 69, 72, 60, "]", "[", 64, 69, 71, 72, "]", "[", 64, 69, 71, 70, "]", "[", 64, 69, 71, 68, "]", "[", 64, 69, 71, 67, "]", "[", 64, 69, 71, 66, "]", "[", 64, 69, 71, 65, "]", "[", 64, 69, 71, 63, "]", "[", 64, 69, 71, 62, "]", "[", 64, 69, 71, 61, "]", "[", 64, 69, 71, 60, "]", "[", 64, 69, 70, 72, "]", "[", 64, 69, 70, 71, "]", "[", 64, 69, 70, 68, "]", "[", 64, 69, 70, 67, "]", "[", 64, 69, 70, 66, "]", "[", 64, 69, 70, 65, "]", "[", 64, 69, 70, 63, "]", "[", 64, 69, 70, 62, "]", "[", 64, 69, 70, 61, "]", "[", 64, 69, 70, 60, "]", "[", 64, 69, 68, 72, "]", "[", 64, 69, 68, 71, "]", "[", 64, 69, 68 ],
													"reg_data_0000000016" : [ 70, "]", "[", 64, 69, 68, 67, "]", "[", 64, 69, 68, 66, "]", "[", 64, 69, 68, 65, "]", "[", 64, 69, 68, 63, "]", "[", 64, 69, 68, 62, "]", "[", 64, 69, 68, 61, "]", "[", 64, 69, 68, 60, "]", "[", 64, 69, 67, 72, "]", "[", 64, 69, 67, 71, "]", "[", 64, 69, 67, 70, "]", "[", 64, 69, 67, 68, "]", "[", 64, 69, 67, 66, "]", "[", 64, 69, 67, 65, "]", "[", 64, 69, 67, 63, "]", "[", 64, 69, 67, 62, "]", "[", 64, 69, 67, 61, "]", "[", 64, 69, 67, 60, "]", "[", 64, 69, 66, 72, "]", "[", 64, 69, 66, 71, "]", "[", 64, 69, 66, 70, "]", "[", 64, 69, 66, 68, "]", "[", 64, 69, 66, 67, "]", "[", 64, 69, 66, 65, "]", "[", 64, 69, 66, 63, "]", "[", 64, 69, 66, 62, "]", "[", 64, 69, 66, 61, "]", "[", 64, 69, 66, 60, "]", "[", 64, 69, 65, 72, "]", "[", 64, 69, 65, 71, "]", "[", 64, 69, 65, 70, "]", "[", 64, 69, 65, 68, "]", "[", 64, 69, 65, 67, "]", "[", 64, 69, 65, 66, "]", "[", 64, 69, 65, 63, "]", "[", 64, 69, 65, 62, "]", "[", 64, 69, 65, 61, "]", "[", 64, 69, 65, 60, "]", "[", 64, 69, 63, 72, "]", "[", 64, 69, 63, 71, "]", "[", 64, 69, 63, 70, "]", "[", 64, 69, 63, 68, "]", "[", 64, 69, 63, 67, "]", "[", 64, 69, 63, 66, "]", "[", 64, 69, 63, 65, "]", "[", 64, 69, 63, 62, "]", "[", 64, 69, 63, 61, "]", "[", 64, 69, 63, 60, "]", "[", 64, 69, 62, 72, "]", "[", 64, 69, 62, 71, "]", "[", 64, 69, 62, 70, "]", "[", 64, 69, 62, 68, "]", "[", 64, 69, 62, 67, "]", "[", 64, 69, 62, 66, "]", "[", 64, 69, 62, 65, "]", "[", 64, 69, 62, 63, "]", "[", 64, 69, 62, 61, "]", "[", 64, 69, 62, 60, "]", "[", 64, 69, 61, 72, "]", "[", 64, 69, 61, 71, "]", "[", 64, 69, 61, 70, "]", "[", 64, 69, 61, 68, "]", "[", 64, 69, 61, 67, "]", "[", 64, 69, 61, 66, "]", "[", 64, 69, 61, 65, "]", "[", 64, 69, 61, 63, "]", "[", 64, 69, 61, 62, "]", "[", 64, 69, 61, 60, "]", "[", 64, 69, 60, 72, "]", "[", 64, 69, 60, 71, "]", "[", 64, 69, 60, 70, "]", "[", 64, 69, 60, 68, "]", "[", 64, 69, 60, 67, "]", "[", 64, 69, 60, 66, "]", "[", 64, 69, 60, 65, "]", "[", 64, 69, 60, 63, "]", "[", 64, 69, 60, 62, "]", "[", 64, 69, 60, 61, "]", "[", 64, 68, 72, 71, "]", "[", 64, 68, 72, 70, "]", "[", 64, 68, 72, 69, "]", "[", 64, 68, 72, 67, "]", "[", 64, 68, 72, 66, "]", "[", 64, 68, 72, 65, "]", "[", 64, 68, 72, 63, "]", "[", 64, 68, 72, 62, "]", "[", 64, 68, 72, 61, "]", "[", 64, 68, 72, 60, "]", "[", 64, 68, 71, 72, "]", "[", 64, 68, 71, 70, "]", "[", 64, 68, 71, 69, "]", "[", 64, 68, 71, 67, "]", "[", 64, 68, 71, 66, "]", "[", 64, 68, 71, 65, "]", "[", 64, 68, 71, 63, "]", "[", 64, 68, 71, 62, "]", "[", 64, 68, 71, 61, "]", "[", 64, 68, 71, 60, "]", "[", 64, 68, 70, 72, "]", "[", 64, 68, 70, 71, "]", "[", 64, 68, 70, 69, "]", "[", 64, 68, 70, 67, "]", "[", 64, 68, 70, 66, "]", "[", 64, 68, 70, 65, "]", "[", 64, 68, 70, 63, "]", "[", 64, 68, 70, 62, "]", "[", 64, 68, 70, 61, "]", "[", 64, 68, 70, 60, "]", "[", 64, 68, 69, 72, "]", "[", 64, 68, 69, 71, "]", "[", 64, 68, 69, 70, "]", "[", 64, 68, 69, 67, "]", "[", 64, 68, 69, 66, "]", "[", 64, 68, 69, 65, "]", "[", 64, 68, 69, 63, "]", "[", 64, 68, 69, 62, "]", "[", 64, 68, 69, 61, "]", "[", 64, 68, 69, 60, "]", "[", 64, 68, 67, 72, "]", "[", 64, 68, 67, 71, "]", "[", 64, 68, 67, 70, "]", "[", 64, 68, 67, 69, "]", "[", 64, 68, 67, 66, "]", "[", 64, 68, 67, 65, "]", "[", 64, 68, 67, 63, "]", "[", 64, 68, 67, 62, "]", "[", 64, 68, 67, 61, "]", "[", 64, 68, 67, 60, "]", "[", 64, 68, 66, 72, "]", "[", 64, 68, 66, 71, "]", "[", 64, 68, 66, 70, "]", "[", 64, 68, 66, 69, "]", "[", 64, 68, 66, 67, "]", "[", 64, 68, 66, 65, "]", "[", 64, 68, 66, 63, "]", "[", 64, 68, 66, 62, "]", "[", 64, 68, 66, 61, "]", "[", 64, 68, 66, 60, "]", "[", 64, 68, 65, 72, "]", "[", 64, 68, 65, 71, "]", "[", 64, 68, 65, 70, "]", "[", 64, 68, 65, 69, "]", "[", 64, 68, 65, 67, "]", "[", 64, 68, 65, 66, "]", "[", 64, 68, 65, 63, "]", "[", 64, 68, 65, 62, "]", "[", 64, 68, 65, 61, "]", "[", 64, 68, 65, 60, "]", "[", 64, 68, 63, 72, "]", "[", 64, 68, 63, 71, "]", "[", 64, 68, 63, 70, "]", "[", 64, 68, 63, 69, "]", "[", 64, 68, 63, 67, "]", "[", 64, 68, 63, 66, "]", "[", 64, 68, 63, 65, "]", "[", 64, 68, 63, 62, "]", "[", 64, 68, 63, 61, "]", "[", 64, 68, 63, 60, "]", "[", 64, 68, 62, 72, "]", "[", 64, 68, 62, 71, "]", "[", 64, 68, 62, 70, "]", "[", 64, 68, 62, 69, "]", "[", 64, 68, 62, 67, "]", "[", 64, 68, 62, 66, "]", "[", 64, 68, 62, 65, "]", "[", 64, 68, 62, 63, "]", "[", 64, 68, 62, 61, "]", "[", 64, 68, 62, 60, "]", "[", 64, 68, 61, 72, "]", "[", 64, 68, 61, 71, "]", "[", 64, 68, 61, 70, "]", "[", 64, 68, 61, 69, "]", "[", 64, 68, 61, 67, "]", "[", 64, 68, 61, 66, "]", "[", 64, 68, 61, 65, "]", "[", 64, 68, 61, 63, "]", "[", 64, 68, 61, 62, "]", "[", 64, 68, 61, 60, "]", "[", 64, 68, 60, 72, "]", "[", 64, 68, 60, 71, "]", "[", 64, 68, 60, 70, "]", "[", 64, 68, 60, 69, "]", "[", 64, 68, 60, 67, "]", "[", 64, 68, 60, 66, "]", "[", 64, 68, 60, 65, "]", "[", 64, 68, 60, 63, "]", "[", 64, 68, 60, 62, "]", "[", 64, 68, 60, 61, "]", "[", 64, 67, 72, 71, "]", "[", 64, 67, 72, 70, "]", "[", 64, 67, 72, 69, "]", "[", 64, 67, 72, 68, "]", "[", 64, 67, 72, 66, "]", "[", 64, 67, 72, 65, "]", "[", 64, 67, 72, 63, "]", "[", 64, 67, 72, 62, "]", "[", 64, 67, 72, 61, "]", "[", 64, 67, 72, 60, "]", "[", 64, 67, 71, 72, "]", "[", 64, 67, 71, 70, "]", "[", 64, 67, 71, 69, "]", "[", 64, 67, 71, 68, "]", "[", 64, 67, 71, 66, "]", "[", 64, 67, 71, 65, "]", "[", 64, 67, 71, 63, "]", "[", 64, 67, 71, 62, "]", "[", 64, 67, 71, 61, "]", "[", 64, 67, 71, 60, "]", "[", 64, 67, 70, 72, "]", "[", 64, 67, 70, 71, "]", "[", 64, 67, 70, 69, "]", "[", 64, 67, 70, 68, "]", "[", 64, 67, 70, 66, "]", "[", 64, 67, 70, 65, "]", "[", 64, 67, 70, 63, "]", "[", 64, 67, 70, 62, "]", "[", 64, 67, 70, 61, "]", "[", 64, 67, 70, 60, "]", "[", 64, 67, 69, 72, "]", "[", 64, 67, 69, 71, "]", "[", 64, 67, 69, 70, "]", "[", 64, 67, 69, 68, "]", "[", 64, 67, 69, 66, "]", "[", 64, 67, 69, 65, "]", "[", 64, 67, 69, 63, "]", "[", 64, 67, 69, 62, "]", "[", 64, 67, 69, 61, "]", "[", 64, 67, 69, 60, "]", "[", 64, 67, 68, 72, "]", "[", 64, 67, 68, 71, "]", "[", 64, 67, 68, 70, "]", "[", 64, 67, 68, 69, "]", "[", 64, 67, 68, 66, "]", "[", 64, 67, 68, 65, "]", "[", 64, 67, 68, 63, "]", "[", 64, 67, 68, 62, "]", "[", 64, 67, 68, 61, "]", "[", 64, 67, 68, 60, "]", "[", 64, 67, 66, 72, "]", "[", 64, 67, 66, 71, "]", "[", 64, 67, 66, 70, "]", "[", 64, 67, 66, 69, "]", "[", 64, 67, 66, 68, "]", "[", 64, 67, 66, 65, "]", "[", 64, 67, 66, 63, "]", "[", 64, 67, 66, 62, "]", "[", 64, 67, 66, 61, "]", "[", 64, 67, 66, 60, "]", "[", 64, 67, 65, 72, "]", "[", 64, 67, 65, 71, "]", "[", 64, 67, 65, 70, "]", "[", 64, 67, 65, 69, "]", "[", 64, 67, 65, 68, "]", "[", 64, 67, 65, 66, "]", "[", 64, 67, 65, 63, "]", "[", 64, 67, 65, 62, "]", "[", 64, 67, 65, 61, "]", "[", 64, 67, 65, 60, "]", "[", 64, 67, 63, 72, "]", "[", 64, 67, 63, 71, "]", "[", 64, 67, 63, 70, "]", "[", 64, 67, 63, 69, "]", "[", 64, 67, 63, 68, "]", "[", 64, 67, 63, 66, "]", "[", 64, 67, 63, 65, "]", "[", 64, 67, 63, 62, "]", "[", 64, 67, 63, 61, "]", "[", 64, 67, 63, 60, "]", "[", 64, 67, 62, 72, "]", "[", 64, 67, 62, 71, "]", "[", 64, 67, 62, 70, "]", "[", 64, 67, 62, 69, "]", "[", 64, 67, 62, 68, "]", "[", 64, 67, 62, 66, "]", "[", 64, 67, 62, 65, "]", "[", 64, 67, 62, 63, "]", "[", 64, 67, 62, 61, "]", "[", 64, 67, 62, 60, "]", "[", 64, 67, 61, 72, "]", "[", 64, 67, 61, 71, "]", "[", 64, 67, 61, 70, "]", "[", 64, 67, 61, 69, "]", "[", 64, 67, 61, 68, "]", "[", 64, 67, 61, 66, "]", "[", 64, 67, 61, 65, "]", "[", 64, 67, 61, 63, "]", "[", 64, 67, 61, 62, "]", "[", 64, 67, 61, 60, "]", "[", 64, 67, 60, 72, "]", "[", 64, 67, 60, 71, "]", "[", 64, 67, 60, 70, "]", "[", 64, 67, 60, 69, "]", "[", 64, 67, 60, 68, "]", "[", 64, 67, 60, 66, "]", "[", 64, 67, 60, 65, "]", "[", 64, 67, 60, 63, "]", "[", 64, 67, 60, 62, "]", "[", 64, 67, 60, 61, "]", "[", 64, 66, 72, 71, "]", "[", 64, 66, 72, 70, "]", "[", 64, 66, 72, 69, "]", "[", 64, 66, 72, 68, "]", "[", 64, 66, 72, 67, "]", "[", 64, 66, 72, 65, "]", "[", 64, 66, 72, 63, "]", "[", 64, 66, 72, 62, "]", "[", 64, 66, 72, 61, "]", "[", 64, 66, 72, 60, "]", "[", 64, 66, 71, 72, "]", "[", 64, 66, 71, 70, "]", "[", 64, 66, 71, 69, "]", "[", 64, 66, 71, 68, "]", "[", 64, 66, 71, 67, "]", "[", 64, 66, 71, 65, "]", "[", 64, 66, 71, 63, "]", "[", 64, 66, 71, 62, "]", "[", 64, 66, 71, 61, "]", "[", 64, 66, 71, 60, "]", "[", 64, 66, 70, 72, "]", "[", 64, 66, 70, 71, "]", "[", 64, 66, 70, 69, "]", "[", 64, 66, 70, 68, "]", "[", 64, 66, 70, 67, "]", "[", 64, 66, 70, 65, "]", "[", 64, 66, 70, 63, "]", "[", 64, 66, 70, 62, "]", "[", 64, 66, 70, 61, "]", "[", 64, 66, 70, 60, "]", "[", 64, 66, 69, 72, "]", "[", 64, 66, 69, 71, "]", "[", 64, 66, 69, 70, "]", "[", 64, 66, 69, 68, "]", "[", 64, 66, 69, 67, "]", "[", 64, 66, 69, 65, "]", "[", 64, 66, 69, 63, "]", "[", 64, 66, 69, 62, "]", "[", 64, 66, 69, 61, "]", "[", 64, 66, 69, 60, "]", "[", 64, 66, 68, 72, "]", "[", 64, 66, 68, 71, "]", "[", 64, 66, 68, 70, "]", "[", 64, 66, 68, 69, "]", "[", 64, 66, 68, 67, "]", "[", 64, 66, 68, 65, "]", "[", 64, 66, 68, 63, "]", "[", 64, 66, 68, 62, "]", "[", 64, 66, 68, 61, "]", "[", 64, 66, 68, 60, "]", "[", 64, 66, 67, 72, "]", "[", 64, 66, 67, 71, "]", "[", 64, 66, 67, 70, "]", "[", 64, 66, 67, 69, "]", "[", 64, 66, 67, 68, "]", "[", 64, 66, 67, 65, "]", "[", 64, 66, 67, 63, "]", "[", 64, 66, 67, 62, "]", "[", 64, 66, 67, 61, "]", "[", 64, 66, 67, 60, "]", "[", 64, 66, 65, 72, "]", "[", 64, 66, 65, 71, "]", "[", 64, 66, 65, 70, "]", "[", 64, 66, 65, 69, "]", "[", 64, 66, 65, 68, "]", "[", 64, 66, 65, 67, "]", "[", 64, 66, 65, 63, "]", "[", 64, 66, 65, 62, "]", "[", 64, 66, 65, 61, "]", "[", 64, 66, 65, 60, "]", "[", 64, 66, 63, 72, "]", "[", 64, 66, 63, 71, "]", "[", 64, 66, 63, 70, "]", "[", 64, 66, 63, 69, "]", "[", 64, 66, 63, 68, "]", "[", 64, 66, 63, 67, "]", "[", 64, 66, 63, 65, "]", "[", 64, 66, 63, 62, "]", "[", 64, 66, 63, 61, "]", "[", 64, 66, 63, 60, "]", "[", 64, 66, 62, 72, "]", "[", 64, 66, 62, 71, "]", "[", 64, 66, 62, 70, "]", "[", 64, 66, 62, 69, "]", "[", 64, 66, 62, 68, "]", "[", 64, 66, 62, 67, "]", "[", 64, 66, 62, 65, "]", "[", 64, 66, 62, 63, "]", "[", 64, 66, 62, 61, "]", "[", 64, 66, 62, 60, "]", "[", 64, 66, 61, 72, "]", "[", 64, 66, 61, 71, "]", "[", 64, 66, 61, 70, "]", "[", 64, 66, 61, 69, "]", "[", 64, 66, 61, 68, "]", "[", 64, 66, 61, 67, "]", "[", 64, 66, 61, 65, "]", "[", 64, 66, 61, 63, "]", "[", 64, 66, 61, 62, "]", "[", 64, 66, 61, 60, "]", "[", 64, 66, 60, 72, "]", "[", 64, 66, 60, 71, "]", "[", 64, 66, 60, 70, "]", "[", 64, 66, 60, 69, "]", "[", 64, 66, 60, 68, "]", "[", 64, 66, 60, 67, "]", "[", 64, 66, 60, 65, "]", "[", 64, 66, 60, 63, "]", "[", 64, 66, 60, 62, "]", "[", 64, 66, 60, 61, "]", "[", 64, 65, 72, 71, "]", "[", 64, 65, 72, 70, "]", "[", 64, 65, 72, 69, "]", "[", 64, 65, 72, 68, "]", "[", 64, 65, 72, 67, "]", "[", 64, 65, 72, 66, "]", "[", 64, 65, 72, 63, "]", "[", 64, 65, 72, 62, "]", "[", 64, 65, 72, 61, "]", "[", 64, 65, 72, 60, "]", "[", 64, 65, 71, 72, "]", "[", 64, 65, 71, 70, "]", "[", 64, 65, 71, 69, "]", "[", 64, 65, 71, 68, "]", "[", 64, 65, 71, 67, "]", "[", 64, 65, 71, 66, "]", "[", 64, 65, 71, 63, "]", "[", 64, 65, 71, 62, "]", "[", 64, 65, 71, 61, "]", "[", 64, 65, 71, 60, "]", "[", 64, 65, 70, 72, "]", "[", 64, 65, 70, 71, "]", "[", 64, 65, 70, 69, "]", "[", 64, 65, 70, 68, "]", "[", 64, 65, 70, 67, "]", "[", 64, 65, 70, 66, "]", "[", 64, 65, 70, 63, "]", "[", 64, 65, 70, 62, "]", "[", 64, 65, 70, 61, "]", "[", 64, 65, 70, 60, "]", "[", 64, 65, 69, 72, "]", "[", 64, 65, 69, 71, "]", "[", 64, 65, 69, 70, "]", "[", 64, 65, 69, 68, "]", "[", 64, 65, 69, 67, "]", "[", 64, 65, 69, 66, "]", "[", 64, 65, 69, 63, "]", "[", 64, 65, 69, 62, "]", "[", 64, 65, 69, 61, "]", "[", 64, 65, 69, 60, "]", "[", 64, 65, 68, 72, "]", "[", 64, 65, 68, 71, "]", "[", 64, 65, 68, 70, "]", "[", 64, 65, 68, 69, "]", "[", 64, 65, 68, 67, "]", "[", 64, 65, 68, 66, "]", "[", 64, 65, 68, 63, "]", "[", 64, 65, 68, 62, "]", "[", 64, 65, 68, 61, "]", "[", 64, 65, 68, 60, "]", "[", 64, 65, 67, 72, "]", "[", 64, 65, 67, 71, "]", "[", 64, 65, 67, 70, "]", "[", 64, 65, 67, 69, "]", "[", 64, 65, 67, 68, "]", "[", 64, 65, 67, 66, "]", "[", 64, 65, 67, 63, "]", "[", 64, 65, 67, 62, "]", "[", 64, 65, 67, 61, "]", "[", 64, 65, 67, 60, "]", "[", 64, 65, 66, 72, "]", "[", 64, 65, 66, 71, "]", "[", 64, 65, 66, 70, "]", "[", 64, 65, 66, 69, "]", "[", 64, 65, 66, 68, "]", "[", 64, 65, 66, 67, "]", "[", 64, 65, 66, 63, "]", "[", 64, 65, 66, 62, "]", "[", 64, 65, 66, 61, "]", "[", 64, 65, 66, 60, "]", "[", 64, 65, 63, 72, "]", "[", 64, 65, 63, 71, "]", "[", 64, 65, 63, 70, "]", "[", 64, 65, 63, 69, "]", "[", 64, 65, 63, 68, "]", "[", 64, 65, 63, 67, "]", "[", 64, 65, 63, 66, "]", "[", 64, 65, 63, 62, "]", "[", 64, 65, 63, 61, "]", "[", 64, 65, 63, 60, "]", "[", 64, 65, 62, 72, "]", "[", 64, 65, 62, 71, "]", "[", 64, 65, 62, 70, "]", "[", 64, 65, 62, 69, "]", "[", 64, 65, 62, 68, "]", "[", 64, 65, 62, 67, "]", "[", 64, 65, 62, 66, "]", "[", 64, 65, 62, 63, "]", "[", 64, 65, 62, 61, "]", "[", 64, 65, 62, 60, "]", "[", 64, 65, 61, 72, "]", "[", 64, 65, 61, 71, "]", "[", 64, 65, 61, 70, "]", "[", 64, 65, 61, 69, "]", "[", 64, 65, 61, 68, "]", "[", 64, 65, 61, 67, "]", "[", 64, 65, 61, 66, "]", "[", 64, 65, 61, 63, "]", "[", 64, 65, 61, 62, "]", "[", 64, 65, 61, 60, "]", "[", 64, 65, 60, 72, "]", "[", 64, 65, 60, 71, "]", "[", 64, 65, 60, 70, "]", "[", 64, 65, 60, 69, "]", "[", 64, 65, 60, 68, "]", "[", 64, 65, 60, 67, "]", "[", 64, 65, 60, 66, "]", "[", 64, 65, 60, 63, "]", "[", 64, 65, 60, 62, "]", "[", 64, 65, 60, 61, "]", "[", 64, 63, 72, 71, "]", "[", 64, 63, 72, 70, "]", "[", 64, 63, 72, 69, "]", "[", 64, 63, 72, 68, "]", "[", 64, 63, 72, 67, "]", "[", 64, 63, 72, 66, "]", "[", 64, 63, 72, 65, "]", "[", 64, 63, 72, 62, "]", "[", 64, 63, 72, 61, "]", "[", 64, 63, 72, 60, "]", "[", 64, 63, 71, 72, "]", "[", 64, 63, 71, 70, "]", "[", 64, 63, 71, 69, "]", "[", 64, 63, 71, 68, "]", "[", 64, 63, 71, 67, "]", "[", 64, 63, 71, 66, "]", "[", 64, 63, 71, 65, "]", "[", 64, 63, 71, 62, "]", "[", 64, 63, 71, 61, "]", "[", 64, 63, 71, 60, "]", "[", 64, 63, 70, 72, "]", "[", 64, 63, 70, 71, "]", "[", 64, 63, 70, 69, "]", "[", 64, 63, 70, 68, "]", "[", 64, 63, 70, 67, "]", "[", 64, 63, 70, 66, "]", "[", 64, 63, 70, 65, "]", "[", 64, 63, 70, 62, "]", "[", 64, 63, 70, 61, "]", "[", 64, 63, 70, 60, "]", "[", 64, 63, 69, 72, "]", "[", 64, 63, 69, 71, "]", "[", 64, 63, 69, 70, "]", "[", 64, 63, 69, 68, "]", "[", 64, 63, 69, 67, "]", "[", 64, 63, 69, 66, "]", "[", 64, 63, 69, 65, "]", "[", 64, 63, 69, 62, "]", "[", 64, 63, 69, 61, "]", "[", 64, 63, 69, 60, "]", "[", 64, 63, 68, 72, "]", "[", 64, 63, 68, 71, "]", "[", 64, 63, 68, 70, "]", "[", 64, 63, 68, 69, "]", "[", 64, 63, 68, 67, "]", "[", 64, 63, 68, 66, "]", "[", 64, 63, 68, 65, "]", "[", 64, 63, 68, 62, "]", "[", 64, 63, 68, 61, "]", "[", 64, 63, 68, 60, "]", "[", 64, 63, 67, 72, "]", "[", 64, 63, 67, 71, "]", "[", 64, 63, 67, 70, "]", "[", 64, 63, 67, 69, "]", "[", 64, 63, 67, 68, "]", "[", 64, 63, 67, 66, "]", "[", 64, 63, 67, 65, "]", "[", 64, 63, 67, 62, "]", "[", 64, 63, 67, 61, "]", "[", 64, 63, 67, 60, "]", "[", 64, 63, 66, 72, "]", "[", 64, 63, 66, 71, "]", "[", 64, 63, 66, 70, "]", "[", 64, 63, 66, 69, "]", "[", 64, 63, 66, 68, "]", "[", 64, 63, 66, 67, "]", "[", 64, 63, 66, 65, "]", "[", 64, 63, 66, 62, "]", "[", 64, 63, 66, 61, "]", "[", 64, 63, 66, 60, "]", "[", 64, 63, 65, 72, "]", "[", 64, 63, 65, 71, "]", "[", 64, 63, 65, 70, "]", "[", 64, 63, 65, 69, "]", "[", 64, 63, 65, 68, "]", "[", 64, 63, 65, 67, "]", "[", 64, 63, 65, 66, "]", "[", 64, 63, 65, 62, "]", "[", 64, 63, 65, 61, "]", "[", 64, 63, 65, 60, "]", "[", 64, 63, 62, 72, "]", "[", 64, 63, 62, 71, "]", "[", 64, 63, 62, 70, "]", "[", 64, 63, 62, 69, "]", "[", 64, 63, 62, 68, "]", "[", 64, 63, 62, 67, "]", "[", 64, 63, 62, 66, "]", "[", 64, 63, 62, 65, "]", "[", 64, 63, 62, 61, "]", "[", 64, 63, 62, 60, "]", "[", 64, 63, 61, 72, "]", "[", 64, 63, 61, 71, "]", "[", 64, 63, 61, 70, "]", "[", 64, 63, 61, 69, "]", "[", 64, 63, 61, 68, "]", "[", 64, 63, 61, 67, "]", "[", 64, 63, 61, 66, "]", "[", 64, 63, 61, 65, "]", "[", 64, 63, 61, 62, "]", "[", 64, 63, 61, 60, "]", "[", 64, 63, 60, 72, "]", "[", 64, 63, 60, 71, "]", "[", 64, 63, 60, 70, "]", "[", 64, 63, 60, 69, "]", "[", 64, 63, 60, 68, "]", "[", 64, 63, 60, 67, "]", "[", 64, 63, 60, 66, "]", "[", 64, 63, 60, 65, "]", "[", 64, 63, 60, 62, "]", "[", 64, 63, 60, 61, "]", "[", 64, 62, 72, 71, "]", "[", 64, 62, 72, 70, "]", "[", 64, 62, 72, 69, "]", "[", 64, 62, 72, 68, "]", "[", 64, 62, 72, 67, "]", "[", 64, 62, 72, 66, "]", "[", 64, 62, 72, 65, "]", "[", 64, 62, 72, 63, "]", "[", 64, 62, 72, 61, "]", "[", 64, 62, 72, 60, "]", "[", 64, 62, 71, 72, "]", "[", 64, 62, 71, 70, "]", "[", 64, 62, 71, 69, "]", "[", 64, 62, 71, 68, "]", "[", 64, 62, 71, 67, "]", "[", 64, 62, 71, 66, "]", "[", 64, 62, 71, 65, "]", "[", 64, 62, 71, 63, "]", "[", 64, 62, 71, 61, "]", "[", 64, 62, 71, 60, "]", "[", 64, 62, 70, 72, "]", "[", 64, 62, 70, 71, "]", "[", 64, 62, 70, 69, "]", "[", 64, 62, 70, 68, "]", "[", 64, 62, 70, 67, "]", "[", 64, 62, 70, 66, "]", "[", 64, 62, 70, 65, "]", "[", 64, 62, 70, 63, "]", "[", 64, 62, 70, 61, "]", "[", 64, 62, 70, 60, "]", "[", 64, 62, 69, 72, "]", "[", 64, 62, 69, 71, "]", "[", 64, 62, 69, 70, "]", "[", 64, 62, 69, 68, "]", "[", 64, 62, 69, 67, "]", "[", 64, 62, 69, 66, "]", "[", 64, 62, 69, 65, "]", "[", 64, 62, 69, 63, "]", "[", 64, 62, 69, 61, "]", "[", 64, 62, 69, 60, "]", "[", 64, 62, 68, 72, "]", "[", 64, 62, 68, 71, "]", "[", 64, 62, 68, 70, "]", "[", 64, 62, 68, 69, "]", "[", 64, 62, 68, 67, "]", "[", 64, 62, 68, 66, "]", "[", 64, 62, 68, 65, "]", "[", 64, 62, 68, 63, "]", "[", 64, 62, 68, 61, "]", "[", 64, 62, 68, 60, "]", "[", 64, 62, 67, 72, "]", "[", 64, 62, 67, 71, "]", "[", 64, 62, 67, 70, "]", "[", 64, 62, 67, 69, "]", "[", 64, 62, 67, 68, "]", "[", 64 ],
													"reg_data_0000000017" : [ 62, 67, 66, "]", "[", 64, 62, 67, 65, "]", "[", 64, 62, 67, 63, "]", "[", 64, 62, 67, 61, "]", "[", 64, 62, 67, 60, "]", "[", 64, 62, 66, 72, "]", "[", 64, 62, 66, 71, "]", "[", 64, 62, 66, 70, "]", "[", 64, 62, 66, 69, "]", "[", 64, 62, 66, 68, "]", "[", 64, 62, 66, 67, "]", "[", 64, 62, 66, 65, "]", "[", 64, 62, 66, 63, "]", "[", 64, 62, 66, 61, "]", "[", 64, 62, 66, 60, "]", "[", 64, 62, 65, 72, "]", "[", 64, 62, 65, 71, "]", "[", 64, 62, 65, 70, "]", "[", 64, 62, 65, 69, "]", "[", 64, 62, 65, 68, "]", "[", 64, 62, 65, 67, "]", "[", 64, 62, 65, 66, "]", "[", 64, 62, 65, 63, "]", "[", 64, 62, 65, 61, "]", "[", 64, 62, 65, 60, "]", "[", 64, 62, 63, 72, "]", "[", 64, 62, 63, 71, "]", "[", 64, 62, 63, 70, "]", "[", 64, 62, 63, 69, "]", "[", 64, 62, 63, 68, "]", "[", 64, 62, 63, 67, "]", "[", 64, 62, 63, 66, "]", "[", 64, 62, 63, 65, "]", "[", 64, 62, 63, 61, "]", "[", 64, 62, 63, 60, "]", "[", 64, 62, 61, 72, "]", "[", 64, 62, 61, 71, "]", "[", 64, 62, 61, 70, "]", "[", 64, 62, 61, 69, "]", "[", 64, 62, 61, 68, "]", "[", 64, 62, 61, 67, "]", "[", 64, 62, 61, 66, "]", "[", 64, 62, 61, 65, "]", "[", 64, 62, 61, 63, "]", "[", 64, 62, 61, 60, "]", "[", 64, 62, 60, 72, "]", "[", 64, 62, 60, 71, "]", "[", 64, 62, 60, 70, "]", "[", 64, 62, 60, 69, "]", "[", 64, 62, 60, 68, "]", "[", 64, 62, 60, 67, "]", "[", 64, 62, 60, 66, "]", "[", 64, 62, 60, 65, "]", "[", 64, 62, 60, 63, "]", "[", 64, 62, 60, 61, "]", "[", 64, 61, 72, 71, "]", "[", 64, 61, 72, 70, "]", "[", 64, 61, 72, 69, "]", "[", 64, 61, 72, 68, "]", "[", 64, 61, 72, 67, "]", "[", 64, 61, 72, 66, "]", "[", 64, 61, 72, 65, "]", "[", 64, 61, 72, 63, "]", "[", 64, 61, 72, 62, "]", "[", 64, 61, 72, 60, "]", "[", 64, 61, 71, 72, "]", "[", 64, 61, 71, 70, "]", "[", 64, 61, 71, 69, "]", "[", 64, 61, 71, 68, "]", "[", 64, 61, 71, 67, "]", "[", 64, 61, 71, 66, "]", "[", 64, 61, 71, 65, "]", "[", 64, 61, 71, 63, "]", "[", 64, 61, 71, 62, "]", "[", 64, 61, 71, 60, "]", "[", 64, 61, 70, 72, "]", "[", 64, 61, 70, 71, "]", "[", 64, 61, 70, 69, "]", "[", 64, 61, 70, 68, "]", "[", 64, 61, 70, 67, "]", "[", 64, 61, 70, 66, "]", "[", 64, 61, 70, 65, "]", "[", 64, 61, 70, 63, "]", "[", 64, 61, 70, 62, "]", "[", 64, 61, 70, 60, "]", "[", 64, 61, 69, 72, "]", "[", 64, 61, 69, 71, "]", "[", 64, 61, 69, 70, "]", "[", 64, 61, 69, 68, "]", "[", 64, 61, 69, 67, "]", "[", 64, 61, 69, 66, "]", "[", 64, 61, 69, 65, "]", "[", 64, 61, 69, 63, "]", "[", 64, 61, 69, 62, "]", "[", 64, 61, 69, 60, "]", "[", 64, 61, 68, 72, "]", "[", 64, 61, 68, 71, "]", "[", 64, 61, 68, 70, "]", "[", 64, 61, 68, 69, "]", "[", 64, 61, 68, 67, "]", "[", 64, 61, 68, 66, "]", "[", 64, 61, 68, 65, "]", "[", 64, 61, 68, 63, "]", "[", 64, 61, 68, 62, "]", "[", 64, 61, 68, 60, "]", "[", 64, 61, 67, 72, "]", "[", 64, 61, 67, 71, "]", "[", 64, 61, 67, 70, "]", "[", 64, 61, 67, 69, "]", "[", 64, 61, 67, 68, "]", "[", 64, 61, 67, 66, "]", "[", 64, 61, 67, 65, "]", "[", 64, 61, 67, 63, "]", "[", 64, 61, 67, 62, "]", "[", 64, 61, 67, 60, "]", "[", 64, 61, 66, 72, "]", "[", 64, 61, 66, 71, "]", "[", 64, 61, 66, 70, "]", "[", 64, 61, 66, 69, "]", "[", 64, 61, 66, 68, "]", "[", 64, 61, 66, 67, "]", "[", 64, 61, 66, 65, "]", "[", 64, 61, 66, 63, "]", "[", 64, 61, 66, 62, "]", "[", 64, 61, 66, 60, "]", "[", 64, 61, 65, 72, "]", "[", 64, 61, 65, 71, "]", "[", 64, 61, 65, 70, "]", "[", 64, 61, 65, 69, "]", "[", 64, 61, 65, 68, "]", "[", 64, 61, 65, 67, "]", "[", 64, 61, 65, 66, "]", "[", 64, 61, 65, 63, "]", "[", 64, 61, 65, 62, "]", "[", 64, 61, 65, 60, "]", "[", 64, 61, 63, 72, "]", "[", 64, 61, 63, 71, "]", "[", 64, 61, 63, 70, "]", "[", 64, 61, 63, 69, "]", "[", 64, 61, 63, 68, "]", "[", 64, 61, 63, 67, "]", "[", 64, 61, 63, 66, "]", "[", 64, 61, 63, 65, "]", "[", 64, 61, 63, 62, "]", "[", 64, 61, 63, 60, "]", "[", 64, 61, 62, 72, "]", "[", 64, 61, 62, 71, "]", "[", 64, 61, 62, 70, "]", "[", 64, 61, 62, 69, "]", "[", 64, 61, 62, 68, "]", "[", 64, 61, 62, 67, "]", "[", 64, 61, 62, 66, "]", "[", 64, 61, 62, 65, "]", "[", 64, 61, 62, 63, "]", "[", 64, 61, 62, 60, "]", "[", 64, 61, 60, 72, "]", "[", 64, 61, 60, 71, "]", "[", 64, 61, 60, 70, "]", "[", 64, 61, 60, 69, "]", "[", 64, 61, 60, 68, "]", "[", 64, 61, 60, 67, "]", "[", 64, 61, 60, 66, "]", "[", 64, 61, 60, 65, "]", "[", 64, 61, 60, 63, "]", "[", 64, 61, 60, 62, "]", "[", 64, 60, 72, 71, "]", "[", 64, 60, 72, 70, "]", "[", 64, 60, 72, 69, "]", "[", 64, 60, 72, 68, "]", "[", 64, 60, 72, 67, "]", "[", 64, 60, 72, 66, "]", "[", 64, 60, 72, 65, "]", "[", 64, 60, 72, 63, "]", "[", 64, 60, 72, 62, "]", "[", 64, 60, 72, 61, "]", "[", 64, 60, 71, 72, "]", "[", 64, 60, 71, 70, "]", "[", 64, 60, 71, 69, "]", "[", 64, 60, 71, 68, "]", "[", 64, 60, 71, 67, "]", "[", 64, 60, 71, 66, "]", "[", 64, 60, 71, 65, "]", "[", 64, 60, 71, 63, "]", "[", 64, 60, 71, 62, "]", "[", 64, 60, 71, 61, "]", "[", 64, 60, 70, 72, "]", "[", 64, 60, 70, 71, "]", "[", 64, 60, 70, 69, "]", "[", 64, 60, 70, 68, "]", "[", 64, 60, 70, 67, "]", "[", 64, 60, 70, 66, "]", "[", 64, 60, 70, 65, "]", "[", 64, 60, 70, 63, "]", "[", 64, 60, 70, 62, "]", "[", 64, 60, 70, 61, "]", "[", 64, 60, 69, 72, "]", "[", 64, 60, 69, 71, "]", "[", 64, 60, 69, 70, "]", "[", 64, 60, 69, 68, "]", "[", 64, 60, 69, 67, "]", "[", 64, 60, 69, 66, "]", "[", 64, 60, 69, 65, "]", "[", 64, 60, 69, 63, "]", "[", 64, 60, 69, 62, "]", "[", 64, 60, 69, 61, "]", "[", 64, 60, 68, 72, "]", "[", 64, 60, 68, 71, "]", "[", 64, 60, 68, 70, "]", "[", 64, 60, 68, 69, "]", "[", 64, 60, 68, 67, "]", "[", 64, 60, 68, 66, "]", "[", 64, 60, 68, 65, "]", "[", 64, 60, 68, 63, "]", "[", 64, 60, 68, 62, "]", "[", 64, 60, 68, 61, "]", "[", 64, 60, 67, 72, "]", "[", 64, 60, 67, 71, "]", "[", 64, 60, 67, 70, "]", "[", 64, 60, 67, 69, "]", "[", 64, 60, 67, 68, "]", "[", 64, 60, 67, 66, "]", "[", 64, 60, 67, 65, "]", "[", 64, 60, 67, 63, "]", "[", 64, 60, 67, 62, "]", "[", 64, 60, 67, 61, "]", "[", 64, 60, 66, 72, "]", "[", 64, 60, 66, 71, "]", "[", 64, 60, 66, 70, "]", "[", 64, 60, 66, 69, "]", "[", 64, 60, 66, 68, "]", "[", 64, 60, 66, 67, "]", "[", 64, 60, 66, 65, "]", "[", 64, 60, 66, 63, "]", "[", 64, 60, 66, 62, "]", "[", 64, 60, 66, 61, "]", "[", 64, 60, 65, 72, "]", "[", 64, 60, 65, 71, "]", "[", 64, 60, 65, 70, "]", "[", 64, 60, 65, 69, "]", "[", 64, 60, 65, 68, "]", "[", 64, 60, 65, 67, "]", "[", 64, 60, 65, 66, "]", "[", 64, 60, 65, 63, "]", "[", 64, 60, 65, 62, "]", "[", 64, 60, 65, 61, "]", "[", 64, 60, 63, 72, "]", "[", 64, 60, 63, 71, "]", "[", 64, 60, 63, 70, "]", "[", 64, 60, 63, 69, "]", "[", 64, 60, 63, 68, "]", "[", 64, 60, 63, 67, "]", "[", 64, 60, 63, 66, "]", "[", 64, 60, 63, 65, "]", "[", 64, 60, 63, 62, "]", "[", 64, 60, 63, 61, "]", "[", 64, 60, 62, 72, "]", "[", 64, 60, 62, 71, "]", "[", 64, 60, 62, 70, "]", "[", 64, 60, 62, 69, "]", "[", 64, 60, 62, 68, "]", "[", 64, 60, 62, 67, "]", "[", 64, 60, 62, 66, "]", "[", 64, 60, 62, 65, "]", "[", 64, 60, 62, 63, "]", "[", 64, 60, 62, 61, "]", "[", 64, 60, 61, 72, "]", "[", 64, 60, 61, 71, "]", "[", 64, 60, 61, 70, "]", "[", 64, 60, 61, 69, "]", "[", 64, 60, 61, 68, "]", "[", 64, 60, 61, 67, "]", "[", 64, 60, 61, 66, "]", "[", 64, 60, 61, 65, "]", "[", 64, 60, 61, 63, "]", "[", 64, 60, 61, 62, "]", "[", 63, 72, 71, 70, "]", "[", 63, 72, 71, 69, "]", "[", 63, 72, 71, 68, "]", "[", 63, 72, 71, 67, "]", "[", 63, 72, 71, 66, "]", "[", 63, 72, 71, 65, "]", "[", 63, 72, 71, 64, "]", "[", 63, 72, 71, 62, "]", "[", 63, 72, 71, 61, "]", "[", 63, 72, 71, 60, "]", "[", 63, 72, 70, 71, "]", "[", 63, 72, 70, 69, "]", "[", 63, 72, 70, 68, "]", "[", 63, 72, 70, 67, "]", "[", 63, 72, 70, 66, "]", "[", 63, 72, 70, 65, "]", "[", 63, 72, 70, 64, "]", "[", 63, 72, 70, 62, "]", "[", 63, 72, 70, 61, "]", "[", 63, 72, 70, 60, "]", "[", 63, 72, 69, 71, "]", "[", 63, 72, 69, 70, "]", "[", 63, 72, 69, 68, "]", "[", 63, 72, 69, 67, "]", "[", 63, 72, 69, 66, "]", "[", 63, 72, 69, 65, "]", "[", 63, 72, 69, 64, "]", "[", 63, 72, 69, 62, "]", "[", 63, 72, 69, 61, "]", "[", 63, 72, 69, 60, "]", "[", 63, 72, 68, 71, "]", "[", 63, 72, 68, 70, "]", "[", 63, 72, 68, 69, "]", "[", 63, 72, 68, 67, "]", "[", 63, 72, 68, 66, "]", "[", 63, 72, 68, 65, "]", "[", 63, 72, 68, 64, "]", "[", 63, 72, 68, 62, "]", "[", 63, 72, 68, 61, "]", "[", 63, 72, 68, 60, "]", "[", 63, 72, 67, 71, "]", "[", 63, 72, 67, 70, "]", "[", 63, 72, 67, 69, "]", "[", 63, 72, 67, 68, "]", "[", 63, 72, 67, 66, "]", "[", 63, 72, 67, 65, "]", "[", 63, 72, 67, 64, "]", "[", 63, 72, 67, 62, "]", "[", 63, 72, 67, 61, "]", "[", 63, 72, 67, 60, "]", "[", 63, 72, 66, 71, "]", "[", 63, 72, 66, 70, "]", "[", 63, 72, 66, 69, "]", "[", 63, 72, 66, 68, "]", "[", 63, 72, 66, 67, "]", "[", 63, 72, 66, 65, "]", "[", 63, 72, 66, 64, "]", "[", 63, 72, 66, 62, "]", "[", 63, 72, 66, 61, "]", "[", 63, 72, 66, 60, "]", "[", 63, 72, 65, 71, "]", "[", 63, 72, 65, 70, "]", "[", 63, 72, 65, 69, "]", "[", 63, 72, 65, 68, "]", "[", 63, 72, 65, 67, "]", "[", 63, 72, 65, 66, "]", "[", 63, 72, 65, 64, "]", "[", 63, 72, 65, 62, "]", "[", 63, 72, 65, 61, "]", "[", 63, 72, 65, 60, "]", "[", 63, 72, 64, 71, "]", "[", 63, 72, 64, 70, "]", "[", 63, 72, 64, 69, "]", "[", 63, 72, 64, 68, "]", "[", 63, 72, 64, 67, "]", "[", 63, 72, 64, 66, "]", "[", 63, 72, 64, 65, "]", "[", 63, 72, 64, 62, "]", "[", 63, 72, 64, 61, "]", "[", 63, 72, 64, 60, "]", "[", 63, 72, 62, 71, "]", "[", 63, 72, 62, 70, "]", "[", 63, 72, 62, 69, "]", "[", 63, 72, 62, 68, "]", "[", 63, 72, 62, 67, "]", "[", 63, 72, 62, 66, "]", "[", 63, 72, 62, 65, "]", "[", 63, 72, 62, 64, "]", "[", 63, 72, 62, 61, "]", "[", 63, 72, 62, 60, "]", "[", 63, 72, 61, 71, "]", "[", 63, 72, 61, 70, "]", "[", 63, 72, 61, 69, "]", "[", 63, 72, 61, 68, "]", "[", 63, 72, 61, 67, "]", "[", 63, 72, 61, 66, "]", "[", 63, 72, 61, 65, "]", "[", 63, 72, 61, 64, "]", "[", 63, 72, 61, 62, "]", "[", 63, 72, 61, 60, "]", "[", 63, 72, 60, 71, "]", "[", 63, 72, 60, 70, "]", "[", 63, 72, 60, 69, "]", "[", 63, 72, 60, 68, "]", "[", 63, 72, 60, 67, "]", "[", 63, 72, 60, 66, "]", "[", 63, 72, 60, 65, "]", "[", 63, 72, 60, 64, "]", "[", 63, 72, 60, 62, "]", "[", 63, 72, 60, 61, "]", "[", 63, 71, 72, 70, "]", "[", 63, 71, 72, 69, "]", "[", 63, 71, 72, 68, "]", "[", 63, 71, 72, 67, "]", "[", 63, 71, 72, 66, "]", "[", 63, 71, 72, 65, "]", "[", 63, 71, 72, 64, "]", "[", 63, 71, 72, 62, "]", "[", 63, 71, 72, 61, "]", "[", 63, 71, 72, 60, "]", "[", 63, 71, 70, 72, "]", "[", 63, 71, 70, 69, "]", "[", 63, 71, 70, 68, "]", "[", 63, 71, 70, 67, "]", "[", 63, 71, 70, 66, "]", "[", 63, 71, 70, 65, "]", "[", 63, 71, 70, 64, "]", "[", 63, 71, 70, 62, "]", "[", 63, 71, 70, 61, "]", "[", 63, 71, 70, 60, "]", "[", 63, 71, 69, 72, "]", "[", 63, 71, 69, 70, "]", "[", 63, 71, 69, 68, "]", "[", 63, 71, 69, 67, "]", "[", 63, 71, 69, 66, "]", "[", 63, 71, 69, 65, "]", "[", 63, 71, 69, 64, "]", "[", 63, 71, 69, 62, "]", "[", 63, 71, 69, 61, "]", "[", 63, 71, 69, 60, "]", "[", 63, 71, 68, 72, "]", "[", 63, 71, 68, 70, "]", "[", 63, 71, 68, 69, "]", "[", 63, 71, 68, 67, "]", "[", 63, 71, 68, 66, "]", "[", 63, 71, 68, 65, "]", "[", 63, 71, 68, 64, "]", "[", 63, 71, 68, 62, "]", "[", 63, 71, 68, 61, "]", "[", 63, 71, 68, 60, "]", "[", 63, 71, 67, 72, "]", "[", 63, 71, 67, 70, "]", "[", 63, 71, 67, 69, "]", "[", 63, 71, 67, 68, "]", "[", 63, 71, 67, 66, "]", "[", 63, 71, 67, 65, "]", "[", 63, 71, 67, 64, "]", "[", 63, 71, 67, 62, "]", "[", 63, 71, 67, 61, "]", "[", 63, 71, 67, 60, "]", "[", 63, 71, 66, 72, "]", "[", 63, 71, 66, 70, "]", "[", 63, 71, 66, 69, "]", "[", 63, 71, 66, 68, "]", "[", 63, 71, 66, 67, "]", "[", 63, 71, 66, 65, "]", "[", 63, 71, 66, 64, "]", "[", 63, 71, 66, 62, "]", "[", 63, 71, 66, 61, "]", "[", 63, 71, 66, 60, "]", "[", 63, 71, 65, 72, "]", "[", 63, 71, 65, 70, "]", "[", 63, 71, 65, 69, "]", "[", 63, 71, 65, 68, "]", "[", 63, 71, 65, 67, "]", "[", 63, 71, 65, 66, "]", "[", 63, 71, 65, 64, "]", "[", 63, 71, 65, 62, "]", "[", 63, 71, 65, 61, "]", "[", 63, 71, 65, 60, "]", "[", 63, 71, 64, 72, "]", "[", 63, 71, 64, 70, "]", "[", 63, 71, 64, 69, "]", "[", 63, 71, 64, 68, "]", "[", 63, 71, 64, 67, "]", "[", 63, 71, 64, 66, "]", "[", 63, 71, 64, 65, "]", "[", 63, 71, 64, 62, "]", "[", 63, 71, 64, 61, "]", "[", 63, 71, 64, 60, "]", "[", 63, 71, 62, 72, "]", "[", 63, 71, 62, 70, "]", "[", 63, 71, 62, 69, "]", "[", 63, 71, 62, 68, "]", "[", 63, 71, 62, 67, "]", "[", 63, 71, 62, 66, "]", "[", 63, 71, 62, 65, "]", "[", 63, 71, 62, 64, "]", "[", 63, 71, 62, 61, "]", "[", 63, 71, 62, 60, "]", "[", 63, 71, 61, 72, "]", "[", 63, 71, 61, 70, "]", "[", 63, 71, 61, 69, "]", "[", 63, 71, 61, 68, "]", "[", 63, 71, 61, 67, "]", "[", 63, 71, 61, 66, "]", "[", 63, 71, 61, 65, "]", "[", 63, 71, 61, 64, "]", "[", 63, 71, 61, 62, "]", "[", 63, 71, 61, 60, "]", "[", 63, 71, 60, 72, "]", "[", 63, 71, 60, 70, "]", "[", 63, 71, 60, 69, "]", "[", 63, 71, 60, 68, "]", "[", 63, 71, 60, 67, "]", "[", 63, 71, 60, 66, "]", "[", 63, 71, 60, 65, "]", "[", 63, 71, 60, 64, "]", "[", 63, 71, 60, 62, "]", "[", 63, 71, 60, 61, "]", "[", 63, 70, 72, 71, "]", "[", 63, 70, 72, 69, "]", "[", 63, 70, 72, 68, "]", "[", 63, 70, 72, 67, "]", "[", 63, 70, 72, 66, "]", "[", 63, 70, 72, 65, "]", "[", 63, 70, 72, 64, "]", "[", 63, 70, 72, 62, "]", "[", 63, 70, 72, 61, "]", "[", 63, 70, 72, 60, "]", "[", 63, 70, 71, 72, "]", "[", 63, 70, 71, 69, "]", "[", 63, 70, 71, 68, "]", "[", 63, 70, 71, 67, "]", "[", 63, 70, 71, 66, "]", "[", 63, 70, 71, 65, "]", "[", 63, 70, 71, 64, "]", "[", 63, 70, 71, 62, "]", "[", 63, 70, 71, 61, "]", "[", 63, 70, 71, 60, "]", "[", 63, 70, 69, 72, "]", "[", 63, 70, 69, 71, "]", "[", 63, 70, 69, 68, "]", "[", 63, 70, 69, 67, "]", "[", 63, 70, 69, 66, "]", "[", 63, 70, 69, 65, "]", "[", 63, 70, 69, 64, "]", "[", 63, 70, 69, 62, "]", "[", 63, 70, 69, 61, "]", "[", 63, 70, 69, 60, "]", "[", 63, 70, 68, 72, "]", "[", 63, 70, 68, 71, "]", "[", 63, 70, 68, 69, "]", "[", 63, 70, 68, 67, "]", "[", 63, 70, 68, 66, "]", "[", 63, 70, 68, 65, "]", "[", 63, 70, 68, 64, "]", "[", 63, 70, 68, 62, "]", "[", 63, 70, 68, 61, "]", "[", 63, 70, 68, 60, "]", "[", 63, 70, 67, 72, "]", "[", 63, 70, 67, 71, "]", "[", 63, 70, 67, 69, "]", "[", 63, 70, 67, 68, "]", "[", 63, 70, 67, 66, "]", "[", 63, 70, 67, 65, "]", "[", 63, 70, 67, 64, "]", "[", 63, 70, 67, 62, "]", "[", 63, 70, 67, 61, "]", "[", 63, 70, 67, 60, "]", "[", 63, 70, 66, 72, "]", "[", 63, 70, 66, 71, "]", "[", 63, 70, 66, 69, "]", "[", 63, 70, 66, 68, "]", "[", 63, 70, 66, 67, "]", "[", 63, 70, 66, 65, "]", "[", 63, 70, 66, 64, "]", "[", 63, 70, 66, 62, "]", "[", 63, 70, 66, 61, "]", "[", 63, 70, 66, 60, "]", "[", 63, 70, 65, 72, "]", "[", 63, 70, 65, 71, "]", "[", 63, 70, 65, 69, "]", "[", 63, 70, 65, 68, "]", "[", 63, 70, 65, 67, "]", "[", 63, 70, 65, 66, "]", "[", 63, 70, 65, 64, "]", "[", 63, 70, 65, 62, "]", "[", 63, 70, 65, 61, "]", "[", 63, 70, 65, 60, "]", "[", 63, 70, 64, 72, "]", "[", 63, 70, 64, 71, "]", "[", 63, 70, 64, 69, "]", "[", 63, 70, 64, 68, "]", "[", 63, 70, 64, 67, "]", "[", 63, 70, 64, 66, "]", "[", 63, 70, 64, 65, "]", "[", 63, 70, 64, 62, "]", "[", 63, 70, 64, 61, "]", "[", 63, 70, 64, 60, "]", "[", 63, 70, 62, 72, "]", "[", 63, 70, 62, 71, "]", "[", 63, 70, 62, 69, "]", "[", 63, 70, 62, 68, "]", "[", 63, 70, 62, 67, "]", "[", 63, 70, 62, 66, "]", "[", 63, 70, 62, 65, "]", "[", 63, 70, 62, 64, "]", "[", 63, 70, 62, 61, "]", "[", 63, 70, 62, 60, "]", "[", 63, 70, 61, 72, "]", "[", 63, 70, 61, 71, "]", "[", 63, 70, 61, 69, "]", "[", 63, 70, 61, 68, "]", "[", 63, 70, 61, 67, "]", "[", 63, 70, 61, 66, "]", "[", 63, 70, 61, 65, "]", "[", 63, 70, 61, 64, "]", "[", 63, 70, 61, 62, "]", "[", 63, 70, 61, 60, "]", "[", 63, 70, 60, 72, "]", "[", 63, 70, 60, 71, "]", "[", 63, 70, 60, 69, "]", "[", 63, 70, 60, 68, "]", "[", 63, 70, 60, 67, "]", "[", 63, 70, 60, 66, "]", "[", 63, 70, 60, 65, "]", "[", 63, 70, 60, 64, "]", "[", 63, 70, 60, 62, "]", "[", 63, 70, 60, 61, "]", "[", 63, 69, 72, 71, "]", "[", 63, 69, 72, 70, "]", "[", 63, 69, 72, 68, "]", "[", 63, 69, 72, 67, "]", "[", 63, 69, 72, 66, "]", "[", 63, 69, 72, 65, "]", "[", 63, 69, 72, 64, "]", "[", 63, 69, 72, 62, "]", "[", 63, 69, 72, 61, "]", "[", 63, 69, 72, 60, "]", "[", 63, 69, 71, 72, "]", "[", 63, 69, 71, 70, "]", "[", 63, 69, 71, 68, "]", "[", 63, 69, 71, 67, "]", "[", 63, 69, 71, 66, "]", "[", 63, 69, 71, 65, "]", "[", 63, 69, 71, 64, "]", "[", 63, 69, 71, 62, "]", "[", 63, 69, 71, 61, "]", "[", 63, 69, 71, 60, "]", "[", 63, 69, 70, 72, "]", "[", 63, 69, 70, 71, "]", "[", 63, 69, 70, 68, "]", "[", 63, 69, 70, 67, "]", "[", 63, 69, 70, 66, "]", "[", 63, 69, 70, 65, "]", "[", 63, 69, 70, 64, "]", "[", 63, 69, 70, 62, "]", "[", 63, 69, 70, 61, "]", "[", 63, 69, 70, 60, "]", "[", 63, 69, 68, 72, "]", "[", 63, 69, 68, 71, "]", "[", 63, 69, 68, 70, "]", "[", 63, 69, 68, 67, "]", "[", 63, 69, 68, 66, "]", "[", 63, 69, 68, 65, "]", "[", 63, 69, 68, 64, "]", "[", 63, 69, 68, 62, "]", "[", 63, 69, 68, 61, "]", "[", 63, 69, 68, 60, "]", "[", 63, 69, 67, 72, "]", "[", 63, 69, 67, 71, "]", "[", 63, 69, 67, 70, "]", "[", 63, 69, 67, 68, "]", "[", 63, 69, 67, 66, "]", "[", 63, 69, 67, 65, "]", "[", 63, 69, 67, 64, "]", "[", 63, 69, 67, 62, "]", "[", 63, 69, 67, 61, "]", "[", 63, 69, 67, 60, "]", "[", 63, 69, 66, 72, "]", "[", 63, 69, 66, 71, "]", "[", 63, 69, 66, 70, "]", "[", 63, 69, 66, 68, "]", "[", 63, 69, 66, 67, "]", "[", 63, 69, 66, 65, "]", "[", 63, 69, 66, 64, "]", "[", 63, 69, 66, 62, "]", "[", 63, 69, 66, 61, "]", "[", 63, 69, 66, 60, "]", "[", 63, 69, 65, 72, "]", "[", 63, 69, 65, 71, "]", "[", 63, 69, 65, 70, "]", "[", 63, 69, 65, 68, "]", "[", 63, 69, 65, 67, "]", "[", 63, 69, 65, 66, "]", "[", 63, 69, 65, 64, "]", "[", 63, 69, 65, 62, "]", "[", 63, 69, 65, 61, "]", "[", 63, 69, 65, 60, "]", "[", 63, 69, 64, 72, "]", "[", 63, 69, 64, 71, "]", "[", 63, 69, 64, 70, "]", "[", 63, 69, 64, 68, "]", "[", 63, 69, 64, 67, "]", "[", 63, 69, 64, 66, "]", "[", 63, 69, 64, 65, "]", "[", 63, 69, 64, 62, "]" ],
													"reg_data_0000000018" : [ "[", 63, 69, 64, 61, "]", "[", 63, 69, 64, 60, "]", "[", 63, 69, 62, 72, "]", "[", 63, 69, 62, 71, "]", "[", 63, 69, 62, 70, "]", "[", 63, 69, 62, 68, "]", "[", 63, 69, 62, 67, "]", "[", 63, 69, 62, 66, "]", "[", 63, 69, 62, 65, "]", "[", 63, 69, 62, 64, "]", "[", 63, 69, 62, 61, "]", "[", 63, 69, 62, 60, "]", "[", 63, 69, 61, 72, "]", "[", 63, 69, 61, 71, "]", "[", 63, 69, 61, 70, "]", "[", 63, 69, 61, 68, "]", "[", 63, 69, 61, 67, "]", "[", 63, 69, 61, 66, "]", "[", 63, 69, 61, 65, "]", "[", 63, 69, 61, 64, "]", "[", 63, 69, 61, 62, "]", "[", 63, 69, 61, 60, "]", "[", 63, 69, 60, 72, "]", "[", 63, 69, 60, 71, "]", "[", 63, 69, 60, 70, "]", "[", 63, 69, 60, 68, "]", "[", 63, 69, 60, 67, "]", "[", 63, 69, 60, 66, "]", "[", 63, 69, 60, 65, "]", "[", 63, 69, 60, 64, "]", "[", 63, 69, 60, 62, "]", "[", 63, 69, 60, 61, "]", "[", 63, 68, 72, 71, "]", "[", 63, 68, 72, 70, "]", "[", 63, 68, 72, 69, "]", "[", 63, 68, 72, 67, "]", "[", 63, 68, 72, 66, "]", "[", 63, 68, 72, 65, "]", "[", 63, 68, 72, 64, "]", "[", 63, 68, 72, 62, "]", "[", 63, 68, 72, 61, "]", "[", 63, 68, 72, 60, "]", "[", 63, 68, 71, 72, "]", "[", 63, 68, 71, 70, "]", "[", 63, 68, 71, 69, "]", "[", 63, 68, 71, 67, "]", "[", 63, 68, 71, 66, "]", "[", 63, 68, 71, 65, "]", "[", 63, 68, 71, 64, "]", "[", 63, 68, 71, 62, "]", "[", 63, 68, 71, 61, "]", "[", 63, 68, 71, 60, "]", "[", 63, 68, 70, 72, "]", "[", 63, 68, 70, 71, "]", "[", 63, 68, 70, 69, "]", "[", 63, 68, 70, 67, "]", "[", 63, 68, 70, 66, "]", "[", 63, 68, 70, 65, "]", "[", 63, 68, 70, 64, "]", "[", 63, 68, 70, 62, "]", "[", 63, 68, 70, 61, "]", "[", 63, 68, 70, 60, "]", "[", 63, 68, 69, 72, "]", "[", 63, 68, 69, 71, "]", "[", 63, 68, 69, 70, "]", "[", 63, 68, 69, 67, "]", "[", 63, 68, 69, 66, "]", "[", 63, 68, 69, 65, "]", "[", 63, 68, 69, 64, "]", "[", 63, 68, 69, 62, "]", "[", 63, 68, 69, 61, "]", "[", 63, 68, 69, 60, "]", "[", 63, 68, 67, 72, "]", "[", 63, 68, 67, 71, "]", "[", 63, 68, 67, 70, "]", "[", 63, 68, 67, 69, "]", "[", 63, 68, 67, 66, "]", "[", 63, 68, 67, 65, "]", "[", 63, 68, 67, 64, "]", "[", 63, 68, 67, 62, "]", "[", 63, 68, 67, 61, "]", "[", 63, 68, 67, 60, "]", "[", 63, 68, 66, 72, "]", "[", 63, 68, 66, 71, "]", "[", 63, 68, 66, 70, "]", "[", 63, 68, 66, 69, "]", "[", 63, 68, 66, 67, "]", "[", 63, 68, 66, 65, "]", "[", 63, 68, 66, 64, "]", "[", 63, 68, 66, 62, "]", "[", 63, 68, 66, 61, "]", "[", 63, 68, 66, 60, "]", "[", 63, 68, 65, 72, "]", "[", 63, 68, 65, 71, "]", "[", 63, 68, 65, 70, "]", "[", 63, 68, 65, 69, "]", "[", 63, 68, 65, 67, "]", "[", 63, 68, 65, 66, "]", "[", 63, 68, 65, 64, "]", "[", 63, 68, 65, 62, "]", "[", 63, 68, 65, 61, "]", "[", 63, 68, 65, 60, "]", "[", 63, 68, 64, 72, "]", "[", 63, 68, 64, 71, "]", "[", 63, 68, 64, 70, "]", "[", 63, 68, 64, 69, "]", "[", 63, 68, 64, 67, "]", "[", 63, 68, 64, 66, "]", "[", 63, 68, 64, 65, "]", "[", 63, 68, 64, 62, "]", "[", 63, 68, 64, 61, "]", "[", 63, 68, 64, 60, "]", "[", 63, 68, 62, 72, "]", "[", 63, 68, 62, 71, "]", "[", 63, 68, 62, 70, "]", "[", 63, 68, 62, 69, "]", "[", 63, 68, 62, 67, "]", "[", 63, 68, 62, 66, "]", "[", 63, 68, 62, 65, "]", "[", 63, 68, 62, 64, "]", "[", 63, 68, 62, 61, "]", "[", 63, 68, 62, 60, "]", "[", 63, 68, 61, 72, "]", "[", 63, 68, 61, 71, "]", "[", 63, 68, 61, 70, "]", "[", 63, 68, 61, 69, "]", "[", 63, 68, 61, 67, "]", "[", 63, 68, 61, 66, "]", "[", 63, 68, 61, 65, "]", "[", 63, 68, 61, 64, "]", "[", 63, 68, 61, 62, "]", "[", 63, 68, 61, 60, "]", "[", 63, 68, 60, 72, "]", "[", 63, 68, 60, 71, "]", "[", 63, 68, 60, 70, "]", "[", 63, 68, 60, 69, "]", "[", 63, 68, 60, 67, "]", "[", 63, 68, 60, 66, "]", "[", 63, 68, 60, 65, "]", "[", 63, 68, 60, 64, "]", "[", 63, 68, 60, 62, "]", "[", 63, 68, 60, 61, "]", "[", 63, 67, 72, 71, "]", "[", 63, 67, 72, 70, "]", "[", 63, 67, 72, 69, "]", "[", 63, 67, 72, 68, "]", "[", 63, 67, 72, 66, "]", "[", 63, 67, 72, 65, "]", "[", 63, 67, 72, 64, "]", "[", 63, 67, 72, 62, "]", "[", 63, 67, 72, 61, "]", "[", 63, 67, 72, 60, "]", "[", 63, 67, 71, 72, "]", "[", 63, 67, 71, 70, "]", "[", 63, 67, 71, 69, "]", "[", 63, 67, 71, 68, "]", "[", 63, 67, 71, 66, "]", "[", 63, 67, 71, 65, "]", "[", 63, 67, 71, 64, "]", "[", 63, 67, 71, 62, "]", "[", 63, 67, 71, 61, "]", "[", 63, 67, 71, 60, "]", "[", 63, 67, 70, 72, "]", "[", 63, 67, 70, 71, "]", "[", 63, 67, 70, 69, "]", "[", 63, 67, 70, 68, "]", "[", 63, 67, 70, 66, "]", "[", 63, 67, 70, 65, "]", "[", 63, 67, 70, 64, "]", "[", 63, 67, 70, 62, "]", "[", 63, 67, 70, 61, "]", "[", 63, 67, 70, 60, "]", "[", 63, 67, 69, 72, "]", "[", 63, 67, 69, 71, "]", "[", 63, 67, 69, 70, "]", "[", 63, 67, 69, 68, "]", "[", 63, 67, 69, 66, "]", "[", 63, 67, 69, 65, "]", "[", 63, 67, 69, 64, "]", "[", 63, 67, 69, 62, "]", "[", 63, 67, 69, 61, "]", "[", 63, 67, 69, 60, "]", "[", 63, 67, 68, 72, "]", "[", 63, 67, 68, 71, "]", "[", 63, 67, 68, 70, "]", "[", 63, 67, 68, 69, "]", "[", 63, 67, 68, 66, "]", "[", 63, 67, 68, 65, "]", "[", 63, 67, 68, 64, "]", "[", 63, 67, 68, 62, "]", "[", 63, 67, 68, 61, "]", "[", 63, 67, 68, 60, "]", "[", 63, 67, 66, 72, "]", "[", 63, 67, 66, 71, "]", "[", 63, 67, 66, 70, "]", "[", 63, 67, 66, 69, "]", "[", 63, 67, 66, 68, "]", "[", 63, 67, 66, 65, "]", "[", 63, 67, 66, 64, "]", "[", 63, 67, 66, 62, "]", "[", 63, 67, 66, 61, "]", "[", 63, 67, 66, 60, "]", "[", 63, 67, 65, 72, "]", "[", 63, 67, 65, 71, "]", "[", 63, 67, 65, 70, "]", "[", 63, 67, 65, 69, "]", "[", 63, 67, 65, 68, "]", "[", 63, 67, 65, 66, "]", "[", 63, 67, 65, 64, "]", "[", 63, 67, 65, 62, "]", "[", 63, 67, 65, 61, "]", "[", 63, 67, 65, 60, "]", "[", 63, 67, 64, 72, "]", "[", 63, 67, 64, 71, "]", "[", 63, 67, 64, 70, "]", "[", 63, 67, 64, 69, "]", "[", 63, 67, 64, 68, "]", "[", 63, 67, 64, 66, "]", "[", 63, 67, 64, 65, "]", "[", 63, 67, 64, 62, "]", "[", 63, 67, 64, 61, "]", "[", 63, 67, 64, 60, "]", "[", 63, 67, 62, 72, "]", "[", 63, 67, 62, 71, "]", "[", 63, 67, 62, 70, "]", "[", 63, 67, 62, 69, "]", "[", 63, 67, 62, 68, "]", "[", 63, 67, 62, 66, "]", "[", 63, 67, 62, 65, "]", "[", 63, 67, 62, 64, "]", "[", 63, 67, 62, 61, "]", "[", 63, 67, 62, 60, "]", "[", 63, 67, 61, 72, "]", "[", 63, 67, 61, 71, "]", "[", 63, 67, 61, 70, "]", "[", 63, 67, 61, 69, "]", "[", 63, 67, 61, 68, "]", "[", 63, 67, 61, 66, "]", "[", 63, 67, 61, 65, "]", "[", 63, 67, 61, 64, "]", "[", 63, 67, 61, 62, "]", "[", 63, 67, 61, 60, "]", "[", 63, 67, 60, 72, "]", "[", 63, 67, 60, 71, "]", "[", 63, 67, 60, 70, "]", "[", 63, 67, 60, 69, "]", "[", 63, 67, 60, 68, "]", "[", 63, 67, 60, 66, "]", "[", 63, 67, 60, 65, "]", "[", 63, 67, 60, 64, "]", "[", 63, 67, 60, 62, "]", "[", 63, 67, 60, 61, "]", "[", 63, 66, 72, 71, "]", "[", 63, 66, 72, 70, "]", "[", 63, 66, 72, 69, "]", "[", 63, 66, 72, 68, "]", "[", 63, 66, 72, 67, "]", "[", 63, 66, 72, 65, "]", "[", 63, 66, 72, 64, "]", "[", 63, 66, 72, 62, "]", "[", 63, 66, 72, 61, "]", "[", 63, 66, 72, 60, "]", "[", 63, 66, 71, 72, "]", "[", 63, 66, 71, 70, "]", "[", 63, 66, 71, 69, "]", "[", 63, 66, 71, 68, "]", "[", 63, 66, 71, 67, "]", "[", 63, 66, 71, 65, "]", "[", 63, 66, 71, 64, "]", "[", 63, 66, 71, 62, "]", "[", 63, 66, 71, 61, "]", "[", 63, 66, 71, 60, "]", "[", 63, 66, 70, 72, "]", "[", 63, 66, 70, 71, "]", "[", 63, 66, 70, 69, "]", "[", 63, 66, 70, 68, "]", "[", 63, 66, 70, 67, "]", "[", 63, 66, 70, 65, "]", "[", 63, 66, 70, 64, "]", "[", 63, 66, 70, 62, "]", "[", 63, 66, 70, 61, "]", "[", 63, 66, 70, 60, "]", "[", 63, 66, 69, 72, "]", "[", 63, 66, 69, 71, "]", "[", 63, 66, 69, 70, "]", "[", 63, 66, 69, 68, "]", "[", 63, 66, 69, 67, "]", "[", 63, 66, 69, 65, "]", "[", 63, 66, 69, 64, "]", "[", 63, 66, 69, 62, "]", "[", 63, 66, 69, 61, "]", "[", 63, 66, 69, 60, "]", "[", 63, 66, 68, 72, "]", "[", 63, 66, 68, 71, "]", "[", 63, 66, 68, 70, "]", "[", 63, 66, 68, 69, "]", "[", 63, 66, 68, 67, "]", "[", 63, 66, 68, 65, "]", "[", 63, 66, 68, 64, "]", "[", 63, 66, 68, 62, "]", "[", 63, 66, 68, 61, "]", "[", 63, 66, 68, 60, "]", "[", 63, 66, 67, 72, "]", "[", 63, 66, 67, 71, "]", "[", 63, 66, 67, 70, "]", "[", 63, 66, 67, 69, "]", "[", 63, 66, 67, 68, "]", "[", 63, 66, 67, 65, "]", "[", 63, 66, 67, 64, "]", "[", 63, 66, 67, 62, "]", "[", 63, 66, 67, 61, "]", "[", 63, 66, 67, 60, "]", "[", 63, 66, 65, 72, "]", "[", 63, 66, 65, 71, "]", "[", 63, 66, 65, 70, "]", "[", 63, 66, 65, 69, "]", "[", 63, 66, 65, 68, "]", "[", 63, 66, 65, 67, "]", "[", 63, 66, 65, 64, "]", "[", 63, 66, 65, 62, "]", "[", 63, 66, 65, 61, "]", "[", 63, 66, 65, 60, "]", "[", 63, 66, 64, 72, "]", "[", 63, 66, 64, 71, "]", "[", 63, 66, 64, 70, "]", "[", 63, 66, 64, 69, "]", "[", 63, 66, 64, 68, "]", "[", 63, 66, 64, 67, "]", "[", 63, 66, 64, 65, "]", "[", 63, 66, 64, 62, "]", "[", 63, 66, 64, 61, "]", "[", 63, 66, 64, 60, "]", "[", 63, 66, 62, 72, "]", "[", 63, 66, 62, 71, "]", "[", 63, 66, 62, 70, "]", "[", 63, 66, 62, 69, "]", "[", 63, 66, 62, 68, "]", "[", 63, 66, 62, 67, "]", "[", 63, 66, 62, 65, "]", "[", 63, 66, 62, 64, "]", "[", 63, 66, 62, 61, "]", "[", 63, 66, 62, 60, "]", "[", 63, 66, 61, 72, "]", "[", 63, 66, 61, 71, "]", "[", 63, 66, 61, 70, "]", "[", 63, 66, 61, 69, "]", "[", 63, 66, 61, 68, "]", "[", 63, 66, 61, 67, "]", "[", 63, 66, 61, 65, "]", "[", 63, 66, 61, 64, "]", "[", 63, 66, 61, 62, "]", "[", 63, 66, 61, 60, "]", "[", 63, 66, 60, 72, "]", "[", 63, 66, 60, 71, "]", "[", 63, 66, 60, 70, "]", "[", 63, 66, 60, 69, "]", "[", 63, 66, 60, 68, "]", "[", 63, 66, 60, 67, "]", "[", 63, 66, 60, 65, "]", "[", 63, 66, 60, 64, "]", "[", 63, 66, 60, 62, "]", "[", 63, 66, 60, 61, "]", "[", 63, 65, 72, 71, "]", "[", 63, 65, 72, 70, "]", "[", 63, 65, 72, 69, "]", "[", 63, 65, 72, 68, "]", "[", 63, 65, 72, 67, "]", "[", 63, 65, 72, 66, "]", "[", 63, 65, 72, 64, "]", "[", 63, 65, 72, 62, "]", "[", 63, 65, 72, 61, "]", "[", 63, 65, 72, 60, "]", "[", 63, 65, 71, 72, "]", "[", 63, 65, 71, 70, "]", "[", 63, 65, 71, 69, "]", "[", 63, 65, 71, 68, "]", "[", 63, 65, 71, 67, "]", "[", 63, 65, 71, 66, "]", "[", 63, 65, 71, 64, "]", "[", 63, 65, 71, 62, "]", "[", 63, 65, 71, 61, "]", "[", 63, 65, 71, 60, "]", "[", 63, 65, 70, 72, "]", "[", 63, 65, 70, 71, "]", "[", 63, 65, 70, 69, "]", "[", 63, 65, 70, 68, "]", "[", 63, 65, 70, 67, "]", "[", 63, 65, 70, 66, "]", "[", 63, 65, 70, 64, "]", "[", 63, 65, 70, 62, "]", "[", 63, 65, 70, 61, "]", "[", 63, 65, 70, 60, "]", "[", 63, 65, 69, 72, "]", "[", 63, 65, 69, 71, "]", "[", 63, 65, 69, 70, "]", "[", 63, 65, 69, 68, "]", "[", 63, 65, 69, 67, "]", "[", 63, 65, 69, 66, "]", "[", 63, 65, 69, 64, "]", "[", 63, 65, 69, 62, "]", "[", 63, 65, 69, 61, "]", "[", 63, 65, 69, 60, "]", "[", 63, 65, 68, 72, "]", "[", 63, 65, 68, 71, "]", "[", 63, 65, 68, 70, "]", "[", 63, 65, 68, 69, "]", "[", 63, 65, 68, 67, "]", "[", 63, 65, 68, 66, "]", "[", 63, 65, 68, 64, "]", "[", 63, 65, 68, 62, "]", "[", 63, 65, 68, 61, "]", "[", 63, 65, 68, 60, "]", "[", 63, 65, 67, 72, "]", "[", 63, 65, 67, 71, "]", "[", 63, 65, 67, 70, "]", "[", 63, 65, 67, 69, "]", "[", 63, 65, 67, 68, "]", "[", 63, 65, 67, 66, "]", "[", 63, 65, 67, 64, "]", "[", 63, 65, 67, 62, "]", "[", 63, 65, 67, 61, "]", "[", 63, 65, 67, 60, "]", "[", 63, 65, 66, 72, "]", "[", 63, 65, 66, 71, "]", "[", 63, 65, 66, 70, "]", "[", 63, 65, 66, 69, "]", "[", 63, 65, 66, 68, "]", "[", 63, 65, 66, 67, "]", "[", 63, 65, 66, 64, "]", "[", 63, 65, 66, 62, "]", "[", 63, 65, 66, 61, "]", "[", 63, 65, 66, 60, "]", "[", 63, 65, 64, 72, "]", "[", 63, 65, 64, 71, "]", "[", 63, 65, 64, 70, "]", "[", 63, 65, 64, 69, "]", "[", 63, 65, 64, 68, "]", "[", 63, 65, 64, 67, "]", "[", 63, 65, 64, 66, "]", "[", 63, 65, 64, 62, "]", "[", 63, 65, 64, 61, "]", "[", 63, 65, 64, 60, "]", "[", 63, 65, 62, 72, "]", "[", 63, 65, 62, 71, "]", "[", 63, 65, 62, 70, "]", "[", 63, 65, 62, 69, "]", "[", 63, 65, 62, 68, "]", "[", 63, 65, 62, 67, "]", "[", 63, 65, 62, 66, "]", "[", 63, 65, 62, 64, "]", "[", 63, 65, 62, 61, "]", "[", 63, 65, 62, 60, "]", "[", 63, 65, 61, 72, "]", "[", 63, 65, 61, 71, "]", "[", 63, 65, 61, 70, "]", "[", 63, 65, 61, 69, "]", "[", 63, 65, 61, 68, "]", "[", 63, 65, 61, 67, "]", "[", 63, 65, 61, 66, "]", "[", 63, 65, 61, 64, "]", "[", 63, 65, 61, 62, "]", "[", 63, 65, 61, 60, "]", "[", 63, 65, 60, 72, "]", "[", 63, 65, 60, 71, "]", "[", 63, 65, 60, 70, "]", "[", 63, 65, 60, 69, "]", "[", 63, 65, 60, 68, "]", "[", 63, 65, 60, 67, "]", "[", 63, 65, 60, 66, "]", "[", 63, 65, 60, 64, "]", "[", 63, 65, 60, 62, "]", "[", 63, 65, 60, 61, "]", "[", 63, 64, 72, 71, "]", "[", 63, 64, 72, 70, "]", "[", 63, 64, 72, 69, "]", "[", 63, 64, 72, 68, "]", "[", 63, 64, 72, 67, "]", "[", 63, 64, 72, 66, "]", "[", 63, 64, 72, 65, "]", "[", 63, 64, 72, 62, "]", "[", 63, 64, 72, 61, "]", "[", 63, 64, 72, 60, "]", "[", 63, 64, 71, 72, "]", "[", 63, 64, 71, 70, "]", "[", 63, 64, 71, 69, "]", "[", 63, 64, 71, 68, "]", "[", 63, 64, 71, 67, "]", "[", 63, 64, 71, 66, "]", "[", 63, 64, 71, 65, "]", "[", 63, 64, 71, 62, "]", "[", 63, 64, 71, 61, "]", "[", 63, 64, 71, 60, "]", "[", 63, 64, 70, 72, "]", "[", 63, 64, 70, 71, "]", "[", 63, 64, 70, 69, "]", "[", 63, 64, 70, 68, "]", "[", 63, 64, 70, 67, "]", "[", 63, 64, 70, 66, "]", "[", 63, 64, 70, 65, "]", "[", 63, 64, 70, 62, "]", "[", 63, 64, 70, 61, "]", "[", 63, 64, 70, 60, "]", "[", 63, 64, 69, 72, "]", "[", 63, 64, 69, 71, "]", "[", 63, 64, 69, 70, "]", "[", 63, 64, 69, 68, "]", "[", 63, 64, 69, 67, "]", "[", 63, 64, 69, 66, "]", "[", 63, 64, 69, 65, "]", "[", 63, 64, 69, 62, "]", "[", 63, 64, 69, 61, "]", "[", 63, 64, 69, 60, "]", "[", 63, 64, 68, 72, "]", "[", 63, 64, 68, 71, "]", "[", 63, 64, 68, 70, "]", "[", 63, 64, 68, 69, "]", "[", 63, 64, 68, 67, "]", "[", 63, 64, 68, 66, "]", "[", 63, 64, 68, 65, "]", "[", 63, 64, 68, 62, "]", "[", 63, 64, 68, 61, "]", "[", 63, 64, 68, 60, "]", "[", 63, 64, 67, 72, "]", "[", 63, 64, 67, 71, "]", "[", 63, 64, 67, 70, "]", "[", 63, 64, 67, 69, "]", "[", 63, 64, 67, 68, "]", "[", 63, 64, 67, 66, "]", "[", 63, 64, 67, 65, "]", "[", 63, 64, 67, 62, "]", "[", 63, 64, 67, 61, "]", "[", 63, 64, 67, 60, "]", "[", 63, 64, 66, 72, "]", "[", 63, 64, 66, 71, "]", "[", 63, 64, 66, 70, "]", "[", 63, 64, 66, 69, "]", "[", 63, 64, 66, 68, "]", "[", 63, 64, 66, 67, "]", "[", 63, 64, 66, 65, "]", "[", 63, 64, 66, 62, "]", "[", 63, 64, 66, 61, "]", "[", 63, 64, 66, 60, "]", "[", 63, 64, 65, 72, "]", "[", 63, 64, 65, 71, "]", "[", 63, 64, 65, 70, "]", "[", 63, 64, 65, 69, "]", "[", 63, 64, 65, 68, "]", "[", 63, 64, 65, 67, "]", "[", 63, 64, 65, 66, "]", "[", 63, 64, 65, 62, "]", "[", 63, 64, 65, 61, "]", "[", 63, 64, 65, 60, "]", "[", 63, 64, 62, 72, "]", "[", 63, 64, 62, 71, "]", "[", 63, 64, 62, 70, "]", "[", 63, 64, 62, 69, "]", "[", 63, 64, 62, 68, "]", "[", 63, 64, 62, 67, "]", "[", 63, 64, 62, 66, "]", "[", 63, 64, 62, 65, "]", "[", 63, 64, 62, 61, "]", "[", 63, 64, 62, 60, "]", "[", 63, 64, 61, 72, "]", "[", 63, 64, 61, 71, "]", "[", 63, 64, 61, 70, "]", "[", 63, 64, 61, 69, "]", "[", 63, 64, 61, 68, "]", "[", 63, 64, 61, 67, "]", "[", 63, 64, 61, 66, "]", "[", 63, 64, 61, 65, "]", "[", 63, 64, 61, 62, "]", "[", 63, 64, 61, 60, "]", "[", 63, 64, 60, 72, "]", "[", 63, 64, 60, 71, "]", "[", 63, 64, 60, 70, "]", "[", 63, 64, 60, 69, "]", "[", 63, 64, 60, 68, "]", "[", 63, 64, 60, 67, "]", "[", 63, 64, 60, 66, "]", "[", 63, 64, 60, 65, "]", "[", 63, 64, 60, 62, "]", "[", 63, 64, 60, 61, "]", "[", 63, 62, 72, 71, "]", "[", 63, 62, 72, 70, "]", "[", 63, 62, 72, 69, "]", "[", 63, 62, 72, 68, "]", "[", 63, 62, 72, 67, "]", "[", 63, 62, 72, 66, "]", "[", 63, 62, 72, 65, "]", "[", 63, 62, 72, 64, "]", "[", 63, 62, 72, 61, "]", "[", 63, 62, 72, 60, "]", "[", 63, 62, 71, 72, "]", "[", 63, 62, 71, 70, "]", "[", 63, 62, 71, 69, "]", "[", 63, 62, 71, 68, "]", "[", 63, 62, 71, 67, "]", "[", 63, 62, 71, 66, "]", "[", 63, 62, 71, 65, "]", "[", 63, 62, 71, 64, "]", "[", 63, 62, 71, 61, "]", "[", 63, 62, 71, 60, "]", "[", 63, 62, 70, 72, "]", "[", 63, 62, 70, 71, "]", "[", 63, 62, 70, 69, "]", "[", 63, 62, 70, 68, "]", "[", 63, 62, 70, 67, "]", "[", 63, 62, 70, 66, "]", "[", 63, 62, 70, 65, "]", "[", 63, 62, 70, 64, "]", "[", 63, 62, 70, 61, "]", "[", 63, 62, 70, 60, "]", "[", 63, 62, 69, 72, "]", "[", 63, 62, 69, 71, "]", "[", 63, 62, 69, 70, "]", "[", 63, 62, 69, 68, "]", "[", 63, 62, 69, 67, "]", "[", 63, 62, 69, 66, "]", "[", 63, 62, 69, 65, "]", "[", 63, 62, 69, 64, "]", "[", 63, 62, 69, 61, "]", "[", 63, 62, 69, 60, "]", "[", 63, 62, 68, 72, "]", "[", 63, 62, 68, 71, "]", "[", 63, 62, 68, 70, "]", "[", 63, 62, 68, 69, "]", "[", 63, 62, 68, 67, "]", "[", 63, 62, 68, 66, "]", "[", 63, 62, 68, 65, "]", "[", 63, 62, 68, 64, "]", "[", 63, 62, 68, 61, "]", "[", 63, 62, 68, 60, "]", "[", 63, 62, 67, 72, "]", "[", 63, 62, 67, 71, "]", "[", 63, 62, 67, 70, "]", "[", 63, 62, 67, 69, "]", "[", 63, 62, 67, 68, "]", "[", 63, 62, 67, 66, "]", "[", 63, 62, 67, 65, "]", "[", 63, 62, 67, 64, "]", "[", 63, 62, 67, 61, "]", "[", 63, 62, 67, 60, "]", "[", 63, 62, 66, 72, "]", "[", 63, 62, 66, 71, "]", "[", 63, 62, 66, 70, "]", "[", 63, 62, 66, 69, "]", "[", 63, 62, 66, 68, "]", "[", 63, 62, 66, 67, "]", "[", 63, 62, 66, 65, "]", "[", 63, 62, 66, 64, "]", "[", 63, 62, 66, 61, "]", "[", 63, 62, 66, 60, "]", "[", 63, 62, 65, 72, "]", "[", 63, 62, 65, 71, "]", "[", 63, 62, 65, 70, "]", "[", 63, 62, 65, 69, "]", "[", 63, 62, 65, 68, "]", "[", 63, 62, 65, 67, "]", "[", 63, 62, 65, 66, "]", "[", 63, 62, 65, 64, "]", "[", 63, 62, 65, 61, "]", "[", 63, 62, 65, 60, "]", "[", 63, 62, 64, 72, "]", "[", 63, 62, 64, 71, "]", "[", 63, 62, 64, 70, "]", "[", 63, 62, 64, 69, "]", "[", 63, 62, 64, 68, "]", "[", 63, 62, 64, 67, "]", "[", 63, 62, 64, 66, "]", "[", 63, 62, 64, 65, "]", "[", 63, 62, 64, 61, "]", "[", 63, 62, 64, 60, "]", "[", 63, 62, 61, 72, "]", "[", 63, 62, 61, 71, "]", "[", 63, 62, 61, 70, "]", "[", 63, 62, 61, 69, "]", "[", 63, 62, 61, 68, "]", "[", 63, 62, 61, 67, "]", "[", 63, 62, 61, 66, "]", "[", 63, 62, 61, 65, "]", "[", 63, 62, 61, 64, "]", "[", 63, 62, 61, 60, "]", "[", 63, 62, 60 ],
													"reg_data_0000000019" : [ 72, "]", "[", 63, 62, 60, 71, "]", "[", 63, 62, 60, 70, "]", "[", 63, 62, 60, 69, "]", "[", 63, 62, 60, 68, "]", "[", 63, 62, 60, 67, "]", "[", 63, 62, 60, 66, "]", "[", 63, 62, 60, 65, "]", "[", 63, 62, 60, 64, "]", "[", 63, 62, 60, 61, "]", "[", 63, 61, 72, 71, "]", "[", 63, 61, 72, 70, "]", "[", 63, 61, 72, 69, "]", "[", 63, 61, 72, 68, "]", "[", 63, 61, 72, 67, "]", "[", 63, 61, 72, 66, "]", "[", 63, 61, 72, 65, "]", "[", 63, 61, 72, 64, "]", "[", 63, 61, 72, 62, "]", "[", 63, 61, 72, 60, "]", "[", 63, 61, 71, 72, "]", "[", 63, 61, 71, 70, "]", "[", 63, 61, 71, 69, "]", "[", 63, 61, 71, 68, "]", "[", 63, 61, 71, 67, "]", "[", 63, 61, 71, 66, "]", "[", 63, 61, 71, 65, "]", "[", 63, 61, 71, 64, "]", "[", 63, 61, 71, 62, "]", "[", 63, 61, 71, 60, "]", "[", 63, 61, 70, 72, "]", "[", 63, 61, 70, 71, "]", "[", 63, 61, 70, 69, "]", "[", 63, 61, 70, 68, "]", "[", 63, 61, 70, 67, "]", "[", 63, 61, 70, 66, "]", "[", 63, 61, 70, 65, "]", "[", 63, 61, 70, 64, "]", "[", 63, 61, 70, 62, "]", "[", 63, 61, 70, 60, "]", "[", 63, 61, 69, 72, "]", "[", 63, 61, 69, 71, "]", "[", 63, 61, 69, 70, "]", "[", 63, 61, 69, 68, "]", "[", 63, 61, 69, 67, "]", "[", 63, 61, 69, 66, "]", "[", 63, 61, 69, 65, "]", "[", 63, 61, 69, 64, "]", "[", 63, 61, 69, 62, "]", "[", 63, 61, 69, 60, "]", "[", 63, 61, 68, 72, "]", "[", 63, 61, 68, 71, "]", "[", 63, 61, 68, 70, "]", "[", 63, 61, 68, 69, "]", "[", 63, 61, 68, 67, "]", "[", 63, 61, 68, 66, "]", "[", 63, 61, 68, 65, "]", "[", 63, 61, 68, 64, "]", "[", 63, 61, 68, 62, "]", "[", 63, 61, 68, 60, "]", "[", 63, 61, 67, 72, "]", "[", 63, 61, 67, 71, "]", "[", 63, 61, 67, 70, "]", "[", 63, 61, 67, 69, "]", "[", 63, 61, 67, 68, "]", "[", 63, 61, 67, 66, "]", "[", 63, 61, 67, 65, "]", "[", 63, 61, 67, 64, "]", "[", 63, 61, 67, 62, "]", "[", 63, 61, 67, 60, "]", "[", 63, 61, 66, 72, "]", "[", 63, 61, 66, 71, "]", "[", 63, 61, 66, 70, "]", "[", 63, 61, 66, 69, "]", "[", 63, 61, 66, 68, "]", "[", 63, 61, 66, 67, "]", "[", 63, 61, 66, 65, "]", "[", 63, 61, 66, 64, "]", "[", 63, 61, 66, 62, "]", "[", 63, 61, 66, 60, "]", "[", 63, 61, 65, 72, "]", "[", 63, 61, 65, 71, "]", "[", 63, 61, 65, 70, "]", "[", 63, 61, 65, 69, "]", "[", 63, 61, 65, 68, "]", "[", 63, 61, 65, 67, "]", "[", 63, 61, 65, 66, "]", "[", 63, 61, 65, 64, "]", "[", 63, 61, 65, 62, "]", "[", 63, 61, 65, 60, "]", "[", 63, 61, 64, 72, "]", "[", 63, 61, 64, 71, "]", "[", 63, 61, 64, 70, "]", "[", 63, 61, 64, 69, "]", "[", 63, 61, 64, 68, "]", "[", 63, 61, 64, 67, "]", "[", 63, 61, 64, 66, "]", "[", 63, 61, 64, 65, "]", "[", 63, 61, 64, 62, "]", "[", 63, 61, 64, 60, "]", "[", 63, 61, 62, 72, "]", "[", 63, 61, 62, 71, "]", "[", 63, 61, 62, 70, "]", "[", 63, 61, 62, 69, "]", "[", 63, 61, 62, 68, "]", "[", 63, 61, 62, 67, "]", "[", 63, 61, 62, 66, "]", "[", 63, 61, 62, 65, "]", "[", 63, 61, 62, 64, "]", "[", 63, 61, 62, 60, "]", "[", 63, 61, 60, 72, "]", "[", 63, 61, 60, 71, "]", "[", 63, 61, 60, 70, "]", "[", 63, 61, 60, 69, "]", "[", 63, 61, 60, 68, "]", "[", 63, 61, 60, 67, "]", "[", 63, 61, 60, 66, "]", "[", 63, 61, 60, 65, "]", "[", 63, 61, 60, 64, "]", "[", 63, 61, 60, 62, "]", "[", 63, 60, 72, 71, "]", "[", 63, 60, 72, 70, "]", "[", 63, 60, 72, 69, "]", "[", 63, 60, 72, 68, "]", "[", 63, 60, 72, 67, "]", "[", 63, 60, 72, 66, "]", "[", 63, 60, 72, 65, "]", "[", 63, 60, 72, 64, "]", "[", 63, 60, 72, 62, "]", "[", 63, 60, 72, 61, "]", "[", 63, 60, 71, 72, "]", "[", 63, 60, 71, 70, "]", "[", 63, 60, 71, 69, "]", "[", 63, 60, 71, 68, "]", "[", 63, 60, 71, 67, "]", "[", 63, 60, 71, 66, "]", "[", 63, 60, 71, 65, "]", "[", 63, 60, 71, 64, "]", "[", 63, 60, 71, 62, "]", "[", 63, 60, 71, 61, "]", "[", 63, 60, 70, 72, "]", "[", 63, 60, 70, 71, "]", "[", 63, 60, 70, 69, "]", "[", 63, 60, 70, 68, "]", "[", 63, 60, 70, 67, "]", "[", 63, 60, 70, 66, "]", "[", 63, 60, 70, 65, "]", "[", 63, 60, 70, 64, "]", "[", 63, 60, 70, 62, "]", "[", 63, 60, 70, 61, "]", "[", 63, 60, 69, 72, "]", "[", 63, 60, 69, 71, "]", "[", 63, 60, 69, 70, "]", "[", 63, 60, 69, 68, "]", "[", 63, 60, 69, 67, "]", "[", 63, 60, 69, 66, "]", "[", 63, 60, 69, 65, "]", "[", 63, 60, 69, 64, "]", "[", 63, 60, 69, 62, "]", "[", 63, 60, 69, 61, "]", "[", 63, 60, 68, 72, "]", "[", 63, 60, 68, 71, "]", "[", 63, 60, 68, 70, "]", "[", 63, 60, 68, 69, "]", "[", 63, 60, 68, 67, "]", "[", 63, 60, 68, 66, "]", "[", 63, 60, 68, 65, "]", "[", 63, 60, 68, 64, "]", "[", 63, 60, 68, 62, "]", "[", 63, 60, 68, 61, "]", "[", 63, 60, 67, 72, "]", "[", 63, 60, 67, 71, "]", "[", 63, 60, 67, 70, "]", "[", 63, 60, 67, 69, "]", "[", 63, 60, 67, 68, "]", "[", 63, 60, 67, 66, "]", "[", 63, 60, 67, 65, "]", "[", 63, 60, 67, 64, "]", "[", 63, 60, 67, 62, "]", "[", 63, 60, 67, 61, "]", "[", 63, 60, 66, 72, "]", "[", 63, 60, 66, 71, "]", "[", 63, 60, 66, 70, "]", "[", 63, 60, 66, 69, "]", "[", 63, 60, 66, 68, "]", "[", 63, 60, 66, 67, "]", "[", 63, 60, 66, 65, "]", "[", 63, 60, 66, 64, "]", "[", 63, 60, 66, 62, "]", "[", 63, 60, 66, 61, "]", "[", 63, 60, 65, 72, "]", "[", 63, 60, 65, 71, "]", "[", 63, 60, 65, 70, "]", "[", 63, 60, 65, 69, "]", "[", 63, 60, 65, 68, "]", "[", 63, 60, 65, 67, "]", "[", 63, 60, 65, 66, "]", "[", 63, 60, 65, 64, "]", "[", 63, 60, 65, 62, "]", "[", 63, 60, 65, 61, "]", "[", 63, 60, 64, 72, "]", "[", 63, 60, 64, 71, "]", "[", 63, 60, 64, 70, "]", "[", 63, 60, 64, 69, "]", "[", 63, 60, 64, 68, "]", "[", 63, 60, 64, 67, "]", "[", 63, 60, 64, 66, "]", "[", 63, 60, 64, 65, "]", "[", 63, 60, 64, 62, "]", "[", 63, 60, 64, 61, "]", "[", 63, 60, 62, 72, "]", "[", 63, 60, 62, 71, "]", "[", 63, 60, 62, 70, "]", "[", 63, 60, 62, 69, "]", "[", 63, 60, 62, 68, "]", "[", 63, 60, 62, 67, "]", "[", 63, 60, 62, 66, "]", "[", 63, 60, 62, 65, "]", "[", 63, 60, 62, 64, "]", "[", 63, 60, 62, 61, "]", "[", 63, 60, 61, 72, "]", "[", 63, 60, 61, 71, "]", "[", 63, 60, 61, 70, "]", "[", 63, 60, 61, 69, "]", "[", 63, 60, 61, 68, "]", "[", 63, 60, 61, 67, "]", "[", 63, 60, 61, 66, "]", "[", 63, 60, 61, 65, "]", "[", 63, 60, 61, 64, "]", "[", 63, 60, 61, 62, "]", "[", 62, 72, 71, 70, "]", "[", 62, 72, 71, 69, "]", "[", 62, 72, 71, 68, "]", "[", 62, 72, 71, 67, "]", "[", 62, 72, 71, 66, "]", "[", 62, 72, 71, 65, "]", "[", 62, 72, 71, 64, "]", "[", 62, 72, 71, 63, "]", "[", 62, 72, 71, 61, "]", "[", 62, 72, 71, 60, "]", "[", 62, 72, 70, 71, "]", "[", 62, 72, 70, 69, "]", "[", 62, 72, 70, 68, "]", "[", 62, 72, 70, 67, "]", "[", 62, 72, 70, 66, "]", "[", 62, 72, 70, 65, "]", "[", 62, 72, 70, 64, "]", "[", 62, 72, 70, 63, "]", "[", 62, 72, 70, 61, "]", "[", 62, 72, 70, 60, "]", "[", 62, 72, 69, 71, "]", "[", 62, 72, 69, 70, "]", "[", 62, 72, 69, 68, "]", "[", 62, 72, 69, 67, "]", "[", 62, 72, 69, 66, "]", "[", 62, 72, 69, 65, "]", "[", 62, 72, 69, 64, "]", "[", 62, 72, 69, 63, "]", "[", 62, 72, 69, 61, "]", "[", 62, 72, 69, 60, "]", "[", 62, 72, 68, 71, "]", "[", 62, 72, 68, 70, "]", "[", 62, 72, 68, 69, "]", "[", 62, 72, 68, 67, "]", "[", 62, 72, 68, 66, "]", "[", 62, 72, 68, 65, "]", "[", 62, 72, 68, 64, "]", "[", 62, 72, 68, 63, "]", "[", 62, 72, 68, 61, "]", "[", 62, 72, 68, 60, "]", "[", 62, 72, 67, 71, "]", "[", 62, 72, 67, 70, "]", "[", 62, 72, 67, 69, "]", "[", 62, 72, 67, 68, "]", "[", 62, 72, 67, 66, "]", "[", 62, 72, 67, 65, "]", "[", 62, 72, 67, 64, "]", "[", 62, 72, 67, 63, "]", "[", 62, 72, 67, 61, "]", "[", 62, 72, 67, 60, "]", "[", 62, 72, 66, 71, "]", "[", 62, 72, 66, 70, "]", "[", 62, 72, 66, 69, "]", "[", 62, 72, 66, 68, "]", "[", 62, 72, 66, 67, "]", "[", 62, 72, 66, 65, "]", "[", 62, 72, 66, 64, "]", "[", 62, 72, 66, 63, "]", "[", 62, 72, 66, 61, "]", "[", 62, 72, 66, 60, "]", "[", 62, 72, 65, 71, "]", "[", 62, 72, 65, 70, "]", "[", 62, 72, 65, 69, "]", "[", 62, 72, 65, 68, "]", "[", 62, 72, 65, 67, "]", "[", 62, 72, 65, 66, "]", "[", 62, 72, 65, 64, "]", "[", 62, 72, 65, 63, "]", "[", 62, 72, 65, 61, "]", "[", 62, 72, 65, 60, "]", "[", 62, 72, 64, 71, "]", "[", 62, 72, 64, 70, "]", "[", 62, 72, 64, 69, "]", "[", 62, 72, 64, 68, "]", "[", 62, 72, 64, 67, "]", "[", 62, 72, 64, 66, "]", "[", 62, 72, 64, 65, "]", "[", 62, 72, 64, 63, "]", "[", 62, 72, 64, 61, "]", "[", 62, 72, 64, 60, "]", "[", 62, 72, 63, 71, "]", "[", 62, 72, 63, 70, "]", "[", 62, 72, 63, 69, "]", "[", 62, 72, 63, 68, "]", "[", 62, 72, 63, 67, "]", "[", 62, 72, 63, 66, "]", "[", 62, 72, 63, 65, "]", "[", 62, 72, 63, 64, "]", "[", 62, 72, 63, 61, "]", "[", 62, 72, 63, 60, "]", "[", 62, 72, 61, 71, "]", "[", 62, 72, 61, 70, "]", "[", 62, 72, 61, 69, "]", "[", 62, 72, 61, 68, "]", "[", 62, 72, 61, 67, "]", "[", 62, 72, 61, 66, "]", "[", 62, 72, 61, 65, "]", "[", 62, 72, 61, 64, "]", "[", 62, 72, 61, 63, "]", "[", 62, 72, 61, 60, "]", "[", 62, 72, 60, 71, "]", "[", 62, 72, 60, 70, "]", "[", 62, 72, 60, 69, "]", "[", 62, 72, 60, 68, "]", "[", 62, 72, 60, 67, "]", "[", 62, 72, 60, 66, "]", "[", 62, 72, 60, 65, "]", "[", 62, 72, 60, 64, "]", "[", 62, 72, 60, 63, "]", "[", 62, 72, 60, 61, "]", "[", 62, 71, 72, 70, "]", "[", 62, 71, 72, 69, "]", "[", 62, 71, 72, 68, "]", "[", 62, 71, 72, 67, "]", "[", 62, 71, 72, 66, "]", "[", 62, 71, 72, 65, "]", "[", 62, 71, 72, 64, "]", "[", 62, 71, 72, 63, "]", "[", 62, 71, 72, 61, "]", "[", 62, 71, 72, 60, "]", "[", 62, 71, 70, 72, "]", "[", 62, 71, 70, 69, "]", "[", 62, 71, 70, 68, "]", "[", 62, 71, 70, 67, "]", "[", 62, 71, 70, 66, "]", "[", 62, 71, 70, 65, "]", "[", 62, 71, 70, 64, "]", "[", 62, 71, 70, 63, "]", "[", 62, 71, 70, 61, "]", "[", 62, 71, 70, 60, "]", "[", 62, 71, 69, 72, "]", "[", 62, 71, 69, 70, "]", "[", 62, 71, 69, 68, "]", "[", 62, 71, 69, 67, "]", "[", 62, 71, 69, 66, "]", "[", 62, 71, 69, 65, "]", "[", 62, 71, 69, 64, "]", "[", 62, 71, 69, 63, "]", "[", 62, 71, 69, 61, "]", "[", 62, 71, 69, 60, "]", "[", 62, 71, 68, 72, "]", "[", 62, 71, 68, 70, "]", "[", 62, 71, 68, 69, "]", "[", 62, 71, 68, 67, "]", "[", 62, 71, 68, 66, "]", "[", 62, 71, 68, 65, "]", "[", 62, 71, 68, 64, "]", "[", 62, 71, 68, 63, "]", "[", 62, 71, 68, 61, "]", "[", 62, 71, 68, 60, "]", "[", 62, 71, 67, 72, "]", "[", 62, 71, 67, 70, "]", "[", 62, 71, 67, 69, "]", "[", 62, 71, 67, 68, "]", "[", 62, 71, 67, 66, "]", "[", 62, 71, 67, 65, "]", "[", 62, 71, 67, 64, "]", "[", 62, 71, 67, 63, "]", "[", 62, 71, 67, 61, "]", "[", 62, 71, 67, 60, "]", "[", 62, 71, 66, 72, "]", "[", 62, 71, 66, 70, "]", "[", 62, 71, 66, 69, "]", "[", 62, 71, 66, 68, "]", "[", 62, 71, 66, 67, "]", "[", 62, 71, 66, 65, "]", "[", 62, 71, 66, 64, "]", "[", 62, 71, 66, 63, "]", "[", 62, 71, 66, 61, "]", "[", 62, 71, 66, 60, "]", "[", 62, 71, 65, 72, "]", "[", 62, 71, 65, 70, "]", "[", 62, 71, 65, 69, "]", "[", 62, 71, 65, 68, "]", "[", 62, 71, 65, 67, "]", "[", 62, 71, 65, 66, "]", "[", 62, 71, 65, 64, "]", "[", 62, 71, 65, 63, "]", "[", 62, 71, 65, 61, "]", "[", 62, 71, 65, 60, "]", "[", 62, 71, 64, 72, "]", "[", 62, 71, 64, 70, "]", "[", 62, 71, 64, 69, "]", "[", 62, 71, 64, 68, "]", "[", 62, 71, 64, 67, "]", "[", 62, 71, 64, 66, "]", "[", 62, 71, 64, 65, "]", "[", 62, 71, 64, 63, "]", "[", 62, 71, 64, 61, "]", "[", 62, 71, 64, 60, "]", "[", 62, 71, 63, 72, "]", "[", 62, 71, 63, 70, "]", "[", 62, 71, 63, 69, "]", "[", 62, 71, 63, 68, "]", "[", 62, 71, 63, 67, "]", "[", 62, 71, 63, 66, "]", "[", 62, 71, 63, 65, "]", "[", 62, 71, 63, 64, "]", "[", 62, 71, 63, 61, "]", "[", 62, 71, 63, 60, "]", "[", 62, 71, 61, 72, "]", "[", 62, 71, 61, 70, "]", "[", 62, 71, 61, 69, "]", "[", 62, 71, 61, 68, "]", "[", 62, 71, 61, 67, "]", "[", 62, 71, 61, 66, "]", "[", 62, 71, 61, 65, "]", "[", 62, 71, 61, 64, "]", "[", 62, 71, 61, 63, "]", "[", 62, 71, 61, 60, "]", "[", 62, 71, 60, 72, "]", "[", 62, 71, 60, 70, "]", "[", 62, 71, 60, 69, "]", "[", 62, 71, 60, 68, "]", "[", 62, 71, 60, 67, "]", "[", 62, 71, 60, 66, "]", "[", 62, 71, 60, 65, "]", "[", 62, 71, 60, 64, "]", "[", 62, 71, 60, 63, "]", "[", 62, 71, 60, 61, "]", "[", 62, 70, 72, 71, "]", "[", 62, 70, 72, 69, "]", "[", 62, 70, 72, 68, "]", "[", 62, 70, 72, 67, "]", "[", 62, 70, 72, 66, "]", "[", 62, 70, 72, 65, "]", "[", 62, 70, 72, 64, "]", "[", 62, 70, 72, 63, "]", "[", 62, 70, 72, 61, "]", "[", 62, 70, 72, 60, "]", "[", 62, 70, 71, 72, "]", "[", 62, 70, 71, 69, "]", "[", 62, 70, 71, 68, "]", "[", 62, 70, 71, 67, "]", "[", 62, 70, 71, 66, "]", "[", 62, 70, 71, 65, "]", "[", 62, 70, 71, 64, "]", "[", 62, 70, 71, 63, "]", "[", 62, 70, 71, 61, "]", "[", 62, 70, 71, 60, "]", "[", 62, 70, 69, 72, "]", "[", 62, 70, 69, 71, "]", "[", 62, 70, 69, 68, "]", "[", 62, 70, 69, 67, "]", "[", 62, 70, 69, 66, "]", "[", 62, 70, 69, 65, "]", "[", 62, 70, 69, 64, "]", "[", 62, 70, 69, 63, "]", "[", 62, 70, 69, 61, "]", "[", 62, 70, 69, 60, "]", "[", 62, 70, 68, 72, "]", "[", 62, 70, 68, 71, "]", "[", 62, 70, 68, 69, "]", "[", 62, 70, 68, 67, "]", "[", 62, 70, 68, 66, "]", "[", 62, 70, 68, 65, "]", "[", 62, 70, 68, 64, "]", "[", 62, 70, 68, 63, "]", "[", 62, 70, 68, 61, "]", "[", 62, 70, 68, 60, "]", "[", 62, 70, 67, 72, "]", "[", 62, 70, 67, 71, "]", "[", 62, 70, 67, 69, "]", "[", 62, 70, 67, 68, "]", "[", 62, 70, 67, 66, "]", "[", 62, 70, 67, 65, "]", "[", 62, 70, 67, 64, "]", "[", 62, 70, 67, 63, "]", "[", 62, 70, 67, 61, "]", "[", 62, 70, 67, 60, "]", "[", 62, 70, 66, 72, "]", "[", 62, 70, 66, 71, "]", "[", 62, 70, 66, 69, "]", "[", 62, 70, 66, 68, "]", "[", 62, 70, 66, 67, "]", "[", 62, 70, 66, 65, "]", "[", 62, 70, 66, 64, "]", "[", 62, 70, 66, 63, "]", "[", 62, 70, 66, 61, "]", "[", 62, 70, 66, 60, "]", "[", 62, 70, 65, 72, "]", "[", 62, 70, 65, 71, "]", "[", 62, 70, 65, 69, "]", "[", 62, 70, 65, 68, "]", "[", 62, 70, 65, 67, "]", "[", 62, 70, 65, 66, "]", "[", 62, 70, 65, 64, "]", "[", 62, 70, 65, 63, "]", "[", 62, 70, 65, 61, "]", "[", 62, 70, 65, 60, "]", "[", 62, 70, 64, 72, "]", "[", 62, 70, 64, 71, "]", "[", 62, 70, 64, 69, "]", "[", 62, 70, 64, 68, "]", "[", 62, 70, 64, 67, "]", "[", 62, 70, 64, 66, "]", "[", 62, 70, 64, 65, "]", "[", 62, 70, 64, 63, "]", "[", 62, 70, 64, 61, "]", "[", 62, 70, 64, 60, "]", "[", 62, 70, 63, 72, "]", "[", 62, 70, 63, 71, "]", "[", 62, 70, 63, 69, "]", "[", 62, 70, 63, 68, "]", "[", 62, 70, 63, 67, "]", "[", 62, 70, 63, 66, "]", "[", 62, 70, 63, 65, "]", "[", 62, 70, 63, 64, "]", "[", 62, 70, 63, 61, "]", "[", 62, 70, 63, 60, "]", "[", 62, 70, 61, 72, "]", "[", 62, 70, 61, 71, "]", "[", 62, 70, 61, 69, "]", "[", 62, 70, 61, 68, "]", "[", 62, 70, 61, 67, "]", "[", 62, 70, 61, 66, "]", "[", 62, 70, 61, 65, "]", "[", 62, 70, 61, 64, "]", "[", 62, 70, 61, 63, "]", "[", 62, 70, 61, 60, "]", "[", 62, 70, 60, 72, "]", "[", 62, 70, 60, 71, "]", "[", 62, 70, 60, 69, "]", "[", 62, 70, 60, 68, "]", "[", 62, 70, 60, 67, "]", "[", 62, 70, 60, 66, "]", "[", 62, 70, 60, 65, "]", "[", 62, 70, 60, 64, "]", "[", 62, 70, 60, 63, "]", "[", 62, 70, 60, 61, "]", "[", 62, 69, 72, 71, "]", "[", 62, 69, 72, 70, "]", "[", 62, 69, 72, 68, "]", "[", 62, 69, 72, 67, "]", "[", 62, 69, 72, 66, "]", "[", 62, 69, 72, 65, "]", "[", 62, 69, 72, 64, "]", "[", 62, 69, 72, 63, "]", "[", 62, 69, 72, 61, "]", "[", 62, 69, 72, 60, "]", "[", 62, 69, 71, 72, "]", "[", 62, 69, 71, 70, "]", "[", 62, 69, 71, 68, "]", "[", 62, 69, 71, 67, "]", "[", 62, 69, 71, 66, "]", "[", 62, 69, 71, 65, "]", "[", 62, 69, 71, 64, "]", "[", 62, 69, 71, 63, "]", "[", 62, 69, 71, 61, "]", "[", 62, 69, 71, 60, "]", "[", 62, 69, 70, 72, "]", "[", 62, 69, 70, 71, "]", "[", 62, 69, 70, 68, "]", "[", 62, 69, 70, 67, "]", "[", 62, 69, 70, 66, "]", "[", 62, 69, 70, 65, "]", "[", 62, 69, 70, 64, "]", "[", 62, 69, 70, 63, "]", "[", 62, 69, 70, 61, "]", "[", 62, 69, 70, 60, "]", "[", 62, 69, 68, 72, "]", "[", 62, 69, 68, 71, "]", "[", 62, 69, 68, 70, "]", "[", 62, 69, 68, 67, "]", "[", 62, 69, 68, 66, "]", "[", 62, 69, 68, 65, "]", "[", 62, 69, 68, 64, "]", "[", 62, 69, 68, 63, "]", "[", 62, 69, 68, 61, "]", "[", 62, 69, 68, 60, "]", "[", 62, 69, 67, 72, "]", "[", 62, 69, 67, 71, "]", "[", 62, 69, 67, 70, "]", "[", 62, 69, 67, 68, "]", "[", 62, 69, 67, 66, "]", "[", 62, 69, 67, 65, "]", "[", 62, 69, 67, 64, "]", "[", 62, 69, 67, 63, "]", "[", 62, 69, 67, 61, "]", "[", 62, 69, 67, 60, "]", "[", 62, 69, 66, 72, "]", "[", 62, 69, 66, 71, "]", "[", 62, 69, 66, 70, "]", "[", 62, 69, 66, 68, "]", "[", 62, 69, 66, 67, "]", "[", 62, 69, 66, 65, "]", "[", 62, 69, 66, 64, "]", "[", 62, 69, 66, 63, "]", "[", 62, 69, 66, 61, "]", "[", 62, 69, 66, 60, "]", "[", 62, 69, 65, 72, "]", "[", 62, 69, 65, 71, "]", "[", 62, 69, 65, 70, "]", "[", 62, 69, 65, 68, "]", "[", 62, 69, 65, 67, "]", "[", 62, 69, 65, 66, "]", "[", 62, 69, 65, 64, "]", "[", 62, 69, 65, 63, "]", "[", 62, 69, 65, 61, "]", "[", 62, 69, 65, 60, "]", "[", 62, 69, 64, 72, "]", "[", 62, 69, 64, 71, "]", "[", 62, 69, 64, 70, "]", "[", 62, 69, 64, 68, "]", "[", 62, 69, 64, 67, "]", "[", 62, 69, 64, 66, "]", "[", 62, 69, 64, 65, "]", "[", 62, 69, 64, 63, "]", "[", 62, 69, 64, 61, "]", "[", 62, 69, 64, 60, "]", "[", 62, 69, 63, 72, "]", "[", 62, 69, 63, 71, "]", "[", 62, 69, 63, 70, "]", "[", 62, 69, 63, 68, "]", "[", 62, 69, 63, 67, "]", "[", 62, 69, 63, 66, "]", "[", 62, 69, 63, 65, "]", "[", 62, 69, 63, 64, "]", "[", 62, 69, 63, 61, "]", "[", 62, 69, 63, 60, "]", "[", 62, 69, 61, 72, "]", "[", 62, 69, 61, 71, "]", "[", 62, 69, 61, 70, "]", "[", 62, 69, 61, 68, "]", "[", 62, 69, 61, 67, "]", "[", 62, 69, 61, 66, "]", "[", 62, 69, 61, 65, "]", "[", 62, 69, 61, 64, "]", "[", 62, 69, 61, 63, "]", "[", 62, 69, 61, 60, "]", "[", 62, 69, 60, 72, "]", "[", 62, 69, 60, 71, "]", "[", 62, 69, 60, 70, "]", "[", 62, 69, 60, 68, "]", "[", 62, 69, 60, 67, "]", "[", 62, 69, 60, 66, "]", "[", 62, 69, 60, 65, "]", "[", 62, 69, 60, 64, "]", "[", 62, 69, 60, 63, "]", "[", 62, 69, 60, 61, "]", "[", 62, 68, 72, 71, "]", "[", 62, 68, 72, 70, "]", "[", 62, 68, 72, 69, "]", "[", 62, 68, 72, 67, "]", "[", 62, 68, 72, 66, "]", "[", 62, 68, 72, 65, "]", "[", 62, 68, 72, 64, "]", "[", 62, 68, 72, 63, "]", "[", 62, 68, 72, 61, "]", "[", 62, 68, 72, 60, "]", "[", 62, 68, 71, 72, "]", "[", 62, 68, 71, 70, "]", "[", 62, 68, 71, 69, "]", "[", 62 ],
													"reg_data_0000000020" : [ 68, 71, 67, "]", "[", 62, 68, 71, 66, "]", "[", 62, 68, 71, 65, "]", "[", 62, 68, 71, 64, "]", "[", 62, 68, 71, 63, "]", "[", 62, 68, 71, 61, "]", "[", 62, 68, 71, 60, "]", "[", 62, 68, 70, 72, "]", "[", 62, 68, 70, 71, "]", "[", 62, 68, 70, 69, "]", "[", 62, 68, 70, 67, "]", "[", 62, 68, 70, 66, "]", "[", 62, 68, 70, 65, "]", "[", 62, 68, 70, 64, "]", "[", 62, 68, 70, 63, "]", "[", 62, 68, 70, 61, "]", "[", 62, 68, 70, 60, "]", "[", 62, 68, 69, 72, "]", "[", 62, 68, 69, 71, "]", "[", 62, 68, 69, 70, "]", "[", 62, 68, 69, 67, "]", "[", 62, 68, 69, 66, "]", "[", 62, 68, 69, 65, "]", "[", 62, 68, 69, 64, "]", "[", 62, 68, 69, 63, "]", "[", 62, 68, 69, 61, "]", "[", 62, 68, 69, 60, "]", "[", 62, 68, 67, 72, "]", "[", 62, 68, 67, 71, "]", "[", 62, 68, 67, 70, "]", "[", 62, 68, 67, 69, "]", "[", 62, 68, 67, 66, "]", "[", 62, 68, 67, 65, "]", "[", 62, 68, 67, 64, "]", "[", 62, 68, 67, 63, "]", "[", 62, 68, 67, 61, "]", "[", 62, 68, 67, 60, "]", "[", 62, 68, 66, 72, "]", "[", 62, 68, 66, 71, "]", "[", 62, 68, 66, 70, "]", "[", 62, 68, 66, 69, "]", "[", 62, 68, 66, 67, "]", "[", 62, 68, 66, 65, "]", "[", 62, 68, 66, 64, "]", "[", 62, 68, 66, 63, "]", "[", 62, 68, 66, 61, "]", "[", 62, 68, 66, 60, "]", "[", 62, 68, 65, 72, "]", "[", 62, 68, 65, 71, "]", "[", 62, 68, 65, 70, "]", "[", 62, 68, 65, 69, "]", "[", 62, 68, 65, 67, "]", "[", 62, 68, 65, 66, "]", "[", 62, 68, 65, 64, "]", "[", 62, 68, 65, 63, "]", "[", 62, 68, 65, 61, "]", "[", 62, 68, 65, 60, "]", "[", 62, 68, 64, 72, "]", "[", 62, 68, 64, 71, "]", "[", 62, 68, 64, 70, "]", "[", 62, 68, 64, 69, "]", "[", 62, 68, 64, 67, "]", "[", 62, 68, 64, 66, "]", "[", 62, 68, 64, 65, "]", "[", 62, 68, 64, 63, "]", "[", 62, 68, 64, 61, "]", "[", 62, 68, 64, 60, "]", "[", 62, 68, 63, 72, "]", "[", 62, 68, 63, 71, "]", "[", 62, 68, 63, 70, "]", "[", 62, 68, 63, 69, "]", "[", 62, 68, 63, 67, "]", "[", 62, 68, 63, 66, "]", "[", 62, 68, 63, 65, "]", "[", 62, 68, 63, 64, "]", "[", 62, 68, 63, 61, "]", "[", 62, 68, 63, 60, "]", "[", 62, 68, 61, 72, "]", "[", 62, 68, 61, 71, "]", "[", 62, 68, 61, 70, "]", "[", 62, 68, 61, 69, "]", "[", 62, 68, 61, 67, "]", "[", 62, 68, 61, 66, "]", "[", 62, 68, 61, 65, "]", "[", 62, 68, 61, 64, "]", "[", 62, 68, 61, 63, "]", "[", 62, 68, 61, 60, "]", "[", 62, 68, 60, 72, "]", "[", 62, 68, 60, 71, "]", "[", 62, 68, 60, 70, "]", "[", 62, 68, 60, 69, "]", "[", 62, 68, 60, 67, "]", "[", 62, 68, 60, 66, "]", "[", 62, 68, 60, 65, "]", "[", 62, 68, 60, 64, "]", "[", 62, 68, 60, 63, "]", "[", 62, 68, 60, 61, "]", "[", 62, 67, 72, 71, "]", "[", 62, 67, 72, 70, "]", "[", 62, 67, 72, 69, "]", "[", 62, 67, 72, 68, "]", "[", 62, 67, 72, 66, "]", "[", 62, 67, 72, 65, "]", "[", 62, 67, 72, 64, "]", "[", 62, 67, 72, 63, "]", "[", 62, 67, 72, 61, "]", "[", 62, 67, 72, 60, "]", "[", 62, 67, 71, 72, "]", "[", 62, 67, 71, 70, "]", "[", 62, 67, 71, 69, "]", "[", 62, 67, 71, 68, "]", "[", 62, 67, 71, 66, "]", "[", 62, 67, 71, 65, "]", "[", 62, 67, 71, 64, "]", "[", 62, 67, 71, 63, "]", "[", 62, 67, 71, 61, "]", "[", 62, 67, 71, 60, "]", "[", 62, 67, 70, 72, "]", "[", 62, 67, 70, 71, "]", "[", 62, 67, 70, 69, "]", "[", 62, 67, 70, 68, "]", "[", 62, 67, 70, 66, "]", "[", 62, 67, 70, 65, "]", "[", 62, 67, 70, 64, "]", "[", 62, 67, 70, 63, "]", "[", 62, 67, 70, 61, "]", "[", 62, 67, 70, 60, "]", "[", 62, 67, 69, 72, "]", "[", 62, 67, 69, 71, "]", "[", 62, 67, 69, 70, "]", "[", 62, 67, 69, 68, "]", "[", 62, 67, 69, 66, "]", "[", 62, 67, 69, 65, "]", "[", 62, 67, 69, 64, "]", "[", 62, 67, 69, 63, "]", "[", 62, 67, 69, 61, "]", "[", 62, 67, 69, 60, "]", "[", 62, 67, 68, 72, "]", "[", 62, 67, 68, 71, "]", "[", 62, 67, 68, 70, "]", "[", 62, 67, 68, 69, "]", "[", 62, 67, 68, 66, "]", "[", 62, 67, 68, 65, "]", "[", 62, 67, 68, 64, "]", "[", 62, 67, 68, 63, "]", "[", 62, 67, 68, 61, "]", "[", 62, 67, 68, 60, "]", "[", 62, 67, 66, 72, "]", "[", 62, 67, 66, 71, "]", "[", 62, 67, 66, 70, "]", "[", 62, 67, 66, 69, "]", "[", 62, 67, 66, 68, "]", "[", 62, 67, 66, 65, "]", "[", 62, 67, 66, 64, "]", "[", 62, 67, 66, 63, "]", "[", 62, 67, 66, 61, "]", "[", 62, 67, 66, 60, "]", "[", 62, 67, 65, 72, "]", "[", 62, 67, 65, 71, "]", "[", 62, 67, 65, 70, "]", "[", 62, 67, 65, 69, "]", "[", 62, 67, 65, 68, "]", "[", 62, 67, 65, 66, "]", "[", 62, 67, 65, 64, "]", "[", 62, 67, 65, 63, "]", "[", 62, 67, 65, 61, "]", "[", 62, 67, 65, 60, "]", "[", 62, 67, 64, 72, "]", "[", 62, 67, 64, 71, "]", "[", 62, 67, 64, 70, "]", "[", 62, 67, 64, 69, "]", "[", 62, 67, 64, 68, "]", "[", 62, 67, 64, 66, "]", "[", 62, 67, 64, 65, "]", "[", 62, 67, 64, 63, "]", "[", 62, 67, 64, 61, "]", "[", 62, 67, 64, 60, "]", "[", 62, 67, 63, 72, "]", "[", 62, 67, 63, 71, "]", "[", 62, 67, 63, 70, "]", "[", 62, 67, 63, 69, "]", "[", 62, 67, 63, 68, "]", "[", 62, 67, 63, 66, "]", "[", 62, 67, 63, 65, "]", "[", 62, 67, 63, 64, "]", "[", 62, 67, 63, 61, "]", "[", 62, 67, 63, 60, "]", "[", 62, 67, 61, 72, "]", "[", 62, 67, 61, 71, "]", "[", 62, 67, 61, 70, "]", "[", 62, 67, 61, 69, "]", "[", 62, 67, 61, 68, "]", "[", 62, 67, 61, 66, "]", "[", 62, 67, 61, 65, "]", "[", 62, 67, 61, 64, "]", "[", 62, 67, 61, 63, "]", "[", 62, 67, 61, 60, "]", "[", 62, 67, 60, 72, "]", "[", 62, 67, 60, 71, "]", "[", 62, 67, 60, 70, "]", "[", 62, 67, 60, 69, "]", "[", 62, 67, 60, 68, "]", "[", 62, 67, 60, 66, "]", "[", 62, 67, 60, 65, "]", "[", 62, 67, 60, 64, "]", "[", 62, 67, 60, 63, "]", "[", 62, 67, 60, 61, "]", "[", 62, 66, 72, 71, "]", "[", 62, 66, 72, 70, "]", "[", 62, 66, 72, 69, "]", "[", 62, 66, 72, 68, "]", "[", 62, 66, 72, 67, "]", "[", 62, 66, 72, 65, "]", "[", 62, 66, 72, 64, "]", "[", 62, 66, 72, 63, "]", "[", 62, 66, 72, 61, "]", "[", 62, 66, 72, 60, "]", "[", 62, 66, 71, 72, "]", "[", 62, 66, 71, 70, "]", "[", 62, 66, 71, 69, "]", "[", 62, 66, 71, 68, "]", "[", 62, 66, 71, 67, "]", "[", 62, 66, 71, 65, "]", "[", 62, 66, 71, 64, "]", "[", 62, 66, 71, 63, "]", "[", 62, 66, 71, 61, "]", "[", 62, 66, 71, 60, "]", "[", 62, 66, 70, 72, "]", "[", 62, 66, 70, 71, "]", "[", 62, 66, 70, 69, "]", "[", 62, 66, 70, 68, "]", "[", 62, 66, 70, 67, "]", "[", 62, 66, 70, 65, "]", "[", 62, 66, 70, 64, "]", "[", 62, 66, 70, 63, "]", "[", 62, 66, 70, 61, "]", "[", 62, 66, 70, 60, "]", "[", 62, 66, 69, 72, "]", "[", 62, 66, 69, 71, "]", "[", 62, 66, 69, 70, "]", "[", 62, 66, 69, 68, "]", "[", 62, 66, 69, 67, "]", "[", 62, 66, 69, 65, "]", "[", 62, 66, 69, 64, "]", "[", 62, 66, 69, 63, "]", "[", 62, 66, 69, 61, "]", "[", 62, 66, 69, 60, "]", "[", 62, 66, 68, 72, "]", "[", 62, 66, 68, 71, "]", "[", 62, 66, 68, 70, "]", "[", 62, 66, 68, 69, "]", "[", 62, 66, 68, 67, "]", "[", 62, 66, 68, 65, "]", "[", 62, 66, 68, 64, "]", "[", 62, 66, 68, 63, "]", "[", 62, 66, 68, 61, "]", "[", 62, 66, 68, 60, "]", "[", 62, 66, 67, 72, "]", "[", 62, 66, 67, 71, "]", "[", 62, 66, 67, 70, "]", "[", 62, 66, 67, 69, "]", "[", 62, 66, 67, 68, "]", "[", 62, 66, 67, 65, "]", "[", 62, 66, 67, 64, "]", "[", 62, 66, 67, 63, "]", "[", 62, 66, 67, 61, "]", "[", 62, 66, 67, 60, "]", "[", 62, 66, 65, 72, "]", "[", 62, 66, 65, 71, "]", "[", 62, 66, 65, 70, "]", "[", 62, 66, 65, 69, "]", "[", 62, 66, 65, 68, "]", "[", 62, 66, 65, 67, "]", "[", 62, 66, 65, 64, "]", "[", 62, 66, 65, 63, "]", "[", 62, 66, 65, 61, "]", "[", 62, 66, 65, 60, "]", "[", 62, 66, 64, 72, "]", "[", 62, 66, 64, 71, "]", "[", 62, 66, 64, 70, "]", "[", 62, 66, 64, 69, "]", "[", 62, 66, 64, 68, "]", "[", 62, 66, 64, 67, "]", "[", 62, 66, 64, 65, "]", "[", 62, 66, 64, 63, "]", "[", 62, 66, 64, 61, "]", "[", 62, 66, 64, 60, "]", "[", 62, 66, 63, 72, "]", "[", 62, 66, 63, 71, "]", "[", 62, 66, 63, 70, "]", "[", 62, 66, 63, 69, "]", "[", 62, 66, 63, 68, "]", "[", 62, 66, 63, 67, "]", "[", 62, 66, 63, 65, "]", "[", 62, 66, 63, 64, "]", "[", 62, 66, 63, 61, "]", "[", 62, 66, 63, 60, "]", "[", 62, 66, 61, 72, "]", "[", 62, 66, 61, 71, "]", "[", 62, 66, 61, 70, "]", "[", 62, 66, 61, 69, "]", "[", 62, 66, 61, 68, "]", "[", 62, 66, 61, 67, "]", "[", 62, 66, 61, 65, "]", "[", 62, 66, 61, 64, "]", "[", 62, 66, 61, 63, "]", "[", 62, 66, 61, 60, "]", "[", 62, 66, 60, 72, "]", "[", 62, 66, 60, 71, "]", "[", 62, 66, 60, 70, "]", "[", 62, 66, 60, 69, "]", "[", 62, 66, 60, 68, "]", "[", 62, 66, 60, 67, "]", "[", 62, 66, 60, 65, "]", "[", 62, 66, 60, 64, "]", "[", 62, 66, 60, 63, "]", "[", 62, 66, 60, 61, "]", "[", 62, 65, 72, 71, "]", "[", 62, 65, 72, 70, "]", "[", 62, 65, 72, 69, "]", "[", 62, 65, 72, 68, "]", "[", 62, 65, 72, 67, "]", "[", 62, 65, 72, 66, "]", "[", 62, 65, 72, 64, "]", "[", 62, 65, 72, 63, "]", "[", 62, 65, 72, 61, "]", "[", 62, 65, 72, 60, "]", "[", 62, 65, 71, 72, "]", "[", 62, 65, 71, 70, "]", "[", 62, 65, 71, 69, "]", "[", 62, 65, 71, 68, "]", "[", 62, 65, 71, 67, "]", "[", 62, 65, 71, 66, "]", "[", 62, 65, 71, 64, "]", "[", 62, 65, 71, 63, "]", "[", 62, 65, 71, 61, "]", "[", 62, 65, 71, 60, "]", "[", 62, 65, 70, 72, "]", "[", 62, 65, 70, 71, "]", "[", 62, 65, 70, 69, "]", "[", 62, 65, 70, 68, "]", "[", 62, 65, 70, 67, "]", "[", 62, 65, 70, 66, "]", "[", 62, 65, 70, 64, "]", "[", 62, 65, 70, 63, "]", "[", 62, 65, 70, 61, "]", "[", 62, 65, 70, 60, "]", "[", 62, 65, 69, 72, "]", "[", 62, 65, 69, 71, "]", "[", 62, 65, 69, 70, "]", "[", 62, 65, 69, 68, "]", "[", 62, 65, 69, 67, "]", "[", 62, 65, 69, 66, "]", "[", 62, 65, 69, 64, "]", "[", 62, 65, 69, 63, "]", "[", 62, 65, 69, 61, "]", "[", 62, 65, 69, 60, "]", "[", 62, 65, 68, 72, "]", "[", 62, 65, 68, 71, "]", "[", 62, 65, 68, 70, "]", "[", 62, 65, 68, 69, "]", "[", 62, 65, 68, 67, "]", "[", 62, 65, 68, 66, "]", "[", 62, 65, 68, 64, "]", "[", 62, 65, 68, 63, "]", "[", 62, 65, 68, 61, "]", "[", 62, 65, 68, 60, "]", "[", 62, 65, 67, 72, "]", "[", 62, 65, 67, 71, "]", "[", 62, 65, 67, 70, "]", "[", 62, 65, 67, 69, "]", "[", 62, 65, 67, 68, "]", "[", 62, 65, 67, 66, "]", "[", 62, 65, 67, 64, "]", "[", 62, 65, 67, 63, "]", "[", 62, 65, 67, 61, "]", "[", 62, 65, 67, 60, "]", "[", 62, 65, 66, 72, "]", "[", 62, 65, 66, 71, "]", "[", 62, 65, 66, 70, "]", "[", 62, 65, 66, 69, "]", "[", 62, 65, 66, 68, "]", "[", 62, 65, 66, 67, "]", "[", 62, 65, 66, 64, "]", "[", 62, 65, 66, 63, "]", "[", 62, 65, 66, 61, "]", "[", 62, 65, 66, 60, "]", "[", 62, 65, 64, 72, "]", "[", 62, 65, 64, 71, "]", "[", 62, 65, 64, 70, "]", "[", 62, 65, 64, 69, "]", "[", 62, 65, 64, 68, "]", "[", 62, 65, 64, 67, "]", "[", 62, 65, 64, 66, "]", "[", 62, 65, 64, 63, "]", "[", 62, 65, 64, 61, "]", "[", 62, 65, 64, 60, "]", "[", 62, 65, 63, 72, "]", "[", 62, 65, 63, 71, "]", "[", 62, 65, 63, 70, "]", "[", 62, 65, 63, 69, "]", "[", 62, 65, 63, 68, "]", "[", 62, 65, 63, 67, "]", "[", 62, 65, 63, 66, "]", "[", 62, 65, 63, 64, "]", "[", 62, 65, 63, 61, "]", "[", 62, 65, 63, 60, "]", "[", 62, 65, 61, 72, "]", "[", 62, 65, 61, 71, "]", "[", 62, 65, 61, 70, "]", "[", 62, 65, 61, 69, "]", "[", 62, 65, 61, 68, "]", "[", 62, 65, 61, 67, "]", "[", 62, 65, 61, 66, "]", "[", 62, 65, 61, 64, "]", "[", 62, 65, 61, 63, "]", "[", 62, 65, 61, 60, "]", "[", 62, 65, 60, 72, "]", "[", 62, 65, 60, 71, "]", "[", 62, 65, 60, 70, "]", "[", 62, 65, 60, 69, "]", "[", 62, 65, 60, 68, "]", "[", 62, 65, 60, 67, "]", "[", 62, 65, 60, 66, "]", "[", 62, 65, 60, 64, "]", "[", 62, 65, 60, 63, "]", "[", 62, 65, 60, 61, "]", "[", 62, 64, 72, 71, "]", "[", 62, 64, 72, 70, "]", "[", 62, 64, 72, 69, "]", "[", 62, 64, 72, 68, "]", "[", 62, 64, 72, 67, "]", "[", 62, 64, 72, 66, "]", "[", 62, 64, 72, 65, "]", "[", 62, 64, 72, 63, "]", "[", 62, 64, 72, 61, "]", "[", 62, 64, 72, 60, "]", "[", 62, 64, 71, 72, "]", "[", 62, 64, 71, 70, "]", "[", 62, 64, 71, 69, "]", "[", 62, 64, 71, 68, "]", "[", 62, 64, 71, 67, "]", "[", 62, 64, 71, 66, "]", "[", 62, 64, 71, 65, "]", "[", 62, 64, 71, 63, "]", "[", 62, 64, 71, 61, "]", "[", 62, 64, 71, 60, "]", "[", 62, 64, 70, 72, "]", "[", 62, 64, 70, 71, "]", "[", 62, 64, 70, 69, "]", "[", 62, 64, 70, 68, "]", "[", 62, 64, 70, 67, "]", "[", 62, 64, 70, 66, "]", "[", 62, 64, 70, 65, "]", "[", 62, 64, 70, 63, "]", "[", 62, 64, 70, 61, "]", "[", 62, 64, 70, 60, "]", "[", 62, 64, 69, 72, "]", "[", 62, 64, 69, 71, "]", "[", 62, 64, 69, 70, "]", "[", 62, 64, 69, 68, "]", "[", 62, 64, 69, 67, "]", "[", 62, 64, 69, 66, "]", "[", 62, 64, 69, 65, "]", "[", 62, 64, 69, 63, "]", "[", 62, 64, 69, 61, "]", "[", 62, 64, 69, 60, "]", "[", 62, 64, 68, 72, "]", "[", 62, 64, 68, 71, "]", "[", 62, 64, 68, 70, "]", "[", 62, 64, 68, 69, "]", "[", 62, 64, 68, 67, "]", "[", 62, 64, 68, 66, "]", "[", 62, 64, 68, 65, "]", "[", 62, 64, 68, 63, "]", "[", 62, 64, 68, 61, "]", "[", 62, 64, 68, 60, "]", "[", 62, 64, 67, 72, "]", "[", 62, 64, 67, 71, "]", "[", 62, 64, 67, 70, "]", "[", 62, 64, 67, 69, "]", "[", 62, 64, 67, 68, "]", "[", 62, 64, 67, 66, "]", "[", 62, 64, 67, 65, "]", "[", 62, 64, 67, 63, "]", "[", 62, 64, 67, 61, "]", "[", 62, 64, 67, 60, "]", "[", 62, 64, 66, 72, "]", "[", 62, 64, 66, 71, "]", "[", 62, 64, 66, 70, "]", "[", 62, 64, 66, 69, "]", "[", 62, 64, 66, 68, "]", "[", 62, 64, 66, 67, "]", "[", 62, 64, 66, 65, "]", "[", 62, 64, 66, 63, "]", "[", 62, 64, 66, 61, "]", "[", 62, 64, 66, 60, "]", "[", 62, 64, 65, 72, "]", "[", 62, 64, 65, 71, "]", "[", 62, 64, 65, 70, "]", "[", 62, 64, 65, 69, "]", "[", 62, 64, 65, 68, "]", "[", 62, 64, 65, 67, "]", "[", 62, 64, 65, 66, "]", "[", 62, 64, 65, 63, "]", "[", 62, 64, 65, 61, "]", "[", 62, 64, 65, 60, "]", "[", 62, 64, 63, 72, "]", "[", 62, 64, 63, 71, "]", "[", 62, 64, 63, 70, "]", "[", 62, 64, 63, 69, "]", "[", 62, 64, 63, 68, "]", "[", 62, 64, 63, 67, "]", "[", 62, 64, 63, 66, "]", "[", 62, 64, 63, 65, "]", "[", 62, 64, 63, 61, "]", "[", 62, 64, 63, 60, "]", "[", 62, 64, 61, 72, "]", "[", 62, 64, 61, 71, "]", "[", 62, 64, 61, 70, "]", "[", 62, 64, 61, 69, "]", "[", 62, 64, 61, 68, "]", "[", 62, 64, 61, 67, "]", "[", 62, 64, 61, 66, "]", "[", 62, 64, 61, 65, "]", "[", 62, 64, 61, 63, "]", "[", 62, 64, 61, 60, "]", "[", 62, 64, 60, 72, "]", "[", 62, 64, 60, 71, "]", "[", 62, 64, 60, 70, "]", "[", 62, 64, 60, 69, "]", "[", 62, 64, 60, 68, "]", "[", 62, 64, 60, 67, "]", "[", 62, 64, 60, 66, "]", "[", 62, 64, 60, 65, "]", "[", 62, 64, 60, 63, "]", "[", 62, 64, 60, 61, "]", "[", 62, 63, 72, 71, "]", "[", 62, 63, 72, 70, "]", "[", 62, 63, 72, 69, "]", "[", 62, 63, 72, 68, "]", "[", 62, 63, 72, 67, "]", "[", 62, 63, 72, 66, "]", "[", 62, 63, 72, 65, "]", "[", 62, 63, 72, 64, "]", "[", 62, 63, 72, 61, "]", "[", 62, 63, 72, 60, "]", "[", 62, 63, 71, 72, "]", "[", 62, 63, 71, 70, "]", "[", 62, 63, 71, 69, "]", "[", 62, 63, 71, 68, "]", "[", 62, 63, 71, 67, "]", "[", 62, 63, 71, 66, "]", "[", 62, 63, 71, 65, "]", "[", 62, 63, 71, 64, "]", "[", 62, 63, 71, 61, "]", "[", 62, 63, 71, 60, "]", "[", 62, 63, 70, 72, "]", "[", 62, 63, 70, 71, "]", "[", 62, 63, 70, 69, "]", "[", 62, 63, 70, 68, "]", "[", 62, 63, 70, 67, "]", "[", 62, 63, 70, 66, "]", "[", 62, 63, 70, 65, "]", "[", 62, 63, 70, 64, "]", "[", 62, 63, 70, 61, "]", "[", 62, 63, 70, 60, "]", "[", 62, 63, 69, 72, "]", "[", 62, 63, 69, 71, "]", "[", 62, 63, 69, 70, "]", "[", 62, 63, 69, 68, "]", "[", 62, 63, 69, 67, "]", "[", 62, 63, 69, 66, "]", "[", 62, 63, 69, 65, "]", "[", 62, 63, 69, 64, "]", "[", 62, 63, 69, 61, "]", "[", 62, 63, 69, 60, "]", "[", 62, 63, 68, 72, "]", "[", 62, 63, 68, 71, "]", "[", 62, 63, 68, 70, "]", "[", 62, 63, 68, 69, "]", "[", 62, 63, 68, 67, "]", "[", 62, 63, 68, 66, "]", "[", 62, 63, 68, 65, "]", "[", 62, 63, 68, 64, "]", "[", 62, 63, 68, 61, "]", "[", 62, 63, 68, 60, "]", "[", 62, 63, 67, 72, "]", "[", 62, 63, 67, 71, "]", "[", 62, 63, 67, 70, "]", "[", 62, 63, 67, 69, "]", "[", 62, 63, 67, 68, "]", "[", 62, 63, 67, 66, "]", "[", 62, 63, 67, 65, "]", "[", 62, 63, 67, 64, "]", "[", 62, 63, 67, 61, "]", "[", 62, 63, 67, 60, "]", "[", 62, 63, 66, 72, "]", "[", 62, 63, 66, 71, "]", "[", 62, 63, 66, 70, "]", "[", 62, 63, 66, 69, "]", "[", 62, 63, 66, 68, "]", "[", 62, 63, 66, 67, "]", "[", 62, 63, 66, 65, "]", "[", 62, 63, 66, 64, "]", "[", 62, 63, 66, 61, "]", "[", 62, 63, 66, 60, "]", "[", 62, 63, 65, 72, "]", "[", 62, 63, 65, 71, "]", "[", 62, 63, 65, 70, "]", "[", 62, 63, 65, 69, "]", "[", 62, 63, 65, 68, "]", "[", 62, 63, 65, 67, "]", "[", 62, 63, 65, 66, "]", "[", 62, 63, 65, 64, "]", "[", 62, 63, 65, 61, "]", "[", 62, 63, 65, 60, "]", "[", 62, 63, 64, 72, "]", "[", 62, 63, 64, 71, "]", "[", 62, 63, 64, 70, "]", "[", 62, 63, 64, 69, "]", "[", 62, 63, 64, 68, "]", "[", 62, 63, 64, 67, "]", "[", 62, 63, 64, 66, "]", "[", 62, 63, 64, 65, "]", "[", 62, 63, 64, 61, "]", "[", 62, 63, 64, 60, "]", "[", 62, 63, 61, 72, "]", "[", 62, 63, 61, 71, "]", "[", 62, 63, 61, 70, "]", "[", 62, 63, 61, 69, "]", "[", 62, 63, 61, 68, "]", "[", 62, 63, 61, 67, "]", "[", 62, 63, 61, 66, "]", "[", 62, 63, 61, 65, "]", "[", 62, 63, 61, 64, "]", "[", 62, 63, 61, 60, "]", "[", 62, 63, 60, 72, "]", "[", 62, 63, 60, 71, "]", "[", 62, 63, 60, 70, "]", "[", 62, 63, 60, 69, "]", "[", 62, 63, 60, 68, "]", "[", 62, 63, 60, 67, "]", "[", 62, 63, 60, 66, "]", "[", 62, 63, 60, 65, "]", "[", 62, 63, 60, 64, "]", "[", 62, 63, 60, 61, "]", "[", 62, 61, 72, 71, "]", "[", 62, 61, 72, 70, "]", "[", 62, 61, 72, 69, "]", "[", 62, 61, 72, 68, "]", "[", 62, 61, 72, 67, "]", "[", 62, 61, 72, 66, "]", "[", 62, 61, 72, 65, "]", "[", 62, 61, 72, 64, "]", "[", 62, 61, 72, 63, "]", "[", 62, 61, 72, 60, "]", "[", 62, 61, 71, 72, "]", "[", 62, 61, 71, 70, "]", "[", 62, 61, 71, 69, "]", "[", 62, 61, 71, 68, "]", "[", 62, 61, 71, 67, "]", "[", 62, 61, 71, 66, "]", "[", 62, 61, 71, 65, "]", "[", 62, 61, 71, 64, "]", "[", 62, 61, 71, 63, "]", "[", 62, 61, 71, 60, "]", "[", 62, 61, 70, 72, "]", "[", 62, 61, 70, 71, "]", "[", 62, 61, 70, 69, "]", "[", 62, 61, 70, 68, "]", "[", 62, 61, 70, 67, "]", "[", 62, 61, 70, 66, "]", "[", 62, 61, 70, 65, "]", "[", 62, 61, 70, 64, "]", "[", 62, 61, 70, 63, "]", "[", 62, 61, 70, 60, "]", "[", 62, 61, 69, 72, "]", "[", 62, 61, 69, 71, "]", "[", 62, 61, 69, 70, "]", "[", 62, 61, 69, 68, "]", "[", 62, 61, 69, 67, "]", "[", 62, 61, 69, 66, "]" ],
													"reg_data_0000000021" : [ "[", 62, 61, 69, 65, "]", "[", 62, 61, 69, 64, "]", "[", 62, 61, 69, 63, "]", "[", 62, 61, 69, 60, "]", "[", 62, 61, 68, 72, "]", "[", 62, 61, 68, 71, "]", "[", 62, 61, 68, 70, "]", "[", 62, 61, 68, 69, "]", "[", 62, 61, 68, 67, "]", "[", 62, 61, 68, 66, "]", "[", 62, 61, 68, 65, "]", "[", 62, 61, 68, 64, "]", "[", 62, 61, 68, 63, "]", "[", 62, 61, 68, 60, "]", "[", 62, 61, 67, 72, "]", "[", 62, 61, 67, 71, "]", "[", 62, 61, 67, 70, "]", "[", 62, 61, 67, 69, "]", "[", 62, 61, 67, 68, "]", "[", 62, 61, 67, 66, "]", "[", 62, 61, 67, 65, "]", "[", 62, 61, 67, 64, "]", "[", 62, 61, 67, 63, "]", "[", 62, 61, 67, 60, "]", "[", 62, 61, 66, 72, "]", "[", 62, 61, 66, 71, "]", "[", 62, 61, 66, 70, "]", "[", 62, 61, 66, 69, "]", "[", 62, 61, 66, 68, "]", "[", 62, 61, 66, 67, "]", "[", 62, 61, 66, 65, "]", "[", 62, 61, 66, 64, "]", "[", 62, 61, 66, 63, "]", "[", 62, 61, 66, 60, "]", "[", 62, 61, 65, 72, "]", "[", 62, 61, 65, 71, "]", "[", 62, 61, 65, 70, "]", "[", 62, 61, 65, 69, "]", "[", 62, 61, 65, 68, "]", "[", 62, 61, 65, 67, "]", "[", 62, 61, 65, 66, "]", "[", 62, 61, 65, 64, "]", "[", 62, 61, 65, 63, "]", "[", 62, 61, 65, 60, "]", "[", 62, 61, 64, 72, "]", "[", 62, 61, 64, 71, "]", "[", 62, 61, 64, 70, "]", "[", 62, 61, 64, 69, "]", "[", 62, 61, 64, 68, "]", "[", 62, 61, 64, 67, "]", "[", 62, 61, 64, 66, "]", "[", 62, 61, 64, 65, "]", "[", 62, 61, 64, 63, "]", "[", 62, 61, 64, 60, "]", "[", 62, 61, 63, 72, "]", "[", 62, 61, 63, 71, "]", "[", 62, 61, 63, 70, "]", "[", 62, 61, 63, 69, "]", "[", 62, 61, 63, 68, "]", "[", 62, 61, 63, 67, "]", "[", 62, 61, 63, 66, "]", "[", 62, 61, 63, 65, "]", "[", 62, 61, 63, 64, "]", "[", 62, 61, 63, 60, "]", "[", 62, 61, 60, 72, "]", "[", 62, 61, 60, 71, "]", "[", 62, 61, 60, 70, "]", "[", 62, 61, 60, 69, "]", "[", 62, 61, 60, 68, "]", "[", 62, 61, 60, 67, "]", "[", 62, 61, 60, 66, "]", "[", 62, 61, 60, 65, "]", "[", 62, 61, 60, 64, "]", "[", 62, 61, 60, 63, "]", "[", 62, 60, 72, 71, "]", "[", 62, 60, 72, 70, "]", "[", 62, 60, 72, 69, "]", "[", 62, 60, 72, 68, "]", "[", 62, 60, 72, 67, "]", "[", 62, 60, 72, 66, "]", "[", 62, 60, 72, 65, "]", "[", 62, 60, 72, 64, "]", "[", 62, 60, 72, 63, "]", "[", 62, 60, 72, 61, "]", "[", 62, 60, 71, 72, "]", "[", 62, 60, 71, 70, "]", "[", 62, 60, 71, 69, "]", "[", 62, 60, 71, 68, "]", "[", 62, 60, 71, 67, "]", "[", 62, 60, 71, 66, "]", "[", 62, 60, 71, 65, "]", "[", 62, 60, 71, 64, "]", "[", 62, 60, 71, 63, "]", "[", 62, 60, 71, 61, "]", "[", 62, 60, 70, 72, "]", "[", 62, 60, 70, 71, "]", "[", 62, 60, 70, 69, "]", "[", 62, 60, 70, 68, "]", "[", 62, 60, 70, 67, "]", "[", 62, 60, 70, 66, "]", "[", 62, 60, 70, 65, "]", "[", 62, 60, 70, 64, "]", "[", 62, 60, 70, 63, "]", "[", 62, 60, 70, 61, "]", "[", 62, 60, 69, 72, "]", "[", 62, 60, 69, 71, "]", "[", 62, 60, 69, 70, "]", "[", 62, 60, 69, 68, "]", "[", 62, 60, 69, 67, "]", "[", 62, 60, 69, 66, "]", "[", 62, 60, 69, 65, "]", "[", 62, 60, 69, 64, "]", "[", 62, 60, 69, 63, "]", "[", 62, 60, 69, 61, "]", "[", 62, 60, 68, 72, "]", "[", 62, 60, 68, 71, "]", "[", 62, 60, 68, 70, "]", "[", 62, 60, 68, 69, "]", "[", 62, 60, 68, 67, "]", "[", 62, 60, 68, 66, "]", "[", 62, 60, 68, 65, "]", "[", 62, 60, 68, 64, "]", "[", 62, 60, 68, 63, "]", "[", 62, 60, 68, 61, "]", "[", 62, 60, 67, 72, "]", "[", 62, 60, 67, 71, "]", "[", 62, 60, 67, 70, "]", "[", 62, 60, 67, 69, "]", "[", 62, 60, 67, 68, "]", "[", 62, 60, 67, 66, "]", "[", 62, 60, 67, 65, "]", "[", 62, 60, 67, 64, "]", "[", 62, 60, 67, 63, "]", "[", 62, 60, 67, 61, "]", "[", 62, 60, 66, 72, "]", "[", 62, 60, 66, 71, "]", "[", 62, 60, 66, 70, "]", "[", 62, 60, 66, 69, "]", "[", 62, 60, 66, 68, "]", "[", 62, 60, 66, 67, "]", "[", 62, 60, 66, 65, "]", "[", 62, 60, 66, 64, "]", "[", 62, 60, 66, 63, "]", "[", 62, 60, 66, 61, "]", "[", 62, 60, 65, 72, "]", "[", 62, 60, 65, 71, "]", "[", 62, 60, 65, 70, "]", "[", 62, 60, 65, 69, "]", "[", 62, 60, 65, 68, "]", "[", 62, 60, 65, 67, "]", "[", 62, 60, 65, 66, "]", "[", 62, 60, 65, 64, "]", "[", 62, 60, 65, 63, "]", "[", 62, 60, 65, 61, "]", "[", 62, 60, 64, 72, "]", "[", 62, 60, 64, 71, "]", "[", 62, 60, 64, 70, "]", "[", 62, 60, 64, 69, "]", "[", 62, 60, 64, 68, "]", "[", 62, 60, 64, 67, "]", "[", 62, 60, 64, 66, "]", "[", 62, 60, 64, 65, "]", "[", 62, 60, 64, 63, "]", "[", 62, 60, 64, 61, "]", "[", 62, 60, 63, 72, "]", "[", 62, 60, 63, 71, "]", "[", 62, 60, 63, 70, "]", "[", 62, 60, 63, 69, "]", "[", 62, 60, 63, 68, "]", "[", 62, 60, 63, 67, "]", "[", 62, 60, 63, 66, "]", "[", 62, 60, 63, 65, "]", "[", 62, 60, 63, 64, "]", "[", 62, 60, 63, 61, "]", "[", 62, 60, 61, 72, "]", "[", 62, 60, 61, 71, "]", "[", 62, 60, 61, 70, "]", "[", 62, 60, 61, 69, "]", "[", 62, 60, 61, 68, "]", "[", 62, 60, 61, 67, "]", "[", 62, 60, 61, 66, "]", "[", 62, 60, 61, 65, "]", "[", 62, 60, 61, 64, "]", "[", 62, 60, 61, 63, "]", "[", 61, 72, 71, 70, "]", "[", 61, 72, 71, 69, "]", "[", 61, 72, 71, 68, "]", "[", 61, 72, 71, 67, "]", "[", 61, 72, 71, 66, "]", "[", 61, 72, 71, 65, "]", "[", 61, 72, 71, 64, "]", "[", 61, 72, 71, 63, "]", "[", 61, 72, 71, 62, "]", "[", 61, 72, 71, 60, "]", "[", 61, 72, 70, 71, "]", "[", 61, 72, 70, 69, "]", "[", 61, 72, 70, 68, "]", "[", 61, 72, 70, 67, "]", "[", 61, 72, 70, 66, "]", "[", 61, 72, 70, 65, "]", "[", 61, 72, 70, 64, "]", "[", 61, 72, 70, 63, "]", "[", 61, 72, 70, 62, "]", "[", 61, 72, 70, 60, "]", "[", 61, 72, 69, 71, "]", "[", 61, 72, 69, 70, "]", "[", 61, 72, 69, 68, "]", "[", 61, 72, 69, 67, "]", "[", 61, 72, 69, 66, "]", "[", 61, 72, 69, 65, "]", "[", 61, 72, 69, 64, "]", "[", 61, 72, 69, 63, "]", "[", 61, 72, 69, 62, "]", "[", 61, 72, 69, 60, "]", "[", 61, 72, 68, 71, "]", "[", 61, 72, 68, 70, "]", "[", 61, 72, 68, 69, "]", "[", 61, 72, 68, 67, "]", "[", 61, 72, 68, 66, "]", "[", 61, 72, 68, 65, "]", "[", 61, 72, 68, 64, "]", "[", 61, 72, 68, 63, "]", "[", 61, 72, 68, 62, "]", "[", 61, 72, 68, 60, "]", "[", 61, 72, 67, 71, "]", "[", 61, 72, 67, 70, "]", "[", 61, 72, 67, 69, "]", "[", 61, 72, 67, 68, "]", "[", 61, 72, 67, 66, "]", "[", 61, 72, 67, 65, "]", "[", 61, 72, 67, 64, "]", "[", 61, 72, 67, 63, "]", "[", 61, 72, 67, 62, "]", "[", 61, 72, 67, 60, "]", "[", 61, 72, 66, 71, "]", "[", 61, 72, 66, 70, "]", "[", 61, 72, 66, 69, "]", "[", 61, 72, 66, 68, "]", "[", 61, 72, 66, 67, "]", "[", 61, 72, 66, 65, "]", "[", 61, 72, 66, 64, "]", "[", 61, 72, 66, 63, "]", "[", 61, 72, 66, 62, "]", "[", 61, 72, 66, 60, "]", "[", 61, 72, 65, 71, "]", "[", 61, 72, 65, 70, "]", "[", 61, 72, 65, 69, "]", "[", 61, 72, 65, 68, "]", "[", 61, 72, 65, 67, "]", "[", 61, 72, 65, 66, "]", "[", 61, 72, 65, 64, "]", "[", 61, 72, 65, 63, "]", "[", 61, 72, 65, 62, "]", "[", 61, 72, 65, 60, "]", "[", 61, 72, 64, 71, "]", "[", 61, 72, 64, 70, "]", "[", 61, 72, 64, 69, "]", "[", 61, 72, 64, 68, "]", "[", 61, 72, 64, 67, "]", "[", 61, 72, 64, 66, "]", "[", 61, 72, 64, 65, "]", "[", 61, 72, 64, 63, "]", "[", 61, 72, 64, 62, "]", "[", 61, 72, 64, 60, "]", "[", 61, 72, 63, 71, "]", "[", 61, 72, 63, 70, "]", "[", 61, 72, 63, 69, "]", "[", 61, 72, 63, 68, "]", "[", 61, 72, 63, 67, "]", "[", 61, 72, 63, 66, "]", "[", 61, 72, 63, 65, "]", "[", 61, 72, 63, 64, "]", "[", 61, 72, 63, 62, "]", "[", 61, 72, 63, 60, "]", "[", 61, 72, 62, 71, "]", "[", 61, 72, 62, 70, "]", "[", 61, 72, 62, 69, "]", "[", 61, 72, 62, 68, "]", "[", 61, 72, 62, 67, "]", "[", 61, 72, 62, 66, "]", "[", 61, 72, 62, 65, "]", "[", 61, 72, 62, 64, "]", "[", 61, 72, 62, 63, "]", "[", 61, 72, 62, 60, "]", "[", 61, 72, 60, 71, "]", "[", 61, 72, 60, 70, "]", "[", 61, 72, 60, 69, "]", "[", 61, 72, 60, 68, "]", "[", 61, 72, 60, 67, "]", "[", 61, 72, 60, 66, "]", "[", 61, 72, 60, 65, "]", "[", 61, 72, 60, 64, "]", "[", 61, 72, 60, 63, "]", "[", 61, 72, 60, 62, "]", "[", 61, 71, 72, 70, "]", "[", 61, 71, 72, 69, "]", "[", 61, 71, 72, 68, "]", "[", 61, 71, 72, 67, "]", "[", 61, 71, 72, 66, "]", "[", 61, 71, 72, 65, "]", "[", 61, 71, 72, 64, "]", "[", 61, 71, 72, 63, "]", "[", 61, 71, 72, 62, "]", "[", 61, 71, 72, 60, "]", "[", 61, 71, 70, 72, "]", "[", 61, 71, 70, 69, "]", "[", 61, 71, 70, 68, "]", "[", 61, 71, 70, 67, "]", "[", 61, 71, 70, 66, "]", "[", 61, 71, 70, 65, "]", "[", 61, 71, 70, 64, "]", "[", 61, 71, 70, 63, "]", "[", 61, 71, 70, 62, "]", "[", 61, 71, 70, 60, "]", "[", 61, 71, 69, 72, "]", "[", 61, 71, 69, 70, "]", "[", 61, 71, 69, 68, "]", "[", 61, 71, 69, 67, "]", "[", 61, 71, 69, 66, "]", "[", 61, 71, 69, 65, "]", "[", 61, 71, 69, 64, "]", "[", 61, 71, 69, 63, "]", "[", 61, 71, 69, 62, "]", "[", 61, 71, 69, 60, "]", "[", 61, 71, 68, 72, "]", "[", 61, 71, 68, 70, "]", "[", 61, 71, 68, 69, "]", "[", 61, 71, 68, 67, "]", "[", 61, 71, 68, 66, "]", "[", 61, 71, 68, 65, "]", "[", 61, 71, 68, 64, "]", "[", 61, 71, 68, 63, "]", "[", 61, 71, 68, 62, "]", "[", 61, 71, 68, 60, "]", "[", 61, 71, 67, 72, "]", "[", 61, 71, 67, 70, "]", "[", 61, 71, 67, 69, "]", "[", 61, 71, 67, 68, "]", "[", 61, 71, 67, 66, "]", "[", 61, 71, 67, 65, "]", "[", 61, 71, 67, 64, "]", "[", 61, 71, 67, 63, "]", "[", 61, 71, 67, 62, "]", "[", 61, 71, 67, 60, "]", "[", 61, 71, 66, 72, "]", "[", 61, 71, 66, 70, "]", "[", 61, 71, 66, 69, "]", "[", 61, 71, 66, 68, "]", "[", 61, 71, 66, 67, "]", "[", 61, 71, 66, 65, "]", "[", 61, 71, 66, 64, "]", "[", 61, 71, 66, 63, "]", "[", 61, 71, 66, 62, "]", "[", 61, 71, 66, 60, "]", "[", 61, 71, 65, 72, "]", "[", 61, 71, 65, 70, "]", "[", 61, 71, 65, 69, "]", "[", 61, 71, 65, 68, "]", "[", 61, 71, 65, 67, "]", "[", 61, 71, 65, 66, "]", "[", 61, 71, 65, 64, "]", "[", 61, 71, 65, 63, "]", "[", 61, 71, 65, 62, "]", "[", 61, 71, 65, 60, "]", "[", 61, 71, 64, 72, "]", "[", 61, 71, 64, 70, "]", "[", 61, 71, 64, 69, "]", "[", 61, 71, 64, 68, "]", "[", 61, 71, 64, 67, "]", "[", 61, 71, 64, 66, "]", "[", 61, 71, 64, 65, "]", "[", 61, 71, 64, 63, "]", "[", 61, 71, 64, 62, "]", "[", 61, 71, 64, 60, "]", "[", 61, 71, 63, 72, "]", "[", 61, 71, 63, 70, "]", "[", 61, 71, 63, 69, "]", "[", 61, 71, 63, 68, "]", "[", 61, 71, 63, 67, "]", "[", 61, 71, 63, 66, "]", "[", 61, 71, 63, 65, "]", "[", 61, 71, 63, 64, "]", "[", 61, 71, 63, 62, "]", "[", 61, 71, 63, 60, "]", "[", 61, 71, 62, 72, "]", "[", 61, 71, 62, 70, "]", "[", 61, 71, 62, 69, "]", "[", 61, 71, 62, 68, "]", "[", 61, 71, 62, 67, "]", "[", 61, 71, 62, 66, "]", "[", 61, 71, 62, 65, "]", "[", 61, 71, 62, 64, "]", "[", 61, 71, 62, 63, "]", "[", 61, 71, 62, 60, "]", "[", 61, 71, 60, 72, "]", "[", 61, 71, 60, 70, "]", "[", 61, 71, 60, 69, "]", "[", 61, 71, 60, 68, "]", "[", 61, 71, 60, 67, "]", "[", 61, 71, 60, 66, "]", "[", 61, 71, 60, 65, "]", "[", 61, 71, 60, 64, "]", "[", 61, 71, 60, 63, "]", "[", 61, 71, 60, 62, "]", "[", 61, 70, 72, 71, "]", "[", 61, 70, 72, 69, "]", "[", 61, 70, 72, 68, "]", "[", 61, 70, 72, 67, "]", "[", 61, 70, 72, 66, "]", "[", 61, 70, 72, 65, "]", "[", 61, 70, 72, 64, "]", "[", 61, 70, 72, 63, "]", "[", 61, 70, 72, 62, "]", "[", 61, 70, 72, 60, "]", "[", 61, 70, 71, 72, "]", "[", 61, 70, 71, 69, "]", "[", 61, 70, 71, 68, "]", "[", 61, 70, 71, 67, "]", "[", 61, 70, 71, 66, "]", "[", 61, 70, 71, 65, "]", "[", 61, 70, 71, 64, "]", "[", 61, 70, 71, 63, "]", "[", 61, 70, 71, 62, "]", "[", 61, 70, 71, 60, "]", "[", 61, 70, 69, 72, "]", "[", 61, 70, 69, 71, "]", "[", 61, 70, 69, 68, "]", "[", 61, 70, 69, 67, "]", "[", 61, 70, 69, 66, "]", "[", 61, 70, 69, 65, "]", "[", 61, 70, 69, 64, "]", "[", 61, 70, 69, 63, "]", "[", 61, 70, 69, 62, "]", "[", 61, 70, 69, 60, "]", "[", 61, 70, 68, 72, "]", "[", 61, 70, 68, 71, "]", "[", 61, 70, 68, 69, "]", "[", 61, 70, 68, 67, "]", "[", 61, 70, 68, 66, "]", "[", 61, 70, 68, 65, "]", "[", 61, 70, 68, 64, "]", "[", 61, 70, 68, 63, "]", "[", 61, 70, 68, 62, "]", "[", 61, 70, 68, 60, "]", "[", 61, 70, 67, 72, "]", "[", 61, 70, 67, 71, "]", "[", 61, 70, 67, 69, "]", "[", 61, 70, 67, 68, "]", "[", 61, 70, 67, 66, "]", "[", 61, 70, 67, 65, "]", "[", 61, 70, 67, 64, "]", "[", 61, 70, 67, 63, "]", "[", 61, 70, 67, 62, "]", "[", 61, 70, 67, 60, "]", "[", 61, 70, 66, 72, "]", "[", 61, 70, 66, 71, "]", "[", 61, 70, 66, 69, "]", "[", 61, 70, 66, 68, "]", "[", 61, 70, 66, 67, "]", "[", 61, 70, 66, 65, "]", "[", 61, 70, 66, 64, "]", "[", 61, 70, 66, 63, "]", "[", 61, 70, 66, 62, "]", "[", 61, 70, 66, 60, "]", "[", 61, 70, 65, 72, "]", "[", 61, 70, 65, 71, "]", "[", 61, 70, 65, 69, "]", "[", 61, 70, 65, 68, "]", "[", 61, 70, 65, 67, "]", "[", 61, 70, 65, 66, "]", "[", 61, 70, 65, 64, "]", "[", 61, 70, 65, 63, "]", "[", 61, 70, 65, 62, "]", "[", 61, 70, 65, 60, "]", "[", 61, 70, 64, 72, "]", "[", 61, 70, 64, 71, "]", "[", 61, 70, 64, 69, "]", "[", 61, 70, 64, 68, "]", "[", 61, 70, 64, 67, "]", "[", 61, 70, 64, 66, "]", "[", 61, 70, 64, 65, "]", "[", 61, 70, 64, 63, "]", "[", 61, 70, 64, 62, "]", "[", 61, 70, 64, 60, "]", "[", 61, 70, 63, 72, "]", "[", 61, 70, 63, 71, "]", "[", 61, 70, 63, 69, "]", "[", 61, 70, 63, 68, "]", "[", 61, 70, 63, 67, "]", "[", 61, 70, 63, 66, "]", "[", 61, 70, 63, 65, "]", "[", 61, 70, 63, 64, "]", "[", 61, 70, 63, 62, "]", "[", 61, 70, 63, 60, "]", "[", 61, 70, 62, 72, "]", "[", 61, 70, 62, 71, "]", "[", 61, 70, 62, 69, "]", "[", 61, 70, 62, 68, "]", "[", 61, 70, 62, 67, "]", "[", 61, 70, 62, 66, "]", "[", 61, 70, 62, 65, "]", "[", 61, 70, 62, 64, "]", "[", 61, 70, 62, 63, "]", "[", 61, 70, 62, 60, "]", "[", 61, 70, 60, 72, "]", "[", 61, 70, 60, 71, "]", "[", 61, 70, 60, 69, "]", "[", 61, 70, 60, 68, "]", "[", 61, 70, 60, 67, "]", "[", 61, 70, 60, 66, "]", "[", 61, 70, 60, 65, "]", "[", 61, 70, 60, 64, "]", "[", 61, 70, 60, 63, "]", "[", 61, 70, 60, 62, "]", "[", 61, 69, 72, 71, "]", "[", 61, 69, 72, 70, "]", "[", 61, 69, 72, 68, "]", "[", 61, 69, 72, 67, "]", "[", 61, 69, 72, 66, "]", "[", 61, 69, 72, 65, "]", "[", 61, 69, 72, 64, "]", "[", 61, 69, 72, 63, "]", "[", 61, 69, 72, 62, "]", "[", 61, 69, 72, 60, "]", "[", 61, 69, 71, 72, "]", "[", 61, 69, 71, 70, "]", "[", 61, 69, 71, 68, "]", "[", 61, 69, 71, 67, "]", "[", 61, 69, 71, 66, "]", "[", 61, 69, 71, 65, "]", "[", 61, 69, 71, 64, "]", "[", 61, 69, 71, 63, "]", "[", 61, 69, 71, 62, "]", "[", 61, 69, 71, 60, "]", "[", 61, 69, 70, 72, "]", "[", 61, 69, 70, 71, "]", "[", 61, 69, 70, 68, "]", "[", 61, 69, 70, 67, "]", "[", 61, 69, 70, 66, "]", "[", 61, 69, 70, 65, "]", "[", 61, 69, 70, 64, "]", "[", 61, 69, 70, 63, "]", "[", 61, 69, 70, 62, "]", "[", 61, 69, 70, 60, "]", "[", 61, 69, 68, 72, "]", "[", 61, 69, 68, 71, "]", "[", 61, 69, 68, 70, "]", "[", 61, 69, 68, 67, "]", "[", 61, 69, 68, 66, "]", "[", 61, 69, 68, 65, "]", "[", 61, 69, 68, 64, "]", "[", 61, 69, 68, 63, "]", "[", 61, 69, 68, 62, "]", "[", 61, 69, 68, 60, "]", "[", 61, 69, 67, 72, "]", "[", 61, 69, 67, 71, "]", "[", 61, 69, 67, 70, "]", "[", 61, 69, 67, 68, "]", "[", 61, 69, 67, 66, "]", "[", 61, 69, 67, 65, "]", "[", 61, 69, 67, 64, "]", "[", 61, 69, 67, 63, "]", "[", 61, 69, 67, 62, "]", "[", 61, 69, 67, 60, "]", "[", 61, 69, 66, 72, "]", "[", 61, 69, 66, 71, "]", "[", 61, 69, 66, 70, "]", "[", 61, 69, 66, 68, "]", "[", 61, 69, 66, 67, "]", "[", 61, 69, 66, 65, "]", "[", 61, 69, 66, 64, "]", "[", 61, 69, 66, 63, "]", "[", 61, 69, 66, 62, "]", "[", 61, 69, 66, 60, "]", "[", 61, 69, 65, 72, "]", "[", 61, 69, 65, 71, "]", "[", 61, 69, 65, 70, "]", "[", 61, 69, 65, 68, "]", "[", 61, 69, 65, 67, "]", "[", 61, 69, 65, 66, "]", "[", 61, 69, 65, 64, "]", "[", 61, 69, 65, 63, "]", "[", 61, 69, 65, 62, "]", "[", 61, 69, 65, 60, "]", "[", 61, 69, 64, 72, "]", "[", 61, 69, 64, 71, "]", "[", 61, 69, 64, 70, "]", "[", 61, 69, 64, 68, "]", "[", 61, 69, 64, 67, "]", "[", 61, 69, 64, 66, "]", "[", 61, 69, 64, 65, "]", "[", 61, 69, 64, 63, "]", "[", 61, 69, 64, 62, "]", "[", 61, 69, 64, 60, "]", "[", 61, 69, 63, 72, "]", "[", 61, 69, 63, 71, "]", "[", 61, 69, 63, 70, "]", "[", 61, 69, 63, 68, "]", "[", 61, 69, 63, 67, "]", "[", 61, 69, 63, 66, "]", "[", 61, 69, 63, 65, "]", "[", 61, 69, 63, 64, "]", "[", 61, 69, 63, 62, "]", "[", 61, 69, 63, 60, "]", "[", 61, 69, 62, 72, "]", "[", 61, 69, 62, 71, "]", "[", 61, 69, 62, 70, "]", "[", 61, 69, 62, 68, "]", "[", 61, 69, 62, 67, "]", "[", 61, 69, 62, 66, "]", "[", 61, 69, 62, 65, "]", "[", 61, 69, 62, 64, "]", "[", 61, 69, 62, 63, "]", "[", 61, 69, 62, 60, "]", "[", 61, 69, 60, 72, "]", "[", 61, 69, 60, 71, "]", "[", 61, 69, 60, 70, "]", "[", 61, 69, 60, 68, "]", "[", 61, 69, 60, 67, "]", "[", 61, 69, 60, 66, "]", "[", 61, 69, 60, 65, "]", "[", 61, 69, 60, 64, "]", "[", 61, 69, 60, 63, "]", "[", 61, 69, 60, 62, "]", "[", 61, 68, 72, 71, "]", "[", 61, 68, 72, 70, "]", "[", 61, 68, 72, 69, "]", "[", 61, 68, 72, 67, "]", "[", 61, 68, 72, 66, "]", "[", 61, 68, 72, 65, "]", "[", 61, 68, 72, 64, "]", "[", 61, 68, 72, 63, "]", "[", 61, 68, 72, 62, "]", "[", 61, 68, 72, 60, "]", "[", 61, 68, 71, 72, "]", "[", 61, 68, 71, 70, "]", "[", 61, 68, 71, 69, "]", "[", 61, 68, 71, 67, "]", "[", 61, 68, 71, 66, "]", "[", 61, 68, 71, 65, "]", "[", 61, 68, 71, 64, "]", "[", 61, 68, 71, 63, "]", "[", 61, 68, 71, 62, "]", "[", 61, 68, 71, 60, "]", "[", 61, 68, 70, 72, "]", "[", 61, 68, 70, 71, "]", "[", 61, 68, 70, 69, "]", "[", 61, 68, 70, 67, "]", "[", 61, 68, 70, 66, "]", "[", 61, 68, 70, 65, "]", "[", 61, 68, 70, 64, "]", "[", 61, 68, 70, 63, "]", "[", 61, 68, 70, 62, "]", "[", 61, 68, 70, 60, "]", "[", 61, 68, 69, 72, "]", "[", 61, 68, 69, 71, "]", "[", 61, 68, 69, 70, "]", "[", 61, 68, 69, 67, "]", "[", 61, 68, 69, 66, "]", "[", 61, 68, 69, 65, "]", "[", 61, 68, 69, 64, "]", "[", 61, 68, 69, 63, "]", "[", 61, 68, 69, 62, "]", "[", 61, 68, 69, 60, "]", "[", 61, 68, 67, 72, "]", "[", 61, 68, 67, 71, "]", "[", 61, 68, 67, 70, "]", "[", 61, 68, 67, 69, "]", "[", 61, 68, 67, 66, "]", "[", 61, 68, 67, 65, "]", "[", 61, 68, 67, 64, "]", "[", 61, 68, 67, 63, "]", "[", 61, 68, 67, 62, "]", "[", 61, 68, 67, 60, "]", "[", 61, 68, 66, 72, "]", "[", 61, 68, 66, 71, "]", "[", 61, 68, 66, 70, "]", "[", 61, 68, 66, 69, "]", "[", 61, 68, 66, 67, "]", "[", 61, 68, 66, 65, "]", "[", 61, 68, 66, 64, "]", "[", 61, 68, 66, 63, "]", "[", 61, 68, 66 ],
													"reg_data_0000000022" : [ 62, "]", "[", 61, 68, 66, 60, "]", "[", 61, 68, 65, 72, "]", "[", 61, 68, 65, 71, "]", "[", 61, 68, 65, 70, "]", "[", 61, 68, 65, 69, "]", "[", 61, 68, 65, 67, "]", "[", 61, 68, 65, 66, "]", "[", 61, 68, 65, 64, "]", "[", 61, 68, 65, 63, "]", "[", 61, 68, 65, 62, "]", "[", 61, 68, 65, 60, "]", "[", 61, 68, 64, 72, "]", "[", 61, 68, 64, 71, "]", "[", 61, 68, 64, 70, "]", "[", 61, 68, 64, 69, "]", "[", 61, 68, 64, 67, "]", "[", 61, 68, 64, 66, "]", "[", 61, 68, 64, 65, "]", "[", 61, 68, 64, 63, "]", "[", 61, 68, 64, 62, "]", "[", 61, 68, 64, 60, "]", "[", 61, 68, 63, 72, "]", "[", 61, 68, 63, 71, "]", "[", 61, 68, 63, 70, "]", "[", 61, 68, 63, 69, "]", "[", 61, 68, 63, 67, "]", "[", 61, 68, 63, 66, "]", "[", 61, 68, 63, 65, "]", "[", 61, 68, 63, 64, "]", "[", 61, 68, 63, 62, "]", "[", 61, 68, 63, 60, "]", "[", 61, 68, 62, 72, "]", "[", 61, 68, 62, 71, "]", "[", 61, 68, 62, 70, "]", "[", 61, 68, 62, 69, "]", "[", 61, 68, 62, 67, "]", "[", 61, 68, 62, 66, "]", "[", 61, 68, 62, 65, "]", "[", 61, 68, 62, 64, "]", "[", 61, 68, 62, 63, "]", "[", 61, 68, 62, 60, "]", "[", 61, 68, 60, 72, "]", "[", 61, 68, 60, 71, "]", "[", 61, 68, 60, 70, "]", "[", 61, 68, 60, 69, "]", "[", 61, 68, 60, 67, "]", "[", 61, 68, 60, 66, "]", "[", 61, 68, 60, 65, "]", "[", 61, 68, 60, 64, "]", "[", 61, 68, 60, 63, "]", "[", 61, 68, 60, 62, "]", "[", 61, 67, 72, 71, "]", "[", 61, 67, 72, 70, "]", "[", 61, 67, 72, 69, "]", "[", 61, 67, 72, 68, "]", "[", 61, 67, 72, 66, "]", "[", 61, 67, 72, 65, "]", "[", 61, 67, 72, 64, "]", "[", 61, 67, 72, 63, "]", "[", 61, 67, 72, 62, "]", "[", 61, 67, 72, 60, "]", "[", 61, 67, 71, 72, "]", "[", 61, 67, 71, 70, "]", "[", 61, 67, 71, 69, "]", "[", 61, 67, 71, 68, "]", "[", 61, 67, 71, 66, "]", "[", 61, 67, 71, 65, "]", "[", 61, 67, 71, 64, "]", "[", 61, 67, 71, 63, "]", "[", 61, 67, 71, 62, "]", "[", 61, 67, 71, 60, "]", "[", 61, 67, 70, 72, "]", "[", 61, 67, 70, 71, "]", "[", 61, 67, 70, 69, "]", "[", 61, 67, 70, 68, "]", "[", 61, 67, 70, 66, "]", "[", 61, 67, 70, 65, "]", "[", 61, 67, 70, 64, "]", "[", 61, 67, 70, 63, "]", "[", 61, 67, 70, 62, "]", "[", 61, 67, 70, 60, "]", "[", 61, 67, 69, 72, "]", "[", 61, 67, 69, 71, "]", "[", 61, 67, 69, 70, "]", "[", 61, 67, 69, 68, "]", "[", 61, 67, 69, 66, "]", "[", 61, 67, 69, 65, "]", "[", 61, 67, 69, 64, "]", "[", 61, 67, 69, 63, "]", "[", 61, 67, 69, 62, "]", "[", 61, 67, 69, 60, "]", "[", 61, 67, 68, 72, "]", "[", 61, 67, 68, 71, "]", "[", 61, 67, 68, 70, "]", "[", 61, 67, 68, 69, "]", "[", 61, 67, 68, 66, "]", "[", 61, 67, 68, 65, "]", "[", 61, 67, 68, 64, "]", "[", 61, 67, 68, 63, "]", "[", 61, 67, 68, 62, "]", "[", 61, 67, 68, 60, "]", "[", 61, 67, 66, 72, "]", "[", 61, 67, 66, 71, "]", "[", 61, 67, 66, 70, "]", "[", 61, 67, 66, 69, "]", "[", 61, 67, 66, 68, "]", "[", 61, 67, 66, 65, "]", "[", 61, 67, 66, 64, "]", "[", 61, 67, 66, 63, "]", "[", 61, 67, 66, 62, "]", "[", 61, 67, 66, 60, "]", "[", 61, 67, 65, 72, "]", "[", 61, 67, 65, 71, "]", "[", 61, 67, 65, 70, "]", "[", 61, 67, 65, 69, "]", "[", 61, 67, 65, 68, "]", "[", 61, 67, 65, 66, "]", "[", 61, 67, 65, 64, "]", "[", 61, 67, 65, 63, "]", "[", 61, 67, 65, 62, "]", "[", 61, 67, 65, 60, "]", "[", 61, 67, 64, 72, "]", "[", 61, 67, 64, 71, "]", "[", 61, 67, 64, 70, "]", "[", 61, 67, 64, 69, "]", "[", 61, 67, 64, 68, "]", "[", 61, 67, 64, 66, "]", "[", 61, 67, 64, 65, "]", "[", 61, 67, 64, 63, "]", "[", 61, 67, 64, 62, "]", "[", 61, 67, 64, 60, "]", "[", 61, 67, 63, 72, "]", "[", 61, 67, 63, 71, "]", "[", 61, 67, 63, 70, "]", "[", 61, 67, 63, 69, "]", "[", 61, 67, 63, 68, "]", "[", 61, 67, 63, 66, "]", "[", 61, 67, 63, 65, "]", "[", 61, 67, 63, 64, "]", "[", 61, 67, 63, 62, "]", "[", 61, 67, 63, 60, "]", "[", 61, 67, 62, 72, "]", "[", 61, 67, 62, 71, "]", "[", 61, 67, 62, 70, "]", "[", 61, 67, 62, 69, "]", "[", 61, 67, 62, 68, "]", "[", 61, 67, 62, 66, "]", "[", 61, 67, 62, 65, "]", "[", 61, 67, 62, 64, "]", "[", 61, 67, 62, 63, "]", "[", 61, 67, 62, 60, "]", "[", 61, 67, 60, 72, "]", "[", 61, 67, 60, 71, "]", "[", 61, 67, 60, 70, "]", "[", 61, 67, 60, 69, "]", "[", 61, 67, 60, 68, "]", "[", 61, 67, 60, 66, "]", "[", 61, 67, 60, 65, "]", "[", 61, 67, 60, 64, "]", "[", 61, 67, 60, 63, "]", "[", 61, 67, 60, 62, "]", "[", 61, 66, 72, 71, "]", "[", 61, 66, 72, 70, "]", "[", 61, 66, 72, 69, "]", "[", 61, 66, 72, 68, "]", "[", 61, 66, 72, 67, "]", "[", 61, 66, 72, 65, "]", "[", 61, 66, 72, 64, "]", "[", 61, 66, 72, 63, "]", "[", 61, 66, 72, 62, "]", "[", 61, 66, 72, 60, "]", "[", 61, 66, 71, 72, "]", "[", 61, 66, 71, 70, "]", "[", 61, 66, 71, 69, "]", "[", 61, 66, 71, 68, "]", "[", 61, 66, 71, 67, "]", "[", 61, 66, 71, 65, "]", "[", 61, 66, 71, 64, "]", "[", 61, 66, 71, 63, "]", "[", 61, 66, 71, 62, "]", "[", 61, 66, 71, 60, "]", "[", 61, 66, 70, 72, "]", "[", 61, 66, 70, 71, "]", "[", 61, 66, 70, 69, "]", "[", 61, 66, 70, 68, "]", "[", 61, 66, 70, 67, "]", "[", 61, 66, 70, 65, "]", "[", 61, 66, 70, 64, "]", "[", 61, 66, 70, 63, "]", "[", 61, 66, 70, 62, "]", "[", 61, 66, 70, 60, "]", "[", 61, 66, 69, 72, "]", "[", 61, 66, 69, 71, "]", "[", 61, 66, 69, 70, "]", "[", 61, 66, 69, 68, "]", "[", 61, 66, 69, 67, "]", "[", 61, 66, 69, 65, "]", "[", 61, 66, 69, 64, "]", "[", 61, 66, 69, 63, "]", "[", 61, 66, 69, 62, "]", "[", 61, 66, 69, 60, "]", "[", 61, 66, 68, 72, "]", "[", 61, 66, 68, 71, "]", "[", 61, 66, 68, 70, "]", "[", 61, 66, 68, 69, "]", "[", 61, 66, 68, 67, "]", "[", 61, 66, 68, 65, "]", "[", 61, 66, 68, 64, "]", "[", 61, 66, 68, 63, "]", "[", 61, 66, 68, 62, "]", "[", 61, 66, 68, 60, "]", "[", 61, 66, 67, 72, "]", "[", 61, 66, 67, 71, "]", "[", 61, 66, 67, 70, "]", "[", 61, 66, 67, 69, "]", "[", 61, 66, 67, 68, "]", "[", 61, 66, 67, 65, "]", "[", 61, 66, 67, 64, "]", "[", 61, 66, 67, 63, "]", "[", 61, 66, 67, 62, "]", "[", 61, 66, 67, 60, "]", "[", 61, 66, 65, 72, "]", "[", 61, 66, 65, 71, "]", "[", 61, 66, 65, 70, "]", "[", 61, 66, 65, 69, "]", "[", 61, 66, 65, 68, "]", "[", 61, 66, 65, 67, "]", "[", 61, 66, 65, 64, "]", "[", 61, 66, 65, 63, "]", "[", 61, 66, 65, 62, "]", "[", 61, 66, 65, 60, "]", "[", 61, 66, 64, 72, "]", "[", 61, 66, 64, 71, "]", "[", 61, 66, 64, 70, "]", "[", 61, 66, 64, 69, "]", "[", 61, 66, 64, 68, "]", "[", 61, 66, 64, 67, "]", "[", 61, 66, 64, 65, "]", "[", 61, 66, 64, 63, "]", "[", 61, 66, 64, 62, "]", "[", 61, 66, 64, 60, "]", "[", 61, 66, 63, 72, "]", "[", 61, 66, 63, 71, "]", "[", 61, 66, 63, 70, "]", "[", 61, 66, 63, 69, "]", "[", 61, 66, 63, 68, "]", "[", 61, 66, 63, 67, "]", "[", 61, 66, 63, 65, "]", "[", 61, 66, 63, 64, "]", "[", 61, 66, 63, 62, "]", "[", 61, 66, 63, 60, "]", "[", 61, 66, 62, 72, "]", "[", 61, 66, 62, 71, "]", "[", 61, 66, 62, 70, "]", "[", 61, 66, 62, 69, "]", "[", 61, 66, 62, 68, "]", "[", 61, 66, 62, 67, "]", "[", 61, 66, 62, 65, "]", "[", 61, 66, 62, 64, "]", "[", 61, 66, 62, 63, "]", "[", 61, 66, 62, 60, "]", "[", 61, 66, 60, 72, "]", "[", 61, 66, 60, 71, "]", "[", 61, 66, 60, 70, "]", "[", 61, 66, 60, 69, "]", "[", 61, 66, 60, 68, "]", "[", 61, 66, 60, 67, "]", "[", 61, 66, 60, 65, "]", "[", 61, 66, 60, 64, "]", "[", 61, 66, 60, 63, "]", "[", 61, 66, 60, 62, "]", "[", 61, 65, 72, 71, "]", "[", 61, 65, 72, 70, "]", "[", 61, 65, 72, 69, "]", "[", 61, 65, 72, 68, "]", "[", 61, 65, 72, 67, "]", "[", 61, 65, 72, 66, "]", "[", 61, 65, 72, 64, "]", "[", 61, 65, 72, 63, "]", "[", 61, 65, 72, 62, "]", "[", 61, 65, 72, 60, "]", "[", 61, 65, 71, 72, "]", "[", 61, 65, 71, 70, "]", "[", 61, 65, 71, 69, "]", "[", 61, 65, 71, 68, "]", "[", 61, 65, 71, 67, "]", "[", 61, 65, 71, 66, "]", "[", 61, 65, 71, 64, "]", "[", 61, 65, 71, 63, "]", "[", 61, 65, 71, 62, "]", "[", 61, 65, 71, 60, "]", "[", 61, 65, 70, 72, "]", "[", 61, 65, 70, 71, "]", "[", 61, 65, 70, 69, "]", "[", 61, 65, 70, 68, "]", "[", 61, 65, 70, 67, "]", "[", 61, 65, 70, 66, "]", "[", 61, 65, 70, 64, "]", "[", 61, 65, 70, 63, "]", "[", 61, 65, 70, 62, "]", "[", 61, 65, 70, 60, "]", "[", 61, 65, 69, 72, "]", "[", 61, 65, 69, 71, "]", "[", 61, 65, 69, 70, "]", "[", 61, 65, 69, 68, "]", "[", 61, 65, 69, 67, "]", "[", 61, 65, 69, 66, "]", "[", 61, 65, 69, 64, "]", "[", 61, 65, 69, 63, "]", "[", 61, 65, 69, 62, "]", "[", 61, 65, 69, 60, "]", "[", 61, 65, 68, 72, "]", "[", 61, 65, 68, 71, "]", "[", 61, 65, 68, 70, "]", "[", 61, 65, 68, 69, "]", "[", 61, 65, 68, 67, "]", "[", 61, 65, 68, 66, "]", "[", 61, 65, 68, 64, "]", "[", 61, 65, 68, 63, "]", "[", 61, 65, 68, 62, "]", "[", 61, 65, 68, 60, "]", "[", 61, 65, 67, 72, "]", "[", 61, 65, 67, 71, "]", "[", 61, 65, 67, 70, "]", "[", 61, 65, 67, 69, "]", "[", 61, 65, 67, 68, "]", "[", 61, 65, 67, 66, "]", "[", 61, 65, 67, 64, "]", "[", 61, 65, 67, 63, "]", "[", 61, 65, 67, 62, "]", "[", 61, 65, 67, 60, "]", "[", 61, 65, 66, 72, "]", "[", 61, 65, 66, 71, "]", "[", 61, 65, 66, 70, "]", "[", 61, 65, 66, 69, "]", "[", 61, 65, 66, 68, "]", "[", 61, 65, 66, 67, "]", "[", 61, 65, 66, 64, "]", "[", 61, 65, 66, 63, "]", "[", 61, 65, 66, 62, "]", "[", 61, 65, 66, 60, "]", "[", 61, 65, 64, 72, "]", "[", 61, 65, 64, 71, "]", "[", 61, 65, 64, 70, "]", "[", 61, 65, 64, 69, "]", "[", 61, 65, 64, 68, "]", "[", 61, 65, 64, 67, "]", "[", 61, 65, 64, 66, "]", "[", 61, 65, 64, 63, "]", "[", 61, 65, 64, 62, "]", "[", 61, 65, 64, 60, "]", "[", 61, 65, 63, 72, "]", "[", 61, 65, 63, 71, "]", "[", 61, 65, 63, 70, "]", "[", 61, 65, 63, 69, "]", "[", 61, 65, 63, 68, "]", "[", 61, 65, 63, 67, "]", "[", 61, 65, 63, 66, "]", "[", 61, 65, 63, 64, "]", "[", 61, 65, 63, 62, "]", "[", 61, 65, 63, 60, "]", "[", 61, 65, 62, 72, "]", "[", 61, 65, 62, 71, "]", "[", 61, 65, 62, 70, "]", "[", 61, 65, 62, 69, "]", "[", 61, 65, 62, 68, "]", "[", 61, 65, 62, 67, "]", "[", 61, 65, 62, 66, "]", "[", 61, 65, 62, 64, "]", "[", 61, 65, 62, 63, "]", "[", 61, 65, 62, 60, "]", "[", 61, 65, 60, 72, "]", "[", 61, 65, 60, 71, "]", "[", 61, 65, 60, 70, "]", "[", 61, 65, 60, 69, "]", "[", 61, 65, 60, 68, "]", "[", 61, 65, 60, 67, "]", "[", 61, 65, 60, 66, "]", "[", 61, 65, 60, 64, "]", "[", 61, 65, 60, 63, "]", "[", 61, 65, 60, 62, "]", "[", 61, 64, 72, 71, "]", "[", 61, 64, 72, 70, "]", "[", 61, 64, 72, 69, "]", "[", 61, 64, 72, 68, "]", "[", 61, 64, 72, 67, "]", "[", 61, 64, 72, 66, "]", "[", 61, 64, 72, 65, "]", "[", 61, 64, 72, 63, "]", "[", 61, 64, 72, 62, "]", "[", 61, 64, 72, 60, "]", "[", 61, 64, 71, 72, "]", "[", 61, 64, 71, 70, "]", "[", 61, 64, 71, 69, "]", "[", 61, 64, 71, 68, "]", "[", 61, 64, 71, 67, "]", "[", 61, 64, 71, 66, "]", "[", 61, 64, 71, 65, "]", "[", 61, 64, 71, 63, "]", "[", 61, 64, 71, 62, "]", "[", 61, 64, 71, 60, "]", "[", 61, 64, 70, 72, "]", "[", 61, 64, 70, 71, "]", "[", 61, 64, 70, 69, "]", "[", 61, 64, 70, 68, "]", "[", 61, 64, 70, 67, "]", "[", 61, 64, 70, 66, "]", "[", 61, 64, 70, 65, "]", "[", 61, 64, 70, 63, "]", "[", 61, 64, 70, 62, "]", "[", 61, 64, 70, 60, "]", "[", 61, 64, 69, 72, "]", "[", 61, 64, 69, 71, "]", "[", 61, 64, 69, 70, "]", "[", 61, 64, 69, 68, "]", "[", 61, 64, 69, 67, "]", "[", 61, 64, 69, 66, "]", "[", 61, 64, 69, 65, "]", "[", 61, 64, 69, 63, "]", "[", 61, 64, 69, 62, "]", "[", 61, 64, 69, 60, "]", "[", 61, 64, 68, 72, "]", "[", 61, 64, 68, 71, "]", "[", 61, 64, 68, 70, "]", "[", 61, 64, 68, 69, "]", "[", 61, 64, 68, 67, "]", "[", 61, 64, 68, 66, "]", "[", 61, 64, 68, 65, "]", "[", 61, 64, 68, 63, "]", "[", 61, 64, 68, 62, "]", "[", 61, 64, 68, 60, "]", "[", 61, 64, 67, 72, "]", "[", 61, 64, 67, 71, "]", "[", 61, 64, 67, 70, "]", "[", 61, 64, 67, 69, "]", "[", 61, 64, 67, 68, "]", "[", 61, 64, 67, 66, "]", "[", 61, 64, 67, 65, "]", "[", 61, 64, 67, 63, "]", "[", 61, 64, 67, 62, "]", "[", 61, 64, 67, 60, "]", "[", 61, 64, 66, 72, "]", "[", 61, 64, 66, 71, "]", "[", 61, 64, 66, 70, "]", "[", 61, 64, 66, 69, "]", "[", 61, 64, 66, 68, "]", "[", 61, 64, 66, 67, "]", "[", 61, 64, 66, 65, "]", "[", 61, 64, 66, 63, "]", "[", 61, 64, 66, 62, "]", "[", 61, 64, 66, 60, "]", "[", 61, 64, 65, 72, "]", "[", 61, 64, 65, 71, "]", "[", 61, 64, 65, 70, "]", "[", 61, 64, 65, 69, "]", "[", 61, 64, 65, 68, "]", "[", 61, 64, 65, 67, "]", "[", 61, 64, 65, 66, "]", "[", 61, 64, 65, 63, "]", "[", 61, 64, 65, 62, "]", "[", 61, 64, 65, 60, "]", "[", 61, 64, 63, 72, "]", "[", 61, 64, 63, 71, "]", "[", 61, 64, 63, 70, "]", "[", 61, 64, 63, 69, "]", "[", 61, 64, 63, 68, "]", "[", 61, 64, 63, 67, "]", "[", 61, 64, 63, 66, "]", "[", 61, 64, 63, 65, "]", "[", 61, 64, 63, 62, "]", "[", 61, 64, 63, 60, "]", "[", 61, 64, 62, 72, "]", "[", 61, 64, 62, 71, "]", "[", 61, 64, 62, 70, "]", "[", 61, 64, 62, 69, "]", "[", 61, 64, 62, 68, "]", "[", 61, 64, 62, 67, "]", "[", 61, 64, 62, 66, "]", "[", 61, 64, 62, 65, "]", "[", 61, 64, 62, 63, "]", "[", 61, 64, 62, 60, "]", "[", 61, 64, 60, 72, "]", "[", 61, 64, 60, 71, "]", "[", 61, 64, 60, 70, "]", "[", 61, 64, 60, 69, "]", "[", 61, 64, 60, 68, "]", "[", 61, 64, 60, 67, "]", "[", 61, 64, 60, 66, "]", "[", 61, 64, 60, 65, "]", "[", 61, 64, 60, 63, "]", "[", 61, 64, 60, 62, "]", "[", 61, 63, 72, 71, "]", "[", 61, 63, 72, 70, "]", "[", 61, 63, 72, 69, "]", "[", 61, 63, 72, 68, "]", "[", 61, 63, 72, 67, "]", "[", 61, 63, 72, 66, "]", "[", 61, 63, 72, 65, "]", "[", 61, 63, 72, 64, "]", "[", 61, 63, 72, 62, "]", "[", 61, 63, 72, 60, "]", "[", 61, 63, 71, 72, "]", "[", 61, 63, 71, 70, "]", "[", 61, 63, 71, 69, "]", "[", 61, 63, 71, 68, "]", "[", 61, 63, 71, 67, "]", "[", 61, 63, 71, 66, "]", "[", 61, 63, 71, 65, "]", "[", 61, 63, 71, 64, "]", "[", 61, 63, 71, 62, "]", "[", 61, 63, 71, 60, "]", "[", 61, 63, 70, 72, "]", "[", 61, 63, 70, 71, "]", "[", 61, 63, 70, 69, "]", "[", 61, 63, 70, 68, "]", "[", 61, 63, 70, 67, "]", "[", 61, 63, 70, 66, "]", "[", 61, 63, 70, 65, "]", "[", 61, 63, 70, 64, "]", "[", 61, 63, 70, 62, "]", "[", 61, 63, 70, 60, "]", "[", 61, 63, 69, 72, "]", "[", 61, 63, 69, 71, "]", "[", 61, 63, 69, 70, "]", "[", 61, 63, 69, 68, "]", "[", 61, 63, 69, 67, "]", "[", 61, 63, 69, 66, "]", "[", 61, 63, 69, 65, "]", "[", 61, 63, 69, 64, "]", "[", 61, 63, 69, 62, "]", "[", 61, 63, 69, 60, "]", "[", 61, 63, 68, 72, "]", "[", 61, 63, 68, 71, "]", "[", 61, 63, 68, 70, "]", "[", 61, 63, 68, 69, "]", "[", 61, 63, 68, 67, "]", "[", 61, 63, 68, 66, "]", "[", 61, 63, 68, 65, "]", "[", 61, 63, 68, 64, "]", "[", 61, 63, 68, 62, "]", "[", 61, 63, 68, 60, "]", "[", 61, 63, 67, 72, "]", "[", 61, 63, 67, 71, "]", "[", 61, 63, 67, 70, "]", "[", 61, 63, 67, 69, "]", "[", 61, 63, 67, 68, "]", "[", 61, 63, 67, 66, "]", "[", 61, 63, 67, 65, "]", "[", 61, 63, 67, 64, "]", "[", 61, 63, 67, 62, "]", "[", 61, 63, 67, 60, "]", "[", 61, 63, 66, 72, "]", "[", 61, 63, 66, 71, "]", "[", 61, 63, 66, 70, "]", "[", 61, 63, 66, 69, "]", "[", 61, 63, 66, 68, "]", "[", 61, 63, 66, 67, "]", "[", 61, 63, 66, 65, "]", "[", 61, 63, 66, 64, "]", "[", 61, 63, 66, 62, "]", "[", 61, 63, 66, 60, "]", "[", 61, 63, 65, 72, "]", "[", 61, 63, 65, 71, "]", "[", 61, 63, 65, 70, "]", "[", 61, 63, 65, 69, "]", "[", 61, 63, 65, 68, "]", "[", 61, 63, 65, 67, "]", "[", 61, 63, 65, 66, "]", "[", 61, 63, 65, 64, "]", "[", 61, 63, 65, 62, "]", "[", 61, 63, 65, 60, "]", "[", 61, 63, 64, 72, "]", "[", 61, 63, 64, 71, "]", "[", 61, 63, 64, 70, "]", "[", 61, 63, 64, 69, "]", "[", 61, 63, 64, 68, "]", "[", 61, 63, 64, 67, "]", "[", 61, 63, 64, 66, "]", "[", 61, 63, 64, 65, "]", "[", 61, 63, 64, 62, "]", "[", 61, 63, 64, 60, "]", "[", 61, 63, 62, 72, "]", "[", 61, 63, 62, 71, "]", "[", 61, 63, 62, 70, "]", "[", 61, 63, 62, 69, "]", "[", 61, 63, 62, 68, "]", "[", 61, 63, 62, 67, "]", "[", 61, 63, 62, 66, "]", "[", 61, 63, 62, 65, "]", "[", 61, 63, 62, 64, "]", "[", 61, 63, 62, 60, "]", "[", 61, 63, 60, 72, "]", "[", 61, 63, 60, 71, "]", "[", 61, 63, 60, 70, "]", "[", 61, 63, 60, 69, "]", "[", 61, 63, 60, 68, "]", "[", 61, 63, 60, 67, "]", "[", 61, 63, 60, 66, "]", "[", 61, 63, 60, 65, "]", "[", 61, 63, 60, 64, "]", "[", 61, 63, 60, 62, "]", "[", 61, 62, 72, 71, "]", "[", 61, 62, 72, 70, "]", "[", 61, 62, 72, 69, "]", "[", 61, 62, 72, 68, "]", "[", 61, 62, 72, 67, "]", "[", 61, 62, 72, 66, "]", "[", 61, 62, 72, 65, "]", "[", 61, 62, 72, 64, "]", "[", 61, 62, 72, 63, "]", "[", 61, 62, 72, 60, "]", "[", 61, 62, 71, 72, "]", "[", 61, 62, 71, 70, "]", "[", 61, 62, 71, 69, "]", "[", 61, 62, 71, 68, "]", "[", 61, 62, 71, 67, "]", "[", 61, 62, 71, 66, "]", "[", 61, 62, 71, 65, "]", "[", 61, 62, 71, 64, "]", "[", 61, 62, 71, 63, "]", "[", 61, 62, 71, 60, "]", "[", 61, 62, 70, 72, "]", "[", 61, 62, 70, 71, "]", "[", 61, 62, 70, 69, "]", "[", 61, 62, 70, 68, "]", "[", 61, 62, 70, 67, "]", "[", 61, 62, 70, 66, "]", "[", 61, 62, 70, 65, "]", "[", 61, 62, 70, 64, "]", "[", 61, 62, 70, 63, "]", "[", 61, 62, 70, 60, "]", "[", 61, 62, 69, 72, "]", "[", 61, 62, 69, 71, "]", "[", 61, 62, 69, 70, "]", "[", 61, 62, 69, 68, "]", "[", 61, 62, 69, 67, "]", "[", 61, 62, 69, 66, "]", "[", 61, 62, 69, 65, "]", "[", 61, 62, 69, 64, "]", "[", 61, 62, 69, 63, "]", "[", 61, 62, 69, 60, "]", "[", 61, 62, 68, 72, "]", "[", 61, 62, 68, 71, "]", "[", 61, 62, 68, 70, "]", "[", 61, 62, 68, 69, "]", "[", 61, 62, 68, 67, "]", "[", 61, 62, 68, 66, "]", "[", 61, 62, 68, 65, "]", "[", 61, 62, 68, 64, "]", "[", 61, 62, 68, 63, "]", "[", 61, 62, 68, 60, "]", "[", 61, 62, 67, 72, "]", "[", 61, 62, 67, 71, "]", "[", 61, 62, 67, 70, "]", "[", 61, 62, 67, 69, "]", "[", 61, 62, 67, 68, "]", "[", 61, 62, 67, 66, "]", "[", 61, 62, 67, 65, "]", "[", 61, 62, 67, 64, "]", "[", 61, 62, 67, 63, "]", "[", 61, 62, 67, 60, "]", "[", 61, 62, 66, 72, "]", "[", 61, 62, 66, 71, "]", "[", 61, 62, 66, 70, "]", "[", 61, 62, 66, 69, "]", "[", 61, 62, 66, 68, "]", "[", 61, 62, 66, 67, "]", "[", 61, 62, 66, 65, "]", "[", 61, 62, 66, 64, "]", "[", 61, 62, 66, 63, "]", "[", 61, 62, 66, 60, "]", "[", 61, 62, 65, 72, "]", "[", 61, 62, 65, 71, "]", "[", 61, 62, 65, 70, "]", "[", 61, 62, 65, 69, "]", "[", 61, 62, 65, 68, "]", "[", 61, 62, 65, 67, "]", "[", 61, 62, 65, 66, "]", "[", 61, 62, 65, 64, "]", "[", 61, 62, 65, 63, "]", "[", 61, 62, 65, 60, "]", "[", 61, 62, 64, 72, "]", "[", 61 ],
													"reg_data_0000000023" : [ 62, 64, 71, "]", "[", 61, 62, 64, 70, "]", "[", 61, 62, 64, 69, "]", "[", 61, 62, 64, 68, "]", "[", 61, 62, 64, 67, "]", "[", 61, 62, 64, 66, "]", "[", 61, 62, 64, 65, "]", "[", 61, 62, 64, 63, "]", "[", 61, 62, 64, 60, "]", "[", 61, 62, 63, 72, "]", "[", 61, 62, 63, 71, "]", "[", 61, 62, 63, 70, "]", "[", 61, 62, 63, 69, "]", "[", 61, 62, 63, 68, "]", "[", 61, 62, 63, 67, "]", "[", 61, 62, 63, 66, "]", "[", 61, 62, 63, 65, "]", "[", 61, 62, 63, 64, "]", "[", 61, 62, 63, 60, "]", "[", 61, 62, 60, 72, "]", "[", 61, 62, 60, 71, "]", "[", 61, 62, 60, 70, "]", "[", 61, 62, 60, 69, "]", "[", 61, 62, 60, 68, "]", "[", 61, 62, 60, 67, "]", "[", 61, 62, 60, 66, "]", "[", 61, 62, 60, 65, "]", "[", 61, 62, 60, 64, "]", "[", 61, 62, 60, 63, "]", "[", 61, 60, 72, 71, "]", "[", 61, 60, 72, 70, "]", "[", 61, 60, 72, 69, "]", "[", 61, 60, 72, 68, "]", "[", 61, 60, 72, 67, "]", "[", 61, 60, 72, 66, "]", "[", 61, 60, 72, 65, "]", "[", 61, 60, 72, 64, "]", "[", 61, 60, 72, 63, "]", "[", 61, 60, 72, 62, "]", "[", 61, 60, 71, 72, "]", "[", 61, 60, 71, 70, "]", "[", 61, 60, 71, 69, "]", "[", 61, 60, 71, 68, "]", "[", 61, 60, 71, 67, "]", "[", 61, 60, 71, 66, "]", "[", 61, 60, 71, 65, "]", "[", 61, 60, 71, 64, "]", "[", 61, 60, 71, 63, "]", "[", 61, 60, 71, 62, "]", "[", 61, 60, 70, 72, "]", "[", 61, 60, 70, 71, "]", "[", 61, 60, 70, 69, "]", "[", 61, 60, 70, 68, "]", "[", 61, 60, 70, 67, "]", "[", 61, 60, 70, 66, "]", "[", 61, 60, 70, 65, "]", "[", 61, 60, 70, 64, "]", "[", 61, 60, 70, 63, "]", "[", 61, 60, 70, 62, "]", "[", 61, 60, 69, 72, "]", "[", 61, 60, 69, 71, "]", "[", 61, 60, 69, 70, "]", "[", 61, 60, 69, 68, "]", "[", 61, 60, 69, 67, "]", "[", 61, 60, 69, 66, "]", "[", 61, 60, 69, 65, "]", "[", 61, 60, 69, 64, "]", "[", 61, 60, 69, 63, "]", "[", 61, 60, 69, 62, "]", "[", 61, 60, 68, 72, "]", "[", 61, 60, 68, 71, "]", "[", 61, 60, 68, 70, "]", "[", 61, 60, 68, 69, "]", "[", 61, 60, 68, 67, "]", "[", 61, 60, 68, 66, "]", "[", 61, 60, 68, 65, "]", "[", 61, 60, 68, 64, "]", "[", 61, 60, 68, 63, "]", "[", 61, 60, 68, 62, "]", "[", 61, 60, 67, 72, "]", "[", 61, 60, 67, 71, "]", "[", 61, 60, 67, 70, "]", "[", 61, 60, 67, 69, "]", "[", 61, 60, 67, 68, "]", "[", 61, 60, 67, 66, "]", "[", 61, 60, 67, 65, "]", "[", 61, 60, 67, 64, "]", "[", 61, 60, 67, 63, "]", "[", 61, 60, 67, 62, "]", "[", 61, 60, 66, 72, "]", "[", 61, 60, 66, 71, "]", "[", 61, 60, 66, 70, "]", "[", 61, 60, 66, 69, "]", "[", 61, 60, 66, 68, "]", "[", 61, 60, 66, 67, "]", "[", 61, 60, 66, 65, "]", "[", 61, 60, 66, 64, "]", "[", 61, 60, 66, 63, "]", "[", 61, 60, 66, 62, "]", "[", 61, 60, 65, 72, "]", "[", 61, 60, 65, 71, "]", "[", 61, 60, 65, 70, "]", "[", 61, 60, 65, 69, "]", "[", 61, 60, 65, 68, "]", "[", 61, 60, 65, 67, "]", "[", 61, 60, 65, 66, "]", "[", 61, 60, 65, 64, "]", "[", 61, 60, 65, 63, "]", "[", 61, 60, 65, 62, "]", "[", 61, 60, 64, 72, "]", "[", 61, 60, 64, 71, "]", "[", 61, 60, 64, 70, "]", "[", 61, 60, 64, 69, "]", "[", 61, 60, 64, 68, "]", "[", 61, 60, 64, 67, "]", "[", 61, 60, 64, 66, "]", "[", 61, 60, 64, 65, "]", "[", 61, 60, 64, 63, "]", "[", 61, 60, 64, 62, "]", "[", 61, 60, 63, 72, "]", "[", 61, 60, 63, 71, "]", "[", 61, 60, 63, 70, "]", "[", 61, 60, 63, 69, "]", "[", 61, 60, 63, 68, "]", "[", 61, 60, 63, 67, "]", "[", 61, 60, 63, 66, "]", "[", 61, 60, 63, 65, "]", "[", 61, 60, 63, 64, "]", "[", 61, 60, 63, 62, "]", "[", 61, 60, 62, 72, "]", "[", 61, 60, 62, 71, "]", "[", 61, 60, 62, 70, "]", "[", 61, 60, 62, 69, "]", "[", 61, 60, 62, 68, "]", "[", 61, 60, 62, 67, "]", "[", 61, 60, 62, 66, "]", "[", 61, 60, 62, 65, "]", "[", 61, 60, 62, 64, "]", "[", 61, 60, 62, 63, "]", "[", 60, 72, 71, 70, "]", "[", 60, 72, 71, 69, "]", "[", 60, 72, 71, 68, "]", "[", 60, 72, 71, 67, "]", "[", 60, 72, 71, 66, "]", "[", 60, 72, 71, 65, "]", "[", 60, 72, 71, 64, "]", "[", 60, 72, 71, 63, "]", "[", 60, 72, 71, 62, "]", "[", 60, 72, 71, 61, "]", "[", 60, 72, 70, 71, "]", "[", 60, 72, 70, 69, "]", "[", 60, 72, 70, 68, "]", "[", 60, 72, 70, 67, "]", "[", 60, 72, 70, 66, "]", "[", 60, 72, 70, 65, "]", "[", 60, 72, 70, 64, "]", "[", 60, 72, 70, 63, "]", "[", 60, 72, 70, 62, "]", "[", 60, 72, 70, 61, "]", "[", 60, 72, 69, 71, "]", "[", 60, 72, 69, 70, "]", "[", 60, 72, 69, 68, "]", "[", 60, 72, 69, 67, "]", "[", 60, 72, 69, 66, "]", "[", 60, 72, 69, 65, "]", "[", 60, 72, 69, 64, "]", "[", 60, 72, 69, 63, "]", "[", 60, 72, 69, 62, "]", "[", 60, 72, 69, 61, "]", "[", 60, 72, 68, 71, "]", "[", 60, 72, 68, 70, "]", "[", 60, 72, 68, 69, "]", "[", 60, 72, 68, 67, "]", "[", 60, 72, 68, 66, "]", "[", 60, 72, 68, 65, "]", "[", 60, 72, 68, 64, "]", "[", 60, 72, 68, 63, "]", "[", 60, 72, 68, 62, "]", "[", 60, 72, 68, 61, "]", "[", 60, 72, 67, 71, "]", "[", 60, 72, 67, 70, "]", "[", 60, 72, 67, 69, "]", "[", 60, 72, 67, 68, "]", "[", 60, 72, 67, 66, "]", "[", 60, 72, 67, 65, "]", "[", 60, 72, 67, 64, "]", "[", 60, 72, 67, 63, "]", "[", 60, 72, 67, 62, "]", "[", 60, 72, 67, 61, "]", "[", 60, 72, 66, 71, "]", "[", 60, 72, 66, 70, "]", "[", 60, 72, 66, 69, "]", "[", 60, 72, 66, 68, "]", "[", 60, 72, 66, 67, "]", "[", 60, 72, 66, 65, "]", "[", 60, 72, 66, 64, "]", "[", 60, 72, 66, 63, "]", "[", 60, 72, 66, 62, "]", "[", 60, 72, 66, 61, "]", "[", 60, 72, 65, 71, "]", "[", 60, 72, 65, 70, "]", "[", 60, 72, 65, 69, "]", "[", 60, 72, 65, 68, "]", "[", 60, 72, 65, 67, "]", "[", 60, 72, 65, 66, "]", "[", 60, 72, 65, 64, "]", "[", 60, 72, 65, 63, "]", "[", 60, 72, 65, 62, "]", "[", 60, 72, 65, 61, "]", "[", 60, 72, 64, 71, "]", "[", 60, 72, 64, 70, "]", "[", 60, 72, 64, 69, "]", "[", 60, 72, 64, 68, "]", "[", 60, 72, 64, 67, "]", "[", 60, 72, 64, 66, "]", "[", 60, 72, 64, 65, "]", "[", 60, 72, 64, 63, "]", "[", 60, 72, 64, 62, "]", "[", 60, 72, 64, 61, "]", "[", 60, 72, 63, 71, "]", "[", 60, 72, 63, 70, "]", "[", 60, 72, 63, 69, "]", "[", 60, 72, 63, 68, "]", "[", 60, 72, 63, 67, "]", "[", 60, 72, 63, 66, "]", "[", 60, 72, 63, 65, "]", "[", 60, 72, 63, 64, "]", "[", 60, 72, 63, 62, "]", "[", 60, 72, 63, 61, "]", "[", 60, 72, 62, 71, "]", "[", 60, 72, 62, 70, "]", "[", 60, 72, 62, 69, "]", "[", 60, 72, 62, 68, "]", "[", 60, 72, 62, 67, "]", "[", 60, 72, 62, 66, "]", "[", 60, 72, 62, 65, "]", "[", 60, 72, 62, 64, "]", "[", 60, 72, 62, 63, "]", "[", 60, 72, 62, 61, "]", "[", 60, 72, 61, 71, "]", "[", 60, 72, 61, 70, "]", "[", 60, 72, 61, 69, "]", "[", 60, 72, 61, 68, "]", "[", 60, 72, 61, 67, "]", "[", 60, 72, 61, 66, "]", "[", 60, 72, 61, 65, "]", "[", 60, 72, 61, 64, "]", "[", 60, 72, 61, 63, "]", "[", 60, 72, 61, 62, "]", "[", 60, 71, 72, 70, "]", "[", 60, 71, 72, 69, "]", "[", 60, 71, 72, 68, "]", "[", 60, 71, 72, 67, "]", "[", 60, 71, 72, 66, "]", "[", 60, 71, 72, 65, "]", "[", 60, 71, 72, 64, "]", "[", 60, 71, 72, 63, "]", "[", 60, 71, 72, 62, "]", "[", 60, 71, 72, 61, "]", "[", 60, 71, 70, 72, "]", "[", 60, 71, 70, 69, "]", "[", 60, 71, 70, 68, "]", "[", 60, 71, 70, 67, "]", "[", 60, 71, 70, 66, "]", "[", 60, 71, 70, 65, "]", "[", 60, 71, 70, 64, "]", "[", 60, 71, 70, 63, "]", "[", 60, 71, 70, 62, "]", "[", 60, 71, 70, 61, "]", "[", 60, 71, 69, 72, "]", "[", 60, 71, 69, 70, "]", "[", 60, 71, 69, 68, "]", "[", 60, 71, 69, 67, "]", "[", 60, 71, 69, 66, "]", "[", 60, 71, 69, 65, "]", "[", 60, 71, 69, 64, "]", "[", 60, 71, 69, 63, "]", "[", 60, 71, 69, 62, "]", "[", 60, 71, 69, 61, "]", "[", 60, 71, 68, 72, "]", "[", 60, 71, 68, 70, "]", "[", 60, 71, 68, 69, "]", "[", 60, 71, 68, 67, "]", "[", 60, 71, 68, 66, "]", "[", 60, 71, 68, 65, "]", "[", 60, 71, 68, 64, "]", "[", 60, 71, 68, 63, "]", "[", 60, 71, 68, 62, "]", "[", 60, 71, 68, 61, "]", "[", 60, 71, 67, 72, "]", "[", 60, 71, 67, 70, "]", "[", 60, 71, 67, 69, "]", "[", 60, 71, 67, 68, "]", "[", 60, 71, 67, 66, "]", "[", 60, 71, 67, 65, "]", "[", 60, 71, 67, 64, "]", "[", 60, 71, 67, 63, "]", "[", 60, 71, 67, 62, "]", "[", 60, 71, 67, 61, "]", "[", 60, 71, 66, 72, "]", "[", 60, 71, 66, 70, "]", "[", 60, 71, 66, 69, "]", "[", 60, 71, 66, 68, "]", "[", 60, 71, 66, 67, "]", "[", 60, 71, 66, 65, "]", "[", 60, 71, 66, 64, "]", "[", 60, 71, 66, 63, "]", "[", 60, 71, 66, 62, "]", "[", 60, 71, 66, 61, "]", "[", 60, 71, 65, 72, "]", "[", 60, 71, 65, 70, "]", "[", 60, 71, 65, 69, "]", "[", 60, 71, 65, 68, "]", "[", 60, 71, 65, 67, "]", "[", 60, 71, 65, 66, "]", "[", 60, 71, 65, 64, "]", "[", 60, 71, 65, 63, "]", "[", 60, 71, 65, 62, "]", "[", 60, 71, 65, 61, "]", "[", 60, 71, 64, 72, "]", "[", 60, 71, 64, 70, "]", "[", 60, 71, 64, 69, "]", "[", 60, 71, 64, 68, "]", "[", 60, 71, 64, 67, "]", "[", 60, 71, 64, 66, "]", "[", 60, 71, 64, 65, "]", "[", 60, 71, 64, 63, "]", "[", 60, 71, 64, 62, "]", "[", 60, 71, 64, 61, "]", "[", 60, 71, 63, 72, "]", "[", 60, 71, 63, 70, "]", "[", 60, 71, 63, 69, "]", "[", 60, 71, 63, 68, "]", "[", 60, 71, 63, 67, "]", "[", 60, 71, 63, 66, "]", "[", 60, 71, 63, 65, "]", "[", 60, 71, 63, 64, "]", "[", 60, 71, 63, 62, "]", "[", 60, 71, 63, 61, "]", "[", 60, 71, 62, 72, "]", "[", 60, 71, 62, 70, "]", "[", 60, 71, 62, 69, "]", "[", 60, 71, 62, 68, "]", "[", 60, 71, 62, 67, "]", "[", 60, 71, 62, 66, "]", "[", 60, 71, 62, 65, "]", "[", 60, 71, 62, 64, "]", "[", 60, 71, 62, 63, "]", "[", 60, 71, 62, 61, "]", "[", 60, 71, 61, 72, "]", "[", 60, 71, 61, 70, "]", "[", 60, 71, 61, 69, "]", "[", 60, 71, 61, 68, "]", "[", 60, 71, 61, 67, "]", "[", 60, 71, 61, 66, "]", "[", 60, 71, 61, 65, "]", "[", 60, 71, 61, 64, "]", "[", 60, 71, 61, 63, "]", "[", 60, 71, 61, 62, "]", "[", 60, 70, 72, 71, "]", "[", 60, 70, 72, 69, "]", "[", 60, 70, 72, 68, "]", "[", 60, 70, 72, 67, "]", "[", 60, 70, 72, 66, "]", "[", 60, 70, 72, 65, "]", "[", 60, 70, 72, 64, "]", "[", 60, 70, 72, 63, "]", "[", 60, 70, 72, 62, "]", "[", 60, 70, 72, 61, "]", "[", 60, 70, 71, 72, "]", "[", 60, 70, 71, 69, "]", "[", 60, 70, 71, 68, "]", "[", 60, 70, 71, 67, "]", "[", 60, 70, 71, 66, "]", "[", 60, 70, 71, 65, "]", "[", 60, 70, 71, 64, "]", "[", 60, 70, 71, 63, "]", "[", 60, 70, 71, 62, "]", "[", 60, 70, 71, 61, "]", "[", 60, 70, 69, 72, "]", "[", 60, 70, 69, 71, "]", "[", 60, 70, 69, 68, "]", "[", 60, 70, 69, 67, "]", "[", 60, 70, 69, 66, "]", "[", 60, 70, 69, 65, "]", "[", 60, 70, 69, 64, "]", "[", 60, 70, 69, 63, "]", "[", 60, 70, 69, 62, "]", "[", 60, 70, 69, 61, "]", "[", 60, 70, 68, 72, "]", "[", 60, 70, 68, 71, "]", "[", 60, 70, 68, 69, "]", "[", 60, 70, 68, 67, "]", "[", 60, 70, 68, 66, "]", "[", 60, 70, 68, 65, "]", "[", 60, 70, 68, 64, "]", "[", 60, 70, 68, 63, "]", "[", 60, 70, 68, 62, "]", "[", 60, 70, 68, 61, "]", "[", 60, 70, 67, 72, "]", "[", 60, 70, 67, 71, "]", "[", 60, 70, 67, 69, "]", "[", 60, 70, 67, 68, "]", "[", 60, 70, 67, 66, "]", "[", 60, 70, 67, 65, "]", "[", 60, 70, 67, 64, "]", "[", 60, 70, 67, 63, "]", "[", 60, 70, 67, 62, "]", "[", 60, 70, 67, 61, "]", "[", 60, 70, 66, 72, "]", "[", 60, 70, 66, 71, "]", "[", 60, 70, 66, 69, "]", "[", 60, 70, 66, 68, "]", "[", 60, 70, 66, 67, "]", "[", 60, 70, 66, 65, "]", "[", 60, 70, 66, 64, "]", "[", 60, 70, 66, 63, "]", "[", 60, 70, 66, 62, "]", "[", 60, 70, 66, 61, "]", "[", 60, 70, 65, 72, "]", "[", 60, 70, 65, 71, "]", "[", 60, 70, 65, 69, "]", "[", 60, 70, 65, 68, "]", "[", 60, 70, 65, 67, "]", "[", 60, 70, 65, 66, "]", "[", 60, 70, 65, 64, "]", "[", 60, 70, 65, 63, "]", "[", 60, 70, 65, 62, "]", "[", 60, 70, 65, 61, "]", "[", 60, 70, 64, 72, "]", "[", 60, 70, 64, 71, "]", "[", 60, 70, 64, 69, "]", "[", 60, 70, 64, 68, "]", "[", 60, 70, 64, 67, "]", "[", 60, 70, 64, 66, "]", "[", 60, 70, 64, 65, "]", "[", 60, 70, 64, 63, "]", "[", 60, 70, 64, 62, "]", "[", 60, 70, 64, 61, "]", "[", 60, 70, 63, 72, "]", "[", 60, 70, 63, 71, "]", "[", 60, 70, 63, 69, "]", "[", 60, 70, 63, 68, "]", "[", 60, 70, 63, 67, "]", "[", 60, 70, 63, 66, "]", "[", 60, 70, 63, 65, "]", "[", 60, 70, 63, 64, "]", "[", 60, 70, 63, 62, "]", "[", 60, 70, 63, 61, "]", "[", 60, 70, 62, 72, "]", "[", 60, 70, 62, 71, "]", "[", 60, 70, 62, 69, "]", "[", 60, 70, 62, 68, "]", "[", 60, 70, 62, 67, "]", "[", 60, 70, 62, 66, "]", "[", 60, 70, 62, 65, "]", "[", 60, 70, 62, 64, "]", "[", 60, 70, 62, 63, "]", "[", 60, 70, 62, 61, "]", "[", 60, 70, 61, 72, "]", "[", 60, 70, 61, 71, "]", "[", 60, 70, 61, 69, "]", "[", 60, 70, 61, 68, "]", "[", 60, 70, 61, 67, "]", "[", 60, 70, 61, 66, "]", "[", 60, 70, 61, 65, "]", "[", 60, 70, 61, 64, "]", "[", 60, 70, 61, 63, "]", "[", 60, 70, 61, 62, "]", "[", 60, 69, 72, 71, "]", "[", 60, 69, 72, 70, "]", "[", 60, 69, 72, 68, "]", "[", 60, 69, 72, 67, "]", "[", 60, 69, 72, 66, "]", "[", 60, 69, 72, 65, "]", "[", 60, 69, 72, 64, "]", "[", 60, 69, 72, 63, "]", "[", 60, 69, 72, 62, "]", "[", 60, 69, 72, 61, "]", "[", 60, 69, 71, 72, "]", "[", 60, 69, 71, 70, "]", "[", 60, 69, 71, 68, "]", "[", 60, 69, 71, 67, "]", "[", 60, 69, 71, 66, "]", "[", 60, 69, 71, 65, "]", "[", 60, 69, 71, 64, "]", "[", 60, 69, 71, 63, "]", "[", 60, 69, 71, 62, "]", "[", 60, 69, 71, 61, "]", "[", 60, 69, 70, 72, "]", "[", 60, 69, 70, 71, "]", "[", 60, 69, 70, 68, "]", "[", 60, 69, 70, 67, "]", "[", 60, 69, 70, 66, "]", "[", 60, 69, 70, 65, "]", "[", 60, 69, 70, 64, "]", "[", 60, 69, 70, 63, "]", "[", 60, 69, 70, 62, "]", "[", 60, 69, 70, 61, "]", "[", 60, 69, 68, 72, "]", "[", 60, 69, 68, 71, "]", "[", 60, 69, 68, 70, "]", "[", 60, 69, 68, 67, "]", "[", 60, 69, 68, 66, "]", "[", 60, 69, 68, 65, "]", "[", 60, 69, 68, 64, "]", "[", 60, 69, 68, 63, "]", "[", 60, 69, 68, 62, "]", "[", 60, 69, 68, 61, "]", "[", 60, 69, 67, 72, "]", "[", 60, 69, 67, 71, "]", "[", 60, 69, 67, 70, "]", "[", 60, 69, 67, 68, "]", "[", 60, 69, 67, 66, "]", "[", 60, 69, 67, 65, "]", "[", 60, 69, 67, 64, "]", "[", 60, 69, 67, 63, "]", "[", 60, 69, 67, 62, "]", "[", 60, 69, 67, 61, "]", "[", 60, 69, 66, 72, "]", "[", 60, 69, 66, 71, "]", "[", 60, 69, 66, 70, "]", "[", 60, 69, 66, 68, "]", "[", 60, 69, 66, 67, "]", "[", 60, 69, 66, 65, "]", "[", 60, 69, 66, 64, "]", "[", 60, 69, 66, 63, "]", "[", 60, 69, 66, 62, "]", "[", 60, 69, 66, 61, "]", "[", 60, 69, 65, 72, "]", "[", 60, 69, 65, 71, "]", "[", 60, 69, 65, 70, "]", "[", 60, 69, 65, 68, "]", "[", 60, 69, 65, 67, "]", "[", 60, 69, 65, 66, "]", "[", 60, 69, 65, 64, "]", "[", 60, 69, 65, 63, "]", "[", 60, 69, 65, 62, "]", "[", 60, 69, 65, 61, "]", "[", 60, 69, 64, 72, "]", "[", 60, 69, 64, 71, "]", "[", 60, 69, 64, 70, "]", "[", 60, 69, 64, 68, "]", "[", 60, 69, 64, 67, "]", "[", 60, 69, 64, 66, "]", "[", 60, 69, 64, 65, "]", "[", 60, 69, 64, 63, "]", "[", 60, 69, 64, 62, "]", "[", 60, 69, 64, 61, "]", "[", 60, 69, 63, 72, "]", "[", 60, 69, 63, 71, "]", "[", 60, 69, 63, 70, "]", "[", 60, 69, 63, 68, "]", "[", 60, 69, 63, 67, "]", "[", 60, 69, 63, 66, "]", "[", 60, 69, 63, 65, "]", "[", 60, 69, 63, 64, "]", "[", 60, 69, 63, 62, "]", "[", 60, 69, 63, 61, "]", "[", 60, 69, 62, 72, "]", "[", 60, 69, 62, 71, "]", "[", 60, 69, 62, 70, "]", "[", 60, 69, 62, 68, "]", "[", 60, 69, 62, 67, "]", "[", 60, 69, 62, 66, "]", "[", 60, 69, 62, 65, "]", "[", 60, 69, 62, 64, "]", "[", 60, 69, 62, 63, "]", "[", 60, 69, 62, 61, "]", "[", 60, 69, 61, 72, "]", "[", 60, 69, 61, 71, "]", "[", 60, 69, 61, 70, "]", "[", 60, 69, 61, 68, "]", "[", 60, 69, 61, 67, "]", "[", 60, 69, 61, 66, "]", "[", 60, 69, 61, 65, "]", "[", 60, 69, 61, 64, "]", "[", 60, 69, 61, 63, "]", "[", 60, 69, 61, 62, "]", "[", 60, 68, 72, 71, "]", "[", 60, 68, 72, 70, "]", "[", 60, 68, 72, 69, "]", "[", 60, 68, 72, 67, "]", "[", 60, 68, 72, 66, "]", "[", 60, 68, 72, 65, "]", "[", 60, 68, 72, 64, "]", "[", 60, 68, 72, 63, "]", "[", 60, 68, 72, 62, "]", "[", 60, 68, 72, 61, "]", "[", 60, 68, 71, 72, "]", "[", 60, 68, 71, 70, "]", "[", 60, 68, 71, 69, "]", "[", 60, 68, 71, 67, "]", "[", 60, 68, 71, 66, "]", "[", 60, 68, 71, 65, "]", "[", 60, 68, 71, 64, "]", "[", 60, 68, 71, 63, "]", "[", 60, 68, 71, 62, "]", "[", 60, 68, 71, 61, "]", "[", 60, 68, 70, 72, "]", "[", 60, 68, 70, 71, "]", "[", 60, 68, 70, 69, "]", "[", 60, 68, 70, 67, "]", "[", 60, 68, 70, 66, "]", "[", 60, 68, 70, 65, "]", "[", 60, 68, 70, 64, "]", "[", 60, 68, 70, 63, "]", "[", 60, 68, 70, 62, "]", "[", 60, 68, 70, 61, "]", "[", 60, 68, 69, 72, "]", "[", 60, 68, 69, 71, "]", "[", 60, 68, 69, 70, "]", "[", 60, 68, 69, 67, "]", "[", 60, 68, 69, 66, "]", "[", 60, 68, 69, 65, "]", "[", 60, 68, 69, 64, "]", "[", 60, 68, 69, 63, "]", "[", 60, 68, 69, 62, "]", "[", 60, 68, 69, 61, "]", "[", 60, 68, 67, 72, "]", "[", 60, 68, 67, 71, "]", "[", 60, 68, 67, 70, "]", "[", 60, 68, 67, 69, "]", "[", 60, 68, 67, 66, "]", "[", 60, 68, 67, 65, "]", "[", 60, 68, 67, 64, "]", "[", 60, 68, 67, 63, "]", "[", 60, 68, 67, 62, "]", "[", 60, 68, 67, 61, "]", "[", 60, 68, 66, 72, "]", "[", 60, 68, 66, 71, "]", "[", 60, 68, 66, 70, "]", "[", 60, 68, 66, 69, "]", "[", 60, 68, 66, 67, "]", "[", 60, 68, 66, 65, "]", "[", 60, 68, 66, 64, "]", "[", 60, 68, 66, 63, "]", "[", 60, 68, 66, 62, "]", "[", 60, 68, 66, 61, "]", "[", 60, 68, 65, 72, "]", "[", 60, 68, 65, 71, "]", "[", 60, 68, 65, 70, "]", "[", 60, 68, 65, 69, "]", "[", 60, 68, 65, 67, "]", "[", 60, 68, 65, 66, "]", "[", 60, 68, 65, 64, "]", "[", 60, 68, 65, 63, "]", "[", 60, 68, 65, 62, "]", "[", 60, 68, 65, 61, "]", "[", 60, 68, 64, 72, "]", "[", 60, 68, 64, 71, "]", "[", 60, 68, 64, 70, "]", "[", 60, 68, 64, 69, "]", "[", 60, 68, 64, 67, "]", "[", 60, 68, 64, 66, "]", "[", 60, 68, 64, 65, "]", "[", 60, 68, 64, 63, "]", "[", 60, 68, 64, 62, "]", "[", 60, 68, 64, 61, "]", "[", 60, 68, 63, 72, "]", "[", 60, 68, 63, 71, "]", "[", 60, 68, 63, 70, "]", "[", 60, 68, 63, 69, "]", "[", 60, 68, 63, 67, "]", "[", 60, 68, 63, 66, "]", "[", 60, 68, 63, 65, "]", "[", 60, 68, 63, 64, "]", "[", 60, 68, 63, 62, "]", "[", 60, 68, 63, 61, "]", "[", 60, 68, 62, 72, "]", "[", 60, 68, 62, 71, "]", "[", 60, 68, 62, 70, "]", "[", 60, 68, 62, 69, "]", "[", 60, 68, 62, 67, "]", "[", 60, 68, 62, 66, "]", "[", 60, 68, 62, 65, "]", "[", 60, 68, 62, 64, "]", "[", 60, 68, 62, 63, "]", "[", 60, 68, 62, 61, "]", "[", 60, 68, 61, 72, "]", "[", 60, 68, 61, 71, "]", "[", 60, 68, 61, 70, "]", "[", 60, 68, 61, 69, "]" ],
													"reg_data_0000000024" : [ "[", 60, 68, 61, 67, "]", "[", 60, 68, 61, 66, "]", "[", 60, 68, 61, 65, "]", "[", 60, 68, 61, 64, "]", "[", 60, 68, 61, 63, "]", "[", 60, 68, 61, 62, "]", "[", 60, 67, 72, 71, "]", "[", 60, 67, 72, 70, "]", "[", 60, 67, 72, 69, "]", "[", 60, 67, 72, 68, "]", "[", 60, 67, 72, 66, "]", "[", 60, 67, 72, 65, "]", "[", 60, 67, 72, 64, "]", "[", 60, 67, 72, 63, "]", "[", 60, 67, 72, 62, "]", "[", 60, 67, 72, 61, "]", "[", 60, 67, 71, 72, "]", "[", 60, 67, 71, 70, "]", "[", 60, 67, 71, 69, "]", "[", 60, 67, 71, 68, "]", "[", 60, 67, 71, 66, "]", "[", 60, 67, 71, 65, "]", "[", 60, 67, 71, 64, "]", "[", 60, 67, 71, 63, "]", "[", 60, 67, 71, 62, "]", "[", 60, 67, 71, 61, "]", "[", 60, 67, 70, 72, "]", "[", 60, 67, 70, 71, "]", "[", 60, 67, 70, 69, "]", "[", 60, 67, 70, 68, "]", "[", 60, 67, 70, 66, "]", "[", 60, 67, 70, 65, "]", "[", 60, 67, 70, 64, "]", "[", 60, 67, 70, 63, "]", "[", 60, 67, 70, 62, "]", "[", 60, 67, 70, 61, "]", "[", 60, 67, 69, 72, "]", "[", 60, 67, 69, 71, "]", "[", 60, 67, 69, 70, "]", "[", 60, 67, 69, 68, "]", "[", 60, 67, 69, 66, "]", "[", 60, 67, 69, 65, "]", "[", 60, 67, 69, 64, "]", "[", 60, 67, 69, 63, "]", "[", 60, 67, 69, 62, "]", "[", 60, 67, 69, 61, "]", "[", 60, 67, 68, 72, "]", "[", 60, 67, 68, 71, "]", "[", 60, 67, 68, 70, "]", "[", 60, 67, 68, 69, "]", "[", 60, 67, 68, 66, "]", "[", 60, 67, 68, 65, "]", "[", 60, 67, 68, 64, "]", "[", 60, 67, 68, 63, "]", "[", 60, 67, 68, 62, "]", "[", 60, 67, 68, 61, "]", "[", 60, 67, 66, 72, "]", "[", 60, 67, 66, 71, "]", "[", 60, 67, 66, 70, "]", "[", 60, 67, 66, 69, "]", "[", 60, 67, 66, 68, "]", "[", 60, 67, 66, 65, "]", "[", 60, 67, 66, 64, "]", "[", 60, 67, 66, 63, "]", "[", 60, 67, 66, 62, "]", "[", 60, 67, 66, 61, "]", "[", 60, 67, 65, 72, "]", "[", 60, 67, 65, 71, "]", "[", 60, 67, 65, 70, "]", "[", 60, 67, 65, 69, "]", "[", 60, 67, 65, 68, "]", "[", 60, 67, 65, 66, "]", "[", 60, 67, 65, 64, "]", "[", 60, 67, 65, 63, "]", "[", 60, 67, 65, 62, "]", "[", 60, 67, 65, 61, "]", "[", 60, 67, 64, 72, "]", "[", 60, 67, 64, 71, "]", "[", 60, 67, 64, 70, "]", "[", 60, 67, 64, 69, "]", "[", 60, 67, 64, 68, "]", "[", 60, 67, 64, 66, "]", "[", 60, 67, 64, 65, "]", "[", 60, 67, 64, 63, "]", "[", 60, 67, 64, 62, "]", "[", 60, 67, 64, 61, "]", "[", 60, 67, 63, 72, "]", "[", 60, 67, 63, 71, "]", "[", 60, 67, 63, 70, "]", "[", 60, 67, 63, 69, "]", "[", 60, 67, 63, 68, "]", "[", 60, 67, 63, 66, "]", "[", 60, 67, 63, 65, "]", "[", 60, 67, 63, 64, "]", "[", 60, 67, 63, 62, "]", "[", 60, 67, 63, 61, "]", "[", 60, 67, 62, 72, "]", "[", 60, 67, 62, 71, "]", "[", 60, 67, 62, 70, "]", "[", 60, 67, 62, 69, "]", "[", 60, 67, 62, 68, "]", "[", 60, 67, 62, 66, "]", "[", 60, 67, 62, 65, "]", "[", 60, 67, 62, 64, "]", "[", 60, 67, 62, 63, "]", "[", 60, 67, 62, 61, "]", "[", 60, 67, 61, 72, "]", "[", 60, 67, 61, 71, "]", "[", 60, 67, 61, 70, "]", "[", 60, 67, 61, 69, "]", "[", 60, 67, 61, 68, "]", "[", 60, 67, 61, 66, "]", "[", 60, 67, 61, 65, "]", "[", 60, 67, 61, 64, "]", "[", 60, 67, 61, 63, "]", "[", 60, 67, 61, 62, "]", "[", 60, 66, 72, 71, "]", "[", 60, 66, 72, 70, "]", "[", 60, 66, 72, 69, "]", "[", 60, 66, 72, 68, "]", "[", 60, 66, 72, 67, "]", "[", 60, 66, 72, 65, "]", "[", 60, 66, 72, 64, "]", "[", 60, 66, 72, 63, "]", "[", 60, 66, 72, 62, "]", "[", 60, 66, 72, 61, "]", "[", 60, 66, 71, 72, "]", "[", 60, 66, 71, 70, "]", "[", 60, 66, 71, 69, "]", "[", 60, 66, 71, 68, "]", "[", 60, 66, 71, 67, "]", "[", 60, 66, 71, 65, "]", "[", 60, 66, 71, 64, "]", "[", 60, 66, 71, 63, "]", "[", 60, 66, 71, 62, "]", "[", 60, 66, 71, 61, "]", "[", 60, 66, 70, 72, "]", "[", 60, 66, 70, 71, "]", "[", 60, 66, 70, 69, "]", "[", 60, 66, 70, 68, "]", "[", 60, 66, 70, 67, "]", "[", 60, 66, 70, 65, "]", "[", 60, 66, 70, 64, "]", "[", 60, 66, 70, 63, "]", "[", 60, 66, 70, 62, "]", "[", 60, 66, 70, 61, "]", "[", 60, 66, 69, 72, "]", "[", 60, 66, 69, 71, "]", "[", 60, 66, 69, 70, "]", "[", 60, 66, 69, 68, "]", "[", 60, 66, 69, 67, "]", "[", 60, 66, 69, 65, "]", "[", 60, 66, 69, 64, "]", "[", 60, 66, 69, 63, "]", "[", 60, 66, 69, 62, "]", "[", 60, 66, 69, 61, "]", "[", 60, 66, 68, 72, "]", "[", 60, 66, 68, 71, "]", "[", 60, 66, 68, 70, "]", "[", 60, 66, 68, 69, "]", "[", 60, 66, 68, 67, "]", "[", 60, 66, 68, 65, "]", "[", 60, 66, 68, 64, "]", "[", 60, 66, 68, 63, "]", "[", 60, 66, 68, 62, "]", "[", 60, 66, 68, 61, "]", "[", 60, 66, 67, 72, "]", "[", 60, 66, 67, 71, "]", "[", 60, 66, 67, 70, "]", "[", 60, 66, 67, 69, "]", "[", 60, 66, 67, 68, "]", "[", 60, 66, 67, 65, "]", "[", 60, 66, 67, 64, "]", "[", 60, 66, 67, 63, "]", "[", 60, 66, 67, 62, "]", "[", 60, 66, 67, 61, "]", "[", 60, 66, 65, 72, "]", "[", 60, 66, 65, 71, "]", "[", 60, 66, 65, 70, "]", "[", 60, 66, 65, 69, "]", "[", 60, 66, 65, 68, "]", "[", 60, 66, 65, 67, "]", "[", 60, 66, 65, 64, "]", "[", 60, 66, 65, 63, "]", "[", 60, 66, 65, 62, "]", "[", 60, 66, 65, 61, "]", "[", 60, 66, 64, 72, "]", "[", 60, 66, 64, 71, "]", "[", 60, 66, 64, 70, "]", "[", 60, 66, 64, 69, "]", "[", 60, 66, 64, 68, "]", "[", 60, 66, 64, 67, "]", "[", 60, 66, 64, 65, "]", "[", 60, 66, 64, 63, "]", "[", 60, 66, 64, 62, "]", "[", 60, 66, 64, 61, "]", "[", 60, 66, 63, 72, "]", "[", 60, 66, 63, 71, "]", "[", 60, 66, 63, 70, "]", "[", 60, 66, 63, 69, "]", "[", 60, 66, 63, 68, "]", "[", 60, 66, 63, 67, "]", "[", 60, 66, 63, 65, "]", "[", 60, 66, 63, 64, "]", "[", 60, 66, 63, 62, "]", "[", 60, 66, 63, 61, "]", "[", 60, 66, 62, 72, "]", "[", 60, 66, 62, 71, "]", "[", 60, 66, 62, 70, "]", "[", 60, 66, 62, 69, "]", "[", 60, 66, 62, 68, "]", "[", 60, 66, 62, 67, "]", "[", 60, 66, 62, 65, "]", "[", 60, 66, 62, 64, "]", "[", 60, 66, 62, 63, "]", "[", 60, 66, 62, 61, "]", "[", 60, 66, 61, 72, "]", "[", 60, 66, 61, 71, "]", "[", 60, 66, 61, 70, "]", "[", 60, 66, 61, 69, "]", "[", 60, 66, 61, 68, "]", "[", 60, 66, 61, 67, "]", "[", 60, 66, 61, 65, "]", "[", 60, 66, 61, 64, "]", "[", 60, 66, 61, 63, "]", "[", 60, 66, 61, 62, "]", "[", 60, 65, 72, 71, "]", "[", 60, 65, 72, 70, "]", "[", 60, 65, 72, 69, "]", "[", 60, 65, 72, 68, "]", "[", 60, 65, 72, 67, "]", "[", 60, 65, 72, 66, "]", "[", 60, 65, 72, 64, "]", "[", 60, 65, 72, 63, "]", "[", 60, 65, 72, 62, "]", "[", 60, 65, 72, 61, "]", "[", 60, 65, 71, 72, "]", "[", 60, 65, 71, 70, "]", "[", 60, 65, 71, 69, "]", "[", 60, 65, 71, 68, "]", "[", 60, 65, 71, 67, "]", "[", 60, 65, 71, 66, "]", "[", 60, 65, 71, 64, "]", "[", 60, 65, 71, 63, "]", "[", 60, 65, 71, 62, "]", "[", 60, 65, 71, 61, "]", "[", 60, 65, 70, 72, "]", "[", 60, 65, 70, 71, "]", "[", 60, 65, 70, 69, "]", "[", 60, 65, 70, 68, "]", "[", 60, 65, 70, 67, "]", "[", 60, 65, 70, 66, "]", "[", 60, 65, 70, 64, "]", "[", 60, 65, 70, 63, "]", "[", 60, 65, 70, 62, "]", "[", 60, 65, 70, 61, "]", "[", 60, 65, 69, 72, "]", "[", 60, 65, 69, 71, "]", "[", 60, 65, 69, 70, "]", "[", 60, 65, 69, 68, "]", "[", 60, 65, 69, 67, "]", "[", 60, 65, 69, 66, "]", "[", 60, 65, 69, 64, "]", "[", 60, 65, 69, 63, "]", "[", 60, 65, 69, 62, "]", "[", 60, 65, 69, 61, "]", "[", 60, 65, 68, 72, "]", "[", 60, 65, 68, 71, "]", "[", 60, 65, 68, 70, "]", "[", 60, 65, 68, 69, "]", "[", 60, 65, 68, 67, "]", "[", 60, 65, 68, 66, "]", "[", 60, 65, 68, 64, "]", "[", 60, 65, 68, 63, "]", "[", 60, 65, 68, 62, "]", "[", 60, 65, 68, 61, "]", "[", 60, 65, 67, 72, "]", "[", 60, 65, 67, 71, "]", "[", 60, 65, 67, 70, "]", "[", 60, 65, 67, 69, "]", "[", 60, 65, 67, 68, "]", "[", 60, 65, 67, 66, "]", "[", 60, 65, 67, 64, "]", "[", 60, 65, 67, 63, "]", "[", 60, 65, 67, 62, "]", "[", 60, 65, 67, 61, "]", "[", 60, 65, 66, 72, "]", "[", 60, 65, 66, 71, "]", "[", 60, 65, 66, 70, "]", "[", 60, 65, 66, 69, "]", "[", 60, 65, 66, 68, "]", "[", 60, 65, 66, 67, "]", "[", 60, 65, 66, 64, "]", "[", 60, 65, 66, 63, "]", "[", 60, 65, 66, 62, "]", "[", 60, 65, 66, 61, "]", "[", 60, 65, 64, 72, "]", "[", 60, 65, 64, 71, "]", "[", 60, 65, 64, 70, "]", "[", 60, 65, 64, 69, "]", "[", 60, 65, 64, 68, "]", "[", 60, 65, 64, 67, "]", "[", 60, 65, 64, 66, "]", "[", 60, 65, 64, 63, "]", "[", 60, 65, 64, 62, "]", "[", 60, 65, 64, 61, "]", "[", 60, 65, 63, 72, "]", "[", 60, 65, 63, 71, "]", "[", 60, 65, 63, 70, "]", "[", 60, 65, 63, 69, "]", "[", 60, 65, 63, 68, "]", "[", 60, 65, 63, 67, "]", "[", 60, 65, 63, 66, "]", "[", 60, 65, 63, 64, "]", "[", 60, 65, 63, 62, "]", "[", 60, 65, 63, 61, "]", "[", 60, 65, 62, 72, "]", "[", 60, 65, 62, 71, "]", "[", 60, 65, 62, 70, "]", "[", 60, 65, 62, 69, "]", "[", 60, 65, 62, 68, "]", "[", 60, 65, 62, 67, "]", "[", 60, 65, 62, 66, "]", "[", 60, 65, 62, 64, "]", "[", 60, 65, 62, 63, "]", "[", 60, 65, 62, 61, "]", "[", 60, 65, 61, 72, "]", "[", 60, 65, 61, 71, "]", "[", 60, 65, 61, 70, "]", "[", 60, 65, 61, 69, "]", "[", 60, 65, 61, 68, "]", "[", 60, 65, 61, 67, "]", "[", 60, 65, 61, 66, "]", "[", 60, 65, 61, 64, "]", "[", 60, 65, 61, 63, "]", "[", 60, 65, 61, 62, "]", "[", 60, 64, 72, 71, "]", "[", 60, 64, 72, 70, "]", "[", 60, 64, 72, 69, "]", "[", 60, 64, 72, 68, "]", "[", 60, 64, 72, 67, "]", "[", 60, 64, 72, 66, "]", "[", 60, 64, 72, 65, "]", "[", 60, 64, 72, 63, "]", "[", 60, 64, 72, 62, "]", "[", 60, 64, 72, 61, "]", "[", 60, 64, 71, 72, "]", "[", 60, 64, 71, 70, "]", "[", 60, 64, 71, 69, "]", "[", 60, 64, 71, 68, "]", "[", 60, 64, 71, 67, "]", "[", 60, 64, 71, 66, "]", "[", 60, 64, 71, 65, "]", "[", 60, 64, 71, 63, "]", "[", 60, 64, 71, 62, "]", "[", 60, 64, 71, 61, "]", "[", 60, 64, 70, 72, "]", "[", 60, 64, 70, 71, "]", "[", 60, 64, 70, 69, "]", "[", 60, 64, 70, 68, "]", "[", 60, 64, 70, 67, "]", "[", 60, 64, 70, 66, "]", "[", 60, 64, 70, 65, "]", "[", 60, 64, 70, 63, "]", "[", 60, 64, 70, 62, "]", "[", 60, 64, 70, 61, "]", "[", 60, 64, 69, 72, "]", "[", 60, 64, 69, 71, "]", "[", 60, 64, 69, 70, "]", "[", 60, 64, 69, 68, "]", "[", 60, 64, 69, 67, "]", "[", 60, 64, 69, 66, "]", "[", 60, 64, 69, 65, "]", "[", 60, 64, 69, 63, "]", "[", 60, 64, 69, 62, "]", "[", 60, 64, 69, 61, "]", "[", 60, 64, 68, 72, "]", "[", 60, 64, 68, 71, "]", "[", 60, 64, 68, 70, "]", "[", 60, 64, 68, 69, "]", "[", 60, 64, 68, 67, "]", "[", 60, 64, 68, 66, "]", "[", 60, 64, 68, 65, "]", "[", 60, 64, 68, 63, "]", "[", 60, 64, 68, 62, "]", "[", 60, 64, 68, 61, "]", "[", 60, 64, 67, 72, "]", "[", 60, 64, 67, 71, "]", "[", 60, 64, 67, 70, "]", "[", 60, 64, 67, 69, "]", "[", 60, 64, 67, 68, "]", "[", 60, 64, 67, 66, "]", "[", 60, 64, 67, 65, "]", "[", 60, 64, 67, 63, "]", "[", 60, 64, 67, 62, "]", "[", 60, 64, 67, 61, "]", "[", 60, 64, 66, 72, "]", "[", 60, 64, 66, 71, "]", "[", 60, 64, 66, 70, "]", "[", 60, 64, 66, 69, "]", "[", 60, 64, 66, 68, "]", "[", 60, 64, 66, 67, "]", "[", 60, 64, 66, 65, "]", "[", 60, 64, 66, 63, "]", "[", 60, 64, 66, 62, "]", "[", 60, 64, 66, 61, "]", "[", 60, 64, 65, 72, "]", "[", 60, 64, 65, 71, "]", "[", 60, 64, 65, 70, "]", "[", 60, 64, 65, 69, "]", "[", 60, 64, 65, 68, "]", "[", 60, 64, 65, 67, "]", "[", 60, 64, 65, 66, "]", "[", 60, 64, 65, 63, "]", "[", 60, 64, 65, 62, "]", "[", 60, 64, 65, 61, "]", "[", 60, 64, 63, 72, "]", "[", 60, 64, 63, 71, "]", "[", 60, 64, 63, 70, "]", "[", 60, 64, 63, 69, "]", "[", 60, 64, 63, 68, "]", "[", 60, 64, 63, 67, "]", "[", 60, 64, 63, 66, "]", "[", 60, 64, 63, 65, "]", "[", 60, 64, 63, 62, "]", "[", 60, 64, 63, 61, "]", "[", 60, 64, 62, 72, "]", "[", 60, 64, 62, 71, "]", "[", 60, 64, 62, 70, "]", "[", 60, 64, 62, 69, "]", "[", 60, 64, 62, 68, "]", "[", 60, 64, 62, 67, "]", "[", 60, 64, 62, 66, "]", "[", 60, 64, 62, 65, "]", "[", 60, 64, 62, 63, "]", "[", 60, 64, 62, 61, "]", "[", 60, 64, 61, 72, "]", "[", 60, 64, 61, 71, "]", "[", 60, 64, 61, 70, "]", "[", 60, 64, 61, 69, "]", "[", 60, 64, 61, 68, "]", "[", 60, 64, 61, 67, "]", "[", 60, 64, 61, 66, "]", "[", 60, 64, 61, 65, "]", "[", 60, 64, 61, 63, "]", "[", 60, 64, 61, 62, "]", "[", 60, 63, 72, 71, "]", "[", 60, 63, 72, 70, "]", "[", 60, 63, 72, 69, "]", "[", 60, 63, 72, 68, "]", "[", 60, 63, 72, 67, "]", "[", 60, 63, 72, 66, "]", "[", 60, 63, 72, 65, "]", "[", 60, 63, 72, 64, "]", "[", 60, 63, 72, 62, "]", "[", 60, 63, 72, 61, "]", "[", 60, 63, 71, 72, "]", "[", 60, 63, 71, 70, "]", "[", 60, 63, 71, 69, "]", "[", 60, 63, 71, 68, "]", "[", 60, 63, 71, 67, "]", "[", 60, 63, 71, 66, "]", "[", 60, 63, 71, 65, "]", "[", 60, 63, 71, 64, "]", "[", 60, 63, 71, 62, "]", "[", 60, 63, 71, 61, "]", "[", 60, 63, 70, 72, "]", "[", 60, 63, 70, 71, "]", "[", 60, 63, 70, 69, "]", "[", 60, 63, 70, 68, "]", "[", 60, 63, 70, 67, "]", "[", 60, 63, 70, 66, "]", "[", 60, 63, 70, 65, "]", "[", 60, 63, 70, 64, "]", "[", 60, 63, 70, 62, "]", "[", 60, 63, 70, 61, "]", "[", 60, 63, 69, 72, "]", "[", 60, 63, 69, 71, "]", "[", 60, 63, 69, 70, "]", "[", 60, 63, 69, 68, "]", "[", 60, 63, 69, 67, "]", "[", 60, 63, 69, 66, "]", "[", 60, 63, 69, 65, "]", "[", 60, 63, 69, 64, "]", "[", 60, 63, 69, 62, "]", "[", 60, 63, 69, 61, "]", "[", 60, 63, 68, 72, "]", "[", 60, 63, 68, 71, "]", "[", 60, 63, 68, 70, "]", "[", 60, 63, 68, 69, "]", "[", 60, 63, 68, 67, "]", "[", 60, 63, 68, 66, "]", "[", 60, 63, 68, 65, "]", "[", 60, 63, 68, 64, "]", "[", 60, 63, 68, 62, "]", "[", 60, 63, 68, 61, "]", "[", 60, 63, 67, 72, "]", "[", 60, 63, 67, 71, "]", "[", 60, 63, 67, 70, "]", "[", 60, 63, 67, 69, "]", "[", 60, 63, 67, 68, "]", "[", 60, 63, 67, 66, "]", "[", 60, 63, 67, 65, "]", "[", 60, 63, 67, 64, "]", "[", 60, 63, 67, 62, "]", "[", 60, 63, 67, 61, "]", "[", 60, 63, 66, 72, "]", "[", 60, 63, 66, 71, "]", "[", 60, 63, 66, 70, "]", "[", 60, 63, 66, 69, "]", "[", 60, 63, 66, 68, "]", "[", 60, 63, 66, 67, "]", "[", 60, 63, 66, 65, "]", "[", 60, 63, 66, 64, "]", "[", 60, 63, 66, 62, "]", "[", 60, 63, 66, 61, "]", "[", 60, 63, 65, 72, "]", "[", 60, 63, 65, 71, "]", "[", 60, 63, 65, 70, "]", "[", 60, 63, 65, 69, "]", "[", 60, 63, 65, 68, "]", "[", 60, 63, 65, 67, "]", "[", 60, 63, 65, 66, "]", "[", 60, 63, 65, 64, "]", "[", 60, 63, 65, 62, "]", "[", 60, 63, 65, 61, "]", "[", 60, 63, 64, 72, "]", "[", 60, 63, 64, 71, "]", "[", 60, 63, 64, 70, "]", "[", 60, 63, 64, 69, "]", "[", 60, 63, 64, 68, "]", "[", 60, 63, 64, 67, "]", "[", 60, 63, 64, 66, "]", "[", 60, 63, 64, 65, "]", "[", 60, 63, 64, 62, "]", "[", 60, 63, 64, 61, "]", "[", 60, 63, 62, 72, "]", "[", 60, 63, 62, 71, "]", "[", 60, 63, 62, 70, "]", "[", 60, 63, 62, 69, "]", "[", 60, 63, 62, 68, "]", "[", 60, 63, 62, 67, "]", "[", 60, 63, 62, 66, "]", "[", 60, 63, 62, 65, "]", "[", 60, 63, 62, 64, "]", "[", 60, 63, 62, 61, "]", "[", 60, 63, 61, 72, "]", "[", 60, 63, 61, 71, "]", "[", 60, 63, 61, 70, "]", "[", 60, 63, 61, 69, "]", "[", 60, 63, 61, 68, "]", "[", 60, 63, 61, 67, "]", "[", 60, 63, 61, 66, "]", "[", 60, 63, 61, 65, "]", "[", 60, 63, 61, 64, "]", "[", 60, 63, 61, 62, "]", "[", 60, 62, 72, 71, "]", "[", 60, 62, 72, 70, "]", "[", 60, 62, 72, 69, "]", "[", 60, 62, 72, 68, "]", "[", 60, 62, 72, 67, "]", "[", 60, 62, 72, 66, "]", "[", 60, 62, 72, 65, "]", "[", 60, 62, 72, 64, "]", "[", 60, 62, 72, 63, "]", "[", 60, 62, 72, 61, "]", "[", 60, 62, 71, 72, "]", "[", 60, 62, 71, 70, "]", "[", 60, 62, 71, 69, "]", "[", 60, 62, 71, 68, "]", "[", 60, 62, 71, 67, "]", "[", 60, 62, 71, 66, "]", "[", 60, 62, 71, 65, "]", "[", 60, 62, 71, 64, "]", "[", 60, 62, 71, 63, "]", "[", 60, 62, 71, 61, "]", "[", 60, 62, 70, 72, "]", "[", 60, 62, 70, 71, "]", "[", 60, 62, 70, 69, "]", "[", 60, 62, 70, 68, "]", "[", 60, 62, 70, 67, "]", "[", 60, 62, 70, 66, "]", "[", 60, 62, 70, 65, "]", "[", 60, 62, 70, 64, "]", "[", 60, 62, 70, 63, "]", "[", 60, 62, 70, 61, "]", "[", 60, 62, 69, 72, "]", "[", 60, 62, 69, 71, "]", "[", 60, 62, 69, 70, "]", "[", 60, 62, 69, 68, "]", "[", 60, 62, 69, 67, "]", "[", 60, 62, 69, 66, "]", "[", 60, 62, 69, 65, "]", "[", 60, 62, 69, 64, "]", "[", 60, 62, 69, 63, "]", "[", 60, 62, 69, 61, "]", "[", 60, 62, 68, 72, "]", "[", 60, 62, 68, 71, "]", "[", 60, 62, 68, 70, "]", "[", 60, 62, 68, 69, "]", "[", 60, 62, 68, 67, "]", "[", 60, 62, 68, 66, "]", "[", 60, 62, 68, 65, "]", "[", 60, 62, 68, 64, "]", "[", 60, 62, 68, 63, "]", "[", 60, 62, 68, 61, "]", "[", 60, 62, 67, 72, "]", "[", 60, 62, 67, 71, "]", "[", 60, 62, 67, 70, "]", "[", 60, 62, 67, 69, "]", "[", 60, 62, 67, 68, "]", "[", 60, 62, 67, 66, "]", "[", 60, 62, 67, 65, "]", "[", 60, 62, 67, 64, "]", "[", 60, 62, 67, 63, "]", "[", 60, 62, 67, 61, "]", "[", 60, 62, 66, 72, "]", "[", 60, 62, 66, 71, "]", "[", 60, 62, 66, 70, "]", "[", 60, 62, 66, 69, "]", "[", 60, 62, 66, 68, "]", "[", 60, 62, 66, 67, "]", "[", 60, 62, 66, 65, "]", "[", 60, 62, 66, 64, "]", "[", 60, 62, 66, 63, "]", "[", 60, 62, 66, 61, "]", "[", 60, 62, 65, 72, "]", "[", 60, 62, 65, 71, "]", "[", 60, 62, 65, 70, "]", "[", 60, 62, 65, 69, "]", "[", 60, 62, 65, 68, "]", "[", 60, 62, 65, 67, "]", "[", 60, 62, 65, 66, "]", "[", 60, 62, 65, 64, "]", "[", 60, 62, 65, 63, "]", "[", 60, 62, 65, 61, "]", "[", 60, 62, 64, 72, "]", "[", 60, 62, 64, 71, "]", "[", 60, 62, 64, 70, "]", "[", 60, 62, 64, 69, "]", "[", 60, 62, 64, 68, "]", "[", 60, 62, 64, 67, "]", "[", 60, 62, 64, 66, "]", "[", 60, 62, 64, 65, "]", "[", 60, 62, 64, 63, "]", "[", 60, 62, 64, 61, "]", "[", 60, 62, 63, 72, "]", "[", 60, 62, 63, 71, "]", "[", 60, 62, 63, 70, "]", "[", 60, 62, 63, 69, "]", "[", 60, 62, 63, 68, "]", "[", 60, 62, 63, 67, "]", "[", 60, 62, 63, 66, "]", "[", 60, 62, 63, 65, "]", "[", 60, 62, 63, 64, "]", "[", 60, 62, 63, 61, "]", "[", 60, 62, 61, 72, "]", "[", 60, 62, 61, 71, "]", "[", 60, 62, 61, 70, "]", "[", 60, 62, 61, 69, "]", "[", 60, 62, 61, 68, "]", "[", 60, 62, 61, 67, "]", "[", 60, 62, 61, 66, "]", "[", 60, 62, 61, 65, "]", "[", 60, 62, 61, 64, "]", "[", 60, 62, 61, 63, "]", "[", 60, 61, 72, 71, "]", "[", 60, 61, 72, 70, "]", "[", 60, 61, 72, 69, "]", "[", 60, 61, 72, 68, "]", "[", 60, 61, 72, 67, "]", "[", 60, 61, 72, 66, "]", "[", 60, 61, 72, 65, "]", "[", 60, 61, 72, 64, "]", "[", 60, 61, 72, 63, "]", "[", 60, 61, 72, 62, "]", "[", 60, 61, 71, 72, "]", "[", 60, 61, 71, 70, "]", "[", 60, 61, 71, 69, "]", "[", 60, 61, 71, 68, "]", "[", 60, 61, 71, 67, "]", "[", 60, 61, 71, 66, "]", "[", 60, 61, 71 ],
													"reg_data_0000000025" : [ 65, "]", "[", 60, 61, 71, 64, "]", "[", 60, 61, 71, 63, "]", "[", 60, 61, 71, 62, "]", "[", 60, 61, 70, 72, "]", "[", 60, 61, 70, 71, "]", "[", 60, 61, 70, 69, "]", "[", 60, 61, 70, 68, "]", "[", 60, 61, 70, 67, "]", "[", 60, 61, 70, 66, "]", "[", 60, 61, 70, 65, "]", "[", 60, 61, 70, 64, "]", "[", 60, 61, 70, 63, "]", "[", 60, 61, 70, 62, "]", "[", 60, 61, 69, 72, "]", "[", 60, 61, 69, 71, "]", "[", 60, 61, 69, 70, "]", "[", 60, 61, 69, 68, "]", "[", 60, 61, 69, 67, "]", "[", 60, 61, 69, 66, "]", "[", 60, 61, 69, 65, "]", "[", 60, 61, 69, 64, "]", "[", 60, 61, 69, 63, "]", "[", 60, 61, 69, 62, "]", "[", 60, 61, 68, 72, "]", "[", 60, 61, 68, 71, "]", "[", 60, 61, 68, 70, "]", "[", 60, 61, 68, 69, "]", "[", 60, 61, 68, 67, "]", "[", 60, 61, 68, 66, "]", "[", 60, 61, 68, 65, "]", "[", 60, 61, 68, 64, "]", "[", 60, 61, 68, 63, "]", "[", 60, 61, 68, 62, "]", "[", 60, 61, 67, 72, "]", "[", 60, 61, 67, 71, "]", "[", 60, 61, 67, 70, "]", "[", 60, 61, 67, 69, "]", "[", 60, 61, 67, 68, "]", "[", 60, 61, 67, 66, "]", "[", 60, 61, 67, 65, "]", "[", 60, 61, 67, 64, "]", "[", 60, 61, 67, 63, "]", "[", 60, 61, 67, 62, "]", "[", 60, 61, 66, 72, "]", "[", 60, 61, 66, 71, "]", "[", 60, 61, 66, 70, "]", "[", 60, 61, 66, 69, "]", "[", 60, 61, 66, 68, "]", "[", 60, 61, 66, 67, "]", "[", 60, 61, 66, 65, "]", "[", 60, 61, 66, 64, "]", "[", 60, 61, 66, 63, "]", "[", 60, 61, 66, 62, "]", "[", 60, 61, 65, 72, "]", "[", 60, 61, 65, 71, "]", "[", 60, 61, 65, 70, "]", "[", 60, 61, 65, 69, "]", "[", 60, 61, 65, 68, "]", "[", 60, 61, 65, 67, "]", "[", 60, 61, 65, 66, "]", "[", 60, 61, 65, 64, "]", "[", 60, 61, 65, 63, "]", "[", 60, 61, 65, 62, "]", "[", 60, 61, 64, 72, "]", "[", 60, 61, 64, 71, "]", "[", 60, 61, 64, 70, "]", "[", 60, 61, 64, 69, "]", "[", 60, 61, 64, 68, "]", "[", 60, 61, 64, 67, "]", "[", 60, 61, 64, 66, "]", "[", 60, 61, 64, 65, "]", "[", 60, 61, 64, 63, "]", "[", 60, 61, 64, 62, "]", "[", 60, 61, 63, 72, "]", "[", 60, 61, 63, 71, "]", "[", 60, 61, 63, 70, "]", "[", 60, 61, 63, 69, "]", "[", 60, 61, 63, 68, "]", "[", 60, 61, 63, 67, "]", "[", 60, 61, 63, 66, "]", "[", 60, 61, 63, 65, "]", "[", 60, 61, 63, 64, "]", "[", 60, 61, 63, 62, "]", "[", 60, 61, 62, 72, "]", "[", 60, 61, 62, 71, "]", "[", 60, 61, 62, 70, "]", "[", 60, 61, 62, 69, "]", "[", 60, 61, 62, 68, "]", "[", 60, 61, 62, 67, "]", "[", 60, 61, 62, 66, "]", "[", 60, 61, 62, 65, "]", "[", 60, 61, 62, 64, "]", "[", 60, 61, 62, 63, "]" ],
													"reg_data_count" : [ 26 ],
													"saved_object_attributes" : 													{
														"embed" : 1,
														"versionnumber" : 80103
													}
,
													"text" : "bach.reg @embed 1",
													"textcolor" : [ 0.968627450980392, 0.968627450980392, 0.968627450980392, 0.0 ]
												}

											}
, 											{
												"box" : 												{
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
, 											{
												"box" : 												{
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
, 											{
												"box" : 												{
													"id" : "obj-44",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 6,
													"outlettype" : [ "signal", "bang", "int", "float", "", "list" ],
													"patching_rect" : [ 63.5, 145.0, 235.5, 22.0 ],
													"text" : "typeroute~"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-37",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 23.299999999999955, 267.0, 70.0, 22.0 ],
													"text" : "loadmess 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 176.299999999999955, 337.0, 29.5, 22.0 ],
													"text" : "!- 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-39",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 176.299999999999955, 370.0, 120.0, 22.0 ],
													"text" : "gate 1 0"
												}

											}
, 											{
												"box" : 												{
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
, 											{
												"box" : 												{
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
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 1 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"order" : 0,
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"order" : 3,
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-12", 0 ],
													"order" : 5,
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"order" : 6,
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-14", 0 ],
													"order" : 1,
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-15", 0 ],
													"order" : 2,
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"order" : 4,
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"order" : 8,
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"order" : 7,
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"source" : [ "obj-27", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"order" : 0,
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"order" : 1,
													"source" : [ "obj-27", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-17", 0 ],
													"order" : 6,
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"order" : 7,
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"order" : 4,
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"order" : 5,
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"order" : 2,
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"order" : 3,
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"order" : 0,
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"order" : 1,
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 1 ],
													"source" : [ "obj-29", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 0 ],
													"source" : [ "obj-29", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 0 ],
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"source" : [ "obj-33", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-36", 0 ],
													"source" : [ "obj-34", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-38", 0 ],
													"order" : 1,
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-55", 0 ],
													"order" : 0,
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-70", 0 ],
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-34", 0 ],
													"order" : 0,
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 0 ],
													"order" : 1,
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"order" : 1,
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"midpoints" : [ 185.799999999999955, 364.0, 703.799999999999955, 364.0 ],
													"order" : 0,
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 0 ],
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-48", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-41", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-62", 0 ],
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
													"destination" : [ "obj-27", 0 ],
													"source" : [ "obj-44", 5 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"midpoints" : [ 246.199999999999989, 260.0, 241.5, 260.0 ],
													"source" : [ "obj-44", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"midpoints" : [ 202.900000000000006, 260.0, 241.5, 260.0 ],
													"source" : [ "obj-44", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-29", 0 ],
													"midpoints" : [ 159.599999999999994, 260.0, 241.5, 260.0 ],
													"source" : [ "obj-44", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 0 ],
													"source" : [ "obj-44", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"source" : [ "obj-47", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-50", 0 ],
													"source" : [ "obj-47", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 1 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-50", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 0 ],
													"source" : [ "obj-52", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 0 ],
													"source" : [ "obj-54", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"order" : 0,
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"order" : 2,
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-47", 0 ],
													"order" : 1,
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"order" : 3,
													"source" : [ "obj-55", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 1 ],
													"source" : [ "obj-56", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-61", 0 ],
													"source" : [ "obj-58", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-58", 0 ],
													"source" : [ "obj-62", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-65", 0 ],
													"source" : [ "obj-62", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-69", 1 ],
													"source" : [ "obj-62", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-66", 0 ],
													"source" : [ "obj-65", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-68", 0 ],
													"source" : [ "obj-66", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-69", 0 ],
													"source" : [ "obj-66", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-69", 0 ],
													"source" : [ "obj-68", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-72", 0 ],
													"source" : [ "obj-69", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-56", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 1 ],
													"source" : [ "obj-7", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-70", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-59", 0 ],
													"source" : [ "obj-72", 0 ]
												}

											}
 ],
										"boxgroups" : [ 											{
												"boxes" : [ "obj-70", "obj-46" ]
											}
 ],
										"styles" : [ 											{
												"name" : "MOZ-numint",
												"default" : 												{
													"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
													"fontsize" : [ 17.846569953152443 ],
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
									"patching_rect" : [ 8.0, 77.0, 55.0, 55.0 ],
									"varname" : "bp1407591284231",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 8.0, 6.202096939086914, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 3,
											"revision" : 1,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 34.0, 79.0, 505.0, 787.0 ],
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
													"id" : "obj-11",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 215.0, 331.0, 104.0, 22.0 ],
													"text" : "loadmess rand? 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 441.0, 64.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80105
													}
,
													"text" : "bach.flat 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 224.0, 206.0, 117.0, 22.0 ],
													"text" : "loadmess collapse 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 76.0, 331.0, 129.0, 22.0 ],
													"text" : "loadmess solutions :all"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 138.0, 154.0, 89.0, 22.0 ],
													"text" : "loadmess set 4"
												}

											}
, 											{
												"box" : 												{
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
													"patching_rect" : [ 50.0, 184.0, 107.0, 47.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
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
													"patching_rect" : [ 50.0, 364.0, 161.875, 60.0 ],
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"bgmode" : 1,
													"border" : 1,
													"clickthrough" : 0,
													"enablehscroll" : 0,
													"enablevscroll" : 0,
													"id" : "obj-2",
													"lockeddragscroll" : 0,
													"lockedsize" : 0,
													"maxclass" : "bpatcher",
													"name" : "pmc.jbs_rules.maxpat",
													"numinlets" : 9,
													"numoutlets" : 2,
													"offset" : [ 0.0, 0.0 ],
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 50.0, 251.0, 356.0, 54.0 ],
													"varname" : "pmc_jbs_rules[3]",
													"viewvisibility" : 1
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 4,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 100.0, 131.0, 22.0 ],
													"saved_object_attributes" : 													{
														"versionnumber" : 80105
													}
,
													"text" : "bach.arithmser 60 72 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-12",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-22",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 499.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 1 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"midpoints" : [ 224.5, 358.0, 59.5, 358.0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 8.0, 32.202096939086914, 77.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p candidates"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-21",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 481.5, 348.0, 172.0, 22.0 ],
									"text" : "to_chord zoom 130, collapse 2"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 481.5, 321.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 411.5, 348.0, 66.0, 22.0 ],
									"text" : "bach.* 100"
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
									"name" : "moz.chord_view.maxpat",
									"numinlets" : 2,
									"numoutlets" : 1,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "" ],
									"patching_rect" : [ 411.0, 377.0, 151.0, 202.0 ],
									"varname" : "bp556905767840",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 411.5, 203.0, 64.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80105
									}
,
									"text" : "bach.flat 2"
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
									"patching_rect" : [ 8.0, 199.0, 107.0, 47.0 ],
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
									"patching_rect" : [ 411.5, 136.0, 161.875, 60.0 ],
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 12.0,
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 39.625, 376.0, 77.0, 22.0 ],
									"text" : "loadmess 92"
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
									"name" : "pmc.jbs_rules.maxpat",
									"numinlets" : 9,
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 8.0, 443.0, 356.0, 203.0 ],
									"varname" : "pmc_jbs_rules[3]",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Menlo Regular",
									"fontsize" : 11.0,
									"id" : "obj-1",
									"linecount" : 9,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 587.5, 135.854084507042273, 176.0, 122.0 ],
									"text" : "Here is a way to use SUB-GROUP-MK-PROFILE-RULE in order to restitute a given melodic profile, like with MK-FIX-PROFILE-RULE, in a particular index and through several sub-groups."
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"midpoints" : [ 17.5, 657.0, 396.0, 657.0, 396.0, 132.0, 421.0, 132.0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"hidden" : 1,
									"source" : [ "obj-11", 0 ]
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
									"destination" : [ "obj-13", 1 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 5 ],
									"midpoints" : [ 181.5, 430.0, 228.125, 430.0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"hidden" : 1,
									"order" : 1,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"hidden" : 1,
									"order" : 0,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"order" : 1,
									"source" : [ "obj-17", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"midpoints" : [ 421.0, 240.5, 573.5, 240.5 ],
									"order" : 0,
									"source" : [ "obj-17", 0 ]
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
									"destination" : [ "obj-10", 1 ],
									"source" : [ "obj-19", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"midpoints" : [ 49.125, 433.0, 158.0, 433.0, 158.0, 382.0, 181.5, 382.0 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"hidden" : 1,
									"order" : 1,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"hidden" : 1,
									"order" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-24", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"order" : 1,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"midpoints" : [ 149.5, 168.5, 181.5, 168.5 ],
									"order" : 0,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-38", 0 ]
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
									"destination" : [ "obj-47", 0 ],
									"order" : 1,
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"order" : 0,
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 6 ],
									"midpoints" : [ 222.375, 425.5, 270.25, 425.5 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 7 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 8 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"hidden" : 1,
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-52", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-52", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"order" : 1,
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"order" : 0,
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"hidden" : 1,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"midpoints" : [ 221.5, 267.0, 186.0, 267.0, 186.0, 125.0, 149.5, 125.0 ],
									"order" : 1,
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 0 ],
									"order" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 606.5, 413.875862068965489, 194.0, 26.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p sub-group-mk-fix-profile"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 97.0, 73.202096939086914, 68.0, 22.0 ],
					"text" : "key_trigger"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 378.5, 255.0, 54.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80105
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
					"id" : "obj-53",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "moz.nth.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 378.0, 186.0, 120.0, 58.0 ],
					"varname" : "bp262560650131",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 73.0, 143.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 7.843485923656835,
					"id" : "obj-46",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 73.0, 121.854084507042259, 50.0, 17.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80105
					}
,
					"text" : "bach.length"
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
									"reg_data_0000000000" : [ "[", 71, 70, 66, 65, 64, 61, "]", "[", 71, 70, 66, 65, 61, 64, "]", "[", 71, 70, 66, 64, 65, 61, "]", "[", 71, 70, 66, 64, 61, 65, "]", "[", 71, 70, 66, 61, 65, 64, "]", "[", 71, 70, 66, 61, 64, 65, "]", "[", 71, 70, 65, 66, 64, 61, "]", "[", 71, 70, 65, 66, 61, 64, "]", "[", 71, 70, 65, 64, 66, 61, "]", "[", 71, 70, 65, 64, 61, 66, "]", "[", 71, 70, 65, 61, 66, 64, "]", "[", 71, 70, 65, 61, 64, 66, "]", "[", 71, 70, 64, 66, 65, 61, "]", "[", 71, 70, 64, 66, 61, 65, "]", "[", 71, 70, 64, 65, 66, 61, "]", "[", 71, 70, 64, 65, 61, 66, "]", "[", 71, 70, 64, 61, 66, 65, "]", "[", 71, 70, 64, 61, 65, 66, "]", "[", 71, 70, 61, 66, 65, 64, "]", "[", 71, 70, 61, 66, 64, 65, "]", "[", 71, 70, 61, 65, 66, 64, "]", "[", 71, 70, 61, 65, 64, 66, "]", "[", 71, 70, 61, 64, 66, 65, "]", "[", 71, 70, 61, 64, 65, 66, "]", "[", 71, 66, 70, 65, 64, 61, "]", "[", 71, 66, 70, 65, 61, 64, "]", "[", 71, 66, 70, 64, 65, 61, "]", "[", 71, 66, 70, 64, 61, 65, "]", "[", 71, 66, 70, 61, 65, 64, "]", "[", 71, 66, 70, 61, 64, 65, "]", "[", 71, 66, 65, 70, 64, 61, "]", "[", 71, 66, 65, 70, 61, 64, "]", "[", 71, 66, 65, 64, 70, 61, "]", "[", 71, 66, 65, 64, 61, 70, "]", "[", 71, 66, 65, 61, 70, 64, "]", "[", 71, 66, 65, 61, 64, 70, "]", "[", 71, 66, 64, 70, 65, 61, "]", "[", 71, 66, 64, 70, 61, 65, "]", "[", 71, 66, 64, 65, 70, 61, "]", "[", 71, 66, 64, 65, 61, 70, "]", "[", 71, 66, 64, 61, 70, 65, "]", "[", 71, 66, 64, 61, 65, 70, "]", "[", 71, 66, 61, 70, 65, 64, "]", "[", 71, 66, 61, 70, 64, 65, "]", "[", 71, 66, 61, 65, 70, 64, "]", "[", 71, 66, 61, 65, 64, 70, "]", "[", 71, 66, 61, 64, 70, 65, "]", "[", 71, 66, 61, 64, 65, 70, "]", "[", 71, 65, 70, 66, 64, 61, "]", "[", 71, 65, 70, 66, 61, 64, "]", "[", 71, 65, 70, 64, 66, 61, "]", "[", 71, 65, 70, 64, 61, 66, "]", "[", 71, 65, 70, 61, 66, 64, "]", "[", 71, 65, 70, 61, 64, 66, "]", "[", 71, 65, 66, 70, 64, 61, "]", "[", 71, 65, 66, 70, 61, 64, "]", "[", 71, 65, 66, 64, 70, 61, "]", "[", 71, 65, 66, 64, 61, 70, "]", "[", 71, 65, 66, 61, 70, 64, "]", "[", 71, 65, 66, 61, 64, 70, "]", "[", 71, 65, 64, 70, 66, 61, "]", "[", 71, 65, 64, 70, 61, 66, "]", "[", 71, 65, 64, 66, 70, 61, "]", "[", 71, 65, 64, 66, 61, 70, "]", "[", 71, 65, 64, 61, 70, 66, "]", "[", 71, 65, 64, 61, 66, 70, "]", "[", 71, 65, 61, 70, 66, 64, "]", "[", 71, 65, 61, 70, 64, 66, "]", "[", 71, 65, 61, 66, 70, 64, "]", "[", 71, 65, 61, 66, 64, 70, "]", "[", 71, 65, 61, 64, 70, 66, "]", "[", 71, 65, 61, 64, 66, 70, "]", "[", 71, 64, 70, 66, 65, 61, "]", "[", 71, 64, 70, 66, 61, 65, "]", "[", 71, 64, 70, 65, 66, 61, "]", "[", 71, 64, 70, 65, 61, 66, "]", "[", 71, 64, 70, 61, 66, 65, "]", "[", 71, 64, 70, 61, 65, 66, "]", "[", 71, 64, 66, 70, 65, 61, "]", "[", 71, 64, 66, 70, 61, 65, "]", "[", 71, 64, 66, 65, 70, 61, "]", "[", 71, 64, 66, 65, 61, 70, "]", "[", 71, 64, 66, 61, 70, 65, "]", "[", 71, 64, 66, 61, 65, 70, "]", "[", 71, 64, 65, 70, 66, 61, "]", "[", 71, 64, 65, 70, 61, 66, "]", "[", 71, 64, 65, 66, 70, 61, "]", "[", 71, 64, 65, 66, 61, 70, "]", "[", 71, 64, 65, 61, 70, 66, "]", "[", 71, 64, 65, 61, 66, 70, "]", "[", 71, 64, 61, 70, 66, 65, "]", "[", 71, 64, 61, 70, 65, 66, "]", "[", 71, 64, 61, 66, 70, 65, "]", "[", 71, 64, 61, 66, 65, 70, "]", "[", 71, 64, 61, 65, 70, 66, "]", "[", 71, 64, 61, 65, 66, 70, "]", "[", 71, 61, 70, 66, 65, 64, "]", "[", 71, 61, 70, 66, 64, 65, "]", "[", 71, 61, 70, 65, 66, 64, "]", "[", 71, 61, 70, 65, 64, 66, "]", "[", 71, 61, 70, 64, 66, 65, "]", "[", 71, 61, 70, 64, 65, 66, "]", "[", 71, 61, 66, 70, 65, 64, "]", "[", 71, 61, 66, 70, 64, 65, "]", "[", 71, 61, 66, 65, 70, 64, "]", "[", 71, 61, 66, 65, 64, 70, "]", "[", 71, 61, 66, 64, 70, 65, "]", "[", 71, 61, 66, 64, 65, 70, "]", "[", 71, 61, 65, 70, 66, 64, "]", "[", 71, 61, 65, 70, 64, 66, "]", "[", 71, 61, 65, 66, 70, 64, "]", "[", 71, 61, 65, 66, 64, 70, "]", "[", 71, 61, 65, 64, 70, 66, "]", "[", 71, 61, 65, 64, 66, 70, "]", "[", 71, 61, 64, 70, 66, 65, "]", "[", 71, 61, 64, 70, 65, 66, "]", "[", 71, 61, 64, 66, 70, 65, "]", "[", 71, 61, 64, 66, 65, 70, "]", "[", 71, 61, 64, 65, 70, 66, "]", "[", 71, 61, 64, 65, 66, 70, "]", "[", 70, 71, 66, 65, 64, 61, "]", "[", 70, 71, 66, 65, 61, 64, "]", "[", 70, 71, 66, 64, 65, 61, "]", "[", 70, 71, 66, 64, 61, 65, "]", "[", 70, 71, 66, 61, 65, 64, "]", "[", 70, 71, 66, 61, 64, 65, "]", "[", 70, 71, 65, 66, 64, 61, "]", "[", 70, 71, 65, 66, 61, 64, "]", "[", 70, 71, 65, 64, 66, 61, "]", "[", 70, 71, 65, 64, 61, 66, "]", "[", 70, 71, 65, 61, 66, 64, "]", "[", 70, 71, 65, 61, 64, 66, "]", "[", 70, 71, 64, 66, 65, 61, "]", "[", 70, 71, 64, 66, 61, 65, "]", "[", 70, 71, 64, 65, 66, 61, "]", "[", 70, 71, 64, 65, 61, 66, "]", "[", 70, 71, 64, 61, 66, 65, "]", "[", 70, 71, 64, 61, 65, 66, "]", "[", 70, 71, 61, 66, 65, 64, "]", "[", 70, 71, 61, 66, 64, 65, "]", "[", 70, 71, 61, 65, 66, 64, "]", "[", 70, 71, 61, 65, 64, 66, "]", "[", 70, 71, 61, 64, 66, 65, "]", "[", 70, 71, 61, 64, 65, 66, "]", "[", 70, 66, 71, 65, 64, 61, "]", "[", 70, 66, 71, 65, 61, 64, "]", "[", 70, 66, 71, 64, 65, 61, "]", "[", 70, 66, 71, 64, 61, 65, "]", "[", 70, 66, 71, 61, 65, 64, "]", "[", 70, 66, 71, 61, 64, 65, "]", "[", 70, 66, 65, 71, 64, 61, "]", "[", 70, 66, 65, 71, 61, 64, "]", "[", 70, 66, 65, 64, 71, 61, "]", "[", 70, 66, 65, 64, 61, 71, "]", "[", 70, 66, 65, 61, 71, 64, "]", "[", 70, 66, 65, 61, 64, 71, "]", "[", 70, 66, 64, 71, 65, 61, "]", "[", 70, 66, 64, 71, 61, 65, "]", "[", 70, 66, 64, 65, 71, 61, "]", "[", 70, 66, 64, 65, 61, 71, "]", "[", 70, 66, 64, 61, 71, 65, "]", "[", 70, 66, 64, 61, 65, 71, "]", "[", 70, 66, 61, 71, 65, 64, "]", "[", 70, 66, 61, 71, 64, 65, "]", "[", 70, 66, 61, 65, 71, 64, "]", "[", 70, 66, 61, 65, 64, 71, "]", "[", 70, 66, 61, 64, 71, 65, "]", "[", 70, 66, 61, 64, 65, 71, "]", "[", 70, 65, 71, 66, 64, 61, "]", "[", 70, 65, 71, 66, 61, 64, "]", "[", 70, 65, 71, 64, 66, 61, "]", "[", 70, 65, 71, 64, 61, 66, "]", "[", 70, 65, 71, 61, 66, 64, "]", "[", 70, 65, 71, 61, 64, 66, "]", "[", 70, 65, 66, 71, 64, 61, "]", "[", 70, 65, 66, 71, 61, 64, "]", "[", 70, 65, 66, 64, 71, 61, "]", "[", 70, 65, 66, 64, 61, 71, "]", "[", 70, 65, 66, 61, 71, 64, "]", "[", 70, 65, 66, 61, 64, 71, "]", "[", 70, 65, 64, 71, 66, 61, "]", "[", 70, 65, 64, 71, 61, 66, "]", "[", 70, 65, 64, 66, 71, 61, "]", "[", 70, 65, 64, 66, 61, 71, "]", "[", 70, 65, 64, 61, 71, 66, "]", "[", 70, 65, 64, 61, 66, 71, "]", "[", 70, 65, 61, 71, 66, 64, "]", "[", 70, 65, 61, 71, 64, 66, "]", "[", 70, 65, 61, 66, 71, 64, "]", "[", 70, 65, 61, 66, 64, 71, "]", "[", 70, 65, 61, 64, 71, 66, "]", "[", 70, 65, 61, 64, 66, 71, "]", "[", 70, 64, 71, 66, 65, 61, "]", "[", 70, 64, 71, 66, 61, 65, "]", "[", 70, 64, 71, 65, 66, 61, "]", "[", 70, 64, 71, 65, 61, 66, "]", "[", 70, 64, 71, 61, 66, 65, "]", "[", 70, 64, 71, 61, 65, 66, "]", "[", 70, 64, 66, 71, 65, 61, "]", "[", 70, 64, 66, 71, 61, 65, "]", "[", 70, 64, 66, 65, 71, 61, "]", "[", 70, 64, 66, 65, 61, 71, "]", "[", 70, 64, 66, 61, 71, 65, "]", "[", 70, 64, 66, 61, 65, 71, "]", "[", 70, 64, 65, 71, 66, 61, "]", "[", 70, 64, 65, 71, 61, 66, "]", "[", 70, 64, 65, 66, 71, 61, "]", "[", 70, 64, 65, 66, 61, 71, "]", "[", 70, 64, 65, 61, 71, 66, "]", "[", 70, 64, 65, 61, 66, 71, "]", "[", 70, 64, 61, 71, 66, 65, "]", "[", 70, 64, 61, 71, 65, 66, "]", "[", 70, 64, 61, 66, 71, 65, "]", "[", 70, 64, 61, 66, 65, 71, "]", "[", 70, 64, 61, 65, 71, 66, "]", "[", 70, 64, 61, 65, 66, 71, "]", "[", 70, 61, 71, 66, 65, 64, "]", "[", 70, 61, 71, 66, 64, 65, "]", "[", 70, 61, 71, 65, 66, 64, "]", "[", 70, 61, 71, 65, 64, 66, "]", "[", 70, 61, 71, 64, 66, 65, "]", "[", 70, 61, 71, 64, 65, 66, "]", "[", 70, 61, 66, 71, 65, 64, "]", "[", 70, 61, 66, 71, 64, 65, "]", "[", 70, 61, 66, 65, 71, 64, "]", "[", 70, 61, 66, 65, 64, 71, "]", "[", 70, 61, 66, 64, 71, 65, "]", "[", 70, 61, 66, 64, 65, 71, "]", "[", 70, 61, 65, 71, 66, 64, "]", "[", 70, 61, 65, 71, 64, 66, "]", "[", 70, 61, 65, 66, 71, 64, "]", "[", 70, 61, 65, 66, 64, 71, "]", "[", 70, 61, 65, 64, 71, 66, "]", "[", 70, 61, 65, 64, 66, 71, "]", "[", 70, 61, 64, 71, 66, 65, "]", "[", 70, 61, 64, 71, 65, 66, "]", "[", 70, 61, 64, 66, 71, 65, "]", "[", 70, 61, 64, 66, 65, 71, "]", "[", 70, 61, 64, 65, 71, 66, "]", "[", 70, 61, 64, 65, 66, 71, "]", "[", 66, 71, 70, 65, 64, 61, "]", "[", 66, 71, 70, 65, 61, 64, "]", "[", 66, 71, 70, 64, 65, 61, "]", "[", 66, 71, 70, 64, 61, 65, "]", "[", 66, 71, 70, 61, 65, 64, "]", "[", 66, 71, 70, 61, 64, 65, "]", "[", 66, 71, 65, 70, 64, 61, "]", "[", 66, 71, 65, 70, 61, 64, "]", "[", 66, 71, 65, 64, 70, 61, "]", "[", 66, 71, 65, 64, 61, 70, "]", "[", 66, 71, 65, 61, 70, 64, "]", "[", 66, 71, 65, 61, 64, 70, "]", "[", 66, 71, 64, 70, 65, 61, "]", "[", 66, 71, 64, 70, 61, 65, "]", "[", 66, 71, 64, 65, 70, 61, "]", "[", 66, 71, 64, 65, 61, 70, "]", "[", 66, 71, 64, 61, 70, 65, "]", "[", 66, 71, 64, 61, 65, 70, "]", "[", 66, 71, 61, 70, 65, 64, "]", "[", 66, 71, 61, 70, 64, 65, "]", "[", 66, 71, 61, 65, 70, 64, "]", "[", 66, 71, 61, 65, 64, 70, "]", "[", 66, 71, 61, 64, 70, 65, "]", "[", 66, 71, 61, 64, 65, 70, "]", "[", 66, 70, 71, 65, 64, 61, "]", "[", 66, 70, 71, 65, 61, 64, "]", "[", 66, 70, 71, 64, 65, 61, "]", "[", 66, 70, 71, 64, 61, 65, "]", "[", 66, 70, 71, 61, 65, 64, "]", "[", 66, 70, 71, 61, 64, 65, "]", "[", 66, 70, 65, 71, 64, 61, "]", "[", 66, 70, 65, 71, 61, 64, "]", "[", 66, 70, 65, 64, 71, 61, "]", "[", 66, 70, 65, 64, 61, 71, "]", "[", 66, 70, 65, 61, 71, 64, "]", "[", 66, 70, 65, 61, 64, 71, "]", "[", 66, 70, 64, 71, 65, 61, "]", "[", 66, 70, 64, 71, 61, 65, "]", "[", 66, 70, 64, 65, 71, 61, "]", "[", 66, 70, 64, 65, 61, 71, "]", "[", 66, 70, 64, 61, 71, 65, "]", "[", 66, 70, 64, 61, 65, 71, "]", "[", 66, 70, 61, 71, 65, 64, "]", "[", 66, 70, 61, 71, 64, 65, "]", "[", 66, 70, 61, 65, 71, 64, "]", "[", 66, 70, 61, 65, 64, 71, "]", "[", 66, 70, 61, 64, 71, 65, "]", "[", 66, 70, 61, 64, 65, 71, "]", "[", 66, 65, 71, 70, 64, 61, "]", "[", 66, 65, 71, 70, 61, 64, "]", "[", 66, 65, 71, 64, 70, 61, "]", "[", 66, 65, 71, 64, 61, 70, "]", "[", 66, 65, 71, 61, 70, 64, "]", "[", 66, 65, 71, 61, 64, 70, "]", "[", 66, 65, 70, 71, 64, 61, "]", "[", 66, 65, 70, 71, 61, 64, "]", "[", 66, 65, 70, 64, 71, 61, "]", "[", 66, 65, 70, 64, 61, 71, "]", "[", 66, 65, 70, 61, 71, 64, "]", "[", 66, 65, 70, 61, 64, 71, "]", "[", 66, 65, 64, 71, 70, 61, "]", "[", 66, 65, 64, 71, 61, 70, "]", "[", 66, 65, 64, 70, 71, 61, "]", "[", 66, 65, 64, 70, 61, 71, "]", "[", 66, 65, 64, 61, 71, 70, "]", "[", 66, 65, 64, 61, 70, 71, "]", "[", 66, 65, 61, 71, 70, 64, "]", "[", 66, 65, 61, 71, 64, 70, "]", "[", 66, 65, 61, 70, 71, 64, "]", "[", 66, 65, 61, 70, 64, 71, "]", "[", 66, 65, 61, 64, 71, 70, "]", "[", 66, 65, 61, 64, 70, 71, "]", "[", 66, 64, 71, 70, 65, 61, "]", "[", 66, 64, 71, 70, 61, 65, "]", "[", 66, 64, 71, 65, 70, 61, "]", "[", 66, 64, 71, 65, 61, 70, "]", "[", 66, 64, 71, 61, 70, 65, "]", "[", 66, 64, 71, 61, 65, 70, "]", "[", 66, 64, 70, 71, 65, 61, "]", "[", 66, 64, 70, 71, 61, 65, "]", "[", 66, 64, 70, 65, 71, 61, "]", "[", 66, 64, 70, 65, 61, 71, "]", "[", 66, 64, 70, 61, 71, 65, "]", "[", 66, 64, 70, 61, 65, 71, "]", "[", 66, 64, 65, 71, 70, 61, "]", "[", 66, 64, 65, 71, 61, 70, "]", "[", 66, 64, 65, 70, 71, 61, "]", "[", 66, 64, 65, 70, 61, 71, "]", "[", 66, 64, 65, 61, 71, 70, "]", "[", 66, 64, 65, 61, 70, 71, "]", "[", 66, 64, 61, 71, 70, 65, "]", "[", 66, 64, 61, 71, 65, 70, "]", "[", 66, 64, 61, 70, 71, 65, "]", "[", 66, 64, 61, 70, 65, 71, "]", "[", 66, 64, 61, 65, 71, 70, "]", "[", 66, 64, 61, 65, 70, 71, "]", "[", 66, 61, 71, 70, 65, 64, "]", "[", 66, 61, 71, 70, 64, 65, "]", "[", 66, 61, 71, 65, 70, 64, "]", "[", 66, 61, 71, 65, 64, 70, "]", "[", 66, 61, 71, 64, 70, 65, "]", "[", 66, 61, 71, 64, 65, 70, "]", "[", 66, 61, 70, 71, 65, 64, "]", "[", 66, 61, 70, 71, 64, 65, "]", "[", 66, 61, 70, 65, 71, 64, "]", "[", 66, 61, 70, 65, 64, 71, "]", "[", 66, 61, 70, 64, 71, 65, "]", "[", 66, 61, 70, 64, 65, 71, "]", "[", 66, 61, 65, 71, 70, 64, "]", "[", 66, 61, 65, 71, 64, 70, "]", "[", 66, 61, 65, 70, 71, 64, "]", "[", 66, 61, 65, 70, 64, 71, "]", "[", 66, 61, 65, 64, 71, 70, "]", "[", 66, 61, 65, 64, 70, 71, "]", "[", 66, 61, 64, 71, 70, 65, "]", "[", 66, 61, 64, 71, 65, 70, "]", "[", 66, 61, 64, 70, 71, 65, "]", "[", 66, 61, 64, 70, 65, 71, "]", "[", 66, 61, 64, 65, 71, 70, "]", "[", 66, 61, 64, 65, 70, 71, "]", "[", 65, 71, 70, 66, 64, 61, "]", "[", 65, 71, 70, 66, 61, 64, "]", "[", 65, 71, 70, 64, 66, 61, "]", "[", 65, 71, 70, 64, 61, 66, "]", "[", 65, 71, 70, 61, 66, 64, "]", "[", 65, 71, 70, 61, 64, 66, "]", "[", 65, 71, 66, 70, 64, 61, "]", "[", 65, 71, 66, 70, 61, 64, "]", "[", 65, 71, 66, 64, 70, 61, "]", "[", 65, 71, 66, 64, 61, 70, "]", "[", 65, 71, 66, 61, 70, 64, "]", "[", 65, 71, 66, 61, 64, 70, "]", "[", 65, 71, 64, 70, 66, 61, "]", "[", 65, 71, 64, 70, 61, 66, "]", "[", 65, 71, 64, 66, 70, 61, "]", "[", 65, 71, 64, 66, 61, 70, "]", "[", 65, 71, 64, 61, 70, 66, "]", "[", 65, 71, 64, 61, 66, 70, "]", "[", 65, 71, 61, 70, 66, 64, "]", "[", 65, 71, 61, 70, 64, 66, "]", "[", 65, 71, 61, 66, 70, 64, "]", "[", 65, 71, 61, 66, 64, 70, "]", "[", 65, 71, 61, 64, 70, 66, "]", "[", 65, 71, 61, 64, 66, 70, "]", "[", 65, 70, 71, 66, 64, 61, "]", "[", 65, 70, 71, 66, 61, 64, "]", "[", 65, 70, 71, 64, 66, 61, "]", "[", 65, 70, 71, 64, 61, 66, "]", "[", 65, 70, 71, 61, 66, 64, "]", "[", 65, 70, 71, 61, 64, 66, "]", "[", 65, 70, 66, 71, 64, 61, "]", "[", 65, 70, 66, 71, 61, 64, "]", "[", 65, 70, 66, 64, 71, 61, "]", "[", 65, 70, 66, 64, 61, 71, "]", "[", 65, 70, 66, 61, 71, 64, "]", "[", 65, 70, 66, 61, 64, 71, "]", "[", 65, 70, 64, 71, 66, 61, "]", "[", 65, 70, 64, 71, 61, 66, "]", "[", 65, 70, 64, 66, 71, 61, "]", "[", 65, 70, 64, 66, 61, 71, "]", "[", 65, 70, 64, 61, 71, 66, "]", "[", 65, 70, 64, 61, 66, 71, "]", "[", 65, 70, 61, 71, 66, 64, "]", "[", 65, 70, 61, 71, 64, 66, "]", "[", 65, 70, 61, 66, 71, 64, "]", "[", 65, 70, 61, 66, 64, 71, "]", "[", 65, 70, 61, 64, 71, 66, "]", "[", 65, 70, 61, 64, 66, 71, "]", "[", 65, 66, 71, 70, 64, 61, "]", "[", 65, 66, 71, 70, 61, 64, "]", "[", 65, 66, 71, 64, 70, 61, "]", "[", 65, 66, 71, 64, 61, 70, "]", "[", 65, 66, 71, 61, 70, 64, "]", "[", 65, 66, 71, 61, 64, 70, "]", "[", 65, 66, 70, 71, 64, 61, "]", "[", 65, 66, 70, 71, 61, 64, "]", "[", 65, 66, 70, 64, 71, 61, "]", "[", 65, 66, 70, 64, 61, 71, "]", "[", 65, 66, 70, 61, 71, 64, "]", "[", 65, 66, 70, 61, 64, 71, "]", "[", 65, 66, 64, 71, 70, 61, "]", "[", 65, 66, 64, 71, 61, 70, "]", "[", 65, 66, 64, 70, 71, 61, "]", "[", 65, 66, 64, 70, 61, 71, "]", "[", 65, 66, 64, 61, 71, 70, "]", "[", 65, 66, 64, 61, 70, 71, "]", "[", 65, 66, 61, 71, 70, 64, "]", "[", 65, 66, 61, 71, 64, 70, "]", "[", 65, 66, 61, 70, 71, 64, "]", "[", 65, 66, 61, 70, 64, 71, "]", "[", 65, 66, 61, 64, 71, 70, "]", "[", 65, 66, 61, 64, 70, 71, "]", "[", 65, 64, 71, 70, 66, 61, "]", "[", 65, 64, 71, 70, 61, 66, "]", "[", 65, 64, 71, 66, 70, 61, "]", "[", 65, 64, 71, 66, 61, 70, "]", "[", 65, 64, 71, 61, 70, 66, "]", "[", 65, 64, 71, 61, 66, 70, "]", "[", 65, 64, 70, 71, 66, 61, "]", "[", 65, 64, 70, 71, 61, 66, "]", "[", 65, 64, 70, 66, 71, 61, "]", "[", 65, 64, 70, 66, 61, 71, "]", "[", 65, 64, 70, 61, 71, 66, "]", "[", 65, 64, 70, 61, 66, 71, "]", "[", 65, 64, 66, 71, 70, 61, "]", "[", 65, 64, 66, 71, 61, 70, "]", "[", 65, 64, 66, 70, 71, 61, "]", "[", 65, 64, 66, 70, 61, 71, "]", "[", 65, 64, 66, 61, 71, 70, "]", "[", 65, 64, 66, 61, 70, 71, "]", "[", 65, 64, 61, 71, 70, 66, "]", "[", 65, 64, 61, 71, 66, 70, "]", "[", 65, 64, 61, 70, 71, 66, "]", "[", 65, 64, 61, 70, 66, 71, "]", "[", 65, 64, 61, 66, 71, 70, "]", "[", 65, 64, 61, 66, 70, 71, "]", "[", 65, 61, 71, 70, 66, 64, "]", "[", 65, 61, 71, 70, 64, 66, "]", "[", 65, 61, 71, 66, 70, 64, "]", "[", 65, 61, 71, 66, 64, 70, "]", "[", 65, 61, 71, 64, 70, 66, "]", "[", 65, 61, 71, 64, 66, 70, "]", "[", 65, 61, 70, 71, 66, 64, "]", "[", 65, 61, 70, 71, 64, 66, "]", "[", 65, 61, 70, 66, 71, 64, "]", "[", 65, 61, 70, 66, 64, 71, "]", "[", 65, 61, 70, 64, 71, 66, "]", "[", 65, 61, 70, 64, 66, 71, "]", "[", 65, 61, 66, 71, 70, 64, "]", "[", 65, 61, 66, 71, 64, 70, "]", "[", 65, 61, 66, 70, 71, 64, "]", "[", 65, 61, 66, 70, 64, 71, "]", "[", 65, 61, 66, 64, 71, 70, "]", "[", 65, 61, 66, 64, 70, 71, "]", "[", 65, 61, 64, 71, 70, 66, "]", "[", 65, 61, 64, 71, 66, 70, "]", "[", 65, 61, 64, 70, 71, 66, "]", "[", 65, 61, 64, 70, 66, 71, "]", "[", 65, 61, 64, 66, 71, 70, "]", "[", 65, 61, 64, 66, 70, 71, "]", "[", 64, 71, 70, 66, 65, 61, "]", "[", 64, 71, 70, 66, 61, 65, "]", "[", 64, 71, 70, 65, 66, 61, "]", "[", 64, 71, 70, 65, 61, 66, "]", "[", 64, 71, 70, 61, 66, 65, "]", "[", 64, 71, 70, 61, 65, 66, "]", "[", 64, 71, 66, 70, 65, 61, "]", "[", 64, 71, 66, 70, 61, 65, "]", "[", 64, 71, 66, 65, 70, 61, "]", "[", 64, 71, 66, 65, 61, 70, "]", "[", 64, 71, 66, 61, 70, 65, "]", "[", 64, 71, 66, 61, 65, 70, "]", "[", 64, 71, 65, 70, 66, 61, "]", "[", 64, 71, 65, 70, 61, 66, "]", "[", 64, 71, 65, 66, 70, 61, "]", "[", 64, 71, 65, 66, 61, 70, "]", "[", 64, 71, 65, 61, 70, 66, "]", "[", 64, 71, 65, 61, 66, 70, "]", "[", 64, 71, 61, 70, 66, 65, "]", "[", 64, 71, 61, 70, 65, 66, "]", "[", 64, 71, 61, 66, 70, 65, "]", "[", 64, 71, 61, 66, 65, 70, "]", "[", 64, 71, 61, 65, 70, 66, "]", "[", 64, 71, 61, 65, 66, 70, "]", "[", 64, 70, 71, 66, 65, 61, "]", "[", 64, 70, 71, 66, 61, 65, "]", "[", 64, 70, 71, 65, 66, 61, "]", "[", 64, 70, 71, 65, 61, 66, "]", "[", 64, 70, 71, 61, 66, 65, "]", "[", 64, 70, 71, 61, 65, 66, "]", "[", 64, 70, 66, 71, 65, 61, "]", "[", 64, 70, 66, 71, 61, 65, "]" ],
									"reg_data_0000000001" : [ "[", 64, 70, 66, 65, 71, 61, "]", "[", 64, 70, 66, 65, 61, 71, "]", "[", 64, 70, 66, 61, 71, 65, "]", "[", 64, 70, 66, 61, 65, 71, "]", "[", 64, 70, 65, 71, 66, 61, "]", "[", 64, 70, 65, 71, 61, 66, "]", "[", 64, 70, 65, 66, 71, 61, "]", "[", 64, 70, 65, 66, 61, 71, "]", "[", 64, 70, 65, 61, 71, 66, "]", "[", 64, 70, 65, 61, 66, 71, "]", "[", 64, 70, 61, 71, 66, 65, "]", "[", 64, 70, 61, 71, 65, 66, "]", "[", 64, 70, 61, 66, 71, 65, "]", "[", 64, 70, 61, 66, 65, 71, "]", "[", 64, 70, 61, 65, 71, 66, "]", "[", 64, 70, 61, 65, 66, 71, "]", "[", 64, 66, 71, 70, 65, 61, "]", "[", 64, 66, 71, 70, 61, 65, "]", "[", 64, 66, 71, 65, 70, 61, "]", "[", 64, 66, 71, 65, 61, 70, "]", "[", 64, 66, 71, 61, 70, 65, "]", "[", 64, 66, 71, 61, 65, 70, "]", "[", 64, 66, 70, 71, 65, 61, "]", "[", 64, 66, 70, 71, 61, 65, "]", "[", 64, 66, 70, 65, 71, 61, "]", "[", 64, 66, 70, 65, 61, 71, "]", "[", 64, 66, 70, 61, 71, 65, "]", "[", 64, 66, 70, 61, 65, 71, "]", "[", 64, 66, 65, 71, 70, 61, "]", "[", 64, 66, 65, 71, 61, 70, "]", "[", 64, 66, 65, 70, 71, 61, "]", "[", 64, 66, 65, 70, 61, 71, "]", "[", 64, 66, 65, 61, 71, 70, "]", "[", 64, 66, 65, 61, 70, 71, "]", "[", 64, 66, 61, 71, 70, 65, "]", "[", 64, 66, 61, 71, 65, 70, "]", "[", 64, 66, 61, 70, 71, 65, "]", "[", 64, 66, 61, 70, 65, 71, "]", "[", 64, 66, 61, 65, 71, 70, "]", "[", 64, 66, 61, 65, 70, 71, "]", "[", 64, 65, 71, 70, 66, 61, "]", "[", 64, 65, 71, 70, 61, 66, "]", "[", 64, 65, 71, 66, 70, 61, "]", "[", 64, 65, 71, 66, 61, 70, "]", "[", 64, 65, 71, 61, 70, 66, "]", "[", 64, 65, 71, 61, 66, 70, "]", "[", 64, 65, 70, 71, 66, 61, "]", "[", 64, 65, 70, 71, 61, 66, "]", "[", 64, 65, 70, 66, 71, 61, "]", "[", 64, 65, 70, 66, 61, 71, "]", "[", 64, 65, 70, 61, 71, 66, "]", "[", 64, 65, 70, 61, 66, 71, "]", "[", 64, 65, 66, 71, 70, 61, "]", "[", 64, 65, 66, 71, 61, 70, "]", "[", 64, 65, 66, 70, 71, 61, "]", "[", 64, 65, 66, 70, 61, 71, "]", "[", 64, 65, 66, 61, 71, 70, "]", "[", 64, 65, 66, 61, 70, 71, "]", "[", 64, 65, 61, 71, 70, 66, "]", "[", 64, 65, 61, 71, 66, 70, "]", "[", 64, 65, 61, 70, 71, 66, "]", "[", 64, 65, 61, 70, 66, 71, "]", "[", 64, 65, 61, 66, 71, 70, "]", "[", 64, 65, 61, 66, 70, 71, "]", "[", 64, 61, 71, 70, 66, 65, "]", "[", 64, 61, 71, 70, 65, 66, "]", "[", 64, 61, 71, 66, 70, 65, "]", "[", 64, 61, 71, 66, 65, 70, "]", "[", 64, 61, 71, 65, 70, 66, "]", "[", 64, 61, 71, 65, 66, 70, "]", "[", 64, 61, 70, 71, 66, 65, "]", "[", 64, 61, 70, 71, 65, 66, "]", "[", 64, 61, 70, 66, 71, 65, "]", "[", 64, 61, 70, 66, 65, 71, "]", "[", 64, 61, 70, 65, 71, 66, "]", "[", 64, 61, 70, 65, 66, 71, "]", "[", 64, 61, 66, 71, 70, 65, "]", "[", 64, 61, 66, 71, 65, 70, "]", "[", 64, 61, 66, 70, 71, 65, "]", "[", 64, 61, 66, 70, 65, 71, "]", "[", 64, 61, 66, 65, 71, 70, "]", "[", 64, 61, 66, 65, 70, 71, "]", "[", 64, 61, 65, 71, 70, 66, "]", "[", 64, 61, 65, 71, 66, 70, "]", "[", 64, 61, 65, 70, 71, 66, "]", "[", 64, 61, 65, 70, 66, 71, "]", "[", 64, 61, 65, 66, 71, 70, "]", "[", 64, 61, 65, 66, 70, 71, "]", "[", 61, 71, 70, 66, 65, 64, "]", "[", 61, 71, 70, 66, 64, 65, "]", "[", 61, 71, 70, 65, 66, 64, "]", "[", 61, 71, 70, 65, 64, 66, "]", "[", 61, 71, 70, 64, 66, 65, "]", "[", 61, 71, 70, 64, 65, 66, "]", "[", 61, 71, 66, 70, 65, 64, "]", "[", 61, 71, 66, 70, 64, 65, "]", "[", 61, 71, 66, 65, 70, 64, "]", "[", 61, 71, 66, 65, 64, 70, "]", "[", 61, 71, 66, 64, 70, 65, "]", "[", 61, 71, 66, 64, 65, 70, "]", "[", 61, 71, 65, 70, 66, 64, "]", "[", 61, 71, 65, 70, 64, 66, "]", "[", 61, 71, 65, 66, 70, 64, "]", "[", 61, 71, 65, 66, 64, 70, "]", "[", 61, 71, 65, 64, 70, 66, "]", "[", 61, 71, 65, 64, 66, 70, "]", "[", 61, 71, 64, 70, 66, 65, "]", "[", 61, 71, 64, 70, 65, 66, "]", "[", 61, 71, 64, 66, 70, 65, "]", "[", 61, 71, 64, 66, 65, 70, "]", "[", 61, 71, 64, 65, 70, 66, "]", "[", 61, 71, 64, 65, 66, 70, "]", "[", 61, 70, 71, 66, 65, 64, "]", "[", 61, 70, 71, 66, 64, 65, "]", "[", 61, 70, 71, 65, 66, 64, "]", "[", 61, 70, 71, 65, 64, 66, "]", "[", 61, 70, 71, 64, 66, 65, "]", "[", 61, 70, 71, 64, 65, 66, "]", "[", 61, 70, 66, 71, 65, 64, "]", "[", 61, 70, 66, 71, 64, 65, "]", "[", 61, 70, 66, 65, 71, 64, "]", "[", 61, 70, 66, 65, 64, 71, "]", "[", 61, 70, 66, 64, 71, 65, "]", "[", 61, 70, 66, 64, 65, 71, "]", "[", 61, 70, 65, 71, 66, 64, "]", "[", 61, 70, 65, 71, 64, 66, "]", "[", 61, 70, 65, 66, 71, 64, "]", "[", 61, 70, 65, 66, 64, 71, "]", "[", 61, 70, 65, 64, 71, 66, "]", "[", 61, 70, 65, 64, 66, 71, "]", "[", 61, 70, 64, 71, 66, 65, "]", "[", 61, 70, 64, 71, 65, 66, "]", "[", 61, 70, 64, 66, 71, 65, "]", "[", 61, 70, 64, 66, 65, 71, "]", "[", 61, 70, 64, 65, 71, 66, "]", "[", 61, 70, 64, 65, 66, 71, "]", "[", 61, 66, 71, 70, 65, 64, "]", "[", 61, 66, 71, 70, 64, 65, "]", "[", 61, 66, 71, 65, 70, 64, "]", "[", 61, 66, 71, 65, 64, 70, "]", "[", 61, 66, 71, 64, 70, 65, "]", "[", 61, 66, 71, 64, 65, 70, "]", "[", 61, 66, 70, 71, 65, 64, "]", "[", 61, 66, 70, 71, 64, 65, "]", "[", 61, 66, 70, 65, 71, 64, "]", "[", 61, 66, 70, 65, 64, 71, "]", "[", 61, 66, 70, 64, 71, 65, "]", "[", 61, 66, 70, 64, 65, 71, "]", "[", 61, 66, 65, 71, 70, 64, "]", "[", 61, 66, 65, 71, 64, 70, "]", "[", 61, 66, 65, 70, 71, 64, "]", "[", 61, 66, 65, 70, 64, 71, "]", "[", 61, 66, 65, 64, 71, 70, "]", "[", 61, 66, 65, 64, 70, 71, "]", "[", 61, 66, 64, 71, 70, 65, "]", "[", 61, 66, 64, 71, 65, 70, "]", "[", 61, 66, 64, 70, 71, 65, "]", "[", 61, 66, 64, 70, 65, 71, "]", "[", 61, 66, 64, 65, 71, 70, "]", "[", 61, 66, 64, 65, 70, 71, "]", "[", 61, 65, 71, 70, 66, 64, "]", "[", 61, 65, 71, 70, 64, 66, "]", "[", 61, 65, 71, 66, 70, 64, "]", "[", 61, 65, 71, 66, 64, 70, "]", "[", 61, 65, 71, 64, 70, 66, "]", "[", 61, 65, 71, 64, 66, 70, "]", "[", 61, 65, 70, 71, 66, 64, "]", "[", 61, 65, 70, 71, 64, 66, "]", "[", 61, 65, 70, 66, 71, 64, "]", "[", 61, 65, 70, 66, 64, 71, "]", "[", 61, 65, 70, 64, 71, 66, "]", "[", 61, 65, 70, 64, 66, 71, "]", "[", 61, 65, 66, 71, 70, 64, "]", "[", 61, 65, 66, 71, 64, 70, "]", "[", 61, 65, 66, 70, 71, 64, "]", "[", 61, 65, 66, 70, 64, 71, "]", "[", 61, 65, 66, 64, 71, 70, "]", "[", 61, 65, 66, 64, 70, 71, "]", "[", 61, 65, 64, 71, 70, 66, "]", "[", 61, 65, 64, 71, 66, 70, "]", "[", 61, 65, 64, 70, 71, 66, "]", "[", 61, 65, 64, 70, 66, 71, "]", "[", 61, 65, 64, 66, 71, 70, "]", "[", 61, 65, 64, 66, 70, 71, "]", "[", 61, 64, 71, 70, 66, 65, "]", "[", 61, 64, 71, 70, 65, 66, "]", "[", 61, 64, 71, 66, 70, 65, "]", "[", 61, 64, 71, 66, 65, 70, "]", "[", 61, 64, 71, 65, 70, 66, "]", "[", 61, 64, 71, 65, 66, 70, "]", "[", 61, 64, 70, 71, 66, 65, "]", "[", 61, 64, 70, 71, 65, 66, "]", "[", 61, 64, 70, 66, 71, 65, "]", "[", 61, 64, 70, 66, 65, 71, "]", "[", 61, 64, 70, 65, 71, 66, "]", "[", 61, 64, 70, 65, 66, 71, "]", "[", 61, 64, 66, 71, 70, 65, "]", "[", 61, 64, 66, 71, 65, 70, "]", "[", 61, 64, 66, 70, 71, 65, "]", "[", 61, 64, 66, 70, 65, 71, "]", "[", 61, 64, 66, 65, 71, 70, "]", "[", 61, 64, 66, 65, 70, 71, "]", "[", 61, 64, 65, 71, 70, 66, "]", "[", 61, 64, 65, 71, 66, 70, "]", "[", 61, 64, 65, 70, 71, 66, "]", "[", 61, 64, 65, 70, 66, 71, "]", "[", 61, 64, 65, 66, 71, 70, "]", "[", 61, 64, 65, 66, 70, 71, "]" ],
									"reg_data_count" : [ 2 ],
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
					"patching_rect" : [ 9.0, 110.0, 55.0, 55.0 ],
					"varname" : "bp1407591284231",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 9.0, 47.202096939086914, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
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
						"rect" : [ 34.0, 79.0, 505.0, 787.0 ],
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
									"id" : "obj-19",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 246.0, 637.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 215.0, 591.0, 104.0, 22.0 ],
									"text" : "loadmess rand? 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 701.0, 64.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80105
									}
,
									"text" : "bach.flat 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 81.625, 345.0, 29.5, 22.0 ],
									"text" : "t b i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 134.25, 351.0, 113.0, 22.0 ],
									"text" : "(60 62 63 67 68 69)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 81.625, 321.0, 77.0, 22.0 ],
									"text" : "loadmess 64"
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
									"patching_rect" : [ 50.0, 382.0, 356.0, 203.0 ],
									"varname" : "pmc_jbs_rules[1]",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 224.0, 206.0, 117.0, 22.0 ],
									"text" : "loadmess collapse 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 76.0, 591.0, 129.0, 22.0 ],
									"text" : "loadmess solutions :all"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 138.0, 154.0, 89.0, 22.0 ],
									"text" : "loadmess set 6"
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
									"patching_rect" : [ 50.0, 184.0, 107.0, 47.0 ],
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
									"patching_rect" : [ 50.0, 624.0, 161.875, 60.0 ],
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
									"id" : "obj-2",
									"lockeddragscroll" : 0,
									"lockedsize" : 0,
									"maxclass" : "bpatcher",
									"name" : "pmc.jbs_rules.maxpat",
									"numinlets" : 9,
									"numoutlets" : 2,
									"offset" : [ 0.0, 0.0 ],
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 50.0, 251.0, 356.0, 54.0 ],
									"varname" : "pmc_jbs_rules[3]",
									"viewvisibility" : 1
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 131.0, 22.0 ],
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
									"id" : "obj-12",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
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
									"patching_rect" : [ 50.0, 759.0, 30.0, 30.0 ]
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
									"destination" : [ "obj-6", 1 ],
									"source" : [ "obj-10", 1 ]
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
									"destination" : [ "obj-18", 0 ],
									"midpoints" : [ 224.5, 618.0, 59.5, 618.0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-12", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 1 ],
									"source" : [ "obj-19", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
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
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 2 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 9.0, 73.202096939086914, 77.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p candidates"
				}

			}
, 			{
				"box" : 				{
					"hidden" : 1,
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 448.5, 281.0, 172.0, 22.0 ],
					"text" : "to_chord zoom 130, collapse 2"
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
					"patching_rect" : [ 623.9375, 432.381355932203405, 117.0, 22.0 ],
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
					"id" : "obj-11",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "moz.ezmidi_instr.maxpat",
					"numinlets" : 5,
					"numoutlets" : 6,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "", "" ],
					"patching_rect" : [ 622.0, 456.0, 172.0, 56.0 ],
					"varname" : "bp314334572207",
					"viewvisibility" : 1
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
					"patching_rect" : [ 448.5, 254.0, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 378.5, 281.0, 66.0, 22.0 ],
					"text" : "bach.* 100"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-2",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "moz.chord_view.maxpat",
					"numinlets" : 2,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 378.0, 310.0, 151.0, 202.0 ],
					"varname" : "bp556905767840",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 378.5, 136.0, 64.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80105
					}
,
					"text" : "bach.flat 2"
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
					"patching_rect" : [ 9.0, 181.5, 107.0, 47.0 ],
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
					"patching_rect" : [ 378.5, 69.0, 161.875, 60.0 ],
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-1",
					"linecount" : 28,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 551.46875, 32.5, 326.0, 365.0 ],
					"text" : "SUB-GROUP-MK-PROFILE-RULE [2] asks the engine to put out a solution in which, for each sub-groups, the nth (put in 'nth-?')\nhas to be identical to follow the profile extracted from the bpf [3]. \nThat means here that all the first elements (if nth is equal to zero) of all the sub-lists will take the order given by the profile.\n\nIn the NUM-BOX [1] choose how many notes have to constitute your profile. \nThen in the 2D-EDITOR [3] draw the curve you want to be the model of the profile. \nIn [a] you have to put the lowest note and in [b] the highest of the resulting profile.\n\nEvaluate the CHORD-EDITOR [4] and scroll through the succesive chords in order to see the results.\n\nYou can also evaluate the second 2D-EDITOR [c], produced by the g-first abstraction (it won't work if you change the 'nth-?' input of the rule) and see that the result follows as much as possible the original profile.\n\nFinally, please open the 'sub-group-mk-fix-profile' abstraction."
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
					"patching_rect" : [ 4.423917060628419, 2.202096939086914, 483.0, 43.0 ],
					"text" : "Sub-group-mk-profile rule"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 40.625, 243.0, 77.0, 22.0 ],
					"text" : "loadmess 92"
				}

			}
, 			{
				"box" : 				{
					"bgmode" : 1,
					"border" : 1,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-10",
					"lockeddragscroll" : 0,
					"lockedsize" : 0,
					"maxclass" : "bpatcher",
					"name" : "pmc.jbs_rules.maxpat",
					"numinlets" : 9,
					"numoutlets" : 2,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 9.0, 310.0, 356.0, 203.0 ],
					"varname" : "pmc_jbs_rules[3]",
					"viewvisibility" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"midpoints" : [ 18.5, 523.0, 371.25, 523.0, 371.25, 51.0, 388.0, 51.0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 5 ],
					"midpoints" : [ 182.5, 297.0, 229.125, 297.0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"midpoints" : [ 182.5, 124.0, 136.5, 124.0 ],
					"order" : 1,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"order" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"order" : 1,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"midpoints" : [ 388.0, 168.0, 444.0, 168.0, 444.0, 150.0, 458.0, 150.0 ],
					"order" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"midpoints" : [ 50.125, 300.0, 159.0, 300.0, 159.0, 249.0, 182.5, 249.0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"hidden" : 1,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-27", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-45", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"hidden" : 1,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 316.125, 240.899854120895498, 358.125, 240.899854120895498, 358.125, 148.0, 223.5, 148.0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-34", 0 ]
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
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"order" : 1,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"order" : 0,
					"source" : [ "obj-43", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 6 ],
					"midpoints" : [ 223.5, 288.449927060447749, 271.25, 288.449927060447749 ],
					"source" : [ "obj-45", 0 ]
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
					"destination" : [ "obj-10", 7 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 8 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"hidden" : 1,
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"order" : 1,
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"midpoints" : [ 18.5, 168.0, 69.0, 168.0, 69.0, 114.0, 82.5, 114.0 ],
					"order" : 0,
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"midpoints" : [ 106.5, 102.452096939086914, 18.5, 102.452096939086914 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"midpoints" : [ 458.0, 415.0, 415.5, 415.0 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"hidden" : 1,
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-11::obj-23" : [ "vst~[6]", "vst~[1]", 0 ],
			"obj-30::obj-6::obj-184::obj-120" : [ "textedit[5]", "textedit", 0 ],
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
				"name" : "bach.rev.mxo",
				"type" : "iLaX"
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
				"name" : "bach.scale.maxpat",
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
				"name" : "bach.slot.mxo",
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
				"name" : "jbs_block_bpf_profile.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_pmc",
				"patcherrelativepath" : "../../../../../patchers/pw4m_pmc",
				"type" : "JSON",
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
				"name" : "moz.ezbpf2slot.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../../../../patchers/utilities",
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
