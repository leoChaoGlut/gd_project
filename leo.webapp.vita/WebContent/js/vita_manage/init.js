define(["velocity", "vm"], function(v, vm) {
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
        main.height(body.height() - TOP_HEIGHT);
        var ul = main.children('ul');
        var lis = ul.children('li');
        lis.width((body.width() - 4 * MARGIN) / 3);
        // lis.height(lis.width());
        lis.height(ul.height() - 2 * MARGIN);
        // lis.css('margin-top', (ul.height() - lis.height()) / 2);
        ul.width(lis.length * lis.width() + ((lis.length + 1) * MARGIN));
        // ul.height(lis.height());
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
