window.onload = function(){
	document.getElementById("getButton1").onclick = function(){
//		a = [1, "A", function (){ }, window, undefined, null];
//		a = [function (){ }];
		a = [function b(){ alert(2)}];
		for (i in a){
			t = typeof(a[i]);
			document.getElementById("result").innerHTML += t+"<br>";
		}
		a[0]();
	}
}
