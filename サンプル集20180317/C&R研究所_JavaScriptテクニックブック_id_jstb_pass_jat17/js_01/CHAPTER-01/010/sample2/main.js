function computer(machineName, cpu){
	this.name = machineName;
	this.cpu = cpu;
	this.memory = "1GB";
	this.play = function(){ alert(this.name+"で音楽を再生します");}
}
macBook1 = new computer("MacBook", "Core2 Duo");
macBook1.play();

