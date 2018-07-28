#!/bin/bash -e
# created by lnoering@gmail.com

COMPOSEDIR=$(pwd);

which docker-compose &> /dev/null
if [ $? -ne 0 ]; 
then 
	echo "Instalando docker-compose";
	sudo curl -L https://github.com/docker/compose/releases/download/1.21.0/docker-compose-$(uname -s)-$(uname -m) -o /usr/local/bin/docker-compose
	sudo chmod +x /usr/local/bin/docker-compose
fi

which git &> /dev/null
if [ $? -ne 0 ]; 
then 
	echo "Instalando git";	
	which yum &> /dev/null
	if [ $? -ne 0 ]; 
	then
    	yum install git
 	else
    	apt-get install git
	fi
fi

PROJECTOWNER=$USER;

echo $PROJECTOWNER;

PROJETOS=/home/docker/projetos;

if [ -d "$PROJETOS" ]; 
then
	echo "Dir to PROJETOS exist. ($PROJETOS)";
else
	echo "Create dir to PROJETOS in $PROJETOS";
	# sudo mkdir -p $PROJETOS;
	sudo install -g ${PROJECTOWNER} -o ${PROJECTOWNER} -m 777 -d ${PROJETOS}
	# sudo chown -R ${PROJECTOWNER}:${PROJECTOWNER} /home/docker
fi

cd $PROJETOS;

echo "Informe a url do projeto para clonar, e aperte [ENTER]";
read BASEPROJECT;

# BASEPROJECT=$(grep ^http $BASEPROJECT);
BASEPROJECT=${BASEPROJECT##* }; 

echo $BASEPROJECT;

if [ -d "$(basename "${BASEPROJECT%.*}")" ]; 
then
	echo "Project Exist.";
else
	echo "Clone Project";
	git clone $BASEPROJECT;
fi
