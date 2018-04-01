window.onload = function(){
	document.getElementById("mainForm").onreset = function(){
		return confirm("本当に消しますか？");
	}
}
