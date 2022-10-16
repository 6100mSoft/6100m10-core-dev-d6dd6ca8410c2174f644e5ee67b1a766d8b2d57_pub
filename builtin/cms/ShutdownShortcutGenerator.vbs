Dim objShortcut, objShell
Set objShell = WScript.CreateObject ("Wscript.Shell")
Const strWorkDir = "%USERPROFILE%"
Const strProgramTitle = "Shutdown 6100m10"
Const strProgram = "%SystemDrive%\Gloom10\CMS\ShutdownSystem.cmd"
Const strLPath = "%SystemDrive%\Users\Public\Public Desktop"
Set objShortcut = objShell.CreateShortcut (strLPath & "\" & strProgramTitle & ".lnk")
objShortcut.TargetPath = strProgram
objShortcut.WorkingDirectory = strWorkDir
objShortcut.Description = strProgramTitle
objShortcut.IconLocation = "%SystemDrive%\Gloom10\CMS\Icons\shutdown_winxp.ico"
objShortcut.Save
WScript.Quit
