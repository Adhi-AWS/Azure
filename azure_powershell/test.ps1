if (-not (Get-WmiObject -Query "Select * from Win32_Product where (Name like 'Microsoft Visual Studio Code')")) {
    $url = "https://update.code.visualstudio.com/latest/win32-x64/stable"
    $output = "$env:TEMP\vscode-setup.exe"
    Invoke-WebRequest -Uri $url -OutFile $output
    Start-Process -FilePath $output -Args "/silent /mergetasks=!runcode" -Verb RunAs -Wait
    Remove-Item -Path $output -Force -ErrorAction SilentlyContinue
} else {
    Write-Host "Visual Studio Code is already installed."
}
