# Stage 1: Build the APK
FROM node:18-alpine as builder

# Set working directory
WORKDIR /app

# Copy package.json and yarn.lock
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install

# Copy the entire project
COPY . .

# Optionally, run a command or expose ports if needed
CMD ["sh"]
