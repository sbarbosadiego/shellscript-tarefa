#!/bin/bash

# Atualizar pacote de dependencias linux
while [[ ! "$atulizarPacotes" =~ [snSN] ]]; do
   echo -n "Atualizar pacotes do sistema? [S/N] "
   read atulizarPacotes
done

if [[ "$atulizarPacotes" =~ [sS] ]]; then
   sudo apt update -y
   sudo apt upgrade -y
fi

# Atualizar repositório git
cd /home/"$USER"/Git
pwd

for subdiretorio in */; do
   echo "Atualizando o repositório: $subdiretorio"
   cd "$subdiretorio"
   git pull
   cd ..
done

