#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build . -t udacity
# Step 2: 
# List docker images
docker image ls -f label=name=udacity

# Step 3: 
# Run flask app
docker run -p 127.0.0.1:8080:80 udacity
