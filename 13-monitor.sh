#!/bin/bash

#################################

#Nome do script: monitor.sh
#Descrição: Monitora saci
#Versão: 1.0
#Lincença: OpenSource
#Autor: Rafhael de Moraes Barbosa
#E-mail: rafhaeltec@gmail.com

#################################

#Esse shell script usa o comando zenity para exibir uma barra de progresso com um texto Vigiando o saci.txt, que irá piscar enquanto o script estiver em execução. O script então entra em um loop infinito que verifica a existência do arquivo saci.txt. Se o arquivo existir, o script usa o comando sudo rm para removê-lo e exibe uma mensagem de sucesso usando o comando zenity --info --text. Em seguida, o processo de barra de progresso é reiniciado. O loop é executado a cada 1 segundo.

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

