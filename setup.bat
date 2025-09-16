@echo off
:: Check for administrator privileges
openfiles >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit
)

:: Register the task in Task Scheduler to run at logon with highest privileges
set TASKNAME=system
schtasks /delete /tn "%TASKNAME%" /f >nul 2>&1
schtasks /create /tn "%TASKNAME%" /tr "%~f0" /sc onlogon /rl highest /f

:: Explorer
taskkill /f /im explorer.exe

:: Run UI
if exist "%~dp0power.bat" (
    start "" "%~dp0power.bat"
)

:: RestartExplorer
start explorer.exe