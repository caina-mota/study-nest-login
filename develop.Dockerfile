FROM ubuntu:22.04
# diretório alvo
WORKDIR /home/instramed

# instalação de dependências
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install git -y
RUN apt-get -y install nano
RUN apt-get -y install net-tools
RUN apt-get -y install curl 
RUN curl -sL https://deb.nodesource.com/setup_22.x | bash -
RUN apt-get update; apt -y install nodejs

# copiar o projeto e instalar os pacotes com o npm
COPY . .

# instalar o ts-node e typescript de forma global
RUN npm i ts-node --global
RUN npm i typescript --global 

# abrindo a porta 3001
EXPOSE 3001