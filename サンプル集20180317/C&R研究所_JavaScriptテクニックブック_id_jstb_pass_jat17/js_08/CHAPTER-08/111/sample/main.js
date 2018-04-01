window.onload = function(){
	window.document.onclick = function(evt){
		if (!evt) {
			var eType = event.srcElement.tagName;
		}else{
			var eType = evt.target.tagName;
		}
		eType = eType.toLowerCase();
		var text = "";
		switch(eType) {
			case "h1" : text = "見出しがクリックされました";
								break;
			case "input" : text = "ボタンがクリックされました";
								break;
			case "form" : text = "フォームがクリックされました";
								break;
		}
		document.getElementById("result").innerHTML = text;
	}
}
