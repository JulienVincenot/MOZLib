$env:UserName #retrieve the username
cd C:\Windows\Temp\MOZLib-master\install_scripts 

if (Test-Path "C:\Users\$env:UserName\Documents\Max 8\Packages\MOZLib") #test if MOZLib folder exists
{
  Remove-Item -Path "C:\Users\$env:UserName\Documents\Max 8\Packages\MOZLib" -Recurse #if so, remove it
}


invoke-expression 'cmd /c start powershell -Command { echo "Installing unzip for Ubuntu. Please enter your password when prompted" ; wsl sudo apt-get install -y unzip ; wsl chmod +x /mnt/c/Windows/Temp/MOZLib-master/install_scripts/script6.sh ; cd C:\Windows\Temp\MOZLib-master\install_scripts ; bash script6.sh }'
#invoke-expression 'cmd /c start Powershell -Command { echo "Installing unzip for Ubuntu. Please enter your password when prompted" ; Read-Host -Prompt "Done!! Press Enter to exit and run script3" }'