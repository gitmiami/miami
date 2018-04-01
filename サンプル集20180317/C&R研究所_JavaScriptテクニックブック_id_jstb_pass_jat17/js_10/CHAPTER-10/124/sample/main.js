window.onload = function(){
	document.getElementById("checkButton").onclick = function(){
		var dc = document.getElementById("dateCount").value;
		dc = parseInt(dc);
		if (isNaN(dc)) { alert("入力エラー"); return; }
		var dateObj = new Date();
		var today = dateObj.getTime();
		var msec = dc * (24 * 60 * 60 * 1000);
		var newday = new Date(today+msec);
		var y = newday.getFullYear();
		var m = newday.getMonth() + 1;
		var d = newday.getDate();
		var yb = "日月火水木金土".charAt(newday.getDay());
		document.getElementById("result").innerHTML = dc+"日後は「"+y+"年"+m+"月"+d+"日("+yb+")」です";
	}
}
