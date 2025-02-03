CREATE USER IF NOT EXISTS 'db_wp_user'@'%' IDENTIFIED BY 'db_wp_pwd';
CREATE DATABASE db_wp_name IF NOT EXISTS;
GRANT ALL PRIVILEGES ON db_wp_name.* TO 'db_wp_user'@'%';

ALTER USER 'root'@'localhost' IDENTIFIED BY 'db_root_pwd';
FLUSH PRIVILEGES;