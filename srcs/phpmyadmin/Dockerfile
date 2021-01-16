FROM alpine:3.11
EXPOSE 5000
RUN apk --update add \
	php7 \
	php7-bcmath \
	php7-ctype \
	php7-curl \
	php7-fpm \
	php7-gd \
	php7-iconv \
	php7-intl \
	php7-json \
	php7-mbstring \
	php7-mcrypt \
	php7-mysqlnd \
	php7-opcache \
	php7-openssl \
	php7-pdo \
	php7-pdo_mysql \
	php7-pdo_pgsql \
	php7-pdo_sqlite \
	php7-phar \
	php7-posix \
	php7-session \
	php7-soap \
	php7-xml \
	php7-zip
RUN apk update
RUN apk add vim
RUN apk add nginx
RUN apk add php-mysqli
RUN apk add openrc --no-cache
RUN apk add wget
RUN mkdir /www
# RUN mkdir -p /www/phpmyadmin/tmp
RUN cd /
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.1/phpMyAdmin-5.0.1-all-languages.zip && unzip phpMyAdmin-5.0.1-all-languages.zip 
RUN mv phpMyAdmin-5.0.1-all-languages phpmyadmin
RUN mv phpmyadmin /www
COPY srcs/phpmyadmin/config.inc.php /www/phpmyadmin
#NGINX START
COPY /srcs/phpmyadmin/export.sh /
RUN chmod 777 export.sh
RUN sh export.sh
RUN adduser -D -g 'www' www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www
RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig
COPY srcs/phpmyadmin/nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /run/nginx
RUN rc-status               
RUN touch /run/openrc/softlevel
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
COPY srcs/phpmyadmin/script.sh /
RUN chmod 777 script.sh
# TELEGRAF START
COPY srcs/influxdb/telegraf-1.17.0-r0.apk /
RUN tar -zxvf telegraf-1.17.0-r0.apk
RUN mkdir /etc/telegraf
COPY /srcs/phpmyadmin/telegraf.conf /etc/telegraf
# TELEGRAF END
CMD sh script.sh
#NGINX END
