window.onload = function(){
	var userName = prompt("お名前は？", "お名前を入力してください");
	if (!userName) userName = "名無 権兵衛";
	document.getElementById("message").innerHTML = "ようこそ"+userName+"さん";
}
