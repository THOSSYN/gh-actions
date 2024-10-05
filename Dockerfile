FROM node:18-alpine

# Copy the entire beautechlink folder to /app/beautechlink
WORKDIR /app

COPY beautechlink/ ./beautechlink/

# Change the working directory to /app/beautechlink
WORKDIR /app/beautechlink

# Install dependencies inside the beautechlink folder
RUN npm install

# Build the React app
RUN npm run build

# Expose port 3000 (React's default port)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
