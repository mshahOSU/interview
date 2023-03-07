FROM node:16

# Create app directory
WORKDIR /app

# Install app dependencies
COPY package.json ./
COPY package-lock.json ./
RUN npm install

# Bundle app source
COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]

# create and run docker image
# docker build -t interview .
# docker run -it -p 3000:3000 interview
# http://192.168.99.100:3000/