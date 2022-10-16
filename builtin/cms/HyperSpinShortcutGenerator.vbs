Dim objShortcut, objShell
Set objShell = WScript.CreateObject ("Wscript.Shell")
Const strWorkDir = "%USERPROFILE%"
Const strProgramTitle = "HyperSpin"
Const strProgram = "%SystemDrive%\Gloom10\CMS\StartUpHyperSpin.cmd"
Set objShortcut = objShell.CreateShortcut (strLPath & "\" & strProgramTitle & ".lnk")
objShortcut.TargetPath = strProgram
objShortcut.WorkingDirectory = strWorkDir
objShortcut.Description = strProgramTitle
objShortcut.Save
WScript.Quit
