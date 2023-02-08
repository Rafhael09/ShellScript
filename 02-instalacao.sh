#!/bin/bash

#################################

#Nome do script: instalacao.sh
#Descrição: Instalações
#Versão: 1.0
#Lincença: OpenSource
#Autor: Rafhael de Moraes Barbosa
#E-mail: rafhaeltec@gmail.com

#################################

#sudo apt-get update
#sudo apt-get install -y net-tools
#sudo apt-get install -y vlc

#!/bin/bash

# Atualizar os pacotes disponíveis


(
    echo  "10" ; sleep 1
    echo "# Atualizando os pacotes disponíveis..." ; sleep 1
    sudo apt-get update -q ; sleep 1
    echo  "100" ; sleep 1
) | zenity --progress --title="Atualização de pacotes" --text="Atualizando pacotes disponíveis..." --auto-close

# Instalar o pacote net-tools
(
    echo "10" ; sleep 1
    echo "# Instalando o pacote 'net-tools'..." ; sleep 1
    sudo apt-get install -y --no-install-recommends net-tools ; sleep 1
    echo "100" ; sleep 1
) | zenity --progress --title="Instalação do pacote 'net-tools'" --text="Instalando o pacote 'net-tools'..." --auto-close

# Instalar o pacote vlc
(
    echo "10" ; sleep 1
    echo "# Instalando o pacote 'vlc'..." ; sleep 1
    sudo apt-get install -y --no-install-recommends vlc ; sleep 1
    echo "100" ; sleep 1
) | zenity --progress --title="Instalação do pacote 'vlc'" --text="Instalando o pacote 'vlc'..." --auto-close

zenity --info --title="Instalação concluída" --text="A instalação foi concluída com sucesso."


