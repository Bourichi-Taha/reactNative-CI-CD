# Stage 1: Build the APK
FROM node:18-alpine as builder

# Set working directory
WORKDIR /app

# Copy the APK from the build environment
COPY android/app/build/outputs/apk/release/app-release.apk /app/app-release.apk

# Optional: Add any additional files or configurations

# Use a simple command that runs indefinitely or one that makes sense for your use case
CMD ["tail", "-f", "/dev/null"]

