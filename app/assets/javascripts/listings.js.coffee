$ ->
	#$(".zoom").imagesLoaded ->
		$(".zoom").elevateZoom(
			{
				zoomWindowPosition: 2, 
				#zoomWindowWidth:200, 
				borderSize: 1, 
				#easing:true
			});