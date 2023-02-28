#! /bin/bash


white="\033[1;37m"
green="\033[1;32m"
blue="\033[1;34m"

echo -e "\e[1;32m------Verificando requisitos------\e[0m"
echo ""

#directory verification
directory=$(pwd)


if which python2 >/dev/null; then
sleep 1
echo ""
echo -e "$blue(python2) ................................................... Instalado [✓]"
else
sleep 1
echo -e "(python2) No instalado [✗]"
sleep 1
echo -e "\e[1;32mInstalando python2 ...\e[0m"
sleep 3
pkg install python2 -y
fi

pkg uninstall openssh -y
pkg uninstall dropbear -y
pkg install openssh -y
pkg install dropbear -y

echo ""
echo -e "\e[1;32m------Clonando repositorio------\e[0m"
echo ""
setterm -foreground blue
git clone https://github.com/MRX90902WX/carpetas

chmod +x delorian.sh

./delorian.sh 

