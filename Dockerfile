# Use NodeJS base image
FROM node:13

# Create app directory
WORKDIR /usr/src/app

RUN pwd
RUN ls

# Install app dependencies by copying
# package.json and package-lock.json
COPY package*.json ./

RUN ls

# Install dependencies
RUN npm install

RUN ls

# Copy app source
COPY . .

RUN ls

# Bind the port that the image will run on
EXPOSE 8080

# Define the Docker image's behavior at runtime
# CMD ["npm", "run", "prod"]
