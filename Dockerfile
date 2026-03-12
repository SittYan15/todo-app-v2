# lightweight node image
FROM node:18-alpine

# working directory
WORKDIR /usr/src/app

# copy dependencies
COPY package*.json ./

# install dependencies
RUN npm install --omit=dev

# copy application
COPY . .

# application port
EXPOSE 3000

# run application
CMD ["node","app.js"]
