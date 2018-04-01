window.onload = function(){
	document.getElementById("selMain").onchange = function(){
		var selNo = this.selectedIndex;
		var selObj = document.getElementById("selSub");
		var optionData = [[
			],[
				{ text:"95〜Me", value:"95"},
				{ text:"2000/XP", value:"2000"},
				{ text:"Vista", value:"Vista"}
			],[
				{ text:"OS 9", value:"9"},
				{ text:"OS X", value:"10"}
			]
		];
		while(selObj.hasChildNodes()) {
			selObj.removeChild(selObj.firstChild);
		}
		for (var i=0; i<optionData[selNo].length; i++){
			selObj.options[i] = new Option(optionData[selNo][i].text, optionData[selNo][i].value);
		}
	}
}
