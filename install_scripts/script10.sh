#!/bin/sh
export WINHOME=$(wslpath "$(wslvar USERPROFILE 2> /dev/null)") && /usr/local/bin/sbcl --script "$WINHOME/Documents/Max 8/Packages/MOZLib/sources/_LOAD_ASDF.lisp" && rm /mnt/c/Windows/Temp/MOZLib_mkdir.bat && rm -r /mnt/c/Windows/Temp/MOZLib_setup_files/* && rm -r /mnt/c/Windows/Temp/MOZLib_trigger_batch_files/* && rm /mnt/c/Windows/Temp/MOZLib_setup_log/step9.txt
