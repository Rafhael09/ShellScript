#!/bin/bash

#################################

#Nome do script: login.sh
#Descrição: Login
#Versão: 1.0
#Lincença: OpenSource
#Autor: Rafhael de Moraes Barbosa
#E-mail: rafhaeltec@gmail.com

#################################

#Declarar variáveis.

username="rafhael"
password="123"

# Função para exibir a tela de login.

display_login() {
    zenity --password --username --title="Login Screen"
}

# Função para verificar as credenciais de login.

check_login() {
    username_input=$(echo $? | cut -d '|' -f1)
    password_input=$(echo $? | cut -d '|' -f2)

    if [ "$username_input" == "$username" ] && [ "$password_input" == "$password" ]; then
        zenity --info --text="Access granted!"
        break
    else
        zenity --error --text="Access denied. Incorrect username or password."
    fi
}

# Repetir até que o login seja bem-sucedido.

while true; do
    display_login
    check_login
done

