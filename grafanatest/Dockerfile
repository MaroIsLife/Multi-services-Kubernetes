FROM alpine
EXPOSE 3000 8086
RUN apk update
RUN apk add openrc --no-cache
RUN apk add vim
RUN apk add wget
COPY srcs/grafana/grafana-7.3.5-r1.apk /
RUN tar -zxvf grafana-7.3.5-r1.apk
RUN wget http://dl-cdn.alpinelinux.org/alpine/edge/community/x86_64/influxdb-1.8.3-r2.apk
RUN tar -zxvf influxdb-1.8.3-r2.apk 
RUN wget http://dl-cdn.alpinelinux.org/alpine/edge/community/x86_64/telegraf-1.17.0-r0.apk
RUN tar -zxvf telegraf-1.17.0-r0.apk
RUN mkdir /etc/telegraf
COPY /srcs/influxdb/telegraf.conf /etc/telegraf