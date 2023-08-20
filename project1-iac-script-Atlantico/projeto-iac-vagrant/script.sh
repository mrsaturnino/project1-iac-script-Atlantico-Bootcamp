#!/bin/bash

echo "criando diretorios..."

sudo mkdir /publico
sudo mkdir /devops
sudo mkdir /suporte

echo "criando grupos..."

sudo groupadd GRP_SUP
sudo groupadd GRP_DEV

echo "criando usuarios do grupo DEV..."

sudo useradd andre -c "Andre Saturnino" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_DEV
sudo useradd maria -c "Maria mara marina" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_DEV
sudo useradd jose -c "Jose josias josue" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_DEV

echo "criando usuarios do grupo SUP..."

sudo useradd debora -c "Debora dabora" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SUP
sudo useradd joao -c "Joao janio jose" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SUP
sudo useradd clara -c "Clara clarice clare" -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SUP

echo "permissoes dos diretorios..."

sudo chown root:GRP_DEV /devops
sudo chown root:GRP_SUP /suporte

sudo chmod 770 /devops
sudo chmod 770 /suporte
sudo chmod 777 /publico