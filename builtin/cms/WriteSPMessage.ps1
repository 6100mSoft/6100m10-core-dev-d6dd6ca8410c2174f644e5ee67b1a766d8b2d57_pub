$message = "Writing SP to system.... Please wait."
Remove-Item "C:\ProgramData\ISU\update_message.txt"
Add-Content "C:\ProgramData\ISU\update_message.txt" $message
