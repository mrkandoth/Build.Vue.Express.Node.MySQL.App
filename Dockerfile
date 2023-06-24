FROM node:16-alpine
WORKDIR /app

COPY package*.json ./
RUN npm ci --production --silent
COPY . ./

EXPOSE 8080

CMD ["npm", "start"]