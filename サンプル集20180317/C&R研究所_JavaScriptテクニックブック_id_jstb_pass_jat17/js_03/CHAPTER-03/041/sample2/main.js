window.onload = function(){
	document.getElementById("mainForm").onsubmit = function(){
		var checkList = ["userName", "userAge", "userAddress"];
		for (var i=0; i<checkList.length; i++){
			if(!document.forms["mainForm"].elements[checkList[i]].value){
				alert("未入力の項目があります");
				return false;
			}
		}
		return true;
	}
}
