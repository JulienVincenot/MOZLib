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
		"rect" : [ 34.0, 83.0, 1372.0, 783.0 ],
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
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "Andale Mono",
					"id" : "obj-27",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 84.9285888671875, 236.028656005859375, 57.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 79.5, 24.574249267578125, 66.0, 24.0 ],
					"style" : "MOZ-param",
					"text" : "notes"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 211.5, 599.0, 94.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"versionnumber" : 80005
					}
,
					"text" : "bach.reg @out t"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 168.0, 391.0, 62.5, 22.0 ],
					"text" : "t l l"
				}

			}
, 			{
				"box" : 				{
					"comment" : "returns the message that would produce the profile",
					"id" : "obj-35",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 211.5, 637.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 245.0, 15.0, 70.0, 22.0 ],
					"text" : "loadmess 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 245.0, 56.0, 61.0, 22.0 ],
					"text" : "hidden $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "int" ],
					"patching_rect" : [ 103.0, 68.0, 29.5, 22.0 ],
					"text" : "t l 0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 161.0, 56.0, 70.0, 22.0 ],
					"text" : "loadmess 0"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Menlo Regular",
					"fontsize" : 11.0,
					"hidden" : 1,
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 174.0, 95.0, 137.0, 19.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 245.72589111328125, 24.574249267578125, 136.0, 19.0 ],
					"text" : "resampling function"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
						"rect" : [ 553.0, 252.0, 853.0, 480.0 ],
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
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 0,
											"revision" : 5,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 84.0, 129.0, 1322.0, 732.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-1",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 147.0, 147.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-2",
													"linecount" : 28,
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 50.0, 191.0, 1076.0, 384.0 ],
													"text" : "2.007121 2.8 3.594621 4.388371 5.182121 5.975871 6.769621 7.563371 8.357121 9.15087 9.944621 11.532121 12.325871 12.325871 13.11962 14.707121 15.5 16.294621 16.294621 17.88212 17.88212 19.46962 19.46962 19.46962 20.263371 21.057121 21.057121 22.644621 23.43837 24.232121 24.867121 25.502121 26.137121 26.772121 27.40712 28.128712 28.850302 29.571894 30.293484 31.015076 31.736666 32.458256 33.18 33.90144 34.623032 35.34462 36.058994 36.773369 37.487747 38.202122 38.916496 39.630871 40.345245 41.05962 41.773994 42.488369 43.043995 43.6 44.155247 44.710869 45.266495 45.822121 46.377747 46.933372 47.488995 48.044621 48.838371 49.632122 50.161289 50.690453 51.21962 51.748787 52.277954 52.807121 53.336288 53.865456 54.394619 55.029621 55.664619 56.3 56.93462 57.569622 58.363369 58.68087 58.998371 59.315872 59.633369 59.950871 60.347744 60.744621 61.273788 61.802956 62.332119 62.728996 63.12587 63.390453 63.655037 63.919621 64.713371 65.507118 65.771706 66.036285 66.3 66.3 66.697746 67.09462 67.491493 67.888374 67.888374 68.285248 68.682121 68.946701 69.211288 69.475868 70.269623 71.06337 71.06337 71.06337 71.857124 71.857124 72.650871 72.650871 72.650871 72.650871 73.047745 73.444618 73.444618 73.444618 73.841499 74.238373 74.238373 74.238373 74.238373 75.03212 75.03212 24.232121 23.835245 23.43837 23.43837 23.43837 23.43837 23.43837 23.636808 23.835245 24.033684 24.232121 24.761288 25.290455 25.81962 26.348787 26.877954 27.40712 27.895582 28.384045 28.872505 29.360968 29.849428 30.337891 30.826351 31.314814 31.803274 32.291737 32.780197 33.268658 33.757122 34.39212 35.027122 35.662121 36.297119 36.932121 37.56712 38.202122 38.83712 39.472122 40.107121 40.768578 41.43 42.091496 42.752953 43.414413 44.075871 44.737328 45.398788 46.060246 46.721703 47.383163 48.044621 48.781673 49.518726 50.255783 50.992836 51.73 52.466942 53.203995 53.941048 54.678104 55.415157 56.15221 56.889263 57.626316 58.363369 59.039528 59.715687 60.391842 61.068001 61.744156 62.420315 63.096474 63.772629 64.448784 65.124947 65.801102 66.477257 67.153419 67.829575 68.50573 69.181892 69.858047 70.534203 71.210358 71.88652 72.562675 73.238831 73.914993 74.591148 75.267303 75.943466 76.619621 77.232971 77.846329 78.459679 79.073029 79.686378 80.3 80.913086 81.526436 82.139793 82.753143 83.366493 83.98 84.593201 85.206551 85.82 86.433258 87.046608 87.66 88.273315 88.886665 89.5 90.113373 90.64254 91.171707 91.7 92.23 92.759201 93.288368 93.817535 94.346703 94.87587 95.405037 95.934204 96.463371 97.157906 97.852432 98.546967 99.241493 99.936028 100.630562 101.325089 102.019623 102.416496 102.81337 103.210243 103.607124 104.003998 104.4 104.996185 105.591499 106.186806 106.78212 107.223091 107.664062 108.105034 108.546013 108.986984 109.427956 109.868927 110.31 110.75087 111.227119 111.703369 112.179619 112.655869 113.132118 113.528999 113.925873 114.322746 114.71962 115.116493 115.513374 115.513374 115.513374 115.513374 114.71962 77.413368 73.444618 72.386284 71.327957 70.269623 69.475868 68.285248 67.09462 66.896187 66.697746 66.5 66.3 66.3 66.3 66.3 66.3 66.3 66.3 66.3 66.3 66.3 66.3 66.3 66.3 66.3 66.3 66.3 66.3 66.3 66.3 66.697746 67.09462 67.491493 67.888374 68.285248 68.682121 69.078995 69.475868 69.872749 70.269623 70.666496 71.06337 71.592537 72.121704 72.650871 73.18 73.709206 74.238373 74.714622 75.190872 75.667122 76.143372 76.619621 77.095871 77.572121 78.04837 78.52462 79. 79.635872 80.270874 80.905869 81.540871 82.175873 82.742836 83.309799 83.876762 84.443726 85.010689 85.57766 86.144623 86.711586 87.278549 87.845512 88.412476 88.979439 89.54641 90.113373 90.589622 91.065872 91.542122 92.018372 92.494621 93.288368 94.082123 94.478996 94.87587 95.272743 95.669624 96.463371 97.257118 97.521706 97.786285 98.050873 98.84462 98.84462 98.84462 98.84462 97.257118 80.588371 73.444618 70.269623 68.682121 67.09462 64.713371 62.332119 61.538372 60.744621 59.950871 59.421703 58.892536 58.363369 57.966496 57.569622 57.172745 56.775871 56.775871 56.775871 56.775871 56.775871 56.775871 56.775871 56.775871 56.775871 56.775871 56.775871 56.775871 56.775871 56.775871 56.775871 56.775871 56.775871 56.775871 56.775871 57.136665 57.497463 57.858257 58.219051 58.58 58.940643 59.301437 59.662235 60.023029 60.383823 60.744621 61.273788 61.802956 62.332119 62.861286 63.390453 63.919621 64.352577 64.78553 65.218483 65.651436 66.084396 66.517349 66.950302 67.383255 67.816208 68.249168 68.682121 69.158371 69.634621 70.11087 70.58712 71.06337 71.630333 72.197296 72.764267 73.33123 73.898193 74.465157 75.03212 75.473091 75.914062 76.355034 76.796013 77.236984 77.677956 78.118927 78.56 79. 79.53 80.059204 80.588371 81.117538 81.646706 82.175873 82.516052 82.856224 83.196404 83.536583 83.876762 84.216942 84.557121 96.463371"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 50.0, 159.0, 58.0, 22.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-31",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 608.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-31", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"source" : [ "obj-4", 0 ]
												}

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
													"fontsize" : [ 16.0 ],
													"fontname" : [ "Menlo Regular" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-title",
												"default" : 												{
													"fontsize" : [ 22.062094355029235 ],
													"fontname" : [ "Andale Mono" ]
												}
,
												"parentstyle" : "",
												"multi" : 0
											}
, 											{
												"name" : "MOZ-umenu",
												"default" : 												{
													"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
													"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
													"fontname" : [ "Menlo Regular" ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"fontface" : [ 2 ],
													"bgfillcolor" : 													{
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
, 											{
												"name" : "SPLIM",
												"parentstyle" : "comment001",
												"multi" : 0
											}
, 											{
												"name" : "comment001",
												"default" : 												{
													"fontsize" : [ 18.0 ],
													"fontname" : [ "Herculanum" ]
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
													"fontsize" : [ 13.0 ],
													"fontname" : [ "Arial" ],
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
													"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ],
													"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
													"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
													"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
													"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
													"bgfillcolor" : 													{
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
									"patching_rect" : [ 151.5, 30.0, 19.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"linecount" : 945,
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 173.0, 358.0, 55.0, 12677.0 ],
									"text" : "0. 0.887137 1.776224 2.664336 3.552447 4.440559 5.328671 6.216783 7.104895 7.993006 8.881119 10.657342 11.545454 11.545454 12.433565 14.20979 15.096927 15.986014 15.986014 17.762236 17.762236 19.53846 19.53846 19.53846 20.426573 21.314685 21.314685 23.090908 23.979019 24.867132 25.577622 26.288111 26.998601 27.70909 28.419579 29.226954 30.034328 30.841703 31.649077 32.456452 33.263826 34.071199 34.878745 35.68595 36.493326 37.3 38.1 38.9 39.698601 40.497902 41.297202 42.096502 42.895802 43.695103 44.494402 45.293703 45.915382 46.537486 47.158741 47.780416 48.402096 49.023775 49.645454 50.267133 50.888809 51.510488 52.3986 53.286713 53.878788 54.47086 55.062934 55.655009 56.247084 56.839159 57.431234 58.02331 58.615381 59.325873 60.03636 60.747276 61.45734 62.167832 63.05594 63.411186 63.766432 64.121678 64.476919 64.832166 65.27622 65.720278 66.312353 66.904429 67.496499 67.940558 68.384612 68.680649 68.976687 69.272725 70.160837 71.048946 71.344988 71.641021 71.936086 71.936086 72.381117 72.825172 73.269225 73.713288 73.713288 74.157343 74.601397 74.89743 75.193472 75.489505 76.377623 77.265731 77.265731 77.265731 78.153847 78.153847 79.041956 79.041956 79.041956 79.041956 79.486011 79.93 79.93 79.93 80.374127 80.818182 80.818182 80.818182 80.818182 81.70629 81.70629 24.867132 24.423075 23.979019 23.979019 23.979019 23.979019 23.979019 24.201048 24.423075 24.645105 24.867132 25.459207 26.051282 26.643355 27.23543 27.827505 28.419579 28.966109 29.512641 30.05917 30.605702 31.152231 31.698763 32.245291 32.791823 33.338352 33.884884 34.431413 34.977943 35.524476 36.234963 36.945455 37.655943 38.36643 39.076922 39.78741 40.497902 41.208389 41.918881 42.62937 43.369461 44.109514 44.849649 45.589741 46.33 47.07 47.81 48.550116 49.290208 50.0303 50.770395 51.510488 52.335162 53.16 53.984515 54.80919 55.633989 56.458539 57.283214 58.107889 58.932567 59.757241 60.581916 61.406591 62.231265 63.05594 63.812482 64.569023 65.32556 66.082102 66.838639 67.59518 68.351722 69.108259 69.864796 70.621342 71.377879 72.134416 72.890961 73.647499 74.404036 75.160581 75.917118 76.673656 77.430193 78.186738 78.943275 79.7 80.456358 81.212895 81.969432 82.725978 83.482515 84.168781 84.855056 85.541321 86.227587 86.913852 87.6 88.286392 88.972658 89.658931 90.345197 91.031463 91.717904 92.404003 93.090269 93.776645 94.462808 95.149074 95.835387 96.521613 97.207879 97.894128 98.580419 99.172494 99.764569 100.355666 100.948673 101.540786 102.132861 102.724936 103.317012 103.909087 104.501162 105.093237 105.685312 106.462414 107.239506 108.016608 108.7937 109.570802 110.347903 111.124996 111.902097 112.346151 112.790206 113.234259 113.678322 114.122377 114.565456 115.232516 115.898602 116.564679 117.230765 117.724159 118.217553 118.710948 119.204352 119.697746 120.191141 120.684535 121.178043 121.671324 122.20419 122.737057 123.27 123.802792 124.335658 124.77972 125.223775 125.667829 126.111884 126.555937 127. 127. 127. 127. 126.111884 84.370624 79.93 78.745915 77.561772 76.377623 75.489505 74.157343 72.825172 72.603149 72.381117 72.16 71.936086 71.936086 71.936086 71.936086 71.936086 71.936086 71.936086 71.936086 71.936086 71.936086 71.936086 71.936086 71.936086 71.936086 71.936086 71.936086 71.936086 71.936086 71.936086 72.381117 72.825172 73.269225 73.713288 74.157343 74.601397 75.045451 75.489505 75.933568 76.377623 76.821676 77.265731 77.857806 78.45 79.041956 79.633988 80.226107 80.818182 81.351048 81.883915 82.416782 82.949649 83.482515 84.015382 84.54825 85.081116 85.613983 86.145876 86.857341 87.567833 88.278317 88.988809 89.7 90.333665 90.968029 91.602393 92.236758 92.871123 93.505496 94.14 94.774224 95.408588 96.042952 96.677318 97.311682 97.946055 98.580419 99.113285 99.646152 100.179019 100.711887 101.244753 102.132861 103.020979 103.465032 103.909087 104.353141 104.797203 105.685312 106.57342 106.869463 107.165495 107.461538 108.349646 108.349646 108.349646 108.349646 106.57342 87.923075 79.93 76.377623 74.601397 72.825172 70.160837 67.496499 66.608391 65.720278 64.832166 64.24 63.648015 63.05594 62.611886 62.167832 61.723773 61.279719 61.279719 61.279719 61.279719 61.279719 61.279719 61.279719 61.279719 61.279719 61.279719 61.279719 61.279719 61.279719 61.279719 61.279719 61.279719 61.279719 61.279719 61.279719 61.683404 62.087094 62.49078 62.894465 63.298324 63.701841 64.105527 64.509217 64.912902 65.316588 65.720278 66.312353 66.904429 67.496499 68.088574 68.680649 69.272725 69.757152 70.241575 70.725998 71.21042 71.694851 72.179274 72.663697 73.14812 73.632543 74.116974 74.601397 75.134264 75.667131 76.2 76.732864 77.265731 77.9 78.534459 79.168833 79.803197 80.437561 81.071926 81.70629 82.2 82.693079 83.186474 83.68 84.173271 84.666666 85.16 85.653569 86.145876 86.738883 87.331 87.923075 88.51515 89.107226 89.7 90.08 90.460532 90.841153 91.221773 91.602393 91.983014 92.363634 105.685312"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 398.0, 59.0, 29.5, 22.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 99.0, 94.0, 55.0, 22.0 ],
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
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 100.0, 236.528656005859375, 129.0, 22.0 ],
									"text" : "bach.scale 0. 1. 0. 127"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-10",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 450.5, 12.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"attr" : "function",
									"id" : "obj-16",
									"maxclass" : "attrui",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 370.0, 170.0, 244.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 98.5, 288.5, 205.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80003
									}
,
									"text" : "bach.resample 500 @mode 1 @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-38",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 98.5, 129.528656005859375, 29.5, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 121.0, 170.0, 80.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80005
									}
,
									"text" : "bach.minmax"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-39",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 98.5, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-40",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 98.0, 402.471343994140625, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-5", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-2", 0 ]
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
									"destination" : [ "obj-2", 2 ],
									"source" : [ "obj-36", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 1 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-38", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-38", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-39", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-38", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-5", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 1 ],
									"order" : 0,
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"order" : 1,
									"source" : [ "obj-8", 0 ]
								}

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
									"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
									"fontname" : [ "Menlo Regular" ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontface" : [ 2 ],
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
									"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ],
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
									"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
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
					"patching_rect" : [ 105.5714111328125, 219.0, 32.0, 22.0 ],
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
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "dump", "bang", "" ],
					"patching_rect" : [ 541.0, 109.528656005859375, 61.0, 22.0 ],
					"text" : "t dump b l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 541.0, 82.0, 64.0, 22.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80003
					}
,
					"text" : "bach.wrap"
				}

			}
, 			{
				"box" : 				{
					"comment" : "pitch range (flat list of two midicents) to rescale the profile",
					"id" : "obj-25",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 541.0, 40.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "profile (flat list of values) to create notes from",
					"id" : "obj-11",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 103.0, 15.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"comment" : "number of notes created from the given profile",
					"id" : "obj-1",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.5714111328125, 68.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 249.0, 470.0, 124.0, 35.0 ],
					"text" : "load_MOZ_helpfile draw_notes.maxhelp"
				}

			}
, 			{
				"box" : 				{
					"clickedimage" : 1,
					"id" : "obj-52",
					"maxclass" : "pictctrl",
					"name" : "help.png",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 249.0, 442.16082763671875, 21.0, 20.80096435546875 ],
					"presentation" : 1,
					"presentation_rect" : [ 485.00994873046875, 33.236946105957031, 20.990030288696289, 19.792673110961914 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 462.0, 491.0, 109.0, 22.0 ],
					"text" : "s to_main_ezpiano"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 378.0, 342.528656005859375, 76.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 436.0, 55.528656005859375, 76.0, 25.0 ],
					"style" : "MOZ-param",
					"text" : "rescale"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 167.5714111328125, 181.0, 34.0, 22.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"clickedimage" : 1,
					"id" : "obj-14",
					"maxclass" : "pictctrl",
					"name" : "erase.png",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 167.5714111328125, 157.882797241210938, 37.0, 19.763053894042969 ],
					"presentation" : 1,
					"presentation_rect" : [ 391.5714111328125, 33.236946105957031, 37.0, 19.763053894042969 ]
				}

			}
, 			{
				"box" : 				{
					"clickedimage" : 1,
					"id" : "obj-15",
					"maxclass" : "pictctrl",
					"name" : "sendback.png",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 174.0, 461.53515625, 37.0, 19.763053894042969 ],
					"presentation" : 1,
					"presentation_rect" : [ 436.0, 33.236946105957031, 37.0, 19.763053894042969 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.5714111328125, 453.0, 82.0, 22.0 ],
					"text" : "speedlim 200"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 174.0, 486.76959228515625, 34.0, 22.0 ],
					"text" : "sel 1"
				}

			}
, 			{
				"box" : 				{
					"comment" : "outputs scaled profile as a flat list of midicents",
					"id" : "obj-23",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.5714111328125, 637.0, 30.0, 30.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 30.5714111328125, 309.528656005859375, 61.0, 31.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 25.5714111328125, 25.5, 61.0, 31.0 ],
					"style" : "MOZ-title",
					"text" : "DRAW"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 394.785697937011719, 104.528656005859375, 69.0, 22.0 ],
					"text" : "(0 0), bang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 415.333333333333314, 72.0, 75.0, 22.0 ],
					"text" : "(4800 7200)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "dump", "bang", "bang" ],
					"patching_rect" : [ 378.0, 40.0, 65.0, 22.0 ],
					"text" : "t dump b b"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 105.5714111328125, 378.528656005859375, 57.0, 25.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 180.5, 30.618473052978516, 57.0, 25.0 ],
					"style" : "MOZ-param",
					"text" : "notes"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 378.0, 11.0, 60.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 89.0, 69.0, 22.0 ],
									"text" : "bach.round"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 128.166626000000008, 56.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.flat"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-28",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 166.0, 107.0, 22.0 ],
									"text" : "bach.* 100 @out t"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-40",
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
									"id" : "obj-41",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 238.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-28", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-28", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-66", 0 ],
									"source" : [ "obj-40", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "obj-66", 0 ]
								}

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
								"name" : "orjan style",
								"default" : 								{
									"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ],
									"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
									"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
									"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
									"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
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
					"patching_rect" : [ 30.5714111328125, 603.8333740234375, 112.0, 22.0 ],
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
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.5714111328125, 548.0, 57.0, 22.0 ],
					"saved_object_attributes" : 					{
						"embed" : 0,
						"versionnumber" : 80001
					}
,
					"text" : "bach.reg"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "bang", "" ],
					"patching_rect" : [ 396.5714111328125, 491.0, 30.0, 22.0 ],
					"text" : "t b l"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "" ],
					"patching_rect" : [ 407.5714111328125, 521.0, 53.0, 22.0 ],
					"text" : "unjoin 2"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 9.0,
					"id" : "obj-98",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 396.5714111328125, 459.52862548828125, 82.0, 19.0 ],
					"text" : "bach./ 100 @out t"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 9.0,
					"id" : "obj-99",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 396.5714111328125, 426.86199951171875, 87.0, 19.0 ],
					"saved_object_attributes" : 					{
						"versionnumber" : 80001
					}
,
					"text" : "bach.flat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-59",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "dump" ],
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
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-14",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 50.0, 181.0, 99.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.sort @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 150.0, 66.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.flat 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 117.0, 94.0, 22.0 ],
									"text" : "bach.round 100"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "dump" ],
									"patching_rect" : [ 177.428573999999998, 100.0, 47.0, 22.0 ],
									"text" : "t dump"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-15",
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
									"id" : "obj-16",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 177.428573999999998, 40.0, 30.0, 30.0 ]
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
									"patching_rect" : [ 50.0, 263.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-18",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 177.428573999999998, 263.0, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-14", 0 ],
									"source" : [ "obj-13", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-14", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-16", 0 ]
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
									"destination" : [ "obj-13", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 396.5714111328125, 387.52862548828125, 65.428573608398438, 22.0 ],
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
					"attr" : "clefs",
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-60",
					"lock" : 1,
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 467.0, 174.528656005859375, 128.0, 23.0 ],
					"text_width" : 45.0
				}

			}
, 			{
				"box" : 				{
					"allowslothzoom" : 0,
					"bwcompatibility" : 80001,
					"catchplay" : 0,
					"clefs" : [ "FG" ],
					"defaultnoteslots" : [ "null" ],
					"fontface" : 0,
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-6",
					"legend" : 0,
					"linkarticulationstoslot" : 0,
					"linkdynamicstoslot" : 0,
					"linklyricstoslot" : 7,
					"loop" : [ 0.0, 0.0 ],
					"maxclass" : "bach.roll",
					"numinlets" : 6,
					"numoutlets" : 8,
					"numvoices" : 1,
					"out" : "nnnnnnn",
					"outlettype" : [ "", "", "", "", "", "", "", "bang" ],
					"patching_rect" : [ 378.0, 174.528656005859375, 71.0, 166.0 ],
					"pitcheditrange" : [ "null" ],
					"presentation" : 1,
					"presentation_rect" : [ 436.0, 55.528656005859375, 76.0, 160.0 ],
					"preventedit" : [ "[", "chord", "onset", "]", "[", "notes", "create", "delete", "]" ],
					"showdurations" : 0,
					"showlyrics" : 0,
					"showmarkers" : 0,
					"showmutecolor" : 0,
					"showscrollbar" : 0,
					"showsolocolor" : 0,
					"showstems" : 0,
					"showvoicenames" : 0,
					"showvscrollbar" : 0,
					"stafflines" : [ 5 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"versionnumber" : 80005,
					"voicenames" : [ "[", "]" ],
					"voicespacing" : [ 0.0, 17.0 ],
					"whole_roll_data_0000000000" : [ "roll", "[", "slotinfo", "[", 1, "[", "name", "amplitude envelope", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 2, "[", "name", "slot function", "]", "[", "type", "function", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "grid", "]", "[", "ysnap", "]", "[", "domain", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "domainslope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 3, "[", "name", "slot intlist", "]", "[", "type", "intlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 4, "[", "name", "slot floatlist", "]", "[", "type", "floatlist", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 5, "[", "name", "slot int", "]", "[", "type", "int", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080016896, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1078984704, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 6, "[", "name", "slot float", "]", "[", "type", "float", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1072693248, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "default", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 7, "[", "name", "lyrics", "]", "[", "type", "text", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 8, "[", "name", "filelist", "]", "[", "type", "filelist", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1080213504, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 9, "[", "name", "spat", "]", "[", "type", "spat", "]", "[", "key", 0, "]", "[", "range", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1076101120, "]", "[", "slope", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "]", "[", "representation", "]", "[", "temporalmode", "relative", "]", "[", "extend", 0, "]", "[", "width", "duration", "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 10, "[", "name", "slot 10", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 11, "[", "name", "slot 11", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 12, "[", "name", "slot 12", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 13, "[", "name", "slot 13", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 14, "[", "name", "slot 14", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 15, "[", "name", "slot 15", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 16, "[", "name", "slot 16", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 17, "[", "name", "slot 17", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 18, "[", "name", "slot 18", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 19, "[", "name", "slot 19", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 20, "[", "name", "slot 20", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 21, "[", "name", "slot 21", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 0, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 22, "[", "name", "slot 22", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 23, "[", "name", "slot 23", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 24, "[", "name", "slot 24", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 25, "[", "name", "slot 25", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 26, "[", "name", "slot 26", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 27, "[", "name", "slot 27", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 28, "[", "name", "slot 28", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 29, "[", "name", "slot 29", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "[", 30, "[", "name", "slot 30", "]", "[", "type", "none", "]", "[", "key", 0, "]", "[", "temporalmode", "none", "]", "[", "extend", 0, "]", "[", "width", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1079574528, "]", "[", "height", "auto", "]", "[", "copywhensplit", 1, "]", "[", "access", "readandwrite", "]", "[", "follownotehead", 0, "]", "]", "]", "[", "commands", "[", 1, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 2, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 3, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 4, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "[", 5, "[", "note", "note", "]", "[", "chord", "chord", "]", "[", "rest", "rest", "]", "[", "key", 0, "]", "]", "]", "[", "groups", "]", "[", "markers", "]", "[", "midichannels", 1, "]", "[", "articulationinfo", "]", "[", "noteheadinfo", "]", "[", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1085456384, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 0, "[", "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1086070784, "_x_x_x_x_bach_float64_x_x_x_x_", 0, 1082081280, 100, 0, "]", 0, "]", 0, "]" ],
					"whole_roll_data_count" : [ 1 ],
					"zoom" : 178.01171875
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 30.5714111328125, 576.0, 141.0, 22.0 ],
					"text" : "bach.scale 0 1000 0 127"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
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
						"rect" : [ 34.0, 79.0, 1372.0, 783.0 ],
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
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 50.0, 357.0, 51.0, 23.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"fontface" : 0,
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-36",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 600.0, 211.0, 23.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.collect @out t"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 13.0,
									"id" : "obj-15",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 82.0, 395.0, 179.0, 23.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.iter @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 321.0, 57.0, 22.0 ],
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
									"id" : "obj-88",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 553.0, 663.0, 76.0, 22.0 ],
									"text" : "zl rev 10000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-82",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 553.0, 631.0, 100.0, 22.0 ],
									"text" : "zl 10000 group 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-45",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 553.0, 600.0, 81.0, 22.0 ],
									"text" : "zl 10000 lace"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-41",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 636.5, 447.0, 109.0, 22.0 ],
									"text" : "if $i1 >= 2 then $i1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 434.904723999999987, 494.0, 79.5, 22.0 ],
									"text" : "t l l"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-87",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 636.5, 530.0, 95.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.flat @out t"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-73",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 783.0, 455.0, 83.0, 19.0 ],
									"text" : "loadmess (1000)"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.0,
									"id" : "obj-66",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 753.0, 426.0, 63.0, 19.0 ],
									"text" : "loadmess (0)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-85",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 636.5, 409.0, 73.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.length"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-84",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 636.5, 497.0, 83.0, 22.0 ],
									"text" : "bach.interp 1."
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-80",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "bang", "", "", "clear" ],
									"patching_rect" : [ 419.571411000000012, 355.0, 65.0, 22.0 ],
									"text" : "t b l l clear"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-79",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "", "" ],
									"patching_rect" : [ 450.238097999999979, 403.0, 82.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.minmax"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-76",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 434.904723999999987, 462.0, 141.0, 22.0 ],
									"text" : "bach.scale 0 127 0 1000"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-69",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 434.904723999999987, 532.0, 109.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.portal @out t"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.0,
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 284.0, 530.0, 48.0, 19.0 ],
									"text" : "loadbang"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.0,
									"id" : "obj-24",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "listdump" ],
									"patching_rect" : [ 263.0, 559.0, 49.0, 19.0 ],
									"text" : "t listdump"
								}

							}
, 							{
								"box" : 								{
									"addpoints" : [ 0.0, 0.0, 0, 2.004008016032064, 6.985333022170179, 0, 4.008016032064128, 13.986014005706066, 0, 6.012024048096192, 20.979019600575366, 0, 8.016032064128256, 27.972028011412132, 0, 10.020040080160321, 34.965034544937254, 0, 12.024048096192384, 41.958039201150733, 0, 14.02805611222445, 48.951047611987498, 0, 16.032064128256511, 55.944056022824263, 0, 18.036072144288578, 62.937053169791163, 0, 20.040080160320642, 69.930069089874507, 0, 22.044088176352705, 83.916078402301466, 0, 24.048096192384769, 90.909086813138217, 0, 26.052104208416832, 90.909086813138217, 0, 28.056112224448899, 97.90208771472841, 0, 30.060120240480959, 111.888112045648526, 0, 32.064128256513023, 118.873438497227951, 0, 34.06813627254509, 125.874121358075485, 0, 36.072144288577157, 125.874121358075485, 0, 38.076152304609224, 139.860123161255842, 0, 40.080160320641284, 139.860123161255842, 0, 42.084168336673351, 153.846139982929373, 0, 44.08817635270541, 153.846139982929373, 0, 46.09218436873747, 153.846139982929373, 0, 48.096192384769537, 160.839155903012738, 0, 50.100200400801604, 167.832156804602931, 0, 52.104208416833664, 167.832156804602931, 0, 54.108216432865731, 181.818173626276433, 0, 56.112224448897798, 188.811174527866626, 0, 58.116232464929865, 195.804190447949992, 0, 60.120240480961918, 201.398594172920781, 0, 62.124248496993985, 206.992997897891541, 0, 64.128256513026045, 212.58740162286233, 0, 66.132264529058119, 218.181805347833091, 0, 68.136272545090179, 223.77620907280388, 0, 70.140280561122239, 230.133492176926978, 0, 72.144288577154313, 236.490775281050077, 0, 74.148296593186373, 242.848058385173175, 0, 76.152304609218447, 249.205326470803101, 0, 78.156312625250493, 255.562609574926171, 0, 80.160320641282567, 261.919877660556097, 0, 82.164328657314627, 268.277145746186022, 0, 84.168336673346701, 274.635795533187718, 0, 86.172344689378761, 280.991741991418564, 0, 88.176352705410821, 287.34901007704849, 0, 90.180360721442895, 293.706278162678416, 0, 92.184368737474941, 299.999987985205451, 0, 94.188376753507015, 306.293667770746197, 0, 96.192384769539075, 312.587407630259634, 0, 98.196392785571149, 318.881117452786668, 0, 100.200400801603209, 325.174827275313703, 0, 102.204408817635269, 331.468537097840795, 0, 104.208416833667329, 337.762216883381541, 0, 106.212424849699389, 344.055926705908576, 0, 108.216432865731463, 350.349636528435667, 0, 110.220440881763523, 356.643316313976413, 0, 112.224448897795597, 361.538443978377188, 0, 114.228456913827657, 366.436905748262177, 0, 116.232464929859731, 371.328669270192563, 0, 118.236472945891776, 376.223736860620704, 0, 120.240480961923836, 381.118864525021536, 0, 122.244488977955911, 386.013962152436022, 0, 124.24849699398797, 390.909089816836854, 0, 126.25250501002003, 395.80418744425134, 0, 128.25651302605209, 400.699285071665884, 0, 130.26052104208415, 405.594382699080313, 0, 132.264529058116239, 412.58741363765688, 0, 134.268537074148298, 419.580414539247045, 0, 136.272545090180358, 424.242425152635917, 0, 138.276553106212418, 428.904405729038501, 0, 140.280561122244478, 433.566416342427431, 0, 142.284569138276566, 438.228426955816303, 0, 144.288577154308626, 442.890437569205233, 0, 146.292585170340686, 447.552448182594105, 0, 148.296593186372746, 452.214428758996689, 0, 150.300601202404835, 456.876469409371907, 0, 152.304609218436894, 461.538419948788146, 0, 154.308617234468926, 467.132868729238453, 0, 156.312625250500986, 472.727257435716012, 0, 158.316633266533046, 478.325010284664131, 0, 160.320641282565134, 483.91606488565759, 0, 162.324649298597194, 489.510483629121552, 0, 164.328657314629254, 496.503454493725428, 0, 166.332665330661314, 499.300678883950525, 0, 168.336673346693402, 502.097903274175678, 0, 170.340681362725462, 504.895127664400832, 0, 172.344689378757522, 507.692291980653238, 0, 174.348697394789582, 510.489516370878448, 0, 176.352705410821642, 513.986001803180329, 0, 178.35671342685373, 517.482487235482267, 0, 180.36072144288579, 522.144527885857542, 0, 182.364729458917822, 526.806508462260126, 0, 184.368737474949882, 531.468489038662597, 0, 186.37274549098197, 534.965034544937225, 0, 188.37675350701403, 538.461519977239163, 0, 190.38076152304609, 540.792510265440455, 0, 192.38476953907815, 543.123500553641748, 0, 194.38877755511021, 545.45455091581573, 0, 196.392785571142298, 552.447521780419606, 0, 198.396793587174358, 559.440492645023369, 0, 200.400801603206418, 561.771543007197351, 0, 202.404809619238478, 564.102533295398644, 0, 204.408817635270537, 566.425894189068686, 0, 206.412825651302626, 566.425894189068686, 0, 208.416833667334657, 569.930069089874564, 0, 210.420841683366717, 573.426554522176389, 0, 212.424849699398777, 576.923039954478327, 0, 214.428857715430865, 580.419585460752955, 0, 216.432865731462925, 580.419585460752955, 0, 218.436873747494985, 583.916070893054894, 0, 220.440881763527045, 587.412556325356832, 0, 222.444889779559105, 589.743546613558124, 0, 224.448897795591193, 592.074596975732106, 0, 226.452905811623253, 594.405527189960594, 0, 228.456913827655313, 601.398618202509851, 0, 230.460921843687373, 608.391589067113614, 0, 232.464929859719462, 608.391589067113614, 0, 234.468937875751521, 608.391589067113614, 0, 236.472945891783553, 615.384620005690181, 0, 238.476953907815613, 615.384620005690181, 0, 240.480961923847673, 622.377590870294057, 0, 242.484969939879761, 622.377590870294057, 0, 244.488977955911821, 622.377590870294057, 0, 246.492985971943881, 622.377590870294057, 0, 248.496993987975941, 625.874076302595995, 0, 250.501002004008001, 629.370561734897933, 0, 252.505010020040061, 629.370561734897933, 0, 254.509018036072121, 629.370561734897933, 0, 256.513026052104181, 632.867167315145139, 0, 258.51703406813624, 636.363652747447077, 0, 260.5210420841683, 636.363652747447077, 0, 262.52505010020036, 636.363652747447077, 0, 264.529058116232477, 636.363652747447077, 0, 266.533066132264537, 643.356623612050953, 0, 268.537074148296597, 643.356623612050953, 0, 270.541082164328657, 195.804190447949992, 0, 272.545090180360717, 192.307674978661709, 0, 274.549098196392777, 188.811174527866626, 0, 276.553106212424836, 188.811174527866626, 0, 278.557114228456896, 188.811174527866626, 0, 280.561122244488956, 188.811174527866626, 0, 282.565130260521073, 188.811174527866626, 0, 284.569138276553133, 190.559432262510768, 0, 286.573146292585193, 192.307674978661709, 0, 288.577154308617253, 194.055947731799023, 0, 290.581162324649313, 195.804190447949992, 0, 292.585170340681373, 200.466201061338893, 0, 294.589178356713433, 205.128211674727794, 0, 296.593186372745492, 209.79019225113035, 0, 298.597194388777552, 214.452202864519251, 0, 300.601202404809669, 219.114213477908152, 0, 302.605210420841729, 223.77620907280388, 0, 304.609218436873789, 228.079608106237714, 0, 306.613226452905792, 232.383007139671491, 0, 308.617234468937852, 236.68637613611898, 0, 310.621242484969912, 240.989775169552786, 0, 312.625250501001972, 245.293159184493419, 0, 314.629258517034032, 249.596558217927225, 0, 316.633266533066092, 253.899942232867886, 0, 318.637274549098208, 258.203341266301663, 0, 320.641282565130268, 262.506710262749152, 0, 322.645290581162328, 266.810109296182929, 0, 324.649298597194388, 271.113478292630418, 0, 326.653306613226448, 275.416877326064252, 0, 328.657314629258508, 279.72027635949803, 0, 330.661322645290568, 285.314665065975646, 0, 332.665330661322628, 290.909083809439608, 0, 334.669338677354688, 296.503502552903512, 0, 336.673346693386804, 302.097891259381129, 0, 338.677354709418864, 307.69231000284509, 0, 340.681362725450924, 313.286698709322707, 0, 342.685370741482984, 318.881117452786668, 0, 344.689378757515044, 324.475506159264285, 0, 346.693386773547104, 330.069924902728246, 0, 348.697394789579164, 335.664313609205863, 0, 350.701402805611224, 341.491819366695381, 0, 352.705410821643284, 347.318994717335102, 0, 354.709418837675344, 353.146830881674475, 0, 356.71342685370746, 358.974336639163994, 0, 358.71743486973952, 364.801872433639858, 0, 360.72144288577158, 370.629348154143088, 0, 362.725450901803583, 376.456853911632663, 0, 364.729458917835643, 382.284389706108527, 0, 366.733466933867703, 388.111865426611701, 0, 368.737474949899763, 393.939371184101276, 0, 370.741482965931823, 399.76690697857714, 0, 372.74549098196394, 405.594382699080313, 0, 374.749498997996, 412.087898554764422, 0, 376.75350701402806, 418.581384373462072, 0, 378.757515030060119, 425.074930266132526, 0, 380.761523046092179, 431.568416084830233, 0, 382.765531062124239, 438.062893124077277, 0, 384.769539078156299, 444.555417759211991, 0, 386.773547094188359, 451.048933614896043, 0, 388.777555110220419, 457.54241943359375, 0, 390.781563126252479, 464.035965326264147, 0, 392.785571142284596, 470.529451144961854, 0, 394.789579158316656, 477.022967000645906, 0, 396.793587174348716, 483.516452819343613, 0, 398.797595190380775, 490.009968675027665, 0, 400.801603206412835, 496.503454493725428, 0, 402.805611222444895, 502.460479736328125, 0, 404.809619238476955, 508.417504978930879, 0, 406.813627254509015, 514.374500184547173, 0, 408.817635270541075, 520.331495390163695, 0, 410.821643286573192, 526.28849059577999, 0, 412.825651302605252, 532.245485801396399, 0, 414.829659318637312, 538.202541080985498, 0, 416.833667334669315, 544.159536286601906, 0, 418.837675350701375, 550.116531492218314, 0, 420.841683366733434, 556.0735867718073, 0, 422.845691382765494, 562.030521903451017, 0, 424.849699398797554, 567.987517109067426, 0, 426.853707414829614, 573.944572388656525, 0, 428.857715430861731, 579.901567594272933, 0, 430.861723446893791, 585.858562799889228, 0, 432.865731462925851, 591.815618079478327, 0, 434.869739478957911, 597.772553211122045, 0, 436.873747494989971, 603.729548416738453, 0, 438.877755511022031, 609.686543622354861, 0, 440.88176352705409, 615.643598901943847, 0, 442.88577154308615, 621.600594107560255, 0, 444.88977955911821, 627.557589313176663, 0, 446.893787575150327, 633.514644592765762, 0, 448.897795591182387, 639.471639798382171, 0, 450.901803607214447, 645.428574930025775, 0, 452.905811623246507, 651.385630209614874, 0, 454.909819639278567, 657.342625415231282, 0, 456.913827655310627, 662.746279258427649, 0, 458.917835671342687, 668.150053249569396, 0, 460.921843687374746, 673.553707092765762, 0, 462.925851703406806, 678.957360935962129, 0, 464.929859719438923, 684.361014779158495, 0, 466.933867735470983, 689.767071581262257, 0, 468.937875751503043, 695.168442613496495, 0, 470.941883767535103, 700.572096456692975, 0, 472.945891783567106, 705.975810373861918, 0, 474.949899799599166, 711.379524291030975, 0, 476.953907815631226, 716.783178134227342, 0, 478.957915831663286, 722.188213678795478, 0, 480.961923847695346, 727.590605968565455, 0, 482.965931863727462, 732.994259811761822, 0, 484.969939879759522, 738.398754690575856, 0, 486.973947895791582, 743.801627572127245, 0, 488.977955911823642, 749.205281415323611, 0, 490.981963927855702, 754.609355776328698, 0, 492.985971943887762, 760.012709249661725, 0, 494.989979959919822, 765.416363092857978, 0, 496.993987975951882, 770.819896788109077, 0, 498.997995991983942, 776.223790927196092, 0, 501.002004008016002, 780.885771503598676, 0, 503.006012024048061, 785.54781215397395, 0, 505.010020040080121, 790.202103261872594, 0, 507.014028056112181, 794.871412862942975, 0, 509.018036072144241, 799.533753883181589, 0, 511.022044088176301, 804.195734459584173, 0, 513.026052104208361, 808.857775109959334, 0, 515.030060120240478, 813.519755686361918, 0, 517.034068136272481, 818.181796336737193, 0, 519.038076152304598, 822.843776913139777, 0, 521.042084168336601, 827.505817563515052, 0, 523.046092184368717, 832.167798139917636, 0, 525.05010020040072, 838.286752775898094, 0, 527.054108216432837, 844.405587263933285, 0, 529.058116232464954, 850.524481825941166, 0, 531.062124248496957, 856.643316313976356, 0, 533.066132264529074, 862.762210875984238, 0, 535.070140280561077, 868.881105437992119, 0, 537.074148296593194, 875.0, 0, 539.078156312625197, 881.118894562007881, 0, 541.082164328657313, 884.615379994309819, 0, 543.086172344689317, 888.111865426611644, 0, 545.090180360721433, 891.608350858913695, 0, 547.09418837675355, 895.10489636518821, 0, 549.098196392785553, 898.601381797490149, 0, 551.10220440881767, 902.090177761288146, 0, 553.106212424849673, 907.342625415231282, 0, 555.11022044088179, 912.587443674643168, 0, 557.114228456913793, 917.832141786109673, 0, 559.11823647294591, 923.076899971548983, 0, 561.122244488977913, 926.961883785217765, 0, 563.126252505010029, 930.846867598886547, 0, 565.130260521042146, 934.731851412555329, 0, 567.134268537074149, 938.616955374169606, 0, 569.138276553106266, 942.501939187838275, 0, 571.142284569138269, 946.386923001507171, 0, 573.146292585170386, 950.271906815175953, 0, 575.150300601202389, 954.157791738435094, 0, 577.154308617234506, 958.041934516486208, 0, 579.158316633266509, 962.237741064837564, 0, 581.162324649298625, 966.433547613189035, 0, 583.166332665330742, 970.629354161540391, 0, 585.170340681362745, 974.825160709891748, 0, 587.174348697394862, 979.020907184270413, 0, 589.178356713426865, 982.517512764517733, 0, 591.182364729458982, 986.013998196819671, 0, 593.186372745490985, 989.510483629121495, 0, 595.190380761523102, 993.006969061423547, 0, 597.194388777555105, 996.503454493725371, 0, 599.198396793587222, 1000.0, 0, 601.202404809619338, 1000.0, 0, 603.206412825651341, 1000.0, 0, 605.210420841683458, 1000.0, 0, 607.214428857715461, 993.006969061423547, 0, 609.218436873747578, 664.335596279835158, 0, 611.222444889779467, 629.370561734897933, 0, 613.226452905811584, 620.046600582092765, 0, 615.230460921843587, 610.722639429287597, 0, 617.234468937875704, 601.398618202509851, 0, 619.238476953907821, 594.405527189960594, 0, 621.242484969939824, 583.916070893054894, 0, 623.24649298597194, 573.426554522176389, 0, 625.250501002003944, 571.678341843011822, 0, 627.25450901803606, 569.930069089874564, 0, 629.258517034068063, 568.187923881951292, 0, 631.26252505010018, 566.425894189068686, 0, 633.266533066132183, 566.425894189068686, 0, 635.2705410821643, 566.425894189068686, 0, 637.274549098196417, 566.425894189068686, 0, 639.27855711422842, 566.425894189068686, 0, 641.282565130260537, 566.425894189068686, 0, 643.28657314629254, 566.425894189068686, 0, 645.290581162324656, 566.425894189068686, 0, 647.294589178356659, 566.425894189068686, 0, 649.298597194388776, 566.425894189068686, 0, 651.302605210420779, 566.425894189068686, 0, 653.306613226452896, 566.425894189068686, 0, 655.310621242485013, 566.425894189068686, 0, 657.314629258517016, 566.425894189068686, 0, 659.318637274549133, 566.425894189068686, 0, 661.322645290581136, 566.425894189068686, 0, 663.326653306613252, 566.425894189068686, 0, 665.330661322645255, 566.425894189068686, 0, 667.334669338677372, 566.425894189068686, 0, 669.338677354709375, 569.930069089874564, 0, 671.342685370741492, 573.426554522176389, 0, 673.346693386773609, 576.923039954478327, 0, 675.350701402805612, 580.419585460752955, 0, 677.354709418837729, 583.916070893054894, 0, 679.358717434869732, 587.412556325356832, 0, 681.362725450901848, 590.909041757658656, 0, 683.366733466933852, 594.405527189960594, 0, 685.370741482965968, 597.902132770207913, 0, 687.374749498997971, 601.398618202509851, 0, 689.378757515030088, 604.89510363481179, 0, 691.382765531062205, 608.391589067113614, 0, 693.386773547094208, 613.053569643516198, 0, 695.390781563126325, 617.715610293891473, 0, 697.394789579158328, 622.377590870294057, 0, 699.398797595190445, 627.039271076833188, 0, 701.402805611222448, 631.701612097071916, 0, 703.406813627254564, 636.363652747447077, 0, 705.410821643286567, 640.559459295798547, 0, 707.414829659318684, 644.755265844149903, 0, 709.418837675350687, 648.951012318528569, 0, 711.422845691382804, 653.146818866879926, 0, 713.426853707414921, 657.342625415231282, 0, 715.430861723446924, 661.538431963582639, 0, 717.434869739479041, 665.734238511933995, 0, 719.438877755511044, 669.930045060285465, 0, 721.44288577154316, 674.125851608636822, 0, 723.44689378757505, 678.313968688484238, 0, 725.450901803607167, 683.916046863465795, 0, 727.454909819639283, 689.510495643916101, 0, 729.458917835671286, 695.104884350393718, 0, 731.462925851703403, 700.699273056871334, 0, 733.466933867735406, 706.293721837321641, 0, 735.470941883767523, 711.288692444328262, 0, 737.474949899799526, 716.283663051334884, 0, 739.478957915831643, 721.278693732314196, 0, 741.482965931863646, 726.273664339320817, 0, 743.486973947895763, 731.268695020300243, 0, 745.490981963927879, 736.263725701279554, 0, 747.494989979959882, 741.258756382258866, 0, 749.498997995991999, 746.253726989265488, 0, 751.503006012024002, 751.248697596272109, 0, 753.507014028056119, 756.243728277251535, 0, 755.511022044088122, 761.238698884258156, 0, 757.515030060120239, 766.233729565237468, 0, 759.519038076152242, 771.22876024621678, 0, 761.523046092184359, 776.223790927196092, 0, 763.527054108216362, 780.419597475547448, 0, 765.531062124248479, 784.615343949926114, 0, 767.535070140280595, 788.811150498277584, 0, 769.539078156312598, 793.006957046628941, 0, 771.543086172344715, 797.202763594980297, 0, 773.547094188376718, 804.195734459584173, 0, 775.551102204408835, 811.188825472133317, 0, 777.555110220440838, 814.685310904435255, 0, 779.559118236472955, 818.181796336737193, 0, 781.563126252504958, 821.678281769039131, 0, 783.567134268537075, 825.17482727531376, 0, 785.571142284569191, 832.167798139917636, 0, 787.575150300601194, 839.160769004521399, 0, 789.579158316633311, 841.491819366695381, 0, 791.583166332665314, 843.822809654896673, 0, 793.587174348697431, 846.153860017070656, 0, 795.591182364729434, 853.146830881674418, 0, 797.595190380761551, 853.146830881674418, 0, 799.599198396793554, 853.146830881674418, 0, 801.603206412825671, 853.146830881674418, 0, 803.607214428857787, 839.160769004521399, 0, 805.61122244488979, 692.307659960168507, 0, 807.615230460921907, 629.370561734897933, 0, 809.61923847695391, 601.398618202509851, 0, 811.623246492986027, 587.412556325356832, 0, 813.62725450901803, 573.426554522176389, 0, 815.631262525050147, 552.447521780419606, 0, 817.63527054108215, 531.468489038662597, 0, 819.639278557114267, 524.475518174058834, 0, 821.643286573146383, 517.482487235482267, 0, 823.647294589178387, 510.489516370878448, 0, 825.651302605210503, 505.82747572050323, 0, 827.655310621242506, 501.165465107114358, 0, 829.659318637274623, 496.503454493725428, 0, 831.663326653306626, 493.00696906142349, 0, 833.667334669338629, 489.510483629121552, 0, 835.671342685370632, 486.013968159833269, 0, 837.675350701402749, 482.517482727531387, 0, 839.679358717434866, 482.517482727531387, 0, 841.683366733466869, 482.517482727531387, 0, 843.687374749498986, 482.517482727531387, 0, 845.691382765530989, 482.517482727531387, 0, 847.695390781563106, 482.517482727531387, 0, 849.699398797595109, 482.517482727531387, 0, 851.703406813627225, 482.517482727531387, 0, 853.707414829659228, 482.517482727531387, 0, 855.711422845691345, 482.517482727531387, 0, 857.715430861723462, 482.517482727531387, 0, 859.719438877755465, 482.517482727531387, 0, 861.723446893787582, 482.517482727531387, 0, 863.727454909819585, 482.517482727531387, 0, 865.731462925851702, 482.517482727531387, 0, 867.735470941883705, 482.517482727531387, 0, 869.739478957915821, 482.517482727531387, 0, 871.743486973947824, 482.517482727531387, 0, 873.747494989979941, 482.517482727531387, 0, 875.751503006012058, 485.696086733360005, 0, 877.755511022044061, 488.874750813161313, 0, 879.759519038076178, 492.053384855976276, 0, 881.763527054108181, 495.232018898791182, 0, 883.767535070140298, 498.412004605991626, 0, 885.771543086172301, 501.589286984421165, 0, 887.775551102204417, 504.767951064222473, 0, 889.779559118236421, 507.946585107037379, 0, 891.783567134268537, 511.125219149852342, 0, 893.787575150300654, 514.303853192667361, 0, 895.791583166332657, 517.482487235482267, 0, 897.795591182364774, 522.144527885857542, 0, 899.799599198396777, 526.806508462260126, 0, 901.803607214428894, 531.468489038662597, 0, 903.807615230460897, 536.130529689037871, 0, 905.811623246493014, 540.792510265440455, 0, 907.815631262525017, 545.45455091581573, 0, 909.819639278557133, 549.268887737604587, 0, 911.82364729458925, 553.083284633366134, 0, 913.827655310621253, 556.89762145515499, 0, 915.83166332665337, 560.711958276943847, 0, 917.835671342685373, 564.526415246678084, 0, 919.83967935871749, 568.340752068467054, 0, 921.843687374749493, 572.155088890255911, 0, 923.84769539078161, 575.969425712044767, 0, 925.851703406813613, 579.783822607806314, 0, 927.855711422845729, 583.598219503567975, 0, 929.859719438877846, 587.412556325356832, 0, 931.863727454909849, 591.608362873708188, 0, 933.867735470941966, 595.804169422059545, 0, 935.871743486973969, 599.999975970410901, 0, 937.875751503006086, 604.195782518762257, 0, 939.879759519038089, 608.391589067113614, 0, 941.883767535070206, 613.386559674120349, 0, 943.887775551102209, 618.381590355099661, 0, 945.891783567134212, 623.376621036078973, 0, 947.895791583166329, 628.371651717058285, 0, 949.899799599198332, 633.366622324064906, 0, 951.903807615230448, 638.361653005044332, 0, 953.907815631262451, 643.356623612050953, 0, 955.911823647294568, 647.241607425719735, 0, 957.915831663326571, 651.126591239388517, 0, 959.919839679358688, 655.01163512702999, 0, 961.923847695390691, 658.896679014671577, 0, 963.927855711422808, 662.781662828340245, 0, 965.931863727454925, 666.666646642009141, 0, 967.935871743486928, 670.551630455677923, 0, 969.939879759519044, 674.437575452909755, 0, 971.943887775551048, 678.313968688484238, 0, 973.947895791583164, 682.983338363527309, 0, 975.951903807615167, 687.645679383765923, 0, 977.955911823647284, 692.307659960168507, 0, 979.959919839679287, 696.969700610543782, 0, 981.963927855711404, 701.631681186946366, 0, 983.967935871743521, 706.293721837321641, 0, 985.971943887775524, 709.290692186731007, 0, 987.975951903807641, 712.287662536140488, 0, 989.979959919839644, 715.284692959522658, 0, 991.98396793587176, 718.281663308932025, 0, 993.987975951903763, 721.278693732314196, 0, 995.99198396793588, 724.275724155696366, 0, 997.995991983967883, 727.272694505105733, 0, 1000.0, 832.167798139917636, 0 ],
									"id" : "obj-16",
									"maxclass" : "function",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "float", "", "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 82.0, 453.0, 200.0, 100.0 ],
									"range" : [ 0.0, 1000.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"patching_rect" : [ 419.571411000000012, 326.528656000000012, 70.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.portal"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-32",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 50.0, 100.0, 29.5, 22.0 ],
									"text" : "int"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-31",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 280.0, 95.0, 22.0 ],
									"saved_object_attributes" : 									{
										"versionnumber" : 80001
									}
,
									"text" : "bach.flat @out t"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 134.0, 109.0, 22.0 ],
									"text" : "if $i1 >= 2 then $i1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 9.0,
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 122.5, 211.528656000000012, 83.0, 19.0 ],
									"text" : "loadmess (1000)"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 9.0,
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 92.5, 182.528656000000012, 63.0, 19.0 ],
									"text" : "loadmess (0)"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-25",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 50.0, 240.0, 83.0, 22.0 ],
									"text" : "bach.interp 1."
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-48",
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
									"id" : "obj-49",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 419.571411000000012, 40.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-50",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 50.0, 753.333374000000049, 30.0, 30.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"color" : [ 0.8, 0.009877, 0.009877, 1.0 ],
									"destination" : [ "obj-36", 2 ],
									"source" : [ "obj-15", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-16", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 1 ],
									"midpoints" : [ 91.5, 571.75, 155.5, 571.75 ],
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 3 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-25", 2 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"midpoints" : [ 272.5, 590.0, 333.0, 590.0, 333.0, 435.0, 91.5, 435.0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-31", 0 ],
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
									"destination" : [ "obj-80", 0 ],
									"source" : [ "obj-3", 0 ]
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
									"destination" : [ "obj-26", 0 ],
									"source" : [ "obj-32", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-50", 0 ],
									"source" : [ "obj-36", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 0 ],
									"source" : [ "obj-41", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"source" : [ "obj-45", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"source" : [ "obj-48", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-49", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 2 ],
									"source" : [ "obj-66", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-24", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 0 ],
									"source" : [ "obj-69", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-84", 3 ],
									"source" : [ "obj-73", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-76", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 2 ],
									"source" : [ "obj-79", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 1 ],
									"source" : [ "obj-79", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-15", 0 ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-36", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-80", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-76", 0 ],
									"source" : [ "obj-80", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-79", 0 ],
									"source" : [ "obj-80", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-88", 0 ],
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 0 ],
									"source" : [ "obj-84", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-41", 0 ],
									"source" : [ "obj-85", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-45", 1 ],
									"source" : [ "obj-87", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-16", 0 ],
									"source" : [ "obj-88", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-69", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-85", 0 ],
									"midpoints" : [ 504.904723999999987, 522.0, 620.785645000000045, 522.0, 620.785645000000045, 398.0, 646.0, 398.0 ],
									"source" : [ "obj-9", 1 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 30.5714111328125, 425.52862548828125, 156.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p bach_bpf_sample"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 44.5714111328125, 342.528656005859375, 79.0, 22.0 ],
					"text" : "loadmess 35"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "number",
					"maximum" : 999,
					"minimum" : 2,
					"mousefilter" : 1,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.5714111328125, 373.528656005859375, 107.0, 28.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 139.5, 28.618473052978516, 55.0, 28.0 ],
					"style" : "MOZ-numint"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 167.5714111328125, 242.0, 37.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 167.5714111328125, 270.0, 29.5, 22.0 ],
					"text" : "64"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.095481, 0.100396, 0.100293, 1.0 ],
					"id" : "obj-2",
					"maxclass" : "multislider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 167.5714111328125, 299.528656005859375, 160.0, 70.471343994140625 ],
					"presentation" : 1,
					"presentation_rect" : [ 25.5714111328125, 55.528656005859375, 403.0, 160.0 ],
					"setminmax" : [ 0.0, 127.0 ],
					"size" : 500,
					"slidercolor" : [ 0.952941176470588, 0.564705882352941, 0.098039215686275, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "live.line",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 237.0, 421.41668701171875, 5.0, 100.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 479.0, 29.653617858886719, 6.0, 29.5 ]
				}

			}
, 			{
				"box" : 				{
					"applycolors" : 1,
					"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"bgfillcolor_color1" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"bgfillcolor_color2" : [ 0.2, 0.2, 0.2, 1.0 ],
					"bgfillcolor_proportion" : 0.5,
					"bgfillcolor_type" : "color",
					"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"fontface" : 2,
					"fontname" : "Menlo Regular",
					"hidden" : 1,
					"id" : "obj-122",
					"items" : [ "Nearest", "Neighbour", ",", "Point", ",", "Triangle", ",", "Sinc", ",", "BlackmanSinc", ",", "LanczosSinc", ",", "Gaussian", ",", "Mitchell-Netravali", ",", "Spline16", ",", "Spline36", ",", "Spline64" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 161.0, 110.528656005859375, 151.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 238.364013671875, 37.153617858886719, 149.7237548828125, 22.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"order" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"midpoints" : [ 183.5, 521.0, 40.0714111328125, 521.0 ],
					"order" : 1,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 1 ],
					"source" : [ "obj-122", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"midpoints" : [ 40.0714111328125, 453.0, 40.0714111328125, 453.0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-16", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-16", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"order" : 1,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 177.0714111328125, 213.0, 352.0, 213.0, 352.0, 6.0, 387.5, 6.0 ],
					"order" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 2 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"midpoints" : [ 571.5, 141.0, 485.0, 141.0, 485.0, 99.0, 404.285697937011719, 99.0 ],
					"source" : [ "obj-30", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 2 ],
					"midpoints" : [ 592.5, 163.528656005859375, 408.300000000000011, 163.528656005859375 ],
					"source" : [ "obj-30", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 550.5, 148.528656005859375, 387.5, 148.528656005859375 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-28", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-36", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 1 ],
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"midpoints" : [ 123.0, 100.0, 144.75, 100.0, 144.75, 45.0, 254.5, 45.0 ],
					"source" : [ "obj-47", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-122", 0 ],
					"order" : 1,
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"order" : 0,
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"midpoints" : [ 452.499984741210938, 421.528624999999977, 364.0, 421.528624999999977, 364.0, 169.528656000000012, 387.5, 169.528656000000012 ],
					"source" : [ "obj-59", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"source" : [ "obj-59", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-6", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 1 ],
					"source" : [ "obj-6", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-59", 0 ],
					"source" : [ "obj-6", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 4 ],
					"midpoints" : [ 434.0714111328125, 555.5, 162.0714111328125, 555.5 ],
					"source" : [ "obj-63", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 3 ],
					"midpoints" : [ 417.0714111328125, 548.5, 131.5714111328125, 548.5 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-64", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"midpoints" : [ 406.0714111328125, 530.0, 40.0714111328125, 530.0 ],
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"source" : [ "obj-65", 0 ]
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
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"source" : [ "obj-98", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-98", 0 ],
					"source" : [ "obj-99", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "bach.interp.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.scale.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.round.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.div.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.times.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/bach/patchers",
				"patcherrelativepath" : "../../bach/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "sendback.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "erase.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "help.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/media",
				"patcherrelativepath" : "../media",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "load_MOZ_helpfile.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/patchers",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "bach.expr.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.collect.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.wrap.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.iter.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.portal.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.arithmser.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.args.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.flat.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.pick.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.eq.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.mapelem.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.reg.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.minmax.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.length.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.roll.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.sort.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "bach.resample.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "MOZ-numint",
				"default" : 				{
					"bgcolor" : [ 0.2, 0.2, 0.2, 0.0 ],
					"fontsize" : [ 17.846569953152443 ],
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
				"name" : "MOZ-umenu",
				"default" : 				{
					"color" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"elementcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
					"fontname" : [ "Menlo Regular" ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
					"fontface" : [ 2 ],
					"bgfillcolor" : 					{
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
					"bgcolor" : [ 0.97911, 0.963068, 0.9712, 1.0 ],
					"accentcolor" : [ 0.65098, 0.666667, 0.662745, 1.0 ],
					"color" : [ 0.037449, 0.035848, 0.03644, 1.0 ],
					"elementcolor" : [ 0.898251, 0.915112, 0.965693, 1.0 ],
					"textcolor_inverse" : [ 0.0, 0.0, 0.0, 1.0 ],
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
