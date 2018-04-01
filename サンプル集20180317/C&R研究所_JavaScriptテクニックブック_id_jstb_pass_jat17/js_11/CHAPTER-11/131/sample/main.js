window.onload = function(){
	var msec = (new Date()).getTime();
	new Ajax.Request("data.xml", {
		method: "get",
		parameters: "cache="+msec,
		onSuccess:function(httpObj){
			var xmlData = httpObj.responseXML;
			var winTag = xmlData.getElementsByTagName("windows");
			var tbl = "<table border='1'>";
			for (var i=0; i<winTag.length; i++){
				tbl += "<tr>";
				var typ = winTag[i].getElementsByTagName("type")[0];
				var price = winTag[i].getElementsByTagName("price")[0];
				var note = winTag[i].getElementsByTagName("note")[0];
				tbl += "<td>"+typ.firstChild.nodeValue+"</td>";
				tbl += "<td>"+price.firstChild.nodeValue+"</td>";
				tbl += "<td>"+note.firstChild.nodeValue+"</td>";
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
