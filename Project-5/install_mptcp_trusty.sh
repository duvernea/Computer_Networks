#!/bin/bash
# Script to install MPTCP kernel from the MPTCP apt-get repo
# Instructions from http://multipath-tcp.org/pmwiki.php/Users/AptRepository

# Get key
wget -q -O - http://multipath-tcp.org/mptcp.gpg.key | sudo apt-key add - 
# Add repo
sudo sh -c 'echo "deb http://multipath-tcp.org/repos/apt/debian trusty main" > /etc/apt/sources.list.d/mptcp.list'

# Update:
sudo apt-get update
sudo apt-get install linux-mptcp

echo "Finally, reboot to enjoy a fresh MPTCP kernel, with 'sudo reboot'."
echo "Once rebooted, verify the kernel version with 'uname -a'."
#sudo reboot
