#!/bin/bash

# Install dependencies for Termux
function termux_install_deps(){
	clear
	echo -e "\e[1m\e[93mInstalling Dependencies\e[0m"
	echo -e "\e[1m\e[1m"
		pkg install nmap toilet python php curl wget git ruby -y && gem install lolcat
	chmod +x pisowifi-ssh.sh
	clear
	echo "Installation is Done" | toilet -f smbraille | lolcat
	echo ""
	echo -e "\e[1m\e[93m[*] Execute using the command 'bash pisowifi-ssh-bruter.sh'"
	echo ""
}

# Install dependencies for Linux
function linux_install_deps(){
	clear
	echo -e "\e[1m\e[93mInstalling Dependencies\e[0m"
	echo -e "\e[1m\e[1m"
	apt install nmap toilet python php curl wget git ruby -y && gem install lolcat
	chmod +x pisowifi-ssh.sh
	clear
	echo "Installation is Done" | toilet -f smbraille | lolcat
	echo ""
	echo -e "\e[1m\e[93m[*] Execute using the command 'bash pisowifi-ssh-bruter.sh'"
	echo ""
}

# Main function
function main(){
	clear
	echo -e "\e[1m\e[93mChoose Installation Type"
	echo ""
	echo -e "[01] Install in Termux"
	echo -e "[02] Install in Linux"
	echo -e "[00] Cancel"
	echo ""
	read -p "~> " ins
	
	if [[ $ins -eq 1 || $ins -eq 01 ]]
	then
		termux_install_deps
	elif [[ $ins -eq 2 || $ins -eq 02 ]]
	then
		linux_install_deps
	elif [[ $ins -eq 0 || $ins -eq 00 ]]
	then
		clear && exit
	else
		echo ""
		echo -e "\e[1m\e[91m[!] Invalid input, Please try again...\e[0m"
		exit
	fi
}

# Arguments
main
