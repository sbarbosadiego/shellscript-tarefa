#!/bin/bash

# Atualizar pacote de dependencias linux
atualizarLinux() {
   while [[ ! "$atulizarPacotes" =~ [snSN] ]]; do
      echo -n "Atualizar pacotes do sistema? [S/N] "
      read atulizarPacotes
   done

   if [[ "$atulizarPacotes" =~ [sS] ]]; then
      sudo apt update -y
      sudo apt upgrade -y
   fi
}

# Atualizar repositório git
atualizarGit() {
   while [[ ! "$atulizarRepositorios" =~ [snSN] ]]; do
      echo -n "Atualizar repositórios do Git? [S/N] "
      read atulizarRepositorios
   done

   if [[ "$atulizarRepositorios" =~ [sS] ]]; then
      cd /home/"$USER"/Git
      pwd
   for subdiretorio in */; do
      echo "Atualizando o repositório: $subdiretorio"
      cd "$subdiretorio"
      git pull
      cd ..
   done  
   fi
}

atualizarLinux
atualizarGit
