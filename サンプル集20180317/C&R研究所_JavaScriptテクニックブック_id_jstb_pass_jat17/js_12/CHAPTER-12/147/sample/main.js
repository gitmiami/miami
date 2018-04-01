window.onload = function(){
	var myCalendar = new YAHOO.widget.Calendar("cal", "myCalendar");
	myCalendar.render();
	myCalendar.selectEvent.subscribe(function(eventName, selectDate){
		var y = new String(selectDate).split(",")[0];
		var m = new String(selectDate).split(",")[1];
		var d = new String(selectDate).split(",")[2];
		document.getElementById("result").innerHTML = "選択された日付："+y+"年"+m+"月"+d+"日";
	}, myCalendar, true);
}
