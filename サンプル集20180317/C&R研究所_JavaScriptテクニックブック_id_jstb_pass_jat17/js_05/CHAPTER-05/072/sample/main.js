window.onload = function(){
	document.getElementById("openButton").onclick = function(){
		multiWindow.open("win01", "メッセージ1", 80, 100, 320, 240);
		multiWindow.open("win02", "メッセージ2", 160, 160, 320, 240);
	}
}
var multiWindow = {
	open : function(winID, wTitle, x, y, w, h){
		var win = new Window(winID, {
			title: wTitle, className: "dialog",
			top:y, left:x, width:w, height:h, zIndex: 100,
			resizable: true, draggable:true
		});
		win.setDestroyOnClose();
		win.show();
		win.setHTMLContent("メッセージはありません。");
	}
}

