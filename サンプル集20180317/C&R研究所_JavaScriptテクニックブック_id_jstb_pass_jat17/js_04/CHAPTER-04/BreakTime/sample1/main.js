window.onload = function(){
	a = new Array();
	a[1] = "C and R";
	a["1"] = "研究所";
	document.getElementById("result").innerHTML = a[1]+"<br>";
	document.getElementById("result").innerHTML += a["1"]+"<br>";
}
