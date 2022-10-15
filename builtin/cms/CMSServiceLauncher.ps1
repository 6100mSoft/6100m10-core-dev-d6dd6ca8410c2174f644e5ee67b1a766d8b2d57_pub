Write-Host "6100m10 CMS is starting...."
Start-Process -FilePath "C:\Gloom10\CMS\StartCoreImpactService.cmd" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\StartCoreImpactWebService.cmd"  -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\StartMSSQLYuya.cmd" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\StartMSSQLAgentYuya.cmd" -Wait -NoNewWindow
Start-Process cmd.exe -ArgumentList "/c net start W3SVC" -RedirectStandardOutput 
Start-Process cmd.exe -ArgumentList "/c net start SQLBrowser" -RedirectStandardOutput 
Start-Process cmd.exe -ArgumentList "/c net start SQLWriter" -RedirectStandardOutput 
Write-Host "6100m10 CMS has started."
