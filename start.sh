#!/bin/bash
#minikube start --extra-config=apiserver.service-node-port-range=1-30000
docker-machine env default
sleep 2s
eval $(docker-machine env default)
sleep 2s
minikube docker-env
sleep 2s
eval $(minikube -p minikube docker-env)
sleep 2s
eval $(minikube docker-env)
docker build -f wordpress/Dockerfile -t image_wordpress .
docker build -f nginx/Dockerfile -t image_nginx .
docker build -f mysql/Dockerfile -t image_mysql .
kubectl create -f .
