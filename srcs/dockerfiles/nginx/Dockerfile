FROM debian:stable-slim

RUN apt-get update \
	&& apt-get upgrade \
	&& apt-get install -y nginx \
	&& mkdir -p /etc/nginx/sites-available \
	&& mkdir -p /etc/nginx/ssl

COPY ./default /etc/nginx/sites-available/.
COPY ./certs /etc/nginx/ssl/

CMD ["nginx", "-g", "daemon off;"]