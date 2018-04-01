window.onload = function(){
	var imgTag = document.getElementById("photoAlbum").getElementsByTagName("img");
	alert(escape(imgTag[0].nextSibling.nodeValue));
}
