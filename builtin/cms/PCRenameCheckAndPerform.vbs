Rem Following resources used:
Rem https://devblogs.microsoft.com/scripting/how-can-i-give-a-user-a-yesno-prompt/
Rem https://stackoverflow.com/questions/16751301/find-specific-string-in-a-text-file-with-vbs-script
Rem https://stackoverflow.com/questions/34820685/want-to-use-vbscript-to-run-bat-file-in-a-different-folder
Rem https://devblogs.microsoft.com/scripting/how-can-i-stop-a-script-partway-through/
Dim objFSO, filepath, objInputFile, tmpStr, substrToFind
Set objFSO = CreateObject("Scripting.FileSystemObject")
filepath = "C:\Gloom10\renamecheck.ini"
substrToFind = "oem"
Set objInputFile = objFSO.OpenTextFile(filepath)
tmpStr = objInputFile.ReadLine
If objFSO.FileExists(filepath) Then
	If InStr(tmpStr, substrToFind) <= 0 Then
	    intAnswer = _
    	    Msgbox("Do you want to change your PC's name?", 4, "Do you want to do this?")
		If intAnswer = vbYes Then
    		Msgbox "Changing now...."
			Set shell = CreateObject("WScript.Shell")
			shell.CurrentDirectory = "C:\Gloom10\CMS\"
			shell.Run "ChangePCName.cmd"
		Else
    	    		Msgbox "You answered no. Exiting...."
			WScript.Quit
        End If
    End If
End If
