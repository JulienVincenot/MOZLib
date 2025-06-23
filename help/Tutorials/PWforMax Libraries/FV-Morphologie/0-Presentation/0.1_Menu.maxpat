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
		"rect" : [ 96.0, 79.0, 1233.0, 787.0 ],
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
					"autofit" : 1,
					"forceaspect" : 1,
					"id" : "obj-9",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 629.0, 681.0, 262.0, 86.816568047337284 ],
					"pic" : "/Users/julienvincenot/Documents/Max 8/Packages/MOZLib/sources/fv-morphologie/tutorial/pictures/menu-5.png"
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"forceaspect" : 1,
					"id" : "obj-8",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 650.0, 555.0, 186.0, 121.421338155515386 ],
					"pic" : "/Users/julienvincenot/Documents/Max 8/Packages/MOZLib/sources/fv-morphologie/tutorial/pictures/menu-4.png"
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"forceaspect" : 1,
					"id" : "obj-7",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 615.0, 454.0, 221.0, 97.670411985018731 ],
					"pic" : "/Users/julienvincenot/Documents/Max 8/Packages/MOZLib/sources/fv-morphologie/tutorial/pictures/menu-3.png"
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"forceaspect" : 1,
					"id" : "obj-6",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 629.0, 335.0, 207.0, 104.442622950819683 ],
					"pic" : "/Users/julienvincenot/Documents/Max 8/Packages/MOZLib/sources/fv-morphologie/tutorial/pictures/menu-2.png"
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"forceaspect" : 1,
					"id" : "obj-5",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 599.0, 226.0, 222.0, 97.326086956521735 ],
					"pic" : "/Users/julienvincenot/Documents/Max 8/Packages/MOZLib/sources/fv-morphologie/tutorial/pictures/menu-1.png"
				}

			}
, 			{
				"box" : 				{
					"autofit" : 1,
					"forceaspect" : 1,
					"id" : "obj-3",
					"maxclass" : "fpic",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "jit_matrix" ],
					"patching_rect" : [ 780.0, 34.0, 241.0, 76.012224938875306 ],
					"pic" : "/Users/julienvincenot/Documents/Max 8/Packages/MOZLib/sources/fv-morphologie/tutorial/pictures/menu-0.png"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"linecount" : 37,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 47.0, 226.0, 556.0, 516.0 ],
					"presentation_linecount" : 37,
					"text" : "\n:bodytext\n \"  - le menu <Différenciation> regroupe différentes fonctions :\npour l'étude des variations d'intensité (int-*), pour l'analyse constrastive (mark-*), pour la recherche de motifs par répétition (motif-*), pour la classification automatique par partitionnement (class-*)...\"\n\n:figure \"../pictures/menu-1.png\"\n\n\n:bodytext\n \"  - le menu <Evaluation> propose différents outils permettant de comparer des séquences, notamment selon leur distance ou ressemblance (dist-*), ou certaines proriétés d'ordre statistique ou informationnel (pas de préfixe particulier).\"\n\n\n:figure \"../pictures/menu-2.png\"\n\n:bodytext\n \"  - le menu <Délinéation> propose un ensemble d'outils de représentation ou de projection schématiques, arborescentes ou rhizomatiques, éventuellement graphiques, des diverses relations propres aux séquences étudiées selon les outils de fv-morphologie, en faisant notamment appel à la théorie des graphes (graph-*).\"\n\n:figure \"../pictures/menu-3.png\"\n\n:bodytext\n \"  - le menu <Encodage> propose différentes manières de représentation symbolique ou numérique de valeurs et séquences : encodage, transcodage (infixe *>*), ou de filtrage de séquences (filt-*).\"\n\n\n:figure \"../pictures/menu-4.png\"\n\n :bodytext\n \"\t- enfin, le menu <In-Out> regroupe les fonctions d'importation et d'exportation de données.\"\n\n:figure \"../pictures/menu-5.png\"\n\n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"linecount" : 14,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 15.0, 717.0, 194.0 ],
					"text" : ":title \"fv-morphologie\"\n:subtitle \"Menu\"\n \"\tLes différents outils d'analyse morphologique sont présentés selon cinq types de processus :\"\n\n:figure \"../pictures/menu-0.png\"\n\n:bodytext\n \"Les trois premiers types de processus, différenciation, évaluation, délinéation, constituent le corps de l'analyse morphologique. Les deux suivants permettent l'encodage, l'importation et l'exportation de données.\"\n\n \"\tChacun de ces principaux processus permettent différentes méthodes  (mesures de distance, classification, grahique, etc) adaptées à la structure et à la nature - symbolique ou numérique - des données.\n Dans le menu, à chaque méthode est associé un préfixe particulier (par exemple 'int-' pour intensités, 'class-' pour classification, etc.\""
				}

			}
 ],
		"lines" : [  ],
		"dependency_cache" : [ 			{
				"name" : "menu-0.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/sources/fv-morphologie/tutorial/pictures",
				"patcherrelativepath" : "../../../../../sources/fv-morphologie/tutorial/pictures",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "menu-1.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/sources/fv-morphologie/tutorial/pictures",
				"patcherrelativepath" : "../../../../../sources/fv-morphologie/tutorial/pictures",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "menu-2.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/sources/fv-morphologie/tutorial/pictures",
				"patcherrelativepath" : "../../../../../sources/fv-morphologie/tutorial/pictures",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "menu-3.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/sources/fv-morphologie/tutorial/pictures",
				"patcherrelativepath" : "../../../../../sources/fv-morphologie/tutorial/pictures",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "menu-4.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/sources/fv-morphologie/tutorial/pictures",
				"patcherrelativepath" : "../../../../../sources/fv-morphologie/tutorial/pictures",
				"type" : "PNG",
				"implicit" : 1
			}
, 			{
				"name" : "menu-5.png",
				"bootpath" : "~/Documents/Max 8/Packages/MOZLib/sources/fv-morphologie/tutorial/pictures",
				"patcherrelativepath" : "../../../../../sources/fv-morphologie/tutorial/pictures",
				"type" : "PNG",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
