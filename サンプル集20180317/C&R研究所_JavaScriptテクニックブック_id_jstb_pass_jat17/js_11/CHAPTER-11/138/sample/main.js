window.onload = function(){
	var dataset = {
		"year2005": [[0, 1], [1, 1], [2, 1.2], [3, 1.5]],
		"year2006": [[0, 0.5], [1, 2], [2, 2.15], [3, 4]]
	};
	var options = {
		padding: {left: 50, right: 0, top: 10, bottom: 10},
		backgroundColor: "#dbdbdb",
		colorScheme: "#550000",
		xTicks: [
			{v:0, label:"農業"}, 
			{v:1, label:"重工業"}, 
			{v:2, label:"工業"},
			{v:3, label:"情報"}
		]
	};
	var bar = new Plotr.BarChart("graph",options);
	bar.addDataset(dataset);
	bar.render();
}
