#!/bin/bash

function logo() {
    bash <(curl -s https://raw.githubusercontent.com/CPITMschool/Scripts/main/logo.sh)
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


function main_menu {
    while true; do
		clear
        logo 
printGreen "● Валідатор та гаманець:
│
│ ┌───┬──────────────────────────────────────┐
├─┤ 1 │ Створення гаманця                    │
│ ├───┼──────────────────────────────────────┤
├─┤ 2 │ Відновлення гаманця                  │
│ ├───┼──────────────────────────────────────┤
├─┤ 3 │ Інформація про гаманець              │
│ ├───┼──────────────────────────────────────┤
├─┤ 4 │ Видалити гаманець                    │
│ ├───┼──────────────────────────────────────┤
├─┤ 5 │ Перевірити баланс                    │
│ ├───┼──────────────────────────────────────┤
├─┤ 6 │ Делегування токенів                  │
│ ├───┼──────────────────────────────────────┤
├─┤ 7 │ Виведення із вязниці                 │
│ ├───┼──────────────────────────────────────┤
├─┤ 8 │ Створення валідатора                 │
│ ├───┼──────────────────────────────────────┤
├─┤ 9 │ Редагування валідатора               │
│ ├───┼──────────────────────────────────────┤
├─┤ 10│ Інформація про валідатора та ключ    │
│ ├───┼──────────────────────────────────────┤
└─┤ 0 │ Вийти                                │
  └───┴──────────────────────────────────────┘"
read -p "Зробіть ваш вибір, та введіть номер пункту ► " choice
        case "$choice" in 
		1)	
			echo ""
            printGreen "↓ Створення гаманця ↓"
            echo ""
            zetacored keys add wallet
            echo ""	
			;;
		2)	
			echo ""
            printGreen "↓ Відновлення гаманця ↓"
            echo ""
			zetacored keys add wallet --recover 
            echo ""	
			;;
		3)	
			echo ""
            printGreen "↓ Інформація про гаманець ↓"
            echo ""
			zetacored keys list
            echo ""	
			;;
		4)	
			echo ""
            printGreen "↓ Видалення гаманця ↓"
			echo ""
			echo "Вкажіть ім'я гаманця:"
			read NAME
			zetacored keys delete "$NAME"
            echo ""
			;;
		5)	
			echo ""
            printGreen "↓ Ваш баланс ↓"
            echo ""
            zetacored q bank balances $(zetacored keys show wallet -a) && sleep 2
            echo ""
			;;
		6)	
			echo ""
            printGreen "↓ Делегування токенів собі ↓"
            echo ""
			echo "↓ Вкажіть кількість токенів ↓:"
			read AMOUNT
            zetacored tx staking delegate $(zetacored keys show wallet --bech val -a) "$AMOUNT"azeta --from wallet --chain-id athens_7001-1 --gas-prices 0.1azeta --gas-adjustment 1.5 --gas auto -y && sleep 2
            echo ""
			;;
		7)	
			echo ""
            printGreen "↓ Виведення Вашого валідатора із в'язниці ↓"
			printAddition "(Будьте уважні, виведення із в'язниці може тривати від 10хв)"
            echo ""
            zetacored tx slashing unjail --from wallet --chain-id athens_7001-1 --gas-prices 0.1azeta --gas-adjustment 1.5 --gas auto -y && sleep 2
            echo ""
			;;
		8)
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

			zetacored tx staking create-validator \
			--amount="$AMOUNT"azeta \
			--pubkey=$(zetacored tendermint show-validator) \
			--moniker="$MONIKER" \
			--identity="$IDENTITY" \
			--details="CPI™️ Ukranian Community" \
			--chain-id=athens_7001-1 \
			--commission-rate=0.10 \
			--commission-max-rate=0.20 \
			--commission-max-change-rate=0.01 \
			--min-self-delegation=1 \
			--from=wallet \
			--gas-prices=0.1azeta \
			--gas-adjustment=1.5 \
			--gas=auto \
			-y
            echo ""	
			;;
		9)
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

			zetacored tx staking edit-validator \
			--new-moniker="$MONIKER" \
			--identity="$IDENTITY" \
			--details="CPI™️ Ukranian Community" \
			--chain-id=athens_7001-1 \
			--commission-rate=0.10 \
			--from=wallet \
			--gas-prices=0.1azeta \
			--gas-adjustment=1.5 \
			--gas=auto \
			-y
            echo ""
			;;
		10)
            echo ""
            printGreen "↓ Інформаціця про валідатора та приватний ключ ↓"
            echo ""
            zetacored q staking validator $(zetacored keys show wallet --bech val -a); cat $HOME/.zetacored/config/priv_validator_key.json && sleep 2
            echo ""
			;;	
		0)
			echo ""
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