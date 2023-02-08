#!/bin/bash

#################################

#Nome do script: permissao.sh
#Descrição: Permissão
#Versão: 1.0
#Lincença: OpenSource
#Autor: Rafhael de Moraes Barbosa Colaborador: Cristhian Bini
#E-mail: rafhaeltec@gmail.com

#################################

#Este é um script shell que usa o comando chmod para conceder permissão de execução a todos os arquivos com extensão .sh na pasta /home/rafha/scripts/. O comando chmod +x é usado para conceder a permissão executável aos arquivos especificados, permitindo que eles sejam executados como scripts. Dessa forma, todos os scripts com extensão .sh na pasta /home/rafha/scripts/ poderão ser executados depois de terem permissão de execução concedida.

#chmod +x /home/rafha/scripts/*.sh


zenity --question --title="Definir Permissões" --text="Deseja definir as permissões de execução para todos os scripts na pasta /home/rafha/scripts?" 
if [ $? -eq 0 ]; then
  chmod +x /home/rafha/scripts/*.sh
  zenity --info --title="Permissões Definidas" --text="Permissões de execução definidas com sucesso para todos os scripts na pasta /home/rafha/scripts." --width=200 --height=100
else
  zenity --info --title="Cancelado" --text="A definição de permissões foi cancelada." --width=200 --height=100
fi
