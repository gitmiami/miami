window.onload = function(){
	window.document.onmousemove = function(evt){
		if (evt){
			var x = evt.pageX;
			var y = evt.pageY;
		}else{
			var x = event.x + document.body.scrollLeft;
			var y = event.y + document.body.scrollTop;
		}
		document.getElementById("result").innerHTML = x+","+y;
	}
}

