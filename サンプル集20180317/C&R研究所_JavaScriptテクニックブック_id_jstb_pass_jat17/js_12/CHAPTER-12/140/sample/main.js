var tree;
window.onload = function(){
	tree = new YAHOO.widget.TreeView("treeData");
	var root = tree.getRoot();
	var node1 = new YAHOO.widget.TextNode("検索エンジン", root, false);
	var cNode1 = new YAHOO.widget.TextNode("Google", node1, false);
	var cNode2 = new YAHOO.widget.TextNode("Yahoo!", node1, false);
	var cNode3 = new YAHOO.widget.TextNode("goo", node1, false);
	cNode1.href = "http://www.google.co.jp/";
	cNode2.href = "http://www.yahoo.co.jp/";
	cNode3.href = "http://www.goo.ne.jp/";
	tree.draw();
}
