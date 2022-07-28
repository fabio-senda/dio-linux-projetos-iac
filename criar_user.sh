#!/bin/bash

echo "Criando usuários do sistema...."

useradd guest10 -m -c "Usuário convidado" -s /bin/bash -p $(openssl passwd Senha123)
passwd guest10 -e

useradd guest11 -m -c "Usuário convidado" -s /bin/bash -p $(openssl passwd Senha123)
passwd guest11 -e

echo "Finalizado!!"


