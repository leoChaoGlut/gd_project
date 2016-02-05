define(["jquery"], function() {
    console.log('init.js');
    //constants 
    var TOP_HEIGHT = 40;
    var PADDING = 15;

    //dom
    var body = $("body");
    var main = $(".main");
    var leftBar = $(".left-bar");
    var content = $(".content");
    var chartItemContainer = $(".chart-item-container");
    var operationPanel = $(".operation-panel");
    var preview = $(".preview");
    var dataPanel = $(".data-panel");
    var ok = $(".ok");
    var addDataPanel = $(".add-data-panel");
    //var 

    //function

    /**
     * [adjustSize description] 初始化部分dom的大小
     * @return {[type]} [description]
     */
    var adjustSize = function() {
        main.height(body.height() - TOP_HEIGHT);
        var avaliableMainWidth = main.width() - PADDING * 3;
        var avaliableMainHeight = main.height() - PADDING * 2;

        leftBar.width(avaliableMainWidth / 7);
        leftBar.height(avaliableMainHeight);

        content.width(avaliableMainWidth / 7 * 6);
        content.height(avaliableMainHeight);

        chartItemContainer.height(leftBar.height() - 4 * PADDING)

        var chartItemWidth = leftBar.width() - 2 * PADDING;
        var chartItem = $(".chart-item");
        var addChartItem = $(".add-chart-item");

        chartItem.width(chartItemWidth);
        chartItem.height(chartItemWidth);

        console.log(chartItem.width() + "," + chartItem.height());


        addChartItem.width(chartItemWidth);
        addChartItem.height(chartItemWidth);

        var avaliableContentWidth = content.width() - PADDING * 3;
        var avaliableContentHeight = content.height() - 2 * PADDING;

        operationPanel.width(avaliableContentWidth * 0.7);
        operationPanel.height(avaliableContentHeight);

        preview.width(avaliableContentWidth * 0.3);
        preview.height(avaliableContentHeight);

        dataPanel.height(operationPanel.height() - 3 * PADDING);
        ok.height(2 * PADDING);

        addDataPanel.width(dataPanel.width() - 2 * PADDING);
        addDataPanel.height(dataPanel.height() - 2 * PADDING);

        var dataStyle = $(".add-data-panel").children("li");
        dataStyle.width(addDataPanel.width() - 3 * PADDING);

    }

    adjustSize();

    $(document).ready(function() {});

    $(window).resize(function(event) {
        adjustSize();
    });
})
