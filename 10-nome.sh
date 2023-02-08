#!/bin/bash

#################################

#Nome do script: nome.sh
#Descrição: Pergunte em caixa
#Versão: 1.0
#Lincença: OpenSource
#Autor: Rafhael de Moraes Barbosa
#E-mail: rafhaeltec@gmail.com

#################################

#Abre uma caixa de diálogo dialog perguntando qual o nome, em seguida respondendo.

nome=$(dialog --inputbox "Qual é o seu nome?" 10 60 3>&1 1>&2 2>&3)

dialog --title "Resultado" --msgbox "Olá, $nome!" 10 60
