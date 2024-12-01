apt update && apt install nmap figlet -y
rm -f $PREFIX/bin/ncat-fe
mkdir $HOME/.ncat-fe
mkdir $HOME/.ncat-fe/html
wget -O $PREFIX/bin/ncat-fe https://raw.githubusercontent.com/TBApknoob12MC/Termux-improver/main/ncat-fe
chmod +x $PREFIX/bin/ncat-fe
