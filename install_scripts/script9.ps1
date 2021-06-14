#invoke-expression 'cmd /c start powershell -Command { echo "Creating a new core file" ; wsl chmod +x /mnt/c/Windows/Temp/MOZLib-master/install_scripts/script10.sh ; cd C:\Windows\Temp\MOZLib-master\install_scripts ; bash script10.sh ; Read-Host -Prompt "Done!! Press Enter to exit and run script3" }'

wsl chmod +x /mnt/c/Windows/Temp/MOZLib-master/install_scripts/script10.sh ;
cd C:\Windows\Temp\MOZLib-master\install_scripts ;
Remove-Item -Path "C:\Users\matte\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\MOZLib_setup_part2.maxpat" -Force

bash script10.sh
