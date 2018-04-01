// Objectオブジェクトのインスタンスを作成し、変数MenuFolderに割り当てる
var MenuFolder = {};

// クラスプロパティ
MenuFolder.closeIconHTML = "▲"; // 折りたたみを表すアイコンのHTML
MenuFolder.openIconHTML = "▼"; // 折りたたみを開くことを表すアイコンのHTML

// クラスメソッド
MenuFolder.setFold = function(element) {
    // li要素の中のテキストノードと、その文字列を得る
    var orgTextNode = element.firstChild;
    var orgText = orgTextNode.nodeValue;
    // span要素を作成する
    var spanNode = document.createElement("span");
    // テキストノードをspan要素のノードに置き換える
    element.replaceChild(spanNode, orgTextNode);
    // span要素内部のHTMLを作る
    spanNode.innerHTML = makeHTML(orgText, MenuFolder.closeIconHTML);
    // span要素のonclickイベントハンドラ
    spanNode.onclick = function() {
        // li要素の中のul要素を探す
        var ulNode = element.firstChild;
        while (ulNode.nodeName != 'UL') {
            ulNode = ulNode.nextSibling;
        };
        // ul要素が非表示なら表示して、li要素のリンクのHTMLを書き換える
        if (ulNode.style.display == 'none') {
            ulNode.style.display = '';
            spanNode.innerHTML = makeHTML(orgText, MenuFolder.closeIconHTML);
        }
        // ul要素が表示されていれば非表示にして、li要素のリンクのHTMLを書き換える
        else {
            ulNode.style.display = 'none';
            spanNode.innerHTML = makeHTML(orgText, MenuFolder.openIconHTML);
        }
        return false;
    };

    // span要素の内部のHTMLを作る
    function makeHTML(text, iconHTML) {
        var html = '<a href="#">' + text;
        if (iconHTML) {
            html += "&nbsp;" + iconHTML;
        }
        html += "</a>";
        return html;
    }
};
