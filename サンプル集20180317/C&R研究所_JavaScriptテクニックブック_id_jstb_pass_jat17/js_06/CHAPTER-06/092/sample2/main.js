window.onload = function(){
	document.getElementById("addButton").onclick = function(){
		for (var i=0; i<1000; i++){
			var text = document.createTextNode(Math.random() * 6 + 1);
			var divTag = document.createElement("div");
			divTag.appendChild(text);
			document.getElementById("result").appendChild(divTag);
		}
	}
}

