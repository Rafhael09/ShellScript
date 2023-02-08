#!/bin/bash

#################################

#Nome do script: backup.sh
#Descrição: backup
#Versão: 1.0
#Lincença: OpenSource
#Autor: Rafhael de Moraes Barbosa
#E-mail: rafhaeltec@gmail.com

#################################

#Faz backup da pasta scripts.

zenity --question --title="Fazer Backup" --text="Deseja fazer backup dos arquivos .sh em /home/rafha/scripts/ para /home/rafha/bkp?"
if [ $? -eq 0 ]; then
  cp /home/rafha/scripts/*.sh /home/rafha/bkp
  zenity --info --title="Sucesso" --text="O backup dos arquivos foi feito com sucesso." --width=200 --height=100
else
  zenity --info --title="Cancelado" --text="O backup dos arquivos foi cancelado." --width=200 --height=100
fi

