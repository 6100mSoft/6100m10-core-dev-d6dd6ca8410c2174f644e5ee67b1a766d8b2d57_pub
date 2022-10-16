@echo off
cls
ECHO ..........................................................
ECHO   PRESS 1, 2, 3, OR 4 to select your task, or 5 to EXIT.
ECHO ..........................................................
ECHO 1 - Open Tor Browser
ECHO 2 - Open BypassFox
ECHO 3 - Open Normal Firefox
ECHO 4 - Open Waterfox
ECHO 5 - EXIT
REM Above ASCII art by sevenforums.
SET /P integer_data=Type 1, 2, 3, or 4 then press ENTER:
IF %integer_data%==1 GOTO TORB
IF %integer_data%==2 GOTO BYPA
IF %integer_data%==3 GOTO NORM
IF %integer_data%==4 GOTO AQUA
IF %integer_data%==5 GOTO EXITER
:EXITER
exit
echo Error.
goto spammer
:spammer
echo Retrying....
goto exiter
:TORB
start "" "LaunchTorBrowser.cmd"
:BYPA
start "" "C:\Gloom10\BypassFox\Start.exe"
:NORM
start "" "C:\Program Files\Mozilla Firefox\firefox.exe"
:AQUA
start "" "C:\Gloom10\CMS\StartWaterFox.exe"
