FROM public.ecr.aws/bitnami/node:latest

WORKDIR /app

COPY package*.json /app/

RUN npm install -g npm@latest

RUN npm install pm2 -g 

RUN npm install 

COPY . .

CMD ["pm2-runtime","server.js"]
