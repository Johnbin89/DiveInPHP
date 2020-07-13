<?php
define('DB_SERVER', getenv('ENV_DB_SERVER'));
define('DB_USERNAME', getenv('ENV_DB_USERNAME'));
define('DB_PASSWORD', getenv('ENV_DB_PASSWORD'));
define('DB_NAME', getenv('ENV_DB_NAME'));
define('DB_PORT', getenv('ENV_DB_PORT'));
 
/* Attempt to connect to MySQL database */
$link = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME, DB_PORT);
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
?>