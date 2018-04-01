window.onload = function(){
	document.getElementById("checkButton").onclick = function(){
		var uText = document.getElementById("text1").value;
		var str = uText.split("a").join("");
		document.getElementById("result").innerHTML = "削除した結果は「"+str+"」です";
	}
}
