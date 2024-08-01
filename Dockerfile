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

# Install necessary build tools
RUN apk add --no-cache openjdk11 bash

# Build the APK file
RUN cd android && ./gradlew assembleRelease

# Stage 2: Create the final image
FROM alpine:latest

# Set working directory
WORKDIR /app

# Copy the APK file from the builder stage
COPY --from=builder /app/android/app/build/outputs/apk/release/app-release.apk /app/

# Optionally, run a command or expose ports if needed
CMD ["sh"]
