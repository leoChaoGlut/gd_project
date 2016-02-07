define(["init"], function(init) {
    console.log('vm.js');

    //function
    var nodeDataBuilder = function(name, prof, parent) {
        name = name ? name : "";
        prof = prof ? prof : 50;
        parent = parent ? parent : "";
        return {
            name: name,
            prof: prof,
            parent: parent,
            children: {}
        }
    }

    var dataBuilder = function(dom, data) {
        var nodes = dom.children(".node");
        for (var i = 0; i < nodes.length; i++) {
            var el = $(nodes[i]);
            var select = el.children(".select");
            var skillName = select.children("span#skillName").text().trim();
            var prof = select.children("span#prof").text().trim();
            if (skillName != "" && skillName.indexOf("技能名") < 0 && prof != "" && prof.indexOf("熟练度") < 0) {
                data.children[skillName] = nodeDataBuilder(skillName, prof, data.name);
                dataBuilder(el, data.children[skillName]);
            } else {
                alert("存在空属性");
                return;
            }
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
        newData: [],
        create: function() {
            var rootNodes = $(".tree").children(".node");
            var data = {}
            for (var i = 0; i < rootNodes.length; i++) {
                var el = $(rootNodes[i]);
                var select = el.children(".select");
                var skillName = select.children("span#skillName").text().trim();
                var prof = select.children("span#prof").text().trim();

                if (skillName != "" && skillName.indexOf("技能名") < 0 && prof != "" && prof.indexOf("熟练度") < 0) {
                    data[skillName] = nodeDataBuilder(skillName, prof);
                    dataBuilder(el, data[skillName]);
                } else {
                    alert("存在空属性");
                    return;
                }
            }
            console.log(JSON.stringify(data));
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
                        children: {}
                    },
                    "CSS3": {
                        name: "CSS3",
                        prof: 150,
                        parent: "前端",
                        children: {}
                    },
                    "构建工具": {
                        name: "CSS3",
                        prof: 150,
                        parent: "前端",
                        children: {
                            "Gulp": {
                                name: "CSS3",
                                prof: 150,
                                parent: "前端",
                                children: {}
                            },
                            "Grunt": {
                                name: "CSS3",
                                prof: 150,
                                parent: "前端",
                                children: {}
                            }
                        }
                    }
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
