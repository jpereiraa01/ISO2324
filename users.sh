#!/bin/bash
#Entregable 4
#
#Autor:Jorge Pereira Antolin
#Fecha:06/02/2024

clear

IFS=":"

date=$(date  +%d-%m-%Y)

hour=$(date +%H:%M)

executor=$(whoami)

cont=0

limite=0

if [ $# == 0 ];then

	limite=1000

else

	limite=$1

fi

echo "========================================"

echo

while read user x uid gid g home shell

do

	if [ $uid -ge $limite ];then

		echo $user - $uid
		let cont=cont+1

	fi

done < /etc/passwd

echo

echo "Total: $cont"

echo

echo "========================================="

echo

echo "$date - $hour - El usuario $executor ha solicitado un informe de usuarios" >> /tmp/logeventos
