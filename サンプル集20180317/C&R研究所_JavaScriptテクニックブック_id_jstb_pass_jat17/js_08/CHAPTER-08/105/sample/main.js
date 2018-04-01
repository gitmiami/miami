window.onload = function(){
	document.getElementById("setButton").onclick = function(){
		myEvent.set();
	}
	document.getElementById("clrButton").onclick = function(){
		myEvent.clear();
	}
}
var myEvent = {
	set : function(){
		var divObj = document.getElementById("checkButton");
		if (divObj.addEventListener) divObj.addEventListener("click", myEvent.message, false);
		if (divObj.attachEvent) divObj.attachEvent("onclick", myEvent.message);
	},
	clear : function(){
		var divObj = document.getElementById("checkButton");
		if (divObj.removeEventListener) divObj.removeEventListener("click", myEvent.message, false);
		if (divObj.detachEvent) divObj.detachEvent("onclick", myEvent.message);
	},
	message : function(){
		alert("クリックされました");
	}
}
