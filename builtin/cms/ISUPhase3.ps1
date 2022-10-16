# Part of this code was written by a university.
Start-Process -FilePath "C:\Gloom10\CMS\WriteLabPrinterMessage.ps1" -Wait -NoNewWindow
Start-Process -FilePath "C:\ProgramData\ISU\Programs\AddLabPrinters.exe" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\WriteDeepFreezeMessage.ps1" -Wait -NoNewWindow
Start-Process -FilePath "C:\ProgramData\ISU\Programs\dfucf.exe" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\WriteCVMessage.ps1" -Wait -NoNewWindow
Start-Process -FilePath "C:\ProgramData\ISU\Programs\ISUInsertIntoCV.exe" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\WriteLabMessage.ps1" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\UnRegisterISULabsService.cmd" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\WriteRegisterMessage.ps1" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\Programs\RegisterISULabsService.cmd" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\WriteBootupMessage.ps1" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\Programs\StartISULabsService.cmd" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\WritePowerShellMessage.ps1" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\Programs\RunISUPowershellScripts.cmd" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\WriteSPMessage.ps1" -Wait -NoNewWindow
Start-Process -FilePath "C:\ProgramData\ISU\Programs\ISUsp.exe" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\WriteCHKMessage.ps1" -Wait -NoNewWindow
Start-Process -FilePath "C:\ProgramData\ISU\Programs\updchk.exe" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\WriteResMessage.ps1" -Wait -NoNewWindow
Start-Process -FilePath "C:\ProgramData\ISU\Programs\QRes.exe" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\WriteCheckMessage.cmd" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\PCRename.cmd" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\WriteRenamedMessage.ps1" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\Wait.cmd" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\WriteClientMessage.ps1" -Wait -NoNewWindow
Start-Process -File "C:\ProgramData\ISU\Programs\gswebclient.exe" -ArgumentList "/GTX https://thedarktower.labs.its.isu.edu:7773/"
$printerFile = "C:\ProgramData\ISU\print_scripts\KI.txt"
if ($printerFile -match "KI") {
    # Printer file is custom because it's KI
    Get-Content $printerFile | ForEach-Object {
        if ($env:COMPUTERNAME -eq ($_ -split ' ')[0].Trim()) {
            $printerPath = ($_ -split ' ')[1].Trim();
            Write-Output "Calling Add-Printer for $printerPath"
            Add-Printer -ConnectionName $printerPath
        };
    }
}
else {
    if ($env:computername -notmatch "BU-PRINT") {
        Get-Content $printerFile | ForEach-Object {
            $printerPath = ($_ -split ' ')[0].Trim();
            Write-Output "Calling Add-Printer for $printerPath"
            Add-Printer -ConnectionName $printerPath
        }
    }
}
Start-Process -FilePath "C:\Gloom10\CMS\WriteSpoolerMessage.ps1" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\InvokeRestartPrintSpooler.ps1" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\Waiter.ps1" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\WriteKillMessage.ps1" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\KillPrintSpooler.cmd" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\WaitForTerm.ps1" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\WriteXMLMessage.ps1" -Wait -NoNewWindow
Start-Process -FilePath "C:\ProgramData\ISU\Programs\ISUAddScheduledTaskFromXML.exe" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\WriteAddMessage.ps1" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\UpdateServiceAdder.cmd" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\WriteUpdateMessage.ps1" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\UpdateServiceMapper.cmd" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\WriteTMPMessage.ps1" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\CallTMPScript.cmd" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\WriteTimeMessage.ps1" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\ISUSetTime.cmd" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\WriteTaskMessage.ps1" -Wait -NoNewWindow
Start-Process -FilePath "C:\Gloom10\CMS\PrinterTasks.cmd" -Wait -NoNewWindow
