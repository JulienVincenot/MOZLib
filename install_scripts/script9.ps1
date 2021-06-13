#invoke-expression 'cmd /c start powershell -Command { echo "Creating a new core file" ; wsl chmod +x /mnt/c/Windows/Temp/MOZLib-master/install_scripts/script10.sh ; cd C:\Windows\Temp\MOZLib-master\install_scripts ; bash script10.sh ; Read-Host -Prompt "Done!! Press Enter to exit and run script3" }'

wsl chmod +x /mnt/c/Windows/Temp/MOZLib-master/install_scripts/script10.sh ;
cd C:\Windows\Temp\MOZLib-master\install_scripts ;
Remove-Item -Path C:\Users\matte\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\MOZLib_setup_part2.maxpat -Force
Remove-Item -Recurse -Force C:\Windows\Temp\MOZLib_setup_files
Remove-Item -Recurse -Force C:\Windows\Temp\MOZLib_setup_log
Remove-Item -Recurse -Force C:\Windows\Temp\MOZLib-master


Remove-Item -Path C:\Windows\Temp\MOZLib_mkdir.bat -Force
Remove-Item -Path C:\Windows\Temp\run_script0.bat -Force
Remove-Item -Path C:\Windows\Temp\run_script1.bat -Force
Remove-Item -Path C:\Windows\Temp\run_script1_1.bat -Force
Remove-Item -Path C:\Windows\Temp\run_script2.bat -Force
Remove-Item -Path C:\Windows\Temp\run_script2_1.bat -Force
Remove-Item -Path C:\Windows\Temp\run_script2_2.bat -Force
Remove-Item -Path C:\Windows\Temp\run_script3.bat -Force
Remove-Item -Path C:\Windows\Temp\run_script4.bat -Force
Remove-Item -Path C:\Windows\Temp\run_script5.bat -Force
Remove-Item -Path C:\Windows\Temp\run_script7.bat -Force
Remove-Item -Path C:\Windows\Temp\run_script9.bat -Force
Remove-Item -Path C:\Windows\Temp\unzip_MOZLib.ps1 -Force

bash script10.sh
