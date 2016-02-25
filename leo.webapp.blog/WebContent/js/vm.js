var Vm = (function() {
    var body = avalon.define({
        $id: "vm_body",

    })

    var article = avalon.define({
        $id: "vm_article",
        articles: [1, 2, 3],
        curPage: 1,
        showDetail: function(index) {
            var articleCode = article.articles[index].articleCode;
            $.get('article/' + articleCode, function(resp) {
                if (resp.status == 200) {
                    var dom = resp.result;
                    $(".article_content").append(dom);
                    $(".article_content_container").show(CONST.DURATION);
                    $(".article_content").show(CONST.DURATION);
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
