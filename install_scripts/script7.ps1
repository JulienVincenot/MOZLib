#Download sbcl
Import-Module BitsTransfer
Start-BitsTransfer “https://phoenixnap.dl.sourceforge.net/project/sbcl/sbcl/2.1.3/sbcl-2.1.3-x86-64-linux-binary.tar.bz2” “C:\Windows\Temp\sbcl-2.1.3-x86-64-linux-binary.tar.bz2”

wsl tar -xvf /mnt/c/Windows/Temp/sbcl-2.1.3-x86-64-linux-binary.tar.bz2 -C /mnt/c/Windows/Temp/
wsl sudo $rvmsudo apt-get install make
cd C:\Windows\Temp\sbcl-2.1.3-x86-64-linux
wsl sudo sh install.sh
wsl chmod +x /mnt/c/Users/matte/Desktop/MOZLib_setup_scripts/script8.sh #authorize writing
cd C:\Users\matte\Desktop\MOZLib_setup_scripts
bash script8.sh #run the script
Read-Host -Prompt "sbcl installed, open script 9"