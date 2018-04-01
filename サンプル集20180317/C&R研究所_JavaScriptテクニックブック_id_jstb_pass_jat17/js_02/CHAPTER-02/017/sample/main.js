window.onload = function(){
	document.getElementById("photo1").onmouseover = function(){
		this.src = "images/02.jpg";
	}
	document.getElementById("photo1").onmouseout = function(){
		this.src = "images/01.jpg";
	}
}
