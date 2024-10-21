FROM debian:stable-slim

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/.
COPY ./init.sql /etc/mysql.init.sql

RUN apt-get update \
    && apt-get upgrade \
    && apt-get install -y \
        mariadb-server \
    && mkdir /run/mysqld

CMD ["mysqld"]