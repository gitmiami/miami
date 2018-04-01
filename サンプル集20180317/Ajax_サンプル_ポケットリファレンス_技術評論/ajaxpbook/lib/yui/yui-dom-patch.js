/**
 * fix The YUI dom module.
 *
 * [ 1576570 ] getXY: Y coordinate is wrong in Opera 9
 * http://sourceforge.net/tracker/index.php?func=detail&aid=1576570&group_id=165715&atid=836476
 */
(function() {

    if (!window.opera) return; // for Opera9.

    var Dom = YAHOO.util.Dom;

    Dom.getXY = function(el) {
        var f = function(el) {

            // has to be part of document to have pageXY
            if (el.parentNode === null || el.offsetParent === null ||
                    this.getStyle(el, 'display') == 'none') {
                return false;
            }

            var parentNode = null;
            var pos = [];
            var box;

            pos = [el.offsetLeft, el.offsetTop];
            parentNode = el.offsetParent;
            if (parentNode != el) {
                while (parentNode) {
                    pos[0] += parentNode.offsetLeft;
                    pos[1] += parentNode.offsetTop;
                    parentNode = parentNode.offsetParent;
                }
            }

            if (el.parentNode) { parentNode = el.parentNode; }
            else { parentNode = null; }
            while (parentNode && parentNode.tagName.toUpperCase() != 'BODY' && parentNode.tagName.toUpperCase() != 'HTML') 
            { // account for any scrolled ancestors
                if (Dom.getStyle(parentNode, 'display') == 'block') { // work around opera inline scrollLeft/Top bug
                    pos[0] -= parentNode.scrollLeft;
                    pos[1] -= parentNode.scrollTop;
                }
                if (parentNode.parentNode) {
                    parentNode = parentNode.parentNode; 
                } else { parentNode = null; }
            }
            return pos;
        };
        return Dom.batch(el, f, Dom, true);
    }
})();

