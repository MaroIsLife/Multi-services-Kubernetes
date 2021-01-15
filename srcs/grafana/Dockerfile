FROM alpine:3.11
EXPOSE 3000
RUN apk update
RUN apk add openrc --no-cache
RUN apk add vim
RUN apk add wget
RUN apk add influxdb
COPY srcs/grafana/grafana-7.3.5-r1.apk /
RUN tar -zxvf grafana-7.3.5-r1.apk
# RUN wget http://dl-cdn.alpinelinux.org/alpine/edge/main/x86_64/musl-1.2.2_pre6-r0.apk
# RUN tar -zxvf musl-1.2.2_pre6-r0.apk
# RUN apk update
# RUN apk add --upgrade musl
# RUN apk add --repository http://dl-cdn.alpinelinux.org/alpine/edge/community/x86_64/grafana-7.3.5-r1.apk
# RUN tar -zxvf grafana-7.3.5-r1.apk
RUN apk update
# RUN wget https://dl.grafana.com/enterprise/release/grafana-enterprise-7.3.6.linux-amd64.tar.gz
# RUN tar -zxvf grafana-enterprise-7.3.6.linux-amd64.tar.gz
# RUN cd /grafana-7.3.6/bin
COPY srcs/grafana/script.sh /
RUN chmod 777 script.sh
# CMD sh script.sh


#TELEGRAF START
# RUN wget http://dl-cdn.alpinelinux.org/alpine/edge/main/aarch64/musl-1.2.2_pre6-r0.apk
# RUN tar -zxvf musl-1.2.2_pre6-r0.apk
# RUN  apk update
# RUN apk add --upgrade musl
# RUN wget http://dl-cdn.alpinelinux.org/alpine/edge/community/x86_64/telegraf-1.16.3-r1.apk
# RUN tar -zxvf telegraf-1.16.3-r1.apk
# RUN apk update
#TELEGRAF END