$message = "PC has been renamed.... Please wait."
Remove-Item "C:\ProgramData\ISU\UpdateMessage.txt"
Add-Content "C:\ProgramData\ISU\UpdateMessage.txt" $message
