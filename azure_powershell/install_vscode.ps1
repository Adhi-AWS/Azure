# Download VS Code installer
$installerUrl = "https://aka.ms/win32-x64-user-stable"
$installerPath = "$env:TEMP\vscode-installer.exe"
Invoke-WebRequest -Uri $installerUrl -OutFile $installerPath

# Start the installer silently
$process = Start-Process -FilePath $installerPath -ArgumentList "/silent" -PassThru
$process.WaitForExit()

# Clean up the installer
Remove-Item -Path $installerPath

