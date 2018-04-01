window.onload = function(){
	setInterval("styleChange.bg()", 1*1000);
}
var styleChange = {
	bg : function(){
		var r = Math.floor(Math.random()*256);
		var g = Math.floor(Math.random()*256);
		var b = Math.floor(Math.random()*256);
		var rgb = "rgb("+r+","+g+","+b+")";
		document.getElementsByTagName("p")[0].style.backgroundColor = rgb;
	}
}
