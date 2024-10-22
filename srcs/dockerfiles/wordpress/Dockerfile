FROM debian:stable-slim

RUN apt-get update \
    && apt-get upgrade \
    && apt-get install -y \
        php-fpm \
        php-mysqli \
        curl

COPY ./www.conf /etc/php/8.2/fpm/pool.d/.
COPY ./script.sh .

RUN chmod +x ./script.sh

CMD ["./script.sh"]