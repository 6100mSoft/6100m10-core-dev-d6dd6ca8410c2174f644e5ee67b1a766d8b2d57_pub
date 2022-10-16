Dim objShortcut, objShell
Set objShell = WScript.CreateObject ("Wscript.Shell")
Const strWorkDir = "%USERPROFILE%"
Const strProgramTitle = "HyperSpin"
Const strProgram = "C:\Gloom10\CMS\StartUpHyperSpin.cmd"
Const strLPath = "C:\Users\Public\Desktop"
Set objShortcut = objShell.CreateShortcut (strLPath & "\" & strProgramTitle & ".lnk")
objShortcut.TargetPath = strProgram
objShortcut.WorkingDirectory = strWorkDir
objShortcut.Description = strProgramTitle
objShortcut.Save
WScript.Quit
