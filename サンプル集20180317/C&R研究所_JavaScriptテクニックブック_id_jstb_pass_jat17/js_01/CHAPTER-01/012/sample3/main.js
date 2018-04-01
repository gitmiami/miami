window.onload = function(){
	var photoArea = document.getElementById("photo");
	var img = photoArea.getElementsByTagName("img");
	for (var i=0; i<img.length; i++){
		img.item(i).src = "images/ok.jpg";
	}
}
