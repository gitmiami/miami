window.onload = function(){
	document.getElementById("checkButton").onclick = function(){
		var uAddress = document.getElementById("userAddress").value;
		var str = uAddress.slice(3,-3);
		document.getElementById("result").innerHTML = "結果は「"+str+"」です";
	}
}
