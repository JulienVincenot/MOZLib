#!/bin/sh
export WINHOME=$(wslpath "$(wslvar USERPROFILE 2> /dev/null)") && 
/usr/local/bin/sbcl --script "$WINHOME/Documents/Max 8/Packages/MOZLib/sources/_LOAD_ASDF.lisp" && 
rm /mnt/c/Windows/Temp/MOZLib_setup_log/step10.txt &&
rm /mnt/c/Windows/Temp/script0.ps1 &&
rm /mnt/c/Windows/Temp/MOZLib_mkdir.bat &&
rm /mnt/c/Windows/Temp/unzip_MOZLib.ps1 &&
rm /mnt/c/Windows/Temp/MOZLib_setup_log/step10.txt &&
rm -r /mnt/c/Windows/Temp/MOZLib_setup_log &&
rm -r /mnt/c/Windows/Temp/MOZLib_setup_files &&
rm -r /mnt/c/Windows/Temp/MOZLib_setup_log &&
rm -r /mnt/c/Windows/Temp/MOZLib_trigger_batch_files 
