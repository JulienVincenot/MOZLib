# neuromuse
Artificial neural networks to generate music and artistic productions with real-time applications (since 2000)


This project was initiated by Fred Voisin (www.fredvoisin.com) in 1999 to study the application of artificial neural nets
to contemporary music creation using, at first, Lisp language (Macintosh Common Lisp and Common Lisp Object System), OpenMusic software (Ircam, www.ircam.fr) and MIDI protocol. Some overall principles were inspired by David Wessel (http://music.berkeley.edu/who-was-david-wessel/) and Adrian Freed at CNMAT (http://cnmat.berkeley.edu)
At this time, the very first ('alpha') version of this project was available at www.neuromuse.net and at the Openmusic Ircam's Forum.
Its first public music applications were produced in February 2001 at the Centre National de la Danse in Paris (cf. "Taire", by Toeplitz and Gourfink) and in June 2001 at Ircam (cf. "L'ecarlate", by Toeplitz and Gourfink), with the use of a Macintosh Common Lisp client to control a MIDI server (cf. http://midishare.sourceforge.net).
Later, around 2004, different Lisp versions of this project developped by the author was used to design equivalent neural net architectures in "Max" and Puredada real-time programming environments for music production (Ircam & Cycling74) in collaboration with Robin Meier (http://robinmeier.net), Arshia Cont and Ali Momeni, with the support of the Centre International de Recherche Musicale at Nice (www.cirm-manca.org). 
From 2006 to 2008, new Lisp developments by the author provided a stable real-time multi-agent system, using various Lisp such as Lispworks, OpenMCL, CMU-CL and SBCL (www.sbcl.org) Common Lisp implementations, with the use of TCP/IP and multi-threading on CMU-CL and SBCL implementations for Linux and Mac OS X. Computer music productions such as "Symphonie des machines" (Meier & Voisin, Sophia-Antipolis 2006) and "Last Manoeuvres in the Dark" (Giraud & Siboni, Palais de Tokyo, Paris 2008) were artistic applications of this version, with some particular adaptations in Python, Java and C++ for distributed multicore ARM ad-hoc architectures (thank's to John McCallum).

Even if this project is becoming quite old, it may be a good start for new developments since it's short, simple, easy to use and efficient enough for education and artistic productions.

The documentation is, for now, only included in the Lisp definitions and code (last successfull run in SBCL).
The last multi-threaded runs required bordeaux-mp lisp patch for SBCL (may be obsolete, last runs done in 2008).

Work still in progress...

Fred Voisin, March 31th 2017.
