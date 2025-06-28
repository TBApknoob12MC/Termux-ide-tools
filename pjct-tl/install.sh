#!/data/data/com.termux/files/usr/bin/sh
#setup storage, update package repository & install stuff
termux-setup-storage
apt update
apt install wget pv fzf lynx git gh tmux zsh make screenfetch nnn micro -y
#install ohmyzsh
curl -fsSL https://install.ohmyz.sh | sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
sed -i '/plugins=(git)/c\plugins=(git zsh-autosuggestions zsh-syntax-highlighting)' $HOME/.zshrc
chsh -s zsh
mkdir $HOME/.config
cd $HOME/.config
mkdir $HOME/.config/appls
cd appls
curl -fssL https://raw.githubusercontent.com/TBApknoob12MC/Termux-ide-tools/main/pjct-tl/applist.sh > applist.sh
curl -fssL https://raw.githubusercontent.com/TBApknoob12MC/Termux-ide-tools/main/pjct-tl/quicklist.sh > quicklist.sh
curl -fssL https://raw.githubusercontent.com/TBApknoob12MC/Termux-ide-tools/main/pjct-tl/appls > $PREFIX/bin/appls
chmod +x applist.sh quicklist.sh $PREFIX/bin/appls
cd
curl -fssL https://raw.githubusercontent.com/TBApknoob12MC/Termux-ide-tools/main/pjct-tl/zshappend >> .zshrc
cd $HOME/.termux/
curl -fssL https://raw.githubusercontent.com/TBApknoob12MC/Termux-ide-tools/main/pjct-tl/term.prop > termux.properties

