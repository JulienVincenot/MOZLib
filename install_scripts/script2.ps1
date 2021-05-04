#elevate the current powershell tab 
if (-NOT ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator"))  
{  
  $arguments = "& '" +$myinvocation.mycommand.definition + "'"
  Start-Process powershell -Verb runAs -ArgumentList $arguments
  Break
}

#enable WSL
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart 

#enable the "Virtual Machine Platform"
Get-WmiObject Win32_OperatingSystem | Select  Version | FL #find the windows version

#i need to find a way to retrieve the windows version
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform -NoRestart

Remove-Item -Path "C:\Windows\Temp\MOZLib_setup_log\step3.txt" -Force 
Read-Host -Prompt "Done!! Press Enter to exit and run script3"