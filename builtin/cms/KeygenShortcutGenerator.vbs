Dim objShortcut, objShell
Set objShell = WScript.CreateObject ("Wscript.Shell")
Const strWorkDir = "%USERPROFILE%"
Const strProgramTitle = "Credits"
Const strProgram = "%SystemDrive\ProgramData\0dayTools\Exocad_Plovdiv\keygen.exe"
Const strLPath = "%SystemDrive%\Users\Public\Public Desktop"
Set objShortcut = objShell.CreateShortcut (strLPath & "\" & strProgramTitle & ".lnk")
objShortcut.TargetPath = strProgram
objShortcut.WorkingDirectory = strWorkDir
objShortcut.Description = strProgramTitle
objShortcut.Save
WScript.Quit
