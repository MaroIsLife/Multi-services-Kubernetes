#!/bin/bash
kubectl services delete nginx-service
kubectl deployments delete nginx-deployments
sleep 0.3
kubectl services delete wordpress-service
kubectl deployments delete wordpress-deployments
sleep 0.3
kubectl services delete mysql-service
kubectl deployments delete mysql-deployments