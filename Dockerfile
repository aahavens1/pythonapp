# Use an Ubuntu image
FROM ubuntu:latest

# Update packages
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory in the container
WORKDIR /app

# Copy the current directory
COPY . /app

# Install another package
RUN pip3 install -r requirements.txt --break-system-packages

Expose 8080

# Run the app
CMD ["python3", "main.py"]
