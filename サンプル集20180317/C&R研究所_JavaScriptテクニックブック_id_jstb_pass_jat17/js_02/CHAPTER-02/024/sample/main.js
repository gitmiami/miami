window.onload = function(){
	setTimeout("styleChange.paragraph()", 3*1000);
}
var styleChange = {
	paragraph : function(){
		var pTag = document.getElementsByTagName("p");
		for(var i=0; i<pTag.length; i++){
			pTag[i].className = "normal";
		}
	}
}
