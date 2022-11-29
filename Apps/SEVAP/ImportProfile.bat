@echo off

IF "%~1"=="" (
	GOTO :EOF
)

echo Copying .vax profile...
move /Y "%~1" "%~dp0\..\Import" >nul

echo Restarting VoiceAttack...
:wait
tasklist|find /i "VoiceAttack" >nul
IF "%ERRORLEVEL%"=="1" (
	start "" /D "%~dp0\..\.." "%~dp0\..\..\VoiceAttack.exe"
	GOTO :EOF
)
GOTO :wait