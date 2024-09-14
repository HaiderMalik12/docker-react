FROM node:18-alpine as builder

WORKDIR '/app'

COPY package.json ./

RUN npm install

COPY . .

RUN npm run  build

# RUN PHASE
# Setup nginix to start the server
FROM nginx 
EXPOSE 80
# copy build folder to usr nginx
COPY --from=builder /app/build /usr/share/nginx/html