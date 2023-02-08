#!/bin/bash

#################################

#Nome do script: usuarios.sh
#Descrição: Ver usuarios
#Versão: 1.0
#Lincença: OpenSource
#Autor: Rafhael de Moraes Barbosa
#E-mail: rafhaeltec@gmail.com

#################################

#Lista os usúarios do sistema.

usuarios=$(cat /etc/passwd | cut -d: -f1)

zenity --info --title="Usuários do Sistema" --text="$usuarios"


