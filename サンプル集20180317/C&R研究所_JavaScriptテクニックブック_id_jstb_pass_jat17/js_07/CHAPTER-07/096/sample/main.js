window.onload = function(){
	document.getElementById("readButton").onclick = function(){
		var x = cssInfo.getValue("box", "left");
		var y = cssInfo.getValue("box", "top");
		var w = cssInfo.getValue("box", "width");
		var h = cssInfo.getValue("box", "height");
		document.getElementById("result").innerHTML = "座標("+x+","+y+")で大きさは["+w+","+h+"]です";
	}
}
var cssInfo = {
	getValue : function(tagID, propName){
		var divBox = document.getElementById(tagID);
		if (document.defaultView){
			var boxCSS = document.defaultView.getComputedStyle(divBox, null);
			return boxCSS.getPropertyValue(propName);
		}
		if (divBox.currentStyle){
			return divBox.currentStyle.getAttribute(propName);
		}
	}
}
