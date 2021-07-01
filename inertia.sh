#!/bin/bash
clear
NONE='\033[00m'
RED='\033[01;31m'
GREEN='\033[01;32m'
YELLOW='\033[01;33m'
PURPLE='\033[01;35m'
CYAN='\033[01;36m'
WHITE='\033[01;37m'
BOLD='\033[1m'
UNDERLINE='\033[4m'
apt install figlet
clear

echo -e "$YELLOW"
figlet "Tool"
echo -e "$CYAN"
figlet "Inertia v2"

echo -e "$GREEN"

echo "				written by inertia"
ppwd="${PWD}/"
cd code
mv .cmd.sh $ppwd
mv .theme.sh $ppwd
mv .loop.sh $ppwd
cd ..

cmd(){
bash .cmd.sh
}
theme(){
bash .theme.sh
}
loop(){
bash .loop.sh
}
extrakey(){
mkdir $HOME/.termux/ ;echo "extra-keys = [['ESC','/','-','HOME','UP','END'],['TAB','CTRL','ALT','LEFT','DOWN','RIGHT']]" >> $HOME/.termux/termux.properties && termux-reload-settings && sleep 1 && logout
}
echo -e "	${YELLOW}[1] Theme Changer."
echo "	[2] Cmd Maker."
echo "	[3] Text Looper."
echo -e "	[4] Extra Keys.${NONE}"

echo -e "\n"
printf "\e[1;31m Select Option : \e[0m"
read options
if [ "$options" -eq "1" ];then
         theme
fi
if [ "$options" -eq "2" ];then
         cmd
fi
if [ "$options" -eq "3" ];then
         loop
fi
if [ "$options" -eq "4" ];then
         extrakey
fi
