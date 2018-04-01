window.onload = function(){
	document.getElementById("sendButton").onclick = function(){
		var text = document.getElementById("sendText").value;
		location.href = "next.html?data="+encodeURIComponent(text);
	}
}
