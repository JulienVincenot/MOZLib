invoke-expression 'cmd /c start powershell -Command { New-Item -Path C:\Windows\Temp\MOZLib_setup_files -ItemType directory ; Import-Module BitsTransfer ; Start-BitsTransfer "https://wsldownload.azureedge.net/Ubuntu_2004.2020.424.0_x64.appx" "C:\Windows\Temp\MOZLib_setup_files\Ubuntu_2004.2020.424.0_x64.appx" ; Add-AppxPackage C:\Windows\Temp\MOZLib_setup_files\Ubuntu_2004.2020.424.0_x64.appx ; cd "C:\Program Files\WindowsApps\CanonicalGroupLimited.Ubuntu20.04onWindows_2004.2020.424.0_x64__79rhkp1fndgsc" ; ubuntu2004.exe }'
#invoke-expression 'cmd /c start powershell -Command { New-Item -Path C:\Windows\Temp\MOZLib_setup_files -ItemType directory ; Import-Module BitsTransfer ; Start-BitsTransfer "https://wsldownload.azureedge.net/Ubuntu_2004.2020.424.0_x64.appx" "C:\Windows\Temp\MOZLib_setup_files\Ubuntu_2004.2020.424.0_x64.appx" ; Add-AppxPackage C:\Windows\Temp\MOZLib_setup_files\Ubuntu_2004.2020.424.0_x64.appx ; cd "C:\Program Files\WindowsApps\CanonicalGroupLimited.Ubuntu20.04onWindows_2004.2020.424.0_x64__79rhkp1fndgsc" ; Remove-Item -Path "C:\Windows\Temp\MOZLib_setup_log\step2.txt" -Force ; ubuntu2004.exe }'
<#

#Create a directory where to download all the needed stuff
New-Item -Path C:\Windows\Temp\MOZLib_setup_files -ItemType directory

#download the files this way to display a download progress bar
Import-Module BitsTransfer
Start-BitsTransfer "https://wsldownload.azureedge.net/Ubuntu_2004.2020.424.0_x64.appx" "C:\Windows\Temp\MOZLib_setup_files\Ubuntu_2004.2020.424.0_x64.appx"

#install Ubuntu
Add-AppxPackage C:\Windows\Temp\MOZLib_setup_files\Ubuntu_2004.2020.424.0_x64.appx


#run Ubuntu
cd "C:\Program Files\WindowsApps\CanonicalGroupLimited.Ubuntu20.04onWindows_2004.2020.424.0_x64__79rhkp1fndgsc"
ubuntu2004.exe 
#then set username and password

#remove step2.txt
Remove-Item -Path "C:\Windows\Temp\MOZLib_setup_log\step2.txt" -Force 

#>