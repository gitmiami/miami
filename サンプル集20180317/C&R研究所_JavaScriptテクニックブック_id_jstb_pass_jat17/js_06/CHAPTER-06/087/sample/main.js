window.onload = function(){
	document.getElementById("dupButton").onclick = function(){
		var d = document.getElementById("dNode");
		d = d.cloneNode(true);
		d.id = "id"+(new Date()).getTime();
		document.getElementById("result").appendChild(d);
	}
}
