var Vm = (function() {


    function showLoading() {
        Dom.loader.css('top', (window.scrollY + $(window).height() / 2 - 50) + "px");
        Dom.loader.css('left', ($(window).width() / 2 - 50) + "px");

        Dom.loader.velocity("fadeIn", CONST.DURATION);

        body.isLoading = true;
    }

    function hideLoading(callBack) {
        body.isLoading = false;
        Dom.loader.velocity("fadeOut", {
            duration: CONST.DURATION,
            delay: CONST.DURATION,
            complete: callBack
        });
    }

    function hideModal(callBack) {
        Dom.acc.velocity("fadeOut", CONST.DURATION, callBack);
        Dom.bd.css('overflow-y', 'auto');
    }


    var body = avalon.define({
        $id: "vm_body",
        isLoading: false,
        isHomePage: true,
        hasClickedModal: false,
        clickModal: function() {
            body.hasClickedModal = true;
        },
        hideModal: function() {
            if (!body.isLoading && !body.hasClickedModal) {
                if (Dom.aboutBlog.is(":hidden")) {
                    Dom.mc.children().remove();
                    Dom.mc.velocity("fadeOut", {
                        duration: CONST.DURATION,
                        complete: function() {
                            Dom.bd.css('background-color', '#f0f0f0');
                            Dom.bd.css('overflow-y', 'auto');
                        }
                    });
                } else {
                    Dom.aboutBlog.velocity("fadeOut", {
                        duration: CONST.DURATION,
                        complete: function() {
                            Dom.bd.css('background-color', '#f0f0f0');
                            Dom.bd.css('overflow-y', 'auto');
                        }
                    });
                }
            }
            body.hasClickedModal = false;
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
                        Dom.mc.css('top', window.scrollY + "px");

                        hideLoading(function() {
                            Dom.mc.velocity("fadeIn", {
                                duration: CONST.DURATION,
                                complete: function() {
                                    Dom.bd.css('background-color', '#a0a0a0');
                                    Dom.bd.css('overflow-y', 'hidden');
                                }
                            });
                        })

                    } else {
                        alert("获取文章详情出错");
                        // hideModal();
                    }
                },
                error: function() {
                    alert("获取文章详情出错");
                    // hideModal();
                },
                complete: function(resp) {
                    // hideLoading();
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
                                dom.velocity("fadeOut", CONST.DURATION);
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
                    Dom.bd.css('overflow-y', 'auto');
                }
            });
        },
        rendered: function() {
            Dom.bd.css('background-color', '#f0f0f0');
            Dom.loader.velocity("fadeOut", {
                duration: CONST.DURATION,
                delay: CONST.DURATION
            });
        }
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
                    Dom.bd.css('overflow-y', 'auto');
                }
            });
        }
    })

    var head = avalon.define({
        $id: "vm_head",
        navs: ["所有文章", "关于博客"],
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
                                Dom.bd.css('overflow-y', 'auto');
                            }
                        });
                    }
                    break;
                case 1:
                    body.hasClickedModal = true;

                    Dom.aboutBlog.css('top', window.scrollY + "px");

                    Dom.aboutBlog.velocity("fadeIn", {
                        duration: CONST.DURATION,
                        complete: function() {
                            Dom.bd.css('background-color', '#a0a0a0');
                            Dom.bd.css('overflow-y', 'hidden');
                        }
                    });

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
