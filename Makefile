CERTDIR := srcs/dockerfiles/nginx/certs
SECRETSDIR := srcs/secrets

all:
	docker-compose up --build

db:
	docker-compose up --build db

nginx:
	docker-compose up nginx

wp:
	docker-compose up wordpress

certs:
	mkdir -p $(CERTDIR)
	openssl req -x509 -newkey rsa:4096 -keyout $(CERTDIR)/key.pem -out $(CERTDIR)/cert.pem \
	-sha256 -days 3650 -nodes -subj "/C=DE/ST=BadenWuerttemberg/L=Heilbronn/O=42Heilbronn/OU=Student/CN=localhost"
	openssl dhparam -out $(CERTDIR)/dhparam.pem 2048

secrets:
	docker secret create db_wp_pwd $(SECRETSDIR)/db_wp_pwd.txt
	docker secret create db_root_pwd $(SECRETSDIR)/db_root_pwd.txt
	docker secret create wp_admin_pwd $(SECRETSDIR)/wp_admin_pwd.txt
	docker secret create wp_pwd $(SECRETSDIR)/wp_pwd.txt

clean:
	docker-compose down
	rm -rf $(CERTDIR)
	docker secret rm db_wp_pwd db_root_pwd wp_admin_pwd wp_pwd > /dev/null 2>&1 || true
