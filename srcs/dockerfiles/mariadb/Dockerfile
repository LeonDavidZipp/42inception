FROM debian:stable-slim

COPY init.sql /
COPY entrypoint.sh /

RUN apt-get update -y \
    && apt-get install -y mariadb-server \
    && chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]