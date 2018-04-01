// Object�I�u�W�F�N�g�̃C���X�^���X���쐬���A�ϐ�DOM�Ɋ��蓖��
var DOM = {};
// DOM.Event�N���X�v���p�e�B�̍쐬
DOM.Event = {};

// DOM.Event.addEvent���\�b�h
DOM.Event.addEvent = function(node, evt, func) {
    // DOM����Web�u���E�U�̏ꍇ
    if (node.addEventListener) {
        node.addEventListener(evt, func, false);
    }
    // Internet Explorer�̏ꍇ
    else if (node.attachEvent) {
        node.attachEvent("on" + evt, func);
    }
};

// DOM.Event.removeEvent���\�b�h
DOM.Event.removeEvent = function(node, evt, func) {
    // DOM����Web�u���E�U�̏ꍇ
    if (node.removeEventListener) {
        node.removeEventListener(evt, func, false);
    }
    // Internet Explorer�̏ꍇ
    else if (node.detachEvent) {
        node.detachEvent("on" + evt, func);
    }
};

// DOM.Event.getTarget���\�b�h
DOM.Event.getTarget = function(e) {
    // DOM����Web�u���E�U�̏ꍇ
    if (e.target) {
        return e.target;
    }
    // Internet Explorer�̏ꍇ
    else if (e.srcElement) {
        return e.srcElement;
    }
};

// DOM.Event.stopBubbling���\�b�h
DOM.Event.stopBubbling = function(e) {
    // DOM����Web�u���E�U�̏ꍇ
    if (e.stopPropagation) {
        e.stopPropagation();
    }
    // Internet Explorer�̏ꍇ
    else if (window.event) {
        window.event.cancelBubble = true;
    }
};

// DOM.Event.preventDefault���\�b�h
DOM.Event.preventDefault = function(e) {
    // DOM����Web�u���E�U�̏ꍇ
    if (e.preventDefault) {
        e.preventDefault();
    }
    // Internet Explorer�̏ꍇ
    else if (window.event) {
        window.event.returnValue = false;
    }
};
