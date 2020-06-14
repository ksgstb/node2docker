From node:10
# create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./

RUN npm install
COPY . .
EXPOSE 8080
CMD ["node","server.js"]
