FROM node:14-alpine
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci
COPY js ./js
EXPOSE 3001
ENTRYPOINT [ "npm", "start" ]