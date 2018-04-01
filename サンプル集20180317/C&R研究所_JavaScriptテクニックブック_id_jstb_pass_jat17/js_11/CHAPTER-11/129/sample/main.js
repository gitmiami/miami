window.onload = function(){
	var msec = (new Date()).getTime();
	new Ajax.Request("data.txt", {
		method: "get",
		parameters: "cache="+msec,
		onSuccess:function(httpObj){
			var text = httpObj.responseText;
			var LF = String.fromCharCode(10);
			var TAB = String.fromCharCode(9);
			var tabText = text.split(LF);
			var tbl = "<table border='1'>";
			for (var i=0; i<tabText.length; i++){
				var cText = tabText[i].split(TAB);
				tbl += "<tr>";
				for (var j=0; j<cText.length; j++){
					tbl += "<td>"+cText[j]+"</td>";
				}
				tbl +="</tr>";
			}
			tbl += "</table>";
			$("tableData").innerHTML = tbl;
		},
		onFailure:function(httpObj){
			$("tableData").innerHTML = "エラーで読み込めませんでした";
		}
	});
}
