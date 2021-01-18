FROM alpine:3.11
# RUN apk add pure-ftpd --repository http://dl-3.alpinelinux.org/alpine/edge/testing/
RUN apk add wget
RUN apk add vim
RUN apk add openssl
RUN wget https://dl-cdn.alpinelinux.org/alpine/edge/testing/x86_64/pure-ftpd-1.0.49-r1.apk
RUN tar -xvf pure-ftpd-1.0.49-r1.apk
# RUN adduser maro
RUN RUN echo "root:root" | chpasswd
RUN openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=Maro" -addext "subjectAltName=DNS:Maro" -newkey rsa:2048 -keyout /etc/ssl/private/pure-ftpd.pem -out /etc/ssl/private/pure-ftpd.pem;
COPY srcs/ftps/pure-ftpd.conf /etc
COPY srcs/ftps/script.sh /
RUN chmod 777 script.sh
COPY srcs/ftps/healthy.sh /
CMD sh script.sh