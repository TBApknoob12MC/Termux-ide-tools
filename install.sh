clear && echo "LET'S INSTALL"
termux-setup-storage
apt update && apt upgrade -y && apt install x11-repo 
apt install zsh jq fzf sl cowsay make mpv ffmpeg nmap tmux proot-distro asciinema cmatrix fortune libcaca gnupg unzip tigervnc fluxbox neovim hexcurse hyperfine git tig python3 ruby rust gotty glow gum swi-prolog pforth wget figlet nodejs newsboat irssi lynx -y
gem install lolcat
echo 'clear' >> $PREFIX/bin/cls
chmod +x $PREFIX/bin/cls
mkdir $HOME/.newsboat
echo "https://howtogeek.com/feed/" >> $HOME/.newsboat/urls
pd i alpine
curl -sL https://raw.githubusercontent.com/TBApknoob12MC/Termux-improver/main/ncfe-install.sh | bash
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
echo 'clear && figlet -f standard "TERMUX" | lolcat && androfetch | lolcat && export DISPLAY=:0' >> $HOME/.zshrc
echo "tools successfully installed. exiting in 10 secs"
sleep 10
exit
