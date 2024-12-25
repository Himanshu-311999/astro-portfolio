# Use the official Node.js 18 image as the base image
FROM node:23-alpine3.20

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install dependencies
RUN yarn install

# Copy the rest of the application to the container
COPY . .

# Build the Astro project
RUN npm run build

# Expose the default port Astro uses
EXPOSE 3000

# Start the Astro server
CMD ["yarn", "run", "dev"]
