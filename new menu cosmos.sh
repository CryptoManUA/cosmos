#!/bin/bash

function logo() {
    bash <(curl -s https://raw.githubusercontent.com/CryptoManUA/cosmos/main/logo.sh)
}
	

function printGreen {
    echo -e "\e[1m\e[32m${1}\e[37m"
}

function printRed {
    echo -e "\e[1m\e[31m${1}\e[37m"
	
}

 function create_validator() {
 	bash <(curl -s https://raw.githubusercontent.com/CryptoManUA/cosmos/main/create_validator.sh)
}

 function edit_validator() {
 	bash <(curl -s https://raw.githubusercontent.com/CryptoManUA/cosmos/main/edit_validator.sh)
}	

function port_menu() {
	bash <(curl -s https://raw.githubusercontent.com/CryptoManUA/cosmos/main/port_menu.sh)
}

function install_Lava() {
	bash <(curl -s https://raw.githubusercontent.com/CPITMschool/Scripts/main/Lava/Install-Lava.sh)
}
function update_Lava() {
	bash <(curl -s https://raw.githubusercontent.com/CPITMschool/Scripts/main/Lava/Update-Lava.sh)
}
	
function main_menu {
    while true; do
        logo 
        printGreen "Оберіть дію яку хочете виконати Lava Network"
		echo -e "\e[1m\e[35m[1]\e[0m  - Встановлення ноди Lava"
		echo -e "\e[1m\e[35m[2]\e[0m  - Оновлення ноди Lava"
		echo -e "\e[1m\e[35m[3]\e[0m  - Видалення ноди Lava"
		echo -e "\e[1m\e[35m[4]\e[0m  - Створення гаманця"
		echo -e "\e[1m\e[35m[5]\e[0m  - Відновлення гаманця"
		echo -e "\e[1m\e[35m[6]\e[0m  - Створення валідатора"
		echo -e "\e[1m\e[35m[7]\e[0m  - Редагування валідатора"
		echo -e "\e[1m\e[35m[8]\e[0m  - Інформація про гаманець та баланс"
		echo -e "\e[1m\e[35m[9]\e[0m  - Делегування токенів собі"
		echo -e "\e[1m\e[35m[10]\e[0m - Виведення валідатора із в'язниці"
		echo -e "\e[1m\e[35m[11]\e[0m - Інформаціця про валідатора"
		echo -e "\e[1m\e[35m[12]\e[0m - Журнал логів"
		echo -e "\e[1m\e[35m[13]\e[0m - Статус ноди та синхронізація"
		echo -e "\e[1m\e[35m[14]\e[0m - Дізнатись верхній блок вашої ноди"
		echo -e "\e[1m\e[35m[15]\e[0m - Перевірка версії ноди"
		echo -e "\e[1m\e[35m[16]\e[0m - Заміна портів ноди"
		echo -e "\e[1m\e[35m[17]\e[0m - Старт ноди"
		echo -e "\e[1m\e[35m[18]\e[0m - Стоп ноди"
		echo -e "\e[1m\e[35m[19]\e[0m - Рестарт ноди"
		echo -e "\e[1m\e[35m[20]\e[0m - Вийти з меню"
		read -p "Введіть номер пункту ► " choiсe
		case "$choice" in 
		1)
			printGreen "↓ Встановлення ноди Lava ↓"
			
            install_Lava
            ;;
		2)
			printGreen "↓ Оновлення ноди Lava ↓"
            update_Lava
            ;;	
		*)	
			echo ""
			printRed "Неправильно вказаний пункт, спробуйте ще раз:"
			;;
        esac
		read -p "Натисніть Enter, щоб повернутись до головного меню..."
	done	
}
	main_menu
