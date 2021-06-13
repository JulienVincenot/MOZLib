#find the UserName
$env:UserName 

#copy the batch file to the "startup" folder
Copy-Item -Path C:\Windows\Temp\run_setup_part2.bat -Destination "C:\Users\$env:UserName\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\"

Remove-Item -Path "C:\Windows\Temp\MOZLib_setup_log\step5.txt" -Force 