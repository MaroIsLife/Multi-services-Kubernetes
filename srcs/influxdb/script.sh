#!/bin/bash
usr/sbin/./influxd&
influx -execute "CREATE DATABASE influxdb"
influx -execute "CREATE USER Maro WITH PASSWORD 'maro12345' WITH ALL PRIVILEGES"
/usr/bin/./telegraf&
tail -f /dev/null
# ./influxd
