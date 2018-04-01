window.onload = function(){
	document.getElementById("dispButton").onclick = function(){
		message.start("result","本日はようこそいらっしゃいました。どうぞごゆっくりとしていってください。");
	}
}
var message = {
	oneChar : function(){
		document.getElementById(this.outID).innerHTML = this.text.substr(0, this.count);
		this.count++;
		if (this.count <= this.text.length) setTimeout("message.oneChar()", 100);
	},
	allChar : function(){
		document.getElementById(message.outID).innerHTML = message.text;
		message.count = message.text.length;
	},
	start : function(oID, str){
		this.text = str;
		this.count = 0;
		this.outID = oID;
		document.getElementById(this.outID).onclick = message.allChar;
		setTimeout("message.oneChar()", 100);
	}
}
