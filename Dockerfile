FROM node:hydrogen-bullseye-slim

WORKDIR /app
COPY . .
COPY ./package.json /app/package.json
COPY ./package-lock.json /app/package-lock.json

RUN apt update

RUN apt install -y curl

RUN apt update -y

EXPOSE 80

CMD [ "node", "SumService.js" ]
