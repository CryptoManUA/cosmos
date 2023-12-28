#!/bin/bash

function logo() {
    bash <(curl -s https://raw.githubusercontent.com/CPITMschool/Scripts/main/logo.sh)
}

function port_menu() {
	bash <(curl -s https://raw.githubusercontent.com/CryptoManUA/cosmos/main/port_menu.sh)

}

 function create_menu() {
 	bash <(curl -s https://raw.githubusercontent.com/CryptoManUA/cosmos/main/create_validator.sh)
}

	
function main_menu() {
    while true; do
        clear
        logo
        echo -e "\e[1m\e[35mОберіть дію, що ви хочете зробити:"
        echo -e "\e[1m\e[33m1\e[0m - Створити валідатора"
        echo -e "\e[1m\e[33m2\e[0m - Редагувати валідатора"
        echo -e "\e[1m\e[33m3\e[0m - Переглянути порти"
	echo -e "\e[1m\e[33m4\e[0m - Заміна портів"
	echo -e "\e[1m\e[33m5\e[0m - Вийти"
        read -p "Зробіть ваш вибір, та введіть число: " choice
        case "$choice" in
            1)
                create_menu
                ;;
            2)
                edit_validator
                ;;
            3)
		clear
		netstat -tuln
                ;;
	    4)
		port_menu
		;;
            5)
                echo "Ви вийшли з меню."
                break
                ;;
            *)
                echo -e "\e[31mНекоректний вибір. Спробуйте ще раз.\e[0m"
                ;;
        esac
        read -p "Натисніть Enter, щоб повернутись до головного меню..."
    done
}

	main_menu
