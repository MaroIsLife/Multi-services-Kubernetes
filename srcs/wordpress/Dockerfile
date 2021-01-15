FROM alpine:3.11
EXPOSE 5050
RUN apk update
RUN apk add nginx
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
RUN apk add vim
RUN apk add openrc --no-cache
RUN apk add php-mysqli
RUN apk add wget
RUN wget https://wordpress.org/latest.zip
RUN unzip latest.zip
RUN mkdir www
RUN mv wordpress/* www/

#NGINX START
COPY /srcs/wordpress/export.sh /
RUN chmod 777 export.sh
RUN sh export.sh
RUN adduser -D -g 'www' www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www
RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig
COPY srcs/wordpress/nginx.conf /etc/nginx/nginx.conf
RUN mkdir -p /run/nginx
RUN rc-status               
RUN touch /run/openrc/softlevel
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
COPY srcs/wordpress/script.sh /
COPY srcs/wordpress/wp-config.php /www
RUN chmod 777 script.sh
# TELEGRAF START
COPY srcs/influxdb/telegraf-1.17.0-r0.apk /
RUN tar -zxvf telegraf-1.17.0-r0.apk
RUN mkdir /etc/telegraf
COPY /srcs/wordpress/telegraf.conf /etc/telegraf
# TELEGRAF END
CMD sh script.sh
#NGINX END