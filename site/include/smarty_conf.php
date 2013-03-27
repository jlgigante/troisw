<?php

// Style *nix (notez le 'S' majuscule)
if($_SERVER['SERVER_NAME'] == 'troisw.loc')
{
	define('SMARTY_DIR', '/Users/jlgigante/Sites/libs/Smarty/libs/');
}
else
{
	define('SMARTY_DIR', $_SERVER['DOCUMENT_ROOT'].'/libs/Smarty/libs/');	
}



require_once(SMARTY_DIR . 'Smarty.class.php');

$smarty = new Smarty();

$smarty->template_dir = 'templates/';
$smarty->compile_dir = 'templates_c/';
//$smarty->config_dir = '/web/www.example.com/smarty/livredor/configs/';
//$smarty->cache_dir = '/web/www.example.com/smarty/livredor/cache/';