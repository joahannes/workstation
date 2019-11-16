#!/bin/bash
# arquivo: setup_joahannes.sh
# autor: Joahannes B. D. da Costa
# data: 15.11.2019 

## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando o repositório ##

sudo apt update && 

## Instalando pacotes e programas do repositório deb do Ubuntu ##

sudo apt install python3 python-pip git build-essential libssl-dev flatpak -y &&

## Instalando programas com PPA ##

sudo add-apt-repository ppa:qbittorrent-team/qbittorrent-stable -y &&
sudo apt update &&
sudo apt-get install qbittorrent

## Instalando pacotes Snap ##

sudo snap install skype --classic &&  
sudo snap install code --classic && 
sudo snap install spotify &&
sudo snap install twinux
 
## Softwares que precisam de download externo ##

cd ~/Downloads/ && wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i *.deb &&

## Atualização do sistema ##

sudo apt update && sudo apt upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

## Fim do Script ##

echo "Finalizado!"

#EOF