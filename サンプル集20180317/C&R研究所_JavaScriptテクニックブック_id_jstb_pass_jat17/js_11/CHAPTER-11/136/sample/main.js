window.onload = function(){
	var msec = (new Date()).getTime();
	new Ajax.Request("message.txt", {
		method: "get",
		parameters: "cache="+msec,
		onSuccess:function(httpObj){
			var text = httpObj.responseText;
			var template = new Template(text);
			$("message").innerHTML = template.evaluate({
				weather : "くもり",
				temp : "13℃"
			});
		},
		onFailure:function(httpObj){
			$("tableData").innerHTML = "エラーで読み込めませんでした";
		}
	});
}
