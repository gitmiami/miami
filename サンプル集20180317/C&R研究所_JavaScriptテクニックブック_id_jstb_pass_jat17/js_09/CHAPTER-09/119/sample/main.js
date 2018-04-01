window.onload = function(){
	document.getElementById("checkButton1").onclick = function(){
		var text = document.getElementById("convCode").value;
		var encText = encodeURIComponent(text);
		document.getElementById("result").innerHTML = "エンコード結果："+encText;
	}
	document.getElementById("checkButton2").onclick = function(){
		var text = document.getElementById("convCode").value;
		var encText = decodeURIComponent(text);
		document.getElementById("result").innerHTML = "デコード結果："+encText;
	}
}
