#!/bin/bash
# arquivo: setup_joahannes.sh
# autor: Joahannes B. D. da Costa
# data: 15/11/2019
# atualizacao: 13/06/2024

# Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

## Atualizando o repositório

sudo apt update && 

## Instalando pacotes e programas do repositório deb do Ubuntu ##

sudo apt install python3 python-pip git build-essential libssl-dev -y &&

# pomodoro timer
# sudo apt-get install gnome-shell-pomodoro &&

sudo apt install gnome-tweaks

sudo apt install indicator-multiload
sudo apt install inkscape -y

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

## Instalando pacotes Snap ##

sudo snap install code && 
sudo snap install spotify &&
sudo snap install telegram-desktop &&
sudo snap install notion-snap &&
sudo snap install discord &&

## Instalando pacotes Flatpak ##

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# Gear Lever - Gerenciador de AppImage
flatpak install flathub it.mijorus.gearlever -y

# Terminal
sudo apt install terminator -y
sudo apt install zsh -y

sudo apt install vlc -y

# Instalar OhMyZsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Editar arquivo ~/.zshrc
# ZSH_THEME="essembeh"

## Softwares que precisam de download externo ##

cd ~/Downloads/

# Chrome

wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

# Xournal++

wget -c https://github.com/xournalpp/xournalpp/releases/download/v1.1.3/xournalpp-1.1.3-Ubuntu-focal-x86_64.deb

sudo dpkg -i *.deb

## Instalando protetor de tela estilo Flip Clock
# sudo apt-get install xscreensaver libsdl1.2-dev libsdl-ttf2.0-dev libsdl-gfx1.2-dev libx11-dev &&
# echo "Editar arquivo ~/.xscreensaver"
# echo "Adicionar > gluqlo -root {barra invertida}n"

## Atualização do sistema ##

sudo apt update && sudo apt upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&

## Fim do Script ##

echo "Finalizado!"
echo
echo "Buscar manualmente pelos programas:"
echo " > ocenaudio"

#EOF
