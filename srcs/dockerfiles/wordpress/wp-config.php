<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'db_name' );

/** MySQL database username */
define( 'DB_USER', 'db_user' );

/** MySQL database password */
define( 'DB_PASSWORD', 'db_password' );

/** MySQL hostname */
define( 'DB_HOST', 'mariadb' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

define( 'WP_ALLOW_REPAIR', true );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'FJt(H|!wljUVvPU3E2+=Xp)+<g;-*M.~g-0H=H-6Z|@!ZX_K+&y(6^ Q[*5O;lTq');
define('SECURE_AUTH_KEY',  'H/Gk-VpR$]r9wxXbnJ:l*xNu2L;b[#rH#b~IsV25dPf_iVrJ8,:+|81!1^/nsopy');
define('LOGGED_IN_KEY',    'qyIYZ{!]^x?k_*M9{Rle-$!Ai%3E_dU,H8-_.ehX]<<Bz8qmtcGF#8Y&UEl7F!]+');
define('NONCE_KEY',        '+/zw7iSEc$!}1:POk b`s^l_VJ -k7;UQ+DE{<_h@td^K?JQJ)0S0BX>*@&qg?SB');
define('AUTH_SALT',        '}0xNKGm/k/iz(q2|PlsI?t-GzLb-qU%(~Hg4cT)wW7><5V%]1bC}5]]z/-UqcG+H');
define('SECURE_AUTH_SALT', 'A;A7X0[wbj7mn,m1?^0cuu|8hSt-{ 9%WSAuM#3J6t*2^d:3]guFgF_;CBD&{*d4');
define('LOGGED_IN_SALT',   '|$f+3A$0xL`F[FeP_Vg&Pva.>+avI5A:,0z2mq+,jWGBcF2`}H&iMY7Ky>6HKcIv');
define('NONCE_SALT',       '1|Zxg|EA_cD*rQ)8%L@&t-,LVxGk~S*@a/@S|v0MuOaSql4a<1-PU+bGmD_-YuOr');


define('WP_CACHE', true);

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
?>