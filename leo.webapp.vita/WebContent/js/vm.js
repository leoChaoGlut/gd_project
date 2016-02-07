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
    })


    avalon.scan();

    return {
        vm_body: vm_body
    }
})
