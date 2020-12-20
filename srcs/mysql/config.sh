#!/bin/bash
# mysql -e "SET PASSWORD FOR root@localhost = PASSWORD('maro123');FLUSH PRIVILEGES;"
# mysql -u root -pmaro123 -e "CREATE USER 'maro'@'localhost' IDENTIFIED BY 'maro123';GRANT ALL PRIVILEGES ON *.* TO 'maro'@'localhost';FLUSH PRIVILEGES;"
/usr/bin/mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
# mariadb-install-db -u root
/usr/bin/mysqld --user=root&
mysql -u root -e "CREATE DATABASE mydb"
mysql -u root -e "CREATE DATABASE phpmyadmin"
mysql -u root -e "CREATE USER 'Maro'@'localhost' IDENTIFIED BY 'root';"
mysql -u root -e "GRANT ALL PRIVILEGES ON *.* TO 'Maro'@'localhost';"
mysql -u root mydb < mydb.sql
mysql -u root phpmyadmin < phpmyadmin.sql
sleep infinite
# /usr/bin/mysqld_safe --datadir="/var/lib/mysql"