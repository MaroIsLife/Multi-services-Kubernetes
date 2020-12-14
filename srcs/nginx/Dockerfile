FROM alpine
EXPOSE 80
RUN apk update
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
#WHY SHOULD WE USE RC-STATUS BEFORE NGINX START????? bugged af
RUN touch /run/openrc/softlevel
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
COPY srcs/nginx/script.sh /
RUN chmod 777 script.sh
CMD sh script.sh

#Should i start nginx using CMD or Kubernetes does it by itself?
