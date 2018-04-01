window.onload = function(){
	new Draggable("dragBox1");
	new Draggable("dragBox2", { revert:true } );
	new Draggable("dragImage", { snap:function(x,y){
		return [Math.floor(x / 20)*20, Math.floor(y / 20)*20]; }});
}

