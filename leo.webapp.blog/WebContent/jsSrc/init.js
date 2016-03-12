var Init = (function() {

    Util.getArticles();

    Util.getCategories();

    function resize() {}

    $(window).scroll(function() {
        var scrollTop = $(window).scrollTop();

        var bodyHeight = $("body").height();

        var windowHeight = $(window).height();

        if (Math.abs(bodyHeight - scrollTop - windowHeight) < CONST.LOAD_MORE_RANGE) {
            if (!Vm.articleContainer.$data.isLoading && !Vm.articleContainer.$data.noMoreData) {
                Util.getArticles();
            }
        }
    })

    resize();

    $(window).resize(function(event) {
        resize();
    });

    $("#container").on('click', function(event) {
        event.preventDefault();
        Dom.category.velocity({
            right: -CONST.CATEGORY_WIDTH
        }, CONST.DURATION);
        Vm.options.$data.isFolded = true;
    });

    return {
        resize: resize,
    }
})()
