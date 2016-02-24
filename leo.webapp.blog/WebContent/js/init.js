var Init = (function() {
    (function init() {
        $.get('article/list/0/10', function(resp) {
            Vm.article.articles = resp.result;
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
            Dom.articles.width(avalWidth * 0.85 - 1);
        }
    }

    resize();


    $(window).resize(function(event) {
        resize();
    });

    return {

    }
})()
