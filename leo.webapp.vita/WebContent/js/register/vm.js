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
        confirm: {
            pwd: false,
            pwd2: false,
        },
        submit: function() {

        },
        checkUid: function() {
            $.ajax({
                url: "../user/register",
                type: "post",
                data: {
                    email: vm_form.email,
                    pwd: vm_form.pwd,
                },
                success:function(resp){

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
            console.log('2');
            if (vm_form.confirm.pwd && vm_form.confirm.pwd2) {
                if (vm_form.pwd != vm_form.pwd2) {
                    alert("两次输入的密码不一致");
                }
            }
        },
    })
    vm_form.$watch("confirm.*", function(a, b) {
        console.log(a + "," + b);
    })
    avalon.scan();



    return {}
})
