window.onload = function(){
	document.getElementById("checkButton").onclick = function(){
		var uName = document.getElementById("userName").value;
		var c = uName.charAt(0);
		document.getElementById("result").innerHTML = "先頭の文字は「"+c+"」です";
	}
}
