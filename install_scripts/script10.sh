﻿#!/bin/bash
export WINHOME=$(wslpath "$(wslvar USERPROFILE 2> /dev/null)") && /usr/local/bin/sbcl --script "$WINHOME/Documents/Max 8/Packages/MOZLib/sources/_LOAD_ASDF.lisp"