# Use official base image
FROM node:10.22.0-alpine
#Create directory in container
RUN mkdir -p /usr/src/app
#Select directory
WORKDIR /usr/src/app
#Copy package.json to app directory
COPY package.json /usr/src/app/
#Run install dependencies
RUN npm install
#Copy all file to app directory (not file in dockerignore)
COPY . /usr/src/app
#Port
EXPOSE 3000
#Run CMD node server.js
CMD ["node","server.js"]