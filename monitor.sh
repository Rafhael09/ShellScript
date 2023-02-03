#!/bin/bash

#################################

#Nome do script: nome.sh
#Descrição: Pergunte em caixa
#Versão: 1.0
#Lincença: OpenSource
#Autor: Rafhael de Moraes Barbosa
#E-mail: rafhaeltec@gmail.com

#################################

zenity --progress --pulsate --text="Vigiando o saci.txt" &
pid=$!
while true
do
  if [ -f "saci.txt" ]; then
      echo "Alguém criou o saci.txt"
      sudo   rm "saci.txt"
      echo "Saci foi removido com sucesso!"
      kill $pid
      zenity --info --text="Saci foi removido com sucesso!"
      zenity --progress --pulsate --text="Vigiando o saci.txt" &
pid=$!
  fi
  sleep 1
done

