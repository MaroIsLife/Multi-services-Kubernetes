<?php
define( 'DB_NAME', 'mydb' );
define( 'DB_USER', 'Maro' );
define( 'DB_PASSWORD', 'root' );
define( 'DB_HOST', 'mysql-service' );
define( 'DB_CHARSET', 'utf8mb4' );
define( 'DB_COLLATE', '' );
define( 'AUTH_KEY',         'WnSg;n/(hbb<9c@[ b6!NxfDFdOsX3MkJ#)m8qMz@Tua#&oZsS:/C*>9L41%,(QZ' );
define( 'SECURE_AUTH_KEY',  'OrM<Nis_]5 v@BlNgI6%L9i^xx80l3M93BiA0=aK>xb4S2>u9y,2AKmVmt.1+N6B' );
define( 'LOGGED_IN_KEY',    '!s`N>t6P,2VRB+/&yZudb&3aEPTpr)mm-33)Q@7j*dW,h=Z`1i$bcv~DV:(xAqJk' );
define( 'NONCE_KEY',        '25EL]&)u:W)3}zzfa:Re(HNi~S{A=kWaBygAA+MVz+/Oh@!}a6XW~U.<w2V76W*%' );
define( 'AUTH_SALT',        'Y`wX1d>dg>6Yw}BEttbLAAEMH@O= Rq!.0y{1K@^Co~Ejuf)#^Dlm$:=waZ08^zr' );
define( 'SECURE_AUTH_SALT', 'H)u#631T}>5ON{oH|=kdr}g=-fLx}U`~wRFgbk:0,]tVZ}Ch,%N@V/?=R>B#>RC_' );
define( 'LOGGED_IN_SALT',   'JtMT&LEjh*$T1rT9 >$g]rcnr}]NG+r~D5LSSWFq^fK!cP1$.Jy#^;`p5CYh_dpg' );
define( 'NONCE_SALT',       'Tu^>%@lSd*{*).WIv;^fBG35#`QQtOZ#X|K%7;@y>(s4Injg,wi R1bw~)_6nsq!' );
$table_prefix = 'wp_';
define( 'WP_DEBUG', false );
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}
require_once( ABSPATH . 'wp-settings.php' );
