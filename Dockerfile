FROM node:15.8.0-alpine3.12
WORKDIR /app
COPY package.json /app
RUN npm install
EXPOSE 3000
COPY . /app
CMD ["npm", "start"]