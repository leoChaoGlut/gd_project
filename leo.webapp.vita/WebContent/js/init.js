define(["echarts", "vm"], function(echarts, vm) {
    console.log('init.js');
    //constant begin

    //prof:proficiency
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
                    prof: 200,
                    parent: "前端",
                },
                "JQuery": {
                    name: "JQuery",
                    prof: 200,
                    parent: "前端",
                },
                "Avalon": {
                    name: "Avalon",
                    prof: 200,
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
                    prof: 200,
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
                    prof: 200,
                    parent: "后端",
                },
                "Struts2": {
                    name: "Struts2",
                    prof: 200,
                    parent: "后端",
                },
                "Hibernate": {
                    name: "Hibernate",
                    prof: 200,
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
                    prof: 200,
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
    //constant end

    // var begin

    var baseOption = {
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
                    shadowBlur: 100,
                    shadowColor: '#888'
                }
            }
        }]
    };
    // var end

    // function begin
    // 
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
    // function end
    $(document).ready(function() {

        window.echart = echarts.init(document.getElementById("echart"));

        echart.showLoading();

        var newData = dataBuilder(DATA);

        var option = optionBuilder(newData);

        echart.setOption(baseOption);

        echart.hideLoading();


        echart.on('click', function(dom) {
            if (dom.name == "后端") {
                echart.clear();
                echart.setOption(option);
            };
        });

        $(window).resize(function(event) {
            echart.resize();
        });

        $("body").bind('mousewheel', function(event) {
            var dir = event.originalEvent.wheelDelta;
            if (dir > 0) {
                if (vm.vm_body.curView > 0) {
                    vm.vm_body.curView--;
                }
            } else {
                if (vm.vm_body.curView < vm.vm_body.viewIds.length - 1) {
                    vm.vm_body.curView++;
                };
            };
        });
    });

})
