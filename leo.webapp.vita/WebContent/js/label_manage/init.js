define(["velocity", "vm"], function(v, vm) {
    //constants 
    var TOP_HEIGHT = 40;
    var MARGIN = 15;

    //dom
    var body = $("body");
    var main = $(".main");
    var optionPanel = $(".option-panel");
    var canChoicePanel = $(".can-choice-panel");
    var haveChosenPanel = $(".have-chosen-panel");
    var submit = $(".submit");
    //function
    /**
     * [adjustSize description] 初始化部分dom的大小
     * @return {[type]} [description]
     */
    var adjustSize = function() {
        main.height(body.height() - TOP_HEIGHT - 2 * MARGIN);
        var availableWidth = main.width() - 3 * MARGIN;
        canChoicePanel.width(availableWidth * 0.5);
        // optionPanel.width(availableWidth * 0.2);
        haveChosenPanel.width(availableWidth * 0.5);

        canChoicePanel.height(main.height() - 3 * MARGIN - submit.height());
        // optionPanel.height(canChoicePanel.height());
        haveChosenPanel.height(canChoicePanel.height());

        submit.width(main.width() - 6* MARGIN);
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
