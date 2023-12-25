# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install --target_arch=x64 --target_platform=linux

# Copy the rest of the application files to the container
COPY . .

# Expose a port if your Node.js application listens on a specific port
EXPOSE 3000

# Define the command to run your application
CMD ["node", "server.js"]