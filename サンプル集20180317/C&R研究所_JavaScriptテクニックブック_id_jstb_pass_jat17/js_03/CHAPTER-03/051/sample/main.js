window.onload = function(){
	document.getElementById("setButton").onclick = function(){
		var n = Math.floor(Math.random() * rndFunc.length);
		rndFunc[n]();
	}
}
var rndFunc = [
	function(){
		var pr = document.getElementById("price").value;
		document.getElementById("result").innerHTML = "当選金額は"+pr+"円です";
	},
	function(){
		var pr = document.getElementById("price").value;
		document.getElementById("result").innerHTML = "当選金額は"+pr+"ドルです";
	},
	function(){
		var pr = document.getElementById("price").value;
		document.getElementById("result").innerHTML = "当選金額は"+pr+"ポンドです";
	}
]