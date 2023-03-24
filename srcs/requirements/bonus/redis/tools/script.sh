#!/bin/sh
cp -r tools/content/* /www/wordpress/wp-content/plugins/
cp -r tools/object-cache.php /www/wordpress/wp-content/
exec redis-server /etc/redis.conf
