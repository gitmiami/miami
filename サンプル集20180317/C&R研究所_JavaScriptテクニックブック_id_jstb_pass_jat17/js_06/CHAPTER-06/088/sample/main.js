window.onload = function(){
	document.getElementById("rmButton").onclick = function(){
		var d = document.getElementById("dNode");
		d.removeChild(d.firstChild);
	}
}
