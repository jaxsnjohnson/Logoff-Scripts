# Ask the user for the input file path.
Write-Host "Please enter the path to the input file:"
$inputFile = Read-Host

# Ask the user for the output file path.
Write-Host "Please enter the desired path for the output file:"
$outputFile = Read-Host

# Ask the user if they want the output to be formatted as hyperlinks.
Write-Host "Would you like the output to be formatted as hyperlinks for excel? (y/n):"
$useHyperlinks = (Read-Host).ToLower() -eq 'y'

# Function to clear the DNS Cache to prevent any stale or outdated resolutions.
function Clear-DnsCache {
    ipconfig /flushdns
}

# Clear the DNS cache before running.
Clear-DnsCache

# Create an empty array to hold the output before writing.
$output = @()

# Process each line in the input file.
Get-Content $inputFile | ForEach-Object {
    # Obtain the hostname for the current IP address
    try {
        $hostname = [System.Net.Dns]::GetHostEntry($_).HostName
        if ($useHyperlinks) {
            # Get the subdomain
            $subdomain = $hostname.Split('.')[0]
            # Format the hyperlink
            $hyperlink = '=HYPERLINK("http://' + $hostname + '", "' + $subdomain + '")'
            $output += $hyperlink
        } else {
            $output += $hostname
        }
    } catch {
        $output += "N/A"
    }
}

# Write the output to the output file
$output | Out-File $outputFile
