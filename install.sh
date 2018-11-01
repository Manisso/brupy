#!/bin/bash
clear
echo "
███╗   ███╗ █████╗ ███╗   ██╗██╗███████╗███████╗ ██████╗
████╗ ████║██╔══██╗████╗  ██║██║██╔════╝██╔════╝██╔═══██╗
██╔████╔██║███████║██╔██╗ ██║██║███████╗███████╗██║   ██║
██║╚██╔╝██║██╔══██║██║╚██╗██║██║╚════██║╚════██║██║   ██║
██║ ╚═╝ ██║██║  ██║██║ ╚████║██║███████║███████║╚██████╔╝
╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝╚══════╝╚══════╝ ╚═════╝ 
▀▀█▀▀ █▀▀█ █▀▀█ █   █▀▀ ~ Tools Instaler By Ⓜ Ⓐ Ⓝ Ⓘ Ⓢ Ⓢ Ⓞ  ☪ ~
  █   █  █ █  █ █   ▀▀█ 
  ▀   ▀▀▀▀ ▀▀▀▀ ▀▀▀ ▀▀▀             
                                                ";

echo "[✔] Checking directories...";
if [ -d "/usr/share/doc/brupy" ] ;
then
echo "[◉] A directory brupy was found! Do you want to replace it? [Y/n]:" ; 
read mama
if [ $mama == "y" ] ; 
then
 rm -R "/usr/share/doc/brupy"
else
 exit
fi
fi

 echo "[✔] Installing ...";
 echo "";
 git clone https://github.com/Manisso/brupy.git /usr/share/doc/brupy;
 echo "#!/bin/bash 
 python /usr/share/doc/brupy/brupy.py" '${1+"$@"}' > brupy;
 chmod +x brupy;
 sudo cp brupy /usr/bin/;
 rm brupy;


if [ -d "/usr/share/doc/brupy" ] ;
then
echo "";
echo "[✔]Tool istalled with success![✔]";
echo "";
  echo "[✔]====================================================================[✔]";
  echo "[✔] ✔✔✔      You can execute brup suit by typing sudo brupy      ! ✔✔✔ [✔]"; 
  echo "[✔]====================================================================[✔]";
  echo "";
else
  echo "[✘] Installation faid![✘] ";
  exit
fi
