window.onload = function(){
	document.getElementById("calcButton").onclick = function(){
		var totalPrice = 0;
		for (var i=1; i<=3; i++){
			var num = parseInt(document.getElementById("num"+i).value) || 0;
			var prc = parseInt(document.getElementById("price"+i).value) || 0;
			totalPrice += num * prc;
		}
		document.getElementById("total").value = totalPrice;
	}
}
