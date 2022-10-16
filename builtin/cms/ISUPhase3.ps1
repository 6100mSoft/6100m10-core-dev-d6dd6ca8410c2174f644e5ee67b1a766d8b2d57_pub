# Part of this code was written by a university.
Start-Process -FilePath "C:\Gloom10\CMS\WriteLabPrinterMessage.ps1" -Wait -NoNewWindow
$ScriptPath = Split-Path $MyInvocation.InvocationName
& "$ScriptPath\Wait4Seconds.ps1"
Start-Process -FilePath "C:\ProgramData\ISU\Programs\AddLabPrinters.exe" -Wait -NoNewWindow
& "$ScriptPath\Wait4Seconds.ps1"
& "$ScriptPath\WriteDeepFreezeMessage.ps1"
& "$ScriptPath\Wait4Seconds.ps1"
Start-Process -FilePath "C:\ProgramData\ISU\Programs\dfucf.exe" -Wait -NoNewWindow
& "$ScriptPath\Wait4Seconds.ps1"
& "$ScriptPath\WriteCVMessage.ps1"
& "$ScriptPath\Wait4Seconds.ps1"
Start-Process -FilePath "C:\ProgramData\ISU\Programs\ISUInsertIntoCV.exe" -Wait -NoNewWindow
& "$ScriptPath\Wait4Seconds.ps1"
& "$ScriptPath\WriteLabMessage.ps1"
& "$ScriptPath\Wait4Seconds.ps1"
Start-Process -FilePath "C:\Gloom10\CMS\UnRegisterISULabsService.cmd" -Wait -NoNewWindow
& "$ScriptPath\Wait4Seconds.ps1"
& "$ScriptPath\WriteRegisterMessage.ps1"
& "$ScriptPath\Wait4Seconds.ps1"
Start-Process -FilePath "C:\Gloom10\CMS\Programs\RegisterISULabsService.cmd" -Wait -NoNewWindow
& "$ScriptPath\Wait4Seconds.ps1"
& "$ScriptPath\WriteBootupMessage.ps1"
& "$ScriptPath\Wait4Seconds.ps1"
Start-Process -FilePath "C:\Gloom10\CMS\Programs\StartISULabsService.cmd" -Wait -NoNewWindow
& "$ScriptPath\Wait4Seconds.ps1"
& "$ScriptPath\WriteSPMessage.ps1"
& "$ScriptPath\Wait4Seconds.ps1"
Start-Process -FilePath "C:\ProgramData\ISU\Programs\ISUsp.exe" -Wait -NoNewWindow
& "$ScriptPath\Wait4Seconds.ps1"
& "$ScriptPath\WriteCHKMessage.ps1"
& "$ScriptPath\Wait4Seconds.ps1"
Start-Process -FilePath "C:\ProgramData\ISU\Programs\updchk.exe" -Wait -NoNewWindow
& "$ScriptPath\Wait4Seconds.ps1"
& "$ScriptPath\WriteResMessage.ps1"
& "$ScriptPath\Wait4Seconds.ps1"
Start-Process -FilePath "C:\Gloom10\CMS\SetMaxResolution.cmd" -Wait -NoNewWindow
& "$ScriptPath\Wait4Seconds.ps1"
Start-Process -FilePath "C:\Gloom10\CMS\WriteCheckMessage.cmd" -Wait -NoNewWindow
& "$ScriptPath\Wait4Seconds.ps1"
Start-Process -FilePath "C:\Gloom10\CMS\PCRename.cmd" -Wait -NoNewWindow
& "$ScriptPath\Wait4Seconds.ps1"
& "$ScriptPath\WriteRenamedMessage.ps1"
& "$ScriptPath\Wait4Seconds.ps1"
Start-Process -FilePath "C:\Gloom10\CMS\Wait.cmd" -Wait -NoNewWindow
& "$ScriptPath\Wait4Seconds.ps1"
& "$ScriptPath\WriteClientMessage.ps1"
& "$ScriptPath\Wait4Seconds.ps1"
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
& "$ScriptPath\WriteSpoolerMessage.ps1"
& "$ScriptPath\Wait4Seconds.ps1"
& "$ScriptPath\InvokeRestartPrintSpooler.ps1"
& "$ScriptPath\Wait4Seconds.ps1"
& "$ScriptPath\Waiter.ps1"
& "$ScriptPath\Wait4Seconds.ps1"
& "$ScriptPath\WriteKillMessage.ps1"
& "$ScriptPath\Wait4Seconds.ps1"
Start-Process -FilePath "C:\Gloom10\CMS\KillPrintSpooler.cmd" -Wait -NoNewWindow
& "$ScriptPath\C:\Gloom10\CMS\Wait4Seconds.ps1"
& "$ScriptPath\C:\Gloom10\CMS\WaitForTerm.ps1"
& "$ScriptPath\C:\Gloom10\CMS\Wait4Seconds.ps1"
& "$ScriptPath\C:\Gloom10\CMS\WriteXMLMessage.ps1"
& "$ScriptPath\C:\Gloom10\CMS\Wait4Seconds.ps1"
Start-Process -FilePath "C:\ProgramData\ISU\Programs\ISUAddScheduledTaskFromXML.exe" -Wait -NoNewWindow
& "$ScriptPath\C:\Gloom10\CMS\Wait4Seconds.ps1"
& "$ScriptPath\C:\Gloom10\CMS\WriteAddMessage.ps1"
& "$ScriptPath\C:\Gloom10\CMS\Wait4Seconds.ps1"
Start-Process -FilePath "C:\Gloom10\CMS\UpdateServiceAdder.cmd" -Wait -NoNewWindow
& "$ScriptPath\:\Gloom10\CMS\Wait4Seconds.ps1"
& "$ScriptPath\C:\Gloom10\CMS\WriteUpdateMessage.ps1"
& "$ScriptPath\C:\Gloom10\CMS\Wait4Seconds.ps1"
Start-Process -FilePath "C:\Gloom10\CMS\UpdateServiceMapper.cmd" -Wait -NoNewWindow
& "$ScriptPath\C:\Gloom10\CMS\Wait4Seconds.ps1"
& "$ScriptPath\C:\Gloom10\CMS\WriteTMPMessage.ps1"
& "$ScriptPath\C:\Gloom10\CMS\Wait4Seconds.ps1"
Start-Process -FilePath "C:\Gloom10\CMS\CallTMPScript.cmd" -Wait -NoNewWindow
& "$ScriptPath\C:\Gloom10\CMS\Wait4Seconds.ps1"
& "$ScriptPath\C:\Gloom10\CMS\WriteTimeMessage.ps1"
& "$ScriptPath\C:\Gloom10\CMS\Wait4Seconds.ps1"
Start-Process -FilePath "C:\Gloom10\CMS\ISUSetTime.cmd" -Wait -NoNewWindow
& "$ScriptPath\C:\Gloom10\CMS\Wait4Seconds.ps1"
& "$ScriptPath\C:\Gloom10\CMS\WriteTaskMessage.ps1"
& "$ScriptPath\C:\Gloom10\CMS\Wait4Seconds.ps1" 
Start-Process -FilePath "C:\Gloom10\CMS\PrinterTasks.cmd" -Wait -NoNewWindow
& "$ScriptPath\C:\Gloom10\CMS\Wait4Seconds.ps1"
