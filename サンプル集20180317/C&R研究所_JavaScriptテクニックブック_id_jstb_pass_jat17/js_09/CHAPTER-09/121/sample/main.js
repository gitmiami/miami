window.onload = function(){
	new Ajax.Updater("header", "header.txt");
	new Ajax.Updater("info", "info.txt");
	new Ajax.Updater("message", "message.txt");
}
