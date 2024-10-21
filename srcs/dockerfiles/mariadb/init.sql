CREATE USER 'wordpress_user'@'%' IDENTIFIED BY '70789nJUf01jK0F6inshP';
DROP DATABASE IF EXISTS wordpress_db;
CREATE DATABASE wordpress_db;
GRANT ALL PRIVILEGES ON wordpress_db.* TO 'wordpress_user'@'%';
FLUSH PRIVILEGES;