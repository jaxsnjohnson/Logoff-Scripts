#!/bin/bash

# Get the hostname
HOSTNAME=$(hostname)

# Get the Wireless MAC Address
WIRELESS_MAC=$(ifconfig en0 | awk '/ether/{print $2}')

# Get the Wired MAC Address
WIRED_MAC=$(ifconfig en1 | awk '/ether/{print $2}')

# Save to file
echo "Hostname: $HOSTNAME, wireless-mac: $WIRELESS_MAC, wired-mac: $WIRED_MAC" >> mac_addresses.txt
