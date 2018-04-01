window.onload = function(){
	var dateObj = new Date();
	var h = dateObj.getHours();
	var m = dateObj.getMinutes();
	var s = dateObj.getSeconds();
	document.getElementById("currentTime").innerHTML = h+"時"+m+"分"+s+"秒";
}
