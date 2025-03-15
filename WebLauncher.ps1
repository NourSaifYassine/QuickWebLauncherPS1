# QuickLauncher.ps1

# Add your applications to the array below (without the .exe extension)(if not found try Get-Process)
$array = @("explorer", "msedge", "brave", "code")

function Start-App {
    foreach ($process in $array) {
        try {
            Start-Process $process
        } catch {
            Write-Host "Application '$process' not recognized. Please add it to the script."
        }
    }
}

Start-App