FROM alpine:3.11
EXPOSE 3000
RUN apk update
RUN apk add openrc --no-cache
RUN apk add vim
RUN apk add wget
COPY srcs/grafana/grafana-7.3.5-r1.apk /
RUN tar -zxvf grafana-7.3.5-r1.apk
COPY srcs/grafana/script.sh /
RUN chmod 777 script.sh
# RUN mkdir -p /var/lib/grafana/dashboards
# COPY srcs/grafana/datasrc.yaml /usr/share/grafana/conf/provisioning/datasources
# COPY srcs/grafana/datasrc /usr/share/grafana/conf/provisioning/datasources
# COPY srcs/grafana/dashboard.yaml /usr/share/grafana/conf/provisioning/dashboards
# COPY srcs/grafana/json/* /var/lib/grafana/dashboards
RUN mkdir -p /usr/share/grafana/data/log
COPY /srcs/grafana/grafana.db /usr/share/grafana/data
# TELEGRAF START
COPY srcs/influxdb/telegraf-1.17.0-r0.apk /
RUN tar -zxvf telegraf-1.17.0-r0.apk
RUN mkdir /etc/telegraf
COPY /srcs/grafana/telegraf.conf /etc/telegraf
# TELEGRAF END
COPY srcs/grafana/healthy.sh /
CMD sh script.sh


#/usr/share/grafana/data
# import grafana db
