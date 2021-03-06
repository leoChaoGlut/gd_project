define(["velocity", "echarts", "vm"], function(v, echarts, vm) {
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
    var backDom = $("#back");
    //var   
    var nodeCount = 1;
    var echart;
    var treeData = {};
    //存储点击饼状图的次序,如:先点击前端,后点击HTML5,则存储的是["前端","HTML5"];
    var pathQueue = [];
    var curTreeData = {};
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
            min: 1,
            max: 100,
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

    var comparator = function(a, b) {
        return a.value - b.value;
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
                var hasEmptyData = treeNodeDataBuilder(el, data.children[skillName]);
                if (hasEmptyData) {
                    return true;
                }
            } else {
                Materialize.toast("存在空数据~3", 2500, 'rounded');
                return true;
            }
        }
        return false;
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

    var buildPieChart = function(data) {
        echart.showLoading();

        var newData = dataBuilder(data).sort(comparator);

        var option = optionBuilder(newData);

        echart.setOption(baseOption);

        echart.hideLoading();
    };

    var buildTreeChart = function(tree) {
        tree.css('margin', 0);
        tree.removeAttr('id');
        tree.children('.cur-chart').remove();
        tree.children('.addRoot').remove();
        tree.find('ul').remove();
        tree.find('.option').children('*:not(.switch)').remove();
        var allChildren = tree.find('*');
        for (var i = 0, len = allChildren.length; i < len; i++) {
            $(allChildren[i]).removeAttr('data-index');
        }
        $("#tree-chart").children('*').remove();
        tree.hide();
        $("#tree-chart").append(tree);
        tree.show(300);
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
            var dom = $(this).children('ul');
            if (dom.css("display") == "none") {
                dom.slideDown(200, function() {
                    $("#skillName" + index).focus();
                });
            }
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


    var objLenCounter = function(obj) {
        var count = 0;
        for (var key in obj) {
            count++;
        }
        return count;
    }
    $(document).ready(function() {
        //以防双击选中文字时出现的蓝色背景
        $(".tree").on('selectstart', function(event) {
            return false;
        });

        onEvent(0);

        $('.addRoot').on('click', function(event) {
            var rootNode = $(treeNodeBuilder(nodeCount, true));
            $("#tree-container").append(rootNode);
            rootNode.hide();
            rootNode.slideDown(200);
            onEvent(nodeCount);
            nodeCount++;
        });

        echart = echarts.init(document.getElementById("pie-chart"));

        adjustSize();

        $("#create").on('click', function(event) {
            var rootNodes = $("#tree-container").children(".node");
            var len = rootNodes.length;
            if (len > 0) {
                treeData = {};
                for (var i = 0; i < len; i++) {
                    var el = $(rootNodes[i]);
                    var select = el.children(".select");
                    var skillName = select.children("span#skillName").text().trim();
                    var prof = select.children("span#prof").text().trim();

                    if (skillName != "" && skillName.indexOf("技能名") < 0 && prof != "" && prof.indexOf("熟练度") < 0) {
                        treeData[skillName] = nodeDataBuilder(skillName, prof);
                        var hasEmptyData = treeNodeDataBuilder(el, treeData[skillName]);
                        if (hasEmptyData) {
                            return;
                        }
                    } else {
                        Materialize.toast("存在空数据~2", 2500, 'rounded');
                        return;
                    }
                }
                console.log(JSON.stringify(treeData));

                var userInfo = $.parseJSON(localStorage.userInfo);

                var typeId = 0;

                switch (vm.vm_body.curChart) {
                    case "饼图":
                        typeId = 2;
                        break;
                    case "树形图":
                        typeId = 1;
                        break;
                    default:
                        break;
                }
                
                $.post('../chart/create', {
                	userId: userInfo.id,
                    json: JSON.stringify(treeData),
                    typeId: typeId,
                }, function(resp) {
                    if (resp.status == 200) {
                        location.href = "vita_manage.html";
                    } else {
                        alert("创建失败");
                    }
                });
            } else {
                Materialize.toast("无数据~", 2500, 'rounded');
            }
        });


        $("#show-preview").on('click', function(event) {
            var rootNodes = $("#tree-container").children(".node");
            var len = rootNodes.length;
            if (len > 0) {
                echart.clear();
                pathQueue = [];
                treeData = {};
                for (var i = 0; i < len; i++) {
                    var el = $(rootNodes[i]);
                    var select = el.children(".select");
                    var skillName = select.children("span#skillName").text().trim();
                    var prof = select.children("span#prof").text().trim();

                    if (skillName != "" && skillName.indexOf("技能名") < 0 && prof != "" && prof.indexOf("熟练度") < 0) {
                        treeData[skillName] = nodeDataBuilder(skillName, prof);
                        var hasEmptyData = treeNodeDataBuilder(el, treeData[skillName]);
                        if (hasEmptyData) {
                            return;
                        }
                    } else {
                        Materialize.toast("存在空数据~1", 2500, 'rounded');
                        return;
                    }
                }
                console.log(JSON.stringify(treeData));
                curTreeData = treeData;
                switch (vm.vm_body.curChart) {
                    case "饼图":
                        buildPieChart(treeData);
                        break;
                    case "树形图":
                        // var tree = $($(".add-data-panel")[0].innerHTML);
                        // buildTreeChart(tree);
                        var containerDom = $("#tree-chart");
                        containerDom.children().remove();
                        treeChartBuilder(containerDom,treeData);
                        break;
                    default:
                        break;
                }
            } else {
                Materialize.toast("无数据~", 2500, 'rounded');
            }
        });

        echart.on('click', function(dom) {
            var subData = curTreeData[dom.name].children;
            if (objLenCounter(subData) > 0) {
                pathQueue.push(dom.name);
                curTreeData = subData;
                buildPieChart(subData);
                backDom.velocity({
                    "opacity": 1
                }, 100);
            } else {
                Materialize.toast("该技能下无子数据~", 2500, 'rounded');
            }
        });
    });

    backDom.click(function(event) {
        if (pathQueue.length == 1) {
            buildPieChart(treeData);
            curTreeData = treeData;
            backDom.velocity({
                "opacity": 0
            }, 100);
        } else {
            var data = treeData;
            for (var i = 0, len = pathQueue.length - 1; i < len; i++) {
                data = data[pathQueue[i]].children;
            }
            curTreeData = data;
            buildPieChart(data);
        };
        pathQueue.pop();
    });

    $(window).resize(function(event) {
        adjustSize();
    });
    
    //unfinished
    (function() {
        var searchStr = location.search;
        if (searchStr) {
            var indexOfEqual = searchStr.lastIndexOf("=");
            var chartID = searchStr.substr(indexOfEqual + 1);
            $.get("../chart/get/" + chartID, function(resp) {
                
            })
        }
    })();

    return {
        adjustSize: adjustSize
    }
})
