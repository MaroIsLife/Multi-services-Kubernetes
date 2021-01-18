FROM alpine:3.11
EXPOSE 3306
RUN apk update
RUN apk add vim
RUN apk add expect
RUN apk add openrc --no-cache
RUN apk add mariadb mariadb-client
RUN apk add php-mysqli
RUN rc-status               
RUN touch /run/openrc/softlevel
# VOLUME [ “/sys/fs/cgroup” ]
# RUN /usr/bin/mysql_install_db --user=mysql --datadir="/var/lib/mysql"
# RUN /etc/init.d/mariadb setup
RUN mkdir -p /run/mysqld/
RUN chown mysql:mysql /var/lib/mysql
# RUN mount -o remount,/sys/fs/cgroup
COPY srcs/mysql/mydb.sql /
COPY srcs/mysql/phpmyadmin.sql /
COPY srcs/mysql/mariadb-server.cnf /etc/my.cnf.d/
# RUN chown mysql /var/run/mysqld/mysqld.sock
# RUN rc-update add mariadb default
COPY srcs/mysql/config.sh /
RUN chmod 777 config.sh
# TELEGRAF START
COPY srcs/influxdb/telegraf-1.17.0-r0.apk /
RUN tar -zxvf telegraf-1.17.0-r0.apk
RUN mkdir /etc/telegraf
COPY /srcs/mysql/telegraf.conf /etc/telegraf
# TELEGRAF END
COPY srcs/mysql/healthy.sh /
CMD sh config.sh