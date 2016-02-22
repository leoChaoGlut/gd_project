var Builder = (function() {

    var pie = (function() {
        var clickRecord = [];

        function comparator(a, b) {
            return a.value - b.value;
        }

        function optionBuilder(data) {
            var baseOption = CONST.baseOption.series[0];
            if (baseOption.data) {
                baseOption.data.length = 0;
            }
            baseOption.data = data;
        }

        function dataBuilder(data) {
            var newData = [];
            for (var key in data) {
                newData.push({
                    name: key,
                    value: data[key].prof
                })
            }
            return newData;
        }

        function getSubData(data, enterName, isBack) {
            var subData = Util.clone(data);
            //处理旧的点击记录
            for (var i = 0, len = clickRecord.length; i < len; i++) {
                subData = subData[clickRecord[i]].children;
            }
            if (isBack) {
                return subData;
            } else {
                //处理新的一次点击
                subData = subData[enterName];
                if (subData) {
                    return subData.children;
                } else {
                    return {};
                }
            }
        }


        function build(pieDom, rawData) {
            var newData = dataBuilder(rawData).sort(comparator);

            optionBuilder(newData);

            pieDom.setOption(CONST.baseOption);

            $(pieDom).css("background-color", "#0277bd");
        }

        function addClickListener(pieDom) {
            pieDom.on('click', function(data) {
                var subData = getSubData(CONST.skill, data.name, false);

                console.log(clickRecord);

                if (Util.lengthOf(subData) > 0) {
                    clickRecord.push(data.name);
                    build(pieDom, subData);
                }

                if (clickRecord.length > 0) {
                    $(".back").show(CONST.duration);
                }
            });
            $(".back").on('click', function(event) {
                event.preventDefault();

                clickRecord.pop();

                var subData = getSubData(CONST.skill, "", true);

                if (Util.lengthOf(subData) > 0) {
                    build(pieDom, subData);
                }
                if (clickRecord.length <= 0) {
                    $(".back").hide(CONST.duration);
                }
            });
        }

        function init(pieDom, rawData) {
            build(pieDom, rawData);

            addClickListener(pieDom);
        }

        return {
            init: init,
        }
    })();

    var tree = (function() {

        var nodeCount;

        function nodeBuilder(name, prof) {
            return '<li class="tree_node">' +
                '<div class="data_area" title="折叠/展开">' +
                '<span class="skill_name">' + name + '</span>' +
                '<span>-</span>' +
                '<span class="skill_prof">' + prof + '%</span>' +
                '<span class="divide"></span>' +
                '<span class="expand" data-click-count=0 data-index="' + (nodeCount++) + '">-</span>' +
                '</div>' +
                '<ul class="children">' +
                '</ul>';
        }

        function showTree(dom) {
            dom.css('margin-top', (-1 * dom.height()) + 'px');

            dom.show();

            setTimeout(function() {
                dom.animate({
                        "margin-top": "0"
                    },
                    1500,
                    'easeOutBounce');
            }, 800);
        }

        function addClickEvent(expand) {
            expand.on('click', function(event) {
                event.preventDefault();
                var children = $(this).parent().children('.children');
                if (children.children().length > 0) {
                    children.slideToggle(300, function() {
                        var expandDom = $(this).prev().children('.expand');
                        var clickCount = Number(expandDom.attr('data-click-count')) + 1;
                        expandDom.attr('data-click-count', clickCount);
                        children.prev().children('.expand').text(clickCount % 2 == 0 ? "-" : "+");
                    });
                }
            });
        }

        function dfs(parent, mapData) {
            var mapLength = Util.lengthOf(mapData);
            if (mapLength != 0) {
                for (var key in mapData) {
                    var val = mapData[key];
                    var childNode = $(nodeBuilder(val.name, val.prof));
                    var expand = childNode.children('.data_area').children('.expand');

                    addClickEvent(childNode.children('.data_area'));

                    dfs(childNode.children('.children'), val.children);
                    parent.append(childNode);
                }
            }
        }

        function build(container, mapData) {
            nodeCount = 0;

            container.css('overflow', 'auto');

            container.append('<ul class="children"></ul>');

            var newContainer = container.children('.children');

            newContainer.hide();

            dfs(newContainer, mapData);

            showTree(newContainer);

            //以防双击选中文字时出现的蓝色背景
            container.on('selectstart', function(event) {
                return false;
            });
        }

        return {
            build: build,
        }
    })()


    return {
        pie: pie,
        tree: tree,
    }
})()
