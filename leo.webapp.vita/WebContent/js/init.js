define(["velocity", "echarts"], function(v, echarts) {
    console.log('init.js');

    //constants 
    var TOP_HEIGHT = 40;
    var MARGIN = 15;
    var DATA = {
        "前端": {
            name: "前端",
            prof: 200,
            parent: null,
            children: {
                "HTML5": {
                    name: "HTML5",
                    prof: 200,
                    parent: "前端",
                },
                "CSS3": {
                    name: "CSS3",
                    prof: 150,
                    parent: "前端",
                },
                "JQuery": {
                    name: "JQuery",
                    prof: 250,
                    parent: "前端",
                },
                "Avalon": {
                    name: "Avalon",
                    prof: 300,
                    parent: "前端",
                },
            },
        },
        "后端": {
            name: "后端",
            prof: 400,
            parent: null,
            children: {
                "JAVA基础": {
                    name: "JAVA基础",
                    prof: 300,
                    parent: "后端",
                },
                "Spring": {
                    name: "Spring",
                    prof: 200,
                    parent: "后端",
                },
                "Spring MVC": {
                    name: "Spring MVC",
                    prof: 200,
                    parent: "后端",
                },
                "Mybatis": {
                    name: "Mybatis",
                    prof: 180,
                    parent: "后端",
                },
                "Struts2": {
                    name: "Struts2",
                    prof: 150,
                    parent: "后端",
                },
                "Hibernate": {
                    name: "Hibernate",
                    prof: 150,
                    parent: "后端",
                }
            },
        },
        "数据库": {
            name: "数据库",
            prof: 300,
            parent: null,
            children: {
                "MySQL": {
                    name: "MySQL",
                    prof: 300,
                    parent: "数据库",
                },
                "Redis": {
                    name: "Redis",
                    prof: 200,
                    parent: "数据库",
                }
            },
        },
    };
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

    var baseOption = {
        // backgroundColor: '#2c343c',
        title: {
            text: '能力图',
            left: 'center',
            top: 20,
            textStyle: {
                color: '#0091ea'
            }
        },

        visualMap: {
            show: false,
            min: 80,
            max: 600,
            inRange: {
                colorLightness: [0, 1]
            }
        },
        series: [{
            type: 'pie',
            radius: '55%',
            center: ['50%', '50%'],
            roseType: 'angle',
            label: {
                normal: {
                    textStyle: {
                        color: '#0091ea'
                    }
                }
            },
            labelLine: {
                normal: {
                    lineStyle: {
                        color: '#0091ea'
                    },
                    smooth: 0.2,
                    length: 10,
                    length2: 20
                }
            },
            itemStyle: {
                normal: {
                    color: '#0277bd',
                    shadowBlur: 50,
                    shadowColor: '#555'
                }
            }
        }]
    };
    //function
    var nodeDataBuilder = function(name, prof, parent) {
        name = name ? name : "";
        prof = prof ? prof : 50;
        parent = parent ? parent : "";
        return {
            name: name,
            prof: prof,
            parent: parent,
            children: {}
        }
    }

    var treeNodeDataBuilder = function(dom, data) {
        var nodes = dom.children(".node");
        for (var i = 0, len = nodes.length; i < len; i++) {
            var el = $(nodes[i]);
            var select = el.children(".select");
            var skillName = select.children("span#skillName").text().trim();
            var prof = select.children("span#prof").text().trim();
            if (skillName != "" && skillName.indexOf("技能名") < 0 && prof != "" && prof.indexOf("熟练度") < 0) {
                data.children[skillName] = nodeDataBuilder(skillName, prof, data.name);
                treeNodeDataBuilder(el, data.children[skillName]);
            } else {
                Materialize.toast("存在空数据~", 2500, 'rounded');
                return;
            }
        }
    }
    var dataBuilder = function(data) {
        var newData = [];
        for (var key in data) {
            newData.push({
                name: key,
                value: data[key].prof
            })
        }
        return newData;
    };
    var optionBuilder = function(data) {
        baseOption.series[0].data = null;
        baseOption.series[0].data = data;
        return baseOption;
    };
    var buildChart = function(data) {
        var newData = dataBuilder(data);

        var option = optionBuilder(newData);

        echart.setOption(baseOption);
    };
    /**
     * [treeNodeBuilder description] 多叉数添加分支时,返回对应的dom
     * @param  {[type]}  index  [description]
     * @param  {Boolean} isRoot [description]
     * @return {[type]}         [description]
     */
    var treeNodeBuilder = function(index, isRoot) {
        if (isRoot) {
            return "<div class='node' style='margin:0;'><div class='select' data-index='" + index + "'><span id='skillName'>技能名</span><span> - </span><span id='prof'>熟练度</span><ul><li><div class='input-field'><input id='skillName" + index + "' type='text' class='validate' data-index='" + index + "'><label for='skillName" + index + "' data-index='" + index + "'>技能名</label></div></li><li class='range-field'><label for='rang" + index + "' data-index='" + index + "'>熟练度:</label><input type='range' id='rang" + index + "' min='1' max='100' data-index='" + index + "' /></li></ul></div><div class='option' data-index='" + index + "'><div class='switch' data-index='" + index + "'>*</div><div class='opts' data-index='" + index + "'><span class='add' data-index='" + index + "' title='添加子数据'>+</span><span class='remove' data-index='" + index + "' title='删除该数据'>-</span><span class='fold' data-index='" + index + "' title='隐藏子数据'>...</span></div></div></div>";
        } else {
            return "<div class='node'><div class='select' data-index='" + index + "'><span id='skillName'>技能名</span><span> - </span><span id='prof'>熟练度</span><ul><li><div class='input-field'><input id='skillName" + index + "' type='text' class='validate' data-index='" + index + "'><label for='skillName" + index + "' data-index='" + index + "'>技能名</label></div></li><li class='range-field'><label for='rang" + index + "' data-index='" + index + "'>熟练度:</label><input type='range' id='rang" + index + "' min='1' max='100' data-index='" + index + "' /></li></ul></div><div class='option' data-index='" + index + "'><div class='switch' data-index='" + index + "'>*</div><div class='opts' data-index='" + index + "'><span class='add' data-index='" + index + "' title='添加子数据'>+</span><span class='remove' data-index='" + index + "' title='删除该数据'>-</span><span class='fold' data-index='" + index + "' title='隐藏子数据'>...</span></div></div></div>";
        }
    };
    /**
     * [onEvent description]为多叉数的分支添加监听
     * @param  {[type]} index [description]
     * @return {[type]}       [description]
     */
    var onEvent = function(index) {
        $(".switch[data-index=" + index + "]").on('mouseover', function(event) {
            var dom = $(".opts[data-index=" + index + "]");
            dom.stop(true);
            dom.show(150);
        });

        $(".option[data-index=" + index + "]").on('mouseleave', function(event) {
            var dom = $(".opts[data-index=" + index + "]");
            dom.stop(true);
            dom.hide(150);
        });

        $(".select[data-index=" + index + "]").on('click', function(event) {
            $(this).children('ul').slideDown(200);
        });

        $(".select[data-index=" + index + "]").on('mouseleave', function(event) {
            $(this).children('ul').slideUp(200);
        });

        $(".fold[data-index=" + index + "]").on('click', function(event) {
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

        chartItem.width(chartItemWidth);
        chartItem.height(chartItemWidth);

        var avaliableContentWidth = content.width() - MARGIN * 3;
        var avaliableContentHeight = content.height() - 2 * MARGIN;

        operationPanel.width(avaliableContentWidth * 0.5);
        operationPanel.height(avaliableContentHeight);

        preview.width(avaliableContentWidth * 0.5);
        preview.height(avaliableContentHeight);

        dataPanel.height(operationPanel.height() - 3 * MARGIN);

        addDataPanel.width(dataPanel.width());
        addDataPanel.height(dataPanel.height());

        var dataStyle = $(".add-data-panel").children("li");
        dataStyle.width(addDataPanel.width() - 3 * MARGIN);

        echart.resize();
    }

    $(".data-panel").append($("#pieTemplate"));


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

        window.echart = echarts.init(document.getElementById("preview-chart"));

        echart.showLoading();

        buildChart(DATA);

        echart.hideLoading();

        adjustSize();

        $("#create").on('click', function(event) {
            var rootNodes = $(".tree").children(".node");
            var len = rootNodes.length;
            if (len > 0) {
                var data = {};
                for (var i = 0; i < len; i++) {
                    var el = $(rootNodes[i]);
                    var select = el.children(".select");
                    var skillName = select.children("span#skillName").text().trim();
                    var prof = select.children("span#prof").text().trim();

                    if (skillName != "" && skillName.indexOf("技能名") < 0 && prof != "" && prof.indexOf("熟练度") < 0) {
                        data[skillName] = nodeDataBuilder(skillName, prof);
                        treeNodeDataBuilder(el, data[skillName]);
                    } else {
                        Materialize.toast("存在空数据~", 2500, 'rounded');
                        return;
                    }
                }
                buildChart(data);
            } else {
                Materialize.toast("无数据~", 2500, 'rounded');
            }
        });


        $("#show-preview").on('click', function(event) {
            buildChart(DATA);
        });
    });

    $(window).resize(function(event) {
        adjustSize();
    });

    return {
        adjustSize: adjustSize
    }
})
