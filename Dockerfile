FROM node:16.10.0-bullseye-slim

WORKDIR /app

COPY package*.json /app/

COPY . $WORKDIR

RUN npm install

EXPOSE 3000

CMD [ "node", "app.js" ]