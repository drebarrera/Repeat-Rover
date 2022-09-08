function redirect(url){
	$('#page').fadeOut(500, function(){
		location.href = url;
	});
}

function drop(tile, ind) {
	setTimeout(function(){
		$('.tile_stack').eq(tile).animate({
			top: '0px'
		}, 75);
	}, 75 * ind);
}

$(document).ready(function(){
	var doc = document.getElementById('iframe').contentWindow.document;
	doc.open();
	doc.write('<!DOCTYPE html><html><head></head><body contenteditable="false"><audio controls autoplay style="display:inline-block; position: relative;"><source src="images/Somewhere out there.ogg" type="audio/ogg"><source src="images/Somewhere out there.mp3" type="audio/mp3"></audio></body></html>');
	doc.close();

	$('#page').fadeIn(1000);
	$('.tile_stack').css('top','-1000px');
	var numTiles = $('.tile_stack').length;
	var tileStack = [...Array(numTiles).keys()];
	for(var ind = numTiles; ind > 0; ind--){
		var tileSelect = Math.floor(Math.random() * ind);
		var tile = tileStack[tileSelect];
  		tileStack.splice(tileSelect, 1);
		drop(tile, ind);
	}

	$('.tile_stack').not('#about-tile').not('#audio-tile').not('#mine-tile').not('#web-tile').not('#other-tile').hover(function(){
		$('#title').text('Designed By Dre');
		$('#subtitle').text('Welcome. Click on a blue tile to begin.');
	});

	$('#about-tile').hover(function(){
		$('#title').text('About Designed By Dre');
		$('#subtitle').text('Click to learn more about the designer.');
	});

	$('#audio-tile').hover(function(){
		$('#title').text('Audio Production');
		$('#subtitle').text('Click for sound design, mixing, and mastering.');
	});

	$('#mine-tile').hover(function(){
		$('#title').text('Data Mining');
		$('#subtitle').text('Click for AI data mining, web scraping, and trend analysis.');
	});

	$('#web-tile').hover(function(){
		$('#title').text('Website Design');
		$('#subtitle').text('Click for website and UI/UX design.');
	});

	$('#other-tile').hover(function(){
		$('#title').text('Other Design Services');
		$('#subtitle').text('Click for graphic design, video production, CAD, and more.');
	});

	$('#contact-tile').hover(function(){
		$('#title').text('Contact and Inquiry');
		$('#subtitle').text('Click to contact the designer.');
	});
});

