var testFunc;
function testFunc2(){
	alert("最初に定義した関数");
}
alert(testFunc);
if (!testFunc) {
	function testFunc(){
		alert("二番目に定義した関数");
	}
}else{
	function testFunc(){
		alert("3番目に定義した関数");
	}
}
testFunc();
