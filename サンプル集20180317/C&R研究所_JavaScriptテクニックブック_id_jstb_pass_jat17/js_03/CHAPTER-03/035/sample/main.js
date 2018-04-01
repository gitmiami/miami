window.onload = function() {
	new Spry.Widget.ValidationTextField("checkData1", "date",
		 {format:"yyyy/mm/dd", validateOn:["blur","change"]});
}
