#!/bin/bash
/usr/bin/./telegraf&
rc-status -a
touch /run/openrc/softlevel
rc-service vsftpd start
tail -f /dev/null