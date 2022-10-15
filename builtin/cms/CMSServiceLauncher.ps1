Start-Process -FilePath "C:\Gloom10\CMS\StartCoreImpactService.cmd" -ArgumentList $argstr -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\StartCoreImpactWebService.cmd" -ArgumentList $argstr -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\StartCoreImpactScheduler.cmd" -ArgumentList $argstr -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\StartMSSQLYuya.cmd" -ArgumentList $argstr -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\StartMSSQLAgentYuya.cmd" -ArgumentList $argstr -Wait -NoNewWindow
