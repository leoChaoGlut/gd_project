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
        canChoiceItems: ['前端', '后端', 'SQL', 'NoSQL'],
        hasChosenItems: ['前端', '后端', 'SQL', 'NoSQL'],

    })
    
    avalon.scan();

    return {}
})
