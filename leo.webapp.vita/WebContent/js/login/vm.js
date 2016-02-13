define(function() {
    console.log('vm.js');
    var vm_body = avalon.define({
        $id: "vm_body",

    });
    var vm_form = avalon.define({
        $id: "vm_form",
        email: "",
        pwd: "",
        validateCode: "",
        login: function() {
            $.ajax({
                url: '../user/login',
                data: {
                    email: vm_form.email,
                    pwd: vm_form.pwd,
                },
                success: function(resp) {
                    console.log(resp);
                    if (resp.status == 200) {
                        window.userInfo = resp.result;
                        location.href="manage.html";
                    }
                }
            })
        },
    })

    avalon.scan();

    return {}
})
