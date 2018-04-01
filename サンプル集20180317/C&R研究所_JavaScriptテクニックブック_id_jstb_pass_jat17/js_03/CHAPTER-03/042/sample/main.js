window.onload = function(){
	document.getElementById("Accept").onclick = function(){
		document.getElementById("nextButton").disabled = false;
	}
	document.getElementById("NG").onclick = function(){
		document.getElementById("nextButton").disabled = true;
	}
}
