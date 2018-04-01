function getHttpObject() {
  var xmlhttp;
  if (window.ActiveXObject){
    try {
      xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
    } catch (e){
      try {
        xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
      } catch (E){
        xmlhttp = false;
      }
    }
	}else if (window.XMLHttpRequest) {
    try {
      xmlhttp = new XMLHttpRequest();
    } catch (e) {
      xmlhttp = false;
    }
  }
  return xmlhttp;
}

function addListener(eSrc, eType, eFunc, cap){
  if(eSrc.attachEvent){
    eSrc.attachEvent('on' + eType, eFunc);
  }else if(eSrc.addEventListener){
    eSrc.addEventListener(eType, eFunc, cap);
  }else {
    alert('');
    return false;
  }
}

function getid(e){ 
  if(e.srcElement){
    return e.srcElement.id;
  }else if(e.target){
    return e.target.id;
	}else{
		alert('');
    return false;
  }
}

function getkcode(e){ 
	if(e.keyCode){
    return e.keyCode;
  }else if(e.which){
    return e.which;
	}else{
	alert('');
    return false;
  }
}


