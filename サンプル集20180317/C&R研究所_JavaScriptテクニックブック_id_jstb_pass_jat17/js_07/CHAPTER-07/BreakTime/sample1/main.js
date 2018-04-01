function test1(){
	var n = 0, i = 999;
	for (var i=0; i<10; i++) { /* 処理 */ }
	alert(i);
}
function test2(){
	var n=0, i=999;
	(function (){
		for (var i=0; i<10; i++) { /* 処理 */ }
	});
	alert(i);
}
test1();
test2();
