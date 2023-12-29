#!/bin/bash

function logo() {
    bash <(curl -s https://raw.githubusercontent.com/CPITMschool/Scripts/main/logo.sh)
	}
	

function printGreen {
    echo -e "\e[1m\e[32m${1}\e[37m"
}

function check {
    while true; do
        logo 
        printGreen "Оберіть дію яку хочете виконати в ноді:"
        echo "[1] Журнал логів"
        echo "[2] Статус ноди та синхронізацію"
        echo "[3] Дізнатись версію ноди"
        echo "[4] Інформація про ваш гаманець"
        echo "[5] Дізнатись назву moniker"
        echo "[6] Команда відновлення гаманця"
        echo "[7] Рестарт ноди"
        echo "[8] Вийти з меню"
        read choice
		if 	[[ $choice == "1" ]]; then
            echo ""
            printGreen "Журнал логів Lava. Натисніть CTRL+C щоб вийти."
            echo ""
            sudo journalctl -u lavad -f -o cat
            echo ""
        elif [[ $choice == "2" ]]; then
            echo ""
            printGreen "Статус ноди та синхронізація"
            echo ""
            lavad status 2>&1 | jq; systemctl status lavad
            echo ""
        elif [[ $choice == "3" ]]; then
            echo ""
            printGreen "Дізнатись версію ноди:"
            echo ""
            lavad version --long | grep -e version -e commit
            echo ""
        elif [[ $choice == "4" ]]; then
            echo ""
            printGreen "Інформація про гаманець:"
            echo ""
            lavad keys list
            echo ""
        elif [[ $choice == "5" ]]; then
            echo ""
            printGreen "Дізнатись назву moniker:"
            echo ""
            lavad status | jq .NodeInfo.moniker | tr -d '"'
            echo ""
        elif [[ $choice == "6" ]]; then
            echo ""
            printGreen "Команда відновлення гаманця:"
            echo ""
            lavad keys add wallet --recover
            echo ""
        elif [[ $choice == "7" ]]; then
            echo ""
            print "Виконуємо рестарт Lava"
            echo ""
            sudo systemctl restart lavad
            echo ""
        elif [[ $choice == "8" ]]; then
            return
        else
            echo "Невірний вибір."
        fi
    done
}

check
