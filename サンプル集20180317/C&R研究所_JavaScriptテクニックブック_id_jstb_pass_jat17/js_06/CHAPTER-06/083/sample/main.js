window.onload = function(){
	document.getElementById("setButton").onclick = function(){
		var text = document.getElementById("fNode").value;
		document.getElementById("result").innerHTML += text +"<br>";
		text = document.getElementById("dNode").firstChild.nodeValue;
		document.getElementById("result").innerHTML += text +"<br>";
		document.getElementById("fNode").value = "農道";
		document.getElementById("dNode").firstChild.nodeValue = "書き換えました";
	}
}
