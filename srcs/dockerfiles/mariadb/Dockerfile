# ----------------------------------------------- #
# Base image for the MariaDB container            #
# ----------------------------------------------- #
FROM debian:stable-slim as base

LABEL maintainer="lzipp"
WORKDIR /app

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/.
COPY ./init.sql ./
COPY ./entrypoint.sh /usr/local/bin/.

RUN apt-get update \
	&& apt-get upgrade \
	&& apt-get install -y \
		mariadb-server \
		sed \
	&& mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld \
	&& chmod +x /usr/local/bin/entrypoint.sh


CMD ["/usr/local/bin/entrypoint.sh"]

## ----------------------------------------------- #
## Image for the MariaDB container                 #
## ----------------------------------------------- #
#FROM base as prod
#
#WORKDIR /app
#
#CMD ["mysqld"]
#
## ----------------------------------------------- #
## Image for the MariaDB init container            #
## ----------------------------------------------- #
#FROM base as init
#
#WORKDIR /app