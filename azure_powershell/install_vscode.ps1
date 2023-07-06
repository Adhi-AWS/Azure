# Download VS Code installer
$installerUrl = "https://aka.ms/win32-x64-user-stable"
$installerPath = "$env:TEMP\vscode-installer.exe"
Invoke-WebRequest -Uri $installerUrl -OutFile $installerPath

# Install VS Code
Start-Process -FilePath $installerPath -ArgumentList "/verysilent" -Wait

# Clean up the installer
Remove-Item -Path $installerPath
