#! /bin/bash

echo "Criando diretórios..."


mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec


echo "Criando grupos de usuários ..."


groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo "Criando usuários ..."


sudo useradd -m -s /bin/bash -G GRP_ADM carlos && echo "carlos:1234" | sudo chpasswd
sudo useradd -m -s /bin/bash -G GRP_ADM maria && echo "maria:1234" | sudo chpasswd
sudo useradd -m -s /bin/bash -G GRP_ADM joao && echo "joao:1234" | sudo chpasswd


sudo useradd -m -s /bin/bash -G GRP_VEN debora && echo "debora:1234" | sudo chpasswd
sudo useradd -m -s /bin/bash -G GRP_VEN sebastiana && echo "sebastiana:1234" | sudo chpasswd
sudo useradd -m -s /bin/bash -G GRP_VEN roberto && echo "roberto:1234" | sudo chpasswd


sudo useradd -m -s /bin/bash -G GRP_SEC josefina && echo "josefina:1234" | sudo chpasswd
sudo useradd -m -s /bin/bash -G GRP_SEC amanda && echo "amanda:1234" | sudo chpasswd
sudo useradd -m -s /bin/bash -G GRP_SEC rogerio && echo "rogerio:1234" | sudo chpasswd

echo "Especificando permissões dos diretórios..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Finalizado..."



