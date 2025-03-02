# Use an official Node.js runtime as a parent image
FROM node:16

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json (if exists) to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY . .

# Expose port 3000 (or the port your app runs on)
EXPOSE 3002

# Define the command to run your app
CMD ["node", "app.js"]
