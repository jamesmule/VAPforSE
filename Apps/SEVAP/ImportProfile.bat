@echo off

IF "%~1"=="" (
	GOTO :EOF
)

echo Copying .vax profile...
copy "%~1" "%~dp0\..\Import\%~nx1" >nul

echo Restarting VoiceAttack...
:wait
tasklist|find /i "VoiceAttack" >nul
IF "%ERRORLEVEL%"=="1" (
	start "" /D "%~dp0\..\.." "%~dp0\..\..\VoiceAttack.exe"
	GOTO :EOF
)
GOTO :wait