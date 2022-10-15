Write-Host "6100m10 CMS is starting...."
Start-Process -FilePath "C:\Gloom10\CMS\StartCoreImpactService.cmd" -ArgumentList $argstr -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\StartCoreImpactWebService.cmd" -ArgumentList $argstr -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\StartMSSQLYuya.cmd" -ArgumentList $argstr -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\StartMSSQLAgentYuya.cmd" -ArgumentList $argstr -Wait -NoNewWindow
Start-Process cmd.exe -ArgumentList "/c net start W3SVC" -RedirectStandardOutput 
Start-Process cmd.exe -ArgumentList "/c net start SQLBrowser" -RedirectStandardOutput 
Start-Process cmd.exe -ArgumentList "/c net start SQLWriter" -RedirectStandardOutput 
Write-Host "6100m10 CMS has started."
