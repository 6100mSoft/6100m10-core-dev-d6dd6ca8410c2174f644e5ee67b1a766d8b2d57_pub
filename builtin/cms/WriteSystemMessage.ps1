$message = "Taskkilling banner, and system has been brought up.... Please wait."
Remove-Item "C:\ProgramData\ISU\update_message.txt"
Add-Content "C:\ProgramData\ISU\update_message.txt" $message
