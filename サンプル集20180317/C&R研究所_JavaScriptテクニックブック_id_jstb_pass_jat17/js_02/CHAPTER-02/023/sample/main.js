﻿var mainObj;window.onload = function(){	document.getElementById("makeButton1").onclick = function(){		mainObj = mainObj || { "text" : "りんご" };		document.getElementById("result").innerHTML = mainObj.text;	}	document.getElementById("makeButton2").onclick = function(){		mainObj = mainObj || { "text" : "みかん" };		document.getElementById("result").innerHTML = mainObj.text;	}	document.getElementById("makeButton3").onclick = function(){		document.getElementById("result").innerHTML += "<br>"+mainObj.text;	}}