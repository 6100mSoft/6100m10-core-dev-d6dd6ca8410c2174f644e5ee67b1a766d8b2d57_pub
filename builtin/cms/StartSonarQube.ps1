Start-Process -FilePath "C:\Gloom10\CMS\StartMSSQLYuya.cmd" -ArgumentList $argstr -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\StartMSSQLAgentYuya.cmd" -ArgumentList $argstr -Wait -NoNewWindow
Start-Process cmd.exe -ArgumentList "/c net start Sonarqube" -RedirectStandardOutput 
