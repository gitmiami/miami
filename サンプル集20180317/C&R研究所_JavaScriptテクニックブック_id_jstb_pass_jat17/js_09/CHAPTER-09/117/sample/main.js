window.onload = function(){
	document.getElementById("checkButton").onclick = function(){
		var text = document.getElementById("targetText").value;
		var str = document.getElementById("searchText").value;
		var ptr = text.indexOf(str,0);
		if (ptr < 0) {
			document.getElementById("result").innerHTML = "見つかりませんでした";
		}else{
			document.getElementById("result").innerHTML = (ptr+1)+"文字目で見つかりました";
		}
	}
}
