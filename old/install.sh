!/bin/bash
echo "GDEI CHECKIN SCRIPT INSTALLER"
apt-get install -y chromium-browser chromium-driver qrencode
pip install selenium webdriver-manager
dir=~/checkin@gdei
if [ -d $dir ];then
    cd ~/checkin@gdei
else
    cd ~/
    mkdir checkin@gdei
    cd ~/checkin@gdei
fi
script='push.py'
file='key.txt'
if [ -e $script ];then
    if [ -e $file ];then
        echo "PUSH SERVER ALREADY INSTALLED"
    else
        echo > key.txt
        python push.py
    fi
else
    wget https://raw.githubusercontent.com/cyc1224/checkin-gdei/main/checkin@gdei/push.py
    if [ -e $file ];then
        echo "PUSH SERVER INSTALLED"
    else
        echo > key.txt
        python push.py
    fi
fi
script='linux.py'
file='id.txt'
if [ -e $script ];then
    if [ -e $file ];then
        echo "CHECKIN SERVER ALREADY INSTALLED"
        exit
    else
        read -p "ENTER USERNAME:" username
        echo "密码明文保存，请在安全环境使用该脚本"
        read -p "ENTER PASSWORD:" password
        echo -e "$username\n$password" > id.txt
        if [ -e $script ];then
            sed -i 's/#username#/'"$username"'/g' linux.py
            sed -i 's/#password#/'"$password"'/g' linux.py
        else
            echo "1"
        fi
    fi
else
    wget https://raw.githubusercontent.com/cyc1224/checkin-gdei/main/checkin@gdei/linux.py
    if [ -e $file ];then
        echo "CHECKIN SERVER INSTALLED"
        exit
    else
        read -p "ENTER USERNAME:" username
        echo "密码明文保存，请在安全环境使用该脚本"
        read -p "ENTER PASSWORD:" password
        echo -e "$username\n$password" > id.txt
        if [ -e $script ];then
            sed -i 's/#username#/'"$username"'/g' linux.py
            sed -i 's/#password#/'"$password"'/g' linux.py
        else
            echo "1"
        fi
    fi
fi
echo "安装成功，请手动执行程序：python ~/checkin@gdei/linux.py"
exit
