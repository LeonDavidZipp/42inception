<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://developer.wordpress.org/advanced-administration/wordpress/wp-config/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress_db' );

/** Database username */
define( 'DB_USER', 'wordpress_user' );

/** Database password */
define( 'DB_PASSWORD', '70789nJUf01jK0F6inshP' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '*x.?|#DQ:[E-;2eO[ 3[aono%I~_CQ?nlsqbJz&#.Qx:Bd|re67T@#mC+#BP1g#o' );
define( 'SECURE_AUTH_KEY',  '~z7MgxkOzgDIU@(T<^x5Pp86jF6.oBM@d_U8qk[kz%`rf=HqSVEVl?=qIf*~}_HE' );
define( 'LOGGED_IN_KEY',    '.7*(?LSNKAPvMhHYzu_yTEC6kE^qgMn( F[C!ol}+.C}u&|($.QmtJ2[$xLXf8_b' );
define( 'NONCE_KEY',        'z-:>BB%-zyD#vlnzW6TzYxX,?wHC0FFZ,6vk[I]w+`{#-WYi.umo$DJ{ujp*xZ !' );
define( 'AUTH_SALT',        '!y{pyP.TRVH[^yo94AXHKu#aHJ1y(Wn)E]3b{Fw~ee}AK:QY~<oB-aA}bdWJ6.Ia' );
define( 'SECURE_AUTH_SALT', 'DAV}B$SG;0f}!+>@`:t0d1GNnM<I|p)08a,3SY-xzSc:7zJU%]8YlEB]tAa^Ms+T' );
define( 'LOGGED_IN_SALT',   'JP>xC[bS.ey3A Ik)x#L/ZX]1=A%!m@&f6n;pfu+#BgnCS|S69ZN,;JmQ@f!(`~`' );
define( 'NONCE_SALT',       ',9/Ou}gu_a%QQI>TMI%(Pq.5.#+SJDlGo!0GcbpL{>hO1_0M{r Co}YU`x?g+AMv' );

/**#@-*/

/**
 * WordPress database table prefix.
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
 * @link https://developer.wordpress.org/advanced-administration/debug/debug-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
