= require bootstrap.min
= require camera.min
= require jquery.dropkick-1.0.0
= require jquery.easing.1.3
= require jquery.min
= require slide

		$=jQuery;

		$(document).ready(function(){
		jQuery(function(){
			
			jQuery('#camera_wrap_4').camera({
			height: '500px',
			loader: 'none',
			pagination: false,
			thumbnails: false,
			navigation: false,
			time: '10000',
			navigationHover: false,
			hover: false,
			opacityOnGrid: false,
			imagePath: '../images/',
			fx:'simpleFade'
				

			});

			$('.pokerHover,.trip,.deck').hover(function(){
			$(this).children('.tripMeta,.pokerHover').fadeIn(500);
			},
			function(){
			$('.dk_container.span3.dk_shown.dk_theme_default').removeClass('dk_open');
			$(this).children('.tripMeta,.pokerHover').fadeOut(500);
			});
			});
			});
			