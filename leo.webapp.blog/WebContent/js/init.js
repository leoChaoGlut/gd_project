var Init = (function() {
    (function init() {
        $.ajax({
            url: 'article/list/0/10',
            success: function(resp) {
                if (resp.status == 200) {
                    Vm.article.articles = resp.result;
                } else {
                    alert("获取文章详情出错");
                }
            },
            error: function() {
                alert("获取文章详情出错");
            },
            complete: function(resp) {}
        });
        $.ajax({
            url: 'category/all',
            success: function(resp) {
                if (resp.status == 200) {
                    Vm.category.categories = resp.result;
                } else {
                    alert("获取文章详情出错");
                }
            },
            error: function() {
                alert("获取文章详情出错");
            },
            complete: function(resp) {}
        });
        Dom.loader.shCircleLoader({
            color: "#2bbbad",
        });
    })()


    function resize() {
        var avalWidth = Dom.body.width();
        if (Dom.categories.is(':hidden')) {
            avalWidth -= 2 * CONST.MARGIN_NORMAL;
            Dom.articles.width(avalWidth);
        } else {
            avalWidth -= 3 * CONST.MARGIN_NORMAL;
            Dom.categories.width(avalWidth * 0.15);
            Dom.articles.width(avalWidth * 0.85 - CONST.MARGIN_NORMAL);
        }
    }

    resize();


    $(window).resize(function(event) {
        resize();
    });

    return {
        resize: resize,
    }
})()
