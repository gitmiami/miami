window.onload = function(){
	var res = document.getElementById("result");
	res.innerHTML = checkType(123) +"<br>";
	res.innerHTML += checkType("Jinbouchou") +"<br>";
	res.innerHTML += checkType(jsTest) +"<br>";
}
function checkType(checkData){
	if (typeof(checkData) == "number") return checkData * 2;
	if (typeof(checkData) == "string") return checkData.length;
	if (typeof(checkData) == "function") return checkData();
}
function jsTest(){
	return "こんにちは";
}
