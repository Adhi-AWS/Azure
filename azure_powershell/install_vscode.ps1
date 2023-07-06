# Download and install Visual Studio Code

# Set the URL to the latest Visual Studio Code installer
$url = "https://aka.ms/win32-x64-user-stable"

# Set the path where the installer will be saved
$outfile = "$env:TEMP\VSCodeSetup.exe"

# Download the installer
Invoke-WebRequest -Uri $url -OutFile $outfile

# Install Visual Studio Code
Start-Process -FilePath $outfile -Wait -ArgumentList '/silent'

# Wait for a bit to ensure the installer has finished
Start-Sleep -Seconds 60

# Remove the installer
Remove-Item -Path $outfile -ErrorAction SilentlyContinue

# Open Visual Studio Code
Start-Process -FilePath 'C:\Program Files\VSCode\Code.exe'
