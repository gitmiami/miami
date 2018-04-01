function computer(machineName, cpu){
	this.name = machineName;
	this.cpu = cpu;
	this.memory = "1GB";
}
macBook1 = new computer("MacBook", "Core2 Duo");

window.onload = function(){

	for(i in macBook1){
		document.getElementById("result").innerHTML += i+" = "+macBook1[i]+"<br>";
	}

}
