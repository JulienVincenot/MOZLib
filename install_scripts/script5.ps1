$env:UserName #retrieve the username
cd C:\Windows\Temp\MOZLib-master\install_scripts 

if (Test-Path "C:\Users\$env:UserName\Documents\Max 8\Packages\MOZLib") #test if MOZLib folder exists
{
  Remove-Item -Path "C:\Users\$env:UserName\Documents\Max 8\Packages\MOZLib" -Recurse #if so, remove it
}

#authorize writing
wsl chmod +x /mnt/c/Windows/Temp/MOZLib-master/install_scripts/script6.sh 

invoke-expression 'cmd /c start powershell -Command { echo "Installing unzip for Ubuntu. Please enter your password when prompted" ; wsl sudo apt-get install -y unzip ; cd C:\Windows\Temp\MOZLib-master\install_scripts ; bash scrip6.sh }'


#run the script
#bash script6.sh 

#remove the downloaded zip file from the desktop
#Remove-Item -Path C:\Users\$env:UserName\Desktop\MOZLib-master.zip 

#remove the downloaded folder form the desktop
#Remove-Item -Path C:\Users\$env:UserName\Desktop\MOZLib-master -Recurse 

#Read-Host -Prompt "Done!! Open script7"