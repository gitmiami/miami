window.onload = function(){
	var msec = (new Date()).getTime();
	new Ajax.Request("data.txt", {
		method: "get",
		parameters: "cache="+msec,
		onSuccess:function(httpObj){
			var jsonData = eval(httpObj.responseText);
			var tbl = "<table border='1'>";
			for (var i=0; i<jsonData.length; i++){
				tbl += "<tr>";
				tbl += "<td>"+jsonData[i].type+"</td>";
				tbl += "<td>"+jsonData[i].price+"</td>";
				tbl += "<td>"+jsonData[i].note+"</td>";
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
