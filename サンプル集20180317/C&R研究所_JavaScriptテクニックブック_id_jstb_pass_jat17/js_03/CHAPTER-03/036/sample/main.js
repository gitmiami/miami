window.onload = function() {
	new Spry.Widget.ValidationTextField("checkData1", "time",
		 {format:"hh:mm:ss", validateOn:["blur","change"]});
}
