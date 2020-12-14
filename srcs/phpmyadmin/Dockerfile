FROM alpine
RUN apk update
RUN apk add vim
RUN apk add openrc --no-cache
RUN add wget
RUN wget https://files.phpmyadmin.net/phpMyAdmin/5.0.1/phpMyAdmin-5.0.1-all-languages.zip && unzip phpMyAdmin-5.0.1-all-languages.zip && mv phpMyAdmin-5.0.1-all-languages /var/www/html/phpmyadmin
