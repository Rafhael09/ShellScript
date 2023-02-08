#!/bin/bash

#################################

#Nome do script: atualizar.sh
#Descrição: Atualizar
#Versão: 1.0
#Lincença: OpenSource
#Autor: Rafhael de Moraes Barbosa
#E-mail: rafhaeltec@gmail.com

#################################


zenity --question --title="Atualização de Pacotes" --text="Deseja atualizar a lista de pacotes, pacotes instalados e remover pacotes desnecessários?" 
if [ $? -eq 0 ]; then
  zenity --info --title="Atualizando lista de pacotes" --text="Atualizando lista de pacotes..." --width=200 --height=100
  sudo apt-get update

  zenity --info --title="Atualizando pacotes instalados" --text="Atualizando pacotes instalados..." --width=200 --height=100
  sudo apt-get upgrade -y

  zenity --info --title="Removendo pacotes desnecessários" --text="Removendo pacotes desnecessários..." --width=200 --height=100
  sudo apt-get autoremove -y
else
  zenity --info --title="Cancelado" --text="A atualização de pacotes foi cancelada." --width=200 --height=100
fi

