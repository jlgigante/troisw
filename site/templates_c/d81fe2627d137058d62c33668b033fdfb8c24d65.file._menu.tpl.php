<?php /* Smarty version Smarty-3.1.12, created on 2013-02-19 11:40:55
         compiled from "templates/_menu.tpl" */ ?>
<?php /*%%SmartyHeaderCode:798450957511cf91e6af308-15365445%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd81fe2627d137058d62c33668b033fdfb8c24d65' => 
    array (
      0 => 'templates/_menu.tpl',
      1 => 1361270447,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '798450957511cf91e6af308-15365445',
  'function' => 
  array (
  ),
  'version' => 'Smarty-3.1.12',
  'unifunc' => 'content_511cf91e6d8841_12847628',
  'has_nocache_code' => false,
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_511cf91e6d8841_12847628')) {function content_511cf91e6d8841_12847628($_smarty_tpl) {?>




<dl>
	<dt><a href="#art2" class="scroll">site web</a></dt>
	<dd>| jeu concours, application</dd>
	
	<dt><a href="#art3" class="scroll">campagne web</a></dt>
	<dd>| Display, habillage, Format innovant</dd>
	
	<dt><a href="#art4" class="scroll">création graphique</a></dt>
	<dd>| identité visuelle, logo, illustration</dd>
	
	<dt><a href="#art5" class="scroll">ecosystème digital</a></dt>
	<dd>| stratégie internet, communication, réseaux sociaux</dd>
	
	<dt><a href="#art6" class="scroll">business développement</a></dt>
	<dd>| régie web, opération spéciale</dd>
</dl>

<div id="top">
	top
</div>
<!--


<ul>
	<li class="menu"><a href="#art2" class="scroll"><span class="fontweight-400">site web</span></a></li>
	<li class="menu-plus">| jeu concours, application</li>
	
	<li class="menu"><a href="#art3"><span class="fontweight-400">campagne web</span></a></li>
	<li class="menu-plus"><span> | Display, habillage, Format innovant</span></li>
	
	
	<li class="menu"><a href="#art4" class="scroll"><span class="fontweight-400">création graphique</span></a></li>
	<li class="menu-plus"><span> | identité visuelle, logo, illustration</span></li>
	
	<li class="menu"><a href="#art5" class="scroll"><span class="fontweight-400">ecosystème digital</span></a></li>
	<li class="menu-plus"><span> | stratégie internet, communication, réseaux sociaux</span></li>
	
	<li class="menu"><a href="#art6" class="scroll"><span class="fontweight-400">business développement</span></a></li>
	<li class="menu-plus"><span> | régie web, opération spéciale</span></li>
</ul>
-->
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js"></script>

<script type="text/javascript">
	
	$(document).ready(function(){ 
		//$('.menuPlus').hide();
		$('dt').hover(function(){
/* 			alert( $(this).attr('href') ) ; */
			$(this).next().stop().animate({'margin-left':'0px', 'opacity':1}, 800, 'easeOutExpo');
/* 			$(this).next().addClass('open', 800, 'easeOutExpo'); */
			
		}, function(){
			$(this).next().stop().animate({ 'opacity':0, 'margin-left':'400px'}, 1800, 'easeOutExpo');
/* 			$(this).next().removeClass('open', 1800, 'easeOutExpo'); */
			
		});
		

		
		
		$(document).scroll(function(){
			var position = $('#ref').offset();
			
			$('#top').html(position.top);	
			
			if(position.top >= 800 && position.top <= 1400)
			{
/* 				alert(55); */
				$('dl dt:nth-child(1)').html("fdsgfdg fsg d").next().stop().animate({'margin-left':'0px', 'opacity':1}, 800, 'easeOutExpo');
				
			}	
				
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
	
</script><?php }} ?>