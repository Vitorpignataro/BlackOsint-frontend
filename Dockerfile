# estágio de compilação
FROM node:lts-alpine as build-stage
WORKDIR /app
RUN npm install -g @vue/cli
COPY package*.json ./
RUN npm install
COPY . .
EXPOSE 8080
CMD ["npm", "run", "serve"]

