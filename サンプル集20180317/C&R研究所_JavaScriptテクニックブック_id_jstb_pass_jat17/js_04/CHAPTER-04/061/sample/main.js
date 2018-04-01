window.onload = function(){
	var root = document.getElementById("photoAlbum");
	var imgTag = root.getElementsByTagName("img");
	for (var i=0; i<imgTag.length; i++){
		new YAHOO.util.DD(imgTag[i].id);
	}
}
