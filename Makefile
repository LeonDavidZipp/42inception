CERTDIR := srcs/dockerfiles/nginx/certs
SECRETSDIR := srcs/secrets

all: clean_secrets secrets
	docker-compose up

#init_db:
#	docker-compose run --rm init_mariadb mysql \
#		-h $(cat /run/secrets/db_wp_name) \
#		-P 3306 \
#		-u $(cat /run/secrets/db_wp_user) \
#		-p $(cat /run/secrets/db_wp_pwd) < /app/init.sql

db:
	sed \
		-e "s/db_wp_user/$(cat $(SECRETSDIR)/db_wp_user.txt)/g" \
		-e "s/db_wp_pwd/$(cat $(SECRETSDIR)/db_wp_pwd.txt)/g" \
		-e "s/db_wp_name/$(cat $(SECRETSDIR)/db_wp_name.txt)/g" \
		srcs/dockerfiles/mariadb/init.sql > srcs/dockerfiles/mariadb/init.tmp.sql
	docker-compose up mariadb

certs:
	mkdir -p $(CERTDIR)
	openssl req -x509 -newkey rsa:4096 -keyout $(CERTDIR)/key.pem -out $(CERTDIR)/cert.pem \
	-sha256 -days 3650 -nodes -subj "/C=DE/ST=BadenWuerttemberg/L=Heilbronn/O=42Heilbronn/OU=Student/CN=localhost"
	openssl dhparam -out $(CERTDIR)/dhparam.pem 2048

secrets:
	docker secret create db_wp_name $(SECRETSDIR)/db_wp_name.txt
	docker secret create db_wp_pwd $(SECRETSDIR)/db_wp_pwd.txt
	docker secret create db_wp_user $(SECRETSDIR)/db_wp_user.txt
	docker secret create wp_admin $(SECRETSDIR)/wp_admin.txt
	docker secret create wp_admin_email $(SECRETSDIR)/wp_admin_email.txt
	docker secret create wp_admin_pwd $(SECRETSDIR)/wp_admin_pwd.txt
	docker secret create wp_email $(SECRETSDIR)/wp_email.txt
	docker secret create wp_pwd $(SECRETSDIR)/wp_pwd.txt
	docker secret create wp_title $(SECRETSDIR)/wp_title.txt
	docker secret create wp_user $(SECRETSDIR)/wp_user.txt
#	[...]

clean_secrets:
	docker secret rm db_wp_name
	docker secret rm db_wp_pwd
	docker secret rm db_wp_user
	docker secret rm wp_admin
	docker secret rm wp_admin_email
	docker secret rm wp_admin_pwd
	docker secret rm wp_email
	docker secret rm wp_pwd
	docker secret rm wp_title
	docker secret rm wp_user

