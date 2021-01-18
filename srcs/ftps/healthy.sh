#!/bin/bash
# 0 = healthy
# 1 = unhealthy
export p1=$(ps | grep vsftpd | grep -v grep | wc -l) #should be 1
export p2=$(ps | grep telegraf | grep -v grep | wc -l) # should be 1

if [ $p1 -eq 1 ] && [ $p2 -eq 1 ];
then
    return 0
else
    return 1
fi