window.onload = function(){
	document.getElementById("setButton").onclick = function(){
		$$(".note").each(function(obj){
			obj.style.borderWidth = "4px";
		});
	}
}
