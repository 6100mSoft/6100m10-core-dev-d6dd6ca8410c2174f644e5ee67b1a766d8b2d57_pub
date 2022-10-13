@echo off
goto startup
:startup
cls
title 6100m Batchfile Initalizer v1.5 is running....
goto initalizer
:initalizer
setlocal enabledelayedexpansion
cls
set Counter=1
cls
for /f %%x in (paths.ans) do (
  set "Line_!Counter!=%%x"
  cls
  set /a Counter+=1
  cls
)
set /a NumLines=Counter - 1
cls
goto mainfunc
:mainfunc
title 6100m10 Game Launcher v0.7 is turning on....
type ojas.ans
type data1.ans
title 6100m10 Game Launcher has turned on!
timeout 5
title 6100m10 Game Launcher v0.7
set /p strdata1=What do you want to do:
IF %strdata1%==1 GOTO WiiGames
IF %strdata1%==2 GOTO PCGames
IF %strdata1%==3 GOTO EXITER
IF %strdata1%==4 GOTO VERSION
:VERSION
echo ======================
echo Current version is
echo the following
echo |
echo v
echo v0.1
pause
cls
goto startup
:exiter
exit
echo An error occured.
goto retrier
:retrier
exit
echo Another error occureed.
goto exiter
:PCGames
cls
type data2.ans
set /p strdata2=What do you want to play:
cls
IF %strdata2%==0 GOTO PC_00
IF %strdata2%==1 GOTO PC_01
IF %strdata2%==2 GOTO PC_02
IF %strdata2%==3 GOTO PC_03
IF %strdata2%==4 GOTO PC_04
IF %strdata2%==5 GOTO PC_05
IF %strdata2%==6 GOTO PC_06
IF %strdata2%==7 GOTO PC_07
IF %strdata2%==8 GOTO PC_08
IF %strdata2%==9 GOTO NEXTPAGE_1
:NEXTPAGE_1
cls
type data3.ans
set /p strdata3=What do you want to play:
cls
IF %strdata3%==0 GOTO PC_10
IF %strdata3%==1 GOTO PC_11
IF %strdata3%==2 GOTO PC_12
IF %strdata3%==3 GOTO PC_13
IF %strdata3%==4 GOTO PC_14
IF %strdata3%==5 GOTO PC_15
IF %strdata3%==6 GOTO PC_16
IF %strdata3%==7 GOTO PC_17
IF %strdata3%==8 GOTO PC_18
IF %strdata2%==9 GOTO PCGAMES
:WiiGames
cls
type data4.ans
set /p strdata4=What do you want to play:
cls
IF %strdata4%==0 GOTO WII_00
IF %strdata4%==1 GOTO WII_01
IF %strdata4%==2 GOTO WII_02
IF %strdata4%==3 GOTO WII_03
IF %strdata4%==4 GOTO WII_04
IF %strdata4%==5 GOTO WII_05
IF %strdata4%==6 GOTO WII_06
IF %strdata4%==7 GOTO WII_07
IF %strdata4%==8 GOTO WII_08
IF %strdata4%==9 GOTO NEXTPAGE_2
:NEXTPAGE_2
cls
type data5.ans
set /p strdata5=What do you want to play:
cls
IF %strdata4%==0 GOTO WII_10
IF %strdata4%==1 GOTO WII_11
IF %strdata4%==2 GOTO WII_12
IF %strdata4%==3 GOTO WII_13
IF %strdata4%==4 GOTO WII_14
IF %strdata4%==5 GOTO WII_15
IF %strdata4%==6 GOTO WII_16
IF %strdata4%==7 GOTO WII_17
IF %strdata4%==8 GOTO WII_18
IF %strdata4%==9 GOTO WiiGames
:PC_00
cls
type game0.ans
start "" "%Line_0%"
goto startup
:PC_01
cls
type game1.ans
start "" "%Line_1%"
goto startup
:PC_02
cls
type game2.ans
start "" "%Line_2%"
goto startup
:PC_03
cls
type game3.ans
start "" "%Line_3%"
goto startup
:PC_04
cls
type game4.ans
start "" "%Line_4%"
goto startup
:PC_05
cls
type game5.ans
start "" "%Line_5%"
goto startup
:PC_06
cls
type game6.ans
start "" "%Line_6%"
goto startup
:PC_07
cls
type game7.ans
start "" "%Line_7%"
goto startup
:PC_08
cls
type game8.ans
start "" "%Line_8%"
goto startup
:PC_09
cls
type game9.ans
start "" "%Line_9%"
goto startup
:PC_10
cls
type game10.ans
start "" "%Line_10%"
goto startup
:PC_11
cls
type game11.ans
start "" "%Line_11%"
goto startup
:PC_12
cls
type game12.ans
start "" "%Line_12%"
goto startup
:PC_13
cls
type game13.ans
start "" "%Line_13%"
goto startup
:PC_14
cls
type game14.ans
start "" "%Line_14%"
goto startup
:PC_15
cls
type game15.ans
start "" "%Line_15%"
goto startup
:PC_16
cls
type game16.ans
start "" "%Line_16%"
goto startup
:PC_17
cls
type game17.ans
start "" "%Line_17%"
goto startup
:PC_18
cls
type game18.ans
start "" "%Line_18%"
goto startup
:WII_00
cls
type game19.ans
start "" "%Line_19%"
goto startup
:WII_01
cls
type game20.ans
start "" "%Line_20%"
goto startup
:WII_02
cls
type game21.ans
start "" "%Line_21%"
goto startup
:WII_03
cls
type game22.ans
start "" "%Line_22%"
goto startup
:WII_04
cls
type game23.ans
start "" "%Line_23%"
goto startup
:WII_05
cls
type game24.ans
start "" "%Line_24%"
goto startup
:WII_06
cls
type game25.ans
start "" "%Line_25%"
goto startup
:WII_07
cls
type game26.ans
start "" "%Line_26%"
goto startup
:WII_08
cls
type game27.ans
start "" "%Line_27%"
goto startup
:WII_09
cls
type game28.ans
start "" "%Line_28%"
goto startup
:WII_10
cls
type game29.ans
start "" "%Line_29%"
goto startup
:WII_11
cls
type game30.ans
start "" "%Line_30%"
goto startup
:WII_12
cls
type game31.ans
start "" "%Line_31%"
goto startup
:WII_13
cls
type game32.ans
start "" "%Line_32%"
goto startup
:WII_14
cls
type game33.ans
start "" "%Line_33%"
goto startup
:WII_15
cls
type game34.ans
start "" "%Line_34%"
goto startup
:WII_16
cls
type game35.ans
start "" "%Line_35%"
goto startup
:WII_17
cls
type game36.ans
start "" "%Line_36%"
goto startup
:WII_18
cls
type game37.ans
start "" "%Line_37%"
goto startup
