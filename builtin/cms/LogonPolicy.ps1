$argstr = ""
Start-Process -FilePath "C:\Gloom10\CMS\Unregister6100m10CMSService.cmd" -ArgumentList $argstr -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\Register6100m10CMSService.cmd" -ArgumentList $argstr -Wait -NoNewWindow
