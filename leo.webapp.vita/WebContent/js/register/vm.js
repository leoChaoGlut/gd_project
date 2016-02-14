define(function() {
    console.log('vm.js');
    var vm_body = avalon.define({
        $id: "vm_body",

    });
    var vm_form = avalon.define({
        $id: "vm_form",
        email: "",
        pwd: "",
        pwd2: "",
        validateCode: "",
        avaliableEmail: false,
        confirm: {
            pwd: false,
            pwd2: false,
        },
        register: function() {
            if (vm_form.pwd == vm_form.pwd2) {
                if (vm_form.avaliableEmail) {
                    $.ajax({
                        url: "../user/register",
                        type: "post",
                        data: {
                            email: vm_form.email,
                            pwd: vm_form.pwd,
                        },
                        success: function(resp) {
                            if (resp.status == 200) {
                                localStorage.userInfo = JSON.stringify(resp.result);
                                location.href = "manage.html";
                            }
                        }
                    })
                } else {
                        alert("邮箱已存在");
                }
            } else {
                alert("两次输入的密码不一致");
            }
        },
        checkEmail: function() {
            $.ajax({
                url: "../user/checkEmail",
                data: {
                    email: vm_form.email,
                },
                success: function(resp) {
                    if (resp.status == 200) {
                        vm_form.avaliableEmail = true;
                    } else {
                        alert("邮箱已存在");
                    }
                }
            })

        },
        pwdFocus: function(whichPwd) {
            switch (whichPwd) {
                case 0:
                    vm_form.confirm.pwd = true;
                    break;
                case 1:
                    vm_form.confirm.pwd2 = true;
                    break;
                default:
                    break;
            }
        },
        confirmPwd: function() {
            if (vm_form.confirm.pwd && vm_form.confirm.pwd2) {
                if (vm_form.pwd != vm_form.pwd2) {
                    alert("两次输入的密码不一致");
                }
            }
        },
    })

    avalon.scan();



    return {}
})
