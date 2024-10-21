FROM debian:stable-slim

COPY ./www.conf /etc/php/8.2/fpm/pool.d/.

RUN apt-get update \
    && apt-get upgrade \
    && apt-get install -y \
        php-fpm \
        php-mysql

CMD ["php-fpm8.2", "-F"]