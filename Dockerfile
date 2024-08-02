# Stage 1: Build the APK
FROM scratch

# Set working directory
WORKDIR /app

# Copy the APK from the build environment
COPY android/app/build/outputs/apk/release/app-release.apk /app/app-release.apk



