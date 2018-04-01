window.onload = function(){
	document.getElementById("checkButton").onclick = function(){
		var count = parseInt(document.getElementById("repeatCount").value);
		var str = "";
		var startTime = new Date();
		for (var i=0; i<count; i++){
			str += "JavaScript Sample Text, "+Math.pow(10,20)/2+Math.PI;
		}
		var endTime = new Date();
		var msec = endTime - startTime;
		document.getElementById("result").innerHTML = msec+"ミリ秒かかりました";
	}
}
