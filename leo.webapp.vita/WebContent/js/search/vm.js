define(function() {
    console.log('vm.js');
    var vm_body = avalon.define({
        $id: "vm_body",

    });
    var vm_main = avalon.define({
        $id: "vm_main",
    })
    var vm_search_panel = avalon.define({
        $id: "vm_search_panel",
        canChoiceItems: ["前端", "后端", "运维",],
        hasChosenItems: ['前端', '后端', 'SQL', 'NoSQL'],

    })
    var vm_result_panel = avalon.define({
        $id: "vm_result_panel",
        sortRules: [{
            name: "时间",
            isAsc: true
        }, {
            name: "浏览次数",
            isAsc: true
        }],
        results: [1, 2, 3, 4, 5, 6, 7, 8,9,0]
    })
    avalon.scan();

    return {}
})
