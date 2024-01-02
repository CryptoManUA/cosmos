#!/bin/bash

function logo() {
    bash <(curl -s https://raw.githubusercontent.com/CryptoManUA/cosmos/main/logo.sh)
}
	

function printGreen {
    echo -e "\e[1m\e[32m${1}\e[0m"
}

function printRed {
    echo -e "\e[1m\e[31m${1}\e[0m"
	
}
function printAddition {
    echo -e "\e[4m${1}\e[0m"	
}

	
function main_menu {
    while true; do
        logo 
        printGreen "↓ Оберіть порт для заміни ↓"
		printAddition "(для правильної заміни портів, спочатку встановіть Default"
		printAddition "потім виберіть на які хочете замінити)"
		echo ""
        echo -e "\e[1m\e[35m[0]\e[0m  - 26657 Default"
        echo -e "\e[1m\e[35m[1]\e[0m  - 27657"
        echo -e "\e[1m\e[35m[2]\e[0m  - 28657"
		echo -e "\e[1m\e[35m[3]\e[0m  - 29657"
		echo -e "\e[1m\e[35m[4]\e[0m  - 30657"
		echo -e "\e[1m\e[35m[5]\e[0m  - 31657"
    	echo -e "\e[1m\e[35m[6]\e[0m  - 32657"
     	echo -e "\e[1m\e[35m[7]\e[0m  - 33657"
      	echo -e "\e[1m\e[35m[8]\e[0m  - 34657"
        echo -e "\e[1m\e[35m[9]\e[0m  - 35657"
		echo -e "\e[1m\e[35m[10]\e[0m - 36657"
		echo -e "\e[1m\e[35m[11]\e[0m - Вийти з меню"
        read -p "Зробіть ваш вибір, та введіть номер пункту ► " choice
        case "$choice" in 
        					0)
		wget -P /root/.zetacored/config/ -N \
			https://raw.githubusercontent.com/CryptoManUA/cosmos/main/ZetaChain/app.toml
		wget -P /root/.zetacored/config/ -N \
			https://raw.githubusercontent.com/CryptoManUA/cosmos/main/ZetaChain/client.toml
		wget -P /root/.zetacored/config/ -N \
			https://raw.githubusercontent.com/CryptoManUA/cosmos/main/ZetaChain/config.toml
		sudo systemctl restart zetacored 
		echo -e "\e[1m\e[32mПорт замінено та перезавантажено ноду\e[0m" && sleep 1
		echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"              
						;;
					1)
		sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:27658\"%; s%^laddr = \"tcp://0.0.0.0:26656\"%laddr = \"tcp://0.0.0.0:27657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6160\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":27660\"%; s%^laddr = \"tcp://0.0.0.0:26656\"%laddr = \"tcp://0.0.0.0:27657\"%" $HOME/.zetacored/config/config.toml &&
		sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9190\"%; s%^address = \"localhost:9091\"%address = \"localhost:9191\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1417\"%" $HOME/.zetacored/config/app.toml && 
		sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhost:27657\"%" $HOME/.zetacored/config/client.toml            
		sudo systemctl restart zetacored
		echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
		echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
						;;
					2)
		sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:28658\"%; s%^laddr = \"tcp://0.0.0.0:26656\"%laddr = \"tcp://0.0.0.0:28657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6260\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":28660\"%; s%^laddr = \"tcp://0.0.0.0:26656\"%laddr = \"tcp://0.0.0.0:28657\"%" $HOME/.zetacored/config/config.toml &&
		sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9290\"%; s%^address = \"localhost:9091\"%address = \"localhost:9291\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1517\"%" $HOME/.zetacored/config/app.toml && 
		sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhost:28657\"%" $HOME/.zetacored/config/client.toml            
		sudo systemctl restart zetacored
		echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
		echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
					;; 
					3)
		sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:29658\"%; s%^laddr = \"tcp://0.0.0.0:26656\"%laddr = \"tcp://0.0.0.0:29657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6360\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":29660\"%; s%^laddr = \"tcp://0.0.0.0:26656\"%laddr = \"tcp://0.0.0.0:29657\"%" "%" $HOME/.zetacored/config/config.toml &&
		sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9390\"%; s%^address = \"localhost:9091\"%address = \"localhost:9391\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1617\"%" $HOME/.zetacored/config/app.toml && 
		sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhost:29657\"%" $HOME/.zetacored/config/client.toml            
		sudo systemctl restart zetacored
		echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
		echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
				;;
					4)
		sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:30658\"%; s%^laddr = \"tcp://0.0.0.0:26656\"%laddr = \"tcp://0.0.0.0:30657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6460\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":30660\"%; s%^laddr = \"tcp://0.0.0.0:26656\"%laddr = \"tcp://0.0.0.0:30657\"%" $HOME/.zetacored/config/config.toml &&
		sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9490\"%; s%^address = \"localhost:9091\"%address = \"localhost:9491\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1717\"%" $HOME/.zetacored/config/app.toml && 
		sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhost:30657\"%" $HOME/.zetacored/config/client.toml            
		sudo systemctl restart zetacored
		echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
		echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
					;;
					5)
		sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:31658\"%; s%^laddr = \"tcp://0.0.0.0:26656\"%laddr = \"tcp://0.0.0.0:31657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6560\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":31660\"%; s%^laddr = \"tcp://0.0.0.0:26656\"%laddr = \"tcp://0.0.0.0:31657\"%" $HOME/.zetacored/config/config.toml &&
		sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9590\"%; s%^address = \"localhost:9091\"%address = \"localhost:9591\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1817\"%" $HOME/.zetacored/config/app.toml && 
		sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhost:31657\"%" $HOME/.zetacored/config/client.toml            
		sudo systemctl restart zetacored
		echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
		echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
					;;
					6)
		sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:32658\"%; s%^laddr = \"tcp://0.0.0.0:26656\"%laddr = \"tcp://0.0.0.0:32657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6660\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":32660\"%; s%^laddr = \"tcp://0.0.0.0:26656\"%laddr = \"tcp://0.0.0.0:32657\"%" $HOME/.zetacored/config/config.toml &&
		sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9690\"%; s%^address = \"localhost:9091\"%address = \"localhost:9691\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1917\"%" $HOME/.zetacored/config/app.toml && 
		sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhost:32657\"%" $HOME/.zetacored/config/client.toml            
		sudo systemctl restart zetacored
		echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
		echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
					;;
					7)
		sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:33658\"%; s%^laddr = \"tcp://0.0.0.0:26656\"%laddr = \"tcp://0.0.0.0:33657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6760\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":33660\"%; s%^laddr = \"tcp://0.0.0.0:26656\"%laddr = \"tcp://0.0.0.0:33657\"%" HOME/.zetacored/config/config.toml &&
		sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9790\"%; s%^address = \"localhost:9091\"%address = \"localhost:9791\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:2017\"%" $HOME/.zetacored/config/app.toml && 
		sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhost:33657\"%" $HOME/.zetacored/config/client.toml            
		sudo systemctl restart zetacored
		echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
		echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
					;;
					8)
		sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:34658\"%; s%^laddr = \"tcp://0.0.0.0:26656\"%laddr = \"tcp://0.0.0.0:34657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6860\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":34660\"%; s%^laddr = \"tcp://0.0.0.0:26656\"%laddr = \"tcp://0.0.0.0:34657\"%"  $HOME/.zetacored/config/config.toml &&
		sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9890\"%; s%^address = \"localhost:9091\"%address = \"localhost:9891\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:2117\"%" $HOME/.zetacored/config/app.toml && 
		sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhost:34657\"%" $HOME/.zetacored/config/client.toml            
		sudo systemctl restart zetacored
		echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
		echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
					;;
					9)
		sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:35658\"%; s%^laddr = \"tcp://0.0.0.0:26656\"%laddr = \"tcp://0.0.0.0:35657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6960\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":35660\"%; s%^laddr = \"tcp://0.0.0.0:26656\"%laddr = \"tcp://0.0.0.0:35657\"%" $HOME/.zetacored/config/config.toml &&
		sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9990\"%; s%^address = \"localhost:9091\"%address = \"localhost:9991\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:2217\"%" $HOME/.zetacored/config/app.toml && 
		sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhost:35657\"%" $HOME/.zetacored/config/client.toml            
		sudo systemctl restart zetacored
		echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
		echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
					;;
					10)
		sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:36658\"%; s%^laddr = \"tcp://0.0.0.0:26656\"%laddr = \"tcp://0.0.0.0:36657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:7060\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":36660\"%; s%^laddr = \"tcp://0.0.0.0:26656\"%laddr = \"tcp://0.0.0.0:36657\"%" "%" $HOME/.zetacored/config/config.toml &&
		sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:10090\"%; s%^address = \"localhost:9091\"%address = \"localhost:10091\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:2317\"%" $HOME/.zetacored/config/app.toml && 
		sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhost:36657\"%" $HOME/.zetacored/config/client.toml            
		sudo systemctl restart zetacored
		echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
		echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
					;;

		11)
			echo "Ви вийшли з меню." 
            break
            ;;
		*)	
			echo
			printRed "Неправильно вказаний пункт, спробуйте ще раз:"
			;;
        esac
		read -p "Натисніть Enter, щоб повернутись до головного меню..."
	done	
}

main_menu
