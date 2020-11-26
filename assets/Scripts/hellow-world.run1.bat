REM ***************************************************************************
REM The Script hellow-world.run1.bat elevates rights 
REM of running script hellow-world.bat
REM
REM It Creates Elevating.vbs temprorary script for Elevation
REM and Delete it after Running
REM ****************************************************************************

@echo off
ver |>NUL find /v "5." && if "%~1"=="" (
  Echo CreateObject^("Shell.Application"^).ShellExecute WScript.Arguments^(0^),"1","","runas",1 >"%~dp0Elevating.vbs"
  cscript.exe //nologo "%~dp0Elevating.vbs" "%~f0"& goto :eof
)
 
%SystemRoot%\system32\cmd.exe /c %TEMP%\hellow-world.bat
del "%~dp0Elevating.vbs"
