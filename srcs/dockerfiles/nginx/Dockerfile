FROM debian:stable-slim

RUN apt-get update \
    && apt-get upgrade \
    && apt-get install -y \
        nginx
        # openssl
# && mkdir /etc/nginx/ssl \
# && openssl req -newkey rsa:4096 -x509 -sha256 -days 365 -nodes \
#         -out /etc/nginx/ssl/lzipp.crt \
#         -keyout /etc/nginx/ssl/lzipp.key \
# && mkdir -p /run/nginx

COPY ./default /etc/nginx/sites-available/.

CMD ["nginx", "-g", "daemon off;"]