/*
function getsyn(prog){
	var httpObj = getHttpObject();
  httpObj.open("get", prog, false);
	httpObj.setRequestHeader("If-Modified-Since", "01 Jan 2000 00:00:00 GMT");	
  httpObj.send(null);
  return httpObj.responseText;
}

function postsyn(sprog, data){
	var httpObj = getHttpObject();
  httpObj.open("post", sprog, false);
  httpObj.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
	httpObj.setRequestHeader("If-Modified-Since", "01 Jan 2000 00:00:00 GMT");
  httpObj.send(data);
  return httpObj.responseText;
}
*/

function mkcrud(title, sprog, items){
	var cols = 2;
	var rows = items[0].length;
	alert("rows="+rows);
	var table = document.createElement("table");
	table.setAttribute("id", "table");
	table.setAttribute("border", "1");
	table.setAttribute("width", 500);
  //table.setAttribute("cellspacing", "0");
  //table.setAttribute("cellpadding", "0");
  var tbody = document.createElement("tbody");
  tbody.setAttribute("id", "tbody");
	for(var i = 0; i < rows; i++){
    var tr = document.createElement("tr");
    tr.setAttribute("id", "tr" + i);
    for(var j = 0; j < cols; j++){
      var td = document.createElement("td");
      td.setAttribute("align", "center");
      if(j==0){
        td.setAttribute("width", "120");
      }else{
        td.setAttribute("width", "380");
				var text = document.createElement("input");
        text.setAttribute("type", "text");
        text.setAttribute("size", 9);
        text.setAttribute("id",i+":"+j);
      }
			td.appendChild(textNode);
      tr.appendChild(td);
    }
    tbody.appendChild(tr);
  }
  table.appendChild(tbody);
  $("table").appendChild(table);
}
