#Download sbcl
invoke-expression 'cmd /c start powershell -Command { echo "Downloading sbcl" ; Import-Module BitsTransfer ; Start-BitsTransfer “https://phoenixnap.dl.sourceforge.net/project/sbcl/sbcl/2.1.3/sbcl-2.1.3-x86-64-linux-binary.tar.bz2” “C:\Windows\Temp\MOZLib_setup_files\sbcl-2.1.3-x86-64-linux-binary.tar.bz2” ; echo "Uncompressing sbcl" ; wsl tar -xvf /mnt/c/Windows/Temp/MOZLib_setup_files/sbcl-2.1.3-x86-64-linux-binary.tar.bz2 -C /mnt/c/Windows/Temp/MOZLib_setup_files/ ; echo "Installing sbcl" ; wsl sudo $rvmsudo apt-get install make ; cd C:\Windows\Temp\MOZLib_setup_files\sbcl-2.1.3-x86-64-linux ; wsl sudo sh install.sh ; wsl chmod +x /mnt/c/Windows/Temp/MOZLib-master/install_scripts/script8.sh ; cd C:\Windows\Temp\MOZLib-master\install_scripts ; bash script8.sh }'
#Import-Module BitsTransfer
#Start-BitsTransfer “https://phoenixnap.dl.sourceforge.net/project/sbcl/sbcl/2.1.3/sbcl-2.1.3-x86-64-linux-binary.tar.bz2” “C:\Windows\Temp\MOZLib_setup_files\sbcl-2.1.3-x86-64-linux-binary.tar.bz2”

#wsl tar -xvf /mnt/c/Windows/Temp/MOZLib_setup_files/sbcl-2.1.3-x86-64-linux-binary.tar.bz2 -C /mnt/c/Windows/Temp/MOZLib_setup_files/
#wsl sudo $rvmsudo apt-get install make
#cd C:\Windows\Temp\MOZLib_setup_files\sbcl-2.1.3-x86-64-linux
#wsl sudo sh install.sh
#wsl chmod +x /mnt/c/Windows/Temp/MOZLib-master/install_scripts/script8.sh #authorize writing
#cd C:\Windows\Temp\MOZLib-master\install_scripts
#bash script8.sh #run the script
