FROM debian:stable


RUN apt-get update \
    && apt-get upgrade \
    && apt-get install -y \
    php-fpm \
    php-mysql

COPY ./www.conf /etc/php/8.2/fpm/pool.d/.

CMD ["php-fpm8.2", "-F"]