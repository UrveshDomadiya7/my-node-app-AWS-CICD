FROM public.ecr.aws/w9g7w6e8/jv-node-app:latest

WORKDIR /app

COPY package*.json /app/

RUN npm install -g npm@latest

RUN npm install pm2 -g 

RUN npm install 

COPY . .

CMD ["pm2-runtime","server.js"]
