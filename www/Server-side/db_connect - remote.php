<?php

$HOST_NAME = "localhost";
$DB_USER_NAME = "heys_db";
$DB_PWD = "JPxSB77R";
$DB_NAME = "heys_db";

define("HOST", $HOST_NAME); // The host you want to connect to.
define("USER", $DB_USER_NAME); // The database username.
define("PASSWORD", $DB_PWD); // The database password. 
define("DATABASE", $DB_NAME); // The database name.
 
$mysqli = new mysqli(HOST, USER, PASSWORD, DATABASE);



// If you are connecting via TCP/IP rather than a UNIX socket remember to add the port number as a parameter.

?>