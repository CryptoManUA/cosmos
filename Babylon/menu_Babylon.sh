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

function port_Babylon() {
	bash <(curl -s https://raw.githubusercontent.com/CryptoManUA/cosmos/main/Babylon/port_Babylon.sh)
}

function install_Babylon() {
	bash <(curl -s https://raw.githubusercontent.com/CryptoManUA/cosmos/main/Babylon/install_Babylon.sh)
}
	
function main_menu {
    while true; do
        logo 
        printGreen "↓ Оберіть дію яку хочете виконати Babylon ↓"
		echo ""
		echo -e "\e[1m\e[35m[1]\e[0m  - Встановлення ноди Babylon"
		echo -e "\e[1m\e[35m[2]\e[0m  - Оновлення ноди Babylon (Неактуально)"
		echo -e "\e[1m\e[35m[3]\e[0m  - Видалення ноди Babylon"
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
		echo -e "\e[1m\e[35m[16]\e[0m - Перевірка портів сервера"
		echo -e "\e[1m\e[35m[17]\e[0m - Заміна портів"
		echo -e "\e[1m\e[35m[18]\e[0m - Старт ноди"
		echo -e "\e[1m\e[35m[19]\e[0m - Стоп ноди"
		echo -e "\e[1m\e[35m[20]\e[0m - Рестарт ноди"
		echo -e "\e[1m\e[35m[21]\e[0m - Вийти з меню"
		read -p "Зробіть ваш вибір, та введіть номер пункту ► " choice
        case "$choice" in 
		1)
			printGreen "↓ Встановлення ноди Babylon ↓"
            install_Babylon
            ;;
        2)
            printGreen "↓ Оновлення ноди Babylon ↓"
            echo ""
            echo ""
			;;
		3)
			printGreen "↓ Видалення ноди Babylon ↓"
			echo ""
			sudo systemctl stop babylond; sudo systemctl disable babylond; sudo rm -rf $HOME/.Babylon; sudo rm -rf $HOME/babylond; sudo rm -rf /etc/systemd/system/babylond.service; sudo rm -rf /usr/local/bin/babylond; sudo systemctl daemon-reload		
			echo ""
			printGreen "Нода успішно видалена"
			;;
		4)
            echo ""
            printGreen "↓ Створення гаманця ↓"
            echo ""
            babylond keys add wallet
            echo ""	
			;;
		5)
            echo ""
            printGreen "↓ Відновлення гаманця ↓"
            echo ""
			babylond keys add wallet --recover 
            echo ""	
			;;
		6)
            echo ""
            printGreen "↓ Створення валідатора ↓"
            echo ""
            echo "Вкажіть кількість токенів:"
			read AMOUNT
			echo "Вкажіть ім'я вашого moniker:"
			read MONIKER

			DEFAULT_IDENTITY="779712C94C077F16"

			echo "Вкажіть ваш identity (натисніть Enter якщо ви не створювали):"
			read IDENTITY_INPUT

			if [ -n "$IDENTITY_INPUT" ]; then
			IDENTITY="$IDENTITY_INPUT"
			else
			IDENTITY="779712C94C077F16"
			fi

			babylond tx checkpointing create-validator \
			--amount="$AMOUNT"ubbn \
			--pubkey=$(babylond tendermint show-validator) \
			--moniker="$MONIKER" \
			--identity="$IDENTITY" \
			--details="CPI™️ Ukranian Community" \
			--chain-id=bbn-test-2 \
			--commission-rate=0.10 \
			--commission-max-rate=0.20 \
			--commission-max-change-rate=0.01 \
			--min-self-delegation=1 \
			--from=wallet \
			--gas-prices=0.1ubbn \
			--gas-adjustment=1.5 \
			--gas=auto \
			-y
            echo ""	
			;;
		7)
            echo ""
            printGreen "↓ Редагування валідатора ↓"
            echo ""
            echo "Вкажіть ім'я вашого moniker:"
			read MONIKER

			DEFAULT_IDENTITY="779712C94C077F16"

			echo "Вкажіть ваш identity (натисніть Enter якщо ви не створювали):"
			read IDENTITY_INPUT

			if [ -n "$IDENTITY_INPUT" ]; then
			  IDENTITY="$IDENTITY_INPUT"
			else
			  IDENTITY="779712C94C077F16"
			fi

			babylond tx staking edit-validator \
			--new-moniker="$MONIKER" \
			--identity="$IDENTITY" \
			--details="CPI™️ Ukranian Community" \
			--chain-id=bbn-test-2 \
			--commission-rate=0.10 \
			--from=wallet \
			--gas-prices=0.1ubbn \
			--gas-adjustment=1.5 \
			--gas=auto \
			-y
            echo ""
			;;
		8)
            echo ""
            printGreen "↓ Інформація про гаманець та баланс ↓"
            echo ""
            babylond keys list; babylond q bank balances $(babylond keys show wallet -a) && sleep 2
            echo ""
			;;
		9)
            echo ""
            printGreen "↓ Делегування токенів собі ↓"
            echo ""
			echo "↓ Вкажіть кількість токенів ↓:"
			read AMOUNT
            babylond tx staking delegate $(babylond keys show wallet --bech val -a) "$AMOUNT"ubbn --from wallet --chain-id bbn-test-2 --gas-prices 0.1ubbn --gas-adjustment 1.5 --gas auto -y && sleep 2
            echo ""
			;;
		10)
            echo ""
            printGreen "↓ Виведення Вашого валідатора із в'язниці ↓"
			printAddition "(Будьте уважні, виведення із в'язниці може тривати від 10хв)"
            echo ""
            sudo journalctl -u babylond -f -o cat && sleep 2
            echo ""
			;;			
		11)
            echo ""
            printGreen "↓ Інформаціця про валідатора ↓"
            echo ""
            babylond q staking validator $(babylond keys show wallet --bech val -a) && sleep 2
            echo ""
			;;	
		12)
            echo ""
            printGreen "↓ Журнал логів Babylon↓ Натисніть CTRL+C щоб вийти ↓"
            echo ""
            sudo journalctl -u babylond -f -o cat && sleep 2
            echo ""
			;;
		13)
            echo ""
            printGreen "↓ Статус ноди та синхронізація ↓"
            echo ""
            babylond status 2>&1 | jq; systemctl status babylond && sleep 2
            echo ""	
			;;
		14)
            echo ""
            printGreen "↓ Верхній блок вашої ноди ↓"
            echo ""
			babylond status 2>&1 | jq .SyncInfo.latest_block_height && sleep 2
            echo ""	
			;;
		15)
            echo ""
            printGreen "↓ Ваша версії ноди ↓"
            echo ""
            babylond status | jq .NodeInfo.version| tr -d '"' && sleep 2
            echo "" 
			;;
		16)
            clear
			logo
			echo ""
			printGreen "↓ Відкриті порти на Вашому сервері ↓"
			printAddition "приклад 127.0.0.1:26657 - це означає що порт зайнятий нодою"
			printAddition "інші можна використовувати для підселення ноди в мережі Cosmos"
            echo ""
            netstat -tuln
            echo ""	
			;;
		17)
            echo ""
			printGreen "↓ Заміна портів ↓"
            echo ""
            port_Babylon
            echo ""	
			;;
		18)
            echo ""
            print "↓ Запуск ноди Babylon ↓"
            echo ""
            sudo systemctl start babylond
            echo ""	
			;;
		19)
            echo ""
            print "↓ Зупинка ноди Babylon "
            echo ""
            sudo systemctl stop babylond
            echo ""
			;;
		20)
            echo ""
            print "↓ Перезавантаження ноди Babylon ↓"
            echo ""
            sudo systemctl restart babylond
            echo ""	
			;;
		21)
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