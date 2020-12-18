FROM alpine
EXPOSE 80
EXPOSE 443
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
        php-mysqli \
        php7-zip
RUN apk update
RUN apk add openssl
RUN apk add nginx
RUN apk add vim
RUN apk add openrc --no-cache
RUN adduser -D -g 'www' www
RUN mkdir /www
RUN chown -R www:www /var/lib/nginx
RUN chown -R www:www /www
RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig
COPY srcs/nginx/nginx.conf /etc/nginx/nginx.conf
COPY srcs/nginx/index.html /www/index.html
RUN mkdir -p /run/nginx
RUN rc-status
COPY /srcs/phpmyadmin/export.sh /
RUN chmod 777 export.sh
RUN sh export.sh      
#WHY SHOULD WE USE RC-STATUS BEFORE NGINX START????? bugged af
RUN touch /run/openrc/softlevel
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
COPY srcs/nginx/script.sh /
RUN chmod 777 script.sh
RUN openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=MaroOugnou" -addext "subjectAltName=DNS:MaroOugnou" -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt;
COPY srcs/nginx/default.conf /etc/nginx/conf.d
CMD sh script.sh