window.onload = function(){
	document.getElementById("createButton").onclick = function(){
		var dateObj = new Date();
		var h = dateObj.getHours();
		var m = dateObj.getMinutes();
		var s = dateObj.getSeconds();
		var brTag = document.createElement("br");
		var spanTag = document.createElement("span");
		spanTag.className = "note";
		spanTag.innerHTML = h+"時"+m+"分"+s+"秒";
		document.getElementById("result").appendChild(spanTag);
		document.getElementById("result").appendChild(brTag);
	}
}

