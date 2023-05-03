FROM node:lts-buster

RUN apt-get clean && \
sudo mv /var/lib/apt/lists /tmp && \
sudo mkdir -p /var/lib/apt/lists/partial && \
sudo apt-get clean && \
sudo apt-get update

COPY package.json .

RUN npm install && npm install qrcode-terminal

COPY . .

EXPOSE 3000

CMD ["node", "index.js", "--server"]
