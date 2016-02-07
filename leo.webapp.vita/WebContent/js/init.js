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
    /**
     * [treeNodeBuilder description] 多叉数添加分支时,返回对应的dom
     * @param  {[type]}  index  [description]
     * @param  {Boolean} isRoot [description]
     * @return {[type]}         [description]
     */
    var treeNodeBuilder = function(index, isRoot) {
        if (isRoot) {
            return "<div class='node' style='margin:0;'><div class='select' data-index='" + index + "'><span id='skillName'>技能名</span><span> - </span><span id='prof'>熟练度</span><ul><li><div class='input-field'><input id='skillName" + index + "' type='text' class='validate' data-index='" + index + "'><label for='skillName" + index + "' data-index='" + index + "'>技能名</label></div></li><li class='range-field'><label for='rang" + index + "' data-index='" + index + "'>熟练度:</label><input type='range' id='rang" + index + "' min='1' max='100' data-index='" + index + "' /></li></ul></div><div class='option' data-index='" + index + "'><div class='switch' data-index='" + index + "'>*</div><div class='opts' data-index='" + index + "'><span class='add' data-index='" + index + "' title='添加子数据'>+</span><span class='remove' data-index='" + index + "' title='删除该数据'>-</span><span class='fold' data-index='" + index + "' title='隐藏子数据'>C</span></div></div></div>";
        } else {
            return "<div class='node'><div class='select' data-index='" + index + "'><span id='skillName'>技能名</span><span> - </span><span id='prof'>熟练度</span><ul><li><div class='input-field'><input id='skillName" + index + "' type='text' class='validate' data-index='" + index + "'><label for='skillName" + index + "' data-index='" + index + "'>技能名</label></div></li><li class='range-field'><label for='rang" + index + "' data-index='" + index + "'>熟练度:</label><input type='range' id='rang" + index + "' min='1' max='100' data-index='" + index + "' /></li></ul></div><div class='option' data-index='" + index + "'><div class='switch' data-index='" + index + "'>*</div><div class='opts' data-index='" + index + "'><span class='add' data-index='" + index + "' title='添加子数据'>+</span><span class='remove' data-index='" + index + "' title='删除该数据'>-</span><span class='fold' data-index='" + index + "' title='隐藏子数据'>C</span></div></div></div>";
        }
    };
    /**
     * [onEvent description]为多叉数的分支添加监听
     * @param  {[type]} index [description]
     * @return {[type]}       [description]
     */
    var onEvent = function(index) {
        $(".switch[data-index=" + index + "]").on('mouseover', function(event) {
            $(".opts[data-index=" + index + "]").show(150);
        });

        $(".option[data-index=" + index + "]").on('mouseleave', function(event) {
            $(".opts[data-index=" + index + "]").hide(150);
        });

        $(".select[data-index=" + index + "]").on('click', function(event) {
            $(this).children('ul').slideDown(200);
        });

        $(".select[data-index=" + index + "]").on('mouseleave', function(event) {
            $(this).children('ul').slideUp(200);
        });

        $(".fold[data-index=" + index + "]").on('click', function(event) {
            // $(this).parent().parent().siblings('.node').toggle(100);
            $(this).parent().parent().siblings('.node').slideToggle(200);
        });

        $("#skillName" + index).change(function(event) {
            var span = $(this).parent().parent().parent().prev().prev().prev();
            span.text($(this).val());
        });

        $("#rang" + index).change(function(event) {
            var span = $(this).parent().parent().prev();
            span.text($(this).val());
        });

        $(".add[data-index=" + index + "]").on('click', function(event) {
            var node = $(this).parent().parent().parent();
            var childNode = node.children('.node');
            if (childNode.length > 0) {
                childNode.slideDown(200);
            }
            var newNode = $(treeNodeBuilder(nodeCount, false));

            node.append(newNode);

            newNode.hide();
            newNode.slideDown(200);

            onEvent(nodeCount);
            nodeCount++;
        });
        $(".remove[data-index=" + index + "]").on('click', function(event) {
            $(this).parent().parent().parent().slideUp(200, function() {
                $(this).remove();
            });
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
        //以防双击选中文字时出现的蓝色背景
        $(".tree").on('selectstart', function(event) {
            return false;
        });

        onEvent(0);

        $('.addRoot').on('click', function(event) {
            var rootNode = $(treeNodeBuilder(nodeCount, true));
            $(".tree").append(rootNode);
            rootNode.hide();
            rootNode.slideDown(200);
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
