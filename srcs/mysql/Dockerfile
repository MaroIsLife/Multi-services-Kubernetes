FROM alpine
RUN apk update
RUN apk add vim
RUN apk add expect
RUN apk add openrc --no-cache
RUN apk add mariadb mariadb-client
RUN apk add php-mysqli
RUN rc-status               
RUN touch /run/openrc/softlevel
VOLUME [ “/sys/fs/cgroup” ]
RUN /usr/bin/mysql_install_db --user=mysql --datadir="/var/lib/mysql"
RUN /etc/init.d/mariadb setup
RUN chown mysql:mysql /var/lib/mysql
RUN mount -o remount,/sys/fs/cgroup
COPY srcs/mysql/mydb.sql /
COPY srcs/mysql/phpmyadmin.sql /
# RUN chown mysql /var/run/mysqld/mysqld.sock
# RUN rc-update add mariadb default
COPY srcs/mysql/config.sh /
RUN chmod 777 config.sh
CMD sh config.sh