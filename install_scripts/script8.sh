#! /bin/sh # shebang
export WINHOME=$(wslpath "$(wslvar USERPROFILE 2> /dev/null)") && rm "$WINHOME/Documents/Max 8/Packages/MOZLib/sbcl/sbcl" && cp /usr/local/bin/sbcl "$WINHOME/Documents/Max 8/Packages/MOZLib/sbcl/"