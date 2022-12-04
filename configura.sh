#!/bin/bash

sudo rmdir /publico
sudo rmdir /adm
sudo rmdir /ven
sudo rmdir /sec
sudo groupdel GRP_ADM
sudo groupdel GRP_VEN
sudo groupdel GRP_SEC
sudo userdel maria -r
sudo userdel carlos -r
sudo userdel joao -r


echo "Criando diretórios..."
echo "Criando diretório publico"
sudo mkdir /publico
echo "Criando diretório adm"
sudo mkdir /adm
echo "Criando diretório ven"
sudo mkdir /ven
echo "Criando diretório sec"
sudo mkdir /sec
echo "Finalizada a criação de diretórios"
echo ""

echo "Criando grupos..."
echo "Criando grupo GRP_ADM"
sudo groupadd GRP_ADM
echo "Criando grupo GRP_VEN"
sudo groupadd GRP_VEN
echo "Criando grupo GRP_SEC"
sudo groupadd GRP_SEC
echo "Finalizada a criação de grupos"
echo ""

echo "Criando usuários do grupo ADM"
echo "Criando usuário Carlos"
sudo useradd carlos -m
sudo chsh --shell /bin/bash carlos
echo "Adicionando usuário Carlos ao grupo GRP_ADM"
sudo adduser carlos GRP_ADM
echo "Criando usuária Maria"
sudo useradd maria -m
sudo chsh --shell /bin/bash maria
echo "Adicionando usuária Maria ao grupo GRP_ADM"
sudo adduser maria GRP_ADM
echo "Criando usuário João"
sudo useradd joao -m
sudo chsh --shell /bin/bash joao
echo "Adicionando usuário João ao grupo GRP_ADM"
sudo adduser joao GRP_ADM
echo "Finalizada a criação de usuários do grupo GRP_ADM"
echo ""

echo "Criando usuários do grupo GRP_VEN"
echo "Criando usuária Débora"
sudo useradd debora -m
sudo chsh --shell /bin/bash debora
echo "Adicionando usuária Débora ao grupo GRP_VEN"
sudo adduser debora GRP_VEN
echo "Criando usuária Sebastiana"
sudo useradd sebastiana -m
sudo chsh --shell /bin/bash sebastiana
echo "AAdicionando usuária Sebastiana ao grupo GRP_VEN"
sudo adduser sebastiana GRP_VEN
echo "Criando o usuario Roberto"
sudo useradd roberto -m
sudo chsh --shell /bin/bash roberto
echo "Adicionando usuário Roberto ao grupo GRP_VEN"
sudo adduser roberto GRP_VEN
echo "Finalizada a criação de usuários do grupo GRP_VEN"
echo ""

echo "Criando usuários do grupo GRP_SEC"
echo "Criando usuária Josefina"
sudo useradd josefina -m
sudo chsh --shell /bin/bash josefina
echo "Adicionando usuária Débora ao grupo GRP_SEC"
sudo adduser josefina GRP_SEC
echo "Criando usuária Amanda"
sudo useradd amanda -m
sudo chsh --shell /bin/bash amanda
echo "Adicionando usuária Amanda ao grupo GRP_SEC"
sudo adduser amanda GRP_SEC
echo "Criando o usuario Rogério"
sudo useradd rogerio -m
sudo chsh --shell /bin/bash rogerio
echo "Adicionando usuário Rogério ao grupo GRP_SEC"
sudo adduser rogerio GRP_SEC
echo "Finalizada a criação de usuários do grupo GRP_SEC"
echo ""

echo "Alterando grupos proprietários dos diretórios"
echo "Alterando grupo proprietário do diretório /adm"
sudo chgrp GRP_ADM /adm
echo "Alterando grupo proprietário do diretório /sec"
sudo chgrp GRP_SEC /sec
echo "Alterando grupo proprietário do diretório /ven"
sudo chgrp GRP_VEN /ven
echo "Finalizada a alteração dos grupos proprietários dos diretórios"
echo ""

echo "Configurando permissões"
echo "Permissão total ao diretório /publico"
sudo chmod 777 /publico
echo "Configura permissões aos diretórios dos departamentos"
sudo chmod 770 /sec
sudo chmod 770 /ven
sudo chmod 770 /adm
echo "Finalizada a configuração de permissão ao diretórios dos departamentos"
echo ""

