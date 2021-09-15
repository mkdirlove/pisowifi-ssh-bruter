#!/bin/bash

clear
echo -e "\e[1m\e[93mInstalling Dependencies\e[0m"
echo ""
pkg install nmap toilet python php curl wget git ruby -y && gem install lolcat
chmod +x pisowifi-ssh.sh
clear
echo "Installation is Done" | toilet -f smbraille | lolcat
echo ""
echo -e "\e[1m\e[93m[*] Execute using the command 'bash pisowifi-ssh-bruter.sh'"
