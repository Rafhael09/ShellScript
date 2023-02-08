#!/bin/bash

#################################

#Nome do script: soma.sh
#Descrição: Somar
#Versão: 1.0
#Lincença: OpenSource
#Autor: Rafhael de Moraes Barbosa
#E-mail: rafhaeltec@gmail.com

#################################

#Este é um simples script shell que calcula uma expressão matemática e armazena o resultado na variável result. A expressão é 9 * 9 + 5 * 5 - 9, que é avaliada como 81 + 25 - 9 = 97. O valor armazenado na variável result é então exibido usando o comando echo $result. O resultado final será 97.


result=$((9 * 9 + 5 * 5 - 9))
zenity --info --title="Resultado" --text="O resultado é: $result" --width=200 --height=100


