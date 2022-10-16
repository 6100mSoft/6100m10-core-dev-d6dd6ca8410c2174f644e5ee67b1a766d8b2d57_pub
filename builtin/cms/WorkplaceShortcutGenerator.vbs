Dim objShortcut, objShell
Set objShell = WScript.CreateObject ("Wscript.Shell")
Const strWorkDir = "%USERPROFILE%"
Const strProgramTitle = "Start Workplace Programs"
Const strProgram = "C:\Program Files (x86)\Stardock\ObjectDock Plus\ObjectDock.exe"
Const strLPath = "C:\Users\Public\Public Desktop"
Set objShortcut = objShell.CreateShortcut (strLPath & "\" & strProgramTitle & ".lnk")
objShortcut.TargetPath = strProgram
objShortcut.WorkingDirectory = strWorkDir
objShortcut.Description = strProgramTitle
objShortcut.IconLocation = "C:\Gloom10\CMS\Icons\soafen.ico"
objShortcut.Save
WScript.Quit
