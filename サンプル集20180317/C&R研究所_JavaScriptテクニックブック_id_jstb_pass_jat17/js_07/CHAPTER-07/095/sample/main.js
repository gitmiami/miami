window.onload = function(){
	document.getElementById("setButton").onclick = function(){
		var n = parseFloat(document.getElementById("opac").value);
		if (window.createPopup){
			document.getElementById("result").filters.alpha.Opacity = n * 100;
		}else{
			document.getElementById("result").style.opacity = n;
		}
	}
}
