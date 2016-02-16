define(function() {
    console.log('vm.js');

    // var userInfo = $.parseJSON(localStorage.userInfo);

    // console.log(userInfo.email);


    var vm_body = avalon.define({
        $id: "vm_body",

    });
    var vm_main = avalon.define({
        $id: "vm_main",
        email: "",
        changeStatus: function(index) {
            vm_main.items[index].hasChosen = !vm_main.items[index].hasChosen;
        },
        items: [{
            name: "1",
            hasChosen: false
        }, {
            name: "2",
            hasChosen: false
        }, {
            name: "3",
            hasChosen: false
        }, {
            name: "3",
            hasChosen: false
        }, {
            name: "3",
            hasChosen: false
        }, {
            name: "3",
            hasChosen: false
        }, {
            name: "3",
            hasChosen: false
        }, {
            name: "3",
            hasChosen: false
        }, {
            name: "3",
            hasChosen: false
        }, {
            name: "3",
            hasChosen: false
        }, {
            name: "3",
            hasChosen: false
        }, {
            name: "3",
            hasChosen: false
        }, {
            name: "3",
            hasChosen: false
        }, {
            name: "3",
            hasChosen: false
        }, {
            name: "3",
            hasChosen: false
        }, {
            name: "3",
            hasChosen: false
        }, {
            name: "3",
            hasChosen: false
        }, {
            name: "3",
            hasChosen: false
        }, {
            name: "3",
            hasChosen: false
        }, {
            name: "3",
            hasChosen: false
        }, {
            name: "3",
            hasChosen: false
        }, {
            name: "3",
            hasChosen: false
        }, ],
    })

    // vm_main.email = $.parseJSON(localStorage.userInfo).email;

    avalon.scan();

    return {}
})
