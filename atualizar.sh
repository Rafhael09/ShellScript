#!/bin/bash

#################################

#Nome do script: atualizar.sh
#Descrição: Atualizar
#Versão: 1.0
#Lincença: OpenSource
#Autor: Rafhael de Moraes Barbosa
#E-mail: rafhaeltec@gmail.com

#################################


echo "Atualizando lista de pacotes..."
sudo apt-get update

echo "Atualizando pacotes instalados..."
sudo apt-get upgrade -y

echo "Removendo pacotes desnecessários..."
sudo apt-get autoremove -y
