# Use an official runtime as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy all application files (Ensure index.html and static assets are included)
COPY . .

# Expose port 8080 (Required for Cloud Run)
EXPOSE 8080

# Start the application
CMD ["node", "server.js"]
