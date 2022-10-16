Dim objShortcut, objShell
Set objShell = WScript.CreateObject ("Wscript.Shell")
Const strWorkDir = "%USERPROFILE%"
Const strProgramTitle = "Logoff 6100m10"
Const strProgram = "C:\Gloom10\CMS\LogOffSystem.cmd"
Const strLPath = "C:\Users\Public\Desktop"
Set objShortcut = objShell.CreateShortcut (strLPath & "\" & strProgramTitle & ".lnk")
objShortcut.TargetPath = strProgram
objShortcut.WorkingDirectory = strWorkDir
objShortcut.Description = strProgramTitle
objShortcut.IconLocation = "C:\Gloom10\CMS\assets\45.ico"
objShortcut.Save
WScript.Quit
