#!/bin/bash
echo -e '\033[1m\033[38;2;200;0;150m
┏━━┓ ┏━┓┏┳┳┓
┗┓┏┻━┫┳╋┛┣┫┗┓
 ┃┣━━┫┻┫╋┃┃┏┫
 ┗┛  ┗━┻━┻┻━┛'
echo
printf "\e[1;92m[\e[0m\e[1;77m1\e[0m\e[1;92m]\e[0m\e[1;92m bash.bashrc"
echo
echo
printf "\e[1;92m[\e[0m\e[1;77m2\e[0m\e[1;92m]\e[0m\e[1;92m zshrc"
echo
printf $'\n\e[1;91m[\e[0m\e[1;77m!\e[0m\e[1;91m] Choose an option: \e[0m'
read nano
if [[ $nano = "1" ]] || [[ $nano = "01" ]]
        then clear
cd .nano && bash bash.bashrc

elif [[ $nano = "2" ]] || [[ $nano = "02" ]]
        then clear
cd .nano && bash zshrc

else
echo
printf "\e[1;91m[!] Invalid option! ~Restarting..\e[0m\n"
sleep 1
bash t-edit.sh
fi
