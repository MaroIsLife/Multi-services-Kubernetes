#!/bin/bash
# mysql -e "SET PASSWORD FOR root@localhost = PASSWORD('maro123');FLUSH PRIVILEGES;"
# mysql -u root -pmaro123 -e "CREATE USER 'maro'@'localhost' IDENTIFIED BY 'maro123';GRANT ALL PRIVILEGES ON *.* TO 'maro'@'localhost';FLUSH PRIVILEGES;"
/etc/init.d/mariadb setup
/etc/init.d/mariadb start
# mariadb-install-db -u root
mysql -u root -e "CREATE DATABASE mydb"
mysql -u root -e "CREATE DATABASE phpmyadmin"
mysql -u root -e #
mysql -u root -e "CREATE USER 'Maro'@'%' IDENTIFIED BY 'root';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'Maro'@'%';"
# mysql -u root mydb < mydb.sql
mysql -u root phpmyadmin < phpmyadmin.sql
/etc/init.d/mariadb stop
# sleep infinite
/usr/bin/mysqld --user=root
# /usr/bin/mysqld_safe --datadir="/var/lib/mysql"