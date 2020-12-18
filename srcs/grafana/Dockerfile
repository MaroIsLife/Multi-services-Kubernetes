FROM alpine
EXPOSE 3000
RUN apk update
RUN apk add openrc --no-cache
RUN apk add vim
RUN apk add wget
RUN wget http://dl-cdn.alpinelinux.org/alpine/edge/main/x86_64/musl-1.2.2_pre6-r0.apk
RUN tar -zxvf musl-1.2.2_pre6-r0.apk
RUN apk update
RUN apk add --upgrade musl
RUN wget http://dl-cdn.alpinelinux.org/alpine/edge/community/x86_64/grafana-7.3.5-r1.apk
RUN tar -zxvf grafana-7.3.5-r1.apk
RUN apk update
# RUN apk add --upgrade grafana
#/usr/share/grafana/public/views