$(document).ready(function(){
	
	$("#wrap").fadeIn();
	$("#wait").hide();
	
/* 	$("#map").hide(); */
	
	
	
	var nbArticle = $('section > article').length;
	var start = -300;
	var index  = 800;
	
	var step = new Array();			
	for(var i = 1; i <= nbArticle; i++){
			
		if(begin)
			var begin = begin+index;
		else
			var begin = start;		
		//var newStart = i*start;
		var end = begin+index;
		
		step['art'+i] = Array(begin+1, end);
		//alert(step['art'+i]);
	}
	//alert(step['art1']);
	
	//Function de deplacement de la fleche
	flecheMove = function(obj, index){
		var anchor = $(obj);
		var cible  = $(obj).attr('href');				
		var anchorPosition = anchor.position().top;
		var indexCalage = 16;
		var anchorPositionFinal = anchorPosition-indexCalage;
		//
		if(cible == '#art1'){
			anchorPositionFinal = -60;
		}
		$('#fleche').stop().animate({'margin-top': '0px'}, index, 'easeOutExpo');
	};
			flecheMove("a[href$='#art6']", 1000);
	/*
var step = new Array();
	step['art1'] = Array(-300, 500);
	step['art2'] = Array(500, 1300);
	step['art3'] = Array(1300, 2100);
	step['art4'] = Array(2100, 2900);
	step['art5'] = Array(2900, 3700);
	step['art6'] = Array(3700, 5000);
*/

	//alert(step['art1']);
	//Gestion du scroll et de la fleche
	$(document).scroll(function(){
		//
		var refPosition = $('#ref').offset();	
		$('#top').html(refPosition.top);		
		//				
		for(var i = 1; i <= nbArticle; i++){
			
			//var array = step['art'+i];
			
			//alert(step['art'+i][0]);
			/*
var firstVal = ;
			var secVal = ;
*/
			//var myVal = 2990;
			if (refPosition.top >= step['art'+i][0] && refPosition.top <= step['art'+i][1]) {
				flecheMove("a[href$='#art"+i+"']", index);
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
		//
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
	flecheMove = function(obj, index){
		var anchor = $(obj);
		var cible  = $(obj).attr('href');				
		var anchorPosition = anchor.position().top;
		var indexCalage = 16;
		var anchorPositionFinal = anchorPosition-indexCalage;
		//
		if(cible == '#art1'){
			anchorPositionFinal = -60;
		}
		$('#fleche').stop().animate({'margin-top': anchorPositionFinal+'px'}, index, 'easeOutExpo');
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

	//FORMULAIRE
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
	
		