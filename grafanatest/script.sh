#!/bin/bash
usr/sbin/./influxd&
influx -execute "CREATE DATABASE influxdb"
influx -execute "CREATE USER Maro WITH PASSWORD 'maro12345' WITH ALL PRIVILEGES"
/usr/bin/./telegraf&
cd usr/share/grafana/conf/
grafana-server& -config /usr/share/grafana/conf/defaults.ini
