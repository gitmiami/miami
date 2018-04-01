window.onload = function(){
	document.getElementById("checkButton").onclick = function(){
		var str1 = document.getElementById("uName1").value;
		var str2 = document.getElementById("uName2").value;
		var str = str1 + str2;
		document.getElementById("result").innerHTML = "氏名は「"+str+"」です";
	}
}
