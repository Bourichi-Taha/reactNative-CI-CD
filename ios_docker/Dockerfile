# Use a minimal base image
FROM alpine:latest

# Set the working directory inside the container
WORKDIR /app

# Copy the iOS build artifact into the Docker image
COPY ios/cicd.app /app/cicd.app

# Add any additional setup or configuration as needed
CMD ["tail", "-f", "/dev/null"]