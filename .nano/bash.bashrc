if [ -n "/data/data/com.termux/files/usr/etc/bash.bashrc" ]; then
clear
fi

if [ ! -n "/data/data/com.termux/files/usr/etc/bash.bashrc" ] || [ -d "/data/data/com.termux/files/usr/etc/zshrc" ]; then
clear
echo -e '\033[1;91m[\033[1;92m-\033[1;91m] You not able to use this option, use other option.'
fi
