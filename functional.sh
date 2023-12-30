#!/bin/bash

function logo() {
    bash <(curl -s https://raw.githubusercontent.com/CPITMschool/Scripts/main/logo.sh)
	}
	

function printGreen {
    echo -e "\e[1m\e[32m${1}\e[37m"
}

function printRed {
    echo -e "\e[1m\e[31m${1}\e[37m"
}

function check {
    while true; do
        logo 
        printGreen "Оберіть дію яку хочете виконати в ноді:"
        echo "[1] Журнал логів"
        echo "[2] Статус ноди та синхронізацію"
        echo "[3] Перевірка версії ноди"
        echo "[4] Інформація про гаманець та баланс"
        echo "[5] Дізнатись верхній блок вашої ноди"
        echo "[6] Команда створення гаманця"
        echo "[7] Команда відновлення гаманця"
        echo "[8] Рестарт ноди"
        echo "[9] Вийти з меню"
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
            printGreen "▼Ваша версії ноди▼"
            echo ""
            lavad status | jq .NodeInfo.version| tr -d '"'
            echo ""
        elif [[ $choice == "4" ]]; then
            echo ""5
            printGreen "Інформація про гаманець та баланс:"
            echo ""
            lavad keys list; lavad q bank balances $(lavad keys show wallet -a)
            echo ""
        elif [[ $choice == "5" ]]; then
            echo ""
            printGreen "Верхній блок вашої ноди:"
            echo ""
			lavad status 2>&1 | jq .SyncInfo.latest_block_height
            echo ""
        elif [[ $choice == "6" ]]; then
            echo ""
            printGreen "Створення гаманця Lava"
            echo ""
            lavad keys add wallet
            echo ""
        elif [[ $choice == "7" ]]; then
            echo ""
            printGreen "Відновлення гаманця Lava"
            echo ""
            lavad keys add wallet --recover
            echo ""
		elif [[ $choice == "8" ]]; then
            echo ""
            print "Виконуємо рестарт Lava"
            echo ""
            sudo systemctl restart lavad
            echo ""	
        elif [[ $choice == "9" ]]; then
            return
        else
            echo 
			printRed "Невірний вибір."
        fi
    done
}

check
