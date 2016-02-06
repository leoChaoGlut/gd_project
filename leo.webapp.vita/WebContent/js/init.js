define(["velocity"], function() {
    console.log('init.js');

    //constants 
    var TOP_HEIGHT = 40;
    var MARGIN = 15;

    //dom
    var body = $("body");
    var main = $(".main");
    var leftBar = $(".left-bar");
    var content = $(".content");
    var chartItemContainer = $(".chart-item-container");
    var operationPanel = $(".operation-panel");
    var preview = $(".preview");
    var dataPanel = $(".data-panel");
    var addDataPanel = $(".add-data-panel");

    //var 
    var nodeCount = 1;

    //function
    var treeNodeBuilder = function(index) {
        return "<div class='node'><div class='select' data-index='" + index + "'>请选择</div><div class='option' data-index='" + index + "'><div class='switch' data-index='" + index + "'>*</div><div class='opts' data-index='" + index + "'><span class='add' data-index='" + index + "'>+</span><span class='remove' data-index='" + index + "'>-</span><span class=''>C</span></div></div></div>";

    }

    var onEvent = function(index) {

        $(".switch[data-index=" + index + "]").on('mouseover', function(event) {
            $(".opts[data-index=" + index + "]").show(300);
        });

        $(".option[data-index=" + index + "]").on('mouseleave', function(event) {
            $(".opts[data-index=" + index + "]").hide(300);
        });

        $(".add[data-index=" + index + "]").on('click', function(event) {
            $(this).parent().parent().parent().append(treeNodeBuilder(nodeCount, false));
            onEvent(nodeCount);
            nodeCount++;
        });
        $(".remove[data-index=" + index + "]").on('click', function(event) {
            $(this).parent().parent().parent().remove();
        });
    }



    /**
     * [adjustSize description] 初始化部分dom的大小
     * @return {[type]} [description]
     */
    var adjustSize = function() {
        main.height(body.height() - TOP_HEIGHT);
        var avaliableMainWidth = main.width() - MARGIN * 3;
        var avaliableMainHeight = main.height() - MARGIN * 2;

        leftBar.width(avaliableMainWidth / 7);
        leftBar.height(avaliableMainHeight);

        content.width(avaliableMainWidth / 7 * 6);
        content.height(avaliableMainHeight);

        chartItemContainer.height(leftBar.height() - 4 * MARGIN)

        var chartItemWidth = leftBar.width() - 2 * MARGIN;
        var chartItem = $(".chart-item");
        var addChartItem = $(".add-chart-item");

        chartItem.width(chartItemWidth);
        chartItem.height(chartItemWidth);

        addChartItem.width(chartItemWidth);
        addChartItem.height(chartItemWidth);

        var avaliableContentWidth = content.width() - MARGIN * 3;
        var avaliableContentHeight = content.height() - 2 * MARGIN;

        operationPanel.width(avaliableContentWidth * 0.7);
        operationPanel.height(avaliableContentHeight);

        preview.width(avaliableContentWidth * 0.3);
        preview.height(avaliableContentHeight);

        dataPanel.height(operationPanel.height() - 3 * MARGIN);

        addDataPanel.width(dataPanel.width());
        addDataPanel.height(dataPanel.height());

        var dataStyle = $(".add-data-panel").children("li");
        dataStyle.width(addDataPanel.width() - 3 * MARGIN);

    }

    $(".data-panel").append($("#pieTemplate"));

    adjustSize();

    $(document).ready(function() {
        onEvent(0);

        $('.addRoot').on('click', function(event) {
            $(".tree").append(treeNodeBuilder(nodeCount, true));
            onEvent(nodeCount);
            nodeCount++;
        });
    });

    $(window).resize(function(event) {
        adjustSize();
    });

    return {
        adjustSize: adjustSize
    }
})
