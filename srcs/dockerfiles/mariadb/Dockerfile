# ----------------------------------------------- #
# Base image for the MariaDB container            #
# ----------------------------------------------- #
FROM debian:stable-slim as base

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/.
COPY ./init.sql /etc/mysql.init.sql

RUN apt-get update \
	&& apt-get upgrade \
	&& apt-get install -y \
	    mariadb-server \
	    sed \
	&& mkdir /run/mysqld
RUN sed \
	-e "s/db_wp_user/$(cat /run/secrets/db_wp_user)/g" \
	-e "s/db_wp_pwd/$(cat /run/secrets/db_wp_pwd)/g" \
	-e "s/db_wp_name/$(cat /run/secrets/db_wp_name)/g" \
	/etc/mysql.init.sql > /etc/mysql.init.tmp.sql

CMD ["mysqld"]

# ----------------------------------------------- #
# Image for the MariaDB container                 #
# ----------------------------------------------- #
