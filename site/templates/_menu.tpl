<dl>
	<dt><a href="#art2" class="scroll">site web</a></dt>
	<dd>[ jeu concours, application ]</dd>
	
	<dt><a href="#art3" class="scroll">campagne web</a></dt>
	<dd>[ display, habillage, format innovant ]</dd>
	
	<dt><a href="#art4" class="scroll">création graphique</a></dt>
	<dd>[ identité visuelle, logo, illustration ]</dd>
	
	<dt><a href="#art5" class="scroll">ecosystème digital</a></dt>
	<dd>[ stratégie internet, communication, réseaux sociaux ]</dd>
	
	<dt><a href="#art6" class="scroll">business développement</a></dt>
	<dd>[ régie web, opération spéciale ]</dd>
</dl>



<script type="text/javascript">
	{literal}
	$(document).ready(function(){ 
		//alert( $('dt:nth-child(1n+2)').html() );
		
		//compte le nb d'item menu permier niveau
		//var nbMenuItem = $('dl dt > *').length;
		//alert(nbMenuItem);
		
		
		$('dt').hover(function(){			
			$(this).next().stop().animate({'margin-left':'0px', 'opacity':1}, 800, 'easeOutExpo');
		}, function(){			
			$(this).next().stop().animate({ 'opacity':0, 'margin-left':'400px'}, 1800, 'easeOutExpo');
		});
	}); 
	{/literal}
</script>