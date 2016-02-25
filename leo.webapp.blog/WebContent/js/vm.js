var Vm = (function() {
    var body = avalon.define({
        $id: "vm_body",
        hideDetail: function() {
            $("body").css('overflow', 'auto');
            Dom.mc.children().remove();
            Dom.acc.hide(CONST.DURATION);
            Dom.mc.hide(CONST.DURATION);
        },
    })

    var article = avalon.define({
        $id: "vm_article",
        articles: [],
        curPage: 1,
        showDetail: function(index) {
            var articleCode = article.articles[index].articleCode;
            $.get('article/' + articleCode, function(resp) {
                if (resp.status == 200) {
                    var dom = resp.result;
                    $(".my_content").append(dom);
                    Dom.acc.css('top', window.scrollY + "px");
                    Dom.mc.css('top', window.scrollY + "px");
                    Dom.acc.show(CONST.DURATION);
                    Dom.mc.show(CONST.DURATION);
                    $("body").css('overflow', 'hidden');
                } else {
                    alert("获取文章详情出错");
                }
            });
        },
        loadMore: function() {
            $.get('article/list/' + article.curPage * 10 + '/10', function(resp) {
                if (resp.status == 200) {
                    var result = resp.result;
                    if (result) {
                        article.articles.pushArray(result);
                        article.curPage++;
                    }
                } else {
                    alert("加载出错");
                }
            });
        }
    })
    var category = avalon.define({
        $id: "vm_category",
        categories: [1, 2, 3],
    })


    avalon.scan();

    return {
        body: body,
        article: article,
        category: category,
    }
})()
