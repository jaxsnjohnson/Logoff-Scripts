# Jax's Scripts Repository

[![Made for Bash](https://img.shields.io/badge/Made%20with-Bash-1f425f.svg)](https://www.gnu.org/software/bash/)
[![Made for Python](https://img.shields.io/badge/Made%20with-Python-1f425f.svg)](https://www.python.org/)
[![Made for PowerShell](https://img.shields.io/badge/Made%20with-PowerShell-1f425f.svg)](https://docs.microsoft.com/en-us/powershell/)
[![Repo Size](https://img.shields.io/github/repo-size/jaxsnjohnson/Scripts.svg)](https://github.com/jaxsnjohnson/Scripts)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is a collection of general scripts, designed to streamline your day-to-day tasks, and increase your productivity. It includes a mix of Bash files for Windows, Mac, and Linux, PowerShell scripts, and Python scripts, all crafted for small one-off projects to automate tasks or simplify a complex process.


## FAQ

#### How do I use these scripts?

Most scripts are standalone, and can be run in their corresponding environments. For example, bash scripts can be run in the terminal on Mac or Linux, or using Git Bash on Windows. Python scripts can be run using Python 3.

#### Do I need to install any software to run these scripts?

Generally, you'll need the relevant software environment installed (e.g., Python for Python scripts). Any other requirements will be listed in the script comments.

## Scripts

### GPSS.ps1
Greatest PowerShell Script is a general scruipt for helping with simple day to day automations such as keeping winget up to date and running deffender.

### IP-List-To-Hostnames.ps1
This was made for work where we use to put in the IP address manually, still good to have those IP address on hand for troubleshooting, but were given full hostnames for the network.  This script will convert the IP addresses to the hostname and save them in excel format.  I was unable to get excel to accept the data as clickable but if you click on each one it will update. 

### macOS-logoff.sh
This is for logging off on macos and running updates with homebrew.  It has not been updated in awhile, while it might work the newer M-series Macs make it so shutting down is not needed as often.

### pop-logoff.sh
THis was for my old work laptop that had Pop!_OS installed.  Linux is best ran up to date, when not on an LTS stack, so this script helps keep the package manager happy when powering down.

### updates.sh
This will only work for Pop!_OS and will update and keep the package manager happy.  Please note it will not upgrade you to the next vertion of the software just within its release.

## Acknowledgements

TBD

## License

This project is licensed under the [MIT License](https://choosealicense.com/licenses/mit/).
