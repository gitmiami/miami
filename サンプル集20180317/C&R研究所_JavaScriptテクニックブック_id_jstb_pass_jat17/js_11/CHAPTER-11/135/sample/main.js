myDatabase = new Spry.Data.XMLDataSet("data.xml", "/list/fruits");
myDatabase.setColumnType("price", "number");
window.onload = function(){
	document.getElementById("sortButton").onclick = function(){
		myDatabase.sort("price")
	}
}
