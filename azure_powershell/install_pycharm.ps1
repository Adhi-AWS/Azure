# Download PyCharm installer
$installerUrl = "https://download.jetbrains.com/python/pycharm-community-2021.1.3.exe"
$installerPath = "$env:TEMP\pycharm-installer.exe"
Invoke-WebRequest -Uri $installerUrl -OutFile $installerPath

# Install PyCharm
Start-Process -FilePath $installerPath -ArgumentList "/S", "/D=C:\Program Files\PyCharm" -Wait

# Clean up the installer
Remove-Item -Path $installerPath
