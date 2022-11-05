$(document).ready(function(){
	toggle = 0;
	automenuheight = $('#headermenu').height();
	$('#headermenu').height('0');
	$('#navmenuicon').on('click',function(){
		if(toggle == 0){
			toggle = 2;
			$('#navmenuicon rect:nth-child(1)').removeClass('navmenutoggle1-2');
			$('#navmenuicon rect:nth-child(2)').removeClass('navmenutoggle2-2');
			$('#navmenuicon rect:nth-child(3)').removeClass('navmenutoggle3-2');
			$('#navmenuicon rect:nth-child(1)').addClass('navmenutoggle1-1');
			$('#navmenuicon rect:nth-child(2)').addClass('navmenutoggle2-1');
			$('#navmenuicon rect:nth-child(3)').addClass('navmenutoggle3-1');
			setTimeout(function(){
				$('#navmenuicon rect:nth-child(1)').addClass('navmenutoggle1-static');
				$('#navmenuicon rect:nth-child(2)').addClass('navmenutoggle2-static');
				$('#navmenuicon rect:nth-child(3)').addClass('navmenutoggle3-static');
			},0.5);
			$('#headermenu').animate({
				height: automenuheight
			}, 500, function(){
				$('#headermenu').animate({
					paddingBottom: '10px'
				}, 50, function(){
					toggle = 1;
				});
			});
		}
		else if(toggle == 1){
			toggle = 2;
			$('#navmenuicon rect:nth-child(1)').removeClass('navmenutoggle1-static');
			$('#navmenuicon rect:nth-child(2)').removeClass('navmenutoggle2-static');
			$('#navmenuicon rect:nth-child(3)').removeClass('navmenutoggle3-static');
			$('#navmenuicon rect:nth-child(1)').removeClass('navmenutoggle1-1');
			$('#navmenuicon rect:nth-child(2)').removeClass('navmenutoggle2-1');
			$('#navmenuicon rect:nth-child(3)').removeClass('navmenutoggle3-1');
			$('#navmenuicon rect:nth-child(1)').addClass('navmenutoggle1-2');
			$('#navmenuicon rect:nth-child(2)').addClass('navmenutoggle2-2');
			$('#navmenuicon rect:nth-child(3)').addClass('navmenutoggle3-2');
			$('#headermenu').animate({
					paddingBottom: '0'
			}, 50, function(){
				$('#headermenu').animate({
					height: '0'
				}, 500, function(){
					toggle = 0;
				});				
			});
		}
	});
});