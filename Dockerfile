FROM node:slim

COPY . .
RUN npm install -g npm@7.0.3
RUN npm install

ENTRYPOINT ["node", "/src/main.js"]
