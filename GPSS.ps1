# GPSS - Great PowerShell Script. Mostly for work.

Write-Host "Please select one of the following options:"
Write-Host "    L = Launch start of day stuff"
Write-Host "    N = Delete downloads, run updates, run defender, and then shutdown"
Write-Host "    DDL = Delete Downloads"
Write-Host "    RD1 = Run Defender Scan Type One (Quick)"
Write-Host "    RD2 = Run Defender Scan Type Two (Full)"
Write-Host "    RD3 = Run Defender Scan Type Three (Pick a place to run a full scann)"
Write-Host "    RU = Run updates"
Write-Host "    SDN = Shutdown NOW!"
Write-Host "    RBN = Reboot NOW!"
$option = Read-Host "Enter your option:"

# Normal Operation
if ($option -eq "N") {
    # Delete downloads
    Write-Host "Deleting downloads..."
    Remove-Item "$([Environment]::GetFolderPath('MyDocuments'))\..\Downloads\*" -Recurse -Force
    #Run updates
    Write-Host "Running updates..."
    winget update
    Write-Host "Upgrading packages..."
    winget upgrade --all
    # Running Windows Defender scan
    Write-Host "Running Windows Defender scan..."
    Start-MpScan -ScanType QuickScan
    # Wait for scan to complete
    Write-Host "Waiting for scan to complete..."
    while ((Get-MpScanProgress).ScanInProgress -eq $true) {
        Start-Sleep -Seconds 10
    }
    # Prompt user to press any key to shut down
    Write-Host "Press any key to shut down..."
    $null = $host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
    Write-Host "Shutting down now..."
    Stop-Computer -Force
}

# Delete what inside the downloads folder
if ($option -eq "DDL") {
    Write-Host "Deleting downloads..."
    Remove-Item "$([Environment]::GetFolderPath('MyDocuments'))\..\Downloads\*" -Recurse -Force
}

# Run Windows Defender 1 (quick scan)
if ($option -eq "RD1") {
    Write-Host "Running Windows Defender scan..."
    Start-MpScan -ScanType 1
}

# Run Windows Defender 2 (whole computer)
if ($option -eq "RD2") {
    Write-Host "Running Windows Defender scan..."
    Start-MpScan -ScanType 2
}

# Run Windows Defender 3 (a spasific file)
if ($option -eq "RD3") {

    Write-Host "Running Windows Defender scan..."
    Start-MpScan -ScanType 3
}

# Run Winget Updates
if ($option -eq "RU") {
    Write-Host "Running updates..."
    winget update
    Write-Host "Upgrading packages..."
    winget upgrade --all
}

# Shut the computer down RN
if ($option -eq "SDN") {
    Write-Host "Shutting down now..."
    Stop-Computer -Force
}

# Reboot the computer RN 
if ($option -eq "RBN") {
    Write-Host "Rebooting computer now..."
    Restart-Computer -Force
}
