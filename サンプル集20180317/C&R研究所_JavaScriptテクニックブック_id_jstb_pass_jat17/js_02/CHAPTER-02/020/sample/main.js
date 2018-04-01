window.onload = function(){
	if (document.getElementById){
		document.getElementById("result").innerHTML = "DOMが利用できます";
	}else{
		document.getElementById("result").innerHTML = "DOMは使えません";
	}
}
