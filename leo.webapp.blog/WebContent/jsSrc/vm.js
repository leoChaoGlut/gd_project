var Vm = (function() {

    var articleContainer = new Vue({
        el: "#articleContainer",
        data: {
            articles: [],
            content: "",
            startIndex: 0,
            noMoreData: false,
            isLoading: false,
            curArticleId: "",
        },
        methods: {
            showModal: function(index) {
                Dom.modalContent.children("#article_content").remove();
                Dom.modalContent.children("iframe").remove();
                var articleId = articleContainer.$data.articles[index].id;
                this.curArticleId = articleId;
                Util.getContent(articleId);
                Dom.myModal.openModal();
            }
        }
    })

    var options = new Vue({
        el: "#options",
        data: {
            isHoverOnOptions: false,
            isFolded: true,
        },
        methods: {
            showCategory: function() {
                Dom.category.velocity("stop");
                if (this.isFolded) {
                    Dom.category.find("li").css("opacity", 0);
                    Dom.category.velocity({
                        right: 0,
                    }, {
                        delay: 100,
                        duration: CONST.DURATION,
                        complete: function() {
                            Materialize.showStaggeredList('#category ul');
                        }
                    });
                } else {
                    Dom.category.find("li").velocity("stop");
                    Dom.category.velocity({
                        right: -CONST.CATEGORY_WIDTH
                    }, CONST.DURATION);
                }
                this.isFolded = !this.isFolded;
            },
            withoutCategory: function(index) {
                if (category.$data.curIndex != index) {
                    articleContainer.$data.articles.length = 0;
                    articleContainer.$data.articles = [];
                    articleContainer.$data.noMoreData = false;
                    Vm.articleContainer.$data.startIndex = 0;
                    Util.getArticles();
                    category.$data.curIndex = CONST.ALL_ARTICLE_PAGE;
                } else {
                    $('body,html').animate({ scrollTop: 0 }, CONST.DURATION * 2);
                }
            },
            goToTheTop: function() {
                $('body,html').animate({ scrollTop: 0 }, CONST.DURATION * 2);
            }
        }
    })

    var myModal = new Vue({
        el: "#myModal",
        data: {
            isLoading: false,
        },
        methods: {
            loadContentFromCSDN: function() {
                var articleId = articleContainer.$data.curArticleId;
                var url = 'http://blog.csdn.net/lc0817/article/details/' + articleId
                window.open(url);
            }
        }
    })
    var category = new Vue({
        el: "#category",
        data: {
            categories: [],
            curIndex: CONST.ALL_ARTICLE_PAGE,
        },
        methods: {
            showArticlesOfACategory: function(index) {
                if (this.curIndex != index) {
                    articleContainer.$data.articles.length = 0;
                    articleContainer.$data.articles = [];
                    var categoryName = this.categories[index].name;
                    Util.getArticlesByCategory(categoryName);
                    this.curIndex = index;
                }
            }
        }
    })
    return {
        articleContainer: articleContainer,
        options: options,
        myModal: myModal,
        category: category,
    }
})()
