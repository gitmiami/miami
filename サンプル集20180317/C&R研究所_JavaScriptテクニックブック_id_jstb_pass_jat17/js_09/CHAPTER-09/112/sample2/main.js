window.onload = function(){
	document.getElementById("checkButton").onclick = function(){
		var uName = document.getElementById("userName").value;
		var c = uName.charAt(uName.length-1);
		document.getElementById("result").innerHTML = "最後の文字は「"+c+"」です";
	}
}
