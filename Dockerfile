FROM node:18-alpine as builder

WORKDIR '/app'

COPY package.json ./

RUN npm install

COPY . .

RUN npm run  build

# RUN PHASE
# Setup nginix to start the server
FROM nginx 
# copy build folder to usr nginx
COPY --from=builder /app/build /usr/share/nginx/html