# Stage 1: Build the APK
FROM scratch

# Set working directory
WORKDIR /app

# Copy the APK from the build environment
COPY android/app/build/outputs/apk/release/app-arm64-v8a-release.apk /app/app-release.apk
COPY android/app/build/outputs/bundle/release/app-bundle.aab /app/app-bundle.aab
COPY android/app/my-upload-key.keystore /app/keystore.keystore



