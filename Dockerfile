FROM node:alpine as builder
WORKDIR 'app'
RUN npm install
COPY . .
RUN npm run build

FROM nginx
Expose 80
COPY --from=builder /app/build/usr/share/nginx/html
