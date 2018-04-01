window.onload = function(){
	document.getElementById("writeButton").onclick = function(){
		var data = document.getElementById("userData").value;
		cookie.write("userComment", data, 30);
	}
	document.getElementById("readButton").onclick = function(){
		var data = cookie.read("userComment");
		document.getElementById("result").innerHTML = "クッキーデータは「"+data+"」";
	}
}
var cookie = {
	write : function (theName__,theValue__,theDay__){
		if ((theName__ != null) && (theValue__ != null)){
			var expDay__ = "Wed, 01 Jan 2020 18:56:35 GMT";	//　指定されない場合とりあえず2020年
			if (theDay__ != null){
				theDay__ = eval(theDay__);	//　文字列の場合でも数値にする（念のため）
				var setDay = new Date();
				setDay.setTime(setDay.getTime()+(theDay__*1000*60*60*24));
				expDay__ = setDay.toGMTString();
			}
			document.cookie = theName__ + "="+escape(theValue__)+";expires="+expDay__;
			return true;
		}
		return false;
	},
	read : function (theName__){
		theName__ += "=";	//　=を追加して検索の手抜きをする
		theCookie__ = document.cookie+";";	//　検索時最終項目で-1になるのを防ぐ
		start__ = theCookie__.indexOf(theName__);	//　指定された名前を検索する
		if (start__ != -1){
			end__ = theCookie__.indexOf(";",start__);
			return unescape(theCookie__.substring(start__+theName__.length,end__));
		}
		return false;
	}

}
