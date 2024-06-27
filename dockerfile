FROM nginx:latest
COPY . /usr/share/nginx/html

# Backend Dockerfile
FROM node:14
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD ["node", "server.js"]
