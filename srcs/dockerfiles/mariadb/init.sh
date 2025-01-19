#!/bin/bash

PW=$(cat /run/secrets/db_wp_pwd)

sed \
	-e "s/db_wp_user/$DB_WP_USER/g" \
	-e "s/db_wp_pwd/$PW/g" \
	-e "s/db_wp_name/$DB_WP_NAME/g" \
	/app/init.sql > /tmp/init.tmp.sql \
	&& mysql < /tmp/init.tmp.sql

kill $(cat /run/mysqld/mysqld.pid)

mysqld
