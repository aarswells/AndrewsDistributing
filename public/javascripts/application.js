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
	  beforeSubmit:  formBeforeSubmit,
	  success:       formAfterSubmit
	};
	
	var myFormOptions2 = {
	  beforeSubmit:  formBeforeSubmit2,
	  success:       formAfterSubmit2
	};

	function formBeforeSubmit() {
	  // PERFORM ACTIONS BEFORE FORM SUBMIT HERE
	  	$("#new_inquiry")[0].reset();
		$('.sent').show();
	  return true;
	}

	function formAfterSubmit()  {
	  // PERFORM ACTIONS AFTER FORM SUBMIT HERE
		$.post("/contact", $("#new_inquiry").serialize());
		return false;
	}
	
	function formBeforeSubmit2() {
	  // PERFORM ACTIONS BEFORE FORM SUBMIT HERE
	  	$("#new_donation_request")[0].reset();
		$('.sent').show();
	  return true;
	}

	function formAfterSubmit2()  {
	  // PERFORM ACTIONS AFTER FORM SUBMIT HERE
		$.post("/donation_requests", $("#new_donation_request").serialize());
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
	
	
	
	/////////// CORE VALUES /////////////
	
	$(".core-values #core .integrity").mouseover(
	  function () {
	    $("#integrity_hover").addClass("active_hover");
	  }).mouseout( 
	  function () {
		$("#integrity_hover").removeClass("active_hover");
	  });
  
	$('.core-values #core .integrity').click(function() {
	  $(".value").removeClass("active");
	  $("#integrity").addClass("active");
	  $('.core-values .hover').removeClass('active');
	  $(".core-values #integrity_hover").addClass("active");
	  //IE FIX
	  $(".core-values #body").css({'background':'url("/images/body_bg.png")'});
	});
	
	$(".core-values #core .family").mouseover(
	  function () {
	    $("#family_hover").addClass("active_hover");
	  }).mouseout( 
	  function () {
		$("#family_hover").removeClass("active_hover");
	  }
	);
	
	$('.core-values #core .family').click(function() {
	  $(".value").removeClass("active");
	  $("#family").addClass("active");
	  $('.core-values .hover').removeClass('active');
	  $(".core-values #family_hover").addClass("active");
	  //IE FIX
	  $(".core-values #body").css({'background':'url("/images/body_bg.png")'});
	});
	
	$(".core-values #core .trust").mouseover(
	  function () {
	    $("#trust_hover").addClass("active_hover");
	  }).mouseout( 
	  function () {
		$("#trust_hover").removeClass("active_hover");
	  }
	);
	
	$('.core-values #core .trust').click(function() {
	  $(".value").removeClass("active");
	  $("#trust").addClass("active");
	  $('.core-values .hover').removeClass('active');
	  $(".core-values #trust_hover").addClass("active");
	  //IE FIX
	  $(".core-values #body").css({'background':'url("/images/body_bg.png")'});
	});
	
	$(".core-values #core .team").mouseover(
	  function () {
	    $("#team_hover").addClass("active_hover");
	  }).mouseout( 
	  function () {
		$("#team_hover").removeClass("active_hover");
	  }
	);
	
	$('.core-values #core .team').click(function() {
	  $(".value").removeClass("active");
	  $("#team").addClass("active");
	  $('.core-values .hover').removeClass('active');
	  $(".core-values #team_hover").addClass("active");
	  //IE FIX
	  $(".core-values #body").css({'background':'url("/images/body_bg.png")'});
	});
	
	$(".core-values #core .open_door").mouseover(
	  function () {
	    $("#open_door_hover").addClass("active_hover");
	  }).mouseout( 
	  function () {
		$("#open_door_hover").removeClass("active_hover");
	  }
	);
	
	$('.core-values #core .open_door').click(function() {
	  $(".value").removeClass("active");
	  $("#open_door").addClass("active");
	  $('.core-values .hover').removeClass('active');
	  $(".core-values #open_door_hover").addClass("active");
	  //IE FIX
	  $(".core-values #body").css({'background':'url("/images/body_bg.png")'});
	});
	
	$(".core-values #core .dedication").mouseover(
	  function () {
	    $("#dedication_hover").addClass("active_hover");
	  }).mouseout( 
	  function () {
		$("#dedication_hover").removeClass("active_hover");
	  }
	);
	
	$('.core-values #core .dedication').click(function() {
	  $(".value").removeClass("active");
	  $("#dedication").addClass("active");
	  $('.core-values .hover').removeClass('active');
	  $(".core-values #dedication_hover").addClass("active");
	  //IE FIX
	  $(".core-values #body").css({'background':'url("/images/body_bg.png")'});
	});
	
	$(".core-values #core .attitude").mouseover(
	  function () {
	    $("#attitude_hover").addClass("active_hover");
	  }).mouseout( 
	  function () {
		$("#attitude_hover").removeClass("active_hover");
	  }
	);
	
	$('.core-values #core .attitude').click(function() {
	  $(".value").removeClass("active");
	  $("#attitude").addClass("active");
	  $('.core-values .hover').removeClass('active');
	  $(".core-values #attitude_hover").addClass("active");
	  //IE FIX
	  $(".core-values #body").css({'background':'url("/images/body_bg.png")'});
	});
	
	$(".core-values #core .image").mouseover(
	  function () {
	    $("#image_hover").addClass("active_hover");
	  }).mouseout( 
	  function () {
		$("#image_hover").removeClass("active_hover");
	  }
	);
	
	$('.core-values #core .image').click(function() {
	  $(".value").removeClass("active");
	  $("#image").addClass("active");
	  $('.core-values .hover').removeClass('active');
	  $(".core-values #image_hover").addClass("active");
	  //IE FIX
	  $(".core-values #body").css({'background':'url("/images/body_bg.png")'});
	});
	
	$(".core-values #core .accountability").mouseover(
	  function () {
	    $("#accountability_hover").addClass("active_hover");
	  }).mouseout( 
	  function () {
		$("#accountability_hover").removeClass("active_hover");
	  }
	);
	
	$('.core-values #core .accountability').click(function() {
	  $(".value").removeClass("active");
	  $("#accountability").addClass("active");
	  $('.core-values .hover').removeClass('active');
	  $(".core-values #accountability_hover").addClass("active");
	  //IE FIX
	  $(".core-values #body").css({'background':'url("/images/body_bg.png")'});
	});
});