$message = "Starting Cursor effects engine, named CursorFX.... Please wait."
Remove-Item "C:\ProgramData\ISU\UpdateMessage.txt"
Add-Content "C:\ProgramData\ISU\UpdateMessage.txt" $message
