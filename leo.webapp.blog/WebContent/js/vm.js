var Vm = (function() {

    function showModal() {
        Dom.acc.css('top', window.scrollY + "px");
        Dom.acc.show(CONST.DURATION);
        $("body").css('overflow', 'hidden');
    }

    function showLoading() {
        Dom.loader.css('top', (window.scrollY + $(window).height() / 2 - 50) + "px");
        Dom.loader.css('left', ($(window).width() / 2 - 50) + "px");
        Dom.loader.show(CONST.DURATION);
        body.isLoading = true;
    }

    function hideLoading() {
        Dom.loader.hide(CONST.DURATION);
        body.isLoading = false;
    }

    function hideModal() {
        // Dom.acc.css('top', window.scrollY + "px");
        Dom.acc.hide(CONST.DURATION);
        $("body").css('overflow', 'auto');
    }


    var body = avalon.define({
        $id: "vm_body",
        isLoading: false,
        hideDetail: function() {
            if (!body.isLoading) {
                Dom.mc.children().remove();
                Dom.mc.hide(CONST.DURATION);
                hideModal();
            }
        },
    })

    var article = avalon.define({
        $id: "vm_article",
        articles: [],
        curPage: 1,
        showDetail: function(index) {
            showLoading();
            showModal();
            var articleCode = article.articles[index].articleCode;
            $.ajax({
                url: 'article/' + articleCode,
                success: function(resp) {
                    if (resp.status == 200) {
                        var dom = resp.result;
                        Dom.content.append(dom);
                        Dom.mc.css('top', window.scrollY + "px");
                        Dom.mc.show(CONST.DURATION);
                    } else {
                        alert("获取文章详情出错");
                        hideModal();
                    }
                },
                error: function() {
                    alert("获取文章详情出错");
                    hideModal();
                },
                complete: function(resp) {
                    hideLoading();
                }
            });


        },
        loadMore: function() {
            showLoading();
            var dom = $(this);
            $.ajax({
                url: 'article/list/' + article.curPage * 10 + '/10',
                success: function(resp) {
                    if (resp.status == 200) {
                        var result = resp.result;
                        if (result) {
                            if (result.length > 0) {
                                article.articles.pushArray(result);
                                article.curPage++;
                            } else {
                                dom.hide(CONST.DURATION);
                            }
                        }
                    } else {
                        alert("加载出错");
                    }
                },
                error: function() {
                    alert("加载出错");
                },
                complete: function(resp) {
                    hideLoading();
                }
            });
        }
    })
    var category = avalon.define({
        $id: "vm_category",
        categories: [],
        loadArticles: function(index) {
            showModal();
            showLoading();
            var categoryName = category.categories[index].name;
            $.ajax({
                url: 'category/' + categoryName + '/articles',
                success: function(resp) {
                    if (resp.status == 200) {
                        article.articles = resp.result;
                    } else {
                        alert("加载出错");
                    }
                },
                error: function() {
                    alert("加载出错");
                },
                complete: function(resp) {
                    hideLoading();
                    hideModal();
                }
            });
        }
    })

    var head = avalon.define({
        $id: "vm_head",
        navs: ["关于博客"],
    })


    avalon.scan();

    return {
        body: body,
        article: article,
        category: category,
    }
})()
