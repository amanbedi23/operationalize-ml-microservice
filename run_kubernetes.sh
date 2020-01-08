#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=demo-boston-app

# Step 2
# Run the Docker Hub container with kubernetes
docker login --username amanbedi23
kubectl run $dockerpath --image=amanbedi23/demo-boston-app:version1 --port=80

# Step 3:
# List kubernetes pods
kubectl get pod
# Step 4:
# Forward the container port to a host
kubectl expose deployment demo-boston-app --type=LoadBalancer --port=80
minikube service demo-boston-app
