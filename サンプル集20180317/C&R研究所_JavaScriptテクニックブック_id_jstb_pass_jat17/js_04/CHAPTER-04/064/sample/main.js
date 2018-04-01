hs.graphicsDir = "./graphics/";
hs.outlineType = "rounded-white";
window.onload = function(){
	var root = document.getElementById("photoAlbum");
	var pObj = root.getElementsByTagName("a");
	for(var i=0; i<pObj.length; i++){
		pObj[i].onclick = function(){
			return hs.expand(this);
		}
	}
	hs.preloadImages();
}
