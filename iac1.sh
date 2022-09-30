#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados!"
echo " "

echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos de usuários criado!"
echo " "

echo "Criando usuários e adicionando aos grupos..."

useradd carlos -c "Carlos- ADM" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd maria -c "Maria- ADM" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM
useradd joao -c "João- ADM" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_ADM

useradd debora -c "Débora- VEN" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd sebastiana -c "Sebastiana - VEN" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN
useradd roberto -c "Roberto - VEN" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_VEN

useradd josefina -c "Josefina- SEC" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd amanda -c "Amanda- SEC" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
useradd rogerio -c "Rogério- SEC" -m -s /bin/bash -p $(openssl passwd senha123) -G GRP_SEC
echo "Usuários criados e adicionados aos respectivos grupos!"
echo " "

echo "Especificando permissões do sistema..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Permissões Especificadas!"
echo " "

echo "Procedimento finalizado com sucesso!"
