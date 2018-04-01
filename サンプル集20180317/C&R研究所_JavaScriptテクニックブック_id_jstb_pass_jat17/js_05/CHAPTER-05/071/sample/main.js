var subWin = window.open("sub.html", "sbwin1","width=480,height=320");
window.onload = function(){

	var root = document.getElementById("myfLink");
	var aTag = root.getElementsByTagName("a");

	for (var i=0; i<aTag.length; i++){

		if (aTag[i].className.match(/ctrlWindow/)){
			aTag[i].onclick = function(){
				subWin.location.href = this.href;
				return false;
			}
		}

	}
}
