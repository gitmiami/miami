window.onload = function(){
	var imageURL = ["images/DSC0001.jpg","images/DSC0002.jpg","images/DSC0003.jpg"];
	var imgTag = document.createElement("img");
	var n = Math.floor(Math.random()*imageURL.length);
	imgTag.src = imageURL[n];
	document.getElementById("info").appendChild(imgTag);
}

