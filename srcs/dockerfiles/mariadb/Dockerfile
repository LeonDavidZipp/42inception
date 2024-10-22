FROM debian:stable-slim

RUN apt-get update \
    && apt-get upgrade \
    && apt-get install -y \
        mariadb-server \
    && mkdir /run/mysqld

COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/.
COPY ./init.sql /etc/mysql/init.sql
COPY ./script.sh .

RUN chmod +x script.sh

CMD ["./script.sh"]