#$!/bin/bash
#
#Realizar un script denominado calculadora.sh que implemente una calculadora sencilla
#Autor:Jorge Pereira Antolin
#Fecha:23/01/2024

clear

echo "Jorge Pereira Antolin"

if [ $# -ne 2 ]; then
	echo "El numero de parametros es insuficiente"
	exit
fi

if [ -f $1 ];then
	echo "El fichero ya existe"
	exit
fi


while true; do


read -p "Operacion: op1 op2" op op1 op2

	case $op in

		s)
			echo "$op $op1 $op2" > $1
			r=$(($op1+$op2))
			echo "El resultado de $op1 + $op2 es $r"
		;;
		r)
			echo "$op $op1 $op2" > $1
			r=$(($op1-$op2))
			echo "El resultado de $op1 - $op2 es $r"
		;;
		m)
			echo "$op $op1 $op2" > $1
			r=$(($op1*$op2))
			echo "El resultado de $op1 * $op2 es $r"
		;;
		d)
			echo "$op $op1 $op2" > $1
			r=$(($op1/$op2))
	                echo "El resultado de $op1 / $op2 es $r"
		;;
		x)
			echo "Saliendo del script"
			break
		;;
		*)
			echo "Error"
			exit
		;;

	esac

done

p=$(pwd)
echo "$p/$1"
cat $1
