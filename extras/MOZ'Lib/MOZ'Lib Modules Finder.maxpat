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
		"rect" : [ 34.0, 79.0, 700.0, 325.0 ],
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
		"enablevscroll" : 0,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"title" : "MOZfinder",
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 490.5, 585.0, 87.0, 22.0 ],
					"text" : "sprintf moz.%s"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 950.0, 150.999999999999972, 94.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 512.5, 235.0, 75.0, 19.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.theme_textcolor"
						}

					}
,
					"text" : "Utilities:",
					"varname" : "autohelp_top_digest[9]"
				}

			}
, 			{
				"box" : 				{
					"button" : 1,
					"fontface" : 0,
					"fontname" : "Andale Mono",
					"fontsize" : 11.595186999999999,
					"id" : "obj-16",
					"maxclass" : "tab",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 950.0, 394.0, 128.0, 67.0 ],
					"tabs" : [ "lisp.edit", "lisp.lore" ],
					"truncate" : 0
				}

			}
, 			{
				"box" : 				{
					"button" : 1,
					"fontface" : 0,
					"fontname" : "Andale Mono",
					"fontsize" : 11.595186999999999,
					"htabcolor" : [ 0.996078431372549, 0.643137254901961, 0.0, 1.0 ],
					"id" : "obj-24",
					"maxclass" : "tab",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 950.0, 182.0, 117.0, 67.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 512.5, 250.0, 159.0, 54.0 ],
					"tabcolor" : [ 0.345098039215686, 0.345098039215686, 0.345098039215686, 1.0 ],
					"tabs" : [ "LISPedit", "LISPlore" ],
					"truncate" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 3,
					"fontname" : "Menlo Regular",
					"fontsize" : 13.0,
					"id" : "obj-11",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 746.0, 101.999999999999972, 142.0, 37.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 512.5, 48.6875, 165.0, 22.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.theme_textcolor"
						}

					}
,
					"text" : "PWforMax (advanced):",
					"varname" : "autohelp_top_digest[8]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 490.5, 649.0, 110.0, 22.0 ],
					"text" : "sprintf %s.maxhelp"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 490.5, 698.0, 79.0, 22.0 ],
					"text" : "prepend load"
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
					"patching_rect" : [ 384.0, 11.6875, 141.0, 17.0 ],
					"text" : "moz.resolution-helpfiles-moz 700 325"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.0,
					"hidden" : 1,
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 384.0, 34.833070721870399, 48.0, 17.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"hidden" : 1,
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 539.0, 58.6875, 60.0, 23.0 ],
					"text" : "onecopy"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"id" : "obj-30",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 223.5, 367.0, 114.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 317.0, 304.0, 114.0, 19.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.theme_textcolor"
						}

					}
,
					"text" : "λ -> Lisp inside",
					"varname" : "autohelp_top_digest[7]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 36.0,
					"id" : "obj-25",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 107.0, 24.6875, 138.0, 47.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 99.0, 3.6875, 138.0, 47.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.theme_textcolor"
						}

					}
,
					"text" : "finder",
					"varname" : "autohelp_top_digest[3]"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"fontsize" : 48.0,
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 23.0, 24.6875, 95.0, 60.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 14.0, 7.6875, 95.0, 60.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.theme_textcolor"
						}

					}
,
					"text" : "MOZ",
					"varname" : "autohelp_top_digest[6]"
				}

			}
, 			{
				"box" : 				{
					"button" : 1,
					"fontface" : 0,
					"fontname" : "Andale Mono",
					"fontsize" : 11.595186999999999,
					"id" : "obj-20",
					"maxclass" : "tab",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 753.0, 394.0, 156.0, 184.0 ],
					"tabs" : [ "pmc.domain", "pmc.engine", "pmc.rule", "pmc.jbs_rules", "pmc.looper", "pmc.rule-tester", "smc.engine" ],
					"truncate" : 0
				}

			}
, 			{
				"box" : 				{
					"button" : 1,
					"fontface" : 0,
					"fontname" : "Andale Mono",
					"fontsize" : 11.595186999999999,
					"htabcolor" : [ 0.996078431372549, 0.643137254901961, 0.0, 1.0 ],
					"id" : "obj-21",
					"maxclass" : "tab",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 753.0, 182.0, 145.0, 184.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 512.5, 88.0, 159.0, 141.0 ],
					"tabcolor" : [ 0.345098039215686, 0.345098039215686, 0.345098039215686, 1.0 ],
					"tabs" : [ "PMCdomain", "chainedPMC", "PMCrules", "JBSrules", "PMClooper", "PMCrule-tester", "SMCengine" ],
					"truncate" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"id" : "obj-22",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 753.0, 150.999999999999972, 114.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 512.5, 73.999999999999972, 101.0, 19.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.theme_textcolor"
						}

					}
,
					"text" : "PWConstraints:",
					"varname" : "autohelp_top_digest[5]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 711.0, 352.0, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 480.0, 48.6875, 5.0, 255.3125 ]
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Andale Mono",
					"fontsize" : 11.595186999999999,
					"id" : "obj-12",
					"maxclass" : "tab",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 208.0, 415.0, 156.0, 158.0 ],
					"tabs" : [ "transpoform", "remap_notes", "remap_symbols", "interpolate", "rotate", "deviate", "hybridize", "reflect", "double-reflect", "minmax_notes", "pitch_rules", "tonal_answer" ],
					"truncate" : 0
				}

			}
, 			{
				"box" : 				{
					"button" : 1,
					"fontface" : 0,
					"fontname" : "Andale Mono",
					"fontsize" : 11.595186999999999,
					"htabcolor" : [ 0.996078431372549, 0.643137254901961, 0.0, 1.0 ],
					"id" : "obj-13",
					"maxclass" : "tab",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 208.0, 177.0, 145.0, 184.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 301.0, 88.0, 145.0, 216.0 ],
					"tabcolor" : [ 0.345098039215686, 0.345098039215686, 0.345098039215686, 1.0 ],
					"tabs" : [ "TRANSPOform", "REMAPnotes", "REMAPsymbols", "INTERPOLATE", "ROTATE λ", "DEVIATE λ", "HYBRIDIZE λ", "REFLECT λ", "doubleREFLECT λ", "MINMAXnotes λ", "pitchRULES λ", "TONALanswer λ" ],
					"truncate" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 208.0, 162.999999999999972, 94.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 301.0, 73.999999999999972, 94.0, 19.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.theme_textcolor"
						}

					}
,
					"text" : "Transformers:",
					"varname" : "autohelp_top_digest[4]"
				}

			}
, 			{
				"box" : 				{
					"button" : 1,
					"fontface" : 0,
					"fontname" : "Andale Mono",
					"fontsize" : 11.595186999999999,
					"id" : "obj-2",
					"maxclass" : "tab",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 383.0, 366.0, 140.0, 72.0 ],
					"tabs" : [ "ezmidi_instr", "drop_xml", "at_text_toggle", "nth", "safe" ],
					"truncate" : 0
				}

			}
, 			{
				"box" : 				{
					"button" : 1,
					"fontface" : 0,
					"fontname" : "Andale Mono",
					"fontsize" : 11.595186999999999,
					"htabcolor" : [ 0.996078431372549, 0.643137254901961, 0.0, 1.0 ],
					"id" : "obj-4",
					"maxclass" : "tab",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 383.0, 278.0, 140.0, 72.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 182.0, 211.666666656732559, 99.0, 92.333333343267441 ],
					"tabcolor" : [ 0.345098039215686, 0.345098039215686, 0.345098039215686, 1.0 ],
					"tabs" : [ "ezMIDIinstr", "DROPxml", "@textToggle", "MOZnth", "MOZsafe" ],
					"truncate" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"id" : "obj-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 383.0, 264.0, 94.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 182.0, 197.5, 75.0, 19.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.theme_textcolor"
						}

					}
,
					"text" : "Utilities:",
					"varname" : "autohelp_top_digest[2]"
				}

			}
, 			{
				"box" : 				{
					"button" : 1,
					"fontface" : 0,
					"fontname" : "Andale Mono",
					"fontsize" : 11.595186999999999,
					"id" : "obj-17",
					"maxclass" : "tab",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 28.0, 389.0, 156.0, 184.0 ],
					"tabs" : [ "make_notes", "draw_notes", "draw_graph", "collector", "rhythmic_collector", "harmonic_fields", "time_tap" ],
					"truncate" : 0
				}

			}
, 			{
				"box" : 				{
					"button" : 1,
					"fontface" : 0,
					"fontname" : "Andale Mono",
					"fontsize" : 11.595186999999999,
					"htabcolor" : [ 0.996078431372549, 0.643137254901961, 0.0, 1.0 ],
					"id" : "obj-18",
					"maxclass" : "tab",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 28.0, 177.0, 145.0, 184.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 19.0, 88.0, 145.0, 216.0 ],
					"tabcolor" : [ 0.345098039215686, 0.345098039215686, 0.345098039215686, 1.0 ],
					"tabs" : [ "MAKEnotes", "DRAWnotes", "DRAWgraph", "COLLECTOR", "rhythmicCOLLECTOR", "HARMONICfields", "TIMEtap" ],
					"truncate" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 28.0, 162.999999999999972, 81.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 19.0, 73.999999999999972, 81.0, 19.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.theme_textcolor"
						}

					}
,
					"text" : "Generators:",
					"varname" : "autohelp_top_digest[1]"
				}

			}
, 			{
				"box" : 				{
					"button" : 1,
					"fontface" : 0,
					"fontname" : "Andale Mono",
					"fontsize" : 11.595186999999999,
					"id" : "obj-6",
					"maxclass" : "tab",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 552.0, 361.0, 141.0, 69.0 ],
					"tabs" : [ "chord_view", "score_view", "time_view", "meta_view", "graph_view" ],
					"truncate" : 0
				}

			}
, 			{
				"box" : 				{
					"fontface" : 1,
					"fontname" : "Andale Mono",
					"fontsize" : 11.0,
					"id" : "obj-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 552.0, 184.499999999999972, 94.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 182.0, 73.999999999999972, 75.0, 19.0 ],
					"saved_attribute_attributes" : 					{
						"textcolor" : 						{
							"expression" : "themecolor.theme_textcolor"
						}

					}
,
					"text" : "Editors:",
					"varname" : "autohelp_top_digest"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 401.0, 680.0, 81.0, 22.0 ],
					"text" : "prepend help"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"hidden" : 1,
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 490.5, 734.0, 53.0, 22.0 ],
					"text" : "pcontrol"
				}

			}
, 			{
				"box" : 				{
					"button" : 1,
					"fontface" : 0,
					"fontname" : "Andale Mono",
					"fontsize" : 11.595186999999999,
					"htabcolor" : [ 0.996078431372549, 0.643137254901961, 0.0, 1.0 ],
					"id" : "obj-5",
					"maxclass" : "tab",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 552.0, 198.5, 99.0, 98.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 182.0, 88.0, 99.0, 108.0 ],
					"tabcolor" : [ 0.345098039215686, 0.345098039215686, 0.345098039215686, 1.0 ],
					"tabs" : [ "CHORDview", "SCOREview", "TIMEview", "METAview", "GRAPHview" ],
					"truncate" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-16", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-17", 1 ]
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
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-20", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"hidden" : 1,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-31", 0 ]
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
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
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
				"name" : "bach.args.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.expr.mxo",
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
				"name" : "bach.round.maxpat",
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
				"name" : "moz.resolution-helpfiles-moz.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../../patchers/utilities",
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
