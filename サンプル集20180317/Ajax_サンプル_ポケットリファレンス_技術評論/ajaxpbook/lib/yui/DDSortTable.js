/**
 * DDSortTable.js
 * @requires DDTableRow
 */
(function(){

    /**
     * orgTable を元にして targetEl 内にドラッグ＆ドロップで並び替えが可能なテーブルを作成します。
     * @class DDSortTable
     * @constructor
     * @param {HTMLTableElement} orgTable 元になるテーブル
     * @param {HTMLElement} targetEl ドラッグ＆ドロップで並び替えが可能なテーブルを置く場所
     */
    function DDSortTable(orgTable,targetEl){
        /**
         * 元になるテーブル
         * @property orgTable
         * @type HTMLTableElement
         */
        this.orgTable = orgTable;
        /**
         * ドラッグ＆ドロップで並び替えが可能なテーブルを置く場所
         * @property targetEl
         * @type HTMLElement
         */
        this.targetEl = targetEl;
        /**
         * ドラッグ＆ドロップで並び替えが可能なテーブル(build内で作成)
         * @property newTable
         * @type HTMLTableElement
         */
        this.newTable = null;
        /**
         * 並び替えた tr 要素の id と、元になるテーブルの tr 要素を結びつけるハッシュ
         * (sortPair[newTR.id] = orgTR)
         * @property sortPair
         * @type Object
         */
        this.sortPair = null;
        // DDテーブル作成
        this.build();
    }
    DDSortTable.prototype = {
        /**
         * orgTable を元にして targetEl 内にドラッグ＆ドロップで並び替えが可能なテーブルを作成。
         * 「元に戻す」用途にも使えます。
         * @method build
         * @return void
         */
        build : function(){
            this.newTable = null;
            this.sortPair = null;
            var orgTable = this.orgTable;
            var targetEl = this.targetEl;
            var newTable = cloneElement(orgTable,true);
            while (targetEl.lastChild) {
                targetEl.removeChild(targetEl.lastChild);
            }
            targetEl.appendChild(newTable);
            var sortPair = {};
            var orgTRs = orgTable.getElementsByTagName('tr');
            var newTRs = newTable.getElementsByTagName('tr');
            for (var i=0; i<newTRs.length; i++) {
                var orgTR = orgTRs[i];
                var newTR = newTRs[i];
                // tbody 下の tr 要素で、th 要素をもたないものが対象
                if (
                    /tbody/i.test(newTR.parentNode.nodeName)
                    &&
                    newTR.getElementsByTagName('th').length == 0
                ) {
                    new DDTableRow(newTR);
                    sortPair[newTR.id] = orgTR; // id が無いものは DDProxy 内で自動的に作られる.
                }
            }
            this.newTable = newTable;
            this.sortPair = sortPair;
        }
    }
    // publish
    window.DDSortTable = DDSortTable;

    // private functions.
    function outerHTML(el){
        if(el.outerHTML) return el.outerHTML;
        // for Firefox.
        var dv=el.ownerDocument.createElement('div');
        dv.appendChild(el.cloneNode(true));
        return dv.innerHTML;
    }
    function cloneElement(el,deep){
        if (document==el.ownerDocument) {
            return el.cloneNode(!!deep);
        }
        // clone node over document object(for IE).
        var pname = (el.parentNode) ? el.parentNode.nodeName : 'div';
        if (/html|body/i.test(pname)) pname = 'div';
        var parent = document.createElement(pname);
        parent.innerHTML = outerHTML(el.cloneNode(!!deep));
        return parent.removeChild(parent.lastChild);
    }
})();

