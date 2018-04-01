window.onload = function(){
	document.getElementById("checkButton").onclick = function(){
		var uAddress = document.getElementById("userAddress").value;
		var str = uAddress.substring(3,7);
		document.getElementById("result").innerHTML = "4～7文字は「"+str+"」です";
	}
}
