Dim objShortcut, objShell
Set objShell = WScript.CreateObject ("Wscript.Shell")
Const strWorkDir = "%USERPROFILE%"
Const strProgramTitle = "Start Toolchest"
Const strProgram = "%ProgramFiles(x86)\Winstep\Nexus.exe"
Const strLPath = "%SystemDrive\Users\Public\Public Desktop"
Set objShortcut = objShell.CreateShortcut (strLPath & "\" & strProgramTitle & ".lnk")
objShortcut.TargetPath = strProgram
objShortcut.WorkingDirectory = strWorkDir
objShortcut.Description = strProgramTitle
objShortcut.IconLocation = "%SystemDrive%\Gloom10\CMS\Icons\marito.ico"
objShortcut.Save
WScript.Quit
