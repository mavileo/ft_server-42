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
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wpdb' );

/** MySQL database username */
define( 'DB_USER', 'wp_user' );

/** MySQL database password */
define( 'DB_PASSWORD', 'wppass' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

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
define('AUTH_KEY',         ' %*D=`Z]6#*3s+o@fEi3|^`L|q!0;N l:9^-,`L&3RY*yY*0@/uQf~50$|7i6Bjf');
define('SECURE_AUTH_KEY',  ':*0y@3jb-YO4;RKD68f6(jo&!7Zj[3Akyr:mg^AR85u0c~3iL,Cwkxf04@OmVR|a');
define('LOGGED_IN_KEY',    'CA*1;VzI%k*%FZPgZSPFWFI0UoT7.Q$S]qYd8kN;^1mU+l7Xqu&jSTu8:sxyGj#l');
define('NONCE_KEY',        'a$/dk[`=WMWNmrLtDtPNr2x|AkY=`4wi;uS9~-9!^g.)pN^,ZYo-ofr-(#0+((HC');
define('AUTH_SALT',        '(1$5q lz`}Q53lu6V[dO%XI-T_B|{ilEt(@~AL49|>k?[p@bEoX2Pj1,mYM|]!@T');
define('SECURE_AUTH_SALT', '7mF!<-pzPTY-6`T!>F`F]Z%t]?(WDZ5k2V}B#F`j+f.aD4XBq- eleoWU%2}l[CX');
define('LOGGED_IN_SALT',   '}>(}|mI8LnnlR5-OrpV+/96@1|D^+xW&@CS-tY&4/9W!h7<F|sl%ztu_G6n50zq<');
define('NONCE_SALT',       'S@goCx%u7!3L1F{d+GjG-<z|V-1cYo33!zKY[x5Se|$zbo{AiE`Ts|6(^|o)<&Hk');
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
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
