CERTDIR := srcs/dockerfiles/nginx/certs
SECRETSDIR := srcs/secrets

all:
	docker-compose up

certs:
	mkdir -p $(CERTDIR)
	openssl req -x509 -newkey rsa:4096 -keyout $(CERTDIR)/key.pem -out $(CERTDIR)/cert.pem \
	-sha256 -days 3650 -nodes -subj "/C=DE/ST=BadenWuerttemberg/L=Heilbronn/O=42Heilbronn/OU=Student/CN=localhost"
	openssl dhparam -out $(CERTDIR)/dhparam.pem 2048

secrets:
	docker secret create db_name $(SECRETSDIR)/db_name.txt
	docker secret create db_pwd $(SECRETSDIR)/db_pwd.txt
	docker secret create db_user $(SECRETSDIR)/db_user.txt
	docker secret create wp_admin $(SECRETSDIR)/wp_admin.txt
	docker secret create wp_admin_email $(SECRETSDIR)/wp_admin_email.txt
	docker secret create wp_admin_pwd $(SECRETSDIR)/wp_admin_pwd.txt
	docker secret create wp_email $(SECRETSDIR)/wp_email.txt
	docker secret create wp_pwd $(SECRETSDIR)/wp_pwd.txt
	docker secret create wp_title $(SECRETSDIR)/wp_title.txt
	docker secret create wp_user $(SECRETSDIR)/wp_user.txt
#	[...]

