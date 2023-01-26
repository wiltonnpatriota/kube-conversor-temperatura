FROM node
WORKDIR /app
COPY package*.json ./
RUN npm set strict-ssl false
RUN npm install
COPY . .
EXPOSE 8080
CMD ["node", "server.js"]