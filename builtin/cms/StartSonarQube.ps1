Write-Host "WARNING: 6100m10 CMS will be started"
Start-Process -FilePath "C:\Gloom10\CMS\StartCMSService.cmd" -Wait -NoNewWindow
Write-Host "6100m10 CMS has started"
Start-Process cmd.exe -ArgumentList "/c net start Sonarqube"
