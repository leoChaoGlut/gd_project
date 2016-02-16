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
        preventUploadEvent: false,
        preventDeleteEvent: false,
        clickItem: function(index) {
            if (vm_main.preventDeleteEvent) {
                vm_main.preventDeleteEvent = false;
            } else {
                location.href = "build.html?id=" + vm_main.items[index].id
            }
        },
        chartsRendered: function() {
            var li = $("li");
            li.splice(0, 1);
            li.splice(li.length - 1, 1);
            for (var i = 0, len = vm_main.items.length; i < len; i++) {
                var item = vm_main.items[i];
                var data = $.parseJSON(item.json);
                switch (vm_main.items[i].typeId) {
                    case 1:
                        treeChartBuilder($(li[i]), data);
                        break;
                    case 2:
                        pieChartBuilder($(li[i]),data);
                        break;
                    default:
                        break;
                }
            }
        },
        choiceVita: function() {
            if (vm_main.preventUploadEvent) {
                vm_main.preventUploadEvent = false;
            } else {
                $("#inputUploadFile").click();
            }
        },
        uploadVita: function() {
            vm_main.preventUploadEvent = true;
            if ($("#fileName").text()) {
                if (vm_main.vitaOfUpload.id) {
                    $("input:eq(0)").val(vm_main.vitaOfUpload.id);
                }
                $("#submitFile").click();
                vm_main.preventUploadEvent = true;
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
            vm_main.preventDeleteEvent = true;
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
