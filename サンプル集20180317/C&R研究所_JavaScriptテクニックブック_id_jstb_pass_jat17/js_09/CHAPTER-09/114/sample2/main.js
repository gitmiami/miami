window.onload = function(){
	document.getElementById("checkButton").onclick = function(){
		var uAddress = document.getElementById("userAddress").value;
		var str = uAddress.substr(-4,4);
		document.getElementById("result").innerHTML = "末尾から4文字は「"+str+"」です";
	}
}
