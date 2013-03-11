<?php
include("include/smarty_conf.php");


if($_SERVER['SERVER_NAME'] == 'troisw.loc')
{
	define('LIBS', '/Users/jlgigante/Sites/libs/');
	
	$serverPort = ($_SERVER["SERVER_PORT"] != '80') ? ':'.$_SERVER["SERVER_PORT"] : '';
	define('BASE_URL', 'http://'.$_SERVER["SERVER_NAME"].$serverPort );
	define('EMAIL_CONTACT', 'jeanluc@troisw-agenceweb.com');
}
else
{
	define('LIBS', $_SERVER['DOCUMENT_ROOT'].'/libs/');	
	define('BASE_URL', 'http://'.$_SERVER["SERVER_NAME"].'/site' );	
	define('EMAIL_CONTACT', 'contact@troisw-agenceweb.com');
}



define('SERVER_NAME', $_SERVER['SERVER_NAME']);