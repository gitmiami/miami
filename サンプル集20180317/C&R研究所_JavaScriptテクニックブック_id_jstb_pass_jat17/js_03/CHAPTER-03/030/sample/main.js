window.onload = function(){
	document.getElementById("checkButton").onclick = function(){
		var text = document.getElementById("qCode").value;
		var result = text.match(/[^a-z]/i);
		if (!text || result) {
			alert("a〜zの英文字だけ入力してください");
			document.getElementById("qCode").focus();
			document.getElementById("qCode").select();
		}
	}
}
