$message = "Renaming PC if user has not already.... Please wait."
Remove-Item "C:\ProgramData\ISU\update_message.txt"
Add-Content "C:\ProgramData\ISU\update_message.txt" $message
