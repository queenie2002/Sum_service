FROM node:latest

WORKDIR /app

RUN apt install -y curl

RUN npm install 

COPY ./SumService.js .

EXPOSE 80

CMD [ "node", "index.js" ]
