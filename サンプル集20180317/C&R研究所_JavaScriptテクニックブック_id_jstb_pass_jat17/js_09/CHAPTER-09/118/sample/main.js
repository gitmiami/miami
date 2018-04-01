window.onload = function(){
	document.getElementById("checkButton").onclick = function(){
		var text = document.getElementById("langName").value;
		var resultArray = text.match(/ru+/gi);
		document.getElementById("result").innerHTML = resultArray.length+"個見つかりました。";
	}
}
