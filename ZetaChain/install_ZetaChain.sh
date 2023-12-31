#!/bin/bash

function logo() {
    bash <(curl -s https://raw.githubusercontent.com/CryptoManUA/cosmos/main/logo.sh)
}
logo
function printGreen {
    echo -e "\e[1m\e[32m${1}\e[0m"
	}
	
printGreen "▼ Встановлення ноди ZetaChain ▼" &&
read -r -p "Введіть назву вашого moniker: " NODE_MONIKER

sleep 1

mkdir -p $HOME/go/bin
curl -L https://github.com/zeta-chain/node/releases/download/v11.0.0-rc/zetacored-linux-amd64 > $HOME/go/bin/zetacored
chmod +x $HOME/go/bin/zetacored

zetacored config chain-id $CHAIN_ID
zetacored config keyring-backend test
zetacored init "$NODE_MONIKER" --chain-id $CHAIN_ID

curl -L https://raw.githubusercontent.com/zeta-chain/network-athens3/main/network_files/config/genesis.json > $HOME/.zetacored/config/genesis.json
curl -L https://snapshots-testnet.nodejumper.io/zetachain-testnet/addrbook.json > $HOME/.zetacored/config/addrbook.json

SEEDS="3f472746f46493309650e5a033076689996c8881@zetachain-testnet.rpc.kjnodes.com:16059"
PEERS=""
sed -i 's|^seeds *=.*|seeds = "'$SEEDS'"|; s|^persistent_peers *=.*|persistent_peers = "'$PEERS'"|' $HOME/.zetacored/config/config.toml

sed -i 's|^pruning *=.*|pruning = "custom"|g' $HOME/.zetacored/config/app.toml
sed -i 's|^pruning-keep-recent  *=.*|pruning-keep-recent = "100"|g' $HOME/.zetacored/config/app.toml
sed -i 's|^pruning-interval *=.*|pruning-interval = "10"|g' $HOME/.zetacored/config/app.toml
sed -i 's|^snapshot-interval *=.*|snapshot-interval = 0|g' $HOME/.zetacored/config/app.toml
sed -i 's|^minimum-gas-prices *=.*|minimum-gas-prices = "0.0001azeta"|g' $HOME/.zetacored/config/app.toml
sed -i 's|^prometheus *=.*|prometheus = true|' $HOME/.zetacored/config/config.toml

sudo tee /etc/systemd/system/zetacored.service > /dev/null << EOF
[Unit]
Description=ZetaChain Node
After=network-online.target
[Service]
User=$USER
ExecStart=$(which zetacored) start
Restart=on-failure
RestartSec=10
LimitNOFILE=10000
WorkingDirectory=$HOME
[Install]
WantedBy=multi-user.target
EOF

zetacored tendermint unsafe-reset-all --home $HOME/.zetacored --keep-addr-book

SNAP_NAME=$(curl -s https://snapshots-testnet.nodejumper.io/zetachain-testnet/info.json | jq -r .fileName)
curl "https://snapshots-testnet.nodejumper.io/zetachain-testnet/${SNAP_NAME}" | lz4 -dc - | tar -xf - -C "$HOME/.zetacored"

sudo systemctl daemon-reload
sudo systemctl enable zetacored
sudo systemctl start zetacored

printGreen "Нода ZetaChain успішна встановлена" && sleep 2