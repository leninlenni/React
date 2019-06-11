FROM node:alpine as builder
WORKDIR 'app'
RUN npm install
COPY . .
RUN npm run start
EXPOSE 3000 3000
