﻿window.onload = function(){	document.getElementById("photo").onclick = album5.nextImage;}var album5 = {	imageURL : [							"images/DSC0001.jpg",							"images/DSC0042.jpg",							"images/DSC0103.jpg",							"images/DSC0154.jpg",							"images/DSC0280.jpg"							],	nextImage : function(){		album5.count++;		if (album5.count >= album5.imageURL.length) album5.count = 0;		document.getElementById("photo").src = album5.imageURL[album5.count];	},	count : 0};