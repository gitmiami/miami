window.onload = function(){
	document.getElementById("checkButton").onclick = function(){
		var checkList = ["OS1","OS2","OS3","OS4"];
		var str = "";
		for(var i=0; i<checkList.length; i++){
			var chkObj = document.mainForm.elements[checkList[i]];
			if (chkObj.checked) {
				str += chkObj.value + "が選択されています<br>";
			}
		}
		if (!str) str = "何も選択されていません";
		document.getElementById("result").innerHTML = str;
	}
}
