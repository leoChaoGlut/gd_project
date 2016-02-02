define(["echarts"], function(echarts) {
    console.log('vm.js');

    var vm_body = avalon.define({
        $id: "vm_body",
    })


    avalon.scan();

    return {
        vm_body: vm_body
    }
})
