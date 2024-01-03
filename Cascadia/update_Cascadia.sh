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
  sudo systemctl stop cascadiad
  cascadiad config chain-id cascadia_11029-1
  
	curl -L https://github.com/CascadiaFoundation/cascadia/releases/download/v0.1.9/cascadiad -o cascadiad
	chmod +x cascadiad
	sudo mv cascadiad /usr/local/bin
	sleep 2
	curl -# -L https://raw.githubusercontent.com/CascadiaFoundation/chain-configuration/master/testnet/genesis.json -o ~/.cascadiad/config/genesis.json
	sleep 2
	SEEDS=""
	PEERS="d1ed80e232fc2f3742637daacab454e345bbe475@54.204.246.120:26656,0c96a6c328eb58d1467afff4130ab446c294108c@34.239.67.55:26656"
	sed -i 's|^seeds *=.*|seeds = "'$SEEDS'"|; s|^persistent_peers *=.*|persistent_peers = "'$PEERS'"|' $HOME/.cascadiad/config/config.toml
	sleep 2
	sudo tee /etc/systemd/system/cascadiad.service > /dev/null << EOF
[Unit]
Description=Cascadia Node
After=network-online.target
[Service]
User=$USER
ExecStart=$(which cascadiad) start --chain-id cascadia_11029-1
Restart=on-failure
RestartSec=10
LimitNOFILE=10000
[Install]
WantedBy=multi-user.target
EOF
	
	
	
  sudo systemctl start cascadiad
  sleep 2
  printGreen "Версія вашої ноди:"
  cascadiad version
  echo ""
  echo ""
  
  printGreen "Нода Cascadia успішно оновлена"
  printDelimiter
  printGreen "В журналі логів спочатку ви можете побачити помилку. Але за 5-10 секунд нода розпочне синхронізацію" 
  printDelimiter && sleep 5
}


update