#!/bin/bash

#################################

#Nome do script: tela.sh
#Descrição: Tela
#Versão: 1.0
#Lincença: OpenSource
#Autor: Rafhael de Moraes Barbosa
#E-mail: rafhaeltec@gmail.com

#################################

#Este é um script shell que usa o comando dialog para exibir uma caixa de mensagem na tela com o texto Seja bem-vindo ao sistema. A opção --msgbox é usada para exibir a caixa de mensagem. Os números 5 e 40 representam, respectivamente, a largura e a altura da caixa de mensagem em número de caracteres. A caixa de mensagem exibirá a mensagem Seja bem-vindo ao sistema centralizada dentro de uma área de largura de 40 caracteres e altura de 5 linhas.

dialog --msgbox 'Seja bem-vindo ao sistema' 5 40
