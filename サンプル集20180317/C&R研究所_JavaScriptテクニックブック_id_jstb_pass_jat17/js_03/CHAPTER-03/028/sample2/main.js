window.onload = function(){
	document.getElementById("checkButton").onclick = function(){
		var uID = document.getElementById("userID").value;
		if (!uID){
			alert("空欄です");
		}else{
			alert("文字が入力されています");
		}
	}
}
