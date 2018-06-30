# what image we want to build from
FROM node:8

# create a directory to hold the application code inside the image, 
# this will be the working directory for your application
WORKDIR /usr/src/app

# This image comes with Node.js and NPM already installed. 
# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied.
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . .

# app binds to port 8080 so you'll use the EXPOSE instruction to have it 
# mapped by the docker daemon
EXPOSE 8080

# define the command to run your app using CMD which defines your runtime.
CMD [ "npm", "start" ]