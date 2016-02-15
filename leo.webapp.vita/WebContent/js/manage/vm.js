define(function() {
    console.log('vm.js');

    var userInfo = $.parseJSON(localStorage.userInfo);

    console.log(userInfo.email);

    $.get("../chart/getChartsByEmail", {
        email: userInfo.email
    }, function(resp) {
        if (resp.status == 200) {
            var chartPreviews = resp.result;
            for (var i = 0, len = chartPreviews.length; i < len; i++) {
                var chart = chartPreviews[i];
                if (chart.typeId == 0) {
                    vm_main.vitaOfUpload = chart;
                    chartPreviews.splice(i, 1);
                    break;
                }
            }
            vm_main.items = chartPreviews;
        }
    })

    var vm_body = avalon.define({
        $id: "vm_body",

    });
    var vm_main = avalon.define({
        $id: "vm_main",
        items: [],
        hasUploadVita: "0",
        vitaOfUpload: {},
        email: "",
        prevetEvent: false,
        clickItem: function(index) {
            location.href = "build.html?id=" + vm_main.items[index].id
        },
        chartsRendered:function () {
            //写到这里,在manage的li上渲染pie或tree
            //写到这里,在manage的li上渲染pie或tree
            //写到这里,在manage的li上渲染pie或tree
            //写到这里,在manage的li上渲染pie或tree
            //写到这里,在manage的li上渲染pie或tree
            //写到这里,在manage的li上渲染pie或tree
            //写到这里,在manage的li上渲染pie或tree
            //写到这里,在manage的li上渲染pie或tree
        },
        choiceVita: function() {
            if (vm_main.prevetEvent) {
                vm_main.prevetEvent = false;
            } else {
                $("#inputUploadFile").click();
            }
        },
        uploadVita: function() {
            vm_main.prevetEvent = true;
            if ($("#fileName").text()) {
                if (vm_main.vitaOfUpload.id) {
                    $("input:eq(0)").val(vm_main.vitaOfUpload.id);
                }
                $("#submitFile").click();
                vm_main.prevetEvent = true;
            } else {
                alert("未选择上传文件");
            }
        },
        addItem: function() {
            location.href = "build.html";
        },
        fileNameChange: function() {
            console.log($(this).val());
            $("#fileName").text($(this).val());
        },
        removeAChart: function(index) {
            console.log(vm_main.items[index].id);
            // 显示正在删除..........
            $.ajax({
                url: "../chart/delete/" + vm_main.items[index].id,
                type: "delete",
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

    vm_main.email = $.parseJSON(localStorage.userInfo).email;
    avalon.scan();

    return {}
})
