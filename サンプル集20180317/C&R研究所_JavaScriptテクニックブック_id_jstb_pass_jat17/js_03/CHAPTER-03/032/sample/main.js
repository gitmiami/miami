window.onload = function(){
	document.getElementById("checkButton").onclick = function(){
		var pw = document.getElementById("pwd").value;
		if (pw != "cr"){
			new Effect.Shake("mainForm");
		}else{
			alert("正しいパスワードが入力されました");
		}
	}
}
