FROM node:18-alpine

# Set the working directory to /app inside the container
WORKDIR /app

# Copy only the package.json and package-lock.json from the beautechlink folder
COPY beautechlink/package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files from the beautechlink folder
COPY beautechlink/ ./

# Build the app
RUN npm run build

# Expose a port (if needed for running the app)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
