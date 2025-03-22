#Old- FROM ubuntu
FROM node:20.18.2-alpine3.21

#Old- RUN apt-get update
#Old- RUN apt install -y curl
#Old- RUN curl -sL https://deb.nodesource.com/setup_20.x -o /tmp/nodesource_setup.sh
#Old- RUN bash /tmp/nodesource_setup.sh
#Old- RUN apt install -y nodejs

#Old- COPY index.js /home/app/index.js
#Old- COPY package.json /home/app/package.json
#Old- COPY package-lock.json /home/app/package-lock.json

#Old- WORKDIR /home/app

WORKDIR /home/app
#2nd Old - COPY package.json package.json
#2nd Old - COPY package-lock.json package-lock.json

# . Operator means current directory in docker
COPY package*.json .           

RUN npm install

COPY index.js index.js

EXPOSE 8000 4000 3000 2000-2010

CMD [ "npm", "start" ]