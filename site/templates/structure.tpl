<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="utf-8">
	<title>TroisW - agence web</title>

	<meta name="title" content="TroisW agence web"/> 
	<meta name="description" content="En favorisant l'interactivité, la conversation et la viralité avec les consommateurs, le digital est plus que jamais au coeur de la communication des annonceurs et des marques. A la fois agence conseil, agence créative et studio de production, TroisW vous accompagne dans la réalisation de tous vos projets web, qu’ils prennent la forme d’une campagne pub, d’un site vitrine ou d’un jeu concours événementiel."/>	
	<link rel="images_src" url="{$smarty.const.BASE_URL}/skins/images/logo.png"/>
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<script src="http://code.jquery.com/ui/1.10.1/jquery-ui.min.js"></script>
	<script src="{$smarty.const.BASE_URL}/skins/js/jquery.easing.1.3.js"></script>
	<script src="{$smarty.const.BASE_URL}/skins/js/jquery.viewport.js"></script>
	<script src="{$smarty.const.BASE_URL}/skins/js/custom.js"></script>
	
	<meta name="viewport" content="width=device-width">
	
	<link href="{$smarty.const.BASE_URL}/skins/css/style.css" media="screen" rel="stylesheet" type="text/css" />
	<link rel="icon" href="{$smarty.const.BASE_URL}/favicon.ico" />
</head>
<body class="{$bgClass}">
	<!--   -->
	<div id="wait">
		<h1></h1>
	</div>

<div id="wrap" class="clearfix"  style="display:none; z-index:999;">
	<header>
		<div id="top" style="position:absolute; display:none;">
			Top
		</div>
	
				<a href="#art1" class="scroll ui-widget-content" id="logo"><img src="{$smarty.const.BASE_URL}/skins/images/logo.png" alt="Troiw-agenceweb"  ></a>
	
		<div id="menu">
			<nav>
				{include file="_menu.tpl"}
			</nav>			
			<div id="fleche">			
			</div>
		</div>
		
		<div id="mea">
			<ul>
				{section name=foo loop=$mea}
					<li>
						<div id="content">
							<div id="vignette" class="vignette" style="background-image:url({$mea[foo].url_vignette});">
<!-- 								<img src="{$mea[foo].url_vignette}" alt="" title="{$mea[foo].titre}" style="width:100%; height:100%;" /> -->
							</div>
							
<<<<<<< HEAD
							<div id="infos" class="infos">
								<p>
								{$mea[foo].titre} - 
=======
							<div id="infos" class="infos-{$smarty.section.foo.index}">
								<p>
<<<<<<< HEAD
								{$mea[foo].titre} -
>>>>>>> diapo home
=======
								{$mea[foo].titre} - {$smarty.section.foo.index} 
>>>>>>> diapo
								</p>
								<p class="suite">
									<a href="{$mea[foo].url}">voire l'article</a>
								</p>
							</div>
							
						</div>
					</li>
				{/section}				
			</ul>
		</div>
	</header>
	<section id="section">
		{block name="contenu"}
				Contenu
		{/block}				
	</section>
</div>
	
<footer class="clearfix" id="footer">
	<div id="contact">
		<span>contact</span>
	</div>
	<div id="wrap" style="padding:40px;">
		<h2 class="text-center">Contactez-nous</h2>
		<h3 class="text-center">pour obtenir un devis gratuit</h3>
		<!--
			<ul>
				<li><a href="#">twitter</a></li>
				<li><a href="#">facebook</a></li>
			</ul>
		-->
		<div id="left">
			<div class="content">
				<!-- <iframe width="300" height="170" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.fr/maps?f=q&amp;source=embed&amp;hl=fr&amp;geocode=&amp;q=62+Rue+Jean-Jacques+Rousseau,+Paris&amp;aq=1&amp;oq=62+rue+jean&amp;sll=48.680793,2.502588&amp;sspn=2.567931,3.339844&amp;ie=UTF8&amp;hq=&amp;hnear=62+Rue+Jean-Jacques+Rousseau,+75001+Paris,+%C3%8Ele-de-France&amp;t=m&amp;ll=48.864094,2.343693&amp;spn=0.009599,0.025835&amp;z=14&amp;iwloc=A&amp;output=embed"></iframe>	 -->					
				<small class="clearfix" style="float:right;margin:-20px 0px -20px 0px;"><a href="http://maps.google.fr/maps?f=q&amp;source=embed&amp;hl=fr&amp;geocode=&amp;q=62+Rue+Jean-Jacques+Rousseau,+Paris&amp;aq=1&amp;oq=62+rue+jean&amp;sll=48.680793,2.502588&amp;sspn=2.567931,3.339844&amp;ie=UTF8&amp;hq=&amp;hnear=62+Rue+Jean-Jacques+Rousseau,+75001+Paris,+%C3%8Ele-de-France&amp;t=m&amp;z=14&amp;ll=48.864089,2.343734" onclick="window.open(this.href); return false;" >Agrandir le plan</a></small>
				<p class="clearfix" style="float:left;">
					<b>troisW agence web</b><br/>
					62 rue Jean-Jacques Rousseau, 75002 Paris<br>
					<b>Siège social :</b> 1 rue Jean-Pierre Timbaud, 75011 Paris<br/>
					<b>Mail :</b> <a href="mailto:contact@troisw-agenceweb.com">contact@troisw-agenceweb.com</a><br/>
					<b>Tel :</b> 06 16 04 11 74
				</p>	
			</div>
		</div>
		<div id="right">	
			<div class="content">
				<form action="{$smarty.const.BASE_URL}/index.php" method="post" accept-charset="utf-8" id="form-contact">
				<input id="nom" type="text" name="nom" value="" placeholder="Nom*" class="left-input" {$required} />				
				<input id="prenom" type="text" name="prenom" value="" placeholder="Prénom*" class="right-input" {$required} /><br>		
				<input id="email" type="email" name="email" value="" placeholder="Email*" class="left-input" {$required}>
				<input id="telephone" type="tel" name="telephone" value="" placeholder="Téléphone" class="right-input short-input" {$required} pattern="{literal}^((\+\d{1,3}(-| )?\(?\d\)?(-| )?\d{1,5})|(\(?\d{2,6}\)?))(-| )?(\d{3,4})(-| )?(\d{4})(( x| ext)\d{1,5}){0,1}${/literal}">
				<input id="entreprise" type="text" name="entreprise" value="" placeholder="Entreprise" class="left-input long-input" {$required}>
				<textarea name="message" placeholder="Donnez nous quelques précisions sur votre projet et nous vous recontacterons rapidement*" id="message" {$required}></textarea>	
				<input id="valider" type="submit" name="envoyer" value="envoyer" class="button" style="float:left;">				
				<span id="retour" class="clearfix"></span>
				</form>
				<div class="clearfix">	</div>
				<span class="clearfix">(*champs obligatoires)</span>
			</div>
		</div>		
	</div>
</footer>

<script type="text/javascript">
	var baseUrl = '{$smarty.const.BASE_URL}';
	{literal}
	//google Analytics
	var _gaq = _gaq || [];
	_gaq.push(['_setAccount', 'UA-38583681-1']);
	_gaq.push(['_trackPageview']);
	(function() {
		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	})();		
	{/literal}
</script>
</body>
</html>