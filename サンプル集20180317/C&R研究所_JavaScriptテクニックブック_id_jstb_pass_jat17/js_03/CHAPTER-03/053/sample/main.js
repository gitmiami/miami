window.onload = function(){
	document.getElementById("mainForm").onsubmit = function(){
		return confirm("この内容で登録しますか?");
	}
}
