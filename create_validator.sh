#!/bin/bash

function logo() {
    bash <(curl -s https://raw.githubusercontent.com/CPITMschool/Scripts/main/logo.sh)
}

function create_lava () {
		clear
		logo
		echo -e "\e[1m\e[35mСтворення валідатора Lava\e[0m"
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
lavad tx staking create-validator \
--amount="$AMOUNT"ulava \
--pubkey=$(lavad tendermint show-validator) \
--moniker="$MONIKER" \
--identity="$IDENTITY" \
--details="CPI™️ Ukranian Community" \
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

function create_dymension () {
		clear
		logo
		echo -e "\e[1m\e[35mСтворення валідатора Dymension\e[0m"
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
dymd tx staking create-validator \
--amount="$AMOUNT"udym \
--pubkey=$(dymd tendermint show-validator) \
--moniker="$MONIKER" \
--identity="$IDENTITY" \
--details="CPI™️ Ukranian Community" \
--chain-id=froopyland_100-1 \
--commission-rate=0.10 \
--commission-max-rate=0.20 \
--commission-max-change-rate=0.01 \
--min-self-delegation=1 \
--from=wallet \
--gas-prices=0.1udym \
--gas-adjustment=1.5 \
--gas=auto \
-y

} 

function create_zetachain () {
		clear
		logo
		echo -e "\e[1m\e[35mСтворення валідатора ZetaChain\e[0m"
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
--pubkey=$(dymd tendermint show-validator) \
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

} 

function create_babylon () {
		clear
		logo
		echo -e "\e[1m\e[35mСтворення валідатора Babylon\e[0m"
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
--pubkey=$(dymd tendermint show-validator) \
--moniker="$MONIKER" \
--identity="$IDENTITY" \
--details="CPI™️ Ukranian Community" \
--chain-id=athens_7001-1 \
--commission-rate=0.10 \
--commission-max-rate=0.20 \
--commission-max-change-rate=0.01 \
--min-self-delegation=1 \
--from=wallet \
--gas-prices=0.1ubbn \
--gas-adjustment=1.5 \
--gas=auto \
-y

}

	function node_menu() {
    while true; do
        clear
        logo
        echo -e "\e[1m\e[35mВиберіть ноду для заміни портів:"
        echo -e "\e[1m\e[33m1\e[0m - Lava"
        echo -e "\e[1m\e[33m2\e[0m - Dymension"
        echo -e "\e[1m\e[33m3\e[0m - Zetachain"
        echo -e "\e[1m\e[33m4\e[0m - Babylon"
	echo -e "\e[1m\e[33m5\e[0m - Вийти"
        read -p "Зробіть ваш вибір, та введіть число: " choice
        case "$choice" in
            1)
                create_lava
                ;;
            2)
                create_dymension
                ;;
            3)
                create_zetachain
                ;;
			4)
                create_babylon
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
