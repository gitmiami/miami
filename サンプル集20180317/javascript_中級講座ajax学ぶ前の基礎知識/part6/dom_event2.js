// Objectオブジェクトのインスタンスを作成し、変数DOMに割り当て
var DOM = {};
// DOM.Eventクラスプロパティの作成
DOM.Event = {};

// DOM.Event.addEventメソッド
DOM.Event.addEvent = function(node, evt, func) {
    // DOM準拠Webブラウザの場合
    if (node.addEventListener) {
        node.addEventListener(evt, func, false);
    }
    // Internet Explorerの場合
    else if (node.attachEvent) {
        node.attachEvent("on" + evt, func);
    }
};

// DOM.Event.removeEventメソッド
DOM.Event.removeEvent = function(node, evt, func) {
    // DOM準拠Webブラウザの場合
    if (node.removeEventListener) {
        node.removeEventListener(evt, func, false);
    }
    // Internet Explorerの場合
    else if (node.detachEvent) {
        node.detachEvent("on" + evt, func);
    }
};

// DOM.Event.getTargetメソッド
DOM.Event.getTarget = function(e) {
    // DOM準拠Webブラウザの場合
    if (e.target) {
        return e.target;
    }
    // Internet Explorerの場合
    else if (e.srcElement) {
        return e.srcElement;
    }
};

// DOM.Event.stopBubblingメソッド
DOM.Event.stopBubbling = function(e) {
    // DOM準拠Webブラウザの場合
    if (e.stopPropagation) {
        e.stopPropagation();
    }
    // Internet Explorerの場合
    else if (window.event) {
        window.event.cancelBubble = true;
    }
};

// DOM.Event.preventDefaultメソッド
DOM.Event.preventDefault = function(e) {
    // DOM準拠Webブラウザの場合
    if (e.preventDefault) {
        e.preventDefault();
    }
    // Internet Explorerの場合
    else if (window.event) {
        window.event.returnValue = false;
    }
};
