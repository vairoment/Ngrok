#!/bin/bash

while :
do
 
       echo -e -n "¿Quieres Instalar Ngrok?

       [1] SI
       [2] NO
       
       >>> "
       read -r respuesta
       [ "$respuesta" == "1" ]|| [ "$respuesta" == "2" ] && break
       echo -e "OPCION INCORRECTA"
       sleep 2
       clear
done
case $respuesta in
	1)
		echo -e "Instalando Ngrok..."
		chmod 777 ngrok-stable-linux-arm.zip
		unzip ngrok-stable-linux-arm.zip
		cp ngrok $PREFIX/bin
		echo -e -n "Escribe el authtoken de ngrok >>> "
		read -r Nauthtoken
		$Nauthtoken
		clear

		echo -e "Negrok instalado Correctamente"
		;;
	2)
		echo -e "Gracias por usar mi cript att:Vairoment"
esac
