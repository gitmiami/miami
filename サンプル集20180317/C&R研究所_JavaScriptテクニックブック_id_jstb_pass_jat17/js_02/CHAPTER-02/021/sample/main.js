window.onload = function(){
	document.getElementById("checkButton").onclick = function(){
		document.getElementById("result").innerHTML = browser.type()+"<br>";
		document.getElementById("result").innerHTML += browser.OS();
	}
}
var browser = {
	type : function(){
		if (window.opera) return "Opera";
		if (window.createPopup) return "Internet Explorer";
		if (navigator.userAgent.indexOf("Safari") > -1) return "Safari";
		if (navigator.userAgent.indexOf("Firefox") > -1) return "Firefox";
		return "不明";
	},
	OS : function(){
		if (navigator.userAgent.indexOf("Windows") > -1) return "Windows";
		if (navigator.userAgent.indexOf("Mac") > -1) return "MacOS";
		if (navigator.userAgent.indexOf("X11") > -1) return "UNIX";
	}
}
