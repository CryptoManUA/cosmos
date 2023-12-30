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
		echo "Введіть номер пункту ► "
		read choise
		if 	[[ $choice == "1" ]]; then
            echo ""
            printGreen "↓ Встановлення ноди Lava"
            echo ""
            install_Lava
            echo ""
        elif [[ $choice == "2" ]]; then
            echo ""
            printGreen "↓ Оновлення ноди Lava ↓"
            echo ""
            update_Lava
            echo ""
		elif [[ $choice == "3" ]]; then
			echo ""
			printGreen "↓ Видалення ноди Lava ↓"
			echo ""
			sudo systemctl stop lavad; sudo systemctl disable lavad; sudo rm -rf $HOME/.lava; sudo rm -rf $HOME/lavad; sudo rm -rf /etc/systemd/system/lavad.service; sudo rm -rf /usr/local/bin/lavad; sudo systemctl daemon-reload		
			echo ""
		elif [[ $choice == "4" ]]; then
            echo ""
            printGreen "↓ Створення гаманця ↓"
            echo ""
            lavad keys add wallet
            echo ""	
		elif [[ $choice == "5" ]]; then
            echo ""
            printGreen "↓ Відновлення гаманця ↓"
            echo ""
			lavad keys add wallet --recover
            echo ""	
		elif [[ $choice == "6" ]]; then
            echo ""
            printGreen "↓ Створення валідатора ↓"
            echo ""
            create_validator
            echo ""	
		elif [[ $choice == "7" ]]; then
            echo ""
            printGreen "↓ Редагування валідатора ↓"
            echo ""
            edit_validator
            echo ""
		elif [[ $choice == "8" ]]; then
            echo ""
            printGreen "↓ Інформація про гаманець та баланс ↓"
            echo ""
            lavad keys list; lavad q bank balances $(lavad keys show wallet -a)
            echo ""	
		elif [[ $choice == "9" ]]; then
            echo ""
            printGreen "↓ Делегування токенів собі ↓"
            echo ""
            lavad tx staking delegate $(lavad keys show wallet --bech val -a) 1000000000000ulava --from wallet --chain-id lava-testnet-2 --gas-prices 0.1ulava --gas-adjustment 1.5 --gas auto -y 
            echo ""	
		elif [[ $choice == "10" ]]; then
            echo ""
            printGreen "↓ Виведення Вашого валідатора із в'язниці ↓"
            echo ""
            sudo journalctl -u lavad -f -o cat
            echo ""	
		elif [[ $choice == "11" ]]; then
            echo ""
            printGreen "↓ Інформаціця про валідатора ↓"
            echo ""
            lavad q staking validator $(lavad keys show wallet --bech val -a)
            echo ""		
		elif [[ $choice == "12" ]]; then
            echo ""
            printGreen "↓ Журнал логів Lava↓ Натисніть CTRL+C щоб вийти ↓"
            echo ""
            sudo journalctl -u lavad -f -o cat
            echo ""	
		elif [[ $choice == "13" ]]; then
            echo ""
            printGreen "↓ Статус ноди та синхронізація ↓"
            echo ""
            lavad status 2>&1 | jq; systemctl status lavad
            echo ""	
		elif [[ $choice == "14" ]]; then
            echo ""
            printGreen "↓ Верхній блок вашої ноди ↓"
            echo ""
			lavad status 2>&1 | jq .SyncInfo.latest_block_height
            echo ""	
		elif [[ $choice == "15" ]]; then
            echo ""
            printGreen "↓ Ваша версії ноди ↓"
            echo ""
            lavad status | jq .NodeInfo.version| tr -d '"' && sleep 3
            echo ""
		elif [[ $choice == "16" ]]; then
            echo ""
			printGreen "↓ Заміна портів ↓"
            echo ""
            port_menu
            echo ""	
		elif [[ $choice == "17" ]]; then
            echo ""
            print "Запуск ноди Lava"
            echo ""
            sudo systemctl start lavad
            echo ""	
		elif [[ $choice == "18" ]]; then
            echo ""
            print "Зупинка ноди Lava"
            echo ""
            sudo systemctl stop lavad
            echo ""	
		elif [[ $choice == "19" ]]; then
            echo ""
            print "Перезавантаження ноди Lava"
            echo ""
            sudo systemctl restart lavad
            echo ""		
		elif [[ $choice == "20" ]]; then
            return
        else
            echo 
			printRed "Невірний вибір."
        fi
    done
}

main_menu
