window.onload = function(){
	document.getElementById("getButton1").onclick = function(){
		a = [1, "A", function (){}, window, undefined, null, true];
		for (i=0; i<a.length; i++){
			t = typeof(a[i]);
			document.getElementById("result").innerHTML += i+" : "+t+"<br>";
		}
	}
}
