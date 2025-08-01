# Use Python image
FROM python:3.10-slim

# Prevent interactive prompts during installs
ENV DEBIAN_FRONTEND=noninteractive

# Update system packages & install security patches
RUN apt-get update && apt-get upgrade -y \
    && apt-get install -y --no-install-recommends \
        curl ca-certificates \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy requirements
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy app
COPY hello.py .

# Run the app
CMD ["python", "hello.py"]

