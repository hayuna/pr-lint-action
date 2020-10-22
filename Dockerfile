FROM node:slim

COPY . .
RUN npm uninstall

RUN npm cache clean --force
RUN npm install
RUN node_modules/typescript/bin/tsc

ENTRYPOINT ["node", "/lib/main.js"]
