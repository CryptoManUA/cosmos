#!/bin/bash

function logo() {
    bash <(curl -s https://raw.githubusercontent.com/CPITMschool/Scripts/main/logo.sh)
}

function port_menu() {
    bash <(curl -s https://raw.githubusercontent.com/CryptoManUA/cosmos/main/port_menu.sh)
}
 
 function create_validator_Lava () {
		clear
		logo
		echo -e "\e[1m\e[35mСтворення валідатора Lava\e[0m"
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
lavad tx staking create-validator \
--amount=10000ulava \
--pubkey=$(lavad tendermint show-validator) \
--moniker="$MONIKER" \
--identity="$IDENTITY" \
--details="CPI™️ Ukranian Community" \
--website=https://cpi-tm.com/ \
--chain-id=lava-testnet-2 \
--commission-rate=0.10 \
--commission-max-rate=0.20 \
--commission-max-change-rate=0.01 \
--min-self-delegation=1 \
--from=wallet \
--gas-prices=0.1ulava \
--gas-adjustment=1.5 \
--gas=auto \
-y

}

 

 
 function node_create_validator() {
		clear
		logo
		echo -e "\e[1m\e[35mВиберіть ноду для створенння валідатора в мережі Cosmos:"
        echo -e "\e[1m\e[33m1\e[0m - Lava"
        echo -e "\e[1m\e[33m2\e[0m - Dymension"
        echo -e "\e[1m\e[33m3\e[0m - Zetachain"
        echo -e "\e[1m\e[33m4\e[0m - Babylon"
        read -p "Зробіть ваш вибір, та введіть число: " choice
        case "$choice" in
			1)
				create_validator_Lava
				;;
			2)  
				create_validator_Dymension
				;;
			3)
				create_validator_Zetachain
				;;
			4)
				create_validator_Babylon
				;;
			5)	
				echo "Ви вийшли з меню."
                break
                ;;
            *)
                echo -e "\e[31mНекоректний вибір. Спробуйте ще раз.\e[0m"
                ;;
        esac
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
                node_create_validator
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
