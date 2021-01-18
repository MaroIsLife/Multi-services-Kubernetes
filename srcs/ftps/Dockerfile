FROM alpine:3.11
RUN apk add wget
RUN apk add bash
RUN apk add vim
RUN apk add openssl
RUN apk add vsftpd
RUN apk add openrc --no-cache
RUN adduser --gecos "" --disabled-password Maro
RUN echo "Maro:root" | chpasswd
RUN echo "root:root" | chpasswd
RUN openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=Maro" -addext "subjectAltName=DNS:Maro" -newkey rsa:2048 -keyout /etc/ssl/private/vsftpd.pem -out /etc/ssl/private/vsftpd.pem;
COPY srcs/ftps/vsftpd.conf /etc/vsftpd/
COPY srcs/ftps/script.sh /
RUN chmod 777 script.sh
# TELEGRAF START
COPY srcs/influxdb/telegraf-1.17.0-r0.apk /
RUN tar -zxvf telegraf-1.17.0-r0.apk
RUN mkdir /etc/telegraf
COPY /srcs/ftps/telegraf.conf /etc/telegraf
# TELEGRAF END
COPY srcs/ftps/healthy.sh /
RUN mkdir -p /ftps
RUN touch /home/Maro
CMD sh script.sh