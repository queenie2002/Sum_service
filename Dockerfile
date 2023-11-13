FROM node:latest

WORKDIR /app
COPY . ./app

RUN apt install -y curl

RUN npm install 

EXPOSE 80

CMD [ "node", "SumService.js" ]
