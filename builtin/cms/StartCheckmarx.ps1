$argstr = ""
Write-Host "WARNING: 6100m10 CMS will be started"
Start-Process -FilePath "C:\Gloom10\CMS\StartCMSService.cmd" -ArgumentList $argstr -Wait -NoNewWindow
Write-Host "6100m10 CMS has started."
Start-Process cmd.exe -ArgumentList "/c net start CxJobsManager" -RedirectStandardOutput 
Start-Process cmd.exe -ArgumentList "/c net start CxScanEngine" -RedirectStandardOutput 
Start-Process cmd.exe -ArgumentList "/c net start CxScansManager" -RedirectStandardOutput 
Start-Process cmd.exe -ArgumentList "/c net start CxSystemManager" -RedirectStandardOutput
