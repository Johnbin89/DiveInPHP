<?php
define('DB_SERVER', '***REMOVED***');
define('DB_USERNAME', '***REMOVED***');
define('DB_PASSWORD', 'diver');
define('DB_NAME', '***REMOVED***');
define('DB_PORT', '***REMOVED***');
 
/* Attempt to connect to MySQL database */
$link = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME, DB_PORT);
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
?>