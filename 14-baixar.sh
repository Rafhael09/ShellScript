#!/bin/bash

#################################

#Nome do script: baixar.sh
#Descrição: Baixar
#Versão: 1.0
#Lincença: OpenSource
#Autor: Rafhael de Moraes Barbosa
#E-mail: rafhaeltec@gmail.com

#################################

#Baixar iso ubunto.

zenity --question --title="Baixar Arquivo" --text="Deseja baixar o arquivo de https://ubuntu.com/download/desktop/thank-you?version=22.04.1&architecture=amd64?"
if [ $? -eq 0 ]; then
  wget "https://ubuntu.com/download/desktop/thank-you?version=22.04.1&architecture=amd64" 
  zenity --info --title="Sucesso" --text="O arquivo foi baixado com sucesso." --width=200 --height=100
else
  zenity --info --title="Cancelado" --text="O download do arquivo foi cancelado." --width=200 --height=100
fi

