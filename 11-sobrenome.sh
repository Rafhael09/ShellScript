#!/bin/bash

#################################

#Nome do script: sobrenome.sh
#Descrição: Sobrenome
#Versão: 1.0
#Lincença: OpenSource
#Autor: Rafhael de Moraes Barbosa
#E-mail: rafhaeltec@gmail.com

#################################

#Abre uma caixa dialog perguntando nome em seguinda sobrenome.

nome=$(dialog --inputbox "Qual é o seu nome?" 10 60 3>&1 1>&2 2>&3)

sobrenome=$(dialog --inputbox "Qual é o seu sobrenome?" 10 60 3>&1 1>&2 2>&3)

#Abre um caixa dialog respondendo.

dialog --msgbox "Muito prazer em conhecê-lo, $nome $sobrenome!" 10 60 
