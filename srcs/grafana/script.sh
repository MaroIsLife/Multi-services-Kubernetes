#!/bin/bash
# cd /grafana-7.3.6/bin
# grafana-server
cd usr/share/grafana/conf/
/usr/bin/./telegraf&
/usr/sbin/grafana-server -config /usr/share/grafana/conf/defaults.ini
# tail -f /dev/null