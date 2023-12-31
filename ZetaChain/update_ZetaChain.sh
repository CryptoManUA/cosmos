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
  sudo systemctl stop zetacored

  mkdir -p $HOME/go/bin
  curl -L https://github.com/zeta-chain/node/releases/download/v11.0.0-rc/zetacored-linux-amd64 > $HOME/go/bin/zetacored
  chmod +x $HOME/go/bin/zetacored
  sudo systemctl start zetacored
  sleep 2
  printGreen "Версія вашої ноди:"
  zetacored version
  echo ""
  echo ""
  
  printGreen "Нода ZetaChain успішно оновлена"
  printDelimiter
  printGreen "В журналі логів спочатку ви можете побачити помилку. Але за 5-10 секунд нода розпочне синхронізацію" 
  printDelimiter
  sleep 5
}


update
