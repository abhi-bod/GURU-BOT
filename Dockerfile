FROM node:lts-buster

RUN apt-get update -y

COPY package.json .

RUN npm install && npm install qrcode-terminal

COPY . .

EXPOSE 3000

CMD ["node", "index.js", "--server"]
