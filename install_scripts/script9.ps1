#get the user name
$env:UserName

#authorize writing
wsl chmod +x /mnt/c/Users/$env:UserName/Desktop/MOZLib_setup_scripts/script10.sh 

#run the script
cd C:\Users\$env:UserName\Desktop\MOZLib_setup_scripts
bash script10.sh 

#Read-Host -Prompt "old core removed, Fuck yeah!!"