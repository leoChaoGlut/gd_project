define(["echarts"], function(echarts) {
    console.log('vm.js');

    //function
    var nodeDataBuilder = function(name, prof) {
        prof = prof ? prof : 50;
        return {
            name: name,
            prof: prof
        }
    }

    //vm
    var vm_body = avalon.define({
        $id: "vm_body",
    })

    var vm_left_bar = avalon.define({
        $id: "vm_left_bar",
        charts: ["pie", "tree"],
    })


    var vm_operation_panel = avalon.define({
        $id: "vm_operation_panel",
        newData: [nodeDataBuilder()],
        hasClickedASkill: false,
        showSkills: function(index) {
            var domName = "#skill" + index;
            $(domName).show(300);
        },
        hideSkills: function(index) {
            var domName = "#skill" + index;
            $(domName).hide(300);
        },
        fillSkillName: function(skillName) {
            var number = $(this).parent().attr("number");
            $("#skillName" + number).val(skillName);
        },
        addNewData: function() {
            vm_operation_panel.newData.push(nodeDataBuilder());
        },
        data: {
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
                        prof: 150,
                        parent: "前端",
                    },
                    "JQuery": {
                        name: "JQuery",
                        prof: 250,
                        parent: "前端",
                    },
                    "Avalon": {
                        name: "Avalon",
                        prof: 300,
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
                        prof: 300,
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
                        prof: 180,
                        parent: "后端",
                    },
                    "Struts2": {
                        name: "Struts2",
                        prof: 150,
                        parent: "后端",
                    },
                    "Hibernate": {
                        name: "Hibernate",
                        prof: 150,
                        parent: "后端",
                    }
                },
            },
            "SQL": {
                name: "SQL",
                prof: 300,
                parent: null,
                children: {
                    "MySQL": {
                        name: "MySQL",
                        prof: 300,
                        parent: "SQL",
                    },

                },
            },
            "NoSQL": {
                name: "NoSQL",
                prof: 300,
                parent: null,
                children: {
                    "Redis": {
                        name: "Redis",
                        prof: 200,
                        parent: "NoSQL",
                    }
                },
            },
        }
    })

    avalon.scan();

    return {
        vm_body: vm_body
    }
})
