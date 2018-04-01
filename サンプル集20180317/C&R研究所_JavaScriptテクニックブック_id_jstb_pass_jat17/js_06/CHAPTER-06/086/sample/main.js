window.onload = function(){
	document.getElementById("setButton").onclick = function(){
		var linkTag = document.getElementById("linkList").getElementsByTagName("a");
		for (var i=0; i<linkTag.length; i++){
			var tgt = linkTag[i].getAttribute("target");
			if (tgt != "find"){
				linkTag[i].setAttribute("target", "find");
			}
		}
	}
}
