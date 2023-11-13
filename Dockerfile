FROM node:latest

WORKDIR /app

RUN apt install -y curl

RUN npm install 

COPY . ./app

EXPOSE 80

CMD [ "node", "SumService.js" ]
