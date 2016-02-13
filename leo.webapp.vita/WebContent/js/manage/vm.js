define(function() {
    console.log('vm.js');
    var vm_body = avalon.define({
        $id: "vm_body",

    });
    var vm_main = avalon.define({
        $id: "vm_main",
        // items: [{
        //     name: "pie",
        //     tips: "饼状能力图"
        // }, {
        //     name: "tree",
        //     tips: "树状能力图"
        // }],
        items: [],
        clickItem: function(index) {

        },
        addItem: function() {
            location.href = "build_vita.html";
        }
    })

    avalon.scan();

    return {}
})
