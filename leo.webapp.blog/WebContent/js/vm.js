var Vm = (function() {
    var body = avalon.define({
        $id: "vm_body",

    })

    var article = avalon.define({
        $id: "vm_article",
        articles: [1, 2, 3],
        curPage: 132,
        loadMore: function() {
            $.get('article/list/' + article.curPage + '/1', function(resp) {
                if (resp.status == 200) {
                    var result = resp.result;
                    if (result) {
                        // TODO  无法处理
                        for (var i = 0; i < result.length; i++) {
                            article.articles.push(result[i]);
                        }
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
