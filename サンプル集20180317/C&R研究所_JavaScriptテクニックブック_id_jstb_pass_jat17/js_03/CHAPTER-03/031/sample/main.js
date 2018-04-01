window.onload = function(){
	document.getElementById("checkButton").onclick = function(){
		var uID = document.getElementById("userID").value;
		if (uID != "cr"){
			new Effect.Highlight("userID");
		}else{
			alert("正しいIDが入力されました");
		}
	}
}
