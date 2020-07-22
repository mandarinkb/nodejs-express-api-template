# Use official base image
FROM node:10.22.0-alpine
#Create directory in container
RUN mkdir -p /usr/src/app
#Select directory
WORKDIR /usr/src/app
#Copy package.json to container
COPY package.json /usr/src/app/
#Run nodejs
RUN npm install
#Copy all file to container
COPY . /usr/src/app
#Port
EXPOSE 3000
#Run CMD
CMD ["npm","server"]