window.onload = function(){
	document.getElementById("checkButton").onclick = function(){
		var uID = document.getElementById("userID").value;
		if (uID != "cr"){
			alert("IDが間違っています");
		}else{
			alert("このIDでログインします");
		}
	}
}
