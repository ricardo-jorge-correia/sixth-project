FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.uo4qlon.mongodb.net
ENV MONGODB_USERNAME ricardo-jorge-correia
ENV MONGODB_PASSWORD rIRStpDNhgCwxIK5

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]