CERTDIR = srcs/dockerfiles/nginx/certs

all:
	docker-compose up

certs:
	mkdir -p $(CERTDIR)
	openssl req -x509 -newkey rsa:4096 -keyout $(CERTDIR)/key.pem -out $(CERTDIR)/cert.pem \
	-sha256 -days 3650 -nodes -subj "/C=DE/ST=BadenWuerttemberg/L=Heilbronn/O=42Heilbronn/OU=Student/CN=localhost"
	openssl dhparam -out $(CERTDIR)/dhparam.pem 2048
