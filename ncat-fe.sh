clear && figlet NCAT-FE
echo " "
echo "[1] ncat server "
echo "[2] ncat client "
echo "[3] multi chat server "
echo "[4] shell server "
echo "[5] shell client "
echo "[6] html server "
echo "[7] html download "
echo "[8] exit "
read -p "select option: " ch

if [ $ch -eq 1 ];then
    read -p "port:" port
    ncat -nvlp $port
elif [ $ch -eq 2 ];then
    read -p "server ip:" srvip
    read -p "server port:" srvport
    ncat $srvip $srvport
elif [ $ch -eq 3 ];then
    read -p "chat port:" chport
    ncat -nvlp $chport --chat
elif [ $ch -eq 4 ];then
    read -p "shell port:" shport
    /bin/sh | ncat -nvlp $shport
elif [ $ch -eq 5 ];then
   read -p "server ip:" srvip
   read -p "server port:" srvport 
   /bin/sh | ncat $srvip $srvport 
elif [ $ch -eq 6 ];then
    read -p "enter filename:" file
    read -p "enter port:" webport
    for ((;;));
    do
        { echo -e 'HTTP/1.1 200 OK\r\n'; cat $HOME/.ncat-fe/html/${file}.html; } | ncat -l -p $webport
    done
elif [ $ch -eq 7 ];then
    read -p "enter url to download:" url
    read -p "enter filename:" fname
    wget -O $HOME/.ncat-fe/html/${fname}.html $url
elif [ $ch -eq 8 ];then
    echo "exiting in 5 secs"
    sleep 5
    exit
else
    echo " not an option lol"
    exit
fi
