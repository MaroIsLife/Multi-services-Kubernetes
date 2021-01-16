#!/bin/bash
export MINIKUBE_HOME=/goinfre/mougnou
# docker-machine env default
# eval $(docker-machine env default)
# minikube delete
minikube start --driver virtualbox 
# --extra-config=apiserver.service-node-port-range=1-30000
eval $(minikube -p minikube docker-env)
minikube addons enable metallb
minikube addons enable metrics-server 
export KUBE_IP=$(minikube ip)
#METALLB
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

docker build -f srcs/wordpress/Dockerfile -t image_wordpress .
docker build -f srcs/nginx/Dockerfile -t image_nginx .
docker build -f srcs/phpmyadmin/Dockerfile -t image_phpmyadmin .
docker build -f srcs/mysql/Dockerfile -t image_mysql .
docker build -f srcs/grafana/Dockerfile -t image_grafana .
docker build -f srcs/influxdb/Dockerfile -t image_influxdb . 
kubectl apply -f srcs/yamls/configmap.yaml
kubectl create -f srcs/yamls

# DELETE ALL NORDPORTS FROM YAML FILES!!!!!