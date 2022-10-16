@echo on
REM Thanks to https://stackoverflow.com/questions/12708098/batch-file-discovered-resolution
REM and also thanks to https://stackoverflow.com/questions/8383317/how-would-i-set-each-line-of-a-text-document-to-separate-variables-using-batch
REM and https://stackoverflow.com/questions/31919386/read-txt-line-by-line-into-batch-variables
REM This is required.
setlocal enabledelayedexpansion

REM We check if the resolution from the custom shell is set
IF EXIST C:\Gloom10\resolution.ini GOTO prepare
:prepare
REM If it is, we go here, and set a inital level of 0, for iteration purposes.
set count=0

REM Now we set numerized variables
for /f "tokens=*" %%x in (C:\Gloom10\resolution.ini) do (
	REM Every variable is incremented by one, the whole set starts aat 1
	set /a count+=1
	REM Numerically set al the variables
	set var[!count!]=%%x
)
REM If algorthim one reads nothing, we check and verify that by checking var[1]
IF [%var[1]%] == "" (
  GOTO OTHERCHECK
) ELSE (
   REM If not, we just set x and y as normal
   call "C:\ProgramData\ISU\Programs\QRes.exe" /X:%var[1]% /Y:%var[2]% /c 24
)
:OTHERCHECK
REM If it is indeed verified that it didnt read anything, we try a different way to
IF [%var[2]%] == "" GOTO RETRY
:RETRY
REM We set a counter like we did with the other algorthim
set CountMii=1
REM We iterate over the text file, reading it line by line into invidiual variables
for /f %%x in (C:\Gloom10\resolution.ini) do (
  set "Line_!CountMii!=%%x"
  set /a CountMii+=1
)
REM We set the number of lines, just for reference
set /a NumLines=Counter - 1
REM If it read nothing, we just set a default and common resolution, but first we verify it
IF DEFINED Line_1 call "C:\ProgramData\ISU\Programs\QRes.exe" /x:%Line_1% /y:%Line_2% ELSE GOTO ERROR1
:ERROR1
REM If it indeed is verified Algorthim 2 didn't read anything, we just set the default values
IF DEFINED Line_2 GOTO :EOF ELSE GOTO ERROR2
:ERROR2
REM First we clear both X and Yfrom previous runs
set x_reso=
set y_reso=
REM First we pull the DefaultX value
for /F "tokens=2 delims=:" %%a in ('findstr "DefaultX" C:\Gloom10\defaults.ini') do set x_reso=%%a
REM Then the defaulty value
for /F "tokens=2 delims=:" %%a in ('findstr "DefaultY" C:\Gloom10\defaults.ini') do set y_reso=%%a
REM Then we pipe them into QRes
call "C:\ProgramData\ISU\Programs\QRes.exe" /x:%x_reso% /y:%y_reso%
