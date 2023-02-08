#!/bin/bash

#################################

#Nome do script: perguntas.sh
#Descrição: Faz perguntas
#Versão: 1.0
#Lincença: OpenSource
#Autor: Rafhael de Moraes Barbosa
#E-mail: rafhaeltec@gmail.com

#################################

# This is comment

# Defining a variable
#echo "Olâ, qual seu nome?"
# Reading input	
#read NAME
# Defining a variable
#GREETINGS="! Tudo bem com você?"
#echo $NAME $GREETINGS


name=$(zenity --entry --text="Olá, qual é o seu nome?")

greetings=$(zenity --info --text="$name, tudo bem com você?")
