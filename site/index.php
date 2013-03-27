<?php
require_once("include/conf.php");
require_once(LIBS.'Utils.class.php');
$param = $_POST;

if( isset($param) and !empty($param) )
{
	//var_dump($param);
	define('CODE_RETOUR_VALIDE', '0');
	define('CODE_RETOUR_ERREUR', '1');
	//
	$errors = array();
	
	$errors['nom'] = ( !isset($param['nom']) or empty($param['nom']) ) ? 'Nom invalide' : false;
	$errors['prenom'] = ( !isset($param['prenom']) or empty($param['prenom']) ) ? 'Prenom invalide' : false;
	$errors['email'] = ( !isset($param['email']) or empty($param['email']) ) ? 'Email invalide' : false;
/* 	$errors['telephone'] = ( !isset($param['telephone']) or empty($param['telephone']) ) ? 'Téléphone invalide' : false; */
/* 	$errors['entreprise'] = ( !isset($param['entreprise']) or empty($param['entreprise']) ) ? 'Entreprise invalide' : false; */
	$errors['message'] = ( !isset($param['message']) or empty($param['message']) ) ? 'Message invalide' : false;
	//var_dump($errors);
	
	try
	{
		Utils::emailChecker($param['email']);	
	}
	catch(Exception $e)
	{
		//var_dump($e);
		$errors['email'] = 'Email invalide';
	}
	
	//
	foreach($errors as $key=>$val)
	{
		if ($val == false) unset($errors[$key]);
	}
	//var_dump($errors);

	if(!empty($errors) )
	{
		//$errors = (object) $errors;
		//$smarty->assign('form_errors', $errors);
		
		echo json_encode( array('code_retour' => CODE_RETOUR_ERREUR, 'message' => 'Remplir les champs obligatoires.', 'errors'  => $errors) );
		exit;
	}
	
	

	//$to      = 'contact@troisw-agenceweb.com';
	$subject = 'TroisW Agence Web - Contact via le site  ';
	$message = 'Bonjour !';
	$headers = 'From: '.EMAIL_CONTACT."\r\n" .
				'Reply-To: '.$param['email'] . "\r\n" .
				'X-Mailer: PHP/' . phpversion();

	$message = "
			nom : ".$param['nom']." \r\n
			prenom : ".$param['prenom']." \r\n
			email :  ".$param['email']." \r\n
			telephone :  ".$param['telephone']." \r\n
			entreprise :  ".$param['entreprise']." \r\n
			message :  ".$param['message'];

     mail(EMAIL_CONTACT, $subject, $message, $headers);

	
	echo json_encode( array('code_retour' => CODE_RETOUR_VALIDE, 'message' => 'OK') );
	exit;
	
}




/**
 * ELements du bloc de mise en avant 
 */
$mea = array(
		array(
			"titre" => "Jeu concours Call of Duty sur Jeuvideo.com",
			"url_vignette" => PROD_BASE_URL_MEDIA_BLOG . "2013/03/300x225-cod.jpg",
			"url" => PROD_BASE_URL_BLOG . "jeu-concours-call-of-duty-sur-jeuvideo-com/",
		), 
		
		array(
			"titre" => "Livret recettes Cassegrain sur 750g.com",
			"url_vignette" => PROD_BASE_URL_MEDIA_BLOG . "2013/03/300x225-cassegrain.jpg",
			"url" => PROD_BASE_URL_BLOG . "livret-recettes-pour-cassegrain-sur-750g-com/",
		),
		
		array(
			"titre" => "Jeu concours Call of Duty sur Jeuvideo.com",
			"url_vignette" => PROD_BASE_URL_MEDIA_BLOG . "2013/03/300x225-hunger.jpg",
			"url" => PROD_BASE_URL_BLOG . "jeu-concours-hunger-games-sur-skyrock-com/",
		),
		
		array(
			"titre" => "Jeu concours Securite routiere sur Skyrock.com",
			"url_vignette" => PROD_BASE_URL_MEDIA_BLOG . "2013/03/300x225-mur-de-sam.jpg",
			"url" => PROD_BASE_URL_BLOG . "jeu-concours-securite-routiere-sur-skyrock-com/",
		),
		

);

$smarty->assign("mea", $mea);

//
$citations = array(
				array('citation' => 'La réponse est oui. Mais quelle était la question ? ', 'auteur'=>'Woody Allen'),
				array('citation'=>'Nous avons des questions à toutes vos réponses.', 'auteur'=>'Woody Allen'),
				array('citation'=>'l\'avenir est la seule chose qui m’intéresse, car je compte bien y passer les prochaines années.', 'auteur'=>'Woody Allen'),
				array('citation'=>'Il est impossible de se déplacer plus vite que la lumière, et ce serait idiot car on perdrait son chapeau en route.', 'auteur'=>'Woody Allen'),
				array('citation'=>'Pour s\'améliorer, il faut changer. Donc, pour être parfait, il faut avoir changé souvent.', 'auteur'=>'Churchill')
			);


$keyCitation = array_rand($citations, 1);
$citation = $citations[$keyCitation];
$smarty->assign('citation', $citation );
//

$gobalBg = array ('global-bg-01', 'global-bg-02', 'global-bg-03');
$keyGobalBg = array_rand($gobalBg, 1);
$bgClass = $gobalBg[$keyGobalBg];
$smarty->assign('bgClass', $bgClass );


//
$smarty->assign('required', '');


$smarty->display('index.tpl');
