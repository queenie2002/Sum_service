FROM node:latest

WORKDIR /app

RUN apt install -y curl

RUN npm install 

COPY . .

EXPOSE 80

CMD [ "node", "SumService.js" ]
