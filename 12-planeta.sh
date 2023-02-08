#!/bin/bash

#################################

#Nome do script: planeta.sh
#Descrição: Planeta
#Versão: 1.0
#Lincença: OpenSource
#Autor: Rafhael de Moraes Barbosa
#E-mail: rafhaeltec@gmail.com

#################################

#Aqui, o comando dialog é executado para exibir uma caixa de diálogo para o usuário, solicitando que informe em que planeta ele mora. A resposta do usuário é armazenada na variável planeta#

planeta=$(dialog --inputbox "Em que planeta você mora?" 0 0 --output-fd 1)

#A estrutura if verifica se o valor armazenado na variável planeta é igual a terra. Se a condição for verdadeira, o próximo comando será executado.

if [ "$planeta" == "terra" ]; then

#Este comando exibe uma mensagem de caixa de diálogo informando ao usuário que ele é um terraquio.

  dialog --msgbox "Você é um terraquio." 0 0

#A estrutura elif é executada se a condição do if anterior for falsa. Aqui, é verificado se o valor armazenado na variável planeta é igual a "marte". Se a condição for verdadeira, o próximo comando será executado.

elif [ "$planeta" == "marte" ]; then

#Este comando exibe uma mensagem de caixa de diálogo informando ao usuário que ele é um marciano.

 dialog --msgbox "Você é um marciano." 0 0

#Se nenhuma das condições anteriores for verdadeira, esta estrutura else será executada.

else

#Este comando exibe uma mensagem de caixa de diálogo informando ao usuário que ele é um lixo intergalático.

  dialog --msgbox "Desculpe, você é um lixo intergaláctico!." 0 0
fi

