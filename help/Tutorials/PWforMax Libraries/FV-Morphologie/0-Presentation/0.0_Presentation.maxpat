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
		"rect" : [ 96.0, 580.0, 1233.0, 787.0 ],
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
					"id" : "obj-6",
					"linecount" : 17,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 147.0, 400.0, 555.0, 248.0 ],
					"presentation_linecount" : 17,
					"text" : ":bodytext\n\"\tDans fv-morphologie, les fonction sont présentées et réparties selon cinq catégories principales d'opérations, lesquelles constituent la structure du menu : encodage, différentiation, évaluation, délinéation, importation-exportation.\"\n\n:bodytext\n\"\tComme pour le langage Lisp, la représentation ou la description d'un objet ou d'une séquence musicale s'effectue au moyen de LISTES, chacune pouvant être structurée ou non, de manière plus ou moins explicitée par le CONTEXTE des listes, de leur représentation ou analyse.\n\tPar convention, une séquence musicale est représentée par une liste ordonnée débutant à gauche par l'élément le plus ancien.\n\tAinsi par exemple, la liste (60 65 70 72) peut représenter, selon le contexte de l'analyse, ou bien une suite énoncée des notes Do Fa Sib Do (dans le standard MIDI), ou bien un accord de quatres notes simultanées représenté du grave à l'aigu.\"\n\n:bodytext\n\"   \"\n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"linecount" : 19,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 163.0, 88.0, 553.0, 275.0 ],
					"presentation_linecount" : 19,
					"text" : "subtitle \"Présentation générale\"\n\n:subtitle \"version 20111025\"\n\n:bodytext\n\"\tfv-morphologie est un ensemble ouvert d'outils expérimentaux pour l'analyse d'énoncés musicaux représentés par des suites de symboles (notations, transcriptions, représentations symboliques ou numériques, etc.) : segmentation, recherche de motifs, reconnaissance de 'formes' musicales, comparaisons, recherche de structures, classification...\n\tfv-morphologie est développé en langage Lisp, pour les environnements de composition Common-Lisp, Patchwork (Mickael Laurson, Ircam), OpenMusic (Carlos Agon & Gérard Assayag, Ircam) et PWGL (Mickael Laurson, Sibelius Academy).\n\tDès sa version initiale, développée avec Jacopo Baboni-Schilingi à l'Ircam (cf. Baboni-Schilingi & Voisin: 'Librairie Morphologie pour OpenMusic', Ircam, 1997), cette collection d'outils a participé au travail d'écriture de divers compositeurs, notamment : Jacopo Baboni-Schilingi, Giacomo Platini, Paolo Aralla, Julien Vincenot, Carlo Ciceri, Philippe Leroux...\n\tCette nouvelle version en est une refonte dans un cadre théorique plus explicite de la première version du code et de ses variantes éparses : la plupart des opérations de la version initiale, leur nom et leur présentation sont ici reprises, optimisées, voire généralisées.\"\n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"linecount" : 4,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 24.0, 15.0, 553.0, 60.0 ],
					"presentation_linecount" : 9,
					"text" : ":title \"fv-morphologie\"\n:bodytext \"Frédéric Voisin, 1994-2011\"\n:subtitle \"Outils pour la description et l'étude morphologique d'énoncés, formes et structures musicaux\"\n:bodytext\" "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"linecount" : 17,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 704.0, 496.0, 505.0, 248.0 ],
					"presentation_linecount" : 30,
					"text" : "\n:link \"http://www.fredvoisin.com/fv-morphologie/\"\n:protocol :http\n:link-text \"fv-morphologie home page\"\n\n:bodytext\n\"La numérotation des versions de fv-morphologie est constituée par la date (année-mois-jour\"\n\n:bodytext\n\"dans PWGL et OpenMusic, fv-morphologie recquiert ompw\"\n:link \"http://kiliansprotte.de/lisp/#ompw\"\n:protocole :http\n:link-text \"ompw library (Kilian Sprotte)\"\n\n:bodytext\n\" \"\n\n"
				}

			}
 ],
		"lines" : [  ],
		"dependency_cache" : [  ],
		"autosave" : 0
	}

}
