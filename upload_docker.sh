#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=udacity

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
export DOCKER_ID_USER="11221995"
docker login
docker tag c65d5a9120b0 $DOCKER_ID_USER/udacity
docker push $DOCKER_ID_USER/udacity

# Step 3:
# Push image to a docker repository
docker commit $DOCKER_ID_USER/udacity -m udacity
docker push $DOCKER_ID_USER/udacity
