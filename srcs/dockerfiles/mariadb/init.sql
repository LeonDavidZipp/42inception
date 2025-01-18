CREATE USER 'db_wp_user'@'%' IDENTIFIED BY 'db_wp_pwd';
DROP DATABASE IF EXISTS db_wp_name;
CREATE DATABASE db_wp_name;
GRANT ALL PRIVILEGES ON db_wp_name.* TO 'db_wp_user'@'%';
FLUSH PRIVILEGES;

ALTER USER 'root'@'localhost' IDENTIFIED BY 'db_root_pw';
FLUSH PRIVILEGES;