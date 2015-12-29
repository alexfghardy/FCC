<?php
ob_start();
session_start();

//set timezone
//date_default_timezone_set('Europe/London');

//database credentials
define('DBHOST', "alexanderhardy.co.uk.mysql");
define('DBUSER', "alexanderhardy_");
define('DBPASS', "nnrs6214");
define('DBNAME',"alexanderhardy_");
$dsn = 'mysql:dbname=alexanderhardy_;host=alexanderhardy.co.uk.mysql';
$user = 'alexanderhardy_';
$password = 'nnrs6214';


//application address
define('DIR','http://alexanderhardy.co.uk/test/');
define('SITEEMAIL','alexfghardy@gmail.com');

try {

	//create PDO connection
	//$db = new PDO("mysql:host=".DBHOST.";port=3306;dbname=".DBNAME, DBUSER, DBPASS);
	$db = new PDO($dsn, $user, $password);
	$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

} catch(PDOException $e) {
	//show error
    echo '<p class="bg-danger">'.$e->getMessage().'</p>';
    exit;
}

//include the user class, pass in the database connection
include('classes/user.php');
include('classes/phpmailer/mail.php');
$user = new User($db);
?>
