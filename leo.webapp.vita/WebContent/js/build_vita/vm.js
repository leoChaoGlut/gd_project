define(function() {
    console.log('vm.js');

    //function

    //vm
    var vm_body = avalon.define({
        $id: "vm_body",
        curChart: "饼图",
    })
    var vm_left_bar = avalon.define({
        $id: "vm_left_bar",
        charts: [{
            name: "pie",
            tips: "饼图"
        }, {
            name: "tree",
            tips: "树形图"
        }],
        clickAChart: function() {
            vm_body.curChart = $(this).attr('title');
            var dom = $(this);
            dom.css('box-shadow', '0px 4px 10px #888');
            setTimeout(function() {
                dom.css('box-shadow', '0px 5px 22px #888');
            }, 200);
        },
    })


    var vm_operation_panel = avalon.define({
        $id: "vm_operation_panel",
        previews: ["pie", "tree"],
        previewRendered: function() {
            window.echart = echarts.init(document.getElementById("pie-chart"));
        }
    })




    avalon.scan();

    vm_body.$watch("curChart", function(newVal) {
        switch (newVal) {
            case "饼图":
                $("#tree-chart").velocity("fadeOut", {
                    duration: 100,
                    complete: function() {
                        $("#pie-chart-container").velocity("fadeIn", {
                            duration: 100,

                        })
                    }
                })
                break;
            case "树形图":
                $("#pie-chart-container").velocity("fadeOut", {
                    duration: 100,
                    complete: function() {
                        $("#tree-chart").velocity("fadeIn", {
                            duration: 100
                        })
                    }
                })
                break;
            default:
                break;
        }
    })

    return {
        vm_body: vm_body,
        vm_left_bar: vm_left_bar
    }
})
