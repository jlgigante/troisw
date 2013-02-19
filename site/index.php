<?php
/* var_dump($_SERVER); 
encore un test
Cool
*/
include("include/smarty_conf.php");

$param = $_POST;

if( isset($param) and !empty($param) )
{
	
	$errors = array();
	
	$errors['nom'] = ( !isset($param['nom']) or empty($param['nom']) ) ? 'Nom invalide' : FALSE;
	$errors['prenom'] = ( !isset($param['prenom']) or empty($param['prenom']) ) ? 'Prenom invalide' : FALSE;
	$errors['email'] = ( !isset($param['email']) or empty($param['email']) ) ? 'Email invalide' : FALSE;
	//
	foreach($errors as $key=>$val)
	{
		if ($val == FALSE) unset($errors[$key]);
	}

	if(!empty($errors) )
	{
		$errors = (object) $errors;
		$smarty->assign('form_errors', $errors);		
	}
	
	$smarty->assign('form_param', '');
	
	$quizInfos = (object) $post;
	$smarty->assign('quizInfos', $quizInfos);
	
	
}

$smarty->display('index.tpl');
