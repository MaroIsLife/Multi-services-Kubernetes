#!/bin/bash
/usr/bin/./telegraf&
rc-service php-fpm7 start
rc-service nginx start
