window.onload = function(){
	document.getElementById("checkButton").onclick = function(){
		var radio = document.getElementsByName("osType");
		for (var i=0; i<radio.length; i++){
			if (radio[i].checked) {
				document.getElementById("result").innerHTML = radio[i].value+"が選択されています。";
			}
		}
	}
}
