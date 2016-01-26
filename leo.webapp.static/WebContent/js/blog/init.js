define(function() {
    console.log('init.js');
    //******constants begin
    var DURATION = 100;
    //******constants end

    // *******dom begin
    var category_bar = $("#category_bar");
    var categories_dom = $("#categories");
    var header = $("#header");
    var main_body = $("#main_body");
    var category_switch = $("#category_switch");
    // *******dom end

    // *******var begin
    var categories_width = 10;
    var switch_width = 0.8;

    var margin_left_base = 1.3;


    // *******var end

    //*******function begin
    var stop_velocity = function(doms) {
        doms.forEach(function(dom) {
            dom.velocity("stop");
        })
    }

    //*******function end

    category_switch.on('mouseover', function(event) {
        stop_velocity([header, main_body, categories_dom, category_bar]);

        category_switch.velocity({
            width: 0
        }, DURATION);

        header.velocity({
            marginLeft: (margin_left_base + categories_width - switch_width) + "vw"
        }, DURATION);

        main_body.velocity({
            marginLeft: (margin_left_base + categories_width - switch_width) + "vw"
        }, DURATION);

        category_bar.velocity({
            width: categories_width + "vw"
        }, {
            duration: DURATION,
            complete: function() {
                categories_dom.velocity({
                    width: categories_width + "vw"
                }, DURATION);
            }
        });


    });


    category_bar.on('mouseleave', function(event) {

        stop_velocity([header, main_body, categories_dom, category_bar]);

        categories_dom.velocity({
            width: 0 + "vw"
        }, {
            duration: DURATION,
            complete: function() {
                category_switch.velocity({
                    width: switch_width + "vw"
                }, DURATION);

                header.velocity({
                    marginLeft: margin_left_base + "vw"
                }, DURATION);

                main_body.velocity({
                    marginLeft: margin_left_base + "vw"
                }, DURATION);

                category_bar.velocity({
                    width: switch_width + "vw"
                }, DURATION);
            }
        });

    });

    $(document).ready(function() {
        console.log('doc ready');
    });

    $(document).resize(function(event) {

    });
})
