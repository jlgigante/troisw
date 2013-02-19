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
	
	
	<footer class="clearfix">
		TroisW agence web - 62 rue Jean-Jacques Rousseau, 75002 Paris  -  <a href="#">contact@troisw-agenceweb.com</a>  -  06 16 04 11 74 
		
		<ul style="position:relative; margin-top:-100px;">
			<li><a href="#">twitter</a></li>
			<li><a href="#">facebook</a></li>
		</ul>
		 
	</footer>
	
	
	

	
	<script src="skins/js/jquery.easing.1.3.js"></script>
	<script src="skins/js/jquery.fittext.js"></script>
	
	<script type="text/javascript">
		{literal}
		$(document).ready(function(){
		
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
            //
            
            //$("h2").fitText(1.2);
            $("#fittext2").fitText(1.2);
            $("h2").fitText(1.1, { minFontSize: '20px', maxFontSize: '64px' });
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