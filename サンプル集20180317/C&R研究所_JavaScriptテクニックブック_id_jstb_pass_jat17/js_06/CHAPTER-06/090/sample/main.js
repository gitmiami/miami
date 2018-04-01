window.onload = function(){
	document.getElementById("createButton").onclick = function(){
		var dateObj = new Date();
		var h = dateObj.getHours();
		var m = dateObj.getMinutes();
		var s = dateObj.getSeconds();
		var text = document.createTextNode(h+"時"+m+"分"+s+"秒");
		document.getElementById("result").appendChild(text);
	}
}

