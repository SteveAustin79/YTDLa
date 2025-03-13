Write-Host ""
Write-Host "Welcome to the YTDLa Windows 10/11 Installation Script! - PART 1" -ForegroundColor Cyan
Write-Host ""
Write-Host "This script will start the Python installer and adds"
Write-Host "environment variables for GIT and FFMPEG in a few moments."
Write-Host ""
Write-Host "Estimated duration: 2 Minutes"
Write-Host ""
Read-Host "Press ENTER to continue..."

$exePath = "assets\python-3.13.2-amd64.exe"

Write-Host "DON'T TOUCH YOUR MOUSE OR KEYBOARD DURING INSTALLATION!" -ForegroundColor Red

# Start the installer
Start-Process -FilePath $exePath

# Wait a few seconds to ensure the window appears
Start-Sleep -Seconds 7

# Create WScript Shell object
$wshell = New-Object -ComObject WScript.Shell

$wshell.SendKeys("{TAB}")
Start-Sleep -Seconds 1
$wshell.SendKeys("{TAB}")
Start-Sleep -Seconds 1
$wshell.SendKeys("{TAB}")
Start-Sleep -Seconds 1
$wshell.SendKeys(" ")
Start-Sleep -Seconds 1
$wshell.SendKeys("{TAB}")
Start-Sleep -Seconds 1
$wshell.SendKeys("{TAB}")
Start-Sleep -Seconds 1
$wshell.SendKeys("{TAB}")
Start-Sleep -Seconds 1
$wshell.SendKeys("{ENTER}")

Start-Sleep -Seconds 75

$wshell.SendKeys("{TAB}")
Start-Sleep -Seconds 1
$wshell.SendKeys("{ENTER}")

Write-Host ""
Write-Host "This script will now add Environment Variables for GIT and FFMPEG." -ForegroundColor Cyan

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Definition
$gitPath = Join-Path -Path $scriptDir -ChildPath "assets\PortableGit\cmd"
$ffmpegPath = Join-Path -Path $scriptDir -ChildPath "assets\ffmpeg-master-latest-win64-gpl\bin"
$NewPaths = "$gitPath;$ffmpegPath"

$CurrentPath = [System.Environment]::GetEnvironmentVariable("Path", "User")

# Check if path already exists
if ($CurrentPath -notlike "*$NewPaths*") {
    $UpdatedPath = "$CurrentPath;$NewPaths"
    [System.Environment]::SetEnvironmentVariable("Path", $UpdatedPath, "User")
    Write-Host ""
    Write-Host "Path added to User PATH. Restart your shell to apply changes."
} else {
    Write-Host ""
    Write-Host "Path already exists in User PATH."
}

Start-Sleep -Seconds 1

Start-Process -NoNewWindow -Wait -FilePath "python" -ArgumentList "-m venv ../venv"

Write-Host ""
Write-Host "Installation completed!"
Write-Host "Start now Setup2.ps script (right click - run with PowerShell)."
Read-Host "Press ENTER to close this window..."
