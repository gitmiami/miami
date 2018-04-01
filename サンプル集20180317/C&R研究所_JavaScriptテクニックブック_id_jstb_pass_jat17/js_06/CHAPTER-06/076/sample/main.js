window.onload = function(){
	document.getElementById("setButton").onclick = function(){
		var text = document.getElementById("writeData").value;
		document.getElementById("message").innerHTML = text;
	}
}
