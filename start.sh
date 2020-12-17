#!/bin/bash
docker-machine env default
sleep 1s
eval $(docker-machine env default)
minikube start --extra-config=apiserver.service-node-port-range=1-30000
# eval $(minikube -p minikube docker-env)
docker build -f srcs/wordpress/Dockerfile -t image_wordpress .
docker build -f srcs/nginx/Dockerfile -t image_nginx .
docker build -f srcs/phpmyadmin/Dockerfile -t image_phpmyadmin .
docker build -f srcs/mysql/Dockerfile -t image_mysql .
kubectl create -f .