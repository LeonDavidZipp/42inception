# ----------------------------------------------- #
# Base image for the MariaDB container            #
# ----------------------------------------------- #
FROM debian:stable-slim as base

MAINTAINER "lzipp"
WORKDIR /app

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/.

RUN apt-get update \
	&& apt-get upgrade \
	&& apt-get install -y \
	    mariadb-server \
	&& mkdir -p /run/mysqld && chown -R mysql:mysql /run/mysqld

# ----------------------------------------------- #
# Image for the MariaDB container                 #
# ----------------------------------------------- #
FROM base as prod

WORKDIR /app

CMD ["mysqld"]

# ----------------------------------------------- #
# Image for the MariaDB init container            #
# ----------------------------------------------- #
FROM base as init

WORKDIR /app