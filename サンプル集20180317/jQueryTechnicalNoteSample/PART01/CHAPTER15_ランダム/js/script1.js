////////////////////////////////////////
//　SCRIPT
////////////////////////////////////////
$(function(){
	var maxNum = 5,
	rdm = Math.floor(Math.random()*(maxNum))+1;
	$('#randomShow').attr('src', 'img/photo' + rdm + '.jpg');
});
