window.onload = function(){
	var cssFile = document.getElementById("timeCSS");
	var dateObj = new Date();
	var h = dateObj.getHours();
	cssFile.href = "css/time"+h+".css";
}
