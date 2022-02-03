FROM node:14-slim

#Create app directory
WORKDIR /app

#Install app dependencies
#A wildcard is used to ensure both packages.json AND package-lock.json are copied
#where available (npm@5+)
COPY package*.json ./

RUN npm install
#if you are building your code for production
#RUN npm ci --only=production

#Bundle app source
COPY . /app

#Build app
RUN npm run build

CMD [ "npm", "start" ]