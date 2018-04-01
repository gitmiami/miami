window.onload = function(){
	var liTag = document.getElementsByTagName("li");
	for (var i=0; i<liTag.length; i++){
		liTag[i].onmouseover = function(){
			this.style.backgroundColor = "#faa";
		}
		liTag[i].onmouseout = function(){
			this.style.backgroundColor = "#fff";
		}
	}
}
