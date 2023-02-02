#!/bin/bash

#################################

#Nome do script: planeta.sh
#Descrição: Planeta
#Versão: 1.0
#Lincença: OpenSource
#Autor: Rafhael de Moraes Barbosa
#E-mail: rafhaeltec@gmail.com

#################################


planeta=$(dialog --inputbox "Em que planeta você mora?" 0 0 --output-fd 1)

if [ "$planeta" == "terra" ]; then
  dialog --msgbox "Você é um terraquio." 0 0
elif [ "$planeta" == "marte" ]; then
  dialog --msgbox "Você é um marciano." 0 0
else
  dialog --msgbox "Desculpe, você é um lixo intergaláctico!." 0 0
fi

