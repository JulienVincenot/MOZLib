If you want to add your own libraries to the core, the process is pretty straightforward.

First, open the sources folder inside the MOZ'Lib package (you’re already there, good job ! ;)
It contains every .lisp files used to produce the moz-complete.core, as well as a few utility files :

1) The mozlib.asd refers to every file that are currently evaluated to produce the core.
   The order of files should not be altered, otherwise errors might happen !

   You can add new files at the end of the :components list,
   either in the sources folder itself (:file "filename") or to subfolders (:file "library/filename").

2) The _LOAD_ASDF.lisp file is the only file that must be manually ran to create the .core.

   If you are using Max 8, it should work right away, but if you are using Max 7 you
   will need to edit the two paths contained in that file. Replacing 8 by 7 will be enough !

3) The "___double_click_to_make_new_core" Automator script is just a shortcut 
   to evaluate the _LOAD_ASDF.lisp file. A short while after running it, a moz-complete-new.core
   should appear automagically in the sbcl folder, ready to be used.

   Good practice at this point is simply to rename the previous core moz-complete-old.core,
   then the new one to moz-complete.core, and you should be able to test your functions right away. :)