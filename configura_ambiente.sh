#!/bin/bash

# Configuração xubuntu
# Atualizar pacotes e dependencias
sudo apt update -y
sudo apt upgrade -y

# Remover aplicativos
sudo apt remove gnome-sudoku
sudo apt remove gnome-mines
sudo apt remove gnome thunderbird
sudo apt remove parole
sudo apt remove rhythmbox
sudo apt remove ristretto
sudo apt remove sgt-puzzles

# Atualizar pacotes e dependencias 
sudo apt autoclean
sudo apt autoremove

# Criar diretório para tema
mkdir .themes
mkdir .icons
cd Downloads/
tar xfv Mc-OS-CTLina-XFCE-Dark.tar.xz 
mv Mc-OS-CTLina-XFCE-Dark ~/.themes/
rm -r Mc-OS-CTLina-XFCE-Dark.tar.xz 
tar xfv McOS-CTLina-XFCE.tar.xz 
mv McOS-CTLina-XFCE ~/.themes/
rm -r McOS-CTLina-XFCE.tar.xz 
tar xfv Reversal.tar.xz 
rm -r Reversal.tar.xz 
mv Reversal* ~/.icons/
cd -

# Instalar aplicativos
sudo apt install htop
sudo apt install net-tools 
sudo apt install neofetch 
sudo apt install flameshot
sudo apt install openjdk-17-jdk
sudo apt-get update && sudo apt-get install spotify-client

# Configurar Git
mkdir Git
sudo apt update -y
sudo apt upgrade -y
sudo apt install -f
git config --global user.name "nome"
git config --global user.email "email"
git config --global core.editor vim
ssh-keygen -t rsa -b 4096 -C "email"
cat id_rsa.pub 
