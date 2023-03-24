#!/bin/sh
wget http://wordpress.org/latest.tar.gz && tar -xzvf latest.tar.gz &&  rm latest.tar.gz
rm -rf  /www/wordpress/wp-config-sample.php /www/wordpress/wp-config.php
wp config create --dbname=$WORDPRESS_DB_NAME  --dbuser=$WORDPRESS_DB_USER --dbpass=$WORDPRESS_DB_PASSWORD \
                  --dbhost=mariadb \
                  --skip-check \
                  --path=/www/wordpress/ \
				--extra-php<<PHP
define('WP_CACHE', true);
define('WP_REDIS_HOST', 'redis');
define('WP_REDIS_PORT', 6379);
define('WP_REDIS_TIMEOUT', 1);
define('WP_REDIS_READ_TIMEOUT', 1);
define('WP_REDIS_DATABASE', 0);
PHP
wp core install --url=https://$DOMAIN_NAME \
                  --title="$TITLE" \
                  --admin_name=$admin\
                  --admin_password=$admin_pwd \
                  --admin_email=$EMAIL --path=/www/wordpress/ 

wp user create $Name $EMAIL2 --role=author --user_pass=$pwd --path=/www/wordpress/ 

exec /usr/sbin/php-fpm7 --nodaemonize