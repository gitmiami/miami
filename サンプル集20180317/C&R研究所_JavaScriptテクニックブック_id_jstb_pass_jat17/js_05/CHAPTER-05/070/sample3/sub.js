window.onload = function(){
	var root = document.getElementById("myfLink");
	var aTag = root.getElementsByTagName("a");
	for (var i=0; i<aTag.length; i++){
		if (aTag[i].className.match(/ctrlWindow/)){
			aTag[i].onclick = function(){
			alert(window.opener.closed);
			//	window.opener.location.href = this.href;
				return false;
			}
		}
	}
}
