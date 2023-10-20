#!/bin/bash

# Atualizar pacotes e dependencias
atualizar_Dependencias() {
   while [[ ! "$atulizarPacotes" =~ [sSyYnN] ]]; do
      echo -n "Atualizar pacotes do sistema? [S/N] "
      read atulizarPacotes
   done

   if [[ "$atulizarPacotes" =~ [sSyY] ]]; then
      sudo apt update -y
      sudo apt upgrade -y
   fi
}

# Limpar pacotes e dependencias
limpar_Pacotes() {
   while [[ ! "$limpar" =~ [sSyYnN] ]]; do
      echo -n "Limpar pacotes não utilizados do sistema? [S/N] "
      read limpar
   done

   if [[ "$limpar" =~ [sSyY] ]]; then
      sudo apt autoclean -y
      sudo apt autoremove -y
   fi
}

# Atualizar repositorio git
atualizar_Git() {
   while [[ ! "$atulizarRepositorios" =~ [sSyYnN] ]]; do
      echo -n "Atualizar repositórios do Git? [S/N] "
      read atulizarRepositorios
   done

   if [[ "$atulizarRepositorios" =~ [sSyY] ]]; then

      if test -e "/home/"$USER"/Git"; then
         cd "/home/"$USER"/Git"
         pwd
         for subdiretorio in */; do
            echo "Atualizando o repositório: $subdiretorio"
            cd "$subdiretorio"
            git pull
            cd ..
         done
      else
         echo "Diretório Git não encontrado"  
      fi

   fi  
   
}

atualizar_Git() { 
   if test -e "/home/$USER/Git"; then
      
      while [[ ! "$atulizarRepositorios" =~ [sSyYnN] ]]; do
         echo -n "Atualizar repositórios do Git? [S/N] "
         read atulizarRepositorios
      done

      if [[ "$atulizarRepositorios" =~ [sSyY] ]]; then

         cd "/home/$USER/Git"
         pwd

         for subdiretorio in */; do
            echo "Atualizando o repositório: $subdiretorio"
            cd "$subdiretorio"
            git pull
            cd ..
         done 
      fi

   else
      echo "Diretório Git não encontrado"  
   fi
}

atualizar_Dependencias
limpar_Pacotes
atualizar_Git
