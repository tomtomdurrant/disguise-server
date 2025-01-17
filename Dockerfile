# Use Node.js as the base image
FROM node:20-alpine

# Set working directory
WORKDIR /app


# Copy package.json and pnpm-lock.yaml (if you have one)
COPY ./package.json* ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your server runs on (adjust if necessary)
EXPOSE 3000

# Start the server
CMD ["npm", "run", "server"]
