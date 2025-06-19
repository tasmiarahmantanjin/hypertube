#!/bin/bash
# Deploy the Hypertube project using Docker Compose
set -e

# Ensure Docker is installed
if ! command -v docker >/dev/null 2>&1; then
  echo "Docker is not installed. Please install Docker and try again." >&2
  exit 1
fi

# Ensure docker-compose is installed
if ! command -v docker-compose >/dev/null 2>&1; then
  echo "docker-compose is not installed. Please install docker-compose and try again." >&2
  exit 1
fi

# Check for backend environment file
if [ ! -f server/.env ]; then
  echo "server/.env file is missing. Create this file with the required variables before deploying." >&2
  exit 1
fi

# Build images and start containers
echo "Building and starting containers..."
docker-compose up --build -d

# Show running containers
docker-compose ps

echo "Deployment complete. Frontend: http://localhost:3000 Backend: http://localhost:8000"
