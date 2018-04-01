func = {
	"a":function(){alert("aです")},
	"b":function(){alert("bです")},
	"c":function(){alert("cです")},
};
str = prompt("英文字を入れてください", "a");
if (func[str]) func[str](); else alert("abc以外です");
