var Util=function(){function a(){var a=confirm("获取文章详情出错,点击'确定'按钮重新加载页面~");a&&location.reload()}function t(){Vm.articleContainer.$data.isLoading=!0,$.ajax({url:"article/list/"+Vm.articleContainer.$data.startIndex*CONST.PAGE_SIZE+"/"+CONST.PAGE_SIZE,complete:function(t){if(t.status==CONST.OK){var e=JSON.parse(t.responseText);if(e.status==CONST.OK){var r=e.result,n=r.length;n<CONST.PAGE_SIZE&&(Vm.articleContainer.$data.noMoreData=!0);for(var i=0;n>i;i++)Vm.articleContainer.$data.articles.push(r[i]);Vm.articleContainer.$data.startIndex++}else a()}else a();Vm.articleContainer.$data.isLoading=!1}})}function e(t){Vm.myModal.$data.isLoading=!0,$.ajax({url:"article/"+t,complete:function(t){if(t.status==CONST.OK){var e=JSON.parse(t.responseText);if(e.status==CONST.OK){var r=e.result;Dom.modalContent.append(r)}else a()}else a();Vm.myModal.$data.isLoading=!1}})}function r(){$.ajax({url:"category/all",complete:function(t){if(t.status==CONST.OK){var e=JSON.parse(t.responseText);if(e.status==CONST.OK){var r=e.result;Vm.category.$data.categories=r}else a()}else a();Vm.myModal.$data.isLoading=!1}})}function n(t){Vm.articleContainer.$data.isLoading=!0,$.ajax({url:"category/"+t+"/articles",complete:function(t){if(t.status==CONST.OK){var e=JSON.parse(t.responseText);if(e.status==CONST.OK){var r=e.result,n=r.length;Vm.articleContainer.$data.noMoreData=!0;for(var i=0;n>i;i++)Vm.articleContainer.$data.articles.push(r[i]);Vm.articleContainer.$data.startIndex++}else a()}else a();Vm.articleContainer.$data.isLoading=!1}})}return{getArticles:t,getContent:e,getCategories:r,getArticlesByCategory:n}}();