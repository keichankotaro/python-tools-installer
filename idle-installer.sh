echo -e "\n"
echo -e "\e[33m [INFO] パッケージを最新にしています... \e[m"
echo -e "\n"
sleep 1
sudo apt -y update
echo -e "\n"
echo -e "\e[32m [✓] パッケージの状態を最新にしました。 \e[m"
echo -e "\n"
sleep 1
echo -e "\e[33m [INFO] IDLEをインストールします。"
sleep 0.5
echo -e "\e[33m [INFO] インストールするIDLEのバージョン:"$1
echo -e "\n"
sleep 1
sudo apt -y install idle-python$1
echo -e "\n"
sleep 1
echo -e "\e[32m [✓] インストールが完了しました。 \e[m"
