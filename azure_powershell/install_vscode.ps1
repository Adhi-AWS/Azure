$downloadUrl = "https://code.visualstudio.com/sha/download?build=stable&os=win32-x64-user"
$installDir = "C:\Program Files\VSCode"
$arguments = "/VERYSILENT /MERGETASKS=!runcode"

$installerPath = "$env:TEMP\VSCodeSetup.exe"
Invoke-WebRequest -Uri $downloadUrl -OutFile $installerPath

$installCommand = "$arguments" + ' /DIR="' + $installDir + '"'
Start-Process -FilePath $installerPath -ArgumentList $installCommand -Wait

Write-Host "Visual Studio Code has been installed."


























