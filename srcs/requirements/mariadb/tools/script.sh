#!/bin/sh

if [ $(ls /var/lib/mysql | wc -l) -eq 0 ]
then
	/etc/init.d/mariadb setup
	/etc/init.d/mariadb start
	user_admin="CREATE DATABASE \`${WORDPRESS_DB_NAME}\`;CREATE USER '${WORDPRESS_DB_USER}'@'${WORDPRESS_DB_HOST}' IDENTIFIED BY '${WORDPRESS_DB_PASSWORD}';GRANT USAGE ON *.* TO '${WORDPRESS_DB_USER}'@'${WORDPRESS_DB_HOST}';GRANT ALL ON \`${WORDPRESS_DB_NAME}\`.* TO '${WORDPRESS_DB_USER}'@'${WORDPRESS_DB_HOST}';FLUSH PRIVILEGES;";
	echo "${user_admin}" | mysql;
	change_pass_root="ALTER USER 'root'@'localhost' IDENTIFIED BY '#222221zel-hach';";
	echo "${change_pass_root}" | mysql
	/etc/init.d/mariadb restart;
	/etc/init.d/mariadb stop;
fi

exec  /usr/bin/mysqld_safe