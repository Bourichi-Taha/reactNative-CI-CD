# Stage 1: Build the APK
FROM alpine

# Set working directory
WORKDIR /app

# Copy the APK from the build environment
# Copy the iOS build artifact into the Docker image
COPY ios/build/Build/Products/Debug-iphonesimulator/cicd.app /app/cicd.app

# # COPY android/app/build/outputs/bundle/release/app-arm64-v8a-bundle.aab /app/app-arm64-v8a-bundle.aab
# COPY android/app/my-upload-key.keystore /app/keystore.keystore



CMD ["tail", "-f", "/dev/null"]