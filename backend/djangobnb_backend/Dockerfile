# Use a stable Python version instead of an alpha
FROM python:3.12.2-slim-bullseye

# Set working directory inside container
WORKDIR /usr/src/djangobnb_backend

# Don't write .pyc files and make Python output unbuffered
ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1

# Install system dependencies for psycopg2-binary and pip build tools
RUN apt-get update && apt-get install -y \
    gcc \
    libpq-dev \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip
RUN pip install --upgrade pip

# Copy requirements and install dependencies
COPY ./requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy project files
COPY . .
