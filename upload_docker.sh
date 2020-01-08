#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=demo-boston-app

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login --username amanbedi23
docker tag demo-boston-app amanbedi23/demo-boston-app:version1

# Step 3:
# Push image to a docker repository
docker push amanbedi23/demo-boston-app:version1
