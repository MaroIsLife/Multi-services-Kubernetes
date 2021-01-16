#!/bin/bash
# kubectl delete --all services --all-namespaces
# kubectl delete --all deployments --all-namespaces
# kubectl delete pvc mysql-pv-claim
kubectl delete -f srcs/yamls


#kubectl delete deployment nginx-deployment