# Create config if it doesn't exist
if [ ! -f /var/www/html/wp-config.php ]; then
    cd /var/www/html
    wp core download --allow-root

    WP_DB_USER_PWD=$(cat /run/secrets/wp_db_user_pwd)
    WP_ADMIN_PWD=$(cat /run/secrets/wp_admin_pwd)
    WP_USER_PWD=$(cat /run/secrets/wp_user_pwd)

    wp config create \
        --dbname="${WP_DB_NAME}" \
        --dbuser="${WP_DB_USER}" \
        --dbpass="${WP_DB_USER_PWD}" \
        --dbhost="${WP_DB_HOST}" \
        --dbprefix=${WP_DB_PREFIX} \
        --allow-root

    if ! wp core is-installed --allow-root; then
        wp core install \
            --url="${WP_DOMAIN}" \
            --title="${WP_TITLE}" \
            --admin_user="${WP_ADMIN}" \
            --admin_email="${WP_ADMIN_EMAIL}" \
            --admin_password="${WP_ADMIN_PWD}" \
            --allow-root
    else
        echo "WordPress is already installed. Skipping core installation."
    fi

    if ! wp user get "${WP_USER}" --field=ID --allow-root > /dev/null 2>&1; then
        wp user create \
            "${WP_USER}" \
            "${WP_USER_EMAIL}" \
            --user_pass="${WP_USER_PWD}" \
            --allow-root
    else
        echo "User ${WP_USER} already exists. Skipping user creation."
    fi
fi

chown -R www-data:www-data /var/www/html/

php-fpm -F