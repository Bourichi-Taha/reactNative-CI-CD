# Stage 1: Build the APK
FROM alpine

# Set working directory
WORKDIR /app

# Copy the APK from the build environment
# Alternatively, if you want to specifically copy the ios directory only
COPY ios ./ios

# # COPY android/app/build/outputs/bundle/release/app-arm64-v8a-bundle.aab /app/app-arm64-v8a-bundle.aab
# COPY android/app/my-upload-key.keystore /app/keystore.keystore



CMD ["tail", "-f", "/dev/null"]