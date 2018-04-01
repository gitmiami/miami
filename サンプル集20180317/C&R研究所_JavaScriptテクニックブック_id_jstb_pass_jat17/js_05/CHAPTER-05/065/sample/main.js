window.onload = function(){
	var rootNode = document.getElementById("displayAlert");
	var linkTag = rootNode.getElementsByTagName("a");
	for (var i=0; i<linkTag.length; i++){
		linkTag[i].onclick = function(){
			alert(this.href+"のページに移動します");
		}
	}
}
