#!/bin/bash

clear
echo "Installing Dependencies" | toilet -f smbraille
pkg install nmap toilet python php curl wget git ruby -y && gem install lolcat
chmod +x pisowifi-ssh.sh
clear
echo "Installation is Done" | toilet -f smbraille
echo ""
echo "Execute using the command 'bash pisowifi-ssh-bruter.sh'"
