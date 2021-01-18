#!/bin/bash
# 0 = healthy
# 1 = unhealthy
export p1=$(ps | grep php-fpm7 | grep -v grep | wc -l) #should be 3
export p2=$(ps | grep telegraf | grep -v grep | wc -l) # should be 1
export p3=$(ps | grep nginx | grep -v grep | wc -l) # Should be 6
export p4=$(ps | grep sshd | grep -v grep | wc -l) # Should be 1


if [ $p1 -eq 3 ] && [ $p2 -eq 1 ] && [ $p3 -eq 6 ] && [ $p4 -eq 1];
then
    return 0
else
    return 1
fi