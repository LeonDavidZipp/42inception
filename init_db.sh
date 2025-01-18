#!/bin/sh

# prepare init container
set +x
source .env
set -x

PW=$(cat srcs/secrets/db_wp_pwd.txt)

sed \
	-e "s/db_wp_user/$DB_WP_USER/g" \
	-e "s/db_wp_pwd/$PW/g" \
	-e "s/db_wp_name/$DB_WP_NAME/g" \
	srcs/dockerfiles/mariadb/init.sql > srcs/dockerfiles/mariadb/init.tmp.sql

docker-compose up -d --build mariadb

#until docker-compose exec mariadb mysqladmin ping -h mariadb --silent; do
#  sleep 2
#done

docker-compose run --rm init_mariadb mysql \
	-P 3306 \
	-h mariadb \
	-u $DB_WP_USER \
	-p $PW < srcs/dockerfiles/mariadb/init.tmp.sql

docker-compose down mariadb

rm srcs/dockerfiles/mariadb/init.tmp.sql
