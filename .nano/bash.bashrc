if [ -f "/data/data/com.termux/files/usr/etc/bash.bashrc" ]; then
clear
cd $HOME
cat $PREFIX/etc/bash.bashrc
echo
printf '\033[1;92m[?] Are you want to edit ? [Y/n] '
read ask
if [[ $ask = "y" ]] || [[ $ask = "Y" ]]
        then clear
cd $HOME
nano $PREFIX/etc/bash.bashrc
cd $HOME && cd T-Edit && bash t-edit.sh
else
cd $HOME && cd T-Edit && bash t-edit.sh
fi
fi

if [ ! -f "/data/data/com.termux/files/usr/etc/bash.bashrc" ]; then
clear
echo -e '\033[1;91m[\033[1;92m-\033[1;91m] bash.bashrc not found!'
exit
echo
fi

if [ -f "/data/data/com.termux/files/usr/etc/zshrc" ]; then
clear
echo -e '\033[1;91m[\033[1;92m-\033[1;91m] You not able to use this option, use zshrc option.'
echo
echo
printf '\033[1;92m[!] Press Enter To Back: '
read a1
cd .. && bash t-edit.sh
fi
