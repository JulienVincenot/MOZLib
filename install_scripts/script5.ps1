$env:UserName #retrieve the username
cd C:\Users\$env:UserName\Desktop\MOZLib_setup_scripts #cd to the desktop (move all this in temp)

if (Test-Path "C:\Users\$env:UserName\Documents\Max 8\Packages\MOZLib") #test if MOZLib folder exists
{
  Remove-Item -Path "C:\Users\$env:UserName\Documents\Max 8\Packages\MOZLib" -Recurse #if so, remove it
}

#authorize writing
wsl chmod +x /mnt/c/Users/matte/Desktop/MOZLib_setup_scripts/script6.sh 

#run the script
bash script6.sh 

#remove the downloaded zip file from the desktop
#Remove-Item -Path C:\Users\$env:UserName\Desktop\MOZLib-master.zip 

#remove the downloaded folder form the desktop
#Remove-Item -Path C:\Users\$env:UserName\Desktop\MOZLib-master -Recurse 

Read-Host -Prompt "Done!! Open script7"