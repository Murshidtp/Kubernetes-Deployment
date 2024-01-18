# Use an official Node.js runtime as a base image
FROM node:14

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the application code to the container
COPY . .

# Build the React app (adjust the build script as needed)
#RUN npm run build

# Expose the port your app will run on (adjust as needed)
EXPOSE 3000

# Define the command to run your application
CMD ["npm", "start"]

