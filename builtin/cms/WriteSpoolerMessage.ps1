$message = "Initalizing print spooler so it's terminateable.... Please wait."
Remove-Item "C:\ProgramData\ISU\UpdateMessage.txt"
Add-Content "C:\ProgramData\ISU\UpdateMessage.txt" $message
