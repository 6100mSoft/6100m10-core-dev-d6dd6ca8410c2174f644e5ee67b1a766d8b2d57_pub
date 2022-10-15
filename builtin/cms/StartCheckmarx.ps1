Start-Process cmd.exe -ArgumentList "/c net start W3SVC" -RedirectStandardOutput 
Start-Process -FilePath "C:\Gloom10\CMS\StartMSSQLYuya.cmd" -ArgumentList $argstr -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\StartMSSQLAgentYuya.cmd" -ArgumentList $argstr -Wait -NoNewWindow
Start-Process cmd.exe -ArgumentList "/c net start SQLBrowser" -RedirectStandardOutput 
Start-Process cmd.exe -ArgumentList "/c net start SQLWriter" -RedirectStandardOutput 
Start-Process cmd.exe -ArgumentList "/c net start CxJobsManager" -RedirectStandardOutput 
Start-Process cmd.exe -ArgumentList "/c net start CxScanEngine" -RedirectStandardOutput 
Start-Process cmd.exe -ArgumentList "/c net start CxScansManager" -RedirectStandardOutput 
Start-Process cmd.exe -ArgumentList "/c net start CxSystemManager" -RedirectStandardOutput
