if [ -n "/data/data/com.termux/files/usr/etc/bash.bashrc" ]; then
clear
fi

if [ ! -n "/data/data/com.termux/files/usr/etc/bash.bashrc" ]; then
clear
echo -e '\033[1;91m[\033[1;92m-\033[1;91m] bash.bashrc not found!'
exit
echo
fi

if [ -n "/data/data/com.termux/files/usr/etc/zshrc" ]; then
clear
echo -e '\033[1;91m[\033[1;92m-\033[1;91m] You not able to use this option, use zshrc option.'
echo
echo
printf '\033[1;92m[!] Press Enter To Back: '
read a1
cd .. && bash t-edit.sh
fi
