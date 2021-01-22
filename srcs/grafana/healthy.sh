#!/bin/bash
# 0 = healthy
# 1 = unhealthy
# export p1=$(ps | grep grafana | grep -v grep | wc -l) #should be 1
ps | grep grafana| grep -v grep
p1=$? #should be 1
ps | grep telegraf | grep -v grep # should be 1
p2=$?

if [ $p1 -eq 0 ] && [ $p2 -eq 0 ];
then
    return 0
else
    return 1
fi