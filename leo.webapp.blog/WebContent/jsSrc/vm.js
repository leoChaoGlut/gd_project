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
                var articleId = articleContainer.$data.articles[index].articleId;
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
                if (this.isFolded) {
                    Dom.category.velocity({
                        right: 0
                    }, CONST.DURATION);
                } else {
                    Dom.category.velocity({
                        right: -CONST.CATEGORY_WIDTH
                    }, CONST.DURATION);
                }
                this.isFolded = !this.isFolded;
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
        },
        methods: {}
    })
    return {
        articleContainer: articleContainer,
        options: options,
        myModal: myModal,
        category: category,
    }
})()