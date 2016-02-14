define(function() {
    console.log('vm.js');

    var userInfo = $.parseJSON(localStorage.userInfo);

    console.log(userInfo.email);

    $.get("../chart/getChartsByEmail", {
        email: userInfo.email
    }, function(resp) {
        if (resp.status == 200) {
            console.log(resp.result);
            vm_main.items = resp.result;
        }
    })

    var vm_body = avalon.define({
        $id: "vm_body",

    });
    var vm_main = avalon.define({
        $id: "vm_main",
        items: [],
        clickItem: function(index) {

        },
        addItem: function() {
            location.href = "build.html";
        },
        removeAChart: function(index) {
            // 显示正在删除..........
            $.ajax({
                url: "../chart/delete",
                data: {
                    id: vm_main.items[index].id
                },
                success: function(resp) {
                    if (resp.status == 200) {
                        // 显示删除成功..........
                        vm_main.items.splice(index, 1);
                    } else {
                        alert("删除失败")
                    }
                }
            })


        }
    })

    avalon.scan();

    return {}
})
