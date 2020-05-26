#!/bin/bash
echo '***************************'
echo ' Send image to Docker Hub'
echo '***************************'
read -p 'User: ' user && \
read -p 'Password: ' passwd

echo $passwd | docker login --username $user --password-stdin && \
echo '*** Pushing Frontend ***' && \
docker push thedevices/udagram-frontend:latest && \
echo '*** Pushing Backend ***' && \
docker push thedevices/udagram-backend:latest 
echo '*** Pushing Reverse Proxy ***' && \
docker push thedevices/reverseproxy:latest && \
echo '*** Finish ***'