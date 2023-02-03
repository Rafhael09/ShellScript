#!/bin/bash

#################################

#Nome do script: vscode.sh
#Descrição: vscode
#Versão: 1.0
#Lincença: OpenSource
#Autor: Rafhael de Moraes Barbosa
#E-mail: rafhaeltec@gmail.com

#################################

sudo snap install code --classic
sudo rm -Rf /opt/vscode/*
sudo rm -Rf /opt/vscode/code
sudo rm -Rf /usr/share/applications/vscode.desktop
wget "https://go.microsoft.com/fwlink/?LinkID=620884" -O vscode.tar.gz
sudo tar -vzxf vscode.tar.gz -C /opt/
sudo mv /opt/VSCode*/ /opt/vscode/
sudo ln -sf /opt/vscode/code /usr/bin/code
echo -e '[Desktop Entry]\n Version=1.0\n Name=vscode\n Exec=/opt/vscode/code\n Icon=/opt/vscode/resources/app/resources/linux/code.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/vscode.desktop
sudo rm -Rf /opt/vscode/*
sudo rm -Rf /opt/vscode/code
sudo rm -Rf /usr/share/applications/vscode.desktop
