# Use Python image
#FROM python:3.10-slim
FROM python:3.10-alpine

# Prevent interactive prompts during installs
ENV DEBIAN_FRONTEND=noninteractive

# Update system packages & install security patches
# RUN apt-get update && apt-get upgrade -y \
#   && apt-get install -y --no-install-recommends \
#        curl ca-certificates \
#    && apt-get clean \
#    && rm -rf /var/lib/apt/lists/*

# Install necessary dependencies for Python packages
RUN apk update && apk add --no-cache \
    curl \
    gcc \
    musl-dev \
    libffi-dev \
    openssl-dev \
    && rm -rf /var/cache/apk/*

# Update Alpine packages, including sqlite-libs
RUN apk update && apk upgrade --no-cache

#RUN pip install --upgrade pip setuptools
# Upgrade pip and setuptools to secure versions
RUN pip install --no-cache-dir --upgrade \
    pip==23.3 \
    setuptools==78.1.1

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

