@echo off
goto clearer
:clearer
cls
goto launcher
:launcher
ECHO.
ECHO ...............................................
ECHO  PRESS 1-9 to select your task, or 0 to EXIT.
ECHO ...............................................
ECHO.
ECHO 1 - Start 6100m10 CMS
ECHO 2 - Stop 6100m10 CMS
ECHO 3 - Start SonarQube Enterprise
ECHO 4 - Start Checkmarx Enterprise
ECHO 5 - Start Acunetix Premium
ECHO 6 - Find out what is 6100m10 CMS!
ECHO 7 - Start GoPrint
ECHO 8 - Start Network Checker
ECHO 9 - Add a Internet Printer
ECHO 0 - EXIT
ECHO.
SET /P data=Type 1, 2, 3, 4, 5, 6, 7, 8, 9, or 0 to EXIT then press ENTER:
IF %data%==1 GOTO TASK1
IF %data%==2 GOTO TASK2
IF %data%==3 GOTO TASK3
IF %data%==4 GOTO TASK4
IF %data%==5 GOTO TASK5
IF %data%==6 GOTO TASK6
IF %data%==7 GOTO TASK7
IF %data%==8 GOTO TASK8
IF %data%==9 GOTO TASK9
IF %data%==0 GOTO EXITER
:TASK1
call :admingrabber
net start "6100m10 CMS"
pause
goto clearer
:TASK2
call :admingrabber
net stop "6100m10 CMS"
pause
goto clearer
:TASK3
call :admingrabber
Powershell.exe -executionpolicy remotesigned -File StartCheckmarx.ps1
pause
goto clearer
:TASK4
call :admingrabber
Powershell.exe -executionpolicy remotesigned -File StartSonarqube.ps1
pause
goto clearer
:TASK5
call :admingrabber
Powershell.exe -executionpolicy remotesigned -File StartAcunetix.ps1
pause
goto clearer
:TASK6
Powershell.exe -executionpolicy remotesigned -File "WhatIs6100m10CMS.ps1"
pause
goto clearer
:TASK7
call "C:\ProgramData\ISU\misc_scripts\StartGoPrint.cmd"
pause
goto clearer
:TASK8
call "C:\ProgramData\ISU\Programs\NetworkValidationTool.cmd"
pause
goto clearer
:TASK9
call "C:\ProgramData\ISU\print_scripts\addPrinter.cmd"
pause
goto clearer
:EXITER
pause
cls
exit
echo Error.
goto spammer
:spammer
goto exiter
:admingrabber
    IF "%PROCESSOR_ARCHITECTURE%" EQU "amd64" (
>nul 2>&1 "%SYSTEMROOT%\SysWOW64\cacls.exe" "%SYSTEMROOT%\SysWOW64\config\system"
) ELSE (>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system")
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )
:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params= %*
    echo UAC.ShellExecute "cmd.exe", "/c ""%~s0"" %params:"=""%", "", "runas", 1 >> "%temp%\getadmin.vbs"
    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B
:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
