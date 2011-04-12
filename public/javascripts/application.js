$(document).ready(function(){
	$("#menu ul li").hover(
	  function () {
	    $(this).children('ul').addClass('active');
	  }, 
	  function () {
	    $(this).children('ul').removeClass('active');
	  }
	);
	
	$("a.fancy").fancybox({
		'transitionIn'	: 'fade',
		'transitionOut'	: 'fade',
		'hideOnOverlayClick':false,
		'overlayColor':'#0F2348'
	});
	
	$("a.whats-new-link").fancybox({
		'transitionIn'	: 'fade',
		'transitionOut'	: 'fade',
		'width': 590,
		'hideOnOverlayClick':false,
		'overlayColor':'#0F2348'
	});
	
	$(".print").click(function () {
	  $('#fancybox-close').hide();
	  $(".print").hide();
	  $('#fancybox-outer').print();
	  $('#fancybox-close').show();
	  $(".print").show();
	  return false;
	});

	$('body.whats_new_stories a#fancybox-close').append("BACK TO WHATS NEW");
	$('body.management--2 a#fancybox-close').append("BACK TO MANAGEMENT");
	
	///////////// AJAX FORM SUBMITS //////////////////////
	
	$('.donation_requests .submit').click(function () {
	});
	
	$("#new_donation_request").validate();

	$("#new_inquiry").validate();

	
	// jQuery Form Plugin options
	var myFormOptions = {
	  success:       formAfterSubmit
	};
	
	var myFormOptions2 = {
	  success:       formAfterSubmit2
	};

	function formAfterSubmit()  {
	  // PERFORM ACTIONS AFTER FORM SUBMIT HERE
    $("#new_inquiry")[0].reset();
		$('.sent').show();
	  return false;
	}
	

	function formAfterSubmit2()  {
	  // PERFORM ACTIONS AFTER FORM SUBMIT HERE
	  $("#new_donation_request")[0].reset();
		$('.sent').show();
	  return false;
	}
	
	// Make form use jQuery Form Plugin
	$('#new_donation_request').ajaxForm(myFormOptions2);
	$('#new_inquiry').ajaxForm(myFormOptions);
	
	////////////////For Brewers/Retailers//////////////
  
	var position = ($(window).width() - 720)/2;
	var height = $(document).height();
	var width = $(window).width();
	
	$('.for_videos').css({'height':height});
	$('.modal_titles ul').css({'height':height});
	$('.brewer_titles ul').css({'height':height});
	
	$('.for_videos').css({'padding-left':position});
	$('.for_videos').css({'width':width - position});
	
	$(window).resize(function() {
	  position = ($(window).width() - 720)/2;
	  $('.for_videos').css({'padding-left':position});
		height = $(document).height();
		$('.for_videos').css({'height':height});
		$('.modal_titles ul').css({'height':height});
		$('.brewer_titles ul').css({'height':height});
		width = $(window).width();
		$('.for_videos').css({'width':width - position});
	});
	
	$('.for_brewers').click(function () {
		$('#for_brewers').fadeIn('fast');
		$('.overlay').fadeIn('fast', function() {
		        // Animation complete
				$('.image_slider.brewer .video_slide .text').hide();
				$('.image_slider.brewer .video_slide.active .text').fadeIn();
		      });
		return false;
	});
	
	$('.for_retailers').click(function () {
		$('#for_retailers').fadeIn('fast');
		$('.overlay').fadeIn('fast', function() {
		        // Animation complete
				$('.image_slider.retailer .video_slide .text').hide();
				$('.image_slider.retailer .video_slide.active .text').fadeIn();
		      });
		return false;
	});
	
	$('a.close').click(function() {
		$('.for_videos').fadeOut('fast');
		$('.overlay').fadeOut('fast');
		return false;
	});

	if ( $.browser.msie ) {
    $(".pause").click(function() {
			$f("a.myPlayer.1").pause();
			$f("a.myPlayer.2").pause();
			return false;
		});
  } else {
		$(".pause").click(function() {
  		$("video").trigger("pause");
  		return false;
  	});
  }
	
	/////////////Beer Brands toggle//////////
	$('a.show').toggle(function() {
	  $(this).removeClass('expand');
	  $(this).addClass('collapse');
	  //IE FIX
	  $('#footer').css({'position':'absolute'});
	}, function() {
	  $(this).addClass('expand');
	  $(this).removeClass('collapse');
	  //IE FIX
	  $('#footer').css({'position':'absolute'});
	});
	
	$('a#domestics').click(function() {
	  $('div.domestics').animate({
	    height: 'toggle'
	  }, 500);
	  return false;
	});
	
	$('a#imports').click(function() {
	  $('div.imports').animate({
	    height: 'toggle'
	  }, 500);
	  return false;
	});
	
	$('a#specialty').click(function() {
	  $('div.specialty').animate({
	    height: 'toggle'
	  }, 500);
	  return false;
	});
	
	$('a#non-alcoholic').click(function() {
	  $('div.non-alcoholic').animate({
	    height: 'toggle'
	  }, 500);
	  return false;
	});
});