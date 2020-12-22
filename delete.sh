#!/bin/bash
kubectl delete --all services --all-namespaces
kubectl delete --all deployments --all-namespaces
kubectl delete pvc mysql-pv-claim
