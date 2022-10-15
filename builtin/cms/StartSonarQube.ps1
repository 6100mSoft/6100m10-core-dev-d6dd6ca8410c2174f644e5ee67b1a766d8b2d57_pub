Write-Host "WARNING: 6100m10 CMS will be started"
Start-Process -FilePath "C:\Gloom10\CMS\StartCMSService.cmd" -ArgumentList $argstr -Wait -NoNewWindow
Start-Process cmd.exe -ArgumentList "/c net start Sonarqube" -RedirectStandardOutput 
