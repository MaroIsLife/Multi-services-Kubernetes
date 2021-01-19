#!/bin/bash
export MINIKUBE_HOME=/goinfre/mougnou
minikube start --driver virtualbox 
eval $(minikube -p minikube docker-env)
minikube addons enable metallb
minikube addons enable metrics-server 
# export KUBE_IP=$(minikube ip)

#METALLB
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/namespace.yaml
kubectl apply -f https://raw.githubusercontent.com/metallb/metallb/v0.9.5/manifests/metallb.yaml
kubectl create secret generic -n metallb-system memberlist --from-literal=secretkey="$(openssl rand -base64 128)"

#Building Images
docker build -f srcs/wordpress/Dockerfile -t image_wordpress .
docker build -f srcs/nginx/Dockerfile -t image_nginx .
docker build -f srcs/phpmyadmin/Dockerfile -t image_phpmyadmin .
docker build -f srcs/mysql/Dockerfile -t image_mysql .
docker build -f srcs/grafana/Dockerfile -t image_grafana .
docker build -f srcs/influxdb/Dockerfile -t image_influxdb .
docker build -f srcs/ftps/Dockerfile -t image_ftps .
kubectl apply -f srcs/yamls/configmap.yaml
kubectl create -f srcs/yamls

# IP = 192.168.99.242
# DONT FORGET TO UNCOMMENT SSH
# ALSO ADD SSH TO HEALTHY.SH
# ADD USERS AND AN ADMIN ON WORDPRESS