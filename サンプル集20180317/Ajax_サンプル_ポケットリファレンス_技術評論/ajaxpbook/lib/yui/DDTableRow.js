/**
 * almost the same
 * Yahoo! UI Library - Drag and Drop - DDProxy - Sortable List
 * http://developer.yahoo.com/yui/examples/dragdrop/list.html?mode=dist
 */
(function() {

    var Dom = YAHOO.util.Dom;
    var Event = YAHOO.util.Event;
    var DDM = YAHOO.util.DragDropMgr;
    DDM.mode = DDM.POINT;

    DDTableRow = function(id, sGroup, config) {
        if (id) {
            this.init(id, sGroup, config);
            this.initFrame();
            this.logger = this.logger || YAHOO;
        }
        var el = this.getDragEl();
        Dom.setStyle(el, "opacity", 0.67);
        Dom.setStyle(el, "border-width", 0);
        Dom.setStyle(this.getEl(), "cursor", "move");
        var self = this;
        this.goingUp = false;
        this.lastY = 0;
    };

    function outerHTML(el){
        if(el.outerHTML) return el.outerHTML;
        var dv=el.ownerDocument.createElement('div');
        dv.appendChild(el.cloneNode(true));
        return dv.innerHTML;
    }

    YAHOO.extend(DDTableRow, YAHOO.util.DDProxy, {
        startDrag: function(x, y) {
            var dragEl = this.getDragEl();
            var clickEl = this.getEl();
            var table = clickEl.parentNode.parentNode;
            //id セレクタのスタイルは無視
            var className = table.className;
            dragEl.innerHTML = '<table class="'+className+'" style="width:100%">'+outerHTML(clickEl)+'<\/table>';
            var clickTDs = clickEl.getElementsByTagName('td');
            var dragTDs = dragEl.getElementsByTagName('td');
            for(var i=0; i<clickTDs.length; i++ ){
                var clickTD = clickTDs[i];
                var dragTD = dragTDs[i];
                Dom.setStyle(dragTD, "color", Dom.getStyle(clickTD, "color"));
                Dom.setStyle(dragTD, "backgroundColor", Dom.getStyle(clickTD, "backgroundColor"));
                var width = Dom.getStyle(clickTD, "width");
                if ( ! /[0-9]/.test(width) ){
                    width = clickTD.offsetWidth + 'px';
                }
                Dom.setStyle(dragTD, "width", width);
            }
            Dom.setStyle(clickEl, "visibility", "hidden");
        },
        endDrag: function(e) {
            var srcEl = this.getEl();
            var proxy = this.getDragEl();
            Dom.setStyle(proxy, "visibility", "visible");
            // animate the proxy element to the src element's location
            var a = new YAHOO.util.Motion( 
                proxy, { 
                    points: { 
                        to: Dom.getXY(srcEl)
                    }
                }, 
                0.1
            )
            a.onComplete.subscribe(function() {
                    Dom.setStyle(proxy, "visibility", "hidden");
                    Dom.setStyle(srcEl, "visibility", "");
                });
            a.animate();
        },
        onDrag: function(e, id) {
            // figure out which direction we are moving
            var y = Event.getPageY(e);
            if (y < this.lastY) {
                this.goingUp = true;
            } else if (y > this.lastY) {
                this.goingUp = false;
            }
            this.lastY = y;
        },
        onDragOver: function(e, id) {
            var srcEl = this.getEl();
            var destEl;
            if ("string" == typeof id) {
                // POINT mode
                destEl = Dom.get(id);
            } else { 
                // INTERSECT mode
                destEl= YAHOO.util.DDM.getBestMatch(id).getEl();
            }
            var p = destEl.parentNode;
            if (this.goingUp) {
                p.insertBefore(srcEl, destEl);
            } else {
                p.insertBefore(srcEl, destEl.nextSibling);
            }
            DDM.refreshCache();
        },
        toString: function() {
            return "DDTableRow " + this.id;
        }
    });
})();

