#!/bin/bash
export MINIKUBE_HOME=/goinfre/mougnou
# docker-machine env default
# eval $(docker-machine env default)
# minikube delete
minikube start --extra-config=apiserver.service-node-port-range=1-30000
eval $(minikube -p minikube docker-env)
minikube addons enable metallb
Kubectl apply -f https://raw.githubusercontent.com/google/metallb/v0.8.1/manifests/metallb.yaml
docker build -f srcs/wordpress/Dockerfile -t image_wordpress .
docker build -f srcs/nginx/Dockerfile -t image_nginx .
docker build -f srcs/phpmyadmin/Dockerfile -t image_phpmyadmin .
docker build -f srcs/mysql/Dockerfile -t image_mysql .
# docker build -f srcs/grafana/Dockerfile -t image_grafana .
# docker build -f srcs/influxdb/Dockerfile -t image_influxdb .
kubectl create -f ./srcs/yamls
