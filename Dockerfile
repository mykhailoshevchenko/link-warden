# Development image for React app
FROM public.ecr.aws/bitnami/node:18-debian-11

WORKDIR /home/node
COPY . /home/node/
#VOLUME /home/node/node_modules

COPY package*.json ./

RUN npm i -g npm@latest \
    && npm ci --legacy-peer-deps

ENTRYPOINT npm run go