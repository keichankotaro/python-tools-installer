PYTHON_VERSION=$1
PYTHON_3_7=3.7
PYTHON_3_8=3.8
if [ "$1" != "3.7" ]; then
	if [ "$1" != "3.8" ]; then
		echo -e "\e[35m [ERROR] 3.7 または 3.8 をコマンドライン引数に入れてください。"
		exit 0
	fi
fi
echo -e "\e[33m [INFO] インストールするPythonのバージョン:"$PYTHON_VERSION" \e[m"
sleep 0.5
echo -e "\n"
echo -e "\e[33m [INFO] インストールを開始します。 \e[m"
sleep 0.5
echo -e "\n"
echo -e "\e[33m [INFO] パッケージを最新にしています... \e[m"
echo -e "\n"
sleep 1
sudo apt -y update
echo -e "\n"
echo -e "\e[32m [✓] パッケージの状態を最新にしました。 \e[m"
sleep 0.5
echo -e "\n"
echo -e "\e[33m [INFO] Pythonをインストールします... \e[m"
sleep 1
echo -e "\n"
sudo apt -y install python$1
echo -e "\n"
echo -e "\e[32m [✓] Pythonのインストールが完了しました。 \e[m"
sleep 0.5
echo -e "\n"
echo -e "\e[33m [INFO] Python"$1"-devをインストールします... \e[m"
sleep 1
echo -e "\n"
sudo apt -y install python$1-dev
echo -e "\n"
echo -e "\e[32m [✓] Python"$1"-devのインストールが完了しました。 \e[m"
sleep 0.5
echo -e "\n"
echo -e "\e[33m [INFO] Python3-pipをインストールします... \e[m"
sleep 1
echo -e "\n"
sudo apt -y install python3-pip
echo -e "\n"
echo -e "\e[32m [✓] Python3-pipのインストールが完了しました。 \e[m"
sleep 1
echo -e "\n\n"
echo -e "\e[32m [✓] すべての作業が完了しました。 \e[m"
