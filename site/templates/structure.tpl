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
	<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>
	<script src="skins/js/jquery.easing.1.3.js"></script>
	<script src="skins/js/jquery.viewport.js"></script>
	<link href="skins/css/style.css" media="screen" rel="stylesheet" type="text/css" />
</head>
<body>
	
	
	<div id="wait">
		<h1>Attends</h1>
	</div>


<div id="wrap" class="clearfix"  style="display:none;">
	<header>	

	<div id="top" style="position:absolute; display:none;">
		Top
	</div>
	
		<div id="logo">
				<a href="#art1" class="scroll"><span>Troiw-agenceweb</span></a>
		</div>
		
		<div id="menu">
			<nav>
				{include file="_menu.tpl"}
			</nav>
		
			<div id="fleche">
			
			</div>
		</div>

	</header>

	
	<section id="section">
		{block name="contenu"}
				Contenu
		{/block}				
	</section>

</div>
	
	
	<footer class="clearfix" id="footer">
	
		
			<a href="#" id="contact">contact</a>
		
		
		<div id="wrap" style="text-align:center;">
		TroisW agence web - 62 rue Jean-Jacques Rousseau, 75002 Paris  -  <a href="mailto:contact@troisw-agenceweb.com">contact@troisw-agenceweb.com</a>  -  06 16 04 11 74 
		
			<h2>Contactez-nous</h2>
			<h3>Contactez-nous pour obtenir un devis gratuit pour votre projet</h3>
			
			<ul>
			<li><a href="#">twitter</a></li>
			<li><a href="#">facebook</a></li>
		</ul>
			
			<div id="map">
				<iframe width="380" height="175" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.fr/maps?f=q&amp;source=s_q&amp;hl=fr&amp;geocode=&amp;q=62+Rue+Jean-Jacques+Rousseau,+Paris&amp;aq=1&amp;oq=62+rue+jean&amp;sll=48.680793,2.502588&amp;sspn=2.567931,3.339844&amp;ie=UTF8&amp;hq=&amp;hnear=62+Rue+Jean-Jacques+Rousseau,+75001+Paris,+%C3%8Ele-de-France&amp;t=m&amp;z=14&amp;ll=48.864089,2.343734&amp;output=embed"></iframe><br /><small><a href="http://maps.google.fr/maps?f=q&amp;source=embed&amp;hl=fr&amp;geocode=&amp;q=62+Rue+Jean-Jacques+Rousseau,+Paris&amp;aq=1&amp;oq=62+rue+jean&amp;sll=48.680793,2.502588&amp;sspn=2.567931,3.339844&amp;ie=UTF8&amp;hq=&amp;hnear=62+Rue+Jean-Jacques+Rousseau,+75001+Paris,+%C3%8Ele-de-France&amp;t=m&amp;z=14&amp;ll=48.864089,2.343734" >Agrandir le plan</a></small>
				
				
				
				<p><b>troisW agence web</b><br/>
				62 rue Jean-Jacques Rousseau, 75002 Paris<br/>
				<b>Siège social :</b> 1 rue Jean-Pierre Timbaud, 75011 Paris<br/>
				<b>Mail :</b> contact@troisw-agenceweb.com<br/>
				<b>Tel :</b> 06 16 04 11 74</p>

			</div>
			
			<div id="form">
				<form action="index.php" method="post" accept-charset="utf-8">
				<input id="nom" type="text" name="nom" value="" placeholder="Nom" class="left-input" required="">				
				<input id="prenom" type="text" name="prenom" value="" placeholder="Prénom" class="right-input" required="">				
				<input id="mail" type="text" name="mail" value="" placeholder="Mail" class="left-input" required>
				<input id="telephone" type="text" name="telephone" value="" placeholder="Téléphone" class="right-input" required>
				<input id="entreprise" type="text" name="entreprise" value="" placeholder="Entreprise" class="left-input" required>
				<textarea name="message" placeholder="Donnez nous quelques précisions sur votre projet et nous vous recontacterons rapidement" required></textarea>
				<input id="valider" type="submit" name="envoyer" value="envoyer" class="button">
				</form>
				(*champs obligatoires)
			</div>
			
		</div>
			 
	</footer>
	

	
	<!-- <script src="skins/js/jquery.fittext.js"></script> -->
	
	<script type="text/javascript">
		{literal}
		$(document).ready(function(){
		
			//
			

			
			var nbArticle = $('section > article').length;
			
			var step = new Array();			
			//alert( $('section').html() );
			
			for(var i = 1; i < nbArticle; i++){
			var index  = 800;
				step['art'+i] = Array(i*index, i*index); 
			}
			
			
			//alert( $('#art2').offset().top );
			
			var artTest = $('#art5 > #art_end');
/* 			alert(artTest.offset().top); */

			
			
			//
			$("article .art_end").each(function() {
				//alert('OK');// = message + $(this).attr("src") + "<br />";
			});
			
			
			//alert( $('article').attr('id') + ' - ' +$('#art5 > #art_end').html() );
			
			var step = new Array();
			step['art1'] = Array(-300, 500);
			step['art2'] = Array(501, 1300);
			step['art3'] = Array(1301, 2100);
			step['art4'] = Array(2101, 2900);
			step['art5'] = Array(2901, 3700);
			step['art6'] = Array(3701, 5000);
			
			
			//Gestion du scroll et de la fleche
			$(document).scroll(function(){
				//
				var refPosition = $('#ref').offset();	
				$('#top').html(refPosition.top);		
				
				for(var i = 1; i < 7; i++){
				
					//step['art'+i] = Array(i*index, i*index); 
					var array = step['art'+i];
					var firstVal = array[0];
					var secVal = array[1];
					var myVal = 2990;
					if (refPosition.top >= firstVal && refPosition.top <= secVal)
					{
						//alert('OK' + 'art'+i );
						//$(".scroll a[href$='#art"+i+"']").css('background', 'red');
						flecheMove("a[href$='#art"+i+"']");
					}
				}
			});
		
			//
			$( "#contact" ).toggle(function() {
			
				/*
$( this).toggle(function(){
					$(this).text('contact');
				}, function(){
					$(this).text('fermer');
				});
*/
/* 				$( "#footer" ).toggleClass( "extendFooter", 800, 'easeOutExpo' ); */
/* 				return false; */
				$(this).html('fermer');
				
			}, function(){
				$(this).html('contact');
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
			
			//
			
			//$("#wrap").delay(1400).fadeIn(2000);
			$("#wrap").fadeIn();
			$("#wait").hide();
			//Function de deplacement de la fleche
			flecheMove = function(obj){
				var anchor = $(obj);
				var cible  = $(obj).attr('href');				
				var anchorPosition = anchor.position().top;
				var indexCalage = 16;
				var anchorPositionFinal = anchorPosition-indexCalage;
				//
				if(cible == '#art1'){
					anchorPositionFinal = -60;
				}
				$('#fleche').stop().animate({'margin-top': anchorPositionFinal+'px'}, 800, 'easeOutExpo');
			};
			
			
			//
			$('.scroll').bind('click',function(event){
				var anchor = $(this);
				var cible  = $(this).attr('href');
				//
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