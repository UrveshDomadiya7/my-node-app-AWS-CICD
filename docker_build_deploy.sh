#!/bin/bash

container_port=$1

id
pwd
echo "building docker image ...." && \
docker build -t simform_node_app:latest . && \ 
docker stop simform_node_app && \
docker rm simform_node_app && \
docker run -d -p 80:"$container_port" --name simform_node_app simform_node_app:latest && \
docker ps && \
echo "docker container deployed sucessfully......"
