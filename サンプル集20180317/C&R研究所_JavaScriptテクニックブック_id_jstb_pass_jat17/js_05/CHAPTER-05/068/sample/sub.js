window.onload = function(){
	document.getElementById("setButton").onclick = function(){
		window.returnValue = document.getElementById("userName").value;
		window.close();
	}
}
