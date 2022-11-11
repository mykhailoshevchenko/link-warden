# Development image for React app
FROM node:18-alpine

WORKDIR /home/node
COPY . /home/node/
#VOLUME /home/node/node_modules

COPY package*.json ./

RUN npm i -g npm@latest \
    && npm ci --legacy-peer-deps
