var Vm = (function() {


    function showLoading() {
        Dom.loader.css('top', (window.scrollY + $(window).height() / 2 - 50) + "px");
        Dom.loader.css('left', ($(window).width() / 2 - 50) + "px");
        Dom.loader.show(CONST.DURATION);
        Dom.bd.css('overflow', 'hidden');
        body.isLoading = true;
    }

    function hideLoading() {
        Dom.loader.hide(CONST.DURATION);
        body.isLoading = false;
    }

    function hideModal() {
        // Dom.acc.css('top', window.scrollY + "px");
        Dom.acc.hide();
        Dom.bd.css('overflow', 'auto');
    }


    var body = avalon.define({
        $id: "vm_body",
        isLoading: false,
        isHomePage: true,
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
            var articleId = article.articles[index].articleId;
            $.ajax({
                url: 'article/' + articleId,
                success: function(resp) {
                    if (resp.status == 200) {
                        var dom = resp.result;
                        Dom.content.append(dom);

                        Dom.acc.css('top', window.scrollY + "px");
                        Dom.bd.css('overflow', 'hidden');
                        Dom.mc.css('top', window.scrollY + "px");

                        Dom.acc.fadeIn(300, function() {
                            Dom.mc.fadeIn(500, function() {});
                        });
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
                    Dom.bd.css('overflow', 'auto');
                }
            });
        },
    })
    var category = avalon.define({
        $id: "vm_category",
        categories: [],
        loadArticles: function(index) {
            body.isHomePage = false;
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
                    Dom.bd.css('overflow', 'auto');
                }
            });
        }
    })

    var head = avalon.define({
        $id: "vm_head",
        navs: ["首页", "关于博客", "关于作者"],
        clickNav: function(index) {
            switch (index) {
                case 0:
                    if (!body.isHomePage) {
                        showLoading();
                        body.isHomePage = true;
                        $.ajax({
                            url: 'article/list/0/10',
                            success: function(resp) {
                                if (resp.status == 200) {
                                    Vm.article.articles = resp.result;
                                } else {
                                    alert("加载出错");
                                }
                            },
                            error: function() {
                                alert("加载出错");
                            },
                            complete: function(resp) {
                                hideLoading();
                                Dom.bd.css('overflow', 'auto');
                            }
                        });
                    }
                    break;
                case 1:

                    break;
                case 2:
                    break;
                default:
                    break;
            }
        }
    })


    avalon.scan();

    return {
        body: body,
        article: article,
        category: category,
    }
})()
