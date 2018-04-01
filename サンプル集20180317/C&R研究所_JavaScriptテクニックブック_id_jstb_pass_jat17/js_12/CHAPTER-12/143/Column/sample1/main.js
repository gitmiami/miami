window.onload = function(){
	divObj = document.getElementById("contents");
	alert(divObj.firstChild.nodeType);
	alert(divObj.childNodes[1].nodeType);
}
