#!/data/data/com.termux/files/usr/bin/zsh
source "$HOME/storage/shared/termuxlauncher/.apps-launcher"
hook=0
stfu(){
hook=1
exit 1
}
trap "stfu" SIGINT SIGTERM
while [ $hook -eq 0 ];do
launch `launch --list | fzf`
sleep 3
done
