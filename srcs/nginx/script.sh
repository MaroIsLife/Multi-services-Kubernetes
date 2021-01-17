#!/bin/bash
/usr/bin/./telegraf&
/etc/init.d/sshd start
rc-service php-fpm7 start
rc-service nginx start
# tail -f /dev/null