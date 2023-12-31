#!/bin/bash

function logo() {
    bash <(curl -s https://raw.githubusercontent.com/CryptoManUA/cosmos/main/logo.sh)
}
	

function printGreen {
    echo -e "\e[1m\e[32m${1}\e[0m"
}

function printRed {
    echo -e "\e[1m\e[31m${1}\e[0m"
	
}
function printAddition {
    echo -e "\e[4m${1}\e[0m"
	
}
 function menu_Lava() {
 	bash <(curl -s https://raw.githubusercontent.com/CryptoManUA/cosmos/main/Lava/menu_Lava.sh)
}

 function menu_Dymension() {
 	bash <(curl -s https://raw.githubusercontent.com/CryptoManUA/cosmos/main/Lava/menu_Dymension.sh)
}
 function menu_Babylon() {
 	bash <(curl -s https://raw.githubusercontent.com/CryptoManUA/cosmos/main/Lava/menu_Babylon.sh)
}
 function menu_ZetaChain() {
 	bash <(curl -s https://raw.githubusercontent.com/CryptoManUA/cosmos/main/Lava/menu_ZetaChain.sh)
}


function main_menu {
    while true; do
        logo 
        printGreen "▼ Оберіть ноду в мережі Cosmos для взаїмодії ▼"
		echo ""
		echo -e "\e[1m\e[35m[1]\e[0m  - Lava Network"
		echo -e "\e[1m\e[35m[2]\e[0m  - Dymension"
		echo -e "\e[1m\e[35m[3]\e[0m  - Babylon"
		echo -e "\e[1m\e[35m[4]\e[0m  - ZetaChain"
		echo -e "\e[1m\e[35m[5]\e[0m  - Вийти з меню"
		read -p "Зробіть ваш вибір, та введіть номер пункту ► " choice
        case "$choice" in 
		1)	
			printGreen "▼ Lava Network ▼" && sleep 1
			clear
			echo ""
            		menu_Lava
            ;;
		2)	
			printGreen "▼ Dymension ▼" && sleep 1
			clear
			echo ""
            		menu_Dymension
            ;;
		3)	
			printGreen "▼ Babylon ▼" && sleep 1
			clear
			echo ""
           		menu_Babylon
            ;;
		4)	
			printGreen "▼ ZetaChain ▼" && sleep 1
			clear
			echo ""
            		menu_ZetaChain
            ;;	
		5)
			echo "Ви вийшли з меню." 
           		break
            ;;
		*)	
			echo
			printRed "Неправильно вказаний пункт, спробуйте ще раз:"
			;;
        esac
		read -p "Натисніть Enter, щоб повернутись до головного меню..."
	done	
}

main_menu
