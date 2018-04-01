(function (){
	var srcURL = document.getElementsByTagName("script")[0].src;
		var loadURL = srcURL.split("?")[1].split(",");
	for (var i=0; i<loadURL.length; i++) {
		document.write("<script src='"+loadURL[i]+"'></script>");
	}
})();
