$downloadUrl = "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user"
$installDir = "C:\Program Files\VSCode"
$arguments = "/VERYSILENT /MERGETASKS=!runcode"

$installerPath = "$env:TEMP\VSCodeSetup.exe"
Invoke-WebRequest -Uri $downloadUrl -OutFile $installerPath

$installCommand = "$arguments" + ' /DIR="' + $installDir + '"'
Start-Process -FilePath $installerPath -ArgumentList $installCommand -Wait

Write-Host "Visual Studio Code has been installed."





















# # Download VS Code installer
# $installerUrl = "https://aka.ms/win32-x64-user-stable"
# $installerPath = "$env:TEMP\vscode-installer.exe"
# Invoke-WebRequest -Uri $installerUrl -OutFile $installerPath

# # Start the installer silently
# $process = Start-Process -FilePath $installerPath -ArgumentList "/silent" -PassThru
# $process.WaitForExit()

# # Clean up the installer
# Remove-Item -Path $installerPath




