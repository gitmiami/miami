a = 12;
var b = 34;
delete a;
delete b;
//alert(a);
alert(b);
c = function (){ alert("OK"); }
c();
delete c;
//c();
function d(){ alert("NG"); }
d();
delete d;
d();

