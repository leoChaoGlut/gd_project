define(function() {
    console.log('vm.js');

    $.get("../vita/getSkills", function(resp) {
        if (resp.status == 200) {
            console.log(resp.result);
            vm_search_panel.canChoiceSkills = resp.result;
        } else {
            alert("无技能");
        }
    })

    var vm_body = avalon.define({
        $id: "vm_body",

    });
    var vm_main = avalon.define({
        $id: "vm_main",
    })
    var vm_search_panel = avalon.define({
        $id: "vm_search_panel",
        canChoiceSkills: [],
        hasChosenItems: ['前端', '后端', 'SQL', 'NoSQL'],
        search: function() {
            var skillIds = [];
            var canChoiceSkills = vm_search_panel.canChoiceSkills;
            for (var i = 0, len = canChoiceSkills.length; i < len; i++) {
                var name = canChoiceSkills[i].name;
                if ($("#" + name)[0].checked) {
                    skillIds.push(canChoiceSkills[i].id);
                }
            }
            if (skillIds.length > 0) {
                $.ajax({
                    url: "../vita/search",
                    data: {
                        skillIds: skillIds,
                        startIndex: 0,
                        pageSize: 12
                    },
                    success: function(resp) {
                        if (resp.status == 200) {
                            vm_result_panel.results = resp.result;
                        } else {
                            alert("无数据");
                        }
                    }
                })
            } else {
                alert("请选择查询条件");
            }
        }

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
        results: []
    })

    avalon.scan();

    return {}
})
