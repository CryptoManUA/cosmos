#!/bin/bash

function logo() {
    bash <(curl -s https://raw.githubusercontent.com/CryptoManUA/cosmos/main/logo.sh)
}
logo
function printGreen {
    echo -e "\e[1m\e[32m${1}\e[0m"
	}
	
printGreen "▼ Встановлення ноди Babylon ▼" && sleep 1
read -r -p "Введіть назву вашого moniker: " NODE_MONIKER

sleep 1

read -r -p "Enter node moniker: " NODE_MONIKER
sleep 1

cd || return
rm -rf babylon
git clone https://github.com/babylonchain/babylon
cd babylon || return
git checkout v0.7.2
make install
babylond version # v0.7.2

babylond config keyring-backend test
babylond config chain-id $CHAIN_ID
babylond init "$NODE_MONIKER" --chain-id $CHAIN_ID

curl -L https://github.com/babylonchain/networks/raw/main/bbn-test-2/genesis.tar.bz2 > genesis.tar.bz2
tar -xjf genesis.tar.bz2
rm genesis.tar.bz2
mv genesis.json ~/.babylond/config/genesis.json

curl -s https://snapshots-testnet.nodejumper.io/babylon-testnet/addrbook.json > $HOME/.babylond/config/addrbook.json

SEEDS="8da45f9ff83b4f8dd45bbcb4f850999637fbfe3b@seed0.testnet.babylonchain.io:26656,4b1f8a774220ba1073a4e9f4881de218b8a49c99@seed1.testnet.babylonchain.io:26656"
PEERS=""
sed -i 's|^seeds *=.*|seeds = "'$SEEDS'"|; s|^persistent_peers *=.*|persistent_peers = "'$PEERS'"|' $HOME/.babylond/config/config.toml

sed -i 's|^pruning *=.*|pruning = "custom"|g' $HOME/.babylond/config/app.toml
sed -i 's|^pruning-keep-recent  *=.*|pruning-keep-recent = "100"|g' $HOME/.babylond/config/app.toml
sed -i 's|^pruning-interval *=.*|pruning-interval = "10"|g' $HOME/.babylond/config/app.toml
sed -i 's|^snapshot-interval *=.*|snapshot-interval = 0|g' $HOME/.babylond/config/app.toml

sed -i 's|^minimum-gas-prices *=.*|minimum-gas-prices = "0.00001ubbn"|g' $HOME/.babylond/config/app.toml
sed -i 's|^prometheus *=.*|prometheus = true|' $HOME/.babylond/config/config.toml
sed -i 's|^network *=.*|network = "mainnet"|g' $HOME/.babylond/config/app.toml

sudo tee /etc/systemd/system/babylond.service > /dev/null << EOF
[Unit]
Description=Babylon Node
After=network-online.target
[Service]
User=$USER
ExecStart=$(which babylond) start --x-crisis-skip-assert-invariants
Restart=on-failure
RestartSec=10
LimitNOFILE=10000
[Install]
WantedBy=multi-user.target
EOF

babylond tendermint unsafe-reset-all --home $HOME/.babylond --keep-addr-book

SNAP_NAME=$(curl -s https://snapshots-testnet.nodejumper.io/babylon-testnet/info.json | jq -r .fileName)
curl "https://snapshots-testnet.nodejumper.io/babylon-testnet/${SNAP_NAME}" | lz4 -dc - | tar -xf - -C "$HOME/.babylond"

sudo systemctl daemon-reload
sudo systemctl enable babylond
sudo systemctl start babylond

printGreen "Нода Babylon успішна встановлена" && sleep 2
