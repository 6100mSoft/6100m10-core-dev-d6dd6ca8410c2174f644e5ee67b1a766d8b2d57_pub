Dim objShortcut, objShell
Set objShell = WScript.CreateObject ("Wscript.Shell")
Const strWorkDir = "%USERPROFILE%"
Const strProgramTitle = "Start Toolchest"
Const strProgram = "C:\Program Files (x86)\Winstep\Nexus.exe"
Const strLPath = "C:\Users\Public\Desktop"
Set objShortcut = objShell.CreateShortcut (strLPath & "\" & strProgramTitle & ".lnk")
objShortcut.TargetPath = strProgram
objShortcut.WorkingDirectory = strWorkDir
objShortcut.Description = strProgramTitle
objShortcut.IconLocation = "C:\Gloom10\CMS\Icons\marito.ico"
objShortcut.Save
WScript.Quit
