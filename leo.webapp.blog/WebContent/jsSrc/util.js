var Util = (function() {

    function error() {
        var doReload = confirm("获取文章详情出错,点击'确定'按钮重新加载页面~");
        if (doReload) {
            location.reload();
        }
    }

    function getArticles() {
        Vm.articleContainer.$data.isLoading = true;
        $.ajax({
            url: 'article/list/' + Vm.articleContainer.$data.startIndex * 10 + '/' + CONST.PAGE_SIZE,
            complete: function(resp) {
                if (resp.status == CONST.OK) {
                    var respText = JSON.parse(resp.responseText);
                    if (respText.status == CONST.OK) {
                        var res = respText.result;
                        var len = res.length;
                        if (len < CONST.PAGE_SIZE) {
                            Vm.articleContainer.$data.noMoreData = true;
                        }
                        for (var i = 0; i < len; i++) {
                            Vm.articleContainer.$data.articles.push(res[i]);
                        }
                        Vm.articleContainer.$data.startIndex++;
                    } else {
                        error();
                    }
                } else {
                    error();
                }
                Vm.articleContainer.$data.isLoading = false;
            }
        });
    }

    function getContent(articleId) {
        Vm.myModal.$data.isLoading = true;
        $.ajax({
            url: 'article/' + articleId,
            complete: function(resp) {
                if (resp.status == CONST.OK) {
                    var respText = JSON.parse(resp.responseText);
                    if (respText.status == CONST.OK) {
                        var res = respText.result;
                        Dom.modalContent.append(res);
                    } else {
                        error();
                    }
                } else {
                    error();
                }
                Vm.myModal.$data.isLoading = false;
            }
        });
    }

    function getCategories() {
        $.ajax({
            url: 'category/all',
            complete: function(resp) {
                if (resp.status == CONST.OK) {
                    var respText = JSON.parse(resp.responseText);
                    if (respText.status == CONST.OK) {
                        var res = respText.result;
                        Vm.category.$data.categories = res;
                    } else {
                        error();
                    }
                } else {
                    error();
                }
                Vm.myModal.$data.isLoading = false;
            }
        });
    }
    return {
        getArticles: getArticles,
        getContent: getContent,
        getCategories: getCategories,
    }
})()
