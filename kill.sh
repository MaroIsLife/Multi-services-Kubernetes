#!/bin/bash
kubectl exec deploy/nginx-deployment -- pkill nginx
kubectl exec deploy/wordpress-deployment -- pkill php-fpm7
kubectl exec deploy/phpmyadmin-deployment -- pkill php-fpm7
kubectl exec deploy/grafana-deployment -- pkill grafana
kubectl exec deploy/mysql -- pkill mysql
kubectl exec deploy/influxdb -- pkill influxdb
