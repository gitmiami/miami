window.onload = function(){
	var root = document.getElementById("picGallery");
	var imgTag = root.getElementsByTagName("img");
	for (var i=0; i<imgTag.length; i++){
		imgTag[i].onmouseover = function(){
			new Effect.Opacity(this, { from:0.5, to:1.0, duration:0.5 });
		}
		imgTag[i].onmouseout = function(){
			new Effect.Opacity(this, { from:1.0, to:0.5, duration:0.5 });
		}
	}
}
