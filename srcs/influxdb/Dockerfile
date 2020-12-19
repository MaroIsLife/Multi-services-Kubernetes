FROM alpine
EXPOSE 8086
RUN apk update
RUN apk add openrc --no-cache
RUN apk add vim
RUN apk add wget
RUN wget https://dl.influxdata.com/influxdb/releases/influxdb2-2.0.3_linux_amd64.tar.gz
RUN tar xvfz influxdb2-2.0.3_linux_amd64.tar.gz
COPY srcs/influxdb/script.sh /
RUN chmod 777 script.sh
# TELEGRAF START
RUN wget http://dl-cdn.alpinelinux.org/alpine/edge/main/aarch64/musl-1.2.2_pre6-r0.apk
RUN tar -zxvf musl-1.2.2_pre6-r0.apk
RUN  apk update
RUN apk add --upgrade musl
RUN wget http://dl-cdn.alpinelinux.org/alpine/edge/community/x86_64/telegraf-1.16.3-r1.apk
RUN tar -zxvf telegraf-1.16.3-r1.apk
# RUN apk update
RUN mkdir /etc/telegraf
COPY /srcs/influxdb/telegraf.conf /etc/telegraf
# TELEGRAF END
CMD sh script.sh