window.onload = function(){
	document.getElementById("setButton").onclick = function(){
		var tColor = document.getElementById("textColor").value;
		var bColor = document.getElementById("bgColor").value;
		document.getElementById("result").style.color = tColor;
		document.getElementById("result").style.backgroundColor = bColor;
	}
}
