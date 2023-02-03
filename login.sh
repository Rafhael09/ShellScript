#!/bin/bash

#################################

#Nome do script: login.sh
#Descrição: Login
#Versão: 1.0
#Lincença: OpenSource
#Autor: Rafhael de Moraes Barbosa
#E-mail: rafhaeltec@gmail.com

#################################

# Declare variables
username="rafhael"
password="123"

# Function to display login screen
display_login() {
    clear
    echo "Welcome to the login screen"
    echo "Please enter your username:"
    read -p "Username: " username
    echo "Please enter your password:"
    read -s -p "Password: " password
    echo
}

# Function to check login credentials
check_login() {
    # Replace "correct_username" and "correct_password" with your desired values
    if [ "$username" == "correct_username" ] && [ "$password" == "correct_password" ]; then
        echo "Access granted!"
    else
        echo "Access denied. Incorrect username or password."
    fi
}

# Loop until login is successful
while true; do
    display_login
    check_login
    if [ "$username" == "correct_username" ] && [ "$password" == "correct_password" ]; then
        break
    fi
done
