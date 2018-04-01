window.onload = function(){
	document.getElementById("checkButton").onclick = function(){
		var text = document.getElementById("qNumber").value;
		var result = text.match(/[^0-9]/);
		if (!text || result) {
			alert("半角の数字だけ入力してください");
			document.getElementById("qNumber").focus();
			document.getElementById("qNumber").select();
		}
	}
}
