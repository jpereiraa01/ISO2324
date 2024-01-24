#$!/bin/bash
#
#Ejercicio 1 para entregar en github
#Autor:Jorge Pereira
#Fecha:19/01/2024

clear

while true; do

echo "Pulse 1 para añadir una entrada" 1
echo "Pulse 2 para buscar por dni" 2
echo "Pulse 3 para ver la agenda completa" 3
echo "Pulse 4 para eliminar todas las entradas de la agenda" 4
echo "Pulse 5 para finalizar" 5
echo " "

read -p "Introduzca una opcion:" opcion

	case $opcion in

		1)
		read -p "Escribe un dni:" dni > agenda.txt
		if [ $dni = 0 ];then
			echo "El dni ya está dado de alta"
		else
			read -p "Escribe un nombre:" nom
			read -p "Escribe los apellidos:" ape
			read -p "Escribe una localidad:" loc
		fi
		;;
		2)
		read -p "Introduce un dni:"
		if [ $dni != 0 ];then
			echo "  "
			echo "$nom,$ape,$loc"
		else
			echo "$dni no ha sido encontrado"
		;;
		3)
		if [ $agenda != 0 ];then
			echo "Mostrando agenda" > agenda.txt
		else
			echo "Agenda vacia, no se puede mostrar"
		fi
		;;
		4)
		echo "Borrando el contenido de la agenda"
		rm -r > agenda.txt
		;;
		5)
		echo "Finalizando..."
		exit
		break
		;;

	esac

done
