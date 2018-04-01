window.onload = function(){
	var rootNode = document.getElementById("mainMenu");
	var imgTag = rootNode.getElementsByTagName("img");
	for (var i=0; i<imgTag.length; i++){
		imgTag[i].onmouseover = function(){
			this.src = this.src.split(".gif")[0]+"_over.gif";
		}
		imgTag[i].onmouseout = function(){
			this.src = this.src.split("_over.gif")[0]+".gif";
		}
	}
}
