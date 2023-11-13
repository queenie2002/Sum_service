FROM node:latest

WORKDIR /app
COPY . .
COPY ./package.json /app/package.json
COPY ./package-lock.json /app/package-lock.json

RUN apt install -y curl

RUN npm install 

EXPOSE 80

CMD [ "node", "SumService.js" ]
