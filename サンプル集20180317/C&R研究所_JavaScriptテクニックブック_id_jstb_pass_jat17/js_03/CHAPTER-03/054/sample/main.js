window.onload = function(){
	document.getElementById("mainForm").onreset = function(){
		return confirm("内容をリセットしますか?");
	}
}
