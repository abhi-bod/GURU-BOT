FROM node:lts-buster

RUN apt-get clean && \
mv /var/lib/apt/lists /tmp && \
mkdir -p /var/lib/apt/lists/partial && \
apt-get clean && \
apt-get update

COPY package.json .

RUN npm install && npm install qrcode-terminal

COPY . .

EXPOSE 3000

CMD ["node", "index.js", "--server"]
