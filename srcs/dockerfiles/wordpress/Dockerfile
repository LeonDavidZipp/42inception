FROM debian:stable-slim

RUN apt-get update \
    && apt-get upgrade \
    && apt-get install -y \
        php-fpm \
        php-mysql

CMD ["php-fpm8.2", "-F"]