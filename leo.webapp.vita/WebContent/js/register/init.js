define(["velocity", "echarts", "vm"], function(v, echarts, vm) {
    //constants 
    var TOP_HEIGHT = 40;
    var MARGIN = 15;

    //dom
    var body = $("body");
    var main = $(".main");

    //function
    /**
     * [adjustSize description] 初始化部分dom的大小
     * @return {[type]} [description]
     */
    var adjustSize = function() {
        // main.height(body.height() - TOP_HEIGHT);

        var resultItems = $(".result-item");
        resultItems.width((body.width() - 7 * MARGIN) / 4);
        resultItems.height(resultItems.width());

    }


    $(document).ready(function() {
        //以防双击选中文字时出现的蓝色背景
        $(".main").on('selectstart', function(event) {
            return false;
        });

        adjustSize();
    });
    
    $(window).resize(function(event) {
        adjustSize();
    });

})
