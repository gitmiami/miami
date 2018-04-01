window.onload = function(){
	document.getElementById("setButton").onclick = function(){
		$("contents").getElementsBySelector("div span").each(function(obj){
			obj.style.color = "red";
		});
	}
}
