# Use the new BuildKit builder
# syntax=docker/dockerfile:1

# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build the Next.js application
RUN npm run build

COPY .next ./.next

# Expose the desired port for your Next.js app
EXPOSE 3000

# Start the Next.js app
CMD [ "npm","run", "start" ]