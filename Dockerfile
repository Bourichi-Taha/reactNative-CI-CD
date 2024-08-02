# Stage 1: Build the APK
FROM scratch

# Set working directory
WORKDIR /app

# Copy the APK from the build environment
COPY android/app/build/outputs /app/outputs
# COPY android/app/build/outputs/bundle/release/app-arm64-v8a-bundle.aab /app/app-arm64-v8a-bundle.aab
COPY android/app/my-upload-key.keystore /app/keystore.keystore



CMD ["sleep", "infinity"]