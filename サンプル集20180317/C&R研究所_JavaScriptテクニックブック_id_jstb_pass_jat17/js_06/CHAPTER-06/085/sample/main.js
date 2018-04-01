window.onload = function(){
	document.getElementById("setButton").onclick = function(){
		var d = document.getElementById("dNode");
		var res = document.getElementById("result");
		for (var i=0; i<3; i++){
			var nType = d.childNodes[i].tagName;
			res.innerHTML += nType +"<br>";
		}
	}
}
