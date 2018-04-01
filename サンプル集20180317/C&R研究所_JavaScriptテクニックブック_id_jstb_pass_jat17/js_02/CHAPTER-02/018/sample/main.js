window.onload = function(){
	document.getElementById("checkButton").onclick = function(){
		document.getElementById("result").innerHTML = "こんにちは";
	}
	document.getElementById("loadButton").onclick = function(){
		var script = document.createElement("script");
		script.charset = "utf-8";
		script.src = "sub.js";
		document.body.appendChild(script);
	}
}
