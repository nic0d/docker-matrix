#!/usr/bin/env bash

IMAGE_NAME=cloud-projects/docker-matrix

echo "Building Docker image $IMAGE_NAME"

docker build -t $IMAGE_NAME:latest -t $IMAGE_NAME:`git rev-parse --short HEAD` .

echo "Done. Image available as  $IMAGE_NAME:latest  and  $IMAGE_NAME:`git rev-parse --short HEAD`"
