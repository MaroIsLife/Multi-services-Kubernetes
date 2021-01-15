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
define( 'DB_NAME', 'mydb' );

/** MySQL database username */
define( 'DB_USER', 'Maro' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'mysql-service' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '(R@YU3>5)}TeTUK%$eS1~B)r}<wH,7Rv.<FRh2.)c3S89S<9(d|$UF <3eavQUR ' );
define( 'SECURE_AUTH_KEY',  '<HgF4&{+v&p{O6^2>ID0m;H>PaW6{9@6BbY |*dK^Zd^F,Abd7x;^ R/&<s.W#4H' );
define( 'LOGGED_IN_KEY',    'yo.J9MmDfg,z^#im|=} {`B{pGQdhze;B]_mRvh`!6&gyC9`[2QLH51<ZU~Org@N' );
define( 'NONCE_KEY',        'y82Khc/-1|Bkza:w*2l*R$xheGZ^v>O.UYiu!m|7g6 SO4J;}Y!-|,e<SjL{Y)7E' );
define( 'AUTH_SALT',        'aAG|><y^_So6(<kCE3$d.6Yv}aD|l2<2ew_<Fa6505=9g=:g)p2t< ugTS}xuP`&' );
define( 'SECURE_AUTH_SALT', '/=Z6}Cs08GEj%oP1arg#y&mpJ1t.BQ**SO=Yx!GFEnZ LV9bl)rrQ)-zv!8b:6B=' );
define( 'LOGGED_IN_SALT',   'S{/r|DA+p7c.ljU5r<SVm;uc4;q;_af_jQTa, 5&oJ1<,:t=xERO`2|WTrA/hr;*' );
define( 'NONCE_SALT',       '?sE`X^N-~;0ix<4<F{PWIs8?.N)X7]=a,2:D8|V(WmU)(9jD/A=@Q9n`#m0rMn@[' );

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
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
