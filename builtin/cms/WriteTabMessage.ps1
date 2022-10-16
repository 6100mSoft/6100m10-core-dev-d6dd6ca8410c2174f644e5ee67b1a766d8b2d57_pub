$message = "Starting Alt+Tab Engine, named Alt-Tab Terminator.... Please wait."
Remove-Item "C:\ProgramData\ISU\update_message.txt"
Add-Content "C:\ProgramData\ISU\update_message.txt" $message
