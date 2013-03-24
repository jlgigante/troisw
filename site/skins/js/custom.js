$(document).ready(function(){
	
	$("#wrap").fadeIn();
	$("#wait").hide();
	
	
	//$("#mea ul li #content > #infos").hide();
	
/*
	$("#mea ul li #content ").hover(function(){
		//alert($(this).next().attr('class'));
		$(this).prev().toggle();

		
	});
*/
	
<<<<<<< HEAD
=======

	
>>>>>>> diapo home
	overInfos = function(obj){
		
		//return false;
	}
	
	
	$("#mea ul li #content .vignette").hover(function(){
	
		//alert( $(this).prev().attr("class") );
		var infos = $(this).next().attr("class");
		
		$("."+infos).toggle();
		//overInfos(this);
	});
	
	
	
/* 	$("#map").hide(); */
	
	
	/*
	var nbArticle = $('section > article').length;
	var step = new Array();			
	for(var i = 1; i < nbArticle; i++){
		var index  = 800;
		step['art'+i] = Array(i*index, i*index); 
	}
	*/
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
		//				
		for(var i = 1; i < 7; i++){
			var array = step['art'+i];
			var firstVal = array[0];
			var secVal = array[1];
			var myVal = 2990;
			if (refPosition.top >= firstVal && refPosition.top <= secVal) {
				flecheMove("a[href$='#art"+i+"']");
			}
		}
	});
		
	//Gestion du footer contact
	$( "#contact" ).click(function(e) {
		//Affichage de la carte
		$("#map").removeClass('hide');
		//
		var textBt = $('#contact span');
		var textBtVal = 'contact'; 
		//
		textBt.hide();
/* 		alert(textBt.html());		 */
		if(textBt.html() === textBtVal ){
			textBt.html('fermer').fadeIn();
		}
		else{
			textBt.html('contact').fadeIn();
		}
		//	
		$( "#footer" ).toggleClass( "extendFooter", 800, 'easeOutExpo' );
		return false;								
	});
		
	//Fermeture du footer quand click dans les zones header et section
	$("header, section").click( function(e) {
		if(e.target.className !== "extendFooter") {
			$('#footer').removeClass( "extendFooter", 300, 'easeInExpo' );
			return false;
		}
	});
	//

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

	//
	$("#form-contact").submit(function() {
			$("#retour").fadeOut(100).hide();
			//
			var prenom = $("#prenom");
			var nom = $("#nom");
			var email = $("#email");
			var telephone = $("#telephone");
			var entreprise = $("#entreprise");
			var message = $("#message");
			//
			prenom.removeClass('input-err');
			nom.removeClass('input-err');
			email.removeClass('input-err');
			telephone.removeClass('input-err');
			entreprise.removeClass('input-err');
			message.removeClass('input-err');
			//
			function effacerForm (formulaire) { 
				$(':input', formulaire).delay(1000)
					.not(':button, :submit, :reset, :hidden')
					.val('')
					.removeAttr('checked')
					.removeAttr('selected').removeClass('input-err');
			}
			//
			$.ajax({
			type: "POST",
			url: baseUrl+"/index.php",
			data: {"nom":nom.val(), "prenom":prenom.val(), "email":email.val(), "telephone":telephone.val(), "entreprise":entreprise.val(), "message":message.val() },
			// dataType : "json",
			success: function(msg){
				var doc = eval('(' + msg + ')');
				if(doc.code_retour == 1) { //Erreur
					$("#retour").addClass('error').html(doc.message).fadeIn().delay(1500).fadeOut();
					$.each(doc.errors, function(key, value){
						var inputId = '#'+key;
						$(inputId).addClass('input-err');
					});					
				}
				else if (doc.code_retour == 0){ //valide
					$("#retour").addClass('valid').html('Merci').fadeIn().delay(1500).fadeOut();
					effacerForm("#form-contact");
				}
			},
			error: function(){
				alert('Erreur');
			}
		});
		return false;		
		});



});
	
		