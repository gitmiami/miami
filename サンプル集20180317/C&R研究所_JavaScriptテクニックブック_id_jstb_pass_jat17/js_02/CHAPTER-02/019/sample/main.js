if (window.addEventListener) {
	window.addEventListener("load", setEvent1, false);
	window.addEventListener("load", setEvent2, false);
}
if (window.attachEvent) {
	window.attachEvent("onload", setEvent1);
	window.attachEvent("onload", setEvent2);
}
function setEvent1(){
	document.getElementById("checkButton1").onclick = function(){
		document.getElementById("result").innerHTML += "イベント発生(ボタン1)<br>";
	}
}
function setEvent2(){
	document.getElementById("checkButton2").onclick = function(){
		document.getElementById("result").innerHTML += "イベント発生(ボタン2)<br>";
	}
}
