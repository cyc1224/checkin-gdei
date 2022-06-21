#!/bin/bash
echo "GDEI CHECKIN SCRIPT INSTALLER"
dir=~/checkin@gdei
if [ -d $dir ];then
    cd ~/checkin@gdei
else
    cd
    mkdir checkin@gdei
    cd ~/checkin@gdei
fi
file='key.txt'
if [ -e $file ];then
    echo "PUSH SERVER ALREADY INSTALLED"
else
    wget https://github.com/cyc1224/checkin-gdei/checkin@gdei/push.py
    python push.py
fi
file='id.txt'
if[ -e $file ];then
    echo "CHECKIN SERVER ALREADY INSTALLED"
    exit 0
else
    read -p "ENTER USERNAME:" username
    echo "密码明文保存，请在安全环境使用该脚本"
    read -p "ENTER PASSWORD:" password
    echo $username
    $password > id.txt
    script='linux.py'
    if[ -e $script ];then
    else
    wget https://github.com/cyc1224/checkin-gdei/checkin@gdei/linux.py
    sed -i "s#$username$#$username#g" linux.py
    sed -i "s#$password$#$password#g" linux.py
    python linux.py
fi
exit 0
