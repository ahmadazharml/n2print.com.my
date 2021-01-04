<?php

//echo 'config.php<br />';

$path = $_SERVER['SERVER_NAME'];

$dir = "n2print.com.my-dlod/";
// Always provide a TRAILING SLASH (/) AFTER A PATH

define('URL', 'http://' . $path . '/' . $dir);
define('START_PAGE', 'start');
define('CONT_PAGE', 'page');
define('CONTROLLER', 'controllers/');
define('EXT', '.php');
define('EXT_VIEWS', '.phtml');
define('LIBS', 'libs/');

define('DB_TYPE', 'mysql');
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_NAME', 'n2print');

/**
define('DB_USER', '');
define('DB_PASS', '');
define('DB_NAME', '');
*/
