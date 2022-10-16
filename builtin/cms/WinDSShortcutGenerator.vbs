Dim objShortcut, objShell
Set objShell = WScript.CreateObject ("Wscript.Shell")
Const strWorkDir = "%USERPROFILE%"
Const strProgramTitle = "Shortcut to Calculator"
Const strProgram = "C:\Gloom10\CMS\StartWinDSPro.cmd"
Const strLPath = "C:\Users\Public\Public Desktop"
Set objShortcut = objShell.CreateShortcut (strLPath & "\" & strProgramTitle & ".lnk")
objShortcut.TargetPath = strProgram
objShortcut.WorkingDirectory = strWorkDir
objShortcut.Description = strProgramTitle
objShortcut.IconLocation = "C:\Gloom10\CMS\Icons\ojasisrealfuckingcute.ico"
objShortcut.Save
WScript.Quit
