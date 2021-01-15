FROM alpine:3.11
EXPOSE 8086
RUN apk update
RUN apk add openrc --no-cache
RUN apk add vim
RUN apk add wget
RUN apk add influxdb
# RUN wget http://dl-cdn.alpinelinux.org/alpine/edge/main/aarch64/musl-1.2.2_pre6-r0.apk
# RUN tar -zxvf musl-1.2.2_pre6-r0.apk
RUN  apk update
# RUN apk add --upgrade musl
RUN wget http://dl-cdn.alpinelinux.org/alpine/edge/community/x86_64/influxdb-1.8.3-r2.apk
RUN tar -zxvf influxdb-1.8.3-r2.apk 
# ^ WORKS WITH TELEGRAF BUT NO GUI 
# RUN wget https://dl.influxdata.com/influxdb/releases/influxdb2-2.0.3_linux_amd64.tar.gz
# RUN tar xvfz influxdb2-2.0.3_linux_amd64.tar.gz
COPY srcs/influxdb/script.sh /
RUN chmod 777 script.sh
# TELEGRAF START
COPY srcs/influxdb/telegraf-1.17.0-r0.apk /
RUN tar -zxvf telegraf-1.17.0-r0.apk
RUN mkdir /etc/telegraf
COPY /srcs/influxdb/telegraf.conf /etc/telegraf
# TELEGRAF END
CMD sh script.sh




# etc/
# etc/influxdb.conf
# usr/
# usr/bin/
# usr/bin/influx
# usr/bin/influx_inspect
# usr/bin/influx_stress
# usr/bin/influx_tools
# usr/bin/influx_tsm
# usr/sbin/
# usr/sbin/influxd
#influxd run -config /etc/influxdb.conf