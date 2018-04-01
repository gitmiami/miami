window.onload = function(){
	document.getElementById("setButton").onclick = function(){
		var text = document.getElementById("writeData").value;
		document.getElementById("message").innerText = text;
		document.getElementById("message").textContent = text;
	}
}
