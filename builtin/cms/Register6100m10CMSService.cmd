@echo off
echo Registering service....
sc.exe create "6100m10 CMS" binPath= "C:\Gloom10\CMS\StartCMSService.cmd"
if %errorlevel% == 2 echo Could not register service.
if %errorlevel% == 0 echo Service registered successfully.
echo Errorlevel: %errorlevel%
pause
cls
goto exiter
:exiter
exit
goto spammer
:spammer
goto exiter
