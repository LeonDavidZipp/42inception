#!/bin/bash

PW=$(cat /run/secrets/db_wp_pwd)

service mariadb start

sed \
	-e "s/db_wp_user/$DB_WP_USER/g" \
	-e "s/db_wp_pwd/$PW/g" \
	-e "s/db_wp_name/$DB_WP_NAME/g" \
	/app/init.sql > /tmp/init.tmp.sql \
	&& mysql < /tmp/init.tmp.sql \
	&& rm -f /tmp/init.tmp.sql

service mariadb stop

mysqld_safe
