define(function(init) {
    console.log('vm.js');

    //function

    //vm
    var vm_body = avalon.define({
        $id: "vm_body",
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
        curChart: 0,
        clickAChart: function() {
            vm_left_bar.curChart = $(this).attr('data-chart-index');
        },
        // hoverOnAChart: function() {
        //     console.log('hover');
        //     var dom = $(this);
        //     var classes = dom.attr('class');
        //     console.log(classes.indexOf("chosen"));
        //     if (classes.indexOf("chosen") <= -1) {
        //         dom.css('box-shadow', '0px 5px 22px #888');
        //     }
        // }
    })


    var vm_operation_panel = avalon.define({
        $id: "vm_operation_panel",
    })


    avalon.scan();

    vm_left_bar.$watch("curChart", function(newVal) {
        console.log(newVal);
    })

    return {
        vm_body: vm_body,
        vm_left_bar: vm_left_bar
    }
})
