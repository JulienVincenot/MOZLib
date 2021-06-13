#get the user name
$env:UserName

#authorize writing
wsl chmod +x /mnt/c/Windows/Temp/MOZLib-master/install_scripts/script10.sh 

#run the script
cd C:\Windows\Temp\MOZLib-master\install_scripts
bash script10.sh 

#Read-Host -Prompt "old core removed, Fuck yeah!!"