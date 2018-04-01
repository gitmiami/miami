window.onload = function(){
	var uName = showModalDialog("name.html",window,"dialogWidth:350px;dialogHeight:240px");
	document.getElementById("message").innerHTML = uName+"さん、ようこそ";
}
