PYTHON_VERSION=$1
PYTHON_3_7=3.7
PYTHON_3_8=3.8
if [ "$1" != "3.7" ]; then
        if [ "$1" != "3.8" ]; then
                echo -e "\e[35m [ERROR] 3.7 または 3.8 をコマンドライン引数に入れてください。"
                exit 0
        fi
fi
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
echo -e "\n"
echo -e "\e[33m [INFO] インストールするIDLEのバージョン:"$1"\e[m"
echo -e "\n"
sleep 1
sudo apt -y install idle-python$1
echo -e "\n\n"
sleep 1
echo -e "\e[32m [✓] インストールが完了しました。 \e[m"
