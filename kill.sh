#!/bin/bash
if [ $1 == "all" ];
then
    echo "Shutting Down Nginx.."
    kubectl exec deploy/nginx -- pkill nginx
    sleep 1
    echo "Shutting Down PHP.."
    kubectl exec deploy/wordpress -- pkill php-fpm
    sleep 1
    echo "Shutting Down PHP.."
    kubectl exec deploy/phpmyadmin -- pkill php-fpm
    sleep 1
    echo "Shutting Down Grafana.."
    kubectl exec deploy/grafana -- pkill grafana
    sleep 1
    echo "Shutting Down Mysql.."
    kubectl exec deploy/mysql -- pkill mysql
    sleep 1
    echo "Shutting Down Influxdb.."
    kubectl exec deploy/influxdb -- pkill influx
else
    echo "Shutting down $2"
    kubectl exec deploy/$1 -- pkill $2
fi
