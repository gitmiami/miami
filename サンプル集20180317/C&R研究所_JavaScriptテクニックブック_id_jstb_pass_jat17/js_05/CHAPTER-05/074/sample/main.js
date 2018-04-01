window.onload = function(){
	Dialog.confirm("本当にこのページを閲覧しますか?", {
		windowParameters: {width:300, height:60},
		okLabel: "はい", 
		cancelLabel: "いいえ", 
		ok:function(win){ alert("では御覧ください"); return true; },
		cancel:function(win){ alert("閲覧を中止します"); return true; }
	});
}
