#!/bin/bash

function logo() {
    bash <(curl -s https://raw.githubusercontent.com/CPITMschool/Scripts/main/logo.sh)
}

function edit_lava () {
		clear
		logo
		echo -e "\e[1m\e[35mРедагування валідатора Lava\e[0m"
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
--new-moniker="$MONIKER" \
--identity="$IDENTITY" \
--details="CPI™️ Ukranian Community" \
--chain-id=lava-testnet-2 \
--commission-rate=0.10 \
--from=wallet \
--gas-prices=0.1ulava \
--gas-adjustment=1.5 \
--gas=auto \
-y

}

function edit_dymension () {
		clear
		logo
		echo -e "\e[1m\e[35mРедагування валідатора Dymension\e[0m"
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
dymd tx staking edit-validator \
--pubkey=$(dymd tendermint show-validator) \
--new-moniker="$MONIKER" \
--identity="$IDENTITY" \
--details="CPI™️ Ukranian Community" \
--chain-id=froopyland_100-1 \
--commission-rate=0.10 \
--from=wallet \
--gas-prices=0.1ulava \
--gas-adjustment=1.5 \
--gas=auto \
-y

} 

function edit_zetachain () {
		clear
		logo
		echo -e "\e[1m\e[35mРедагування валідатора ZetaChain\e[0m"
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
--pubkey=$(zetacored tendermint show-validator) \
--new-moniker="$MONIKER" \
--identity="$IDENTITY" \
--details="CPI™️ Ukranian Community" \
--chain-id=athens_7001-1 \
--commission-rate=0.10 \
--from=wallet \
--gas-prices=0.1ulava \
--gas-adjustment=1.5 \
--gas=auto \
-y

} 

function edit_babylon () {
		clear
		logo
		echo -e "\e[1m\e[35mРедагування валідатора Babylon\e[0m"
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
babylond tx checkpointing edit-validator \
--pubkey=$(dymd tendermint show-validator) \
--new-moniker="$MONIKER" \
--identity="$IDENTITY" \
--details="CPI™️ Ukranian Community" \
--chain-id=athens_7001-1 \
--commission-rate=0.10 \
--from=wallet \
--gas-prices=0.1ulava \
--gas-adjustment=1.5 \
--gas=auto \
-y

}

	function edit_menu() {
    while true; do
        clear
        logo
        echo -e "\e[1m\e[35mВиберіть ноду для редагування валідатора:"
        echo -e "\e[1m\e[33m1\e[0m - Lava"
        echo -e "\e[1m\e[33m2\e[0m - Dymension"
        echo -e "\e[1m\e[33m3\e[0m - Zetachain"
        echo -e "\e[1m\e[33m4\e[0m - Babylon"
	echo -e "\e[1m\e[33m5\e[0m - Вийти"
        read -p "Зробіть ваш вибір, та введіть число: " choice
        case "$choice" in
            1)
                edit_lava
                ;;
            2)
                edit_dymension
                ;;
            3)
                edit_zetachain
                ;;
			4)
                edit_babylon
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
	edit_menu
