




<dl id="menu">
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



<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>

<script type="text/javascript">
	{literal}
	$(document).ready(function(){ 
		//$('.menuPlus').hide();
		
		/*
		$(document).scroll(function(){
			var position = $('#ref').offset();	
			$('#top').html(position.top);			
		});
		*/
		
	
		//alert( $('dt:nth-child(1n+2)').html() );
		
		//compte le nb d'item menu permier niveau
		var nbMenuItem = $('dl dt > *').length;
		
		$('dt').hover(function(){
	
			var href = $(this).children('.scroll').attr('href');
			
			//alert(href.children('.scroll').attr('href'));
					
			
			$(this).next().stop().animate({'margin-left':'0px', 'opacity':1}, 800, 'easeOutExpo');
/* 			$(this).next().addClass('open', 800, 'easeOutExpo'); */
			
		}, function(){
			//alert( $(this).next().css('margin-left') );		
			
			var href = $(this).children('.scroll').attr('href');
						
			var href = $(this).children('.scroll').attr('href');
				//alert(href);
				$(this).css({'margin-left':'0px', 'opacity':1});
			
			
			//alert( href );
				
			$(this).next().stop().animate({ 'opacity':0, 'margin-left':'400px'}, 1800, 'easeOutExpo');
/* 			$(this).next().removeClass('open', 1800, 'easeOutExpo'); */
			
		});
		

		
		
		
		

		/*
		$('.menu').hover(function(){
			
			//var premier = $('li :nth-child(2)').text();
			//var premier = $('li a:first-child').text();
			//alert(premier);
			//$(this + ':last-child').show();
			$(this).next().show();
			
			//$(this).next().animate({'align': 'left', 'display': 'block'}, 800);			
		}, function(){
			
			//$(this).next().hide();

		});
		*/
		
	}); 
	{/literal}
</script>