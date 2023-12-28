#!/bin/bash

function logo() {
    bash <(curl -s https://raw.githubusercontent.com/CPITMschool/Scripts/main/logo.sh)
}

function port_menu1() {
        clear
        logo
        echo -e "\e[1m\e[32mОберіть порт для заміни:\e[0m"
        echo -e "\e[1m\e[33m0\e[0m  - 26657 Default"
        echo -e "\e[1m\e[33m1\e[0m  - 27657"
        echo -e "\e[1m\e[33m2\e[0m  - 28657"
		echo -e "\e[1m\e[33m3\e[0m  - 29657"
		echo -e "\e[1m\e[33m4\e[0m  - 30657"
		echo -e "\e[1m\e[33m5\e[0m  - 31657"
    	echo -e "\e[1m\e[33m6\e[0m  - 32657"
     	echo -e "\e[1m\e[33m7\e[0m  - 33657"
      	echo -e "\e[1m\e[33m8\e[0m  - 34657"
        echo -e "\e[1m\e[33m9\e[0m  - 35657"
		echo -e "\e[1m\e[33m10\e[0m - 36657"
        read -p "Ваш вибір від 0 до 10: " choice
        case "$choice" in
            0)
wget -P /root/.lava/config/ -N \

                ;;
            	1)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:27658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:27657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6160\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":27660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:27657\"%" $HOME/.lava/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9190\"%; s%^address = \"localhost:9091\"%address = \"localhost:9191\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1417\"%" $HOME/.lava/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:27657\"%" $HOME/.lava/config/client.toml            
sudo systemctl restart lavad
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
                ;;
            2)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:28658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:28657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6260\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":28660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:28657\"%" $HOME/.lava/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9290\"%; s%^address = \"localhost:9091\"%address = \"localhost:9291\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1517\"%" $HOME/.lava/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:28657\"%" $HOME/.lava/config/client.toml            
sudo systemctl restart lavad
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;; 
            3)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:29658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:29657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6360\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":29660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:29657\"%" "%" $HOME/.lava/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9390\"%; s%^address = \"localhost:9091\"%address = \"localhost:9391\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1617\"%" $HOME/.lava/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:29657\"%" $HOME/.lava/config/client.toml            
sudo systemctl restart lavad
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
  		;;
    	    4)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:30658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:30657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6460\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":30660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:30657\"%" $HOME/.lava/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9490\"%; s%^address = \"localhost:9091\"%address = \"localhost:9491\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1717\"%" $HOME/.lava/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:30657\"%" $HOME/.lava/config/client.toml            
sudo systemctl restart lavad
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
    	    5)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:31658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:31657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6560\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":31660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:31657\"%" $HOME/.lava/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9590\"%; s%^address = \"localhost:9091\"%address = \"localhost:9591\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1817\"%" $HOME/.lava/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:31657\"%" $HOME/.lava/config/client.toml            
sudo systemctl restart lavad
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
    	    6)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:32658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:32657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6660\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":32660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:32657\"%" $HOME/.lava/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9690\"%; s%^address = \"localhost:9091\"%address = \"localhost:9691\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1917\"%" $HOME/.lava/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:32657\"%" $HOME/.lava/config/client.toml            
sudo systemctl restart lavad
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
    	    7)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:33658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:33657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6760\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":33660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:33657\"%" HOME/.lava/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9790\"%; s%^address = \"localhost:9091\"%address = \"localhost:9791\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:2017\"%" $HOME/.lava/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:33657\"%" $HOME/.lava/config/client.toml            
sudo systemctl restart lavad
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
     	    8)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:34658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:34657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6860\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":34660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:34657\"%"  $HOME/.lava/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9890\"%; s%^address = \"localhost:9091\"%address = \"localhost:9891\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:2117\"%" $HOME/.lava/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:34657\"%" $HOME/.lava/config/client.toml            
sudo systemctl restart lavad
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
			9)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:35658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:35657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6960\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":35660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:35657\"%" $HOME/.lava/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9990\"%; s%^address = \"localhost:9091\"%address = \"localhost:9991\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:2217\"%" $HOME/.lava/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:35657\"%" $HOME/.lava/config/client.toml            
sudo systemctl restart lavad
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
    	    10)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:36658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:36657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:7060\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":36660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:36657\"%" "%" $HOME/.lava/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:10090\"%; s%^address = \"localhost:9091\"%address = \"localhost:10091\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:2317\"%" $HOME/.lava/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:36657\"%" $HOME/.lava/config/client.toml            
sudo systemctl restart lavad
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
            *)
echo -e "\033[31mНеправильно вказаний порт, спробуйте ще раз.\e[0m"
            ;;
        esac
}

function port_menu2() {
        clear
        logo
        echo -e "\e[1m\e[32mОберіть порт який хочете встановити:\e[0m"
        echo -e "\e[1m\e[33m0\e[0m  - 26657 Default"
        echo -e "\e[1m\e[33m1\e[0m  - 27657"
        echo -e "\e[1m\e[33m2\e[0m  - 28657"
 		echo -e "\e[1m\e[33m3\e[0m  - 29657"
		echo -e "\e[1m\e[33m4\e[0m  - 30657"
  		echo -e "\e[1m\e[33m5\e[0m  - 31657"
    	echo -e "\e[1m\e[33m6\e[0m  - 32657"
     	echo -e "\e[1m\e[33m7\e[0m  - 33657"
      	echo -e "\e[1m\e[33m8\e[0m  - 34657"
        echo -e "\e[1m\e[33m9\e[0m  - 35657"
		echo -e "\e[1m\e[33m10\e[0m - 36657"
        read -p "Ваш вибір від 0 до 10: " choice
        case "$choice" in
            0)
        
                ;;
             1)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:27658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:27657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6160\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":27660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:27657\"%" $HOME/.dymension/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9190\"%; s%^address = \"localhost:9091\"%address = \"localhost:9191\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1417\"%" $HOME/.dymension/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:27657\"%" $HOME/.dymension/config/client.toml            
sudo systemctl restart dymd
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
            ;;
            2)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:28658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:28657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6260\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":28660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:28657\"%" $HOME/.dymension/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9290\"%; s%^address = \"localhost:9091\"%address = \"localhost:9291\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1517\"%" $HOME/.dymension/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:28657\"%" $HOME/.dymension/config/client.toml            
sudo systemctl restart dymd
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;; 
            3)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:29658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:29657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6360\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":29660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:29657\"%" "%" $HOME/.dymension/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9390\"%; s%^address = \"localhost:9091\"%address = \"localhost:9391\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1617\"%" $HOME/.dymension/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:29657\"%" $HOME/.dymension/config/client.toml            
sudo systemctl restart dymd
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
  		;;
    	    4)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:30658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:30657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6460\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":30660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:30657\"%" $HOME/.dymension/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9490\"%; s%^address = \"localhost:9091\"%address = \"localhost:9491\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1717\"%" $HOME/.dymension/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:30657\"%" $HOME/.dymension/config/client.toml            
sudo systemctl restart dymd
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
    	    5)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:31658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:31657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6560\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":31660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:31657\"%" $HOME/.dymension/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9590\"%; s%^address = \"localhost:9091\"%address = \"localhost:9591\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1817\"%" $HOME/.dymension/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:31657\"%" $HOME/.dymension/config/client.toml            
sudo systemctl restart dymd
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
    	    6)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:32658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:32657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6660\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":32660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:32657\"%" $HOME/.dymension/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9690\"%; s%^address = \"localhost:9091\"%address = \"localhost:9691\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1917\"%" $HOME/.dymension/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:32657\"%" $HOME/.dymension/config/client.toml            
sudo systemctl restart dymd
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
    	    7)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:33658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:33657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6760\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":33660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:33657\"%" HOME/.dymension/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9790\"%; s%^address = \"localhost:9091\"%address = \"localhost:9791\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:2017\"%" $HOME/.dymension/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:33657\"%" $HOME/.dymension/config/client.toml            
sudo systemctl restart dymd
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
     	    8)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:34658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:34657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6860\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":34660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:34657\"%"  $HOME/.dymension/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9890\"%; s%^address = \"localhost:9091\"%address = \"localhost:9891\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:2117\"%" $HOME/.dymension/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:34657\"%" $HOME/.dymension/config/client.toml            
sudo systemctl restart dymd
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
			9)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:35658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:35657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6960\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":35660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:35657\"%" $HOME/.dymension/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9990\"%; s%^address = \"localhost:9091\"%address = \"localhost:9991\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:2217\"%" $HOME/.dymension/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:35657\"%" $HOME/.dymension/config/client.toml            
sudo systemctl restart dymd
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
    	    10)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:36658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:36657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:7060\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":36660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:36657\"%" "%" $HOME/.dymension/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:10090\"%; s%^address = \"localhost:9091\"%address = \"localhost:10091\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:2317\"%" $HOME/.dymension/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:36657\"%" $HOME/.dymension/config/client.toml            
sudo systemctl restart dymd
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
            *)
echo -e "\033[31mНеправильно вказаний порт, спробуйте ще раз.\e[0m"
            ;;
        esac
}

function port_menu3() {
        clear
        logo
		echo -e "\e[1m\e[32mОберіть порт який хочете встановити:\e[0m"
		echo -e "\e[1m\e[33m0\e[0m  - 26657 Default"
		echo -e "\e[1m\e[33m1\e[0m  - 27657"
		echo -e "\e[1m\e[33m2\e[0m  - 28657"
		echo -e "\e[1m\e[33m3\e[0m  - 29657"
		echo -e "\e[1m\e[33m4\e[0m  - 30657"
		echo -e "\e[1m\e[33m5\e[0m  - 31657"
		echo -e "\e[1m\e[33m6\e[0m  - 32657"
		echo -e "\e[1m\e[33m7\e[0m  - 33657"
		echo -e "\e[1m\e[33m8\e[0m  - 34657"
		echo -e "\e[1m\e[33m9\e[0m  - 35657"
		echo -e "\e[1m\e[33m10\e[0m - 36657"
		read -p "Ваш вибір від 0 до 10: " choice
		case "$choice" in
            0)
                
                ;;
            1)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:27658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:27657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6160\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":27660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:27657\"%" $HOME/.zetacored/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9190\"%; s%^address = \"localhost:9091\"%address = \"localhost:9191\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1417\"%" $HOME/.zetacored/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:27657\"%" $HOME/.zetacored/config/client.toml            
sudo systemctl restart zetacored
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
                ;;
            2)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:28658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:28657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6260\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":28660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:28657\"%" $HOME/.zetacored/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9290\"%; s%^address = \"localhost:9091\"%address = \"localhost:9291\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1517\"%" $HOME/.zetacored/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:28657\"%" $HOME/.zetacored/config/client.toml            
sudo systemctl restart zetacored
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;; 
            3)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:29658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:29657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6360\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":29660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:29657\"%" "%" $HOME/.zetacored/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9390\"%; s%^address = \"localhost:9091\"%address = \"localhost:9391\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1617\"%" $HOME/.zetacored/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:29657\"%" $HOME/.zetacored/config/client.toml            
sudo systemctl restart zetacored
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
  		;;
    	    4)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:30658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:30657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6460\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":30660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:30657\"%" $HOME/.zetacored/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9490\"%; s%^address = \"localhost:9091\"%address = \"localhost:9491\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1717\"%" $HOME/.zetacored/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:30657\"%" $HOME/.zetacored/config/client.toml            
sudo systemctl restart zetacored
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
    	    5)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:31658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:31657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6560\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":31660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:31657\"%" $HOME/.zetacored/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9590\"%; s%^address = \"localhost:9091\"%address = \"localhost:9591\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1817\"%" $HOME/.zetacored/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:31657\"%" $HOME/.zetacored/config/client.toml            
sudo systemctl restart zetacored
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
    	    6)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:32658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:32657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6660\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":32660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:32657\"%" $HOME/.zetacored/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9690\"%; s%^address = \"localhost:9091\"%address = \"localhost:9691\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1917\"%" $HOME/.zetacored/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:32657\"%" $HOME/.zetacored/config/client.toml            
sudo systemctl restart zetacored
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
    	    7)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:33658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:33657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6760\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":33660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:33657\"%" HOME/.zetacored/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9790\"%; s%^address = \"localhost:9091\"%address = \"localhost:9791\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:2017\"%" $HOME/.zetacored/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:33657\"%" $HOME/.zetacored/config/client.toml            
sudo systemctl restart zetacored
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
     	    8)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:34658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:34657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6860\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":34660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:34657\"%"  $HOME/.zetacored/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9890\"%; s%^address = \"localhost:9091\"%address = \"localhost:9891\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:2117\"%" $HOME/.zetacored/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:34657\"%" $HOME/.zetacored/config/client.toml            
sudo systemctl restart zetacored
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
			9)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:35658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:35657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6960\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":35660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:35657\"%" $HOME/.zetacored/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9990\"%; s%^address = \"localhost:9091\"%address = \"localhost:9991\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:2217\"%" $HOME/.zetacored/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:35657\"%" $HOME/.zetacored/config/client.toml            
sudo systemctl restart zetacored
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
    	    10)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:36658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:36657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:7060\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":36660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:36657\"%" "%" $HOME/.zetacored/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:10090\"%; s%^address = \"localhost:9091\"%address = \"localhost:10091\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:2317\"%" $HOME/.zetacored/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:36657\"%" $HOME/.zetacored/config/client.toml            
sudo systemctl restart zetacored
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
            *)
echo -e "\033[31mНеправильно вказаний порт, спробуйте ще раз.\e[0m"
            ;;
        esac
}

function port_menu4() {
        clear
        logo
        echo -e "\e[1m\e[32mОберіть порт який хочете встановити:\e[0m"
		echo -e "\e[1m\e[33m0\e[0m  - 26657 Default"
		echo -e "\e[1m\e[33m1\e[0m  - 27657"
		echo -e "\e[1m\e[33m2\e[0m  - 28657"
		echo -e "\e[1m\e[33m3\e[0m  - 29657"
		echo -e "\e[1m\e[33m4\e[0m  - 30657"
		echo -e "\e[1m\e[33m5\e[0m  - 31657"
		echo -e "\e[1m\e[33m6\e[0m  - 32657"
		echo -e "\e[1m\e[33m7\e[0m  - 33657"
		echo -e "\e[1m\e[33m8\e[0m  - 34657"
		echo -e "\e[1m\e[33m9\e[0m  - 35657"
		echo -e "\e[1m\e[33m10\e[0m - 36657"
		read -p "Ваш вибір від 0 до 10: " choice
		case "$choice" in
            0)
                
                ;;
             	1)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:27658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:27657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6160\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":27660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:27657\"%" $HOME/.babylond/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9190\"%; s%^address = \"localhost:9091\"%address = \"localhost:9191\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1417\"%" $HOME/.babylond/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:27657\"%" $HOME/.babylond/config/client.toml            
sudo systemctl restart babylond
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
                ;;
            2)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:28658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:28657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6260\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":28660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:28657\"%" $HOME/.babylond/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9290\"%; s%^address = \"localhost:9091\"%address = \"localhost:9291\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1517\"%" $HOME/.babylond/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:28657\"%" $HOME/.babylond/config/client.toml            
sudo systemctl restart babylond
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;; 
            3)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:29658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:29657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6360\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":29660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:29657\"%" "%" $HOME/.babylond/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9390\"%; s%^address = \"localhost:9091\"%address = \"localhost:9391\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1617\"%" $HOME/.babylond/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:29657\"%" $HOME/.babylond/config/client.toml            
sudo systemctl restart babylond
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
  		;;
    	    4)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:30658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:30657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6460\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":30660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:30657\"%" $HOME/.babylond/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9490\"%; s%^address = \"localhost:9091\"%address = \"localhost:9491\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1717\"%" $HOME/.babylond/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:30657\"%" $HOME/.babylond/config/client.toml            
sudo systemctl restart babylond
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
    	    5)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:31658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:31657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6560\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":31660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:31657\"%" $HOME/.babylond/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9590\"%; s%^address = \"localhost:9091\"%address = \"localhost:9591\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1817\"%" $HOME/.babylond/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:31657\"%" $HOME/.babylond/config/client.toml            
sudo systemctl restart babylond
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
    	    6)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:32658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:32657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6660\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":32660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:32657\"%" $HOME/.babylond/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9690\"%; s%^address = \"localhost:9091\"%address = \"localhost:9691\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:1917\"%" $HOME/.babylond/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:32657\"%" $HOME/.babylond/config/client.toml            
sudo systemctl restart babylond
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
    	    7)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:33658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:33657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6760\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":33660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:33657\"%" HOME/.babylond/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9790\"%; s%^address = \"localhost:9091\"%address = \"localhost:9791\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:2017\"%" $HOME/.babylond/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:33657\"%" $HOME/.babylond/config/client.toml            
sudo systemctl restart babylond
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
     	    8)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:34658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:34657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6860\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":34660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:34657\"%"  $HOME/.babylond/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9890\"%; s%^address = \"localhost:9091\"%address = \"localhost:9891\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:2117\"%" $HOME/.babylond/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:34657\"%" $HOME/.babylond/config/client.toml            
sudo systemctl restart babylond
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
			9)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:35658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:35657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:6960\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":35660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:35657\"%" $HOME/.babylond/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:9990\"%; s%^address = \"localhost:9091\"%address = \"localhost:9991\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:2217\"%" $HOME/.babylond/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:35657\"%" $HOME/.babylond/config/client.toml            
sudo systemctl restart babylond
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
    	    10)
sed -i.bak -e "s%^proxy_app = \"tcp://127.0.0.1:26658\"%proxy_app = \"tcp://127.0.0.1:36658\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:36657\"%; s%^pprof_laddr = \"localhost:6060\"%pprof_laddr = \"localhost:7060\"%; s%^prometheus_listen_addr = \":26660\"%prometheus_listen_addr = \":36660\"%; s%^laddr = \"tcp://127.0.0.1:26657\"%laddr = \"tcp://127.0.0.1:36657\"%" "%" $HOME/.babylond/config/config.toml &&
sed -i.bak -e "s%^address = \"localhost:9090\"%address = \"localhost:10090\"%; s%^address = \"localhost:9091\"%address = \"localhost:10091\"%; s%^address = \"tcp://localhost:1317\"%address = \"tcp://localhost:2317\"%" $HOME/.babylond/config/app.toml && 
sed -i.bak -e "s%^node = \"tcp://localhost:26657\"%node = \"tcp://localhot:36657\"%" $HOME/.babylond/config/client.toml            
sudo systemctl restart babylond
echo -e "\e[1m\e[32mПорт змінено та перезавантажено ноду\e[0m" && sleep 1
echo -e "\e[1m\e[32mПеревірте роботу ноди\e[0m"
	        ;;
            *)
echo -e "\033[31mНеправильно вказаний порт, спробуйте ще раз.\e[0m"
            ;;
        esac
}

function main_menu() {
    while true; do
        clear
        logo
        echo -e "\e[1m\e[35mВиберіть ноду для заміни портів:"
        echo -e "\e[1m\e[33m1\e[0m - Lava"
        echo -e "\e[1m\e[33m2\e[0m - Dymension"
        echo -e "\e[1m\e[33m3\e[0m - Zetachain"
        echo -e "\e[1m\e[33m4\e[0m - Babylon"
		echo -e "\e[1m\e[33m5\e[0m - Переглянути порти"
		echo -e "\e[1m\e[33m6\e[0m - Вийти"
        read -p "Зробіть ваш вибір, та введіть число: " choice
        case "$choice" in
            1)
                port_menu1
                ;;
            2)
                port_menu2
                ;;
            3)
                port_menu3
                ;;
			4)
                port_menu4
                ;;
			5)
                clear
				netstat -tuln
                ;;
            6)
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
		