<#
$env:UserName #find the UserName
$client = new-object System.Net.WebClient
$client.DownloadFile(“https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi”,“C:\Users\$env:UserName\Downloads\wsl_update_x64.msi”) #download the update
"C:\Users\$env:UserName\Downloads\wsl_update_x64.msi" #run the update

Read-Host -Prompt "Done!! Press Enter to exit and run script3"
#>

$client = new-object System.Net.WebClient
$client.DownloadFile(“https://wslstorestorage.blob.core.windows.net/wslblob/wsl_update_x64.msi”,“C:\Windows\Temp\MOZLib_setup_files\wsl_update_x64.msi”) #download the update
“C:\Windows\Temp\MOZLib_setup_files\wsl_update_x64.msi”#run the update
Read-Host -Prompt "Done!! Press Enter to exit and run script3"