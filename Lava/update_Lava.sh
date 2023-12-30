#!/bin/bash

function logo() {
	bash <(curl -s https://raw.githubusercontent.com/CryptoManUA/cosmos/main/logo.sh)
}	

function printDelimiter {
  echo "==========================================="
}

function printGreen {
  echo -e "\e[1m\e[32m${1}\e[0m"
}

function update() {
  clear
  logo
  echo ""
  sudo systemctl stop lavad

  cd $HOME
  wget -O lavad https://github.com/lavanet/lava/releases/download/v0.32.0/lavad-v0.32.0-linux-amd64
  chmod +x $HOME/lavad
  sudo mv $HOME/lavad $(which lavad)
  sudo systemctl start lavad
  sleep 2
  printGreen "Версія вашої ноди:"
  lavad version
  echo ""
  echo ""
  
  printGreen "Нода Lava успішно оновлена"
  printDelimiter
  printGreen "В журналі логів спочатку ви можете побачити помилку Connection is closed. Але за 5-10 секунд нода розпочне синхронізацію"
  printDelimiter && sleep 5
}


update
