FROM node:slim

COPY . .

RUN npm install

ENTRYPOINT ["node", "/src/main.js"]
