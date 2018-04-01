window.onload = function(){
	var swapText = {
		"info1":["Macがオススメです"],
		"info2":["Nikonがオススメです"],
		"info3":["EPSONがオススメです"]
	}
	for (i in swapText){
		swapText[i][1] = document.getElementById(i).innerHTML;
		document.getElementById(i).onmouseover = function(){
			this.innerHTML = swapText[this.id][0];
		}
		document.getElementById(i).onmouseout = function(){
			this.innerHTML = swapText[this.id][1];
		}
	}
}

