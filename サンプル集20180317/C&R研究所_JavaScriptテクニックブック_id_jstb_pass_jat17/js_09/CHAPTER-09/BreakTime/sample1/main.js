window.onload = function(){
	txt = "";
	s = new Date();
	for (var i=0; i<100000; i++){
		txt += "Sample text, ";
	}
	e = new Date();
	tm1 = (e-s) / 1000;
	
	txt2 = [];
	s = new Date();
	for (var i=0; i<100000; i++){
		txt2[i] = "Sample text, ";
	}
	txtX = txt2.join("");
	e = new Date();
	tm2 = (e-s) / 1000;

	document.getElementById("time").innerHTML = tm1+"<br>"+tm2;
}
