clear && echo "LET'S INSTALL"
termux-setup-storage
apt update && apt upgrade -y && apt install x11-repo 
apt install zsh jq pv rig fzf sl cowsay make mpv ffmpeg aview nmap tmux proot-distro asciinema cmatrix fortune libcaca gnupg unzip tigervnc lxqt neovim hexcurse hyperfine git tig python3 ruby rust gotty glow gum swi-prolog pforth ecl lua54 espeak wget figlet nodejs php newsboat irssi lynx -y
gem install lolcat
echo 'clear' >> $PREFIX/bin/cls
chmod +x $PREFIX/bin/cls
mkdir $HOME/.newsboat
echo "https://howtogeek.com/feed/" >> $HOME/.newsboat/urls
pd i alpine
curl -sL https://raw.githubusercontent.com/TBApknoob12MC/Termux-ide-tools/main/ncfe-install.sh | bash
curl https://zyedidia.github.io/eget.sh | sh 
mv eget $PREFIX/bin/eget
curl -O https://raw.githubusercontent.com/laraib07/androfetch/main/androfetch
chmod u+x androfetch
mv androfetch $PREFIX/bin/
androfetch -i
curl -fsSL https://raw.githubusercontent.com/sigoden/upt/main/install.sh | sh -s -- --to $PREFIX/bin
wget git.io/trans 
chmod +x trans 
mv trans $PREFIX/bin/trans
git clone https://github.com/jarun/googler.git
cd googler && make install && cd .. && rm -rf googler
git clone https://github.com/dylanaraps/fff
cd fff && make install && cd .. && rm -rf fff
mkdir hosted && cd hosted
git clone --depth=1 https://github.com/IrosTheBeggar/mStream.git
git clone --depth=1 https://github.com/raneto/example
mv example raneto
git clone --depth=1 https://github.com/vishnusatheeshpulickal/Chat-App
wget -O index.html https://raw.githubusercontent.com/TBApknoob12MC/tbapknoob12mc.github.io/main/index.html
wget -O index.php https://raw.githubusercontent.com/prasathmani/tinyfilemanager/master/tinyfilemanager.php
cd ..
mkdir fonts
cd fonts 
wget -O font.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/0xProto.zip 
unzip font.zip 
mv 0xProtoNerdFont-Bold.ttf $HOME/.termux/font.ttf
cd .. 
rm -rf fonts
git clone https://github.com/NvChad/starter ~/.config/nvim 
curl -fsSL https://install.ohmyz.sh/ | sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 
sed -i '/plugins=(git)/c\plugins=(git zsh-autosuggestions zsh-syntax-highlighting)' $HOME/.zshrc 
wget -O ~/.oh-my-zsh/themes/kali-like.zsh-theme https://raw.githubusercontent.com/clamy54/kali-like-zsh-theme/master/kali-like.zsh-theme 
sed -i '/ZSH_THEME="robbyrussell"/c\ZSH_THEME="kali-like"' $HOME/.zshrc
sed -i '/vid=no/c\#vid=no' $PREFIX/etc/mpv/mpv.conf
echo 'clear && figlet -f standard "TERMUX" | lolcat && androfetch | lolcat && export DISPLAY=:1' >> $HOME/.zshrc
chsh -s zsh
echo "tiny file manager user & passwd are admin : admin@123 and user : 12345 "
echo "tools successfully installed. exiting in 10 secs"
sleep 10
exit
