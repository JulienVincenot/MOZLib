Introduction to MOZ’ Lib


MOZ’Lib is a collection of bpatcher modules and objects for Max.
Its main purpose is to introduce the various problematics of computer-aided instrumental composition, programming et creation in general to young musicians between 9 and 99 years old.

MOZ’Lib is developed by composer Julien Vincenot, initially as a commission from the project Ariane#, directed by par la DRAC (Regional Directorate of Cultural Affairs) of the Franche-Comté region (east of France) and the Conservatory of Montbéliard.
This new version, fully documented and translated to English, is part of his doctoral research in composition at Harvard University, under the guidance of Hans Tutschku.

Using this library requires to install Cycling’74’s Max 7 or 8 for Mac or Windows — it will work without a licence (Runtime mode) but you won’t be able to save new patches ! 

MOZ’Lib makes an extensive use of the bach library developed by Daniele Ghisi and Andrea Agostini, extended with the language SBCL (Steel Bank Common LISP), which is distributed with MOZ’Lib under GNU licence.


To install MOZ’ LIB :

1) Download and install the last version of Max 7 or 8 for Mac or PC
	https://cycling74.com/downloads/

2) Install the last version of the bach and cage libraries
   from bach’s official website : http://www.bachproject.net
   
   The recommended version of bach 0.8.1, released during the summer 2019.
   
    Place the decompressed folders of bach and cage into Max’s Packages folder 
    on Mac : your_user_folder/Documents/Max 8/Packages/ (or equivalent for Max 7)
    on PC : My Documents\Max8\Packages\

3) Copy the decompressed folder of MOZ’Lib in the Packages folder as well.

4) Run Max
 
5) Go to the MOZ’Lib Overview in the Extras menu and… HAVE FUN !


Notes : 

At the moment, some functionalities of MOZ’Lib, related to the Lisp language (PWforMax) are only available on Mac.
Please send an email to julien.vincenot@gmail.com if you are interested in helping to port this part of the library to Windows !

The modules which won’t work, entirely or partially, on Windows are :
	- rotate (will work as long as the « preserve shape » option is not activated)
	- pitch_rules
	- reflect and double-reflect
	- minmax_notes
	- controled_perturbation
	- hybridation
	- tonal_answer
