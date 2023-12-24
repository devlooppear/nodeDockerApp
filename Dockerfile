# Use an official Node.js runtime as a base image
FROM node:20 as builder

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source
COPY . .

# Use a smaller Node.js image for the final stage
FROM node:20-alpine

# Copy the app files from the builder stage
COPY --from=builder /usr/src/app /usr/src/app

# Set the working directory in the container
WORKDIR /usr/src/app

# Expose the port the app runs on
EXPOSE 3000
