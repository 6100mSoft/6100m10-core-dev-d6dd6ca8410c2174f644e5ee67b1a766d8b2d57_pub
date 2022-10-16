Dim objShortcut, objShell
Set objShell = WScript.CreateObject ("Wscript.Shell")
Const strWorkDir = "%USERPROFILE%"
Const strProgramTitle = "Give Feedback on 6100m10"
Const strProgram = "%SystemDrive%\Gloom10\CMS\GiveFeedback.cmd"
Set objShortcut = objShell.CreateShortcut (strProgram & "\" & strProgramTitle & ".lnk")
objShortcut.TargetPath = strProgram
objShortcut.WorkingDirectory = strWorkDir
objShortcut.Description = strProgramTitle
objShortcut.Save
WScript.Quit
