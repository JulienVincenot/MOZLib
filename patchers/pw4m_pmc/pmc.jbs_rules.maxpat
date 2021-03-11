{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 8,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 350.0, -909.0, 766.0, 782.0 ],
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
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "int", "int" ],
					"patching_rect" : [ 157.0, 94.0, 48.0, 22.0 ],
					"text" : "change"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 432.251261313756231, 651.999998315376274, 29.5, 22.0 ],
					"text" : "0 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 432.251261313756231, 677.999998315376274, 85.0, 22.0 ],
					"text" : "prepend offset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 432.5845947265625, 705.791290283203125, 67.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"handoff" : "",
					"hilite" : 0,
					"id" : "obj-70",
					"maxclass" : "ubutton",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "bang", "bang", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 216.917928059895758, 543.0, 33.0, 42.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, -2.0, 97.0, 29.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-72",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 294.0845947265625, 655.791290283203125, 52.0, 22.0 ],
					"text" : "288 73"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "bang" ],
					"patching_rect" : [ 221.5845947265625, 622.0, 230.0, 22.0 ],
					"text" : "bpatcher-resize-gizmo (356 203) (356 54)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 432.5845947265625, 559.0, 47.0, 22.0 ],
					"text" : "getsize"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-75",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 221.5845947265625, 593.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-76",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 432.5845947265625, 589.0, 103.0, 22.0 ],
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
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1928.0, 1188.7579345703125, 107.0, 22.0 ],
					"text" : "bach.prepend JBS"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 602.0, 242.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "toto" ],
					"patching_rect" : [ 133.333333333333314, 687.0, 55.0, 22.0 ],
					"text" : "t b b toto"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1928.0, 1118.7579345703125, 55.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"versionnumber" : 80102
					}
,
					"text" : "bach.reg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1928.0, 1153.0, 79.0, 22.0 ],
					"text" : "bach.filternull"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 365.7513427734375, 207.0, 131.0, 20.0 ],
					"text" : "DO NO TOUCH THIS !",
					"textcolor" : [ 0.996078431372549, 0.027450980392157, 0.027450980392157, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 1715.1666259765625, 957.424560546875, 77.0, 22.0 ],
					"text" : "bach.change"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 1467.1666259765625, 957.424560546875, 77.0, 22.0 ],
					"text" : "bach.change"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-56",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 11.0, 221.0, 29.5, 22.0 ],
					"text" : "t l b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "bang" ],
					"patching_rect" : [ 40.0, 378.0, 65.0, 22.0 ],
					"text" : "onebang 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1442.0, 1162.0, 118.0, 22.0 ],
					"text" : "bach.filternull @out t"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 10.0, 520.6666259765625, 204.0, 22.0 ],
					"text" : "route bypass collapse cluster_format"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 10.0, 634.0, 29.5, 22.0 ],
					"text" : "!- 1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.196078431372549, 0.196078431372549, 0.196078431372549, 0.25 ],
					"fontname" : "Menlo Regular",
					"id" : "obj-17",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 10.0, 602.0, 71.584716796875, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 104.0, 4.0, 65.584716796875, 20.0 ],
					"text" : "BYPASS",
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"texton" : "BYPASSED",
					"textoncolor" : [ 0.996078431372549, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 10.0, 662.0, 29.5, 22.0 ],
					"text" : "+ 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 25.0, 558.0, 70.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 10.0, 695.0, 77.0, 22.0 ],
					"text" : "gate 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 68.0, 744.0, 1037.5, 22.0 ],
					"text" : "t l b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 817.20001220703125, 958.0, 122.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80001
					}
,
					"text" : "bach.join @triggers 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 817.20001220703125, 1002.0, 131.0, 22.0 ],
					"text" : "bach.prepend jbs-rules"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-55",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1068.666748046875, 1002.0, 159.0, 22.0 ],
					"text" : "bach.prepend jbs-heur-rules"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1068.666748046875, 964.0, 122.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80001
					}
,
					"text" : "bach.join @triggers 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 1162.6666259765625, 426.09130859375, 29.5, 22.0 ],
					"text" : "!- 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1363.2381591796875, 192.59124755859375, 54.0, 22.0 ],
					"text" : "deferlow",
					"textcolor" : [ 0.996078431606293, 0.035294119268656, 0.035294119268656, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1281.5238037109375, 192.59124755859375, 54.0, 22.0 ],
					"text" : "deferlow",
					"textcolor" : [ 0.996078431606293, 0.035294119268656, 0.035294119268656, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1199.8094482421875, 192.59124755859375, 54.0, 22.0 ],
					"text" : "deferlow",
					"textcolor" : [ 0.996078431606293, 0.035294119268656, 0.035294119268656, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1118.09521484375, 192.59124755859375, 54.0, 22.0 ],
					"text" : "deferlow",
					"textcolor" : [ 0.996078431606293, 0.035294119268656, 0.035294119268656, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1036.3809814453125, 192.59124755859375, 54.0, 22.0 ],
					"text" : "deferlow",
					"textcolor" : [ 0.996078431606293, 0.035294119268656, 0.035294119268656, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-43",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 336.7513427734375, 223.0, 189.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80001
					}
,
					"text" : "bach.value all_jbs_rules_interface"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "int" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 79.0, 1372.0, 782.0 ],
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
									"id" : "obj-123",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 807.4666748046875, 248.0, 174.0, 22.0 ],
									"text" : "rule_number_splitter 7 118 120"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-124",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 706.2999267578125, 224.0, 174.0, 22.0 ],
									"text" : "rule_number_splitter 6 104 117"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-125",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 543.7999267578125, 206.0, 175.0, 22.0 ],
									"text" : "rule_number_splitter 5 103 103"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-126",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 373.63330078125, 200.0, 168.0, 22.0 ],
									"text" : "rule_number_splitter 4 96 102"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-121",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 640.4666748046875, 166.0, 161.0, 22.0 ],
									"text" : "rule_number_splitter 3 82 95"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-122",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 539.2999267578125, 142.0, 161.0, 22.0 ],
									"text" : "rule_number_splitter 2 63 81"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-120",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 376.7999267578125, 124.0, 161.0, 22.0 ],
									"text" : "rule_number_splitter 1 34 62"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-119",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 243.63330078125, 100.0, 155.0, 22.0 ],
									"text" : "rule_number_splitter 0 0 33"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-197",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 232.9666748046875, 202.0, 20.0 ],
									"text" : "use this instead of mk-profile-rule...?"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-27",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 522.9249267578125, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-36",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 522.9249267578125, 330.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-38",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 557.9249267578125, 330.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-119", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-119", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-120", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-120", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-121", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-121", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-122", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-122", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-123", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-123", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-124", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-124", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-125", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-125", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-126", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-126", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-119", 0 ],
									"order" : 7,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-120", 0 ],
									"order" : 5,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-121", 0 ],
									"order" : 2,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-122", 0 ],
									"order" : 4,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-123", 0 ],
									"order" : 0,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-124", 0 ],
									"order" : 1,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-125", 0 ],
									"order" : 3,
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-126", 0 ],
									"order" : 6,
									"source" : [ "obj-27", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 156.584716796875, 230.9666748046875, 74.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p index2rule"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-80",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 596.25146484375, 398.0, 72.0, 22.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-74",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 104.0, 1146.0, 643.0 ],
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
									"id" : "obj-18",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 224.0, 415.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 164.0, 152.0, 29.5, 22.0 ],
									"text" : "t l b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 172.0, 254.0, 41.0, 22.0 ],
									"text" : "unjoin"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 168.0, 208.0, 37.0, 22.0 ],
									"text" : "zl rev"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 278.0, 246.0, 56.0, 22.0 ],
									"text" : "zl lookup"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 224.0, 338.0, 29.5, 22.0 ],
									"text" : "+"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 315.0, 216.0, 151.0, 22.0 ],
									"text" : "0 34 63 82 96 103 104 118"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-123",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 837.8333740234375, 226.0, 174.0, 22.0 ],
									"text" : "rule_number_splitter 7 118 120"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-124",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 736.6666259765625, 202.0, 174.0, 22.0 ],
									"text" : "rule_number_splitter 6 104 117"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-125",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 574.1666259765625, 184.0, 175.0, 22.0 ],
									"text" : "rule_number_splitter 5 103 103"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-126",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 404.0, 178.0, 168.0, 22.0 ],
									"text" : "rule_number_splitter 4 96 102"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-121",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 670.8333740234375, 144.0, 161.0, 22.0 ],
									"text" : "rule_number_splitter 3 82 95"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-122",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 569.6666259765625, 120.0, 161.0, 22.0 ],
									"text" : "rule_number_splitter 2 63 81"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-120",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 407.1666259765625, 102.0, 161.0, 22.0 ],
									"text" : "rule_number_splitter 1 34 62"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-119",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 274.0, 78.0, 155.0, 22.0 ],
									"text" : "rule_number_splitter 0 0 33"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-48",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 62.5, 202.0, 50.0, 22.0 ],
									"text" : "0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 100.0, 93.0, 22.0 ],
									"text" : "join @triggers 1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-66",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-69",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 124.0, 40.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"order" : 0,
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-48", 1 ],
									"order" : 1,
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 1 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 1 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 1 ],
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-9", 1 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "MOZ-numint",
								"default" : 								{
									"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : [ 16.95834 ],
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"fontname" : [ "Menlo Regular" ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
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
									"fontsize" : [ 22.062093999999998 ],
									"fontname" : [ "Andale Mono" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "MOZ-umenu",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.996078, 0.996078, 0.996078, 1.0 ],
										"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
										"color" : [ 0.996078, 0.996078, 0.996078, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.5,
										"autogradient" : 0.0
									}
,
									"color" : [ 0.996078, 0.996078, 0.996078, 1.0 ],
									"elementcolor" : [ 0.996078, 0.996078, 0.996078, 1.0 ],
									"fontname" : [ "Menlo Regular" ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontface" : [ 2 ]
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
								"name" : "message001",
								"default" : 								{
									"fontsize" : [ 13.0 ],
									"fontname" : [ "Arial" ],
									"textcolor_inverse" : [ 0.92549, 0.364706, 0.341176, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "orjan style",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
										"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ],
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
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
					"patching_rect" : [ 596.25146484375, 356.70001220703125, 74.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p rule2index"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-129",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 176.584716796875, 149.0, 70.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "number",
					"maximum" : 120,
					"minimum" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 156.584716796875, 196.0, 35.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 180.583251953125, 4.0, 35.0, 22.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"comment" : "index to pick the rule (integer between 0 and 120)",
					"id" : "obj-20",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 157.584716796875, 27.5, 30.0, 30.0 ],
					"varname" : "1_inlet[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1162.6666259765625, 454.09124755859375, 61.0, 22.0 ],
					"text" : "hidden $1"
				}

			}
, 			{
				"box" : 				{
					"comment" : "current rule code as text (true/false or heuristic)",
					"id" : "obj-13",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1442.0, 1188.7579345703125, 30.0, 30.0 ],
					"varname" : "0_outlet[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1442.0, 1118.7579345703125, 94.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"versionnumber" : 80003
					}
,
					"text" : "bach.reg @out t"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1467.1666259765625, 1051.424560546875, 129.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80001
					}
,
					"text" : "bach.nth 1 @unwrap 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "null" ],
					"patching_rect" : [ 1384.1666259765625, 606.09124755859375, 120.0, 22.0 ],
					"text" : "t i null"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "null" ],
					"patching_rect" : [ 1251.6666259765625, 606.09124755859375, 120.0, 22.0 ],
					"text" : "t i null"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1467.1666259765625, 995.424560546875, 95.0, 35.0 ],
					"text" : "lisp.quickeval @randompath 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1698.5, 1118.7579345703125, 94.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"versionnumber" : 80003
					}
,
					"text" : "bach.reg @out t"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-106",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 318.399993896484375, 958.0, 113.0, 22.0 ],
					"text" : "bach.prepend rules"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-96",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 69.0, 958.0, 127.0, 22.0 ],
					"text" : "bach.prepend domain"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-97",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 69.0, 1060.0, 1016.60003662109375, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80003
					}
,
					"text" : "bach.join 5 @inwrap 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 567.79998779296875, 958.0, 141.0, 22.0 ],
					"text" : "bach.prepend heur-rules"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-104",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 6,
					"outlettype" : [ "", "", "", "", "", "bang" ],
					"patching_rect" : [ 69.0, 899.0, 1266.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80003
					}
,
					"text" : "bach.keys domain rules heur-rules jbs-rules jbs-heur-rules @nullmode 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1550.6666259765625, 169.09124755859375, 70.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 954.6666259765625, 122.791290283203125, 113.0, 22.0 ],
					"text" : "r #0_rule_name"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 704.9180908203125, 398.0, 115.0, 22.0 ],
					"text" : "s #0_rule_name"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-216",
					"maxclass" : "newobj",
					"numinlets" : 8,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 954.66668701171875, 286.0, 591.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80001
					}
,
					"text" : "bach.join 8 @set jbs-constraints::rule_name arg1 arg2 arg3 arg4 arg5 mode? weight @triggers 0 @outwrap 1"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 25.665842354677867,
					"id" : "obj-215",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 34.0, 79.0, 1161.0, 782.0 ],
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
									"id" : "obj-3",
									"linecount" : 22,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 19.999914169311523, 872.16668701171875, 247.0, 301.0 ],
									"text" : "AND EVERY OTHER ELEMENTS : LIST OK\n\nLIST\ncandidates\nallowed\nfollowing\nindex\nlist\nintervals\ndistance\nint-list\ninterval-structure\npitch\npitches\nprofile\nanalysis\nenergy-profile\npattern\nelement-1\nelement-2\nstructure\norder"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"linecount" : 35,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 19.999914169311523, 28.398481369018555, 99.0, 476.0 ],
									"text" : "FLONUM OK !\nweight\nmodulo\nhow-many\nsub-group-length\nitem-index\nelement\ncurve-min\ncurve-max\nsteps\nvalue\nlength\nnth?\nnth-?\nwhat?\nsum\nlimit\ninterval\ntimes\nresulting-interval\nresolution\nsum\nnumber\ntimes\nnote\napprox\ndecimals\nrange\nptrn-length\nrepeat-ptrn\npattern\nlength?\nchain-length?\nfirst-n?\nlast-n?"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"linecount" : 24,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 19.999914169311523, 522.89849853515625, 266.0, 342.0 ],
									"text" : "OK OK OK OK \n\nBPF_PROFILE : bpf_profile\n  => function + internal stuff to check\n\nMENUS :\n\n(absolute? :absolute :up/down)\n\n(sign? (1 \"+\") (2 \"-\") (3 \"absolute\"))\n\nwhich?\nau moins 3 sortes \n1- (which? (1 \"<\") (2 \"=\") (3 \">\"))\n        43 repeat-interval-rule\n        44 repeat-resulting-interval-rule\n        74 any-note-repeated-rule\n\n2- (which? (1 \"<\") (2 \"<=\") (3 \"=\") (4 \"=>\") (5 \">\"))\n       96 ptrn-find-rule\n\n3- (which? < = >)\n       101 repeated-pattern-rule\n       103 distance-rule\n"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-100",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 1706.6666259765625, 395.898468017578125, 29.5, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-101",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1717.1666259765625, 461.66668701171875, 226.0, 22.0 ],
									"text" : "set replace jbs_block_bpf_profile.maxpat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-102",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 1717.1666259765625, 429.666656494140625, 34.0, 22.0 ],
									"text" : "sel 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-103",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1736.6666259765625, 279.666656494140625, 111.0, 20.0 ],
									"text" : "for BPF_PROFILE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-104",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 1736.6666259765625, 300.898468017578125, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-105",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 1706.6666259765625, 364.898468017578125, 79.0, 22.0 ],
									"text" : "bach.belong"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 10.046433585785268,
									"id" : "obj-106",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1736.6666259765625, 327.666656494140625, 55.0, 20.0 ],
									"text" : "bpf_profile"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-99",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 1542.1666259765625, 452.898468017578125, 29.5, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-98",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 1331.1666259765625, 531.89849853515625, 29.5, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-97",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 1124.1666259765625, 589.66668701171875, 29.5, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-96",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 968.41668701171875, 624.89849853515625, 29.5, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-95",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 803.16668701171875, 664.89849853515625, 29.5, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-94",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 567.16668701171875, 661.66668701171875, 29.5, 22.0 ],
									"text" : "t i i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-88",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1552.6666259765625, 518.66668701171875, 295.0, 22.0 ],
									"text" : "set replace jbs_block_umenu_which_unparen.maxpat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-89",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 1552.6666259765625, 486.66668701171875, 34.0, 22.0 ],
									"text" : "sel 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-90",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1537.1666259765625, 337.898468017578125, 147.0, 20.0 ],
									"text" : "for which_unparen umenu"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-91",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 1572.1666259765625, 357.898468017578125, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-92",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 1542.1666259765625, 421.898468017578125, 79.0, 22.0 ],
									"text" : "bach.belong"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 10.046433585785268,
									"id" : "obj-93",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1572.1666259765625, 384.666656494140625, 77.0, 20.0 ],
									"text" : "which_unparen"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1341.6666259765625, 594.66668701171875, 267.0, 22.0 ],
									"text" : "set replace jbs_block_umenu_which5.maxpat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-83",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 1341.6666259765625, 562.66668701171875, 34.0, 22.0 ],
									"text" : "sel 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-84",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1361.1666259765625, 415.666656494140625, 111.0, 20.0 ],
									"text" : "for which5 umenu"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-85",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 1361.1666259765625, 436.898468017578125, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-86",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 1331.1666259765625, 500.89849853515625, 79.0, 22.0 ],
									"text" : "bach.belong"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 10.046433585785268,
									"id" : "obj-87",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1361.1666259765625, 463.66668701171875, 40.0, 20.0 ],
									"text" : "which5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1134.6666259765625, 650.66668701171875, 251.0, 22.0 ],
									"text" : "set replace jbs_block_umenu_which3.maxpat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 1134.6666259765625, 618.66668701171875, 34.0, 22.0 ],
									"text" : "sel 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-72",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1154.1666259765625, 469.66668701171875, 111.0, 20.0 ],
									"text" : "for which3 umenu"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 1154.1666259765625, 490.89849853515625, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-75",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 1124.1666259765625, 554.89849853515625, 79.0, 22.0 ],
									"text" : "bach.belong"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 10.046433585785268,
									"id" : "obj-78",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1154.1666259765625, 517.66668701171875, 40.0, 20.0 ],
									"text" : "which3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 978.91668701171875, 686.89849853515625, 235.0, 22.0 ],
									"text" : "set replace jbs_block_umenu_sign.maxpat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-60",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 978.91668701171875, 654.89849853515625, 34.0, 22.0 ],
									"text" : "sel 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-61",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 998.16668701171875, 510.66668701171875, 111.0, 20.0 ],
									"text" : "for sign? umenu"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-64",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 998.16668701171875, 531.89849853515625, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-65",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 968.16668701171875, 595.89849853515625, 79.0, 22.0 ],
									"text" : "bach.belong"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 10.046433585785268,
									"id" : "obj-66",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 998.16668701171875, 558.66668701171875, 33.0, 20.0 ],
									"text" : "sign?"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-56",
									"maxclass" : "newobj",
									"numinlets" : 7,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 941.16668701171875, 900.66668701171875, 733.0, 22.0 ],
									"text" : "join 7"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 941.16668701171875, 986.6666259765625, 34.0, 22.0 ],
									"text" : "sel 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 941.16668701171875, 931.66668701171875, 61.0, 22.0 ],
									"text" : "bach.sum"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-44",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 941.16668701171875, 959.66668701171875, 62.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80005
									}
,
									"text" : "bach.== 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-35",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 813.66668701171875, 751.66668701171875, 259.0, 22.0 ],
									"text" : "set replace jbs_block_umenu_absolute.maxpat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 813.66668701171875, 719.66668701171875, 34.0, 22.0 ],
									"text" : "sel 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 833.16668701171875, 547.66668701171875, 118.0, 20.0 ],
									"text" : "for absolute? umenu"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 833.16668701171875, 568.89849853515625, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-40",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 803.16668701171875, 632.89849853515625, 79.0, 22.0 ],
									"text" : "bach.belong"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 10.046433585785268,
									"id" : "obj-43",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 833.16668701171875, 595.66668701171875, 52.0, 20.0 ],
									"text" : "absolute?"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1008.16668701171875, 986.6666259765625, 120.0, 20.0 ],
									"text" : "EVERYTHING ELSE"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 9,
									"outlettype" : [ "bang", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 423.166656494140625, 485.43487548828125, 103.0, 22.0 ],
									"text" : "t b l l l l l l l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 941.16668701171875, 1015.6666259765625, 185.0, 22.0 ],
									"text" : "set replace jbs_block_list.maxpat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-79",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 577.66668701171875, 757.66668701171875, 193.0, 22.0 ],
									"text" : "set replace jbs_block_num.maxpat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-77",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 577.66668701171875, 725.66668701171875, 34.0, 22.0 ],
									"text" : "sel 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-76",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 423.166656494140625, 879.66668701171875, 135.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"versionnumber" : 80001
									}
,
									"text" : "bach.reg @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-73",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 597.16668701171875, 428.666656494140625, 62.0, 20.0 ],
									"text" : "for flonum"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-71",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 597.16668701171875, 449.898468017578125, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 423.166656494140625, 457.666656494140625, 65.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.nth 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 355.666656494140625, 399.666656494140625, 86.5, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "" ],
									"patching_rect" : [ 567.16668701171875, 632.89849853515625, 79.0, 22.0 ],
									"text" : "bach.belong"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 10.046433585785268,
									"id" : "obj-62",
									"linecount" : 12,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 597.16668701171875, 480.790398120880127, 138.0, 143.0 ],
									"text" : "weight modulo how-many sub-group-length item-index element curve-min curve-max steps value length nth? nth-? what? sum limit interval times resulting-interval resolution sum number times note approx decimals range ptrn-length repeat-ptrn pattern length? chain-length? first-n? last-n?"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-58",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 517.66668701171875, 399.666656494140625, 45.5, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-53",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 355.666656494140625, 1142.6666259765625, 53.0, 22.0 ],
									"text" : "prepend"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-50",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 464.666656494140625, 1093.6666259765625, 72.0, 22.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-49",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 559.16668701171875, 1217.6666259765625, 140.0, 22.0 ],
									"text" : "s #0_do_the_scripting"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 355.666656494140625, 1093.6666259765625, 79.0, 22.0 ],
									"text" : "prepend args"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 355.666656494140625, 1173.6666259765625, 133.0, 22.0 ],
									"text" : "prepend script sendbox"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 559.16668701171875, 1116.6666259765625, 209.0, 22.0 ],
									"text" : "append replace jbs_block_list.maxpat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 539.16668701171875, 844.66668701171875, 133.0, 22.0 ],
									"text" : "prepend script sendbox"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-39",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 355.666656494140625, 350.333282470703125, 168.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.nth 1 @unwrap 1 @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 776.16668701171875, 427.833282470703125, 125.0, 49.0 ],
									"text" : "s #0_do_the_scripting"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 776.16668701171875, 400.833282470703125, 213.0, 22.0 ],
									"text" : "append replace jbs_block_null.maxpat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 776.16668701171875, 374.833282470703125, 133.0, 22.0 ],
									"text" : "prepend script sendbox"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 776.16668701171875, 348.333282470703125, 172.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.iter @maxdepth 1 @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-20",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 733.16668701171875, 217.333282470703125, 54.0, 22.0 ],
									"text" : "index $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-18",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 733.16668701171875, 317.666656494140625, 62.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.slice"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"linecount" : 5,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 544.41668701171875, 185.666671752929688, 114.0, 76.0 ],
									"text" : "#0_block_one #0_block_two #0_block_three #0_block_four #0_block_five"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 733.16668701171875, 185.666671752929688, 71.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.length"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "", "bang", "" ],
									"patching_rect" : [ 355.666656494140625, 147.666671752929688, 319.5, 22.0 ],
									"text" : "t b l b l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 279.666656494140625, 81.666671752929688, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 825.66668701171875, 191.666671752929688, 239.0, 22.0 ],
									"text" : "null"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 825.66668701171875, 147.666671752929688, 107.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.portal @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 355.666656494140625, 108.666671752929688, 55.0, 22.0 ],
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
									"id" : "obj-211",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1175.6666259765625, 214.666656494140625, 338.0, 35.0 ],
									"text" : "script sendbox #0_block_three replace jbs_block_num.maxpat"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-208",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1187.1666259765625, 183.333297729492188, 252.0, 34.0 ],
									"text" : "script sendbox #0_block_three args (10000000)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-207",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1315.6666259765625, 122.333297729492188, 168.0, 20.0 ],
									"text" : "update arguments = loadbang"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 11.595186999999999,
									"id" : "obj-205",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1106.6666259765625, 122.333297729492188, 207.0, 34.0 ],
									"text" : "script sendbox #0_block_one args 100"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-204",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 5,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 355.666656494140625, 317.666656494140625, 343.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.iter 2 @maxdepth 1 @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-203",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1121.6666259765625, 151.333297729492188, 329.0, 35.0 ],
									"text" : "script sendbox #0_block_three replace jbs_block_list.maxpat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-165",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1088.6666259765625, 266.666656494140625, 116.0, 49.0 ],
									"text" : "s #0_do_the_scripting"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-163",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1088.6666259765625, 92.333297729492188, 331.0, 35.0 ],
									"text" : "script sendbox #0_block_one replace jbs_block_num.maxpat"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-214",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 355.666656494140625, 58.666671752929688, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-102", 0 ],
									"source" : [ "obj-100", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 6 ],
									"source" : [ "obj-100", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-101", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-101", 0 ],
									"source" : [ "obj-102", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-106", 0 ],
									"source" : [ "obj-104", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-100", 0 ],
									"source" : [ "obj-105", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-105", 1 ],
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"midpoints" : [ 553.91668701171875, 293.666656494140625, 742.66668701171875, 293.666656494140625 ],
									"order" : 0,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-204", 1 ],
									"midpoints" : [ 553.91668701171875, 289.166656494140625, 527.166656494140625, 289.166656494140625 ],
									"order" : 1,
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-165", 0 ],
									"source" : [ "obj-163", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-18", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 1 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-18", 0 ],
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-165", 0 ],
									"source" : [ "obj-203", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-39", 0 ],
									"source" : [ "obj-204", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-58", 0 ],
									"source" : [ "obj-204", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-165", 0 ],
									"source" : [ "obj-205", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-165", 0 ],
									"source" : [ "obj-208", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-165", 0 ],
									"source" : [ "obj-211", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-214", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-35", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-43", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-95", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 1 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 1 ],
									"source" : [ "obj-43", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"source" : [ "obj-44", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-49", 0 ],
									"midpoints" : [ 365.166656494140625, 1206.166656494140625, 568.66668701171875, 1206.166656494140625 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-44", 0 ],
									"source" : [ "obj-47", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-53", 0 ],
									"source" : [ "obj-50", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-53", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 0 ],
									"source" : [ "obj-55", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-47", 0 ],
									"source" : [ "obj-56", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-57", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-58", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-58", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"source" : [ "obj-60", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 1 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-94", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-64", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"source" : [ "obj-65", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 1 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-67", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 0 ],
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-69", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"source" : [ "obj-71", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-97", 0 ],
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 1 ],
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-105", 0 ],
									"source" : [ "obj-81", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-81", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"source" : [ "obj-81", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-65", 0 ],
									"source" : [ "obj-81", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 0 ],
									"source" : [ "obj-81", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 0 ],
									"source" : [ "obj-81", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-92", 0 ],
									"source" : [ "obj-81", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 0 ],
									"source" : [ "obj-85", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-98", 0 ],
									"source" : [ "obj-86", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-86", 1 ],
									"source" : [ "obj-87", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-88", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"source" : [ "obj-89", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-9", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-9", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-204", 0 ],
									"source" : [ "obj-9", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 0 ],
									"source" : [ "obj-91", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-99", 0 ],
									"source" : [ "obj-92", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-92", 1 ],
									"source" : [ "obj-93", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 0 ],
									"source" : [ "obj-94", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"source" : [ "obj-94", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-95", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 1 ],
									"source" : [ "obj-95", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 2 ],
									"source" : [ "obj-96", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-60", 0 ],
									"source" : [ "obj-96", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 3 ],
									"source" : [ "obj-97", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-68", 0 ],
									"source" : [ "obj-97", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 4 ],
									"source" : [ "obj-98", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"source" : [ "obj-98", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-56", 5 ],
									"source" : [ "obj-99", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-89", 0 ],
									"source" : [ "obj-99", 1 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "MOZ-numint",
								"default" : 								{
									"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : [ 16.95834 ],
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"fontname" : [ "Menlo Regular" ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
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
									"fontsize" : [ 22.062093999999998 ],
									"fontname" : [ "Andale Mono" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "MOZ-umenu",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.996078, 0.996078, 0.996078, 1.0 ],
										"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
										"color" : [ 0.996078, 0.996078, 0.996078, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.5,
										"autogradient" : 0.0
									}
,
									"color" : [ 0.996078, 0.996078, 0.996078, 1.0 ],
									"elementcolor" : [ 0.996078, 0.996078, 0.996078, 1.0 ],
									"fontname" : [ "Menlo Regular" ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontface" : [ 2 ]
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
									"fontname" : [ "Arial" ],
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
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
										"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ],
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
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
					"patching_rect" : [ 269.75146484375, 495.1080322265625, 211.0, 37.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p mk_proper_grid"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-202",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1311.6666259765625, 349.09130859375, 101.0, 20.0 ],
					"text" : "mode? + weight"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-201",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 986.83331298828125, 310.0, 101.0, 20.0 ],
					"text" : "5 arguments max"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-195",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1696.6666259765625, 232.6993408203125, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.249847412109375, 151.0, 341.0, 5.5 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-194",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1696.6666259765625, 232.6993408203125, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 9.249847412109375, 102.0, 341.0, 5.5 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-193",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1696.6666259765625, 232.6993408203125, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 173.583251953125, 57.5, 5.0, 142.5 ]
				}

			}
, 			{
				"box" : 				{
					"args" : [ "bpf_profile", "[", "]" ],
					"bgmode" : 1,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-192",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "jbs_block_null.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 1363.2381591796875, 229.09124755859375, 48.0001220703125, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.749847412109375, 151.0, 175.166595458984375, 49.0 ],
					"varname" : "#0_block_five",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ "steps", 10 ],
					"bgmode" : 1,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-191",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "jbs_block_null.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 1281.5238037109375, 229.09124755859375, 48.0001220703125, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 181.583251953125, 102.0, 175.166595458984375, 49.0 ],
					"varname" : "#0_block_four",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ "which5", 1 ],
					"bgmode" : 1,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-190",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "jbs_block_null.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 1199.8094482421875, 229.09124755859375, 48.0001220703125, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.749847412109375, 102.0, 175.166595458984375, 49.0 ],
					"varname" : "#0_block_three",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ "sign?", ":+" ],
					"bgmode" : 1,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-188",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "jbs_block_null.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 1118.09521484375, 229.09124755859375, 48.0001220703125, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 181.583251953125, 53.0, 175.166595458984375, 49.0 ],
					"varname" : "#0_block_two",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"args" : [ "limit", 6 ],
					"bgmode" : 1,
					"border" : 0,
					"clickthrough" : 0,
					"enablehscroll" : 0,
					"enablevscroll" : 0,
					"id" : "obj-184",
					"lockeddragscroll" : 0,
					"maxclass" : "bpatcher",
					"name" : "jbs_block_null.maxpat",
					"numinlets" : 1,
					"numoutlets" : 1,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "" ],
					"patching_rect" : [ 1036.3809814453125, 229.09124755859375, 48.0001220703125, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 6.749847412109375, 53.0, 175.166595458984375, 49.0 ],
					"varname" : "#0_block_one",
					"viewvisibility" : 1
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-178",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1162.6666259765625, 349.09130859375, 70.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.203756449121554,
					"id" : "obj-94",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 156.584716796875, 433.89990234375, 207.0, 19.0 ],
					"text" : "+ ( mode? :true/false ) ( weight 1 )"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.287265000938234,
					"id" : "obj-90",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 156.584716796875, 457.89990234375, 218.0, 18.0 ],
					"text" : "null"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 269.75146484375, 367.66656494140625, 115.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80001
					}
,
					"text" : "bach.slice -2 @out t"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"id" : "obj-87",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1579.6666259765625, 219.6993408203125, 55.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 276.583251953125, 152.5, 52.0, 20.0 ],
					"text" : "weight",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "toto" ],
					"patching_rect" : [ 1209.6666259765625, 489.99993896484375, 105.0, 22.0 ],
					"text" : "t s s toto"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.204237253357668,
					"id" : "obj-82",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1384.1666259765625, 579.9952392578125, 23.5, 18.0 ],
					"text" : "2"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 8.204237253357668,
					"id" : "obj-81",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1252.6666259765625, 579.9952392578125, 23.5, 18.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.143249368422111,
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "bang", "bang", "" ],
					"patching_rect" : [ 1252.6666259765625, 552.89874267578125, 282.0, 21.0 ],
					"text" : "sel :true/false :heuristic"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1714.5, 1051.424560546875, 129.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80001
					}
,
					"text" : "bach.nth 1 @unwrap 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1282.1666259765625, 386.7579345703125, 45.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 208.083251953125, 152.5, 45.0, 20.0 ],
					"text" : "mode?",
					"textjustification" : 2
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-34",
					"items" : [ ":true/false", ",", ":heuristic" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1162.6666259765625, 386.7579345703125, 113.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 182.583251953125, 171.5, 96.0, 21.0 ],
					"varname" : "rule_mode_umenu"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1252.6666259765625, 695.933349609375, 282.0, 22.0 ],
					"text" : "gate 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1467.1666259765625, 892.933349609375, 218.0, 49.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80001
					}
,
					"text" : "bach.append 2 @set jbs-constraints::collect-true/false-rules @outwrap 1 @triggers 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"linecount" : 3,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1714.5, 892.933349609375, 214.0, 49.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80001
					}
,
					"text" : "bach.append 2 @set jbs-constraints::collect-heuristic-rules @outwrap 1 @triggers 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1714.5, 995.424560546875, 95.0, 35.0 ],
					"text" : "lisp.quickeval @randompath 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"id" : "obj-231",
					"maxclass" : "number",
					"maximum" : 999,
					"minimum" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 1526.6666259765625, 219.6993408203125, 51.0, 21.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 283.833251953125, 171.5, 36.5, 21.0 ],
					"triangle" : 0,
					"varname" : "weight_int"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-62",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 454.73333740234375, 133.0, 97.0, 20.0 ],
					"text" : "rule_placeholder"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 322.399993896484375, 133.0, 123.0, 20.0 ],
					"text" : "category_placeholder"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-813",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 6,
					"outlettype" : [ "int", "int", "", "", "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 1,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 443.0, 100.0, 315.0, 757.0 ],
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
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 736.0, 136.499984741210938, 55.0, 22.0 ],
									"saved_object_attributes" : 									{
										"embed" : 0,
										"versionnumber" : 80005
									}
,
									"text" : "bach.reg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-16",
									"linecount" : 3,
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 615.0, 192.0, 150.0, 47.0 ],
									"text" : "TO UPDATE\nTHE SIMPLIFIED\nPRESETS LIST"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 678.0, 35.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"linecount" : 2,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 736.0, 59.0, 174.0, 35.0 ],
									"text" : "read extract_presets-pmc-boxes3.llll"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 736.0, 103.0, 62.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.read"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-147",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 578.6666259765625, 909.6666259765625, 70.3333740234375, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-27",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 578.6666259765625, 1060.6666259765625, 225.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.slice 1 @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 578.6666259765625, 1011.6666259765625, 54.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.flat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 578.6666259765625, 977.6666259765625, 172.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.iter @maxdepth 1 @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-125",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 578.6666259765625, 838.666748046875, 129.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.nth 1 @unwrap 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-117",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 634.6666259765625, 760.33331298828125, 264.666656494140625, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.join 3 @set 1 1 2 @triggers 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-113",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 578.6666259765625, 808.0001220703125, 75.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.nth 5 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-112",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "int" ],
									"patching_rect" : [ 578.6666259765625, 666.666748046875, 170.833343505859375, 22.0 ],
									"text" : "t b i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-111",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 578.6666259765625, 715.0001220703125, 189.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.value all_jbs_rules_interface"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-101",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 578.6666259765625, 869.3333740234375, 107.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.portal @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-95",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 578.6666259765625, 629.3333740234375, 29.5, 22.0 ],
									"text" : "+ 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-88",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "", "clear" ],
									"patching_rect" : [ 137.6666259765625, 683.0, 57.0, 22.0 ],
									"text" : "t 0 l clear"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-85",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 156.6666259765625, 755.6666259765625, 96.0, 22.0 ],
									"text" : "prepend append"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-87",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 156.6666259765625, 719.66668701171875, 93.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.iter @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 313.666748046875, 659.0, 139.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.nth 1 1 @unwrap 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 137.6666259765625, 655.0, 165.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.mapelem @maxdepth 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-79",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 84.6666259765625, 586.00006103515625, 129.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.nth 1 @unwrap 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-78",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 84.6666259765625, 620.0, 72.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.slice 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-75",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 138.6666259765625, 520.0, 189.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.value all_jbs_rules_interface"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-74",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "bang", "int" ],
									"patching_rect" : [ 84.6666259765625, 484.0, 569.0, 22.0 ],
									"text" : "t i b i"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 84.6666259765625, 553.0, 73.0, 22.0 ],
									"text" : "bach.lookup"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 84.6666259765625, 451.0, 29.5, 22.0 ],
									"text" : "+ 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-63",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "int", "bang", "bang", "clear" ],
									"patching_rect" : [ 31.0, 59.0, 569.0, 22.0 ],
									"text" : "t 0 b b clear"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-59",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 31.0, 26.0, 58.0, 22.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-42",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 237.0, 103.0, 107.0, 22.0 ],
									"reg_data_0000000000" : [ "[", "generic-rules", "[", "no-repetition-rule", "[", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule dos not allow any repetition.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "no-absolute-repetition-rule", "[", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "It does not allow any repetition in abslute mode inside a solution.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "no-local-repetition-rule", "[", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule dos not allow any repetition.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "no-spaced-repetition-rule", "[", "[", "candidates", "[", 1, 3, "]", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This function does not allow any repetition for an element and another. The distance between the two elements is indicated with the numbers put in candidates. For example if you put (1 4) it means that each element has to be different from the fourth after itself. If you put (1 7) that means that an element has to be different from the seventh after itself.\t", "\n\t\tATTENTION : in the mode true/false, the rule is perfectly applied.\n\t\tIn the mode heuristic, the rule is applied as much as possible.", "]", "[", "not-modulo-x-repetition-rule", "[", "[", "modulo", 12, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule does not allow any candidate having the same modulo given in modulo.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "modulo-x-repetition-rule", "[", "[", "modulo", 12, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule allows any candidate having the same modulo given in modulo.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible.\nN.B. USEFULL IN QUANTIFICATION OF DURATIONS.", "]", "[", "not-modulo-x-local-repetition-rule", "[", "[", "modulo", 12, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule does not allow any candidate having the same local modulo given in modulo.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible\nN.B. USEFULL IN QUANTIFICATION OF DURATIONS.", "]", "[", "not-rpt-elmts-in-lists-rule", "[", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule does not allow any element of one list to be repeated in the following\nlist.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "not-consecutive-number-rule", "[", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule does not allow numeric candidate to be followed by its consecutive. It means that if candidates are:\n1 2 3 4 5 there will not be 1 follow by 2, but by 3, or 4 or 5.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "not-consecutive-ascending-rule", "[", "[", "how-many", 3, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule does not allow more ascending value than as indicate in how-many.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "not-consecutive-descending-rule", "[", "[", "how-many", 3, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule does not allow more descending value than as indicate in how-many.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "not-consecutive-equal-rule", "[", "[", "how-many", 3, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule does not allow more equal values than as indicate in how-many.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "not-repeated-element-sub-group-rule", "[", "[", "sub-group-length", 3, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule does not allow any repeated element into a given sub-group. The input\nsub-group-length indicates the length of the sub-group.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "not-repeated-list-sub-group-rule", "[", "[", "sub-group-length", 3, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule does not allow any repeated list into a given sub-group. The input\nsub-group-length indicates the length of the sub-group.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "item-sub-group-member-rule", "[", "[", "sub-group-length", 5, "]", "[", "item-index", 1, "]", "[", "allowed", "[", 1, 7, "]", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "Item indicated with 'item index' will be a member of 'allowed' elements in each sub group of length\n 'sub-group-length'.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "allowed-chain-rule", "[", "[", "element", 2, "]", "[", "following", "[", 5, 7, "]", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges a given element,\nto be followed by those elements eneterd in following.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "not-allowed-chain-rule", "[", "[", "element", 2, "]", "[", "following", "[", 5, 7, "]", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges a given element,\nNOT to be followed by those elements eneterd in following.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "length-sub-group-rule", "[", "[", "lengths", "[", 2, 6, 4, 1, "]", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges the sub solutions to have a length accordingly to the list put in 'lengths'.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "not-consecutive-equal-length-rule", "[", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "The length of two consecutive groups has not to be equal.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "not-length-repetition-rule", "[", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "No repetition of sub group equal length.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "index-rule", "[", "[", "index", "i1", "]", "[", "value", 7, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges the value (indicated as index) of the solution to be the value indicated in 'value'.", "\n\t\tATTENTION : in the mode true/false, the rule is perfectly applied. In the mode heuristic, the rule is applied as much as possible", "]", "[", "not-index-rule", "[", "[", "index", "i1", "]", "[", "value", 7, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges the value (indicated as index) of the solution NOT to be the value indicated in 'value'.", "\n\t\tATTENTION : in the mode true/false, the rule is perfectly applied. In the mode heuristic, the rule is applied as much as possible. ATTENTION: HEURISTIC NOT YET IMPLEMENTED.", "]", "[", "index-higher-rule", "[", "[", "index", "i1", "]", "[", "value", 7, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges the value (indicated as index) of the solution to be higher than the value indicated in 'value'.", "\n\t\tATTENTION : in the mode true/false, the rule is perfectly applied. In the mode heuristic, the rule is applied as much as possible. ATTENTION: HEURISTIC NOT YET IMPLEMENTED.", "]", "[", "index-lower-rule", "[", "[", "index", "i1", "]", "[", "value", 7, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges the value (indicated as index) of the solution to be lower than the value indicated in 'value'..", "\n\t\tATTENTION : in the mode true/false, the rule is perfectly applied. In the mode heuristic, the rule is applied as much as possible ATTENTION: HEURISTIC NOT YET IMPLEMENTED.", "]", "[", "index-length-rule", "[", "[", "index", "i1", "]", "[", "length", 3, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges the value (indicated as index) of the solution to have the length put in 'length'.", "\n\t\tATTENTION : in the mode true/false, the rule is perfectly applied. In the mode heuristic, the rule is applied as much as possible ATTENTION: HEURISTIC NOT YET IMPLEMENTED.", "]", "[", "index-nth-rule", "[", "[", "index", "i1", "]", "[", "nth?", 0, "]", "[", "what?", 1, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges the nth (indicate from 0 to n) of the index (indicated with i1, i2, i3...) to be the value put in what?.", "\n\t\tATTENTION : in the mode true/false, the rule is perfectly applied. In the mode heuristic, the rule is applied as much as possible. ATTENTION: HEURISTIC NOT YET IMPLEMENTED.", "]", "[", "index-applied-sum-rule", "[", "[", "index", "i1", "]", "[", "sum", 3, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges the value (indicated as index) of the solution to have elements that summed together they give back the number put in sum.", "\n\t\tATTENTION : in the mode true/false, the rule is perfectly applied. In the mode heuristic, the rule is applied as much as possible. ATTENTION: HEURISTIC NOT YET IMPLEMENTED.", "]", "[", "member-rule", "[", "[", "list", "[", 1, 2, "]", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges any element of the solution to belong to the elements indicated in 'domain'.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "not-member-rule", "[", "[", "list", "[", 1, 2, "]", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges any element of the solution not to belong to the elements indicated in 'domain'.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "not-higher-than-rule", "[", "[", "limit", 3, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges any element of the solution not to belong to the elements indicated in 'domain'.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "not-lower-than-rule", "[", "[", "limit", 3, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges any element of the solution not to belong to the elements indicated in 'domain'.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "count-common-elements-rule", "[", "[", "how-many", 3, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges sub lists to have the number of common elements put in 'how-many.\nATTENTION : This rule works with a list of lists.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "count-any-element-rule", "[", "[", "how-many", 3, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obligesa solution to have any element repeated many times as indicated in 'how-many.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "count-this-element-rule", "[", "[", "element", 10, "]", "[", "how-many", 3, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obligesa solution to have any element repeated many times as indicated in 'how-many.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "]", "[", "interval-rules", "[", "no-interval-local-repetition-rule", "[", "[", "absolute?", ":absolute", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule does not allowed any local repetition of intervals.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "no-interval-repetition-rule", "[", "[", "absolute?", ":absolute", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule does not allow any repetition of intervals.\nIf the menu 'absolute?' is 'absolute, that means that intervals are\nintented in absolute mode. If this menu is 'up/down', that means that\nthe intervals are divided into ascending and descending.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "no-locally-repeated-given-interval-rule", "[", "[", "interval", 3, "]", "[", "absolute?", ":absolute", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges a solution not to have a given 'interval' locally repeated.\nIt is a sort of no-local-repetition but limited to the given interval.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "allowed-intervals-rule", "[", "[", "intervals", "[", -1, 2, -3, "]", "]", "[", "absolute?", ":absolute", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule allows only the intervals indicated in 'intervals'.\nIf the menu 'absolute?' is 'absolute,\nthat means that intervals are intented in absolute mode. If this menu is 'up/down', that means that\nthe intervals are divided into ascending and descending.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "not-allowed-intervals-rule", "[", "[", "intervals", "[", -1, 2, -3, "]", "]", "[", "absolute?", ":absolute", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule does not allow the intervals indicated in 'intervals'.\nIf the menu 'absolute?' is 'absolute,\nthat means that intervals are intented in absolute mode. If this menu is 'up/down', that means that\nthe intervals are divided into ascending and descending.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "allowed-distant-intervals-rule", "[", "[", "distance", "[", 1, 3, "]", "]", "[", "intervals", "[", 1, "]", "]", "[", "absolute?", ":absolute", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule allows a sequence of intervals to be equals with a given distance. The allowed intervals are put in INTERVALS.\nThe distance has to be described giving the first and the last note of the distance. For instance, if in distance you put 1 and 3 it means that in a sequence each the interval between the first and the third note has to be a member of INTERVALS. \nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "no-consecutive-equal-intervals-rule", "[", "[", "how-many", 3, "]", "[", "absolute?", ":absolute", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule does not allow any repetition of intervals for a length put in 'how-many'.\nIf the menu 'absolute?' is 'absolute, that means that intervals are\nintented in absolute mode. If this menu is 'up/down', that means that\nthe intervals are divided into ascending and descending.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "obliged-interval-chain-rule", "[", "[", "interval", 3, "]", "[", "int-list", "[", 1, 2, "]", "]", "[", "absolute?", ":absolute", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges an interval to be followed by those put in int-list.\nIf the menu 'absolute?' is 'absolute, that means that intervals are\nintented in absolute mode. If this menu is 'up/down', that means that\nthe intervals are divided into ascending and descending.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "not-obliged-interval-chain-rule", "[", "[", "interval", 3, "]", "[", "int-list", "[", 1, 2, "]", "]", "[", "absolute?", ":absolute", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges an interval NOT to be followed by those put in int-list.\nIf the menu 'absolute?' is 'absolute, that means that intervals are\nintented in absolute mode. If this menu is 'up/down', that means that\nthe intervals are divided into ascending and descending.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "repeat-interval-rule", "[", "[", "interval", 3, "]", "[", "which3", 1, "]", "[", "times", 3, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges a solution to have a given interval repeated many times as indicated in time. The interval is considered ins the absolute mode. If the menu which? is set on <, it means that the given interval has to be repeated a number of time inferior to the one put in times. If the menu which? is set on =, it means that the given interval has to be repeated a number of time equal to the one put in times.\nIf the menu which? is set on >, it means that the given interval has to be repeated a number of times bigger than the one put in times.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "repeat-resulting-interval-rule", "[", "[", "resulting-interval", 3, "]", "[", "which3", 1, "]", "[", "times", 3, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges a solution to have a given resulting-interval repeated many times as indicated in time. A resulting interval is an interval between a note with any possible other notes. In this sense, look at the function find-all-intervals (that you can call using the package jbs-constraints::find-all-intervals). This function gives all the interval between all notes of a sequence. So a resulting interval is an interval that is the result of the function find-all-intervals.", "\n\t\t\nIf the menu which? is set on <, it means that the given interval has to be repeated a number of time inferior to the one put in times. If the menu which? is set on =, it means that the given interval has to be repeated a number of time equal to the one put in times.\nIf the menu which? is set on >, it means that the given interval has to be repeated a number of times bigger than the one put in times.\n\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "index-interval-rule", "[", "[", "index", 2, "]", "[", "allowed", "[", 2, 4, "]", "]", "[", "absolute?", ":absolute", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges a given interval indicated with 'index' to be a member of a list\nof possible intervals indicated in 'allowed'. If the menu 'absolute?' is 'absolute,\nthat means that intervals are intented in absolute mode. If this menu is 'up/down', that means that\nthe intervals are divided into ascending and descending.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "not-index-interval-rule", "[", "[", "index", 2, "]", "[", "allowed", "[", 2, 4, "]", "]", "[", "absolute?", ":absolute", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges a given interval indicated with 'index' NOT to be a member of a list\nof possible intervals indicated in 'allowed'. If the menu 'absolute?' is 'absolute,\nthat means that intervals are intented in absolute mode. If this menu is 'up/down', that means that\nthe intervals are divided into ascending and descending.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "not-higher-interval-rule", "[", "[", "limit", 6, "]", "[", "sign?", ":+", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "First you have to define if you work on positif or negatif intrevals using the menu 'sign?'.\nIf you chose '+', it means that this function does not allow interval higher than the one entered in 'limit' only for positif interval. If you chose '-' it means that this function does not allow interval higher than the one entered in 'limit' only for negatif interval.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "not-bigger-interval-rule", "[", "[", "limit", 6, "]", "[", "sign?", ":+", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "First you have to define if you work on positif or negatif intrevals using the menu 'sign?'.\nIf you chose '+', it means that this function does not allow interval higher than the one entered in 'limit' only for positif interval. If you chose '-' it means that this function does not allow interval higher than the one entered in 'limit' only for negatif interval.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "not-lower-interval-rule", "[", "[", "limit", 6, "]", "[", "sign?", ":+", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "First you have to define if you work on positif or negatif intrevals using the menu 'sign?'.\nIf you chose '+', it means that this function does not allow interval lower than the one entered in 'limit' only for positif interval. If you chose '-' it means that this function does not allow interval lower than the one entered in 'limit' only for negatif interval.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "not-smaller-interval-rule", "[", "[", "limit", 6, "]", "[", "sign?", ":+", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "First you have to define if you work on positif or negatif intrevals using the menu 'sign?'.\nIf you chose '+', it means that this function does not allow interval lower than the one entered in 'limit' only for positif interval. If you chose '-' it means that this function does not allow interval lower than the one entered in 'limit' only for negatif interval.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "resulting-interval-rule", "[", "[", "interval", 6, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "A resulting interval is an interval between a note of a sequence with any possible other notes of the same sequence. In this sense, look at the function find-all-intervals (that you can call using the package jbs-constraints::find-all-intervals). This function gives all the interval between all notes of a sequence. So a resulting interval is an interval that is the result of the function find-all-intervals.", "\n\t\t\nResulting-interval-rule ", "[1] obliges the solution to have, among all the intervals among all eh notes of the sequence, the defined interval. ", "\n\t\t\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "no-resulting-interval-rule", "[", "[", "interval", 6, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule does not allow the existence of the given 'interval' even as the result\nof the verticality of all the elements of a solution.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "jump-resolution-rule", "[", "[", "interval", 6, "]", "[", "resolution", 2, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "If an interval is higher than the value put in interval, the next interval as to go in the opposite direction and it has to be smaller than the value put in resolution.", "]", "[", "do-reach-that-interval-rule", "[", "[", "how-many", 4, "]", "[", "interval", 12, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "]", "[", "do-not-reach-that-interval-rule", "[", "[", "how-many", 6, "]", "[", "interval", 2, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "Does not reach a given interval in how-many notes", "]", "[", "apply-interval-sum-rule", "[", "[", "sum", 26, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule outputs a solution having the the sum of all intervals equal to the value put in sum.\nFirst it makes the x->dx of all intervals and then it applies '+ to all.\nATTENTION : in the mode true/false, does NOT work: because of SLEN", "]", "[", "apply-interval-global-sum-rule", "[", "[", "sum", 26, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule outputs a solution having the the sum of all intervals equal to the value put in sum.\nFirst it makes the x->dx of all intervals and then it applies '+ to all.\nATTENTION : in the mode true/false, does NOT work: because of SLEN", "]", "[", "not-complementary-interval-rule", "[", "[", "interval", 12, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule does not allow the existence of a given interval as the product of two consecutive\nintervals.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "interval-structure-rule", "[", "[", "interval-structure", "[", 2, 3, -1, 7, "]", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges elements to have the given 'interval-structure'.\nN.B. BE CAREFULL: the number of intervals put in 'interval-stricture' has to be\none element less than the number of candidates you put in the search space!.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "not-interval-structure-rule", "[", "[", "interval-structure", "[", 5, 4, "]", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges elements not to have the given 'interval-structure'.\nN.B. BE CAREFULL: the number of intervals put in 'interval-stricture' has to be\none element less than the number of candidates you put in the search space!.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "count-positive-intervals-rule", "[", "[", "number", 2, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "The solution must have a number of positive intrevals as indicatd in number.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule DOES NOT WORK because of Slen...", "]", "[", "count-negative-intervals-rule", "[", "[", "number", 2, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "The solution must have a number of negative intrevals as indicatd in number.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule DOES NOT WORK because of Slen...", "]", "]", "[", "pitch-rules", "[", "allowed-pitch-rule", "[", "[", "pitch", "[", 60, 62, "]", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "Only the pitches indicated in 'pitch' will be allowed in any octave.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "not-allowed-pitch-rule", "[", "[", "pitch", "[", 60, 62, "]", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "Only the pitches indicated in 'pitch' will be allowed in any octave.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "allowed-polarized-pitch-rule", "[", "[", "pitch", "[", 60, 62, "]", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "Only the pitches indicated in 'pitch' will be allowed in any octave.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "allowed-pitch-structure-rule", "[", "[", "pitch", "[", 60, 63, 67, "]", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "Only the pitches indicated in 'pitch' will be allowed in any octave.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule does not work because of SLEN...", "]", "[", "allowed-pitch-class-rule", "[", "[", "pitch", "[", 60, 63, 67, "]", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "Only the class (for instance minor triad) indicated in 'pitch' will be allowed in any octave.", "\n\t\t\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule does not work because of SLEN...", "]", "[", "allowed-pitch-class-sub-list-rule", "[", "[", "pitch", "[", 60, 63, 67, "]", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This function outputs a solution having only the class (for instance minor triad) indicated in 'pitch' will be allowed in any octave including also other notes. That means that is I'm looking for a minor triad in a 5 notes chord, the solution will look if a minor triad exists inside the 5 notes chord.", "\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule does not work because of SLEN...", "]", "[", "not-allowed-pitch-structure-rule", "[", "[", "pitch", "[", 60, 63, 67, "]", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "Only the pitches indicated in 'pitch' will be allowed in any octave and in any position.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule does not work because of SLEN...", "]", "[", "not-allowed-pitch-class-rule", "[", "[", "pitch", "[", 60, 63, 67, "]", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "Only the class (for instance a minor triad) indicated in 'pitch' will be allowed in any octave.", "\n\t\t\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule does not work because of SLEN...", "]", "[", "not-allowed-pitch-class-sub-list-rule", "[", "[", "pitch", "[", 60, 63, 67, "]", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This function outputs a solution having only the class (for instance minor triad) indicated in 'pitch' will NOT be allowed in any octave including also other notes. That means that is I'm looking for NOT HAVING a minor triad in a 5 notes chord, the solution will look if a minor triad exists inside the 5 notes chord.", "\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule does not work because of SLEN...", "]", "[", "index-pitch-rule", "[", "[", "index", "i1", "]", "[", "pitch", "[", 60, 62, "]", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "For the give index (i1, i2, i3...) only the pitches indicated in 'pitch' will be allowed in any octave.", "\n\t\t\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "not-index-pitch-rule", "[", "[", "index", "i1", "]", "[", "pitch", "[", 60, 62, "]", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "For the give index (i1, i2, i3...) only the pitches indicated in 'pitch' will NOT be allowed in any octave.", "\n\t\t\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "any-note-repeated-rule", "[", "[", "times", 2, "]", "[", "which3", 1, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "Any notes has to be repeated (in modulo too) a less, exactly or more times as indicated in 'times'.", "\n\t\t\nN.B. BE CAREFULL: the menu which? defines less, equal or more.\nIf <, the calculation is quite fast.\nIf =, be sure to have a 'pari' number of candidates in the esarch space.\nIf >, the calculation can be very slow.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "count-this-note-rule", "[", "[", "note", 68, "]", "[", "how-many", 3, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges a solution to have the given note repeated many times as indicated in 'how-many inthe exact octave.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "count-this-modulo-rule", "[", "[", "note", 68, "]", "[", "how-many", 3, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges a solution to have a given note repeated many times as indicated in 'how-many, in any possible octave.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "not-repeated-modulo12-sub-group-rule", "[", "[", "sub-group-length", 4, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "There are no modulo 12 repetition inside each sub group indicated with 'sub-group-length'.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "not-modulo12-repetition-rule", "[", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule allows only solution without any repetition in any octave.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "not-modulo12-local-repetition-rule", "[", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule allows only solution without any LOCAL repetition in any octave.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "mk-profile-pitch-rule", "[", "[", "curve-min", 60, "]", "[", "curve-max", 72, "]", "[", "steps", 10, "]", "[", "bpf_profile", "[", "]", "]", "[", "approx", 2, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule asks the engine to put out a solution identical to the one put in profile.\nAs you understand, this rule is usefull only as heuristic!\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "mk-profile-pitch-modulo-rule", "[", "[", "pitches", "[", 60, 62, 64, 65, "]", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule asks the engine to put out a solution of pitches having the same modulo 12 of the given profile.\nIt is a OTTAVIATORE.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "]", "[", "shaping-rules", "[", "ascending-rule", "[", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges all the value to be ascending.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "ascending-without-repetition-rule", "[", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges all the value to be ascending without any repetition.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "ascending-sub-group-no-repet-rule", "[", "[", "nth-?", 0, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges the nth (put in nth-?) values of a list of lists to be ascending without any repetition.", "\n\t\t\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "ascending-sub-group-with-repet-rule", "[", "[", "nth-?", 0, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges the nth (put in nth-?) values of a list of lists to be ascending with repetitions.", "\n\t\t\nATTENTION : The Heuristic implementation can not work.", "]", "[", "descending-rule", "[", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges all the value to be descending\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "descending-without-repetition-rule", "[", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges all the value to be descending without any repetition.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "descending-sub-group-no-repet-rule", "[", "[", "nth-?", 0, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges the nth (put in nth-?) values of a list of lists to be descending without any repetition.", "\n\t\t\nATTENTION : THE HEURISTIC MODE IT IS NOT WORKING", "]", "[", "descending-sub-group-with-repet-rule", "[", "[", "nth-?", 0, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges the nth (put in nth-?) values of a list of lists to be descending with repetitions.", "\n\t\t\nATTENTION : The Heuristic implementation can not work.", "]", "[", "mk-fix-profile-rule", "[", "[", "profile", "[", 60, 63, 70, 74, "]", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule asks the engine to put out a solution identical to the one put in profile.\nAs you understand, this rule is usefull only as heuristic!\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "mk-profile-rule", "[", "[", "curve-min", 60, "]", "[", "curve-max", 72, "]", "[", "steps", 10, "]", "[", "bpf_profile", "[", "]", "]", "[", "decimals", 0, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule asks the engine to put out a solution identical to the one put in profile.\nAs you understand, this rule is usefull only as heuristic!\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "sub-group-mk-profile-rule", "[", "[", "curve-min", 60, "]", "[", "curve-max", 72, "]", "[", "nth-?", 0, "]", "[", "steps", 10, "]", "[", "bpf_profile", "[", "]", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule asks the engine to put out a solution in which for\neach sub-groups the nth \n\t\t", "(put in nth-?) has to be identical to the one put in profile.", "\n\t\t\nAs you understand, this rule is usefull only as heuristic!ATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "direct-analysis-rule", "[", "[", "analysis", "[", 1, -1, 0, 1, "]", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule asks the engine to put out a solution identical to the one put in profile.\nAs you understand, this rule is usefull only as heuristic!\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "energy-profile-rule", "[", "[", "energy-profile", "[", 32, 22, 18, 19, 40, 12, 1, 249, "]", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "energy-profile-range-rule", "[", "[", "energy-profile", "[", 32, 22, 18, 19, 40, 12, 1, 249, "]", "]", "[", "range", 10, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "]", "[", "pattern-rules", "[", "ptrn-find-rule", "[", "[", "ptrn-length", 2, "]", "[", "repeat-ptrn", 3, "]", "[", "which5", 1, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule looks for solutions having patterns with a giveen length of element\nput in ptrn-length. In repeated-ptrn you have to put how many time do you\nwant the pattern to be repeated.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "not-ptrn-find-rule", "[", "[", "ptrn-length", 2, "]", "[", "repeat-ptrn", 3, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule looks for solutions NOT having patterns with a giveen length of element\nput in ptrn-length. In repeated-ptrn you have to put how many time do you\nwant the pattern to be repeated.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "find-this-ptrn-n-times-rule", "[", "[", "pattern", "[", 1, 2, 3, "]", "]", "[", "repeat-ptrn", 2, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule looks for solutions having patterns with a giveen length of element\nput in ptrn-length. In repeated-ptrn you have to put how many time do you\nwant the pattern to be repeated.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "no-shape-pattern-lcl-repetition-rule", "[", "[", "ptrn-length", 4, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule does not allow two consecutive pattern described in the dirct-analys format. In Italiano : questa regola \nnon ammette due pattern consecutivi la cui descrizione Ë basata sul direct analys di morphologie: chiama Filippo se non ti ricordi...", "]", "[", "more-first-repeated-than-second-rule", "[", "[", "element-1", "[", 2, "]", "]", "[", "element-2", "[", 3, "]", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule asks the engine to have a solution with the first element repeated\nmore times than the second.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "repeated-pattern-rule", "[", "[", "pattern", 2, "]", "[", "times", 3, "]", "[", "which_unparen", ":=", "]", "[", "absolute?", ":absolute", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule is for pattern repetitions. In 'pattern you put what you want to be repeated.\nIn 'times you put how many times you want teh pattern to be repeated. In 'which? you can chose among\n'< it that means less times, '= that means an exact number of times and '> that means more times.\nIn 'absolute? you can chose if you are looking for positive elements ", "(absolute) or not.", "\n\t\t\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "always-more-little-included-rule", "[", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "When one element (as list of lists) is bigger than a second so the more little has to be included in the bigger.", "\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "]", "[", "distance-rules", "[", "distance-rule", "[", "[", "pattern", "[", 1, 2, 3, "]", "]", "[", "distance", 50, "]", "[", "which_unparen", ":<", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This is a morphological rule. It asks to the engine those solutions who have a distance\n- given in 'distance - with the 'pattern. In which? you can chose if you want an equal distance '=,\na more little distance '< or a bigger distance '>.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "]", "[", "structure-rules", "[", "mk-symbol-structure-rule", "[", "[", "structure", "[", "c", "i", "a", "o", "]", "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges the solution to be as indicated in structure.\nYou understand that this rule has meaning only as heuristic.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "find-apply-global-sum-rule", "[", "[", "sum", 10, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule finds out the candidates that summed together they give as a risult the same value\nput in sum.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "find-apply-global-absolute-sum-rule", "[", "[", "sum", 10, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule finds out the candidates that summed together (in an absolute mode) they give as a risult the same value put in sum.", "\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "find-apply-approx-sum-rule", "[", "[", "sum", 7, "]", "[", "approx", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1070176665, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule finds out the candidates that summed together they give as a risult the same value\nput in sum.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "find-apply-approx-absolute-sum-rule", "[", "[", "sum", 7, "]", "[", "approx", "_x_x_x_x_bach_float64_x_x_x_x_", 2576980378, 1070176665, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule finds out the candidates that summed together (in the absoulte mode) they give as a risult the same value put in sum.", "\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "length-sub-group-applied-sum-rule", "[", "[", "length?", 1, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges each sub list of the solution ti have an applied sum equal to length?.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "structured-order-sum-rule", "[", "[", "candidates", "[", "?1", "?2", "?3", "]", "]", "[", "order", "[", 0, 1, 0, 2, 2, 2, 2, 0, 1, "]", "]", "[", "sum", 11, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "In candidates you put in sconstraints symbol the candidates you are looking for (ex. ?1 ?2 ?3). Then in order you put a list of indexes that has to be applied to a posn-match for the candidates", "``", "[", "ex. ", "[", "0 1 0 2 2 2 2 0 1", "]", "]", ". Then in sum you put the value that the 3 candidates you haveindicated, summmed together in the given order.", "\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "count-positive-rule", "[", "[", "number", 2, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "The solution must have a number of positive valure as indicatd in number.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "count-negative-rule", "[", "[", "number", 2, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "The solution must have a number of negative valure as indicatd in number.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "no-consecutive-rests-rule", "[", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "Two negative values can not be consecutive.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "no-consecutive-pulses-rule", "[", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "Two positive values can not be consecutive.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "alternating-positive-negative-rule", "[", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule obliges positive number to be alternated with negative numbers.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "alternating-+/-first-elmt-rule", "[", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule ceates a result of sub lists in which the fisrt element is, in an alterning way, before positive then negative an so on.\nATTENTION : this rule works with list of lists.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "alternating-+/-last-elmt-rule", "[", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule ceates a result of sub lists in which the last element is, in an alterning way, before positive\nthen negative an so on.\nATTENTION : this rule works with list of lists.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "]", "[", "matrix-rules", "[", "mk-latin-matrix-rule", "[", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule create a latin matrix like following :\n     1 3 2 4\n     2 1 4 3\n     3 4 1 2\n     4 2 3 1\n\nATTENTION : It works with list of lists.\nATTENTION : in the mode true/false, the rule is perfectly applied.\nIn the mode heuristic, the rule is applied as much as possible", "]", "[", "chain-common-element-lists-rule", "[", "[", "chain-length?", 2, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule chains lists of lists following the criteria of adaptating figure: see CMI thoery.\nYou have two lists of lists: in chain-lenngth?, the length of the last part of the corrent list\n\t\t", "(and automatically the length of the first part of the forword one.", "\nATTENTION : IN THE HEURISTIC MODE IT DOES NOT WORK. WHY???", "]", "[", "chain-more-little-included-common-lists-rule", "[", "[", "first-n?", 2, "]", "[", "last-n?", 2, "]", "[", "mode?", ":true/false", "]", "[", "weight", 1, "]", "]", "This rule chains lists of lists following the criteria of adaptating figure: see CMI thoery.\nYou have two lists of lists: in chain-lenngth?, the length of the last part of the corrent list ", "(and automatically the length of the first part of the forword one.", "\nATTENTION : IN THE HEURISTIC MODE IT DOES NOT WORK. WHY???", "]", "]" ],
									"reg_data_count" : [ 1 ],
									"saved_object_attributes" : 									{
										"embed" : 1,
										"versionnumber" : 80001
									}
,
									"text" : "bach.reg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-34",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 237.0, 253.0, 96.0, 22.0 ],
									"text" : "prepend append"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 237.0, 217.0, 93.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.iter @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 424.0001220703125, 182.0, 139.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.nth 1 1 @unwrap 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 237.0, 182.0, 165.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.mapelem @maxdepth 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-30",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 237.0, 142.999984741210938, 189.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.value all_jbs_rules_interface"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-805",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 84.6666259765625, 413.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-806",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 690.166748046875, 550.6666259765625, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-807",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 31.0, 300.0001220703125, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-808",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 137.6666259765625, 861.0001220703125, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-809",
									"index" : 3,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 535.0, 909.6666259765625, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-810",
									"index" : 4,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 630.0, 1142.6666259765625, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-811",
									"index" : 6,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 784.6666259765625, 1142.6666259765625, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-812",
									"index" : 5,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 700.0, 1142.6666259765625, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-147", 0 ],
									"order" : 0,
									"source" : [ "obj-101", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-809", 0 ],
									"order" : 1,
									"source" : [ "obj-101", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"source" : [ "obj-111", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-111", 0 ],
									"source" : [ "obj-112", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-117", 1 ],
									"source" : [ "obj-112", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-125", 0 ],
									"source" : [ "obj-113", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 1 ],
									"source" : [ "obj-117", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-101", 0 ],
									"source" : [ "obj-125", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"source" : [ "obj-147", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-810", 0 ],
									"source" : [ "obj-147", 1 ]
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
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-34", 0 ],
									"source" : [ "obj-25", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-27", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-811", 0 ],
									"source" : [ "obj-27", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-812", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-807", 0 ],
									"source" : [ "obj-34", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"source" : [ "obj-42", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-5", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-63", 0 ],
									"source" : [ "obj-59", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-30", 0 ],
									"midpoints" : [ 223.833333333333343, 134.499992370605469, 246.5, 134.499992370605469 ],
									"source" : [ "obj-63", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-63", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-807", 0 ],
									"midpoints" : [ 590.5, 294.00006103515625, 40.5, 294.00006103515625 ],
									"source" : [ "obj-63", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-807", 0 ],
									"source" : [ "obj-63", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-74", 0 ],
									"source" : [ "obj-67", 0 ]
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
									"destination" : [ "obj-79", 0 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-117", 0 ],
									"source" : [ "obj-74", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-74", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 0 ],
									"midpoints" : [ 369.1666259765625, 512.5, 148.1666259765625, 512.5 ],
									"source" : [ "obj-74", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 1 ],
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 0 ],
									"source" : [ "obj-78", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 1 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-80", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"source" : [ "obj-805", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-95", 0 ],
									"source" : [ "obj-806", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 1 ],
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-808", 0 ],
									"midpoints" : [ 166.1666259765625, 818.8333740234375, 147.1666259765625, 818.8333740234375 ],
									"source" : [ "obj-85", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 0 ],
									"source" : [ "obj-87", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-808", 0 ],
									"midpoints" : [ 185.1666259765625, 843.50006103515625, 147.1666259765625, 843.50006103515625 ],
									"source" : [ "obj-88", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-808", 0 ],
									"source" : [ "obj-88", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 0 ],
									"source" : [ "obj-88", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-112", 0 ],
									"source" : [ "obj-95", 0 ]
								}

							}
 ],
						"styles" : [ 							{
								"name" : "MOZ-numint",
								"default" : 								{
									"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontsize" : [ 16.95834 ],
									"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
									"fontname" : [ "Menlo Regular" ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
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
									"fontsize" : [ 22.062093999999998 ],
									"fontname" : [ "Andale Mono" ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "MOZ-umenu",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "color",
										"color1" : [ 0.996078, 0.996078, 0.996078, 1.0 ],
										"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
										"color" : [ 0.996078, 0.996078, 0.996078, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.5,
										"autogradient" : 0.0
									}
,
									"color" : [ 0.996078, 0.996078, 0.996078, 1.0 ],
									"elementcolor" : [ 0.996078, 0.996078, 0.996078, 1.0 ],
									"fontname" : [ "Menlo Regular" ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontface" : [ 2 ]
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
								"name" : "message001",
								"default" : 								{
									"fontsize" : [ 13.0 ],
									"fontname" : [ "Arial" ],
									"textcolor_inverse" : [ 0.92549, 0.364706, 0.341176, 1.0 ]
								}
,
								"parentstyle" : "",
								"multi" : 0
							}
, 							{
								"name" : "orjan style",
								"default" : 								{
									"bgfillcolor" : 									{
										"type" : "gradient",
										"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
										"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
										"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
										"angle" : 270.0,
										"proportion" : 0.39,
										"autogradient" : 0
									}
,
									"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ],
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
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
					"patching_rect" : [ 156.584716796875, 330.6666259765625, 427.333282470703125, 22.0 ],
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
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 269.75146484375, 535.666748046875, 146.0, 22.0 ],
					"text" : "r #0_do_the_scripting"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 269.75146484375, 562.666748046875, 69.0, 22.0 ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ],
					"text" : "thispatcher"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Andale Mono",
					"fontsize" : 16.0,
					"id" : "obj-167",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 360.399993896484375, 100.0, 57.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 45.0, -2.0, 57.0, 24.0 ],
					"text" : "rules"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"fontname" : "Andale Mono",
					"fontsize" : 24.0,
					"id" : "obj-166",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 318.399993896484375, 100.0, 52.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, -2.0, 52.0, 33.0 ],
					"text" : "JBS"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 15.472880027145852,
					"id" : "obj-149",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 401.5845947265625, 457.89990234375, 132.333328247070312, 24.0 ],
					"text" : "no. of arguments"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-146",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 401.5845947265625, 433.89990234375, 50.0, 22.0 ],
					"triangle" : 0
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 12.0,
					"id" : "obj-144",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 401.5845947265625, 403.9000244140625, 71.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80001
					}
,
					"text" : "bach.length"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 11.034620040578881,
					"id" : "obj-130",
					"linecount" : 2,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 699.418212890625, 457.89990234375, 164.0, 33.0 ],
					"text" : "jbs-constraints::no-repetition-rule"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 452.2513427734375, 363.0, 50.0, 22.0 ],
					"text" : "weight"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 533.91796875, 363.0, 50.0, 22.0 ],
					"text" : "1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 610.4180908203125, 489.99993896484375, 34.0, 22.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 610.4180908203125, 520.6666259765625, 94.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"versionnumber" : 80001
					}
,
					"text" : "bach.reg @out t"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"id" : "obj-86",
					"items" : [ "no-repetition-rule", ",", "no-absolute-repetition-rule", ",", "no-local-repetition-rule", ",", "no-spaced-repetition-rule", ",", "not-modulo-x-repetition-rule", ",", "modulo-x-repetition-rule", ",", "not-modulo-x-local-repetition-rule", ",", "not-rpt-elmts-in-lists-rule", ",", "not-consecutive-number-rule", ",", "not-consecutive-ascending-rule", ",", "not-consecutive-descending-rule", ",", "not-consecutive-equal-rule", ",", "not-repeated-element-sub-group-rule", ",", "not-repeated-list-sub-group-rule", ",", "item-sub-group-member-rule", ",", "allowed-chain-rule", ",", "not-allowed-chain-rule", ",", "length-sub-group-rule", ",", "not-consecutive-equal-length-rule", ",", "not-length-repetition-rule", ",", "index-rule", ",", "not-index-rule", ",", "index-higher-rule", ",", "index-lower-rule", ",", "index-length-rule", ",", "index-nth-rule", ",", "index-applied-sum-rule", ",", "member-rule", ",", "not-member-rule", ",", "not-higher-than-rule", ",", "not-lower-than-rule", ",", "count-common-elements-rule", ",", "count-any-element-rule", ",", "count-this-element-rule" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 564.91796875, 292.0, 274.5001220703125, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 3.0, 29.0, 350.16650390625, 22.0 ],
					"varname" : "rule_name"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"id" : "obj-33",
					"items" : [ "generic-rules", ",", "interval-rules", ",", "pitch-rules", ",", "shaping-rules", ",", "pattern-rules", ",", "distance-rules", ",", "structure-rules", ",", "matrix-rules" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 156.584716796875, 292.0, 136.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 216.833465576171875, 4.0, 136.166534423828125, 22.0 ],
					"varname" : "rule_category"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 610.4180908203125, 552.33319091796875, 90.0, 22.0 ],
					"text" : "lisp.docstring if"
				}

			}
, 			{
				"box" : 				{
					"clickedimage" : 1,
					"id" : "obj-46",
					"maxclass" : "pictctrl",
					"name" : "help.png",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 610.4180908203125, 463.8656005859375, 21.0, 20.80096435546875 ],
					"presentation" : 1,
					"presentation_rect" : [ 325.249847412109375, 162.61846923828125, 24.0, 23.763053894042969 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 685.4180908203125, 367.66656494140625, 145.0, 22.0 ],
					"text" : "sprintf jbs-constraints::%s"
				}

			}
, 			{
				"box" : 				{
					"comment" : "domain and rules in chainedPMC format",
					"id" : "obj-132",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 11.0, 27.5, 30.0, 30.0 ],
					"varname" : "0_inlet"
				}

			}
, 			{
				"box" : 				{
					"comment" : "rule argument 1",
					"id" : "obj-134",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1036.3809814453125, 152.59124755859375, 30.0, 30.0 ],
					"varname" : "1_inlet"
				}

			}
, 			{
				"box" : 				{
					"comment" : "rule argument 2",
					"id" : "obj-136",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1117.2579345703125, 152.59124755859375, 30.0, 30.0 ],
					"varname" : "2_inlet"
				}

			}
, 			{
				"box" : 				{
					"comment" : "rule argument 3",
					"id" : "obj-141",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1199.2513427734375, 152.59124755859375, 30.0, 30.0 ],
					"varname" : "3_inlet"
				}

			}
, 			{
				"box" : 				{
					"comment" : "rule argument 4",
					"id" : "obj-147",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1281.2447509765625, 152.59124755859375, 30.0, 30.0 ],
					"varname" : "4_inlet"
				}

			}
, 			{
				"box" : 				{
					"comment" : "rule argument 5",
					"id" : "obj-150",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1363.2381591796875, 152.59124755859375, 30.0, 30.0 ],
					"varname" : "5_inlet"
				}

			}
, 			{
				"box" : 				{
					"comment" : "rule mode — true/false (0) or heuristic (1)",
					"id" : "obj-155",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1420.6666259765625, 108.59124755859375, 30.0, 30.0 ],
					"varname" : "6_inlet"
				}

			}
, 			{
				"box" : 				{
					"comment" : "rule weight (for heuristic mode only) — the higher the value, the more the rule is likely to apply against other heuristic rules",
					"id" : "obj-159",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1526.6666259765625, 108.59124755859375, 30.0, 30.0 ],
					"varname" : "7_inlet"
				}

			}
, 			{
				"box" : 				{
					"comment" : "domain and rules in chainedPMC format",
					"id" : "obj-161",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 69.0, 1268.0, 30.0, 30.0 ],
					"varname" : "0_outlet"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-161", 0 ],
					"midpoints" : [ 19.5, 1188.0, 78.5, 1188.0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"midpoints" : [ 166.5, 151.250015258789062, 166.084716796875, 151.250015258789062 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 2 ],
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"source" : [ "obj-104", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"source" : [ "obj-104", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-104", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"source" : [ "obj-104", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-96", 0 ],
					"source" : [ "obj-104", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 1 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-178", 0 ],
					"midpoints" : [ 49.5, 410.0, 1141.83331298828125, 410.0, 1141.83331298828125, 338.09130859375, 1172.1666259765625, 338.09130859375 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"source" : [ "obj-129", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-56", 0 ],
					"source" : [ "obj-132", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-134", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-136", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"source" : [ "obj-141", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 0 ],
					"source" : [ "obj-144", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-147", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"source" : [ "obj-150", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"midpoints" : [ 1430.1666259765625, 381.174636840820312, 1172.1666259765625, 381.174636840820312 ],
					"source" : [ "obj-155", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-231", 0 ],
					"source" : [ "obj-159", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"source" : [ "obj-178", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-216", 1 ],
					"source" : [ "obj-184", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-216", 2 ],
					"source" : [ "obj-188", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-161", 0 ],
					"midpoints" : [ 1937.5, 1230.5, 78.5, 1230.5 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-216", 3 ],
					"source" : [ "obj-190", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-216", 4 ],
					"source" : [ "obj-191", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-216", 5 ],
					"source" : [ "obj-192", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 1 ],
					"midpoints" : [ 964.16668701171875, 680.966751098632812, 1525.1666259765625, 680.966751098632812 ],
					"order" : 1,
					"source" : [ "obj-216", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 1 ],
					"midpoints" : [ 964.16668701171875, 677.87896728515625, 1973.5, 677.87896728515625 ],
					"order" : 0,
					"source" : [ "obj-216", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-216", 7 ],
					"source" : [ "obj-231", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.998192667961121, 1.0 ],
					"destination" : [ "obj-16", 1 ],
					"midpoints" : [ 1525.1666259765625, 866.433380126953125, 1919.0, 866.433380126953125 ],
					"order" : 0,
					"source" : [ "obj-26", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.998192667961121, 1.0 ],
					"destination" : [ "obj-22", 1 ],
					"midpoints" : [ 1262.1666259765625, 842.433380126953125, 1675.6666259765625, 842.433380126953125 ],
					"order" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.998192667961121, 1.0 ],
					"destination" : [ "obj-25", 1 ],
					"midpoints" : [ 1262.1666259765625, 839.966705322265625, 929.70001220703125, 839.966705322265625 ],
					"order" : 1,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.0, 0.0, 0.998192667961121, 1.0 ],
					"destination" : [ "obj-57", 1 ],
					"midpoints" : [ 1525.1666259765625, 868.966705322265625, 1181.166748046875, 868.966705322265625 ],
					"order" : 1,
					"source" : [ "obj-26", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-184", 0 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 1 ],
					"midpoints" : [ 204.5, 647.33331298828125, 77.5, 647.33331298828125 ],
					"source" : [ "obj-3", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-66", 0 ],
					"source" : [ "obj-3", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-231", 0 ],
					"midpoints" : [ 1172.1666259765625, 485.091323852539062, 1562.6666259765625, 485.091323852539062, 1562.6666259765625, 208.699356079101562, 1536.1666259765625, 208.699356079101562 ],
					"order" : 1,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"midpoints" : [ 1172.1666259765625, 484.091323852539062, 1643.1666259765625, 484.091323852539062, 1643.1666259765625, 208.699356079101562, 1589.1666259765625, 208.699356079101562 ],
					"order" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 0 ],
					"order" : 0,
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-813", 0 ],
					"order" : 1,
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"source" : [ "obj-34", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-188", 0 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-52", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-190", 0 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 3 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"midpoints" : [ 221.084716796875, 259.983352661132812, 574.41796875, 259.983352661132812 ],
					"source" : [ "obj-40", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-130", 1 ],
					"midpoints" : [ 694.9180908203125, 428.504379272460938, 853.918212890625, 428.504379272460938 ],
					"order" : 0,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"order" : 1,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 1 ],
					"order" : 2,
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-191", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.985948324203491, 0.0, 0.026950567960739, 1.0 ],
					"destination" : [ "obj-15", 0 ],
					"midpoints" : [ 1362.1666259765625, 801.424591064453125, 1708.0, 801.424591064453125 ],
					"order" : 0,
					"source" : [ "obj-49", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.985948324203491, 0.0, 0.026950567960739, 1.0 ],
					"destination" : [ "obj-57", 1 ],
					"midpoints" : [ 1362.1666259765625, 799.045623779296875, 1181.166748046875, 799.045623779296875 ],
					"order" : 1,
					"source" : [ "obj-49", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.985948324203491, 0.0, 0.026950567960739, 1.0 ],
					"destination" : [ "obj-25", 1 ],
					"midpoints" : [ 1494.6666259765625, 827.045623779296875, 929.70001220703125, 827.045623779296875 ],
					"order" : 1,
					"source" : [ "obj-50", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.985948324203491, 0.0, 0.026950567960739, 1.0 ],
					"destination" : [ "obj-51", 0 ],
					"midpoints" : [ 1494.6666259765625, 826.424591064453125, 1451.5, 826.424591064453125 ],
					"order" : 0,
					"source" : [ "obj-50", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-192", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 4 ],
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-56", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-56", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-216", 0 ],
					"source" : [ "obj-66", 1 ]
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
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"source" : [ "obj-68", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-104", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.135111376643181, 1.0, 0.149509727954865, 1.0 ],
					"destination" : [ "obj-15", 0 ],
					"order" : 0,
					"source" : [ "obj-7", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"color" : [ 0.135111376643181, 1.0, 0.149509727954865, 1.0 ],
					"destination" : [ "obj-51", 0 ],
					"order" : 1,
					"source" : [ "obj-7", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-75", 0 ],
					"source" : [ "obj-70", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-81", 0 ],
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"source" : [ "obj-71", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-68", 0 ],
					"source" : [ "obj-73", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 1 ],
					"source" : [ "obj-73", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-76", 0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-80", 0 ],
					"source" : [ "obj-74", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 0 ],
					"source" : [ "obj-75", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-73", 1 ],
					"source" : [ "obj-76", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-216", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"midpoints" : [ 605.75146484375, 442.000015258789062, 858.9180908203125, 442.000015258789062, 858.9180908203125, 185.000015258789062, 166.084716796875, 185.000015258789062 ],
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-81", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"source" : [ "obj-813", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 1 ],
					"source" : [ "obj-813", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 1 ],
					"source" : [ "obj-813", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-33", 0 ],
					"midpoints" : [ 166.084716796875, 367.000015616416931, 141.4180908203125, 367.000015616416931, 141.4180908203125, 279.333348393440247, 166.084716796875, 279.333348393440247 ],
					"source" : [ "obj-813", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"midpoints" : [ 247.751373291015625, 373.000015258789062, 127.75146484375, 373.000015258789062, 127.75146484375, 266.000015258789062, 574.41796875, 266.000015258789062 ],
					"source" : [ "obj-813", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"source" : [ "obj-813", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 1 ],
					"order" : 1,
					"source" : [ "obj-83", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-216", 6 ],
					"midpoints" : [ 1219.1666259765625, 522.000015258789062, 1654.809498378208673, 522.000015258789062, 1654.809498378208673, 165.000015258789062, 1454.452401297432971, 165.000015258789062 ],
					"source" : [ "obj-83", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 1 ],
					"order" : 0,
					"source" : [ "obj-83", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"source" : [ "obj-83", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"midpoints" : [ 702.16802978515625, 343.666610717773438, 694.9180908203125, 343.666610717773438 ],
					"source" : [ "obj-86", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-74", 1 ],
					"order" : 0,
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-813", 1 ],
					"order" : 1,
					"source" : [ "obj-86", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-215", 0 ],
					"order" : 1,
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-90", 1 ],
					"order" : 0,
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-231", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-89", 0 ],
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-161", 0 ],
					"midpoints" : [ 78.5, 1174.5, 78.5, 1174.5 ],
					"source" : [ "obj-97", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-98", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "help.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.docstring.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.eval-box.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_code_generators_legacy",
				"patcherrelativepath" : "../pw4m_lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "make_path_once.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_code_generators_legacy",
				"patcherrelativepath" : "../pw4m_lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pw.quote.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_code_generators_legacy",
				"patcherrelativepath" : "../pw4m_lisp_code_generators_legacy",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.lookup.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "lisp.quickeval.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_lisp_scripting_boxes",
				"patcherrelativepath" : "../pw4m_lisp_scripting_boxes",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "jbs_block_null.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_pmc",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.belong.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.sum.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.filter.maxpat",
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
				"name" : "rule_number_splitter.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/pw4m_pmc",
				"patcherrelativepath" : ".",
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
				"name" : "bach.change.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../../bach/patchers",
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
				"name" : "bpatcher-resize-gizmo.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers/utilities",
				"patcherrelativepath" : "../utilities",
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
				"name" : "bach.join.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.reg.mxo",
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
, 			{
				"name" : "bach.portal.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.append.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.length.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.value.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.mapelem.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.nth.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.iter.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.args.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.slice.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.flat.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.intersection.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.eq.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.thin.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.expr.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.is.mxo",
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
				"name" : "bach.contains.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.keys.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.wrap.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.group.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "MOZ-numint",
				"default" : 				{
					"selectioncolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontsize" : [ 16.95834 ],
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"fontname" : [ "Menlo Regular" ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ]
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
					"fontsize" : [ 22.062093999999998 ],
					"fontname" : [ "Andale Mono" ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "MOZ-umenu",
				"default" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color1" : [ 0.996078, 0.996078, 0.996078, 1.0 ],
						"color2" : [ 0.2, 0.2, 0.2, 1.0 ],
						"color" : [ 0.996078, 0.996078, 0.996078, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.5,
						"autogradient" : 0.0
					}
,
					"color" : [ 0.996078, 0.996078, 0.996078, 1.0 ],
					"elementcolor" : [ 0.996078, 0.996078, 0.996078, 1.0 ],
					"fontname" : [ "Menlo Regular" ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : [ 2 ]
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
					"fontsize" : [ 13.0 ],
					"fontname" : [ "Arial" ],
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
					"bgfillcolor" : 					{
						"type" : "gradient",
						"color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"color1" : [ 1.0, 1.0, 1.0, 1.0 ],
						"color2" : [ 0.862745, 0.870588, 0.878431, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ],
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
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
