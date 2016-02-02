define(["echarts"], function(echarts) {
    console.log('vm.js');

    var vm_body = avalon.define({
        $id: "vm_body",
        isFirstView: false,
        isLastView: true,
        curView: 0,
        viewIds: ["echart", "vita"],
        upward: function() {
            vm_body.curView--;
        },
        downward: function() {
            vm_body.curView++;
        }
    })

    vm_body.$watch("curView", function(val) {
        if (val == 0) {
            vm_body.isFirstView = false;
            vm_body.isLastView = true;
        } else if (val == vm_body.viewIds.length - 1) {
            vm_body.isFirstView = true;
            vm_body.isLastView = false;
        }
        $("#fullpage").velocity("stop").velocity({
            "margin-top": (val * -100) + "vh",
        }, 300);
    })

    avalon.scan();

    return {
        vm_body: vm_body
    }
})
