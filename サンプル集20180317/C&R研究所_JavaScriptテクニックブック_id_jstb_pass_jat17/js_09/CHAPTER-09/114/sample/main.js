window.onload = function(){
	document.getElementById("checkButton").onclick = function(){
		var uAddress = document.getElementById("userAddress").value;
		var str = uAddress.substr(0,6);
		document.getElementById("result").innerHTML = "先頭から6文字は「"+str+"」です";
	}
}
