window.onload = function(){
	var tabObj = new YAHOO.widget.TabView("informationTab");
	tabObj.addTab(new YAHOO.widget.Tab({
		label : "　Perl　",
		dataSrc : "./tab1.txt",
		active:true
	}));
	tabObj.addTab(new YAHOO.widget.Tab({
		label : "　Ruby　",
		dataSrc : "./tab2.txt"
	}));
	tabObj.addTab(new YAHOO.widget.Tab({
		label : "　Python　",
		dataSrc : "./tab3.txt"
	}));
	YAHOO.util.Event.onContentReady("doc", function() {
		tabView.appendTo("informationTab");
	});
}
