window.onload = function(){
	document.getElementById("checkButton").onclick = function(){
		var radioList = document.mainForm.elements["work"];
		var str = "選択されていません";
		for(var i=0; i<radioList.length; i++){
			if (radioList[i].checked) {
				str = radioList[i].value + "が選択されています";
				break;
			}
		}
		document.getElementById("result").innerHTML = str;
	}
}
