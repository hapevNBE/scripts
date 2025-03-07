# Intune Autopilot Online Registration Script

# Use from OOBE: shift+f10 for cmd; powershell $(iwr -useb https://raw.githubusercontent.com/hapevNBE/scripts/refs/heads/main/powershell/intune-onlineregistration.ps1).Content

# Enable NuGet Provider
Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force

# Install Script
Install-Script -Name Get-WindowsAutopilotInfo -Force

# Set Execution Policy
Set-ExecutionPolicy -Scope Process -ExecutionPolicy RemoteSigned

# Run online registration
Get-WindowsAutopilotInfo -Online

# Sleep and Reboot
Write-Host "Rebooting in 10 Minutes..."
Sleep 600
Restart-Computer
