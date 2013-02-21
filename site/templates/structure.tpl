<!DOCTYPE html>
<html lang="fr">
<head>
	<meta charset="utf-8">
	<title>TroisW - agence web</title>
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="robots" content="" />
	<!-- <base href="http://{$smarty.server.SERVER_NAME}:8888/site/" target="_blank"> -->
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
	<link href="skins/css/style.css" media="screen" rel="stylesheet" type="text/css" />
</head>
<body>
	
	
	<div id="wait">
		<h1>Attends</h1>
	</div>


<div id="myTop" style="width:100%; background: black; position:fixed; text-align:right;">
	<div id="top" style="float:right; display:none;">
	top
</div>
</div>


<div id="wrap" class="clearfix"  style="display:none;">

	<header>	
		<div id="logo">
				<a href="#art1" class="scroll"><span>Troiw-agenceweb</span></a>
		</div>
		<nav>
			{include file="_menu.tpl"}
		</nav>
	</header>

	
	<section id="section">
		{block name="contenu"}
				Contenu
		{/block}				
	</section>

</div>
	
	
	<footer class="clearfix" id="footer">
	
		<div id="contact">
			Contact
		</div>
		
		
		
		TroisW agence web - 62 rue Jean-Jacques Rousseau, 75002 Paris  -  <a href="mailto:contact@troisw-agenceweb.com">contact@troisw-agenceweb.com</a>  -  06 16 04 11 74 
		
		<ul>
			<li><a href="#">twitter</a></li>
			<li><a href="#">facebook</a></li>
		</ul>
		<h2>Contactez-nous</h2> <p>Contactez-nous pour obtenir un devis gratuit pour votre projet</p>

		 
		 <div id="form" style="float:left;">
		 	<form action="index.php" method="post" accept-charset="utf-8">
				<input id="nom" type="text" name="nom" value="" placeholder="Nom" class="left-input" required="">				
				<input id="prenom" type="text" name="prenom" value="" placeholder="Prénom" class="right-input" required="">				
				<input id="mail" type="text" name="mail" value="" placeholder="Mail" class="left-input" required>
				<input id="telephone" type="text" name="telephone" value="" placeholder="Téléphone" class="right-input" required>
				<input id="entreprise" type="text" name="entreprise" value="" placeholder="Entreprise" class="left-input" required>
				<textarea name="message" placeholder="Donnez nous quelques précisions sur votre projet et nous vous recontacterons rapidement" required></textarea>
				
				<input id="valider" type="submit" name="envoyer" value="envoyer" class="button">
				
				
			</form>
		 </div>
		 
		<div id="adresse" style="float:left;">
		
<p><b>troisW agence web</b><br/>
62 rue Jean-Jacques Rousseau, 75002 Paris<br/>
<b>Siège social :</b> 1 rue Jean-Pierre Timbaud, 75011 Paris<br/>
<b>Mail :</b> contact@troisw-agenceweb.com<br/>
<b>Tel :</b> 06 16 04 11 74</p>


(*champs obligatoires)

			<iframe width="300" height="121" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.fr/maps?f=q&amp;source=s_q&amp;hl=fr&amp;geocode=&amp;q=62+Rue+Jean-Jacques+Rousseau,+Paris&amp;aq=1&amp;oq=62+rue+jean&amp;sll=48.680793,2.502588&amp;sspn=2.567931,3.339844&amp;ie=UTF8&amp;hq=&amp;hnear=62+Rue+Jean-Jacques+Rousseau,+75001+Paris,+%C3%8Ele-de-France&amp;t=m&amp;z=14&amp;ll=48.864089,2.343734&amp;output=embed"></iframe><br /><small><a href="http://maps.google.fr/maps?f=q&amp;source=embed&amp;hl=fr&amp;geocode=&amp;q=62+Rue+Jean-Jacques+Rousseau,+Paris&amp;aq=1&amp;oq=62+rue+jean&amp;sll=48.680793,2.502588&amp;sspn=2.567931,3.339844&amp;ie=UTF8&amp;hq=&amp;hnear=62+Rue+Jean-Jacques+Rousseau,+75001+Paris,+%C3%8Ele-de-France&amp;t=m&amp;z=14&amp;ll=48.864089,2.343734" >Agrandir le plan</a></small>
		</div>

		 
	</footer>
	

	
	<script src="skins/js/jquery.easing.1.3.js"></script>
	<!-- <script src="skins/js/jquery.fittext.js"></script> -->
	
	<script type="text/javascript">
		{literal}
		$(document).ready(function(){

			
			/*
$( "#footer" ).hover(function(){
				$('#call-to-action').show();
			}, function(){
				$('#call-to-action').hide();
			});
*/
			
			$( "#footer" ).click(function() {
				$('#close-footer').show();
				$( this ).addClass( "extendFooter", 800, 'easeOutExpo' );
				//$( this ).toggleClass( "extendFooter", 800, 'easeOutExpo' );
				//return false;
			});
			
			$("#close-footer").click(function(){
				setTimeout("300", function(){
					$(this).hide();
					$('#footer').removeClass( "extendFooter", 300, 'easeOutExpo' );
					return false;
				});
				
				
			});
			
			$("header, section").click( function(e) {
				if(e.target.className !== "extendFooter")
				{
					//$(".extendFooter").hide();
					$('#footer').removeClass( "extendFooter", 300, 'easeOutExpo' );
					return false;
				}
			});
			
			/*$(this).next().removeClass('open', 1800, 'easeOutExpo'); */
			
		
			$("#wait").hide();
			$("#wrap").fadeIn();
		
			$('.scroll').bind('click',function(event){
				var anchor = $(this);
				var cible  = $(this).attr('href');
				$('html, body').stop().animate(
					{scrollTop: $(cible).position().top},
					'slow', 'easeOutExpo');
            	event.preventDefault();
            });		
		});
		
		
		
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