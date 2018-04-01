window.onload = function(){

	alert("初期表示");



	document.getElementById("checkButton").onclick = function(){

		alert("第2　初期表示");

		var radioList = document.getElementsByName("work");

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
